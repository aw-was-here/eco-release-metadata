
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

## Release 1.2.0 - 2016-01-11

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15018](https://issues.apache.org/jira/browse/HBASE-15018) | Inconsistent way of handling TimeoutException in the rpc client implementations |  Major | Client, IPC/RPC | Ashish Singhi | Ashish Singhi |
| [HBASE-14205](https://issues.apache.org/jira/browse/HBASE-14205) | RegionCoprocessorHost System.nanoTime() performance bottleneck |  Critical | Coprocessors, Performance, regionserver | Jan Van Besien | Andrew Purtell |
| [HBASE-14027](https://issues.apache.org/jira/browse/HBASE-14027) | Clean up netty dependencies |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-13983](https://issues.apache.org/jira/browse/HBASE-13983) | Doc how the oddball HTable methods getStartKey, getEndKey, etc. will be removed in 2.0.0 |  Minor | documentation | stack | stack |
| [HBASE-13963](https://issues.apache.org/jira/browse/HBASE-13963) | avoid leaking jdk.tools |  Critical | build, documentation | Sean Busbey | Gabor Liptak |
| [HBASE-13849](https://issues.apache.org/jira/browse/HBASE-13849) | Remove restore and clone snapshot from the WebUI |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13764](https://issues.apache.org/jira/browse/HBASE-13764) | Backport HBASE-7782 (HBaseTestingUtility.truncateTable() not acting like CLI) to branch-1.x |  Minor | . | Srikanth Srungarapu | Ashish Singhi |
| [HBASE-13706](https://issues.apache.org/jira/browse/HBASE-13706) | CoprocessorClassLoader should not exempt Hive classes |  Minor | Coprocessors | Jerry He | Jerry He |
| [HBASE-13646](https://issues.apache.org/jira/browse/HBASE-13646) | HRegion#execService should not try to build incomplete messages |  Major | Coprocessors, regionserver | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13632](https://issues.apache.org/jira/browse/HBASE-13632) | Backport HBASE-13368 to branch-1 and 0.98 |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13375](https://issues.apache.org/jira/browse/HBASE-13375) | Provide HBase superuser higher priority over other users in the RPC handling |  Major | IPC/RPC | Devaraj Das | Mikhail Antonov |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14529](https://issues.apache.org/jira/browse/HBASE-14529) | Respond to SIGHUP to reload config |  Major | Operability | Elliott Clark | Elliott Clark |
| [HBASE-14459](https://issues.apache.org/jira/browse/HBASE-14459) | Add request and response sizes metrics |  Major | metrics | Sanjeev Srivatsa | Sanjeev Srivatsa |
| [HBASE-14355](https://issues.apache.org/jira/browse/HBASE-14355) | Scan different TimeRange for each column family |  Major | Client, regionserver, Scanners | Dave Latham | churro morales |
| [HBASE-14154](https://issues.apache.org/jira/browse/HBASE-14154) | DFS Replication should be configurable at column family level |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13698](https://issues.apache.org/jira/browse/HBASE-13698) | Add RegionLocator methods to Thrift2 proxy. |  Major | Thrift | Elliott Clark | Elliott Clark |
| [HBASE-13639](https://issues.apache.org/jira/browse/HBASE-13639) | SyncTable - rsync for HBase tables |  Major | mapreduce, Operability, tooling | Dave Latham | Dave Latham |
| [HBASE-13356](https://issues.apache.org/jira/browse/HBASE-13356) | HBase should provide an InputFormat supporting multiple scans in mapreduce jobs over snapshots |  Minor | mapreduce | Andrew Mains | Andrew Mains |
| [HBASE-12911](https://issues.apache.org/jira/browse/HBASE-12911) | Client-side metrics |  Major | Client, Operability, Performance | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10070](https://issues.apache.org/jira/browse/HBASE-10070) | HBase read high-availability using timeline-consistent region replicas |  Major | Admin, API, LatencyResilience | Enis Soztutar | Enis Soztutar |
| [HBASE-5980](https://issues.apache.org/jira/browse/HBASE-5980) | Scanner responses from RS should include metrics on rows/KVs filtered |  Minor | Client, metrics, Operability, regionserver | Todd Lipcon | Jonathan Lawlor |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15005](https://issues.apache.org/jira/browse/HBASE-15005) | Use value array in computing block length for 1.2 and 1.3 |  Major | regionserver | Elliott Clark | Elliott Clark |
| [HBASE-14984](https://issues.apache.org/jira/browse/HBASE-14984) | Allow memcached block cache to set optimze to false |  Major | BlockCache | Elliott Clark | Elliott Clark |
| [HBASE-14978](https://issues.apache.org/jira/browse/HBASE-14978) | Don't allow Multi to retain too many blocks |  Blocker | io, IPC/RPC, regionserver | Elliott Clark | Elliott Clark |
| [HBASE-14976](https://issues.apache.org/jira/browse/HBASE-14976) | Add RPC call queues to the web ui |  Minor | UI | Elliott Clark | Pallavi Adusumilli |
| [HBASE-14951](https://issues.apache.org/jira/browse/HBASE-14951) | Make hbase.regionserver.maxlogs obsolete |  Minor | Performance, wal | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14946](https://issues.apache.org/jira/browse/HBASE-14946) | Don't allow multi's to over run the max result size. |  Critical | Client, IPC/RPC | Elliott Clark | Elliott Clark |
| [HBASE-14891](https://issues.apache.org/jira/browse/HBASE-14891) | Add log for uncaught exception in RegionServerMetricsWrapperRunnable |  Minor | metrics | Yu Li | Yu Li |
| [HBASE-14866](https://issues.apache.org/jira/browse/HBASE-14866) | VerifyReplication should use peer configuration in peer connection |  Major | Replication | Gary Helmling | Gary Helmling |
| [HBASE-14862](https://issues.apache.org/jira/browse/HBASE-14862) | Add support for reporting p90 for histogram metrics |  Minor | metrics | Sanjeev Lakshmanan | Sanjeev Lakshmanan |
| [HBASE-14821](https://issues.apache.org/jira/browse/HBASE-14821) | CopyTable should allow overriding more config properties for peer cluster |  Major | mapreduce | Gary Helmling | Gary Helmling |
| [HBASE-14805](https://issues.apache.org/jira/browse/HBASE-14805) | status should show the master in shell |  Major | shell | Enis Soztutar | Enis Soztutar |
| [HBASE-14780](https://issues.apache.org/jira/browse/HBASE-14780) | Integration Tests that run with ChaosMonkey need to specify CFs |  Major | integration tests | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-14765](https://issues.apache.org/jira/browse/HBASE-14765) | Remove snappy profile |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-14752](https://issues.apache.org/jira/browse/HBASE-14752) | Add example of using the HBase client in a multi-threaded environment |  Minor | Client | Elliott Clark | Elliott Clark |
| [HBASE-14730](https://issues.apache.org/jira/browse/HBASE-14730) | region server needs to log warnings when there are attributes configured for cells with hfile v2 |  Major | regionserver | huaxiang sun | huaxiang sun |
| [HBASE-14721](https://issues.apache.org/jira/browse/HBASE-14721) | Memstore add cells - Avoid many garbage |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-14715](https://issues.apache.org/jira/browse/HBASE-14715) | Add javadocs to DelegatingRetryingCallable |  Trivial | Client | Jesse Yates | Jesse Yates |
| [HBASE-14714](https://issues.apache.org/jira/browse/HBASE-14714) | some cleanup to snapshot code |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14708](https://issues.apache.org/jira/browse/HBASE-14708) | Use copy on write Map for region location cache |  Critical | Client | Elliott Clark | Elliott Clark |
| [HBASE-14700](https://issues.apache.org/jira/browse/HBASE-14700) | Support a "permissive" mode for secure clusters to allow "simple" auth clients |  Major | security | Gary Helmling | Gary Helmling |
| [HBASE-14696](https://issues.apache.org/jira/browse/HBASE-14696) | Support setting allowPartialResults in mapreduce Mappers |  Major | mapreduce | Mindaugas Kairys | Ted Yu |
| [HBASE-14693](https://issues.apache.org/jira/browse/HBASE-14693) | Add client-side metrics for received pushback signals |  Major | Client, metrics | Andrew Purtell | Heng Chen |
| [HBASE-14687](https://issues.apache.org/jira/browse/HBASE-14687) | Un-synchronize BufferedMutator |  Critical | Client, Performance | Elliott Clark | Elliott Clark |
| [HBASE-14684](https://issues.apache.org/jira/browse/HBASE-14684) | Try to remove all MiniMapReduceCluster in unit tests |  Critical | test | Heng Chen | Heng Chen |
| [HBASE-14683](https://issues.apache.org/jira/browse/HBASE-14683) | Batching in buffered mutator is awful when adding lists of mutations. |  Major | Client | Elliott Clark | Elliott Clark |
| [HBASE-14643](https://issues.apache.org/jira/browse/HBASE-14643) | Avoid Splits from once again opening a closed reader for fetching the first and last key |  Major | regionserver | ramkrishna.s.vasudevan | Heng Chen |
| [HBASE-14588](https://issues.apache.org/jira/browse/HBASE-14588) | Stop accessing test resources from within src folder |  Major | build, test | Andrew Wang | Andrew Wang |
| [HBASE-14587](https://issues.apache.org/jira/browse/HBASE-14587) | Attach a test-sources.jar for hbase-server |  Major | build | Andrew Wang | Andrew Wang |
| [HBASE-14586](https://issues.apache.org/jira/browse/HBASE-14586) | Use a maven profile to run Jacoco analysis |  Minor | pom | Andrew Wang | Andrew Wang |
| [HBASE-14582](https://issues.apache.org/jira/browse/HBASE-14582) | Regionserver status webpage bucketcache list can become huge |  Major | regionserver | James Hartshorn | stack |
| [HBASE-14580](https://issues.apache.org/jira/browse/HBASE-14580) | Make the HBaseMiniCluster compliant with Kerberos |  Major | security, test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-14547](https://issues.apache.org/jira/browse/HBASE-14547) | Add more debug/trace to zk-procedure |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14517](https://issues.apache.org/jira/browse/HBASE-14517) | Show regionserver's version in master status page |  Minor | monitoring | Liu Shaohui | Liu Shaohui |
| [HBASE-14468](https://issues.apache.org/jira/browse/HBASE-14468) | Compaction improvements: FIFO compaction policy |  Major | Compaction, Performance | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14461](https://issues.apache.org/jira/browse/HBASE-14461) | Cleanup IncreasingToUpperBoundRegionSplitPolicy |  Minor | . | Lars Francke | Lars Francke |
| [HBASE-14436](https://issues.apache.org/jira/browse/HBASE-14436) | HTableDescriptor#addCoprocessor will always make RegionCoprocessorHost create new Configuration |  Minor | Coprocessors | Jianwei Cui | stack |
| [HBASE-14387](https://issues.apache.org/jira/browse/HBASE-14387) | Compaction improvements: Maximum off-peak compaction size |  Major | Compaction, Performance | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14334](https://issues.apache.org/jira/browse/HBASE-14334) | Move Memcached block cache in to it's own optional module. |  Major | BlockCache, build, Operability | Elliott Clark | Elliott Clark |
| [HBASE-14325](https://issues.apache.org/jira/browse/HBASE-14325) | Add snapshotinfo command to hbase script |  Minor | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-14314](https://issues.apache.org/jira/browse/HBASE-14314) | Metrics for block cache should take region replicas into account |  Major | metrics, regionserver | Ted Yu | Ted Yu |
| [HBASE-14268](https://issues.apache.org/jira/browse/HBASE-14268) | Improve KeyLocker |  Minor | util | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-14266](https://issues.apache.org/jira/browse/HBASE-14266) | RegionServers have a lock contention of Configuration.getProps |  Critical | regionserver | Toshihiro Suzuki | Andrew Purtell |
| [HBASE-14261](https://issues.apache.org/jira/browse/HBASE-14261) | Enhance Chaos Monkey framework by adding zookeeper and datanode fault injections. |  Major | integration tests | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14260](https://issues.apache.org/jira/browse/HBASE-14260) | don't build javadocs for hbase-protocol module |  Major | build, documentation | Sean Busbey | Sean Busbey |
| [HBASE-14230](https://issues.apache.org/jira/browse/HBASE-14230) | replace reflection in FSHlog with HdfsDataOutputStream#getCurrentBlockReplication() |  Minor | wal | Heng Chen | Heng Chen |
| [HBASE-14203](https://issues.apache.org/jira/browse/HBASE-14203) | remove duplicate code getTableDescriptor in HTable |  Trivial | . | Heng Chen | Heng Chen |
| [HBASE-14194](https://issues.apache.org/jira/browse/HBASE-14194) | Undeprecate methods in ThriftServerRunner.HBaseHandler |  Trivial | . | Lars Francke | Lars Francke |
| [HBASE-14172](https://issues.apache.org/jira/browse/HBASE-14172) | Upgrade existing thrift binding using thrift 0.9.3 compiler. |  Minor | . | Srikanth Srungarapu | Josh Elser |
| [HBASE-14148](https://issues.apache.org/jira/browse/HBASE-14148) | Web UI Framable Page |  Major | security, UI | Appy | Gabor Liptak |
| [HBASE-14122](https://issues.apache.org/jira/browse/HBASE-14122) | Client API for determining if server side supports cell level security |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-14110](https://issues.apache.org/jira/browse/HBASE-14110) | Add CostFunction for balancing primary region replicas |  Major | Balancer | Ted Yu | Ted Yu |
| [HBASE-14097](https://issues.apache.org/jira/browse/HBASE-14097) | Log link to client scan troubleshooting section when scanner exceptions happen. |  Trivial | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14082](https://issues.apache.org/jira/browse/HBASE-14082) | Add replica id to JMX metrics names |  Major | metrics | Lei Chen | Lei Chen |
| [HBASE-14078](https://issues.apache.org/jira/browse/HBASE-14078) | improve error message when HMaster can't bind to port |  Major | master | Sean Busbey | Matt Warhaftig |
| [HBASE-14015](https://issues.apache.org/jira/browse/HBASE-14015) | Allow setting a richer state value when toString a pv2 |  Minor | proc-v2 | stack | stack |
| [HBASE-14002](https://issues.apache.org/jira/browse/HBASE-14002) | Add --noReplicationSetup option to IntegrationTestReplication |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-13996](https://issues.apache.org/jira/browse/HBASE-13996) | Add write sniffing in canary |  Major | canary | Liu Shaohui | Liu Shaohui |
| [HBASE-13985](https://issues.apache.org/jira/browse/HBASE-13985) | Add configuration to skip validating HFile format when bulk loading |  Minor | . | Victor Xu | Victor Xu |
| [HBASE-13980](https://issues.apache.org/jira/browse/HBASE-13980) | Distinguish blockedFlushCount vs unblockedFlushCount when tuning heap memory |  Minor | . | Ted Yu | Abhilash |
| [HBASE-13947](https://issues.apache.org/jira/browse/HBASE-13947) | Use MasterServices instead of Server in AssignmentManager |  Trivial | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13927](https://issues.apache.org/jira/browse/HBASE-13927) | Allow hbase-daemon.sh to conditionally redirect the log or not |  Major | shell | Elliott Clark | Elliott Clark |
| [HBASE-13925](https://issues.apache.org/jira/browse/HBASE-13925) | Use zookeeper multi to clear znodes in ZKProcedureUtil |  Major | Zookeeper | Ashish Singhi | Ashish Singhi |
| [HBASE-13917](https://issues.apache.org/jira/browse/HBASE-13917) | Remove string comparison to identify request priority |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13894](https://issues.apache.org/jira/browse/HBASE-13894) | Avoid visitor alloc each call of ByteBufferArray get/putMultiple() |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13876](https://issues.apache.org/jira/browse/HBASE-13876) | Improving performance of HeapMemoryManager |  Minor | hbase, regionserver | Abhilash | Abhilash |
| [HBASE-13848](https://issues.apache.org/jira/browse/HBASE-13848) | Access InfoServer SSL passwords through Credential Provder API |  Major | security | Sean Busbey | Sean Busbey |
| [HBASE-13846](https://issues.apache.org/jira/browse/HBASE-13846) | Run MiniCluster on top of other MiniDfsCluster |  Minor | test | Jesse Yates | Jesse Yates |
| [HBASE-13829](https://issues.apache.org/jira/browse/HBASE-13829) | Add more ThrottleType |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-13828](https://issues.apache.org/jira/browse/HBASE-13828) | Add group permissions testing coverage to AC. |  Major | test | Srikanth Srungarapu | Ashish Singhi |
| [HBASE-13816](https://issues.apache.org/jira/browse/HBASE-13816) | Build shaded modules only in release profile |  Major | build | Enis Soztutar | Enis Soztutar |
| [HBASE-13780](https://issues.apache.org/jira/browse/HBASE-13780) | Default to 700 for HDFS root dir permissions for secure deployments |  Major | Operability, security | Enis Soztutar | Enis Soztutar |
| [HBASE-13761](https://issues.apache.org/jira/browse/HBASE-13761) | Optimize FuzzyRowFilter |  Minor | Filters | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-13755](https://issues.apache.org/jira/browse/HBASE-13755) | Provide single super user check implementation |  Major | security | Anoop Sam John | Mikhail Antonov |
| [HBASE-13745](https://issues.apache.org/jira/browse/HBASE-13745) | Say why a flush was requested in log message |  Minor | Operability | stack | stack |
| [HBASE-13710](https://issues.apache.org/jira/browse/HBASE-13710) | Remove use of Hadoop's ReflectionUtil in favor of our own. |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-13684](https://issues.apache.org/jira/browse/HBASE-13684) | Allow mlockagent to be used when not starting as root |  Minor | . | Patrick White | Patrick White |
| [HBASE-13677](https://issues.apache.org/jira/browse/HBASE-13677) | RecoverableZookeeper WARNs on expected events |  Minor | . | Nick Dimiduk | Ted Malaska |
| [HBASE-13675](https://issues.apache.org/jira/browse/HBASE-13675) | ProcedureExecutor completion report should be at DEBUG log level |  Minor | . | Andrew Purtell | Srikanth Srungarapu |
| [HBASE-13673](https://issues.apache.org/jira/browse/HBASE-13673) | WALProcedureStore procedure is chatty |  Minor | . | Andrew Purtell | Srikanth Srungarapu |
| [HBASE-13671](https://issues.apache.org/jira/browse/HBASE-13671) | More classes to add to the invoking repository of org.apache.hadoop.hbase.mapreduce.driver |  Major | mapreduce | li xiang | li xiang |
| [HBASE-13598](https://issues.apache.org/jira/browse/HBASE-13598) | Make hbase assembly 'attach' to the project |  Minor | . | Jerry He | Jerry He |
| [HBASE-13534](https://issues.apache.org/jira/browse/HBASE-13534) | Change HBase master WebUI to explicitly mention if it is a backup master |  Minor | master, UI | Appy | Appy |
| [HBASE-13420](https://issues.apache.org/jira/browse/HBASE-13420) | RegionEnvironment.offerExecutionLatency Blocks Threads under Heavy Load |  Major | Coprocessors, metrics, Performance | John Leach | Andrew Purtell |
| [HBASE-13366](https://issues.apache.org/jira/browse/HBASE-13366) | Throw DoNotRetryIOException instead of read only IOException |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-13358](https://issues.apache.org/jira/browse/HBASE-13358) | Upgrade VisibilityClient API to accept Connection object. |  Minor | API, security | Srikanth Srungarapu | Matt Warhaftig |
| [HBASE-13344](https://issues.apache.org/jira/browse/HBASE-13344) | Add enforcer rule that matches our JDK support statement |  Minor | build | Sean Busbey | Matt Warhaftig |
| [HBASE-13247](https://issues.apache.org/jira/browse/HBASE-13247) | Change BufferedMutatorExample to use addColumn() since add() is deprecated |  Trivial | Client | Lars George | Nick Dimiduk |
| [HBASE-13127](https://issues.apache.org/jira/browse/HBASE-13127) | Add timeouts on all tests so less zombie sightings |  Major | test | stack | stack |
| [HBASE-13103](https://issues.apache.org/jira/browse/HBASE-13103) | [ergonomics] add region size balancing as a feature of master |  Major | Balancer, Usability | Nick Dimiduk | Mikhail Antonov |
| [HBASE-12988](https://issues.apache.org/jira/browse/HBASE-12988) | [Replication]Parallel apply edits across regions |  Major | Replication | hongyu bi | Lars Hofhansl |
| [HBASE-12986](https://issues.apache.org/jira/browse/HBASE-12986) | Compaction pressure based client pushback |  Major | . | Andrew Purtell | Heng Chen |
| [HBASE-12415](https://issues.apache.org/jira/browse/HBASE-12415) | Add add(byte[][] arrays) to Bytes. |  Major | API, Client | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-11927](https://issues.apache.org/jira/browse/HBASE-11927) | Use Native Hadoop Library for HFile checksum (And flip default from CRC32 to CRC32C) |  Major | Performance | stack | Appy |
| [HBASE-7171](https://issues.apache.org/jira/browse/HBASE-7171) | Initial web UI for region/memstore/storefiles details |  Major | UI | stack | Mikhail Antonov |
| [HBASE-6617](https://issues.apache.org/jira/browse/HBASE-6617) | ReplicationSourceManager should be able to track multiple WAL paths |  Major | Replication | Ted Yu | Yu Li |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15039](https://issues.apache.org/jira/browse/HBASE-15039) | HMaster and RegionServers should try to refresh token keys from zk when facing InvalidToken |  Major | . | Yong Zhang | Yong Zhang |
| [HBASE-15035](https://issues.apache.org/jira/browse/HBASE-15035) | bulkloading hfiles with tags that require splits do not preserve tags |  Blocker | HFile | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-15032](https://issues.apache.org/jira/browse/HBASE-15032) | hbase shell scan filter string assumes UTF-8 encoding |  Major | shell | huaxiang sun | huaxiang sun |
| [HBASE-15022](https://issues.apache.org/jira/browse/HBASE-15022) | undefined method `getZooKeeperClusterKey' for Java::OrgApacheHadoopHbaseZookeeper::ZKUtil:Class |  Major | shell | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15021](https://issues.apache.org/jira/browse/HBASE-15021) | hadoopqa doing false positives |  Major | . | stack | stack |
| [HBASE-15015](https://issues.apache.org/jira/browse/HBASE-15015) | Checktyle plugin shouldn't check Jamon-generated Java classes |  Minor | build | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15014](https://issues.apache.org/jira/browse/HBASE-15014) | Fix filterCellByStore in WALsplitter is awful for performance |  Critical | MTTR, Recovery, wal | Elliott Clark | Elliott Clark |
| [HBASE-15011](https://issues.apache.org/jira/browse/HBASE-15011) | turn off the jdk8 javadoc linter. :( |  Blocker | build, documentation | Sean Busbey | Sean Busbey |
| [HBASE-15009](https://issues.apache.org/jira/browse/HBASE-15009) | Update test-patch.sh on branches; to fix curtailed build report |  Major | build | stack | stack |
| [HBASE-15001](https://issues.apache.org/jira/browse/HBASE-15001) | Thread Safety issues in ReplicationSinkManager and HBaseInterClusterReplicationEndpoint |  Blocker | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-14999](https://issues.apache.org/jira/browse/HBASE-14999) | Remove ref to org.mortbay.log.Log |  Minor | dependencies | Anoop Sam John | Anoop Sam John |
| [HBASE-14989](https://issues.apache.org/jira/browse/HBASE-14989) | Implementation of Mutation.getWriteToWAL() is backwards |  Major | Client | James Taylor | Enis Soztutar |
| [HBASE-14977](https://issues.apache.org/jira/browse/HBASE-14977) | ChoreService.shutdown may result in ConcurrentModificationException |  Minor | util | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14974](https://issues.apache.org/jira/browse/HBASE-14974) | Total number of Regions in Transition number on UI incorrect |  Trivial | UI | Elliott Clark | Mikhail Antonov |
| [HBASE-14968](https://issues.apache.org/jira/browse/HBASE-14968) | ConcurrentModificationException in region close resulting in the region staying in closing state |  Major | Region Assignment, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-14965](https://issues.apache.org/jira/browse/HBASE-14965) | Remove un-used hbase-spark in branch-1 + |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-14960](https://issues.apache.org/jira/browse/HBASE-14960) | Fallback to using default RPCControllerFactory if class cannot be loaded |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14954](https://issues.apache.org/jira/browse/HBASE-14954) | IllegalArgumentException was thrown when doing online configuration change in CompactSplitThread |  Major | Compaction, regionserver | Victor Xu | Victor Xu |
| [HBASE-14953](https://issues.apache.org/jira/browse/HBASE-14953) | HBaseInterClusterReplicationEndpoint: Do not retry the whole batch of edits in case of RejectedExecutionException |  Critical | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-14952](https://issues.apache.org/jira/browse/HBASE-14952) | hbase-assembly source artifact has some incorrect modules |  Blocker | build, dependencies | Esteban Gutierrez | Sean Busbey |
| [HBASE-14942](https://issues.apache.org/jira/browse/HBASE-14942) | Allow turning off BoundedByteBufferPool |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-14941](https://issues.apache.org/jira/browse/HBASE-14941) | locate\_region shell command |  Trivial | shell | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14940](https://issues.apache.org/jira/browse/HBASE-14940) | Make our unsafe based ops more safe |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-14936](https://issues.apache.org/jira/browse/HBASE-14936) | CombinedBlockCache should overwrite CacheStats#rollMetricsPeriod() |  Major | BlockCache | Jianwei Cui | Jianwei Cui |
| [HBASE-14930](https://issues.apache.org/jira/browse/HBASE-14930) | check\_compatibility.sh needs smarter exit codes |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-14929](https://issues.apache.org/jira/browse/HBASE-14929) | There is a space missing from Table "foo" is not currently available. |  Trivial | . | Ted Malaska | Carlos A. Morillo |
| [HBASE-14928](https://issues.apache.org/jira/browse/HBASE-14928) | Start row should be set for query through HBase REST gateway involving globbing option |  Major | REST | Ted Yu | Ted Yu |
| [HBASE-14926](https://issues.apache.org/jira/browse/HBASE-14926) | Hung ThriftServer; no timeout on read from client; if client crashes, worker thread gets stuck reading |  Major | Thrift | stack | stack |
| [HBASE-14923](https://issues.apache.org/jira/browse/HBASE-14923) | VerifyReplication should not mask the exception during result comparison |  Minor | tooling | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-14922](https://issues.apache.org/jira/browse/HBASE-14922) | Delayed flush doesn't work causing flush storms. |  Major | regionserver | Elliott Clark | Elliott Clark |
| [HBASE-14905](https://issues.apache.org/jira/browse/HBASE-14905) | VerifyReplication does not honour versions option |  Major | tooling | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-14904](https://issues.apache.org/jira/browse/HBASE-14904) | Mark Base[En\|De]coder LimitedPrivate and fix binary compat issue |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14894](https://issues.apache.org/jira/browse/HBASE-14894) | Fix misspellings of threshold in log4j.properties files for tests |  Trivial | . | Youngjoon Kim | Youngjoon Kim |
| [HBASE-14893](https://issues.apache.org/jira/browse/HBASE-14893) | Race between mutation on region and region closing operation leads to NotServingRegionException |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14885](https://issues.apache.org/jira/browse/HBASE-14885) | NullPointerException in HMaster#normalizeRegions() due to missing TableDescriptor |  Major | master | Ted Yu | Ted Yu |
| [HBASE-14875](https://issues.apache.org/jira/browse/HBASE-14875) | Forward port HBASE-14207 'Region was hijacked and remained in transition when RS failed to open a region and later regionplan changed to new RS on retry' |  Major | Region Assignment | Ted Yu | Ted Yu |
| [HBASE-14867](https://issues.apache.org/jira/browse/HBASE-14867) | SimpleRegionNormalizer needs to have better heuristics to trigger merge operation |  Major | master | Romil Choksi | Ted Yu |
| [HBASE-14843](https://issues.apache.org/jira/browse/HBASE-14843) | TestWALProcedureStore.testLoad is flakey |  Blocker | proc-v2 | Heng Chen | Matteo Bertozzi |
| [HBASE-14840](https://issues.apache.org/jira/browse/HBASE-14840) | Sink cluster reports data replication request as success though the data is not replicated |  Major | Replication | Y. SREENIVASULU REDDY | Ashish Singhi |
| [HBASE-14838](https://issues.apache.org/jira/browse/HBASE-14838) | Clarify that SimpleRegionNormalizer does not merge empty (\<1MB) regions |  Trivial | documentation, regionserver | Romil Choksi | Josh Elser |
| [HBASE-14824](https://issues.apache.org/jira/browse/HBASE-14824) | HBaseAdmin.mergeRegions should recognize both full region names and encoded region names |  Minor | Admin | Eungsop Yoo | Eungsop Yoo |
| [HBASE-14812](https://issues.apache.org/jira/browse/HBASE-14812) | Fix ResultBoundedCompletionService deadlock |  Major | Client, Thrift | Elliott Clark | Elliott Clark |
| [HBASE-14809](https://issues.apache.org/jira/browse/HBASE-14809) | Grant / revoke Namespace admin permission to group |  Major | security | Steven Hancz | Ted Yu |
| [HBASE-14807](https://issues.apache.org/jira/browse/HBASE-14807) | TestWALLockup is flakey |  Major | flakey, test | stack | stack |
| [HBASE-14806](https://issues.apache.org/jira/browse/HBASE-14806) | Missing sources.jar for several modules when building HBase |  Major | pom | Duo Zhang | Duo Zhang |
| [HBASE-14804](https://issues.apache.org/jira/browse/HBASE-14804) | HBase shell's create table command ignores 'NORMALIZATION\_ENABLED' attribute |  Minor | shell | Romil Choksi | Jean-Marc Spaggiari |
| [HBASE-14802](https://issues.apache.org/jira/browse/HBASE-14802) | Replaying server crash recovery procedure after a failover causes incorrect handling of deadservers |  Major | master | Ashu Pachauri | Ashu Pachauri |
| [HBASE-14799](https://issues.apache.org/jira/browse/HBASE-14799) | Commons-collections object deserialization remote command execution vulnerability |  Critical | dependencies, security | Andrew Purtell | Andrew Purtell |
| [HBASE-14793](https://issues.apache.org/jira/browse/HBASE-14793) | Allow limiting size of block into L1 block cache. |  Major | BlockCache | Elliott Clark | Elliott Clark |
| [HBASE-14788](https://issues.apache.org/jira/browse/HBASE-14788) | Splitting a region does not support the hbase.rs.evictblocksonclose config when closing source region |  Major | regionserver | Randy Fox | Ted Yu |
| [HBASE-14784](https://issues.apache.org/jira/browse/HBASE-14784) | Port conflict is not resolved in HBaseTestingUtility.randomFreePort() |  Minor | test | Youngjoon Kim | Youngjoon Kim |
| [HBASE-14782](https://issues.apache.org/jira/browse/HBASE-14782) | FuzzyRowFilter skips valid rows |  Major | Filters | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14781](https://issues.apache.org/jira/browse/HBASE-14781) | Turn per cf flushing on for ITBLL by default |  Major | integration tests | Elliott Clark | Elliott Clark |
| [HBASE-14778](https://issues.apache.org/jira/browse/HBASE-14778) | Make block cache hit percentages not integer in the metrics system |  Major | BlockCache, metrics | Elliott Clark | Elliott Clark |
| [HBASE-14777](https://issues.apache.org/jira/browse/HBASE-14777) | Fix Inter Cluster Replication Future ordering issues |  Critical | Replication | Bhupendra Kumar Jain | Ashu Pachauri |
| [HBASE-14773](https://issues.apache.org/jira/browse/HBASE-14773) | Fix HBase shell tests are skipped when skipping server tests. |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-14771](https://issues.apache.org/jira/browse/HBASE-14771) | RpcServer#getRemoteAddress always returns null |  Minor | IPC/RPC | Abhishek Kumar | Abhishek Kumar |
| [HBASE-14768](https://issues.apache.org/jira/browse/HBASE-14768) | bin/graceful\_stop.sh logs nothing as a balancer state to be stored |  Trivial | scripts | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-14761](https://issues.apache.org/jira/browse/HBASE-14761) | Deletes with and without visibility expression do not delete the matching mutation |  Major | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14759](https://issues.apache.org/jira/browse/HBASE-14759) | Avoid using Math.abs when selecting SyncRunner in FSHLog |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-14754](https://issues.apache.org/jira/browse/HBASE-14754) | TestFastFailWithoutTestUtil failing on trunk now in #testPreemptiveFastFailException50Times |  Major | flakey, test | stack | stack |
| [HBASE-14745](https://issues.apache.org/jira/browse/HBASE-14745) | Shade the last few dependencies in hbase-shaded-client |  Blocker | Client, dependencies | Elliott Clark | Elliott Clark |
| [HBASE-14742](https://issues.apache.org/jira/browse/HBASE-14742) | TestHeapMemoryManager is flakey |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-14737](https://issues.apache.org/jira/browse/HBASE-14737) | Clear cachedMaxVersions when HColumnDescriptor#setValue(VERSIONS, value) is called |  Major | . | James Taylor | Pankaj Kumar |
| [HBASE-14733](https://issues.apache.org/jira/browse/HBASE-14733) | Minor typo in alter\_namespace.rb |  Trivial | shell | Enis Soztutar | Enis Soztutar |
| [HBASE-14723](https://issues.apache.org/jira/browse/HBASE-14723) | Fix IT tests split too many times |  Major | integration tests | Elliott Clark | Elliott Clark |
| [HBASE-14717](https://issues.apache.org/jira/browse/HBASE-14717) | enable\_table\_replication command should only create specified table for a peer cluster |  Major | Replication | Y. SREENIVASULU REDDY | Ashish Singhi |
| [HBASE-14712](https://issues.apache.org/jira/browse/HBASE-14712) | MasterProcWALs never clean up |  Blocker | proc-v2 | Elliott Clark | Matteo Bertozzi |
| [HBASE-14706](https://issues.apache.org/jira/browse/HBASE-14706) | RegionLocationFinder should return multiple servernames by top host |  Major | Balancer | Guanghao Zhang | Guanghao Zhang |
| [HBASE-14705](https://issues.apache.org/jira/browse/HBASE-14705) | Javadoc for KeyValue constructor is not correct. |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-14694](https://issues.apache.org/jira/browse/HBASE-14694) | Scan copy constructor doesn't handle allowPartialResults |  Major | Client | Ted Yu | Ted Yu |
| [HBASE-14690](https://issues.apache.org/jira/browse/HBASE-14690) | Fix css so there's no left/right scroll bar |  Major | UI | Elliott Clark | Elliott Clark |
| [HBASE-14689](https://issues.apache.org/jira/browse/HBASE-14689) | Addendum and unit test for HBASE-13471 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14682](https://issues.apache.org/jira/browse/HBASE-14682) | CM restore functionality for regionservers is broken |  Major | integration tests | Enis Soztutar | Enis Soztutar |
| [HBASE-14680](https://issues.apache.org/jira/browse/HBASE-14680) | Two configs for snapshot timeout and better defaults |  Major | snapshots | Enis Soztutar | Heng Chen |
| [HBASE-14674](https://issues.apache.org/jira/browse/HBASE-14674) | Rpc handler / task monitoring seems to be broken after 0.98 |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-14667](https://issues.apache.org/jira/browse/HBASE-14667) | HBaseFsck constructors have diverged |  Minor | hbck | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14663](https://issues.apache.org/jira/browse/HBASE-14663) | HStore::close does not honor config hbase.rs.evictblocksonclose |  Minor | BlockCache, regionserver | Randy Fox | Vladimir Rodionov |
| [HBASE-14661](https://issues.apache.org/jira/browse/HBASE-14661) | RegionServer link is not opening, in HBase Table page. |  Minor | UI | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-14658](https://issues.apache.org/jira/browse/HBASE-14658) | Allow loading a MonkeyFactory by class name |  Major | integration tests, test | Elliott Clark | Elliott Clark |
| [HBASE-14634](https://issues.apache.org/jira/browse/HBASE-14634) | Disable flakey TestSnapshotCloneIndependence.testOnlineSnapshotDeleteIndependent |  Major | test | stack | stack |
| [HBASE-14633](https://issues.apache.org/jira/browse/HBASE-14633) | Try fluid width UI |  Major | UI | Elliott Clark | Elliott Clark |
| [HBASE-14632](https://issues.apache.org/jira/browse/HBASE-14632) | Region server aborts due to unguarded dereference of Reader |  Major | regionserver | Ted Yu | Ted Yu |
| [HBASE-14625](https://issues.apache.org/jira/browse/HBASE-14625) | Chaos Monkey should shut down faster |  Major | integration tests, test | Elliott Clark | Elliott Clark |
| [HBASE-14624](https://issues.apache.org/jira/browse/HBASE-14624) | BucketCache.freeBlock is too expensive |  Major | BlockCache | Randy Fox | Ted Yu |
| [HBASE-14621](https://issues.apache.org/jira/browse/HBASE-14621) | ReplicationLogCleaner gets stuck when a regionserver crashes |  Critical | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-14608](https://issues.apache.org/jira/browse/HBASE-14608) | testWalRollOnLowReplication has some risk to assert failed after HBASE-14600 |  Major | test | Heng Chen | Heng Chen |
| [HBASE-14606](https://issues.apache.org/jira/browse/HBASE-14606) | TestSecureLoadIncrementalHFiles tests timed out in trunk build on apache |  Major | test | stack | stack |
| [HBASE-14598](https://issues.apache.org/jira/browse/HBASE-14598) | ByteBufferOutputStream grows its HeapByteBuffer beyond JVM limitations |  Major | Client, io | Ian Friedman | Ian Friedman |
| [HBASE-14597](https://issues.apache.org/jira/browse/HBASE-14597) | Fix Groups cache in multi-threaded env |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-14594](https://issues.apache.org/jira/browse/HBASE-14594) | Use new DNS API introduced in HADOOP-12437 |  Major | util | Josh Elser | Josh Elser |
| [HBASE-14592](https://issues.apache.org/jira/browse/HBASE-14592) | BatchRestartRsAction always restarts 0 RS when running SlowDeterministicMonkey |  Major | integration tests | Yu Li | Yu Li |
| [HBASE-14591](https://issues.apache.org/jira/browse/HBASE-14591) | Region with reference hfile may split after a forced split in IncreasingToUpperBoundRegionSplitPolicy |  Critical | regionserver | Liu Shaohui | Liu Shaohui |
| [HBASE-14581](https://issues.apache.org/jira/browse/HBASE-14581) | Znode cleanup throws auth exception in secure mode |  Major | security, Zookeeper | Ted Yu | Ted Yu |
| [HBASE-14578](https://issues.apache.org/jira/browse/HBASE-14578) | URISyntaxException during snapshot restore for table with user defined namespace |  Major | snapshots | Pankaj Kumar | Pankaj Kumar |
| [HBASE-14577](https://issues.apache.org/jira/browse/HBASE-14577) | HBase shell help for scan and returning a column family has a typo |  Trivial | shell | Dima Spivak | Dima Spivak |
| [HBASE-14557](https://issues.apache.org/jira/browse/HBASE-14557) | MapReduce WALPlayer issue with NoTagsKeyValue |  Blocker | tooling | Jerry He | Anoop Sam John |
| [HBASE-14555](https://issues.apache.org/jira/browse/HBASE-14555) | Deadlock in MVCC branch-1.2 toString() |  Critical | regionserver | Elliott Clark | Elliott Clark |
| [HBASE-14545](https://issues.apache.org/jira/browse/HBASE-14545) | TestMasterFailover often times out |  Major | test | Mikhail Antonov | stack |
| [HBASE-14544](https://issues.apache.org/jira/browse/HBASE-14544) | Allow HConnectionImpl to not refresh the dns on errors |  Major | Client | Elliott Clark | Elliott Clark |
| [HBASE-14541](https://issues.apache.org/jira/browse/HBASE-14541) | TestHFileOutputFormat.testMRIncrementalLoadWithSplit failed due to too many splits and few retries |  Major | HFile, test | stack | Matteo Bertozzi |
| [HBASE-14536](https://issues.apache.org/jira/browse/HBASE-14536) | Balancer & SSH interfering with each other leading to unavailability |  Major | master, Region Assignment | Devaraj Das | Stephen Yuan Jiang |
| [HBASE-14531](https://issues.apache.org/jira/browse/HBASE-14531) | graceful\_stop.sh "if [ "$local" ]" condition unexpected behaviour |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-14518](https://issues.apache.org/jira/browse/HBASE-14518) | Give TestScanEarlyTermination the same treatment as 'HBASE-14378 Get TestAccessController\* passing again...' -- up priority handlers |  Major | test | stack | stack |
| [HBASE-14512](https://issues.apache.org/jira/browse/HBASE-14512) | Cache UGI groups |  Major | Performance, security | Elliott Clark | Elliott Clark |
| [HBASE-14510](https://issues.apache.org/jira/browse/HBASE-14510) | Can not set coprocessor from Shell after HBASE-14224 |  Major | Coprocessors, shell | Yerui Sun | Yerui Sun |
| [HBASE-14501](https://issues.apache.org/jira/browse/HBASE-14501) | NPE in replication when HDFS transparent encryption is enabled. |  Critical | Replication, security | Enis Soztutar | Enis Soztutar |
| [HBASE-14494](https://issues.apache.org/jira/browse/HBASE-14494) | Wrong usage messages on shell commands |  Minor | shell | Josh Elser | Josh Elser |
| [HBASE-14492](https://issues.apache.org/jira/browse/HBASE-14492) | Increase REST server header buffer size from 8k to 64k |  Major | REST | huaxiang sun | huaxiang sun |
| [HBASE-14489](https://issues.apache.org/jira/browse/HBASE-14489) | postScannerFilterRow consumes a lot of CPU |  Major | Coprocessors, Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-14486](https://issues.apache.org/jira/browse/HBASE-14486) | Disable TestRegionPlacement, a flakey test for an unfinished feature |  Major | test | stack | stack |
| [HBASE-14475](https://issues.apache.org/jira/browse/HBASE-14475) | Region split requests are always audited with "hbase" user rather than request user |  Major | regionserver, security | Enis Soztutar | Ted Yu |
| [HBASE-14474](https://issues.apache.org/jira/browse/HBASE-14474) | DeadLock in RpcClientImpl.Connection.close() |  Blocker | IPC/RPC | Enis Soztutar | Enis Soztutar |
| [HBASE-14473](https://issues.apache.org/jira/browse/HBASE-14473) | Compute region locality in parallel |  Major | Balancer | Elliott Clark | Elliott Clark |
| [HBASE-14471](https://issues.apache.org/jira/browse/HBASE-14471) | Thrift -  HTTP Error 413 full HEAD if using kerberos authentication |  Major | Thrift | huaxiang sun | huaxiang sun |
| [HBASE-14469](https://issues.apache.org/jira/browse/HBASE-14469) | Fix some comment, validation and logging around memstore lower limit configuration |  Minor | . | Appy | Appy |
| [HBASE-14463](https://issues.apache.org/jira/browse/HBASE-14463) | Severe performance downgrade when parallel reading a single key from BucketCache |  Major | . | Yu Li | Yu Li |
| [HBASE-14449](https://issues.apache.org/jira/browse/HBASE-14449) | Rewrite deadlock prevention for concurrent connection close |  Major | master, metrics | Ted Yu | Ted Yu |
| [HBASE-14445](https://issues.apache.org/jira/browse/HBASE-14445) | ExportSnapshot does not honor -chmod option |  Major | snapshots | Ted Yu | Ted Yu |
| [HBASE-14437](https://issues.apache.org/jira/browse/HBASE-14437) | ArithmeticException in ReplicationInterClusterEndpoint |  Minor | Replication | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14431](https://issues.apache.org/jira/browse/HBASE-14431) | AsyncRpcClient#removeConnection() never removes connection from connections pool if server fails |  Critical | IPC/RPC | Samir Ahmic | Samir Ahmic |
| [HBASE-14425](https://issues.apache.org/jira/browse/HBASE-14425) | In Secure Zookeeper cluster superuser will not have sufficient permission if multiple values are configured in "hbase.superuser" |  Major | security, Zookeeper | Pankaj Kumar | Pankaj Kumar |
| [HBASE-14407](https://issues.apache.org/jira/browse/HBASE-14407) | NotServingRegion: hbase region closed forever |  Critical | Region Assignment | Shuaifeng Zhou | Shuaifeng Zhou |
| [HBASE-14400](https://issues.apache.org/jira/browse/HBASE-14400) | Fix HBase RPC protection documentation |  Critical | encryption, IPC/RPC, security | Appy | Appy |
| [HBASE-14394](https://issues.apache.org/jira/browse/HBASE-14394) | Properly close the connection after reading records from table. |  Minor | mapreduce | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14393](https://issues.apache.org/jira/browse/HBASE-14393) | Have TestHFileEncryption clean up after itself so it don't go all zombie on us |  Major | test | stack | stack |
| [HBASE-14392](https://issues.apache.org/jira/browse/HBASE-14392) | [tests] TestLogRollingNoCluster fails on master from time to time |  Major | test | stack | stack |
| [HBASE-14385](https://issues.apache.org/jira/browse/HBASE-14385) | Close the sockets that is missing in connection closure. |  Minor | Client | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14384](https://issues.apache.org/jira/browse/HBASE-14384) | Trying to run canary locally with -regionserver option causes exception |  Major | canary | Sanjeev Srivatsa | Sanjeev Srivatsa |
| [HBASE-14382](https://issues.apache.org/jira/browse/HBASE-14382) | TestInterfaceAudienceAnnotations should hadoop-compt module resources |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14380](https://issues.apache.org/jira/browse/HBASE-14380) | Correct data gets skipped along with bad data in importTsv bulk load thru TsvImporterTextMapper |  Major | mapreduce, tooling | Bhupendra Kumar Jain | Bhupendra Kumar Jain |
| [HBASE-14367](https://issues.apache.org/jira/browse/HBASE-14367) | Add normalization support to shell |  Major | Balancer, shell | Lars George | Mikhail Antonov |
| [HBASE-14366](https://issues.apache.org/jira/browse/HBASE-14366) | NPE in case visibility expression is not present in labels table during importtsv run |  Minor | . | Y. SREENIVASULU REDDY | Bhupendra Kumar Jain |
| [HBASE-14362](https://issues.apache.org/jira/browse/HBASE-14362) | org.apache.hadoop.hbase.master.procedure.TestWALProcedureStoreOnHDFS is super duper flaky |  Critical | test | Dima Spivak | Heng Chen |
| [HBASE-14359](https://issues.apache.org/jira/browse/HBASE-14359) | HTable#close will hang forever if unchecked error/exception thrown in AsyncProcess#sendMultiAction |  Major | Client | Yu Li | Victor Xu |
| [HBASE-14354](https://issues.apache.org/jira/browse/HBASE-14354) | Minor improvements for usage of the mlock agent |  Trivial | hbase, regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-14347](https://issues.apache.org/jira/browse/HBASE-14347) | Add a switch to DynamicClassLoader to disable it |  Major | Client, defaults, regionserver | Esteban Gutierrez | huaxiang sun |
| [HBASE-14343](https://issues.apache.org/jira/browse/HBASE-14343) | Fix debug message in SimpleRegionNormalizer for small regions |  Trivial | regionserver | Lars George | Lars Francke |
| [HBASE-14342](https://issues.apache.org/jira/browse/HBASE-14342) | Recursive call in RegionMergeTransactionImpl.getJournal() |  Major | regionserver | Lars George | Lars Francke |
| [HBASE-14338](https://issues.apache.org/jira/browse/HBASE-14338) | License notification misspells 'Asciidoctor' |  Minor | . | Sean Busbey | Lars Francke |
| [HBASE-14327](https://issues.apache.org/jira/browse/HBASE-14327) | TestIOFencing#testFencingAroundCompactionAfterWALSync is flaky |  Critical | test | Dima Spivak | Heng Chen |
| [HBASE-14317](https://issues.apache.org/jira/browse/HBASE-14317) | Stuck FSHLog: bad disk (HDFS-8960) and can't roll WAL |  Blocker | wal | stack | stack |
| [HBASE-14315](https://issues.apache.org/jira/browse/HBASE-14315) | Save one call to KeyValueHeap.peek per row |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-14313](https://issues.apache.org/jira/browse/HBASE-14313) | After a Connection sees ConnectionClosingException it never recovers |  Critical | Client | Elliott Clark | Elliott Clark |
| [HBASE-14307](https://issues.apache.org/jira/browse/HBASE-14307) | Incorrect use of positional read api in HFileBlock |  Major | io | Shradha Revankar | Chris Nauroth |
| [HBASE-14302](https://issues.apache.org/jira/browse/HBASE-14302) | TableSnapshotInputFormat should not create back references when restoring snapshot |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14291](https://issues.apache.org/jira/browse/HBASE-14291) | NPE On StochasticLoadBalancer Balance Involving RS With No Regions |  Minor | Balancer | Matt Warhaftig | Ted Yu |
| [HBASE-14287](https://issues.apache.org/jira/browse/HBASE-14287) | Bootstrapping a cluster leaves temporary WAL directory laying around |  Minor | master, regionserver | Lars George | Ted Yu |
| [HBASE-14283](https://issues.apache.org/jira/browse/HBASE-14283) | Reverse scan doesn’t work with HFile inline index/bloom blocks |  Major | . | Ben Lau | Ben Lau |
| [HBASE-14280](https://issues.apache.org/jira/browse/HBASE-14280) | Bulk Upload from HA cluster to remote HA hbase cluster fails |  Minor | hadoop2, regionserver | Ankit Singhal | Ankit Singhal |
| [HBASE-14273](https://issues.apache.org/jira/browse/HBASE-14273) | Rename MVCC to MVCC: From MultiVersionConsistencyControl to MultiVersionConcurrencyControl |  Major | regionserver | stack | Lars Francke |
| [HBASE-14269](https://issues.apache.org/jira/browse/HBASE-14269) | FuzzyRowFilter omits certain rows when multiple fuzzy keys exist |  Major | Filters | hongbin ma | hongbin ma |
| [HBASE-14258](https://issues.apache.org/jira/browse/HBASE-14258) | Make region\_mover.rb script case insensitive with regard to hostname |  Minor | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14257](https://issues.apache.org/jira/browse/HBASE-14257) | Periodic flusher only handles hbase:meta, not other system tables |  Major | regionserver | Lars George | Abhishek Singh Chouhan |
| [HBASE-14251](https://issues.apache.org/jira/browse/HBASE-14251) | javadoc jars use LICENSE/NOTICE from primary artifact |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14250](https://issues.apache.org/jira/browse/HBASE-14250) | branch-1.1 hbase-server test-jar has incorrect LICENSE |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14249](https://issues.apache.org/jira/browse/HBASE-14249) | shaded jar modules create spurious source and test jars with incorrect LICENSE/NOTICE info |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-14243](https://issues.apache.org/jira/browse/HBASE-14243) | Incorrect NOTICE file in hbase-it test-jar |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14241](https://issues.apache.org/jira/browse/HBASE-14241) | Fix deadlock during cluster shutdown due to concurrent connection close |  Critical | master, metrics | Andrew Purtell | Ted Yu |
| [HBASE-14238](https://issues.apache.org/jira/browse/HBASE-14238) | Branch-1.2 AM issues |  Blocker | Region Assignment | Elliott Clark | Elliott Clark |
| [HBASE-14234](https://issues.apache.org/jira/browse/HBASE-14234) | Procedure-V2: Exception encountered in WALProcedureStore#rollWriter() should be properly handled |  Minor | proc-v2 | Ted Yu | Ted Yu |
| [HBASE-14229](https://issues.apache.org/jira/browse/HBASE-14229) | Flushing canceled by coprocessor still leads to memstoreSize set down |  Major | regionserver | Yerui Sun | Yerui Sun |
| [HBASE-14228](https://issues.apache.org/jira/browse/HBASE-14228) | Close BufferedMutator and connection in MultiTableOutputFormat |  Minor | mapreduce | Jerry He | Jerry He |
| [HBASE-14224](https://issues.apache.org/jira/browse/HBASE-14224) | Fix coprocessor handling of duplicate classes |  Critical | Coprocessors | Lars George | stack |
| [HBASE-14219](https://issues.apache.org/jira/browse/HBASE-14219) | src tgz no longer builds after HBASE-14085 |  Blocker | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14214](https://issues.apache.org/jira/browse/HBASE-14214) | list\_labels shouldn't raise ArgumentError if no labels are defined |  Minor | . | Andrew Purtell | Anoop Sam John |
| [HBASE-14211](https://issues.apache.org/jira/browse/HBASE-14211) | Add more rigorous integration tests of splits |  Major | integration tests, test | Elliott Clark | Elliott Clark |
| [HBASE-14209](https://issues.apache.org/jira/browse/HBASE-14209) | TestShell visibility tests failing |  Major | security, shell | Andrew Purtell | Andrew Purtell |
| [HBASE-14206](https://issues.apache.org/jira/browse/HBASE-14206) | MultiRowRangeFilter returns records whose rowKeys are out of allowed ranges |  Critical | Filters | Anton Nazaruk | Anton Nazaruk |
| [HBASE-14201](https://issues.apache.org/jira/browse/HBASE-14201) | hbck should not take a lock unless fixing errors |  Major | hbck, util | Simon Law | Simon Law |
| [HBASE-14196](https://issues.apache.org/jira/browse/HBASE-14196) | Thrift server idle connection timeout issue |  Major | Thrift | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14185](https://issues.apache.org/jira/browse/HBASE-14185) | Incorrect region names logged by MemStoreFlusher |  Minor | regionserver | Biju Nair | Biju Nair |
| [HBASE-14178](https://issues.apache.org/jira/browse/HBASE-14178) | regionserver blocks because of waiting for offsetLock |  Major | regionserver | Heng Chen | Heng Chen |
| [HBASE-14168](https://issues.apache.org/jira/browse/HBASE-14168) | Avoid useless retry for DoNotRetryIOException in TableRecordReaderImpl |  Minor | mapreduce | zhouyingchao | zhouyingchao |
| [HBASE-14166](https://issues.apache.org/jira/browse/HBASE-14166) | Per-Region metrics can be stale |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-14157](https://issues.apache.org/jira/browse/HBASE-14157) | Interfaces implemented by subclasses should be checked when registering CoprocessorService |  Major | Coprocessors | Alok Lal | Ted Yu |
| [HBASE-14155](https://issues.apache.org/jira/browse/HBASE-14155) | StackOverflowError in reverse scan |  Critical | regionserver, Scanners | James Taylor | ramkrishna.s.vasudevan |
| [HBASE-14153](https://issues.apache.org/jira/browse/HBASE-14153) | Typo in ProcedureManagerHost.MASTER\_PROCEUDRE\_CONF\_KEY |  Trivial | . | Konstantin Shvachko | Konstantin Shvachko |
| [HBASE-14146](https://issues.apache.org/jira/browse/HBASE-14146) | Once replication sees an error it slows down forever |  Major | Replication | Elliott Clark | Elliott Clark |
| [HBASE-14145](https://issues.apache.org/jira/browse/HBASE-14145) | Allow the Canary in regionserver mode to try all regions on the server, not just one |  Major | canary, util | Elliott Clark | Sanjeev Srivatsa |
| [HBASE-14119](https://issues.apache.org/jira/browse/HBASE-14119) | Show meaningful error messages instead of stack traces in hbase shell commands. Fixing few commands in this jira. |  Minor | . | Appy | Appy |
| [HBASE-14115](https://issues.apache.org/jira/browse/HBASE-14115) | Fix resource leak in HMasterCommandLine |  Major | master, tooling | Yuhao Bi | Yuhao Bi |
| [HBASE-14109](https://issues.apache.org/jira/browse/HBASE-14109) | NPE if we don't load fully before we are shutdown |  Trivial | regionserver | stack | stack |
| [HBASE-14106](https://issues.apache.org/jira/browse/HBASE-14106) | TestProcedureRecovery is flaky |  Major | proc-v2, test | Andrew Purtell | Matteo Bertozzi |
| [HBASE-14100](https://issues.apache.org/jira/browse/HBASE-14100) | Fix high priority findbugs warnings |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-14098](https://issues.apache.org/jira/browse/HBASE-14098) | Allow dropping caches behind compactions |  Major | Compaction, hadoop2, HFile | Elliott Clark | Elliott Clark |
| [HBASE-14092](https://issues.apache.org/jira/browse/HBASE-14092) | hbck should run without locks by default and only disable the balancer when necessary |  Major | hbck, util | Elliott Clark | Elliott Clark |
| [HBASE-14089](https://issues.apache.org/jira/browse/HBASE-14089) | Remove unnecessary draw of system entropy from RecoverableZooKeeper |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-14054](https://issues.apache.org/jira/browse/HBASE-14054) | Acknowledged writes may get lost if regionserver clock is set backwards |  Major | regionserver | Tobi Vollebregt | Enis Soztutar |
| [HBASE-14050](https://issues.apache.org/jira/browse/HBASE-14050) | NPE in org.apache.hadoop.hbase.ipc.RpcServer$Connection.readAndProcess |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-14042](https://issues.apache.org/jira/browse/HBASE-14042) | Fix FATAL level logging in FSHLog where logged for non fatal exceptions |  Major | Operability, wal | Andrew Purtell | Andrew Purtell |
| [HBASE-14041](https://issues.apache.org/jira/browse/HBASE-14041) | Client MetaCache is cleared if a ThrottlingException is thrown |  Minor | Client | Eungsop Yoo | Eungsop Yoo |
| [HBASE-14021](https://issues.apache.org/jira/browse/HBASE-14021) | Quota table has a wrong description on the UI |  Minor | UI | Ashish Singhi | Ashish Singhi |
| [HBASE-14012](https://issues.apache.org/jira/browse/HBASE-14012) | Double Assignment and Dataloss when ServerCrashProcedure runs during Master failover |  Blocker | master, Region Assignment | stack | stack |
| [HBASE-14010](https://issues.apache.org/jira/browse/HBASE-14010) | TestRegionRebalancing.testRebalanceOnRegionServerNumberChange fails; cluster not balanced |  Major | test | stack | stack |
| [HBASE-14005](https://issues.apache.org/jira/browse/HBASE-14005) | Set permission to .top hfile in LoadIncrementalHFiles |  Trivial | . | Francesco MDE | Francesco MDE |
| [HBASE-14000](https://issues.apache.org/jira/browse/HBASE-14000) | Region server failed to report to Master and was stuck in reportForDuty retry loop |  Major | regionserver | Pankaj Kumar | Pankaj Kumar |
| [HBASE-13997](https://issues.apache.org/jira/browse/HBASE-13997) | ScannerCallableWithReplicas cause Infinitely blocking |  Minor | Client | Zephyr Guo | Zephyr Guo |
| [HBASE-13995](https://issues.apache.org/jira/browse/HBASE-13995) | ServerName is not fully case insensitive |  Major | Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13989](https://issues.apache.org/jira/browse/HBASE-13989) | Threshold for combined MemStore and BlockCache percentages is not checked |  Major | regionserver | Ted Yu | Ted Yu |
| [HBASE-13988](https://issues.apache.org/jira/browse/HBASE-13988) | Add exception handler for lease thread |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-13982](https://issues.apache.org/jira/browse/HBASE-13982) | Add info for visibility labels/cell TTLs to ImportTsv |  Major | mapreduce | Lars George | NIDHI GAMBHIR |
| [HBASE-13978](https://issues.apache.org/jira/browse/HBASE-13978) | Variable never assigned in SimpleTotalOrderPartitioner.getPartition() |  Major | mapreduce | Lars George | Bhupendra Kumar Jain |
| [HBASE-13974](https://issues.apache.org/jira/browse/HBASE-13974) | TestRateLimiter#testFixedIntervalResourceAvailability may fail |  Minor | test | Guanghao Zhang | Guanghao Zhang |
| [HBASE-13971](https://issues.apache.org/jira/browse/HBASE-13971) | Flushes stuck since 6 hours on a regionserver. |  Critical | regionserver | Abhilash | Ted Yu |
| [HBASE-13970](https://issues.apache.org/jira/browse/HBASE-13970) | NPE during compaction in trunk |  Major | regionserver | ramkrishna.s.vasudevan | Duo Zhang |
| [HBASE-13969](https://issues.apache.org/jira/browse/HBASE-13969) | AuthenticationTokenSecretManager is never stopped in RPCServer |  Minor | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-13966](https://issues.apache.org/jira/browse/HBASE-13966) | Limit column width in table.jsp |  Minor | Operability, UI | Jean-Marc Spaggiari | Matt Warhaftig |
| [HBASE-13959](https://issues.apache.org/jira/browse/HBASE-13959) | Region splitting uses a single thread in most common cases |  Critical | regionserver | Hari Krishna Dara | Hari Krishna Dara |
| [HBASE-13958](https://issues.apache.org/jira/browse/HBASE-13958) | RESTApiClusterManager calls kill() instead of suspend() and resume() |  Minor | integration tests | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13945](https://issues.apache.org/jira/browse/HBASE-13945) | Prefix\_Tree seekBefore() does not work correctly |  Major | io | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13938](https://issues.apache.org/jira/browse/HBASE-13938) | Deletes done during the region merge transaction may get eclipsed |  Major | master, regionserver | Devaraj Das | Enis Soztutar |
| [HBASE-13935](https://issues.apache.org/jira/browse/HBASE-13935) | Orphaned namespace table ZK node should not prevent master to start |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13933](https://issues.apache.org/jira/browse/HBASE-13933) | DBE's seekBefore with tags corrupts the tag's offset information thus leading to incorrect results |  Critical | io | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13930](https://issues.apache.org/jira/browse/HBASE-13930) | Exclude Findbugs packages from shaded jars |  Major | build, Client | Nick Dimiduk | Gabor Liptak |
| [HBASE-13923](https://issues.apache.org/jira/browse/HBASE-13923) | Loaded region coprocessors are not reported in shell status command |  Major | regionserver, shell | Lars George | Ashish Singhi |
| [HBASE-13918](https://issues.apache.org/jira/browse/HBASE-13918) | Fix hbase:namespace description in webUI |  Trivial | hbase | Patrick White | Patrick White |
| [HBASE-13906](https://issues.apache.org/jira/browse/HBASE-13906) | Improve handling of NeedUnmanagedConnectionException |  Major | API, Client | Nick Dimiduk | Mikhail Antonov |
| [HBASE-13905](https://issues.apache.org/jira/browse/HBASE-13905) | TestRecoveredEdits.testReplayWorksThoughLotsOfFlushing failing consistently on branch-1.1 |  Critical | regionserver, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13904](https://issues.apache.org/jira/browse/HBASE-13904) | TestAssignmentManager.testBalanceOnMasterFailoverScenarioWithOfflineNode failing consistently on branch-1.1 |  Critical | master, Region Assignment, test | Nick Dimiduk | Mikhail Antonov |
| [HBASE-13901](https://issues.apache.org/jira/browse/HBASE-13901) | Error while calling watcher on creating and deleting an HBase table |  Minor | . | neha | Ashish Singhi |
| [HBASE-13895](https://issues.apache.org/jira/browse/HBASE-13895) | DATALOSS: Region assigned before WAL replay when abort |  Critical | Recovery, Region Assignment, wal | stack | stack |
| [HBASE-13892](https://issues.apache.org/jira/browse/HBASE-13892) | Scanner with all results filtered out results in NPE |  Critical | Client | Josh Elser | Josh Elser |
| [HBASE-13889](https://issues.apache.org/jira/browse/HBASE-13889) | Fix hbase-shaded-client artifact so it works on hbase-downstreamer |  Critical | Client | Dmitry Minkovsky | Elliott Clark |
| [HBASE-13888](https://issues.apache.org/jira/browse/HBASE-13888) | Fix refill bug from HBASE-13686 |  Major | regionserver | Guanghao Zhang | Guanghao Zhang |
| [HBASE-13885](https://issues.apache.org/jira/browse/HBASE-13885) | ZK watches leaks during snapshots |  Critical | snapshots | Abhishek Singh Chouhan | Lars Hofhansl |
| [HBASE-13881](https://issues.apache.org/jira/browse/HBASE-13881) | Bug in HTable#incrementColumnValue implementation |  Major | Client | Jerry Lam | Gabor Liptak |
| [HBASE-13878](https://issues.apache.org/jira/browse/HBASE-13878) | Set hbase.fs.tmp.dir config in HBaseTestingUtility.java for Phoenix UT to use |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13877](https://issues.apache.org/jira/browse/HBASE-13877) | Interrupt to flush from TableFlushProcedure causes dataloss in ITBLL |  Blocker | integration tests, proc-v2 | Enis Soztutar | Enis Soztutar |
| [HBASE-13875](https://issues.apache.org/jira/browse/HBASE-13875) | Clock skew between master and region server may render restored region without server address |  Major | snapshots | Ted Yu | Ted Yu |
| [HBASE-13873](https://issues.apache.org/jira/browse/HBASE-13873) | LoadTestTool addAuthInfoToConf throws UnsupportedOperationException |  Major | integration tests | Yerui Sun | Yerui Sun |
| [HBASE-13865](https://issues.apache.org/jira/browse/HBASE-13865) | Increase the default value for hbase.hregion.memstore.block.multipler from 2 to 4 (part 2) |  Trivial | regionserver | Vladimir Rodionov | Gabor Liptak |
| [HBASE-13863](https://issues.apache.org/jira/browse/HBASE-13863) | Multi-wal feature breaks reported number and size of HLogs |  Major | regionserver, UI | Elliott Clark | Abhilash |
| [HBASE-13861](https://issues.apache.org/jira/browse/HBASE-13861) | BucketCacheTmpl.jamon has wrong bucket free and used labels |  Major | regionserver, UI | Lars George | Matt Warhaftig |
| [HBASE-13858](https://issues.apache.org/jira/browse/HBASE-13858) | RS/MasterDumpServlet dumps threads before its “Stacks” header |  Trivial | master, regionserver, UI | Lars George | Fred Liu |
| [HBASE-13853](https://issues.apache.org/jira/browse/HBASE-13853) | ITBLL improvements after HBASE-13811 |  Blocker | integration tests, tooling, wal | Enis Soztutar | Enis Soztutar |
| [HBASE-13851](https://issues.apache.org/jira/browse/HBASE-13851) | RpcClientImpl.close() can hang with cancelled replica RPCs |  Major | IPC/RPC | Enis Soztutar | Enis Soztutar |
| [HBASE-13847](https://issues.apache.org/jira/browse/HBASE-13847) | getWriteRequestCount function in HRegionServer uses int variable to return the count. |  Major | hbase, regionserver | Abhilash | Abhilash |
| [HBASE-13845](https://issues.apache.org/jira/browse/HBASE-13845) | Expire of one region server carrying meta can bring down the master |  Major | master | Jerry He | Jerry He |
| [HBASE-13835](https://issues.apache.org/jira/browse/HBASE-13835) | KeyValueHeap.current might be in heap when exception happens in pollRealKV |  Major | Scanners | zhouyingchao | zhouyingchao |
| [HBASE-13834](https://issues.apache.org/jira/browse/HBASE-13834) | Evict count not properly passed to HeapMemoryTuner. |  Major | hbase, regionserver | Abhilash | Abhilash |
| [HBASE-13833](https://issues.apache.org/jira/browse/HBASE-13833) | LoadIncrementalHFile.doBulkLoad(Path,HTable) doesn't handle unmanaged connections when using SecureBulkLoad |  Major | tooling | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13831](https://issues.apache.org/jira/browse/HBASE-13831) | TestHBaseFsck#testParallelHbck is flaky against hadoop 2.6+ |  Minor | hbck, test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13826](https://issues.apache.org/jira/browse/HBASE-13826) | Unable to create table when group acls are appropriately set. |  Major | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13825](https://issues.apache.org/jira/browse/HBASE-13825) | Use ProtobufUtil#mergeFrom and ProtobufUtil#mergeDelimitedFrom in place of builder methods of same name |  Major | util | Dev Lakhani | Andrew Purtell |
| [HBASE-13824](https://issues.apache.org/jira/browse/HBASE-13824) | TestGenerateDelegationToken: Master fails to start in Windows environment |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13821](https://issues.apache.org/jira/browse/HBASE-13821) | WARN if hbase.bucketcache.percentage.in.combinedcache is set |  Minor | regionserver, Usability | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13813](https://issues.apache.org/jira/browse/HBASE-13813) | Fix Javadoc warnings in Procedure.java |  Minor | documentation | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13812](https://issues.apache.org/jira/browse/HBASE-13812) | Deleting of last Column Family of a table should not be allowed |  Major | master | Sophia Feng | Enis Soztutar |
| [HBASE-13811](https://issues.apache.org/jira/browse/HBASE-13811) | Splitting WALs, we are filtering out too many edits -\> DATALOSS |  Critical | wal | stack | stack |
| [HBASE-13810](https://issues.apache.org/jira/browse/HBASE-13810) | Table is left unclosed in VerifyReplication#Verifier |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-13809](https://issues.apache.org/jira/browse/HBASE-13809) | TestRowTooBig should use HDFS directory for its region directory |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13802](https://issues.apache.org/jira/browse/HBASE-13802) | Procedure V2: Master fails to come up due to rollback of create namespace table |  Major | master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13801](https://issues.apache.org/jira/browse/HBASE-13801) | Hadoop src checksum is shown instead of HBase src checksum in master / RS UI |  Major | UI | Enis Soztutar | Enis Soztutar |
| [HBASE-13800](https://issues.apache.org/jira/browse/HBASE-13800) | TestStore#testDeleteExpiredStoreFiles should create unique data/log directory for each call |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13797](https://issues.apache.org/jira/browse/HBASE-13797) | Fix resource leak in HBaseFsck |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-13796](https://issues.apache.org/jira/browse/HBASE-13796) | ZKUtil doesn't clean quorum setting properly |  Minor | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-13789](https://issues.apache.org/jira/browse/HBASE-13789) | ForeignException should not be sent to the client |  Minor | Client, master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13779](https://issues.apache.org/jira/browse/HBASE-13779) | Calling table.exists() before table.get() end up with an empty Result |  Major | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13778](https://issues.apache.org/jira/browse/HBASE-13778) | BoundedByteBufferPool incorrectly increasing runningAverage buffer length |  Major | io, util | Anoop Sam John | Anoop Sam John |
| [HBASE-13777](https://issues.apache.org/jira/browse/HBASE-13777) | Table fragmentation display triggers NPE on master status page |  Major | UI | Lars George | Lars George |
| [HBASE-13776](https://issues.apache.org/jira/browse/HBASE-13776) | Setting illegal versions for HColumnDescriptor does not throw IllegalArgumentException |  Major | API | Yuhao Bi | Yuhao Bi |
| [HBASE-13770](https://issues.apache.org/jira/browse/HBASE-13770) | Programmatic JAAS configuration option for secure zookeeper may be broken |  Major | Operability, security | Andrew Purtell | Maddineni Sukumar |
| [HBASE-13768](https://issues.apache.org/jira/browse/HBASE-13768) | ZooKeeper znodes are bootstrapped with insecure ACLs in a secure configuration |  Blocker | security, Zookeeper | Andrew Purtell | Enis Soztutar |
| [HBASE-13767](https://issues.apache.org/jira/browse/HBASE-13767) | Allow ZKAclReset to set and not just clear ZK ACLs |  Trivial | Operability, Zookeeper | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13746](https://issues.apache.org/jira/browse/HBASE-13746) | list\_replicated\_tables command is not listing table in hbase shell. |  Major | shell | Y. SREENIVASULU REDDY | Abhishek Kumar |
| [HBASE-13744](https://issues.apache.org/jira/browse/HBASE-13744) | TestCorruptedRegionStoreFile is flaky |  Major | test | Andrew Purtell | Andrew Purtell |
| [HBASE-13741](https://issues.apache.org/jira/browse/HBASE-13741) | Disable TestRegionObserverInterface#testRecovery and testLegacyRecovery |  Minor | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13734](https://issues.apache.org/jira/browse/HBASE-13734) | Improper timestamp checking with VisibilityScanDeleteTracker |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-13733](https://issues.apache.org/jira/browse/HBASE-13733) | Failed MiniZooKeeperCluster startup did not shutdown ZK servers |  Major | Zookeeper | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13732](https://issues.apache.org/jira/browse/HBASE-13732) | TestHBaseFsck#testParallelWithRetriesHbck fails intermittently |  Minor | hbck, test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13731](https://issues.apache.org/jira/browse/HBASE-13731) | TestReplicationAdmin should clean up MiniZKCluster resource |  Trivial | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13729](https://issues.apache.org/jira/browse/HBASE-13729) | Old hbase.regionserver.global.memstore.upperLimit and lowerLimit properties are ignored if present |  Critical | regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13727](https://issues.apache.org/jira/browse/HBASE-13727) | Codehaus repository is out of service |  Major | build | Andrew Purtell | Andrew Purtell |
| [HBASE-13723](https://issues.apache.org/jira/browse/HBASE-13723) | In table.rb scanners are never closed. |  Major | shell | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-13721](https://issues.apache.org/jira/browse/HBASE-13721) | Improve shell scan performances when using LIMIT |  Major | shell | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-13717](https://issues.apache.org/jira/browse/HBASE-13717) | TestBoundedRegionGroupingProvider#setMembershipDedups need to set HDFS diretory for WAL |  Minor | wal | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13712](https://issues.apache.org/jira/browse/HBASE-13712) | Backport HBASE-13199 to branch-1 |  Major | Operability, tooling | Elliott Clark | Elliott Clark |
| [HBASE-13711](https://issues.apache.org/jira/browse/HBASE-13711) | Provide an API to set min and max versions in HColumnDescriptor |  Minor | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13709](https://issues.apache.org/jira/browse/HBASE-13709) | Updates to meta table server columns may be eclipsed |  Major | IPC/RPC, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-13704](https://issues.apache.org/jira/browse/HBASE-13704) | Hbase throws OutOfOrderScannerNextException when MultiRowRangeFilter is used |  Major | Client | Aleksandr Maksymenko | Aleksandr Maksymenko |
| [HBASE-13703](https://issues.apache.org/jira/browse/HBASE-13703) | ReplicateContext should not be a member of ReplicationSource |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13700](https://issues.apache.org/jira/browse/HBASE-13700) | Allow Thrift2 HSHA server to have configurable threads |  Major | Thrift | Elliott Clark | Elliott Clark |
| [HBASE-13694](https://issues.apache.org/jira/browse/HBASE-13694) | CallQueueSize is incorrectly decremented until the response is sent |  Major | IPC/RPC, master, regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13686](https://issues.apache.org/jira/browse/HBASE-13686) | Fail to limit rate in RateLimiter |  Major | Client | Guanghao Zhang | Ashish Singhi |
| [HBASE-13668](https://issues.apache.org/jira/browse/HBASE-13668) | TestFlushRegionEntry is flaky |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13664](https://issues.apache.org/jira/browse/HBASE-13664) | Use HBase 1.0 interfaces in ConnectionCache |  Major | util | Solomon Duskis | Solomon Duskis |
| [HBASE-13663](https://issues.apache.org/jira/browse/HBASE-13663) | HMaster fails to restart 'HMaster: Failed to become active master' |  Major | hbase | Romil Choksi | Ted Yu |
| [HBASE-13662](https://issues.apache.org/jira/browse/HBASE-13662) | RSRpcService.scan() throws an OutOfOrderScannerNext if the scan has a retriable failure |  Major | IPC/RPC, regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13653](https://issues.apache.org/jira/browse/HBASE-13653) | Uninitialized HRegionServer#walFactory may result in NullPointerException at region server startup​ |  Major | hbase | Romil Choksi | Ted Yu |
| [HBASE-13651](https://issues.apache.org/jira/browse/HBASE-13651) | Handle StoreFileScanner FileNotFoundException |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13649](https://issues.apache.org/jira/browse/HBASE-13649) | CellComparator.compareTimestamps javadoc inconsistent and wrong |  Minor | documentation | Dave Latham | Dave Latham |
| [HBASE-13647](https://issues.apache.org/jira/browse/HBASE-13647) | Default value for hbase.client.operation.timeout is too high |  Blocker | Client | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13638](https://issues.apache.org/jira/browse/HBASE-13638) | Put copy constructor is shallow |  Major | Client | Dave Latham | Changgeng Li |
| [HBASE-13635](https://issues.apache.org/jira/browse/HBASE-13635) | Regions stuck in transition because master is incorrectly assumed dead |  Major | master, regionserver | Elliott Clark | Elliott Clark |
| [HBASE-13626](https://issues.apache.org/jira/browse/HBASE-13626) | ZKTableStateManager logs table state changes at WARN |  Minor | . | Nick Dimiduk | Stephen Yuan Jiang |
| [HBASE-13625](https://issues.apache.org/jira/browse/HBASE-13625) | Use HDFS for HFileOutputFormat2 partitioner's path |  Major | mapreduce | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13618](https://issues.apache.org/jira/browse/HBASE-13618) | ReplicationSource is too eager to remove sinks |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13617](https://issues.apache.org/jira/browse/HBASE-13617) | TestReplicaWithCluster.testChangeTable timeout |  Major | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13612](https://issues.apache.org/jira/browse/HBASE-13612) | TestRegionFavoredNodes doesn't guard against setup failure |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-13611](https://issues.apache.org/jira/browse/HBASE-13611) | update clover to work for current versions |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-13608](https://issues.apache.org/jira/browse/HBASE-13608) | 413 Error with Stargate through Knox, using AD, SPNEGO, and Pre-Auth |  Major | REST | Ted Yu | Ted Yu |
| [HBASE-13607](https://issues.apache.org/jira/browse/HBASE-13607) | TestSplitLogManager.testGetPreviousRecoveryMode consistently failing |  Minor | test | Josh Elser | Josh Elser |
| [HBASE-13606](https://issues.apache.org/jira/browse/HBASE-13606) | AssignmentManager.assign() is not sync in both path |  Major | Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13604](https://issues.apache.org/jira/browse/HBASE-13604) | bin/hbase mapredcp does not include yammer-metrics jar |  Minor | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13601](https://issues.apache.org/jira/browse/HBASE-13601) | Connection leak during log splitting |  Major | wal | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-13600](https://issues.apache.org/jira/browse/HBASE-13600) | check\_compatibility.sh should ignore shaded jars |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13576](https://issues.apache.org/jira/browse/HBASE-13576) | HBCK enhancement: Failure in checking one region should not fail the entire HBCK operation. |  Major | hbck | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13564](https://issues.apache.org/jira/browse/HBASE-13564) | Master MBeans are not published |  Major | master, metrics | Ashish Singhi | Ashish Singhi |
| [HBASE-13561](https://issues.apache.org/jira/browse/HBASE-13561) | ITBLL.Verify doesn't actually evaluate counters after job completes |  Major | integration tests | Josh Elser | Josh Elser |
| [HBASE-13560](https://issues.apache.org/jira/browse/HBASE-13560) | Large compaction queue should steal from small compaction queue when idle |  Major | Compaction | Elliott Clark | Changgeng Li |
| [HBASE-13480](https://issues.apache.org/jira/browse/HBASE-13480) | ShortCircuitConnection doesn't short-circuit all calls as expected |  Critical | Client | Josh Elser | Jingcheng Du |
| [HBASE-13411](https://issues.apache.org/jira/browse/HBASE-13411) | Misleading error message when request size quota limit exceeds |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13377](https://issues.apache.org/jira/browse/HBASE-13377) | Canary may generate false alarm on the first region when there are many delete markers |  Major | monitoring | He Liangliang | He Liangliang |
| [HBASE-13352](https://issues.apache.org/jira/browse/HBASE-13352) | Add hbase.import.version to Import usage. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13337](https://issues.apache.org/jira/browse/HBASE-13337) | Table regions are not assigning back, after restarting all regionservers at once. |  Blocker | Region Assignment | Y. SREENIVASULU REDDY | Samir Ahmic |
| [HBASE-13333](https://issues.apache.org/jira/browse/HBASE-13333) | Renew Scanner Lease without advancing the RegionScanner |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13330](https://issues.apache.org/jira/browse/HBASE-13330) | Region left unassigned due to AM & SSH each thinking the assignment would be done by the other |  Major | master, Region Assignment | Devaraj Das | Devaraj Das |
| [HBASE-13329](https://issues.apache.org/jira/browse/HBASE-13329) | ArrayIndexOutOfBoundsException in CellComparator#getMinimumMidpointArray |  Critical | regionserver | Ruben Aguiar | Lars Hofhansl |
| [HBASE-13325](https://issues.apache.org/jira/browse/HBASE-13325) | Protocol Buffers 2.5 no longer available for download on code.google.com |  Major | . | Andrew Purtell | Elliott Clark |
| [HBASE-13324](https://issues.apache.org/jira/browse/HBASE-13324) | o.a.h.h.Coprocessor should be LimitedPrivate("Coprocessor") |  Minor | API | Lars George | Andrew Purtell |
| [HBASE-13318](https://issues.apache.org/jira/browse/HBASE-13318) | RpcServer.getListenerAddress should handle when the accept channel is closed |  Minor | . | Lars Hofhansl | Andrew Purtell |
| [HBASE-13312](https://issues.apache.org/jira/browse/HBASE-13312) | SmallScannerCallable does not increment scan metrics |  Major | Client, Scanners | Lars George | Andrew Purtell |
| [HBASE-13250](https://issues.apache.org/jira/browse/HBASE-13250) | chown of ExportSnapshot does not cover all path and files |  Critical | snapshots | He Liangliang | He Liangliang |
| [HBASE-13217](https://issues.apache.org/jira/browse/HBASE-13217) | Procedure fails due to ZK issue |  Major | . | ramkrishna.s.vasudevan | Jerry He |
| [HBASE-13200](https://issues.apache.org/jira/browse/HBASE-13200) | Improper configuration can leads to endless lease recovery during failover |  Major | MTTR | He Liangliang | He Liangliang |
| [HBASE-13143](https://issues.apache.org/jira/browse/HBASE-13143) | TestCacheOnWrite is flaky and needs a diet |  Critical | test | Andrew Purtell | Andrew Purtell |
| [HBASE-12865](https://issues.apache.org/jira/browse/HBASE-12865) | WALs may be deleted before they are replicated to peers |  Critical | Replication | Liu Shaohui | He Liangliang |
| [HBASE-12413](https://issues.apache.org/jira/browse/HBASE-12413) | Mismatch in the equals and hashcode methods of KeyValue |  Minor | . | Jingcheng Du | Jingcheng Du |
| [HBASE-11830](https://issues.apache.org/jira/browse/HBASE-11830) | TestReplicationThrottler.testThrottling failed on virtual boxes |  Minor | test | Sergey Soldatov | Stephen Yuan Jiang |
| [HBASE-11658](https://issues.apache.org/jira/browse/HBASE-11658) | Piped commands to hbase shell should return non-zero if shell command failed. |  Major | shell | Jonathan Hsieh | Sean Busbey |
| [HBASE-10844](https://issues.apache.org/jira/browse/HBASE-10844) | Coprocessor failure during batchmutation leaves the memstore datastructs in an inconsistent state |  Major | regionserver | Devaraj Das | Nick Dimiduk |
| [HBASE-5878](https://issues.apache.org/jira/browse/HBASE-5878) | Use getVisibleLength public api from HdfsDataInputStream from Hadoop-2. |  Major | wal | Uma Maheswara Rao G | Ashish Singhi |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14839](https://issues.apache.org/jira/browse/HBASE-14839) | [branch-1] Backport test categories so that patch backport is easier |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-14758](https://issues.apache.org/jira/browse/HBASE-14758) | Add UT case for unchecked error/exception thrown in AsyncProcess#sendMultiAction |  Minor | Client, test | Yu Li | Yu Li |
| [HBASE-14584](https://issues.apache.org/jira/browse/HBASE-14584) | TestNamespacesInstanceModel fails on jdk8 |  Major | REST, test | Nick Dimiduk | Matt Warhaftig |
| [HBASE-14344](https://issues.apache.org/jira/browse/HBASE-14344) | Add timeouts to TestHttpServerLifecycle |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14277](https://issues.apache.org/jira/browse/HBASE-14277) | TestRegionServerHostname.testRegionServerHostname may fail at host with a case sensitive name |  Minor | test | Liu Shaohui | Liu Shaohui |
| [HBASE-14210](https://issues.apache.org/jira/browse/HBASE-14210) | Create test for cell level ACLs involving user group |  Major | test | Ted Yu | Ashish Singhi |
| [HBASE-14197](https://issues.apache.org/jira/browse/HBASE-14197) | TestRegionServerHostname#testInvalidRegionServerHostnameAbortsServer fails in Jenkins |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-13940](https://issues.apache.org/jira/browse/HBASE-13940) | IntegrationTestBulkLoad needs option to specify output folders used by test |  Major | integration tests | Enis Soztutar | Rajeshbabu Chintaguntla |
| [HBASE-13609](https://issues.apache.org/jira/browse/HBASE-13609) | TestFastFail is still failing |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13591](https://issues.apache.org/jira/browse/HBASE-13591) | TestHBaseFsck is flakey |  Major | hbck | Nick Dimiduk | Josh Elser |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15023](https://issues.apache.org/jira/browse/HBASE-15023) | Reenable TestShell and TestStochasticLoadBalancer |  Major | test | stack | stack |
| [HBASE-14947](https://issues.apache.org/jira/browse/HBASE-14947) | WALProcedureStore improvements |  Blocker | proc-v2 | Ashu Pachauri | Matteo Bertozzi |
| [HBASE-14915](https://issues.apache.org/jira/browse/HBASE-14915) | Hanging test : org.apache.hadoop.hbase.mapreduce.TestImportExport |  Major | hangingTests | stack | Heng Chen |
| [HBASE-14909](https://issues.apache.org/jira/browse/HBASE-14909) | NPE testing for RIT |  Major | test | stack | stack |
| [HBASE-14908](https://issues.apache.org/jira/browse/HBASE-14908) | TestRowCounter flakey especially on branch-1 |  Major | flakey, test | stack | stack |
| [HBASE-14883](https://issues.apache.org/jira/browse/HBASE-14883) | TestSplitTransactionOnCluster#testFailedSplit flakey |  Major | flakey, test | stack | stack |
| [HBASE-14863](https://issues.apache.org/jira/browse/HBASE-14863) | Add missing test/resources/log4j files in hbase modules |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14819](https://issues.apache.org/jira/browse/HBASE-14819) | hbase-it tests failing with OOME; permgen |  Major | test | stack | stack |
| [HBASE-14798](https://issues.apache.org/jira/browse/HBASE-14798) | NPE reporting server load causes regionserver abort; causes TestAcidGuarantee to fail |  Major | test | stack | stack |
| [HBASE-14794](https://issues.apache.org/jira/browse/HBASE-14794) | Cleanup TestAtomicOperation, TestImportExport, and TestMetaWithReplicas |  Major | flakey, test | stack | stack |
| [HBASE-14720](https://issues.apache.org/jira/browse/HBASE-14720) | Make TestHCM and TestMetaWithReplicas large tests rather than mediums |  Major | hangingTests, test | stack | stack |
| [HBASE-14710](https://issues.apache.org/jira/browse/HBASE-14710) | Add category-based timeouts to MR tests |  Major | hangingTests, mapreduce, test | stack | stack |
| [HBASE-14709](https://issues.apache.org/jira/browse/HBASE-14709) | Parent change breaks graceful\_stop.sh on a cluster |  Major | Operability | stack | stack |
| [HBASE-14702](https://issues.apache.org/jira/browse/HBASE-14702) | TestZKProcedureControllers.testZKCoordinatorControllerWithSingleMemberCohort is a flakey |  Major | flakey, test | stack | stack |
| [HBASE-14698](https://issues.apache.org/jira/browse/HBASE-14698) | Set category timeouts on TestScanner and TestNamespaceAuditor |  Major | test | stack | stack |
| [HBASE-14657](https://issues.apache.org/jira/browse/HBASE-14657) | Remove unneeded API from EncodedSeeker |  Major | io | Lars Hofhansl | Heng Chen |
| [HBASE-14656](https://issues.apache.org/jira/browse/HBASE-14656) | Move TestAssignmentManager from medium to large category |  Major | test | stack | stack |
| [HBASE-14655](https://issues.apache.org/jira/browse/HBASE-14655) | Narrow the scope of doAs() calls to region observer notifications for compaction |  Blocker | Coprocessors, security | Ted Yu | Ted Yu |
| [HBASE-14648](https://issues.apache.org/jira/browse/HBASE-14648) | Reenable TestWALProcedureStoreOnHDFS#testWalRollOnLowReplication |  Critical | test | stack | Heng Chen |
| [HBASE-14647](https://issues.apache.org/jira/browse/HBASE-14647) | Disable TestWALProcedureStoreOnHDFS#testWalRollOnLowReplication |  Major | test | stack | stack |
| [HBASE-14646](https://issues.apache.org/jira/browse/HBASE-14646) | Move TestCellACLs from medium to large category |  Minor | test | stack | stack |
| [HBASE-14637](https://issues.apache.org/jira/browse/HBASE-14637) | Loosen TestChoreService assert AND have TestDataBlockEncoders do less work (and add timeouts) |  Major | test | stack | stack |
| [HBASE-14631](https://issues.apache.org/jira/browse/HBASE-14631) | Region merge request should be audited with request user through proper scope of doAs() calls to region observer notifications |  Blocker | Coprocessors, security | Ted Yu | Ted Yu |
| [HBASE-14622](https://issues.apache.org/jira/browse/HBASE-14622) | Purge TestZkLess\* tests from branch-1 |  Major | test | stack | stack |
| [HBASE-14605](https://issues.apache.org/jira/browse/HBASE-14605) | Split fails due to 'No valid credentials' error when SecureBulkLoadEndpoint#start tries to access hdfs |  Blocker | Coprocessors, security | Ted Yu | Ted Yu |
| [HBASE-14600](https://issues.apache.org/jira/browse/HBASE-14600) | Make #testWalRollOnLowReplication looser still |  Major | test | stack | stack |
| [HBASE-14596](https://issues.apache.org/jira/browse/HBASE-14596) | TestCellACLs failing... on1.2 builds |  Major | test | stack | stack |
| [HBASE-14585](https://issues.apache.org/jira/browse/HBASE-14585) | Clean up TestSnapshotCloneIndependence |  Major | flakey, test | Elliott Clark | Elliott Clark |
| [HBASE-14572](https://issues.apache.org/jira/browse/HBASE-14572) | TestImportExport#testImport94Table can't find its src data file |  Major | test | stack | stack |
| [HBASE-14571](https://issues.apache.org/jira/browse/HBASE-14571) | Purge TestProcessBasedCluster; it does nothing and then fails |  Major | test | stack | stack |
| [HBASE-14563](https://issues.apache.org/jira/browse/HBASE-14563) | Disable zombie TestHFileOutputFormat2 |  Major | test | stack | stack |
| [HBASE-14561](https://issues.apache.org/jira/browse/HBASE-14561) | Disable zombie TestReplicationShell |  Major | test | stack | stack |
| [HBASE-14559](https://issues.apache.org/jira/browse/HBASE-14559) | branch-1 test tweeks; disable assert explicit region lands post-restart and up a few handlers |  Major | test | stack | stack |
| [HBASE-14539](https://issues.apache.org/jira/browse/HBASE-14539) | Slight improvement of StoreScanner.optimize |  Minor | Performance, Scanners | Lars Hofhansl | Lars Hofhansl |
| [HBASE-14535](https://issues.apache.org/jira/browse/HBASE-14535) | Integration test for rpc connection concurrency / deadlock testing |  Major | IPC/RPC | Enis Soztutar | Enis Soztutar |
| [HBASE-14519](https://issues.apache.org/jira/browse/HBASE-14519) | Purge TestFavoredNodeAssignmentHelper, a test for an abandoned feature that can hang |  Major | test | stack | stack |
| [HBASE-14513](https://issues.apache.org/jira/browse/HBASE-14513) | TestBucketCache runs obnoxious 1k threads in a unit test |  Major | test | stack | stack |
| [HBASE-14484](https://issues.apache.org/jira/browse/HBASE-14484) | Follow-on from HBASE-14421, just disable TestFastFail\* until someone digs in and fixes it |  Major | test | stack | stack |
| [HBASE-14472](https://issues.apache.org/jira/browse/HBASE-14472) | TestHCM and TestRegionServerNoMaster fixes |  Minor | test | stack | stack |
| [HBASE-14465](https://issues.apache.org/jira/browse/HBASE-14465) | Backport 'Allow rowlock to be reader/write' to branch-1 |  Major | regionserver | stack | stack |
| [HBASE-14447](https://issues.apache.org/jira/browse/HBASE-14447) | Spark tests failing: bind exception when putting up info server |  Minor | test | stack | stack |
| [HBASE-14435](https://issues.apache.org/jira/browse/HBASE-14435) | thrift tests don't have test-specific hbase-site.xml so 'BindException: Address already in use' because info port is not turned off |  Major | test | stack | stack |
| [HBASE-14433](https://issues.apache.org/jira/browse/HBASE-14433) | Set down the client executor core thread count from 256 in tests |  Major | test | stack | stack |
| [HBASE-14430](https://issues.apache.org/jira/browse/HBASE-14430) | TestHttpServerLifecycle#testStartedServerIsAlive times out |  Major | test | stack | stack |
| [HBASE-14428](https://issues.apache.org/jira/browse/HBASE-14428) | Upgrade our surefire-plugin from 2.18 to 2.18.1 |  Major | test | stack | stack |
| [HBASE-14421](https://issues.apache.org/jira/browse/HBASE-14421) | TestFastFail\* are flakey |  Major | test | stack | stack |
| [HBASE-14401](https://issues.apache.org/jira/browse/HBASE-14401) | Stamp failed appends with sequenceid too.... Cleans up latches |  Major | test, wal | stack | stack |
| [HBASE-14378](https://issues.apache.org/jira/browse/HBASE-14378) | Get TestAccessController\* passing again on branch-1 |  Major | . | stack | stack |
| [HBASE-14322](https://issues.apache.org/jira/browse/HBASE-14322) | Master still not using more than it's priority threads |  Major | IPC/RPC, master | Elliott Clark | Elliott Clark |
| [HBASE-14278](https://issues.apache.org/jira/browse/HBASE-14278) | Fix NPE that is showing up since HBASE-14274 went in |  Major | test | stack | Elliott Clark |
| [HBASE-14274](https://issues.apache.org/jira/browse/HBASE-14274) | Deadlock in region metrics on shutdown: MetricsRegionSourceImpl vs MetricsRegionAggregateSourceImpl |  Major | test | stack | Elliott Clark |
| [HBASE-14239](https://issues.apache.org/jira/browse/HBASE-14239) | Branch-1.2 AM can get stuck when meta moves |  Major | Region Assignment | Elliott Clark | Elliott Clark |
| [HBASE-14176](https://issues.apache.org/jira/browse/HBASE-14176) | Add missing headers to META-INF files |  Trivial | build | Andrew Purtell | Andrew Purtell |
| [HBASE-14147](https://issues.apache.org/jira/browse/HBASE-14147) | REST Support for Namespaces |  Minor | REST | Rick Kellogg | Matt Warhaftig |
| [HBASE-14105](https://issues.apache.org/jira/browse/HBASE-14105) | Add shell tests for Snapshot |  Major | test | Ashish Singhi | Ashish Singhi |
| [HBASE-14104](https://issues.apache.org/jira/browse/HBASE-14104) | Add vectorportal.com to NOTICES.txt as src of our logo |  Major | documentation | stack | stack |
| [HBASE-14087](https://issues.apache.org/jira/browse/HBASE-14087) | ensure correct ASF policy compliant headers on source/docs |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14086](https://issues.apache.org/jira/browse/HBASE-14086) | remove unused bundled dependencies |  Blocker | documentation | Sean Busbey | Sean Busbey |
| [HBASE-14017](https://issues.apache.org/jira/browse/HBASE-14017) | Procedure v2 - MasterProcedureQueue fix concurrency issue on table queue deletion |  Blocker | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14013](https://issues.apache.org/jira/browse/HBASE-14013) | Retry when RegionServerNotYetRunningException rather than go ahead with assign so for sure we don't skip WAL replay |  Major | Region Assignment | stack | Enis Soztutar |
| [HBASE-14003](https://issues.apache.org/jira/browse/HBASE-14003) | work around jdk8 spec bug in WALPerfEval |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-13993](https://issues.apache.org/jira/browse/HBASE-13993) | WALProcedureStore fencing is not effective if new WAL rolls |  Major | master | Enis Soztutar | Enis Soztutar |
| [HBASE-13990](https://issues.apache.org/jira/browse/HBASE-13990) | clean up remaining errors for maven site goal |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-13973](https://issues.apache.org/jira/browse/HBASE-13973) | Update documentation for 10070 Phase 2 changes |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13967](https://issues.apache.org/jira/browse/HBASE-13967) | add jdk profiles for jdk.tools dependency |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-13950](https://issues.apache.org/jira/browse/HBASE-13950) | Add a NoopProcedureStore for testing |  Trivial | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13937](https://issues.apache.org/jira/browse/HBASE-13937) | Partially revert HBASE-13172 |  Major | Region Assignment | Enis Soztutar | Enis Soztutar |
| [HBASE-13920](https://issues.apache.org/jira/browse/HBASE-13920) | Exclude Java files generated from protobuf from javadoc |  Minor | . | Gabor Liptak | Gabor Liptak |
| [HBASE-13912](https://issues.apache.org/jira/browse/HBASE-13912) | add branch-1.2 post-commit builds |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-13899](https://issues.apache.org/jira/browse/HBASE-13899) | Jacoco instrumentation fails under jdk8 |  Major | build, test | Sean Busbey | Duo Zhang |
| [HBASE-13898](https://issues.apache.org/jira/browse/HBASE-13898) | correct additional javadoc failures under java 8 |  Minor | documentation | Sean Busbey | Gabor Liptak |
| [HBASE-13832](https://issues.apache.org/jira/browse/HBASE-13832) | Procedure V2: master fail to start due to WALProcedureStore sync failures when HDFS data nodes count is low |  Blocker | master, proc-v2 | Stephen Yuan Jiang | Matteo Bertozzi |
| [HBASE-13759](https://issues.apache.org/jira/browse/HBASE-13759) | Improve procedure yielding |  Trivial | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13750](https://issues.apache.org/jira/browse/HBASE-13750) | set up jenkins builds that run branch-1 ITs with java 8 |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-13748](https://issues.apache.org/jira/browse/HBASE-13748) | ensure post-commit builds for branch-1 include both java 7 and java 8 |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-13658](https://issues.apache.org/jira/browse/HBASE-13658) | Improve the test run time for TestAccessController class |  Major | test | Ashish Singhi | Ashish Singhi |
| [HBASE-13616](https://issues.apache.org/jira/browse/HBASE-13616) | Move ServerShutdownHandler to Pv2 |  Major | proc-v2 | stack | stack |
| [HBASE-13593](https://issues.apache.org/jira/browse/HBASE-13593) | Quota support for namespace should take snapshot restore and clone into account |  Major | snapshots | Ashish Singhi | Ashish Singhi |
| [HBASE-13569](https://issues.apache.org/jira/browse/HBASE-13569) | correct errors reported with mvn site |  Minor | documentation | Gabor Liptak | Gabor Liptak |
| [HBASE-13563](https://issues.apache.org/jira/browse/HBASE-13563) | Add missing table owner to AC tests. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13536](https://issues.apache.org/jira/browse/HBASE-13536) | Cleanup the handlers that are no longer being used. |  Major | proc-v2 | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13497](https://issues.apache.org/jira/browse/HBASE-13497) | Remove MVCC stamps from HFile when that is safe |  Major | Scanners | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13476](https://issues.apache.org/jira/browse/HBASE-13476) | Procedure V2 - Add Replay Order logic for child procedures |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13470](https://issues.apache.org/jira/browse/HBASE-13470) | High level Integration test for master DDL operations |  Major | master | Enis Soztutar | Sophia Feng |
| [HBASE-13415](https://issues.apache.org/jira/browse/HBASE-13415) | Procedure V2 - Use nonces for double submits from client |  Blocker | master | Enis Soztutar | Stephen Yuan Jiang |
| [HBASE-13393](https://issues.apache.org/jira/browse/HBASE-13393) | Optimize memstore flushing to avoid writing tag information to hfiles when no tags are present. |  Major | HFile, Performance | stack | ramkrishna.s.vasudevan |
| [HBASE-12748](https://issues.apache.org/jira/browse/HBASE-12748) | RegionCoprocessorHost.execOperation creates too many iterator objects |  Major | . | Vladimir Rodionov | Andrew Purtell |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14420](https://issues.apache.org/jira/browse/HBASE-14420) | Zombie Stomping Session |  Critical | test | stack | stack |
| [HBASE-13747](https://issues.apache.org/jira/browse/HBASE-13747) | Promote Java 8 to "yes" in support matrix |  Critical | java | Sean Busbey | Sean Busbey |
| [HBASE-15003](https://issues.apache.org/jira/browse/HBASE-15003) | Remove BoundedConcurrentLinkedQueue and associated test |  Minor | util | Sean Busbey | Sean Busbey |
| [HBASE-14851](https://issues.apache.org/jira/browse/HBASE-14851) | Add test showing how to use TTL from thrift |  Major | test, Thrift | Elliott Clark | Elliott Clark |
| [HBASE-14516](https://issues.apache.org/jira/browse/HBASE-14516) | categorize hadoop-compat tests |  Critical | build, hadoop2, test | Sean Busbey | Sean Busbey |
| [HBASE-14502](https://issues.apache.org/jira/browse/HBASE-14502) | Purge use of jmock and remove as dependency |  Major | test | stack | Gabor Liptak |
| [HBASE-14493](https://issues.apache.org/jira/browse/HBASE-14493) | Upgrade the jamon-runtime dependency |  Minor | . | Newton Alex | Andrew Purtell |
| [HBASE-14361](https://issues.apache.org/jira/browse/HBASE-14361) | ReplicationSink should create Connection instances lazily |  Major | Replication | Nick Dimiduk | Heng Chen |
| [HBASE-14318](https://issues.apache.org/jira/browse/HBASE-14318) | make\_rc.sh should purge/re-resolve dependencies from local repository |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14308](https://issues.apache.org/jira/browse/HBASE-14308) | HTableDescriptor WARN is not actionable |  Minor | Usability | Nick Dimiduk | Lars Francke |
| [HBASE-14290](https://issues.apache.org/jira/browse/HBASE-14290) | Spin up less threads in tests |  Major | test | stack | stack |
| [HBASE-14288](https://issues.apache.org/jira/browse/HBASE-14288) | Upgrade asciidoctor plugin to v1.5.2.1 |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14085](https://issues.apache.org/jira/browse/HBASE-14085) | Correct LICENSE and NOTICE files in artifacts |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14066](https://issues.apache.org/jira/browse/HBASE-14066) | clean out old docbook docs from branch-1 |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-14053](https://issues.apache.org/jira/browse/HBASE-14053) | Disable DLR in branch-1+ |  Major | Recovery | stack | stack |
| [HBASE-14052](https://issues.apache.org/jira/browse/HBASE-14052) | Mark a few methods in CellUtil audience private since only make sense internally to hbase |  Trivial | API | stack | stack |
| [HBASE-13964](https://issues.apache.org/jira/browse/HBASE-13964) | Skip region normalization for tables under namespace quota |  Major | Balancer, Usability | Mikhail Antonov | Ted Yu |
| [HBASE-13929](https://issues.apache.org/jira/browse/HBASE-13929) | make\_rc.sh publishes empty shaded artifacts |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13799](https://issues.apache.org/jira/browse/HBASE-13799) | javadoc how Scan gets polluted when used; if you set attributes or ask for scan metrics |  Minor | documentation | stack | stack |
| [HBASE-13726](https://issues.apache.org/jira/browse/HBASE-13726) | stop using Hadoop's IOUtils |  Major | dependencies | Sean Busbey | Sean Busbey |
| [HBASE-13716](https://issues.apache.org/jira/browse/HBASE-13716) | Stop using Hadoop's FSConstants |  Blocker | Filesystem Integration | Sean Busbey | Sean Busbey |
| [HBASE-13666](https://issues.apache.org/jira/browse/HBASE-13666) | book.pdf is not renamed during site build |  Major | site | Nick Dimiduk | Gabor Liptak |
| [HBASE-13089](https://issues.apache.org/jira/browse/HBASE-13089) | Fix test compilation error on building against htrace-3.2.0-incubating |  Minor | . | Masatake Iwasaki | Esteban Gutierrez |
| [HBASE-11677](https://issues.apache.org/jira/browse/HBASE-11677) | Make Logger instance modifiers consistent |  Minor | util | Sean Busbey | Usha Kuchibhotla |
| [HBASE-11276](https://issues.apache.org/jira/browse/HBASE-11276) | Add back support for running ChaosMonkey as standalone tool |  Minor | . | Dima Spivak | Yu Li |


