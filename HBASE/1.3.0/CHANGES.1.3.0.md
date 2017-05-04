
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

## Release 1.3.0 - 2017-01-16

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13706](https://issues.apache.org/jira/browse/HBASE-13706) | CoprocessorClassLoader should not exempt Hive classes |  Minor | Coprocessors | Jerry He | Jerry He |
| [HBASE-14205](https://issues.apache.org/jira/browse/HBASE-14205) | RegionCoprocessorHost System.nanoTime() performance bottleneck |  Critical | Coprocessors, Performance, regionserver | Jan Van Besien | Andrew Purtell |
| [HBASE-15018](https://issues.apache.org/jira/browse/HBASE-15018) | Inconsistent way of handling TimeoutException in the rpc client implementations |  Major | Client, IPC/RPC | Ashish Singhi | Ashish Singhi |
| [HBASE-15111](https://issues.apache.org/jira/browse/HBASE-15111) | "hbase version" should write to stdout |  Trivial | util | Gary Helmling | Gary Helmling |
| [HBASE-15100](https://issues.apache.org/jira/browse/HBASE-15100) | Master WALProcs still never clean up |  Blocker | master, proc-v2 | Elliott Clark | Matteo Bertozzi |
| [HBASE-15290](https://issues.apache.org/jira/browse/HBASE-15290) | Hbase Rest CheckAndAPI should save other cells along with compared cell |  Major | hbase | Ajith |  |
| [HBASE-15376](https://issues.apache.org/jira/browse/HBASE-15376) | ScanNext metric is size-based while every other per-operation metric is time based |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-13963](https://issues.apache.org/jira/browse/HBASE-13963) | avoid leaking jdk.tools |  Critical | build, documentation | Sean Busbey | Gabor Liptak |
| [HBASE-15377](https://issues.apache.org/jira/browse/HBASE-15377) | Per-RS Get metric is time based, per-region metric is size-based |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15323](https://issues.apache.org/jira/browse/HBASE-15323) | Hbase Rest CheckAndDeleteAPi should be able to delete more cells |  Major | hbase | Ajith | Ajith |
| [HBASE-15481](https://issues.apache.org/jira/browse/HBASE-15481) | Add pre/post roll to WALObserver |  Trivial | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15876](https://issues.apache.org/jira/browse/HBASE-15876) | Remove doBulkLoad(Path hfofDir, final HTable table) though it has not been through a full deprecation cycle |  Blocker | . | stack | Jurriaan Mous |
| [HBASE-15971](https://issues.apache.org/jira/browse/HBASE-15971) | Regression: Random Read/WorkloadC slower in 1.x than 0.98 |  Critical | rpc | stack | stack |
| [HBASE-16355](https://issues.apache.org/jira/browse/HBASE-16355) | hbase-client dependency on hbase-common test-jar should be test scope |  Major | Client, dependencies | Sean Busbey | Stevo Slavic |
| [HBASE-16321](https://issues.apache.org/jira/browse/HBASE-16321) | Ensure findbugs jsr305 jar isn\'t present |  Blocker | dependencies | Sean Busbey | Sean Busbey |
| [HBASE-16340](https://issues.apache.org/jira/browse/HBASE-16340) | ensure no Xerces jars included |  Critical | dependencies | Sean Busbey | Sean Busbey |
| [HBASE-15297](https://issues.apache.org/jira/browse/HBASE-15297) | error message is wrong when a wrong namspace is specified in grant in hbase shell |  Minor | shell | Xiang Li | Umesh Agashe |
| [HBASE-16765](https://issues.apache.org/jira/browse/HBASE-16765) | New SteppingRegionSplitPolicy, avoid too aggressive spread of regions for small tables. |  Critical | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-16972](https://issues.apache.org/jira/browse/HBASE-16972) | Log more details for Scan#next request when responseTooSlow |  Major | Operability | Yu Li | Yu Li |
| [HBASE-17017](https://issues.apache.org/jira/browse/HBASE-17017) | Remove the current per-region latency histogram metrics |  Major | metrics | Duo Zhang | Enis Soztutar |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15125](https://issues.apache.org/jira/browse/HBASE-15125) | HBaseFsck\'s adoptHdfsOrphan function creates region with wrong end key boundary |  Major | hbck | chenrongwei | chenrongwei |
| [HBASE-15322](https://issues.apache.org/jira/browse/HBASE-15322) | Operations using Unsafe path broken for platforms not having sun.misc.Unsafe |  Critical | hbase | Anant Sharma | Anoop Sam John |
| [HBASE-15780](https://issues.apache.org/jira/browse/HBASE-15780) | Expose AuthUtil as IA.Public |  Critical | API, security | Sean Busbey | Sean Busbey |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12133](https://issues.apache.org/jira/browse/HBASE-12133) | Add FastLongHistogram for metric computation |  Minor | metrics | Yi Deng | Yi Deng |
| [HBASE-13702](https://issues.apache.org/jira/browse/HBASE-13702) | ImportTsv: Add dry-run functionality and log bad rows |  Major | . | Appy | Appy |
| [HBASE-14154](https://issues.apache.org/jira/browse/HBASE-14154) | DFS Replication should be configurable at column family level |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-14456](https://issues.apache.org/jira/browse/HBASE-14456) | Implement a namespace-based region grouping strategy for RegionGroupingProvider |  Major | . | Yu Li | Yu Li |
| [HBASE-14459](https://issues.apache.org/jira/browse/HBASE-14459) | Add request and response sizes metrics |  Major | metrics | Sanjeev Srivatsa | Sanjeev Srivatsa |
| [HBASE-14529](https://issues.apache.org/jira/browse/HBASE-14529) | Respond to SIGHUP to reload config |  Major | Operability | Elliott Clark | Elliott Clark |
| [HBASE-12911](https://issues.apache.org/jira/browse/HBASE-12911) | Client-side metrics |  Major | Client, Operability, Performance | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13153](https://issues.apache.org/jira/browse/HBASE-13153) | Bulk Loaded HFile Replication |  Major | Replication | sunhaitao | Ashish Singhi |
| [HBASE-11262](https://issues.apache.org/jira/browse/HBASE-11262) | Avoid empty columns while doing bulk-load |  Major | . | Ashish Kumar | Ashish Kumar |
| [HBASE-15135](https://issues.apache.org/jira/browse/HBASE-15135) | Add metrics for storefile age |  Major | . | Elliott Clark | Mikhail Antonov |
| [HBASE-15181](https://issues.apache.org/jira/browse/HBASE-15181) | A simple implementation of date based tiered compaction |  Major | Compaction | Clara Xiong | Clara Xiong |
| [HBASE-15136](https://issues.apache.org/jira/browse/HBASE-15136) | Explore different queuing behaviors while busy |  Critical | IPC/RPC | Elliott Clark | Mikhail Antonov |
| [HBASE-15592](https://issues.apache.org/jira/browse/HBASE-15592) | Print Procedure WAL content |  Major | . | Jerry He | Jerry He |
| [HBASE-15281](https://issues.apache.org/jira/browse/HBASE-15281) | Allow the FileSystem inside HFileSystem to be wrapped |  Major | Filesystem Integration, hbase | Rajesh Nishtala | Rajesh Nishtala |
| [HBASE-10358](https://issues.apache.org/jira/browse/HBASE-10358) | Shell changes for setting consistency per request |  Major | shell | Enis Soztutar | Yi Liang |
| [HBASE-15881](https://issues.apache.org/jira/browse/HBASE-15881) | Allow BZIP2 compression |  Major | HFile | Lars Hofhansl | Lars Hofhansl |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13876](https://issues.apache.org/jira/browse/HBASE-13876) | Improving performance of HeapMemoryManager |  Minor | hbase, regionserver | Abhilash | Abhilash |
| [HBASE-13103](https://issues.apache.org/jira/browse/HBASE-13103) | [ergonomics] add region size balancing as a feature of master |  Major | Balancer, Usability | Nick Dimiduk | Mikhail Antonov |
| [HBASE-13980](https://issues.apache.org/jira/browse/HBASE-13980) | Distinguish blockedFlushCount vs unblockedFlushCount when tuning heap memory |  Minor | . | Ted Yu | Abhilash |
| [HBASE-14015](https://issues.apache.org/jira/browse/HBASE-14015) | Allow setting a richer state value when toString a pv2 |  Minor | proc-v2 | stack | stack |
| [HBASE-13925](https://issues.apache.org/jira/browse/HBASE-13925) | Use zookeeper multi to clear znodes in ZKProcedureUtil |  Major | Zookeeper | Ashish Singhi | Ashish Singhi |
| [HBASE-14002](https://issues.apache.org/jira/browse/HBASE-14002) | Add --noReplicationSetup option to IntegrationTestReplication |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-12596](https://issues.apache.org/jira/browse/HBASE-12596) | bulkload needs to follow locality |  Major | HFile, regionserver | Victor Xu | Victor Xu |
| [HBASE-14045](https://issues.apache.org/jira/browse/HBASE-14045) | Bumping thrift version to 0.9.2. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-8642](https://issues.apache.org/jira/browse/HBASE-8642) | [Snapshot] List and delete snapshot by table |  Major | snapshots | Julian Zhou | Ashish Singhi |
| [HBASE-14110](https://issues.apache.org/jira/browse/HBASE-14110) | Add CostFunction for balancing primary region replicas |  Major | Balancer | Ted Yu | Ted Yu |
| [HBASE-14058](https://issues.apache.org/jira/browse/HBASE-14058) | Stabilizing default heap memory tuner |  Major | regionserver | Abhilash | Abhilash |
| [HBASE-14097](https://issues.apache.org/jira/browse/HBASE-14097) | Log link to client scan troubleshooting section when scanner exceptions happen. |  Trivial | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14164](https://issues.apache.org/jira/browse/HBASE-14164) | Display primary region replicas distribution on table.jsp |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-13965](https://issues.apache.org/jira/browse/HBASE-13965) | Stochastic Load Balancer JMX Metrics |  Major | Balancer, metrics | Lei Chen | Lei Chen |
| [HBASE-14194](https://issues.apache.org/jira/browse/HBASE-14194) | Undeprecate methods in ThriftServerRunner.HBaseHandler |  Trivial | . | Lars Francke | Lars Francke |
| [HBASE-14122](https://issues.apache.org/jira/browse/HBASE-14122) | Client API for determining if server side supports cell level security |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13985](https://issues.apache.org/jira/browse/HBASE-13985) | Add configuration to skip validating HFile format when bulk loading |  Minor | . | Victor Xu | Victor Xu |
| [HBASE-14203](https://issues.apache.org/jira/browse/HBASE-14203) | remove duplicate code getTableDescriptor in HTable |  Trivial | . | Heng Chen | Heng Chen |
| [HBASE-14165](https://issues.apache.org/jira/browse/HBASE-14165) | The initial size of RWQueueRpcExecutor.queues should be (numWriteQueues + numReadQueues + numScanQueues) |  Minor | IPC/RPC | Jianwei Cui | Jianwei Cui |
| [HBASE-14148](https://issues.apache.org/jira/browse/HBASE-14148) | Web UI Framable Page |  Major | security, UI | Appy | Gabor Liptak |
| [HBASE-14260](https://issues.apache.org/jira/browse/HBASE-14260) | don\'t build javadocs for hbase-protocol module |  Major | build, documentation | Sean Busbey | Sean Busbey |
| [HBASE-13996](https://issues.apache.org/jira/browse/HBASE-13996) | Add write sniffing in canary |  Major | canary | Liu Shaohui | Liu Shaohui |
| [HBASE-13127](https://issues.apache.org/jira/browse/HBASE-13127) | Add timeouts on all tests so less zombie sightings |  Major | test | stack | stack |
| [HBASE-14078](https://issues.apache.org/jira/browse/HBASE-14078) | improve error message when HMaster can\'t bind to port |  Major | master | Sean Busbey | Matt Warhaftig |
| [HBASE-14309](https://issues.apache.org/jira/browse/HBASE-14309) | Allow load balancer to operate when there is region in transition by adding force flag |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7972](https://issues.apache.org/jira/browse/HBASE-7972) | Add a configuration for the TCP backlog in the Thrift server |  Major | Thrift | Jean-Daniel Cryans | Sean Busbey |
| [HBASE-14261](https://issues.apache.org/jira/browse/HBASE-14261) | Enhance Chaos Monkey framework by adding zookeeper and datanode fault injections. |  Major | integration tests | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12988](https://issues.apache.org/jira/browse/HBASE-12988) | [Replication]Parallel apply edits across regions |  Major | Replication | hongyu bi | Lars Hofhansl |
| [HBASE-14314](https://issues.apache.org/jira/browse/HBASE-14314) | Metrics for block cache should take region replicas into account |  Major | metrics, regionserver | Ted Yu | Ted Yu |
| [HBASE-6617](https://issues.apache.org/jira/browse/HBASE-6617) | ReplicationSourceManager should be able to track multiple WAL paths |  Major | Replication | Ted Yu | Yu Li |
| [HBASE-14306](https://issues.apache.org/jira/browse/HBASE-14306) | Refine RegionGroupingProvider: fix issues and make it more scalable |  Major | wal | Yu Li | Yu Li |
| [HBASE-14082](https://issues.apache.org/jira/browse/HBASE-14082) | Add replica id to JMX metrics names |  Major | metrics | Lei Chen | Lei Chen |
| [HBASE-14448](https://issues.apache.org/jira/browse/HBASE-14448) | Refine RegionGroupingProvider Phase-2: remove provider nesting and formalize wal group name |  Major | . | Yu Li | Yu Li |
| [HBASE-14230](https://issues.apache.org/jira/browse/HBASE-14230) | replace reflection in FSHlog with HdfsDataOutputStream#getCurrentBlockReplication() |  Minor | wal | Heng Chen | Heng Chen |
| [HBASE-14436](https://issues.apache.org/jira/browse/HBASE-14436) | HTableDescriptor#addCoprocessor will always make RegionCoprocessorHost create new Configuration |  Minor | Coprocessors | Jianwei Cui | stack |
| [HBASE-14565](https://issues.apache.org/jira/browse/HBASE-14565) | Make ZK connection timeout configurable in MiniZooKeeperCluster |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14517](https://issues.apache.org/jira/browse/HBASE-14517) | Show regionserver\'s version in master status page |  Minor | monitoring | Liu Shaohui | Liu Shaohui |
| [HBASE-14582](https://issues.apache.org/jira/browse/HBASE-14582) | Regionserver status webpage bucketcache list can become huge |  Major | regionserver | James Hartshorn | stack |
| [HBASE-14587](https://issues.apache.org/jira/browse/HBASE-14587) | Attach a test-sources.jar for hbase-server |  Major | build | Andrew Wang | Andrew Wang |
| [HBASE-14588](https://issues.apache.org/jira/browse/HBASE-14588) | Stop accessing test resources from within src folder |  Major | build, test | Andrew Wang | Andrew Wang |
| [HBASE-14268](https://issues.apache.org/jira/browse/HBASE-14268) | Improve KeyLocker |  Minor | util | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-14586](https://issues.apache.org/jira/browse/HBASE-14586) | Use a maven profile to run Jacoco analysis |  Minor | pom | Andrew Wang | Andrew Wang |
| [HBASE-14643](https://issues.apache.org/jira/browse/HBASE-14643) | Avoid Splits from once again opening a closed reader for fetching the first and last key |  Major | regionserver | ramkrishna.s.vasudevan | Heng Chen |
| [HBASE-14683](https://issues.apache.org/jira/browse/HBASE-14683) | Batching in buffered mutator is awful when adding lists of mutations. |  Major | Client | Elliott Clark | Elliott Clark |
| [HBASE-14266](https://issues.apache.org/jira/browse/HBASE-14266) | RegionServers have a lock contention of Configuration.getProps |  Critical | regionserver | Toshihiro Suzuki | Andrew Purtell |
| [HBASE-14696](https://issues.apache.org/jira/browse/HBASE-14696) | Support setting allowPartialResults in mapreduce Mappers |  Major | mapreduce | Mindaugas Kairys | Ted Yu |
| [HBASE-12769](https://issues.apache.org/jira/browse/HBASE-12769) | Replication fails to delete all corresponding zk nodes when peer is removed |  Minor | Replication | Jianwei Cui | Jianwei Cui |
| [HBASE-14721](https://issues.apache.org/jira/browse/HBASE-14721) | Memstore add cells - Avoid many garbage |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-14687](https://issues.apache.org/jira/browse/HBASE-14687) | Un-synchronize BufferedMutator |  Critical | Client, Performance | Elliott Clark | Elliott Clark |
| [HBASE-14715](https://issues.apache.org/jira/browse/HBASE-14715) | Add javadocs to DelegatingRetryingCallable |  Trivial | Client | Jesse Yates | Jesse Yates |
| [HBASE-12986](https://issues.apache.org/jira/browse/HBASE-12986) | Compaction pressure based client pushback |  Major | . | Andrew Purtell | Heng Chen |
| [HBASE-14752](https://issues.apache.org/jira/browse/HBASE-14752) | Add example of using the HBase client in a multi-threaded environment |  Minor | Client | Elliott Clark | Elliott Clark |
| [HBASE-14765](https://issues.apache.org/jira/browse/HBASE-14765) | Remove snappy profile |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-14693](https://issues.apache.org/jira/browse/HBASE-14693) | Add client-side metrics for received pushback signals |  Major | Client, metrics | Andrew Purtell | Heng Chen |
| [HBASE-14387](https://issues.apache.org/jira/browse/HBASE-14387) | Compaction improvements: Maximum off-peak compaction size |  Major | Compaction, Performance | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14708](https://issues.apache.org/jira/browse/HBASE-14708) | Use copy on write Map for region location cache |  Critical | Client | Elliott Clark | Elliott Clark |
| [HBASE-14805](https://issues.apache.org/jira/browse/HBASE-14805) | status should show the master in shell |  Major | shell | Enis Soztutar | Enis Soztutar |
| [HBASE-14172](https://issues.apache.org/jira/browse/HBASE-14172) | Upgrade existing thrift binding using thrift 0.9.3 compiler. |  Minor | . | Srikanth Srungarapu | Josh Elser |
| [HBASE-14862](https://issues.apache.org/jira/browse/HBASE-14862) | Add support for reporting p90 for histogram metrics |  Minor | metrics | Sanjeev Lakshmanan | Sanjeev Lakshmanan |
| [HBASE-13347](https://issues.apache.org/jira/browse/HBASE-13347) | Deprecate FirstKeyValueMatchingQualifiersFilter |  Minor | . | Lars George | Abhishek Singh Chouhan |
| [HBASE-14821](https://issues.apache.org/jira/browse/HBASE-14821) | CopyTable should allow overriding more config properties for peer cluster |  Major | mapreduce | Gary Helmling | Gary Helmling |
| [HBASE-14891](https://issues.apache.org/jira/browse/HBASE-14891) | Add log for uncaught exception in RegionServerMetricsWrapperRunnable |  Minor | metrics | Yu Li | Yu Li |
| [HBASE-14580](https://issues.apache.org/jira/browse/HBASE-14580) | Make the HBaseMiniCluster compliant with Kerberos |  Major | security, test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-14719](https://issues.apache.org/jira/browse/HBASE-14719) | Add metric for number of MasterProcWALs |  Major | . | Elliott Clark | Vrishal Kulkarni |
| [HBASE-7171](https://issues.apache.org/jira/browse/HBASE-7171) | Initial web UI for region/memstore/storefiles details |  Major | UI | stack | Mikhail Antonov |
| [HBASE-14866](https://issues.apache.org/jira/browse/HBASE-14866) | VerifyReplication should use peer configuration in peer connection |  Major | Replication | Gary Helmling | Gary Helmling |
| [HBASE-14946](https://issues.apache.org/jira/browse/HBASE-14946) | Don\'t allow multi\'s to over run the max result size. |  Critical | Client, IPC/RPC | Elliott Clark | Elliott Clark |
| [HBASE-14984](https://issues.apache.org/jira/browse/HBASE-14984) | Allow memcached block cache to set optimze to false |  Major | BlockCache | Elliott Clark | Elliott Clark |
| [HBASE-14951](https://issues.apache.org/jira/browse/HBASE-14951) | Make hbase.regionserver.maxlogs obsolete |  Minor | Performance, wal | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14730](https://issues.apache.org/jira/browse/HBASE-14730) | region server needs to log warnings when there are attributes configured for cells with hfile v2 |  Major | regionserver | huaxiang sun | huaxiang sun |
| [HBASE-14978](https://issues.apache.org/jira/browse/HBASE-14978) | Don\'t allow Multi to retain too many blocks |  Blocker | io, IPC/RPC, regionserver | Elliott Clark | Elliott Clark |
| [HBASE-15005](https://issues.apache.org/jira/browse/HBASE-15005) | Use value array in computing block length for 1.2 and 1.3 |  Major | regionserver | Elliott Clark | Elliott Clark |
| [HBASE-14976](https://issues.apache.org/jira/browse/HBASE-14976) | Add RPC call queues to the web ui |  Minor | UI | Elliott Clark | Pallavi Adusumilli |
| [HBASE-13158](https://issues.apache.org/jira/browse/HBASE-13158) | When client supports CellBlock, return the result Cells as controller payload for get(Get) API also |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-14684](https://issues.apache.org/jira/browse/HBASE-14684) | Try to remove all MiniMapReduceCluster in unit tests |  Critical | test | Heng Chen | Heng Chen |
| [HBASE-14800](https://issues.apache.org/jira/browse/HBASE-14800) | Expose checkAndMutate via Thrift2 |  Major | Thrift | Josh Elser | Josh Elser |
| [HBASE-15038](https://issues.apache.org/jira/browse/HBASE-15038) | ExportSnapshot should support separate configurations for source and destination clusters |  Major | mapreduce, snapshots | Gary Helmling | Gary Helmling |
| [HBASE-15066](https://issues.apache.org/jira/browse/HBASE-15066) | Small improvements to Canary tool |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14468](https://issues.apache.org/jira/browse/HBASE-14468) | Compaction improvements: FIFO compaction policy |  Major | Compaction, Performance | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15068](https://issues.apache.org/jira/browse/HBASE-15068) | Add metrics for region normalization plans |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15076](https://issues.apache.org/jira/browse/HBASE-15076) | Add getScanner(Scan scan, List\<KeyValueScanner\> additionalScanners) API into Region interface |  Critical | regionserver | liu ming | Anoop Sam John |
| [HBASE-15119](https://issues.apache.org/jira/browse/HBASE-15119) | Include git SHA in check\_compatibility reports |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-15123](https://issues.apache.org/jira/browse/HBASE-15123) | Remove duplicate code in LocalHBaseCluster and minor formatting |  Minor | . | Appy | Appy |
| [HBASE-14969](https://issues.apache.org/jira/browse/HBASE-14969) | Add throughput controller for flush |  Major | regionserver | Yu Li | Yu Li |
| [HBASE-15129](https://issues.apache.org/jira/browse/HBASE-15129) | Set default value for hbase.fs.tmp.dir rather than fully depend on hbase-default.xml |  Major | mapreduce | Yu Li | Yu Li |
| [HBASE-13376](https://issues.apache.org/jira/browse/HBASE-13376) | Improvements to Stochastic load balancer |  Minor | Balancer | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-15177](https://issues.apache.org/jira/browse/HBASE-15177) | Reduce garbage created under high load |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15211](https://issues.apache.org/jira/browse/HBASE-15211) | Don\'t run the CatalogJanitor if there are regions in transition |  Major | master | Elliott Clark | Elliott Clark |
| [HBASE-15229](https://issues.apache.org/jira/browse/HBASE-15229) | Canary Tools should not call System.Exit on error |  Critical | canary | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-15223](https://issues.apache.org/jira/browse/HBASE-15223) | Make convertScanToString public for Spark |  Major | . | Jerry He | Jerry He |
| [HBASE-15219](https://issues.apache.org/jira/browse/HBASE-15219) | Canary tool does not return non-zero exit code when one of regions is in stuck state |  Critical | canary | Vishal Khandelwal | Ted Yu |
| [HBASE-15306](https://issues.apache.org/jira/browse/HBASE-15306) | Make RPC call queue length dynamically configurable |  Major | IPC/RPC | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15222](https://issues.apache.org/jira/browse/HBASE-15222) | Use less contended classes for metrics |  Critical | metrics | Elliott Clark | Elliott Clark |
| [HBASE-15315](https://issues.apache.org/jira/browse/HBASE-15315) | Remove always set super user call as high priority |  Major | . | Yong Zhang | Yong Zhang |
| [HBASE-15413](https://issues.apache.org/jira/browse/HBASE-15413) | Procedure-V2: print out ProcedureInfo during trace |  Trivial | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15470](https://issues.apache.org/jira/browse/HBASE-15470) | Add a setting for Priority queue length |  Major | IPC/RPC, Region Assignment | Elliott Clark | Elliott Clark |
| [HBASE-12940](https://issues.apache.org/jira/browse/HBASE-12940) | Expose listPeerConfigs and getPeerConfig to the HBase shell |  Major | shell | Kevin Risden | Geoffrey Jacoby |
| [HBASE-15456](https://issues.apache.org/jira/browse/HBASE-15456) | CreateTableProcedure/ModifyTableProcedure needs to fail when there is no family in table descriptor |  Minor | master | huaxiang sun | huaxiang sun |
| [HBASE-14963](https://issues.apache.org/jira/browse/HBASE-14963) | Remove use of Guava Stopwatch from HBase client code |  Major | Client | Devaraj Das | Devaraj Das |
| [HBASE-15478](https://issues.apache.org/jira/browse/HBASE-15478) | add comments to FSHLog explaining why syncRunnerIndex won\'t overflow |  Minor | wal | Sean Busbey | Sean Busbey |
| [HBASE-15212](https://issues.apache.org/jira/browse/HBASE-15212) | RRCServer should enforce max request size |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15475](https://issues.apache.org/jira/browse/HBASE-15475) | Allow TimestampsFilter to provide a seek hint |  Major | Client, Filters, regionserver | Elliott Clark | Elliott Clark |
| [HBASE-14703](https://issues.apache.org/jira/browse/HBASE-14703) | HTable.mutateRow does not collect stats |  Major | Client | Heng Chen | Heng Chen |
| [HBASE-15526](https://issues.apache.org/jira/browse/HBASE-15526) | Make SnapshotManager accessible through MasterServices |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15508](https://issues.apache.org/jira/browse/HBASE-15508) | Add command for exporting snapshot in hbase command script |  Minor | hbase, scripts, snapshots | Yufeng Jiang | Yufeng Jiang |
| [HBASE-14983](https://issues.apache.org/jira/browse/HBASE-14983) | Create metrics for per block type hit/miss ratios |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-15569](https://issues.apache.org/jira/browse/HBASE-15569) | Make Bytes.toStringBinary faster |  Minor | Performance | Junegunn Choi | Junegunn Choi |
| [HBASE-15396](https://issues.apache.org/jira/browse/HBASE-15396) | Enhance mapreduce.TableSplit to add encoded region name |  Minor | mapreduce | Harsh J | Harsh J |
| [HBASE-15586](https://issues.apache.org/jira/browse/HBASE-15586) | Unify human readable numbers in the web UI |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15605](https://issues.apache.org/jira/browse/HBASE-15605) | Remove PB references from HCD and HTD for 2.0 |  Blocker | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15632](https://issues.apache.org/jira/browse/HBASE-15632) | Undo the checking of lastStoreFlushTimeMap.isEmpty() introduced in HBASE-13145 |  Minor | regionserver | huaxiang sun | huaxiang sun |
| [HBASE-15641](https://issues.apache.org/jira/browse/HBASE-15641) | Shell "alter" should do a single modifyTable operation |  Major | shell | Gary Helmling | Matt Warhaftig |
| [HBASE-15551](https://issues.apache.org/jira/browse/HBASE-15551) | Make call queue too big exception use servername |  Minor | . | Elliott Clark | Mikhail Antonov |
| [HBASE-15720](https://issues.apache.org/jira/browse/HBASE-15720) | Print row locks at the debug dump page |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15607](https://issues.apache.org/jira/browse/HBASE-15607) | Remove PB references from Admin for 2.0 |  Blocker | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15608](https://issues.apache.org/jira/browse/HBASE-15608) | Remove PB references from SnapShot related Exceptions |  Blocker | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15773](https://issues.apache.org/jira/browse/HBASE-15773) | CellCounter improvements |  Major | mapreduce | Gary Helmling | Gary Helmling |
| [HBASE-15791](https://issues.apache.org/jira/browse/HBASE-15791) | Improve javadoc in ScheduledChore |  Minor | master | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-15609](https://issues.apache.org/jira/browse/HBASE-15609) | Remove PB references from Result, DoubleColumnInterpreter and any such public facing class for 2.0 |  Blocker | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15415](https://issues.apache.org/jira/browse/HBASE-15415) | Improve Master WebUI snapshot information |  Minor | master, snapshots | Sean Busbey | huaxiang sun |
| [HBASE-15808](https://issues.apache.org/jira/browse/HBASE-15808) | Reduce potential bulk load intermediate space usage and waste |  Minor | . | Jerry He | Jerry He |
| [HBASE-13532](https://issues.apache.org/jira/browse/HBASE-13532) | Make UnknownScannerException logging less scary |  Trivial | . | Appy | Appy |
| [HBASE-15864](https://issues.apache.org/jira/browse/HBASE-15864) | Reuse the testing helper to wait regions in transition |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15471](https://issues.apache.org/jira/browse/HBASE-15471) | Add num calls in priority and general queue to RS UI |  Major | UI | Elliott Clark | Joseph |
| [HBASE-15837](https://issues.apache.org/jira/browse/HBASE-15837) | Memstore size accounting is wrong if postBatchMutate() throws exception |  Major | regionserver | Josh Elser | Josh Elser |
| [HBASE-15854](https://issues.apache.org/jira/browse/HBASE-15854) | Log the cause of SASL connection failures |  Minor | security | Robert Yokota |  |
| [HBASE-15890](https://issues.apache.org/jira/browse/HBASE-15890) | Allow thrift to set/unset "cacheBlocks" for Scans |  Major | Thrift | Ashu Pachauri | Ashu Pachauri |
| [HBASE-15931](https://issues.apache.org/jira/browse/HBASE-15931) | Add log for long-running tasks in AsyncProcess |  Critical | Operability | Yu Li | Yu Li |
| [HBASE-16026](https://issues.apache.org/jira/browse/HBASE-16026) | Master UI should display status of additional ZK switches |  Major | . | Mikhail Antonov | Mikhail Antonov |
| [HBASE-16033](https://issues.apache.org/jira/browse/HBASE-16033) | Add more details in logging of responseTooSlow/TooLarge |  Major | Operability | Yu Li | Yu Li |
| [HBASE-16048](https://issues.apache.org/jira/browse/HBASE-16048) | Tag InternalScanner with LimitedPrivate(HBaseInterfaceAudience.COPROC) |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15600](https://issues.apache.org/jira/browse/HBASE-15600) | Add provision for adding mutations to memstore or able to write to same region in batchMutate coprocessor hooks |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-14397](https://issues.apache.org/jira/browse/HBASE-14397) | PrefixFilter doesn\'t filter all remaining rows if the prefix is longer than rowkey being compared |  Minor | Filters | Jianwei Cui | Jianwei Cui |
| [HBASE-15870](https://issues.apache.org/jira/browse/HBASE-15870) | Specify columns in REST multi gets |  Minor | REST | Dean Gurvitz | Matt Warhaftig |
| [HBASE-16085](https://issues.apache.org/jira/browse/HBASE-16085) | Add on metric for failed compactions |  Major | . | Elliott Clark | Gary Helmling |
| [HBASE-15353](https://issues.apache.org/jira/browse/HBASE-15353) | Add metric for number of CallQueueTooBigException\'s |  Minor | IPC/RPC, metrics | Elliott Clark | Jingcheng Du |
| [HBASE-16089](https://issues.apache.org/jira/browse/HBASE-16089) | Add on FastPath for CoDel |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-16149](https://issues.apache.org/jira/browse/HBASE-16149) | Log the underlying RPC exception in RpcRetryingCallerImpl |  Minor | . | Jerry He | Jerry He |
| [HBASE-16124](https://issues.apache.org/jira/browse/HBASE-16124) | Make check\_compatibility.sh less verbose when building HBase |  Minor | build, test | Dima Spivak | Dima Spivak |
| [HBASE-16140](https://issues.apache.org/jira/browse/HBASE-16140) | bump owasp.esapi from 2.1.0 to 2.1.0.1 |  Major | dependencies | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-16087](https://issues.apache.org/jira/browse/HBASE-16087) | Replication shouldn\'t start on a master if if only hosts system tables |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-16231](https://issues.apache.org/jira/browse/HBASE-16231) | Integration tests should support client keytab login for secure clusters |  Major | integration tests | Gary Helmling | Gary Helmling |
| [HBASE-16241](https://issues.apache.org/jira/browse/HBASE-16241) | Allow specification of annotations to use when running check\_compatibility.sh |  Major | scripts | Dima Spivak | Dima Spivak |
| [HBASE-16266](https://issues.apache.org/jira/browse/HBASE-16266) | Do not throw ScannerTimeoutException when catch UnknownScannerException |  Major | Client, Scanners | Phil Yang | Phil Yang |
| [HBASE-16256](https://issues.apache.org/jira/browse/HBASE-16256) | Purpose of EnvironmentEdge, EnvironmentEdgeManager |  Trivial | documentation, regionserver | Sai Teja Ranuva | Sai Teja Ranuva |
| [HBASE-16287](https://issues.apache.org/jira/browse/HBASE-16287) | LruBlockCache size should not exceed acceptableSize too many |  Major | BlockCache | Yu Sun | Yu Sun |
| [HBASE-8386](https://issues.apache.org/jira/browse/HBASE-8386) | deprecate TableMapReduce.addDependencyJars(Configuration, class\<?\> ...) |  Major | mapreduce | Nick Dimiduk | Sean Busbey |
| [HBASE-14345](https://issues.apache.org/jira/browse/HBASE-14345) | Consolidate printUsage in IntegrationTestLoadAndVerify |  Trivial | integration tests | Nick Dimiduk | Reid Chan |
| [HBASE-16379](https://issues.apache.org/jira/browse/HBASE-16379) | [replication] Minor improvement to replication/copy\_tables\_desc.rb |  Trivial | Replication, shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-16385](https://issues.apache.org/jira/browse/HBASE-16385) | Have hbase-rest pull hbase.rest.port from Constants.java |  Minor | REST | Dima Spivak | Yi Liang |
| [HBASE-16450](https://issues.apache.org/jira/browse/HBASE-16450) | Shell tool to dump replication queues |  Major | Operability, Replication | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-16486](https://issues.apache.org/jira/browse/HBASE-16486) | Unify system table creation using the same createSystemTable API. |  Minor | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16086](https://issues.apache.org/jira/browse/HBASE-16086) | TableCfWALEntryFilter and ScopeWALEntryFilter should not redundantly iterate over cells. |  Major | . | churro morales | Vincent Poon |
| [HBASE-16667](https://issues.apache.org/jira/browse/HBASE-16667) | Building with JDK 8: ignoring option MaxPermSize=256m |  Minor | build | Niels Basjes | Niels Basjes |
| [HBASE-16657](https://issues.apache.org/jira/browse/HBASE-16657) | Expose per-region last major compaction timestamp in RegionServer UI |  Minor | regionserver, UI | Gary Helmling | Dustin Pho |
| [HBASE-16661](https://issues.apache.org/jira/browse/HBASE-16661) | Add last major compaction age to per-region metrics |  Minor | . | Gary Helmling | Dustin Pho |
| [HBASE-17006](https://issues.apache.org/jira/browse/HBASE-17006) | Add names to threads for better debugability of thread dumps |  Minor | Operability | Appy | Appy |
| [HBASE-17004](https://issues.apache.org/jira/browse/HBASE-17004) | Refactor IntegrationTestManyRegions to use @ClassRule for timing out |  Minor | integration tests | Appy | Appy |
| [HBASE-15339](https://issues.apache.org/jira/browse/HBASE-15339) | Improve DateTieredCompactionPolicy |  Major | Compaction | Duo Zhang |  |
| [HBASE-9899](https://issues.apache.org/jira/browse/HBASE-9899) | for idempotent operation dups, return the result instead of throwing conflict exception |  Major | . | Sergey Shelukhin | Guanghao Zhang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13885](https://issues.apache.org/jira/browse/HBASE-13885) | ZK watches leaks during snapshots |  Critical | snapshots | Abhishek Singh Chouhan | Lars Hofhansl |
| [HBASE-13918](https://issues.apache.org/jira/browse/HBASE-13918) | Fix hbase:namespace description in webUI |  Trivial | hbase | Patrick White | Patrick White |
| [HBASE-13935](https://issues.apache.org/jira/browse/HBASE-13935) | Orphaned namespace table ZK node should not prevent master to start |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13933](https://issues.apache.org/jira/browse/HBASE-13933) | DBE\'s seekBefore with tags corrupts the tag\'s offset information thus leading to incorrect results |  Critical | io | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13906](https://issues.apache.org/jira/browse/HBASE-13906) | Improve handling of NeedUnmanagedConnectionException |  Major | API, Client | Nick Dimiduk | Mikhail Antonov |
| [HBASE-13938](https://issues.apache.org/jira/browse/HBASE-13938) | Deletes done during the region merge transaction may get eclipsed |  Major | master, regionserver | Devaraj Das | Enis Soztutar |
| [HBASE-13958](https://issues.apache.org/jira/browse/HBASE-13958) | RESTApiClusterManager calls kill() instead of suspend() and resume() |  Minor | integration tests | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13945](https://issues.apache.org/jira/browse/HBASE-13945) | Prefix\_Tree seekBefore() does not work correctly |  Major | io | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13835](https://issues.apache.org/jira/browse/HBASE-13835) | KeyValueHeap.current might be in heap when exception happens in pollRealKV |  Major | Scanners | zhouyingchao | zhouyingchao |
| [HBASE-13969](https://issues.apache.org/jira/browse/HBASE-13969) | AuthenticationTokenSecretManager is never stopped in RPCServer |  Minor | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-13974](https://issues.apache.org/jira/browse/HBASE-13974) | TestRateLimiter#testFixedIntervalResourceAvailability may fail |  Minor | test | Guanghao Zhang | Guanghao Zhang |
| [HBASE-13863](https://issues.apache.org/jira/browse/HBASE-13863) | Multi-wal feature breaks reported number and size of HLogs |  Major | regionserver, UI | Elliott Clark | Abhilash |
| [HBASE-13989](https://issues.apache.org/jira/browse/HBASE-13989) | Threshold for combined MemStore and BlockCache percentages is not checked |  Major | regionserver | Ted Yu | Ted Yu |
| [HBASE-13959](https://issues.apache.org/jira/browse/HBASE-13959) | Region splitting uses a single thread in most common cases |  Critical | regionserver | Hari Krishna Dara | Hari Krishna Dara |
| [HBASE-14005](https://issues.apache.org/jira/browse/HBASE-14005) | Set permission to .top hfile in LoadIncrementalHFiles |  Trivial | . | Francesco MDE | Francesco MDE |
| [HBASE-14012](https://issues.apache.org/jira/browse/HBASE-14012) | Double Assignment and Dataloss when ServerCrashProcedure runs during Master failover |  Blocker | master, Region Assignment | stack | stack |
| [HBASE-13352](https://issues.apache.org/jira/browse/HBASE-13352) | Add hbase.import.version to Import usage. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13988](https://issues.apache.org/jira/browse/HBASE-13988) | Add exception handler for lease thread |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-13337](https://issues.apache.org/jira/browse/HBASE-13337) | Table regions are not assigning back, after restarting all regionservers at once. |  Blocker | Region Assignment | Y. SREENIVASULU REDDY | Samir Ahmic |
| [HBASE-14042](https://issues.apache.org/jira/browse/HBASE-14042) | Fix FATAL level logging in FSHLog where logged for non fatal exceptions |  Major | Operability, wal | Andrew Purtell | Andrew Purtell |
| [HBASE-13997](https://issues.apache.org/jira/browse/HBASE-13997) | ScannerCallableWithReplicas cause Infinitely blocking |  Minor | Client | Zephyr Guo | Zephyr Guo |
| [HBASE-13897](https://issues.apache.org/jira/browse/HBASE-13897) | OOM may occur when Import imports a row with too many KeyValues |  Major | . | Liu Junhong | Liu Junhong |
| [HBASE-14041](https://issues.apache.org/jira/browse/HBASE-14041) | Client MetaCache is cleared if a ThrottlingException is thrown |  Minor | Client | Eungsop Yoo | Eungsop Yoo |
| [HBASE-14077](https://issues.apache.org/jira/browse/HBASE-14077) | Add package to hbase-protocol protobuf files. |  Major | Protobufs | Elliott Clark | Elliott Clark |
| [HBASE-14094](https://issues.apache.org/jira/browse/HBASE-14094) | Procedure.proto can\'t be compiled to C++ |  Major | proc-v2, Protobufs | Elliott Clark | Elliott Clark |
| [HBASE-14089](https://issues.apache.org/jira/browse/HBASE-14089) | Remove unnecessary draw of system entropy from RecoverableZooKeeper |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-14100](https://issues.apache.org/jira/browse/HBASE-14100) | Fix high priority findbugs warnings |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-13971](https://issues.apache.org/jira/browse/HBASE-13971) | Flushes stuck since 6 hours on a regionserver. |  Critical | regionserver | Abhilash | Ted Yu |
| [HBASE-14109](https://issues.apache.org/jira/browse/HBASE-14109) | NPE if we don\'t load fully before we are shutdown |  Trivial | regionserver | stack | stack |
| [HBASE-14000](https://issues.apache.org/jira/browse/HBASE-14000) | Region server failed to report to Master and was stuck in reportForDuty retry loop |  Major | regionserver | Pankaj Kumar | Pankaj Kumar |
| [HBASE-13881](https://issues.apache.org/jira/browse/HBASE-13881) | Bug in HTable#incrementColumnValue implementation |  Major | Client | Jerry Lam | Gabor Liptak |
| [HBASE-14115](https://issues.apache.org/jira/browse/HBASE-14115) | Fix resource leak in HMasterCommandLine |  Major | master, tooling | Yuhao Bi | Yuhao Bi |
| [HBASE-14143](https://issues.apache.org/jira/browse/HBASE-14143) | remove obsolete maven repositories |  Minor | . | Gabor Liptak | Gabor Liptak |
| [HBASE-14146](https://issues.apache.org/jira/browse/HBASE-14146) | Once replication sees an error it slows down forever |  Major | Replication | Elliott Clark | Elliott Clark |
| [HBASE-14157](https://issues.apache.org/jira/browse/HBASE-14157) | Interfaces implemented by subclasses should be checked when registering CoprocessorService |  Major | Coprocessors | Alok Lal | Ted Yu |
| [HBASE-14153](https://issues.apache.org/jira/browse/HBASE-14153) | Typo in ProcedureManagerHost.MASTER\_PROCEUDRE\_CONF\_KEY |  Trivial | . | Konstantin Shvachko | Konstantin Shvachko |
| [HBASE-14155](https://issues.apache.org/jira/browse/HBASE-14155) | StackOverflowError in reverse scan |  Critical | regionserver, Scanners | James Taylor | ramkrishna.s.vasudevan |
| [HBASE-14168](https://issues.apache.org/jira/browse/HBASE-14168) | Avoid useless retry for DoNotRetryIOException in TableRecordReaderImpl |  Minor | mapreduce | zhouyingchao | zhouyingchao |
| [HBASE-14162](https://issues.apache.org/jira/browse/HBASE-14162) | Fixing maven target for regenerating thrift classes fails against 0.9.2 |  Blocker | build, Thrift | Sean Busbey | Srikanth Srungarapu |
| [HBASE-14185](https://issues.apache.org/jira/browse/HBASE-14185) | Incorrect region names logged by MemStoreFlusher |  Minor | regionserver | Biju Nair | Biju Nair |
| [HBASE-14021](https://issues.apache.org/jira/browse/HBASE-14021) | Quota table has a wrong description on the UI |  Minor | UI | Ashish Singhi | Ashish Singhi |
| [HBASE-13865](https://issues.apache.org/jira/browse/HBASE-13865) | Increase the default value for hbase.hregion.memstore.block.multipler from 2 to 4 (part 2) |  Trivial | regionserver | Vladimir Rodionov | Gabor Liptak |
| [HBASE-13825](https://issues.apache.org/jira/browse/HBASE-13825) | Use ProtobufUtil#mergeFrom and ProtobufUtil#mergeDelimitedFrom in place of builder methods of same name |  Major | util | Dev Lakhani | Andrew Purtell |
| [HBASE-12865](https://issues.apache.org/jira/browse/HBASE-12865) | WALs may be deleted before they are replicated to peers |  Critical | Replication | Liu Shaohui | He Liangliang |
| [HBASE-14092](https://issues.apache.org/jira/browse/HBASE-14092) | hbck should run without locks by default and only disable the balancer when necessary |  Major | hbck, util | Elliott Clark | Elliott Clark |
| [HBASE-5878](https://issues.apache.org/jira/browse/HBASE-5878) | Use getVisibleLength public api from HdfsDataInputStream from Hadoop-2. |  Major | wal | Uma Maheswara Rao G | Ashish Singhi |
| [HBASE-14206](https://issues.apache.org/jira/browse/HBASE-14206) | MultiRowRangeFilter returns records whose rowKeys are out of allowed ranges |  Critical | Filters | Anton Nazaruk | Anton Nazaruk |
| [HBASE-13889](https://issues.apache.org/jira/browse/HBASE-13889) | Fix hbase-shaded-client artifact so it works on hbase-downstreamer |  Critical | Client | Dmitry Minkovsky | Elliott Clark |
| [HBASE-14209](https://issues.apache.org/jira/browse/HBASE-14209) | TestShell visibility tests failing |  Major | security, shell | Andrew Purtell | Andrew Purtell |
| [HBASE-14196](https://issues.apache.org/jira/browse/HBASE-14196) | Thrift server idle connection timeout issue |  Major | Thrift | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14054](https://issues.apache.org/jira/browse/HBASE-14054) | Acknowledged writes may get lost if regionserver clock is set backwards |  Major | regionserver | Tobi Vollebregt | Enis Soztutar |
| [HBASE-14214](https://issues.apache.org/jira/browse/HBASE-14214) | list\_labels shouldn\'t raise ArgumentError if no labels are defined |  Minor | . | Andrew Purtell | Anoop Sam John |
| [HBASE-14219](https://issues.apache.org/jira/browse/HBASE-14219) | src tgz no longer builds after HBASE-14085 |  Blocker | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13966](https://issues.apache.org/jira/browse/HBASE-13966) | Limit column width in table.jsp |  Minor | Operability, UI | Jean-Marc Spaggiari | Matt Warhaftig |
| [HBASE-10844](https://issues.apache.org/jira/browse/HBASE-10844) | Coprocessor failure during batchmutation leaves the memstore datastructs in an inconsistent state |  Major | regionserver | Devaraj Das | Nick Dimiduk |
| [HBASE-14166](https://issues.apache.org/jira/browse/HBASE-14166) | Per-Region metrics can be stale |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-14228](https://issues.apache.org/jira/browse/HBASE-14228) | Close BufferedMutator and connection in MultiTableOutputFormat |  Minor | mapreduce | Jerry He | Jerry He |
| [HBASE-14241](https://issues.apache.org/jira/browse/HBASE-14241) | Fix deadlock during cluster shutdown due to concurrent connection close |  Critical | master, metrics | Andrew Purtell | Ted Yu |
| [HBASE-14234](https://issues.apache.org/jira/browse/HBASE-14234) | Procedure-V2: Exception encountered in WALProcedureStore#rollWriter() should be properly handled |  Minor | proc-v2 | Ted Yu | Ted Yu |
| [HBASE-14243](https://issues.apache.org/jira/browse/HBASE-14243) | Incorrect NOTICE file in hbase-it test-jar |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14249](https://issues.apache.org/jira/browse/HBASE-14249) | shaded jar modules create spurious source and test jars with incorrect LICENSE/NOTICE info |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-14251](https://issues.apache.org/jira/browse/HBASE-14251) | javadoc jars use LICENSE/NOTICE from primary artifact |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14250](https://issues.apache.org/jira/browse/HBASE-14250) | branch-1.1 hbase-server test-jar has incorrect LICENSE |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14291](https://issues.apache.org/jira/browse/HBASE-14291) | NPE On StochasticLoadBalancer Balance Involving RS With No Regions |  Minor | Balancer | Matt Warhaftig | Ted Yu |
| [HBASE-14273](https://issues.apache.org/jira/browse/HBASE-14273) | Rename MVCC to MVCC: From MultiVersionConsistencyControl to MultiVersionConcurrencyControl |  Major | regionserver | stack | Lars Francke |
| [HBASE-13480](https://issues.apache.org/jira/browse/HBASE-13480) | ShortCircuitConnection doesn\'t short-circuit all calls as expected |  Critical | Client | Josh Elser | Jingcheng Du |
| [HBASE-14224](https://issues.apache.org/jira/browse/HBASE-14224) | Fix coprocessor handling of duplicate classes |  Critical | Coprocessors | Lars George | stack |
| [HBASE-14302](https://issues.apache.org/jira/browse/HBASE-14302) | TableSnapshotInputFormat should not create back references when restoring snapshot |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14269](https://issues.apache.org/jira/browse/HBASE-14269) | FuzzyRowFilter omits certain rows when multiple fuzzy keys exist |  Major | Filters | hongbin ma | hongbin ma |
| [HBASE-14313](https://issues.apache.org/jira/browse/HBASE-14313) | After a Connection sees ConnectionClosingException it never recovers |  Critical | Client | Elliott Clark | Elliott Clark |
| [HBASE-14315](https://issues.apache.org/jira/browse/HBASE-14315) | Save one call to KeyValueHeap.peek per row |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-14258](https://issues.apache.org/jira/browse/HBASE-14258) | Make region\_mover.rb script case insensitive with regard to hostname |  Minor | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14354](https://issues.apache.org/jira/browse/HBASE-14354) | Minor improvements for usage of the mlock agent |  Trivial | hbase, regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-14229](https://issues.apache.org/jira/browse/HBASE-14229) | Flushing canceled by coprocessor still leads to memstoreSize set down |  Major | regionserver | Yerui Sun | Yerui Sun |
| [HBASE-14359](https://issues.apache.org/jira/browse/HBASE-14359) | HTable#close will hang forever if unchecked error/exception thrown in AsyncProcess#sendMultiAction |  Major | Client | Yu Li | Victor Xu |
| [HBASE-14317](https://issues.apache.org/jira/browse/HBASE-14317) | Stuck FSHLog: bad disk (HDFS-8960) and can\'t roll WAL |  Blocker | wal | stack | stack |
| [HBASE-14393](https://issues.apache.org/jira/browse/HBASE-14393) | Have TestHFileEncryption clean up after itself so it don\'t go all zombie on us |  Major | test | stack | stack |
| [HBASE-14385](https://issues.apache.org/jira/browse/HBASE-14385) | Close the sockets that is missing in connection closure. |  Minor | Client | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14382](https://issues.apache.org/jira/browse/HBASE-14382) | TestInterfaceAudienceAnnotations should hadoop-compt module resources |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14392](https://issues.apache.org/jira/browse/HBASE-14392) | [tests] TestLogRollingNoCluster fails on master from time to time |  Major | test | stack | stack |
| [HBASE-14380](https://issues.apache.org/jira/browse/HBASE-14380) | Correct data gets skipped along with bad data in importTsv bulk load thru TsvImporterTextMapper |  Major | mapreduce, tooling | Bhupendra Kumar Jain | Bhupendra Kumar Jain |
| [HBASE-14145](https://issues.apache.org/jira/browse/HBASE-14145) | Allow the Canary in regionserver mode to try all regions on the server, not just one |  Major | canary, util | Elliott Clark | Sanjeev Srivatsa |
| [HBASE-14287](https://issues.apache.org/jira/browse/HBASE-14287) | Bootstrapping a cluster leaves temporary WAL directory laying around |  Minor | master, regionserver | Lars George | Ted Yu |
| [HBASE-14400](https://issues.apache.org/jira/browse/HBASE-14400) | Fix HBase RPC protection documentation |  Critical | encryption, IPC/RPC, security | Appy | Appy |
| [HBASE-14411](https://issues.apache.org/jira/browse/HBASE-14411) | Fix unit test failures when using multiwal as default WAL provider |  Major | . | Yu Li | Yu Li |
| [HBASE-13250](https://issues.apache.org/jira/browse/HBASE-13250) | chown of ExportSnapshot does not cover all path and files |  Critical | snapshots | He Liangliang | He Liangliang |
| [HBASE-14449](https://issues.apache.org/jira/browse/HBASE-14449) | Rewrite deadlock prevention for concurrent connection close |  Major | master, metrics | Ted Yu | Ted Yu |
| [HBASE-14431](https://issues.apache.org/jira/browse/HBASE-14431) | AsyncRpcClient#removeConnection() never removes connection from connections pool if server fails |  Critical | IPC/RPC | Samir Ahmic | Samir Ahmic |
| [HBASE-14280](https://issues.apache.org/jira/browse/HBASE-14280) | Bulk Upload from HA cluster to remote HA hbase cluster fails |  Minor | hadoop2, regionserver | Ankit Singhal | Ankit Singhal |
| [HBASE-14338](https://issues.apache.org/jira/browse/HBASE-14338) | License notification misspells \'Asciidoctor\' |  Minor | . | Sean Busbey | Lars Francke |
| [HBASE-14445](https://issues.apache.org/jira/browse/HBASE-14445) | ExportSnapshot does not honor -chmod option |  Major | snapshots | Ted Yu | Ted Yu |
| [HBASE-13324](https://issues.apache.org/jira/browse/HBASE-13324) | o.a.h.h.Coprocessor should be LimitedPrivate("Coprocessor") |  Minor | API | Lars George | Andrew Purtell |
| [HBASE-14486](https://issues.apache.org/jira/browse/HBASE-14486) | Disable TestRegionPlacement, a flakey test for an unfinished feature |  Major | test | stack | stack |
| [HBASE-14471](https://issues.apache.org/jira/browse/HBASE-14471) | Thrift -  HTTP Error 413 full HEAD if using kerberos authentication |  Major | Thrift | huaxiang sun | huaxiang sun |
| [HBASE-14492](https://issues.apache.org/jira/browse/HBASE-14492) | Increase REST server header buffer size from 8k to 64k |  Major | REST | huaxiang sun | huaxiang sun |
| [HBASE-14407](https://issues.apache.org/jira/browse/HBASE-14407) | NotServingRegion: hbase region closed forever |  Critical | Region Assignment | Shuaifeng Zhou | Shuaifeng Zhou |
| [HBASE-14370](https://issues.apache.org/jira/browse/HBASE-14370) | Use separate thread for calling ZKPermissionWatcher#refreshNodes() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14489](https://issues.apache.org/jira/browse/HBASE-14489) | postScannerFilterRow consumes a lot of CPU |  Major | Coprocessors, Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-14437](https://issues.apache.org/jira/browse/HBASE-14437) | ArithmeticException in ReplicationInterClusterEndpoint |  Minor | Replication | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14473](https://issues.apache.org/jira/browse/HBASE-14473) | Compute region locality in parallel |  Major | Balancer | Elliott Clark | Elliott Clark |
| [HBASE-14362](https://issues.apache.org/jira/browse/HBASE-14362) | org.apache.hadoop.hbase.master.procedure.TestWALProcedureStoreOnHDFS is super duper flaky |  Critical | test | Dima Spivak | Heng Chen |
| [HBASE-14510](https://issues.apache.org/jira/browse/HBASE-14510) | Can not set coprocessor from Shell after HBASE-14224 |  Major | Coprocessors, shell | Yerui Sun | Yerui Sun |
| [HBASE-14394](https://issues.apache.org/jira/browse/HBASE-14394) | Properly close the connection after reading records from table. |  Minor | mapreduce | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14518](https://issues.apache.org/jira/browse/HBASE-14518) | Give TestScanEarlyTermination the same treatment as \'HBASE-14378 Get TestAccessController\* passing again...\' -- up priority handlers |  Major | test | stack | stack |
| [HBASE-14494](https://issues.apache.org/jira/browse/HBASE-14494) | Wrong usage messages on shell commands |  Minor | shell | Josh Elser | Josh Elser |
| [HBASE-14475](https://issues.apache.org/jira/browse/HBASE-14475) | Region split requests are always audited with "hbase" user rather than request user |  Major | regionserver, security | Enis Soztutar | Ted Yu |
| [HBASE-13143](https://issues.apache.org/jira/browse/HBASE-13143) | TestCacheOnWrite is flaky and needs a diet |  Critical | test | Andrew Purtell | Andrew Purtell |
| [HBASE-13744](https://issues.apache.org/jira/browse/HBASE-13744) | TestCorruptedRegionStoreFile is flaky |  Major | test | Andrew Purtell | Andrew Purtell |
| [HBASE-13770](https://issues.apache.org/jira/browse/HBASE-13770) | Programmatic JAAS configuration option for secure zookeeper may be broken |  Major | Operability, security | Andrew Purtell | Maddineni Sukumar |
| [HBASE-14545](https://issues.apache.org/jira/browse/HBASE-14545) | TestMasterFailover often times out |  Major | test | Mikhail Antonov | stack |
| [HBASE-14367](https://issues.apache.org/jira/browse/HBASE-14367) | Add normalization support to shell |  Major | Balancer, shell | Lars George | Mikhail Antonov |
| [HBASE-14544](https://issues.apache.org/jira/browse/HBASE-14544) | Allow HConnectionImpl to not refresh the dns on errors |  Major | Client | Elliott Clark | Elliott Clark |
| [HBASE-14497](https://issues.apache.org/jira/browse/HBASE-14497) | Reverse Scan threw StackOverflow caused by readPt checking |  Major | . | Yerui Sun | Yerui Sun |
| [HBASE-14525](https://issues.apache.org/jira/browse/HBASE-14525) | Append and increment operation throws NullPointerException on non-existing column families. |  Minor | shell | Abhishek Kumar | Abhishek Kumar |
| [HBASE-13858](https://issues.apache.org/jira/browse/HBASE-13858) | RS/MasterDumpServlet dumps threads before its “Stacks” header |  Trivial | master, regionserver, UI | Lars George | Fred Liu |
| [HBASE-14581](https://issues.apache.org/jira/browse/HBASE-14581) | Znode cleanup throws auth exception in secure mode |  Major | security, Zookeeper | Ted Yu | Ted Yu |
| [HBASE-14578](https://issues.apache.org/jira/browse/HBASE-14578) | URISyntaxException during snapshot restore for table with user defined namespace |  Major | snapshots | Pankaj Kumar | Pankaj Kumar |
| [HBASE-14592](https://issues.apache.org/jira/browse/HBASE-14592) | BatchRestartRsAction always restarts 0 RS when running SlowDeterministicMonkey |  Major | integration tests | Yu Li | Yu Li |
| [HBASE-14211](https://issues.apache.org/jira/browse/HBASE-14211) | Add more rigorous integration tests of splits |  Major | integration tests, test | Elliott Clark | Elliott Clark |
| [HBASE-14501](https://issues.apache.org/jira/browse/HBASE-14501) | NPE in replication when HDFS transparent encryption is enabled. |  Critical | Replication, security | Enis Soztutar | Enis Soztutar |
| [HBASE-14591](https://issues.apache.org/jira/browse/HBASE-14591) | Region with reference hfile may split after a forced split in IncreasingToUpperBoundRegionSplitPolicy |  Critical | regionserver | Liu Shaohui | Liu Shaohui |
| [HBASE-14598](https://issues.apache.org/jira/browse/HBASE-14598) | ByteBufferOutputStream grows its HeapByteBuffer beyond JVM limitations |  Major | Client, io | Ian Friedman | Ian Friedman |
| [HBASE-14608](https://issues.apache.org/jira/browse/HBASE-14608) | testWalRollOnLowReplication has some risk to assert failed after HBASE-14600 |  Major | test | Heng Chen | Heng Chen |
| [HBASE-14594](https://issues.apache.org/jira/browse/HBASE-14594) | Use new DNS API introduced in HADOOP-12437 |  Major | util | Josh Elser | Josh Elser |
| [HBASE-13330](https://issues.apache.org/jira/browse/HBASE-13330) | Region left unassigned due to AM & SSH each thinking the assignment would be done by the other |  Major | master, Region Assignment | Devaraj Das | Devaraj Das |
| [HBASE-14597](https://issues.apache.org/jira/browse/HBASE-14597) | Fix Groups cache in multi-threaded env |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-14625](https://issues.apache.org/jira/browse/HBASE-14625) | Chaos Monkey should shut down faster |  Major | integration tests, test | Elliott Clark | Elliott Clark |
| [HBASE-14634](https://issues.apache.org/jira/browse/HBASE-14634) | Disable flakey TestSnapshotCloneIndependence.testOnlineSnapshotDeleteIndependent |  Major | test | stack | stack |
| [HBASE-14536](https://issues.apache.org/jira/browse/HBASE-14536) | Balancer & SSH interfering with each other leading to unavailability |  Major | master, Region Assignment | Devaraj Das | Stephen Yuan Jiang |
| [HBASE-14606](https://issues.apache.org/jira/browse/HBASE-14606) | TestSecureLoadIncrementalHFiles tests timed out in trunk build on apache |  Major | test | stack | stack |
| [HBASE-14604](https://issues.apache.org/jira/browse/HBASE-14604) | Improve MoveCostFunction in StochasticLoadBalancer |  Major | Balancer | Guanghao Zhang | Guanghao Zhang |
| [HBASE-14366](https://issues.apache.org/jira/browse/HBASE-14366) | NPE in case visibility expression is not present in labels table during importtsv run |  Minor | . | Y. SREENIVASULU REDDY | Bhupendra Kumar Jain |
| [HBASE-14633](https://issues.apache.org/jira/browse/HBASE-14633) | Try fluid width UI |  Major | UI | Elliott Clark | Elliott Clark |
| [HBASE-14663](https://issues.apache.org/jira/browse/HBASE-14663) | HStore::close does not honor config hbase.rs.evictblocksonclose |  Minor | BlockCache, regionserver | Randy Fox | Vladimir Rodionov |
| [HBASE-14658](https://issues.apache.org/jira/browse/HBASE-14658) | Allow loading a MonkeyFactory by class name |  Major | integration tests, test | Elliott Clark | Elliott Clark |
| [HBASE-14343](https://issues.apache.org/jira/browse/HBASE-14343) | Fix debug message in SimpleRegionNormalizer for small regions |  Trivial | regionserver | Lars George | Lars Francke |
| [HBASE-14624](https://issues.apache.org/jira/browse/HBASE-14624) | BucketCache.freeBlock is too expensive |  Major | BlockCache | Randy Fox | Ted Yu |
| [HBASE-14690](https://issues.apache.org/jira/browse/HBASE-14690) | Fix css so there\'s no left/right scroll bar |  Major | UI | Elliott Clark | Elliott Clark |
| [HBASE-14661](https://issues.apache.org/jira/browse/HBASE-14661) | RegionServer link is not opening, in HBase Table page. |  Minor | UI | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-13318](https://issues.apache.org/jira/browse/HBASE-13318) | RpcServer.getListenerAddress should handle when the accept channel is closed |  Minor | . | Lars Hofhansl | Andrew Purtell |
| [HBASE-14283](https://issues.apache.org/jira/browse/HBASE-14283) | Reverse scan doesn’t work with HFile inline index/bloom blocks |  Major | . | Ben Lau | Ben Lau |
| [HBASE-14682](https://issues.apache.org/jira/browse/HBASE-14682) | CM restore functionality for regionservers is broken |  Major | integration tests | Enis Soztutar | Enis Soztutar |
| [HBASE-14257](https://issues.apache.org/jira/browse/HBASE-14257) | Periodic flusher only handles hbase:meta, not other system tables |  Major | regionserver | Lars George | Abhishek Singh Chouhan |
| [HBASE-14694](https://issues.apache.org/jira/browse/HBASE-14694) | Scan copy constructor doesn\'t handle allowPartialResults |  Major | Client | Ted Yu | Ted Yu |
| [HBASE-14349](https://issues.apache.org/jira/browse/HBASE-14349) | pre-commit zombie finder is overly broad |  Critical | build | Sean Busbey | stack |
| [HBASE-14680](https://issues.apache.org/jira/browse/HBASE-14680) | Two configs for snapshot timeout and better defaults |  Major | snapshots | Enis Soztutar | Heng Chen |
| [HBASE-14705](https://issues.apache.org/jira/browse/HBASE-14705) | Javadoc for KeyValue constructor is not correct. |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-14674](https://issues.apache.org/jira/browse/HBASE-14674) | Rpc handler / task monitoring seems to be broken after 0.98 |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-14425](https://issues.apache.org/jira/browse/HBASE-14425) | In Secure Zookeeper cluster superuser will not have sufficient permission if multiple values are configured in "hbase.superuser" |  Major | security, Zookeeper | Pankaj Kumar | Pankaj Kumar |
| [HBASE-14557](https://issues.apache.org/jira/browse/HBASE-14557) | MapReduce WALPlayer issue with NoTagsKeyValue |  Blocker | tooling | Jerry He | Anoop Sam John |
| [HBASE-14742](https://issues.apache.org/jira/browse/HBASE-14742) | TestHeapMemoryManager is flakey |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-14754](https://issues.apache.org/jira/browse/HBASE-14754) | TestFastFailWithoutTestUtil failing on trunk now in #testPreemptiveFastFailException50Times |  Major | flakey, test | stack | stack |
| [HBASE-14733](https://issues.apache.org/jira/browse/HBASE-14733) | Minor typo in alter\_namespace.rb |  Trivial | shell | Enis Soztutar | Enis Soztutar |
| [HBASE-14723](https://issues.apache.org/jira/browse/HBASE-14723) | Fix IT tests split too many times |  Major | integration tests | Elliott Clark | Elliott Clark |
| [HBASE-14768](https://issues.apache.org/jira/browse/HBASE-14768) | bin/graceful\_stop.sh logs nothing as a balancer state to be stored |  Trivial | scripts | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-14773](https://issues.apache.org/jira/browse/HBASE-14773) | Fix HBase shell tests are skipped when skipping server tests. |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-14706](https://issues.apache.org/jira/browse/HBASE-14706) | RegionLocationFinder should return multiple servernames by top host |  Major | Balancer | Guanghao Zhang | Guanghao Zhang |
| [HBASE-14632](https://issues.apache.org/jira/browse/HBASE-14632) | Region server aborts due to unguarded dereference of Reader |  Major | regionserver | Ted Yu | Ted Yu |
| [HBASE-14759](https://issues.apache.org/jira/browse/HBASE-14759) | Avoid using Math.abs when selecting SyncRunner in FSHLog |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-14781](https://issues.apache.org/jira/browse/HBASE-14781) | Turn per cf flushing on for ITBLL by default |  Major | integration tests | Elliott Clark | Elliott Clark |
| [HBASE-14784](https://issues.apache.org/jira/browse/HBASE-14784) | Port conflict is not resolved in HBaseTestingUtility.randomFreePort() |  Minor | test | Youngjoon Kim | Youngjoon Kim |
| [HBASE-14778](https://issues.apache.org/jira/browse/HBASE-14778) | Make block cache hit percentages not integer in the metrics system |  Major | BlockCache, metrics | Elliott Clark | Elliott Clark |
| [HBASE-14788](https://issues.apache.org/jira/browse/HBASE-14788) | Splitting a region does not support the hbase.rs.evictblocksonclose config when closing source region |  Major | regionserver | Randy Fox | Ted Yu |
| [HBASE-13982](https://issues.apache.org/jira/browse/HBASE-13982) | Add info for visibility labels/cell TTLs to ImportTsv |  Major | mapreduce | Lars George | NIDHI GAMBHIR |
| [HBASE-14802](https://issues.apache.org/jira/browse/HBASE-14802) | Replaying server crash recovery procedure after a failover causes incorrect handling of deadservers |  Major | master | Ashu Pachauri | Ashu Pachauri |
| [HBASE-14809](https://issues.apache.org/jira/browse/HBASE-14809) | Grant / revoke Namespace admin permission to group |  Major | security | Steven Hancz | Ted Yu |
| [HBASE-14806](https://issues.apache.org/jira/browse/HBASE-14806) | Missing sources.jar for several modules when building HBase |  Major | pom | Duo Zhang | Duo Zhang |
| [HBASE-14793](https://issues.apache.org/jira/browse/HBASE-14793) | Allow limiting size of block into L1 block cache. |  Major | BlockCache | Elliott Clark | Elliott Clark |
| [HBASE-14812](https://issues.apache.org/jira/browse/HBASE-14812) | Fix ResultBoundedCompletionService deadlock |  Major | Client, Thrift | Elliott Clark | Elliott Clark |
| [HBASE-14824](https://issues.apache.org/jira/browse/HBASE-14824) | HBaseAdmin.mergeRegions should recognize both full region names and encoded region names |  Minor | Admin | Eungsop Yoo | Eungsop Yoo |
| [HBASE-14782](https://issues.apache.org/jira/browse/HBASE-14782) | FuzzyRowFilter skips valid rows |  Major | Filters | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14761](https://issues.apache.org/jira/browse/HBASE-14761) | Deletes with and without visibility expression do not delete the matching mutation |  Major | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14712](https://issues.apache.org/jira/browse/HBASE-14712) | MasterProcWALs never clean up |  Blocker | proc-v2 | Elliott Clark | Matteo Bertozzi |
| [HBASE-14840](https://issues.apache.org/jira/browse/HBASE-14840) | Sink cluster reports data replication request as success though the data is not replicated |  Major | Replication | Y. SREENIVASULU REDDY | Ashish Singhi |
| [HBASE-14799](https://issues.apache.org/jira/browse/HBASE-14799) | Commons-collections object deserialization remote command execution vulnerability |  Critical | dependencies, security | Andrew Purtell | Andrew Purtell |
| [HBASE-14737](https://issues.apache.org/jira/browse/HBASE-14737) | Clear cachedMaxVersions when HColumnDescriptor#setValue(VERSIONS, value) is called |  Major | . | James Taylor | Pankaj Kumar |
| [HBASE-14875](https://issues.apache.org/jira/browse/HBASE-14875) | Forward port HBASE-14207 \'Region was hijacked and remained in transition when RS failed to open a region and later regionplan changed to new RS on retry\' |  Major | Region Assignment | Ted Yu | Ted Yu |
| [HBASE-14463](https://issues.apache.org/jira/browse/HBASE-14463) | Severe performance downgrade when parallel reading a single key from BucketCache |  Major | . | Yu Li | Yu Li |
| [HBASE-14689](https://issues.apache.org/jira/browse/HBASE-14689) | Addendum and unit test for HBASE-13471 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14885](https://issues.apache.org/jira/browse/HBASE-14885) | NullPointerException in HMaster#normalizeRegions() due to missing TableDescriptor |  Major | master | Ted Yu | Ted Yu |
| [HBASE-14777](https://issues.apache.org/jira/browse/HBASE-14777) | Fix Inter Cluster Replication Future ordering issues |  Critical | Replication | Bhupendra Kumar Jain | Ashu Pachauri |
| [HBASE-14893](https://issues.apache.org/jira/browse/HBASE-14893) | Race between mutation on region and region closing operation leads to NotServingRegionException |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14894](https://issues.apache.org/jira/browse/HBASE-14894) | Fix misspellings of threshold in log4j.properties files for tests |  Trivial | . | Youngjoon Kim | Youngjoon Kim |
| [HBASE-14531](https://issues.apache.org/jira/browse/HBASE-14531) | graceful\_stop.sh "if [ "$local" ]" condition unexpected behaviour |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-14541](https://issues.apache.org/jira/browse/HBASE-14541) | TestHFileOutputFormat.testMRIncrementalLoadWithSplit failed due to too many splits and few retries |  Major | HFile, test | stack | Matteo Bertozzi |
| [HBASE-14905](https://issues.apache.org/jira/browse/HBASE-14905) | VerifyReplication does not honour versions option |  Major | tooling | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-14904](https://issues.apache.org/jira/browse/HBASE-14904) | Mark Base[En\|De]coder LimitedPrivate and fix binary compat issue |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14928](https://issues.apache.org/jira/browse/HBASE-14928) | Start row should be set for query through HBase REST gateway involving globbing option |  Major | REST | Ted Yu | Ted Yu |
| [HBASE-14926](https://issues.apache.org/jira/browse/HBASE-14926) | Hung ThriftServer; no timeout on read from client; if client crashes, worker thread gets stuck reading |  Major | Thrift | stack | stack |
| [HBASE-14922](https://issues.apache.org/jira/browse/HBASE-14922) | Delayed flush doesn\'t work causing flush storms. |  Major | regionserver | Elliott Clark | Elliott Clark |
| [HBASE-14923](https://issues.apache.org/jira/browse/HBASE-14923) | VerifyReplication should not mask the exception during result comparison |  Minor | tooling | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-14930](https://issues.apache.org/jira/browse/HBASE-14930) | check\_compatibility.sh needs smarter exit codes |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-14804](https://issues.apache.org/jira/browse/HBASE-14804) | HBase shell\'s create table command ignores \'NORMALIZATION\_ENABLED\' attribute |  Minor | shell | Romil Choksi | Jean-Marc Spaggiari |
| [HBASE-14954](https://issues.apache.org/jira/browse/HBASE-14954) | IllegalArgumentException was thrown when doing online configuration change in CompactSplitThread |  Major | Compaction, regionserver | Victor Xu | Victor Xu |
| [HBASE-14942](https://issues.apache.org/jira/browse/HBASE-14942) | Allow turning off BoundedByteBufferPool |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-14745](https://issues.apache.org/jira/browse/HBASE-14745) | Shade the last few dependencies in hbase-shaded-client |  Blocker | Client, dependencies | Elliott Clark | Elliott Clark |
| [HBASE-14960](https://issues.apache.org/jira/browse/HBASE-14960) | Fallback to using default RPCControllerFactory if class cannot be loaded |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14953](https://issues.apache.org/jira/browse/HBASE-14953) | HBaseInterClusterReplicationEndpoint: Do not retry the whole batch of edits in case of RejectedExecutionException |  Critical | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-14965](https://issues.apache.org/jira/browse/HBASE-14965) | Remove un-used hbase-spark in branch-1 + |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-14936](https://issues.apache.org/jira/browse/HBASE-14936) | CombinedBlockCache should overwrite CacheStats#rollMetricsPeriod() |  Major | BlockCache | Jianwei Cui | Jianwei Cui |
| [HBASE-14929](https://issues.apache.org/jira/browse/HBASE-14929) | There is a space missing from Table "foo" is not currently available. |  Trivial | . | Theodore michael Malaska | Carlos A. Morillo |
| [HBASE-14968](https://issues.apache.org/jira/browse/HBASE-14968) | ConcurrentModificationException in region close resulting in the region staying in closing state |  Major | Region Assignment, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-14807](https://issues.apache.org/jira/browse/HBASE-14807) | TestWALLockup is flakey |  Major | flakey, test | stack | stack |
| [HBASE-14952](https://issues.apache.org/jira/browse/HBASE-14952) | hbase-assembly source artifact has some incorrect modules |  Blocker | build, dependencies | Esteban Gutierrez | Sean Busbey |
| [HBASE-14974](https://issues.apache.org/jira/browse/HBASE-14974) | Total number of Regions in Transition number on UI incorrect |  Trivial | UI | Elliott Clark | Mikhail Antonov |
| [HBASE-15000](https://issues.apache.org/jira/browse/HBASE-15000) | Fix javadoc warn in LoadIncrementalHFiles |  Trivial | . | Anoop Sam John | Ashish Singhi |
| [HBASE-14999](https://issues.apache.org/jira/browse/HBASE-14999) | Remove ref to org.mortbay.log.Log |  Minor | dependencies | Anoop Sam John | Anoop Sam John |
| [HBASE-14989](https://issues.apache.org/jira/browse/HBASE-14989) | Implementation of Mutation.getWriteToWAL() is backwards |  Major | Client | James Taylor | Enis Soztutar |
| [HBASE-14342](https://issues.apache.org/jira/browse/HBASE-14342) | Recursive call in RegionMergeTransactionImpl.getJournal() |  Major | regionserver | Lars George | Lars Francke |
| [HBASE-15009](https://issues.apache.org/jira/browse/HBASE-15009) | Update test-patch.sh on branches; to fix curtailed build report |  Major | build | stack | stack |
| [HBASE-14822](https://issues.apache.org/jira/browse/HBASE-14822) | Renewing leases of scanners doesn\'t work |  Major | . | Samarth Jain | Lars Hofhansl |
| [HBASE-15015](https://issues.apache.org/jira/browse/HBASE-15015) | Checktyle plugin shouldn\'t check Jamon-generated Java classes |  Minor | build | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15001](https://issues.apache.org/jira/browse/HBASE-15001) | Thread Safety issues in ReplicationSinkManager and HBaseInterClusterReplicationEndpoint |  Blocker | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-15014](https://issues.apache.org/jira/browse/HBASE-15014) | Fix filterCellByStore in WALsplitter is awful for performance |  Critical | MTTR, Recovery, wal | Elliott Clark | Elliott Clark |
| [HBASE-14977](https://issues.apache.org/jira/browse/HBASE-14977) | ChoreService.shutdown may result in ConcurrentModificationException |  Minor | util | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15028](https://issues.apache.org/jira/browse/HBASE-15028) | Minor fix on RegionGroupingProvider |  Minor | wal | Yu Li | Yu Li |
| [HBASE-15021](https://issues.apache.org/jira/browse/HBASE-15021) | hadoopqa doing false positives |  Major | . | stack | stack |
| [HBASE-15030](https://issues.apache.org/jira/browse/HBASE-15030) | Deadlock in master TableNamespaceManager while running IntegrationTestDDLMasterFailover |  Major | proc-v2 | Samir Ahmic | Samir Ahmic |
| [HBASE-15034](https://issues.apache.org/jira/browse/HBASE-15034) | IntegrationTestDDLMasterFailover does not clean created namespaces |  Minor | integration tests | Samir Ahmic | Samir Ahmic |
| [HBASE-15032](https://issues.apache.org/jira/browse/HBASE-15032) | hbase shell scan filter string assumes UTF-8 encoding |  Major | shell | huaxiang sun | huaxiang sun |
| [HBASE-14717](https://issues.apache.org/jira/browse/HBASE-14717) | enable\_table\_replication command should only create specified table for a peer cluster |  Major | Replication | Y. SREENIVASULU REDDY | Ashish Singhi |
| [HBASE-14940](https://issues.apache.org/jira/browse/HBASE-14940) | Make our unsafe based ops more safe |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-15039](https://issues.apache.org/jira/browse/HBASE-15039) | HMaster and RegionServers should try to refresh token keys from zk when facing InvalidToken |  Major | . | Yong Zhang | Yong Zhang |
| [HBASE-15035](https://issues.apache.org/jira/browse/HBASE-15035) | bulkloading hfiles with tags that require splits do not preserve tags |  Blocker | HFile | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-15026](https://issues.apache.org/jira/browse/HBASE-15026) | The default value of "hbase.regions.slop" in hbase-default.xml is obsolete |  Minor | Balancer | Tianyin Xu | Tianyin Xu |
| [HBASE-15011](https://issues.apache.org/jira/browse/HBASE-15011) | turn off the jdk8 javadoc linter. :( |  Blocker | build, documentation | Sean Busbey | Sean Busbey |
| [HBASE-14987](https://issues.apache.org/jira/browse/HBASE-14987) | Compaction marker whose region name doesn\'t match current region\'s needs to be handled |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14867](https://issues.apache.org/jira/browse/HBASE-14867) | SimpleRegionNormalizer needs to have better heuristics to trigger merge operation |  Major | master | Romil Choksi | Ted Yu |
| [HBASE-15058](https://issues.apache.org/jira/browse/HBASE-15058) | AssignmentManager should account for unsuccessful split correctly which initially passes quota check |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14975](https://issues.apache.org/jira/browse/HBASE-14975) | Don\'t color the total RIT line yellow if it\'s zero |  Major | UI | Elliott Clark | Pallavi Adusumilli |
| [HBASE-15065](https://issues.apache.org/jira/browse/HBASE-15065) | SimpleRegionNormalizer should return multiple normalization plans in one run |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15057](https://issues.apache.org/jira/browse/HBASE-15057) | local-master-backup.sh doesn\'t start HMaster correctly |  Major | shell | Cyker Way | Samir Ahmic |
| [HBASE-15083](https://issues.apache.org/jira/browse/HBASE-15083) | Gets from Multiactions are not counted in metrics for gets. |  Major | . | Elliott Clark | Heng Chen |
| [HBASE-15085](https://issues.apache.org/jira/browse/HBASE-15085) | IllegalStateException was thrown when scanning on bulkloaded HFiles |  Critical | . | Victor Xu | Victor Xu |
| [HBASE-14512](https://issues.apache.org/jira/browse/HBASE-14512) | Cache UGI groups |  Major | Performance, security | Elliott Clark | Elliott Clark |
| [HBASE-14771](https://issues.apache.org/jira/browse/HBASE-14771) | RpcServer#getRemoteAddress always returns null |  Minor | IPC/RPC | Abhishek Kumar | Abhishek Kumar |
| [HBASE-15102](https://issues.apache.org/jira/browse/HBASE-15102) | HeapMemoryTuner can "overtune" memstore size and suddenly drop it into blocking zone |  Critical | regionserver | Ashu Pachauri | Ashu Pachauri |
| [HBASE-15098](https://issues.apache.org/jira/browse/HBASE-15098) | Normalizer switch in configuration is not used |  Blocker | master | Lars George | Ted Yu |
| [HBASE-15139](https://issues.apache.org/jira/browse/HBASE-15139) | Connection manager doesn\'t pass client metrics to RpcClient |  Major | Client, metrics | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15147](https://issues.apache.org/jira/browse/HBASE-15147) | Shell should use Admin.listTableNames() instead of Admin.listTables() |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15152](https://issues.apache.org/jira/browse/HBASE-15152) | Automatically include prefix-tree module in MR jobs if present |  Major | mapreduce | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-15133](https://issues.apache.org/jira/browse/HBASE-15133) | Data loss after compaction when a row has more than Integer.MAX\_VALUE columns |  Major | Compaction | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-15148](https://issues.apache.org/jira/browse/HBASE-15148) | Resolve IS2\_INCONSISTENT\_SYNC findbugs warning in AuthenticationTokenSecretManager |  Major | . | Yu Li | Yu Li |
| [HBASE-13082](https://issues.apache.org/jira/browse/HBASE-13082) | Coarsen StoreScanner locks to RegionScanner |  Major | Performance, Scanners | Lars Hofhansl | ramkrishna.s.vasudevan |
| [HBASE-15132](https://issues.apache.org/jira/browse/HBASE-15132) | Master region merge RPC should authorize user request |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15145](https://issues.apache.org/jira/browse/HBASE-15145) | HBCK and Replication should authenticate to zookepeer using server principal |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15146](https://issues.apache.org/jira/browse/HBASE-15146) | Don\'t block on Reader threads queueing to a scheduler queue |  Blocker | . | Elliott Clark | Elliott Clark |
| [HBASE-15173](https://issues.apache.org/jira/browse/HBASE-15173) | Execute mergeRegions RPC call as the request user |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15019](https://issues.apache.org/jira/browse/HBASE-15019) | Replication stuck when HDFS is restarted |  Major | Replication, wal | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15190](https://issues.apache.org/jira/browse/HBASE-15190) | Monkey dies when running on shared cluster (gives up when can\'t kill the other fellows processes) |  Major | integration tests | stack | stack |
| [HBASE-15206](https://issues.apache.org/jira/browse/HBASE-15206) | Flakey testSplitDaughtersNotInMeta test |  Minor | flakey | huaxiang sun | huaxiang sun |
| [HBASE-15200](https://issues.apache.org/jira/browse/HBASE-15200) | ZooKeeper znode ACL checks should only compare the shortname |  Minor | security | Andrew Purtell | Andrew Purtell |
| [HBASE-15218](https://issues.apache.org/jira/browse/HBASE-15218) | On RS crash and replay of WAL, loosing all Tags in Cells |  Blocker | Recovery, regionserver, security | Anoop Sam John | Anoop Sam John |
| [HBASE-15209](https://issues.apache.org/jira/browse/HBASE-15209) | disable table in HBaseTestingUtility.truncateTable |  Minor | . | Appy | Appy |
| [HBASE-15214](https://issues.apache.org/jira/browse/HBASE-15214) | Valid mutate Ops fail with RPC Codec in use and region moves across |  Critical | . | Anoop Sam John | Anoop Sam John |
| [HBASE-14460](https://issues.apache.org/jira/browse/HBASE-14460) | [Perf Regression] Merge of MVCC and SequenceId (HBASE-8763) slowed Increments, CheckAndPuts, batch operations |  Critical | Performance | stack | stack |
| [HBASE-15216](https://issues.apache.org/jira/browse/HBASE-15216) | Canary does not accept config params from command line |  Major | canary | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-14192](https://issues.apache.org/jira/browse/HBASE-14192) | Fix REST Cluster constructor with String List |  Minor | REST | Rick Kellogg | Andrew Purtell |
| [HBASE-15221](https://issues.apache.org/jira/browse/HBASE-15221) | HTableMultiplexer improvements (stale region locations and resource leaks) |  Critical | Client | Josh Elser | Josh Elser |
| [HBASE-15252](https://issues.apache.org/jira/browse/HBASE-15252) | Data loss when replaying wal if HDFS timeout |  Blocker | wal | Duo Zhang | Duo Zhang |
| [HBASE-15079](https://issues.apache.org/jira/browse/HBASE-15079) | TestMultiParallel.validateLoadedData AssertionError: null |  Major | Client, flakey, test | stack | Heng Chen |
| [HBASE-15122](https://issues.apache.org/jira/browse/HBASE-15122) | Servlets generate XSS\_REQUEST\_PARAMETER\_TO\_SERVLET\_WRITER findbugs warnings |  Critical | UI | stack | Samir Ahmic |
| [HBASE-15198](https://issues.apache.org/jira/browse/HBASE-15198) | RPC client not using Codec and CellBlock for puts by default |  Critical | . | Anoop Sam John | Anoop Sam John |
| [HBASE-15283](https://issues.apache.org/jira/browse/HBASE-15283) | Revert to IOException in TimeRange constructor to maintain API compat in 1.x line |  Major | Client | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-15279](https://issues.apache.org/jira/browse/HBASE-15279) | OrderedBytes.isEncodedValue does not check for int8 and int16 types |  Major | . | Robert Yokota | Robert Yokota |
| [HBASE-15285](https://issues.apache.org/jira/browse/HBASE-15285) | Forward-port respect for isReturnResult from HBASE-15095 |  Major | Client | stack | stack |
| [HBASE-15247](https://issues.apache.org/jira/browse/HBASE-15247) | InclusiveStopFilter does not respect reverse Filter property |  Major | Filters | Rick Moritz | Amal Joshy |
| [HBASE-15319](https://issues.apache.org/jira/browse/HBASE-15319) | clearJmxCache does not take effect actually |  Major | metrics | Hao Lin | Elliott Clark |
| [HBASE-15358](https://issues.apache.org/jira/browse/HBASE-15358) | canEnforceTimeLimitFromScope should use timeScope instead of sizeScope |  Major | Scanners | Phil Yang | Phil Yang |
| [HBASE-15128](https://issues.apache.org/jira/browse/HBASE-15128) | Disable region splits and merges switch in master |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15397](https://issues.apache.org/jira/browse/HBASE-15397) | Create bulk load replication znode(hfile-refs) in ZK replication queue by default |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15393](https://issues.apache.org/jira/browse/HBASE-15393) | Enable table replication command will fail when parent znode is not default in peer cluster |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15137](https://issues.apache.org/jira/browse/HBASE-15137) | CallTimeoutException and CallQueueTooBigException should trigger PFFE |  Major | . | Elliott Clark | Mikhail Antonov |
| [HBASE-15378](https://issues.apache.org/jira/browse/HBASE-15378) | Scanner cannot handle heartbeat message with no results |  Critical | dataloss, Scanners | Phil Yang | Phil Yang |
| [HBASE-15425](https://issues.apache.org/jira/browse/HBASE-15425) | Failing to write bulk load event marker in the WAL is ignored |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-15439](https://issues.apache.org/jira/browse/HBASE-15439) | getMaximumAllowedTimeBetweenRuns in ScheduledChore ignores the TimeUnit |  Major | master, mob, regionserver | Ted Yu | Jingcheng Du |
| [HBASE-15463](https://issues.apache.org/jira/browse/HBASE-15463) | Region normalizer should check whether split/merge is enabled |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15430](https://issues.apache.org/jira/browse/HBASE-15430) | Failed taking snapshot - Manifest proto-message too large |  Critical | snapshots | JunHo Cho | JunHo Cho |
| [HBASE-15441](https://issues.apache.org/jira/browse/HBASE-15441) | Fix WAL splitting when region has moved multiple times |  Blocker | Recovery, wal | Elliott Clark | Elliott Clark |
| [HBASE-15490](https://issues.apache.org/jira/browse/HBASE-15490) | Remove duplicated CompactionThroughputControllerFactory in branch-1 |  Major | . | Yu Li | Yu Li |
| [HBASE-15433](https://issues.apache.org/jira/browse/HBASE-15433) | SnapshotManager#restoreSnapshot not update table and region count quota correctly when encountering exception |  Major | snapshots | Jianwei Cui | Jianwei Cui |
| [HBASE-15325](https://issues.apache.org/jira/browse/HBASE-15325) | ResultScanner allowing partial result will miss the rest of the row if the region is moved between two rpc requests |  Critical | dataloss, Scanners | Phil Yang | Phil Yang |
| [HBASE-15520](https://issues.apache.org/jira/browse/HBASE-15520) | Fix broken TestAsyncIPC |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-14256](https://issues.apache.org/jira/browse/HBASE-14256) | Flush task message may be confusing when region is recovered |  Major | regionserver | Lars George | Gabor Liptak |
| [HBASE-15515](https://issues.apache.org/jira/browse/HBASE-15515) | Improve LocalityBasedCandidateGenerator in Balancer |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15295](https://issues.apache.org/jira/browse/HBASE-15295) | MutateTableAccess.multiMutate() does not get high priority causing a deadlock |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15327](https://issues.apache.org/jira/browse/HBASE-15327) | Canary will always invoke admin.balancer() in each sniffing period when writeSniffing is enabled |  Minor | canary | Jianwei Cui | Jianwei Cui |
| [HBASE-15559](https://issues.apache.org/jira/browse/HBASE-15559) | BaseMasterAndRegionObserver doesn\'t implement all the methods |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15324](https://issues.apache.org/jira/browse/HBASE-15324) | Jitter may cause desiredMaxFileSize overflow in ConstantSizeRegionSplitPolicy and trigger unexpected split |  Major | . | Yu Li | Yu Li |
| [HBASE-15234](https://issues.apache.org/jira/browse/HBASE-15234) | ReplicationLogCleaner can abort due to transient ZK issues |  Critical | master, Replication | Gary Helmling | Gary Helmling |
| [HBASE-15424](https://issues.apache.org/jira/browse/HBASE-15424) | Add bulk load hfile-refs for replication in ZK after the event is appended in the WAL |  Minor | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15582](https://issues.apache.org/jira/browse/HBASE-15582) | SnapshotManifestV1 too verbose when there are no regions |  Trivial | master, snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15578](https://issues.apache.org/jira/browse/HBASE-15578) | Handle HBASE-15234 for ReplicationHFileCleaner |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15485](https://issues.apache.org/jira/browse/HBASE-15485) | Filter.reset() should not be called between batches |  Major | . | Phil Yang | Phil Yang |
| [HBASE-15587](https://issues.apache.org/jira/browse/HBASE-15587) | FSTableDescriptors.getDescriptor() logs stack trace erronously |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15591](https://issues.apache.org/jira/browse/HBASE-15591) | ServerCrashProcedure not yielding |  Major | . | Jerry He | Jerry He |
| [HBASE-15093](https://issues.apache.org/jira/browse/HBASE-15093) | Replication can report incorrect size of log queue for the global source when multiwal is enabled |  Minor | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-15627](https://issues.apache.org/jira/browse/HBASE-15627) |  Miss space and closing quote in AccessController#checkSystemOrSuperUser |  Minor | security | huaxiang sun | huaxiang sun |
| [HBASE-15621](https://issues.apache.org/jira/browse/HBASE-15621) | Suppress Hbase SnapshotHFile cleaner error  messages when a snaphot is going on |  Minor | snapshots | huaxiang sun | huaxiang sun |
| [HBASE-15636](https://issues.apache.org/jira/browse/HBASE-15636) | hard coded wait time out value in HBaseTestingUtility#waitUntilAllRegionsAssigned might cause test failure |  Minor | integration tests, test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15639](https://issues.apache.org/jira/browse/HBASE-15639) | Unguarded access to stackIndexes in Procedure#toStringDetails() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15637](https://issues.apache.org/jira/browse/HBASE-15637) | TSHA Thrift-2 server should allow limiting call queue size |  Major | Thrift | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15504](https://issues.apache.org/jira/browse/HBASE-15504) | Fix Balancer in 1.3 not moving regions off overloaded regionserver |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15405](https://issues.apache.org/jira/browse/HBASE-15405) | Synchronize final results logging single thread in PE, fix wrong defaults in help message |  Minor | Performance | Appy | Appy |
| [HBASE-15622](https://issues.apache.org/jira/browse/HBASE-15622) | Superusers does not consider the keytab credentials |  Critical | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15650](https://issues.apache.org/jira/browse/HBASE-15650) | Remove TimeRangeTracker as point of contention when many threads reading a StoreFile |  Major | Performance | stack | stack |
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
| [HBASE-15697](https://issues.apache.org/jira/browse/HBASE-15697) | Excessive TestHRegion running time on branch-1 |  Major | . | Andrew Purtell | ramkrishna.s.vasudevan |
| [HBASE-15676](https://issues.apache.org/jira/browse/HBASE-15676) | FuzzyRowFilter fails and matches all the rows in the table if the mask consists of all 0s |  Major | Filters | Rohit Sinha | Matt Warhaftig |
| [HBASE-14970](https://issues.apache.org/jira/browse/HBASE-14970) | Backport HBASE-13082 and its sub-jira to branch-1 |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15357](https://issues.apache.org/jira/browse/HBASE-15357) | TableInputFormatBase getSplitKey does not handle signed bytes correctly |  Major | mapreduce | Nathan Schile | Nathan Schile |
| [HBASE-15703](https://issues.apache.org/jira/browse/HBASE-15703) | Deadline scheduler needs to return to the client info about skipped calls, not just drop them |  Critical | IPC/RPC | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15714](https://issues.apache.org/jira/browse/HBASE-15714) | We are calling checkRow() twice in doMiniBatchMutation() |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15752](https://issues.apache.org/jira/browse/HBASE-15752) | ClassNotFoundException is encountered when custom WAL codec is not found in WALPlayer job |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15613](https://issues.apache.org/jira/browse/HBASE-15613) | TestNamespaceCommand times out |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15741](https://issues.apache.org/jira/browse/HBASE-15741) | Provide backward compatibility for HBase coprocessor service names |  Blocker | Coprocessors | Gary Helmling | Gary Helmling |
| [HBASE-15755](https://issues.apache.org/jira/browse/HBASE-15755) | SnapshotDescriptionUtils and SnapshotTestingUtils do not have any Interface audience marked |  Major | . | ramkrishna.s.vasudevan | Matteo Bertozzi |
| [HBASE-15563](https://issues.apache.org/jira/browse/HBASE-15563) | \'counter\' may overflow in BoundedGroupingStrategy |  Minor | wal | Duo Zhang | Matt Warhaftig |
| [HBASE-15292](https://issues.apache.org/jira/browse/HBASE-15292) | Refined ZooKeeperWatcher to prevent ZooKeeper\'s callback while construction |  Minor | Zookeeper | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-15669](https://issues.apache.org/jira/browse/HBASE-15669) | HFile size is not considered correctly in a replication request |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15738](https://issues.apache.org/jira/browse/HBASE-15738) | Ensure artifacts in project dist area include required md5 file |  Blocker | build, community | Sean Busbey | Nick Dimiduk |
| [HBASE-15801](https://issues.apache.org/jira/browse/HBASE-15801) | Upgrade checkstyle for all branches |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-15742](https://issues.apache.org/jira/browse/HBASE-15742) | Reduce allocation of objects in metrics |  Major | . | Phil Yang | Phil Yang |
| [HBASE-15811](https://issues.apache.org/jira/browse/HBASE-15811) | Batch Get after batch Put does not fetch all Cells |  Blocker | Client | stack | stack |
| [HBASE-15615](https://issues.apache.org/jira/browse/HBASE-15615) | Wrong sleep time when RegionServerCallable need retry |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15840](https://issues.apache.org/jira/browse/HBASE-15840) | WAL.proto compilation broken for cpp |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15593](https://issues.apache.org/jira/browse/HBASE-15593) | Time limit of scanning should be offered by client |  Major | . | Phil Yang | Phil Yang |
| [HBASE-15824](https://issues.apache.org/jira/browse/HBASE-15824) | LocalHBaseCluster gets bind exception in master info port |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15841](https://issues.apache.org/jira/browse/HBASE-15841) | Performance Evaluation tool total rows may not be set correctly |  Minor | . | Jerry He | Jerry He |
| [HBASE-15850](https://issues.apache.org/jira/browse/HBASE-15850) | Localize the configuration change in testCheckTableLocks to reduce flakiness of TestHBaseFsck test suite |  Major | hbck | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15617](https://issues.apache.org/jira/browse/HBASE-15617) | Canary in regionserver mode might not enumerate all regionservers |  Minor | . | Andrew Purtell | Sanjeev Lakshmanan |
| [HBASE-15465](https://issues.apache.org/jira/browse/HBASE-15465) | userPermission returned by getUserPermission() for the selected namespace does not have namespace set |  Minor | Protobufs | Xiang Li | Xiang Li |
| [HBASE-15856](https://issues.apache.org/jira/browse/HBASE-15856) | Cached Connection instances can wind up with addresses never resolved |  Critical | Client | Gary Helmling | Gary Helmling |
| [HBASE-14818](https://issues.apache.org/jira/browse/HBASE-14818) | user\_permission does not list namespace permissions |  Minor | hbase | Steven Hancz | Xiang Li |
| [HBASE-15873](https://issues.apache.org/jira/browse/HBASE-15873) | ACL for snapshot restore / clone is not enforced |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-15880](https://issues.apache.org/jira/browse/HBASE-15880) | RpcClientImpl#tracedWriteRequest incorrectly closes HTrace span |  Major | tracing | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15884](https://issues.apache.org/jira/browse/HBASE-15884) | NPE in StoreFileScanner#skipKVsNewerThanReadpoint during reverse scan |  Major | Scanners | Sergey Soldatov | Sergey Soldatov |
| [HBASE-11625](https://issues.apache.org/jira/browse/HBASE-11625) | Reading datablock throws "Invalid HFile block magic" and can not switch to hdfs checksum |  Major | HFile | qian wang | Appy |
| [HBASE-15693](https://issues.apache.org/jira/browse/HBASE-15693) | Reconsider the ImportOrder rule of checkstyle |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-15920](https://issues.apache.org/jira/browse/HBASE-15920) | Backport submit-patch.py to branch-1 and earlier branches. |  Minor | . | Appy | Appy |
| [HBASE-15955](https://issues.apache.org/jira/browse/HBASE-15955) | Disable action in CatalogJanitor#setEnabled should wait for active cleanup scan to finish |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15954](https://issues.apache.org/jira/browse/HBASE-15954) | REST server should log requests with TRACE instead of DEBUG |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15698](https://issues.apache.org/jira/browse/HBASE-15698) | Increment TimeRange not serialized to server |  Blocker | . | James Taylor | Ted Yu |
| [HBASE-15913](https://issues.apache.org/jira/browse/HBASE-15913) | Sasl encryption doesn\'t work with AsyncRpcChannel |  Major | . | Colin Ma | Colin Ma |
| [HBASE-15957](https://issues.apache.org/jira/browse/HBASE-15957) | RpcClientImpl.close never ends in some circumstances |  Major | Client, rpc | Sergey Soldatov | Sergey Soldatov |
| [HBASE-15975](https://issues.apache.org/jira/browse/HBASE-15975) | logic in TestHTableDescriptor#testAddCoprocessorWithSpecStr is wrong |  Trivial | test | huaxiang sun | huaxiang sun |
| [HBASE-15952](https://issues.apache.org/jira/browse/HBASE-15952) | Bulk load data replication is not working when RS user does not have permission on hfile-refs node |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15946](https://issues.apache.org/jira/browse/HBASE-15946) | Eliminate possible security concerns in RS web UI\'s store file metrics |  Major | . | Sean Mackrory | Sean Mackrory |
| [HBASE-14644](https://issues.apache.org/jira/browse/HBASE-14644) | Region in transition metric is broken |  Major | . | Elliott Clark | huaxiang sun |
| [HBASE-16007](https://issues.apache.org/jira/browse/HBASE-16007) | Job\'s Configuration should be passed to TableMapReduceUtil#addDependencyJars() in WALPlayer |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16016](https://issues.apache.org/jira/browse/HBASE-16016) | AssignmentManager#waitForAssignment could have unexpected negative deadline |  Major | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15746](https://issues.apache.org/jira/browse/HBASE-15746) | Remove extra RegionCoprocessor preClose() in RSRpcServices#closeRegion |  Minor | Coprocessors, regionserver | Matteo Bertozzi | Stephen Yuan Jiang |
| [HBASE-16017](https://issues.apache.org/jira/browse/HBASE-16017) | HBase TableOutputFormat has connection leak in getRecordWriter |  Major | mapreduce | Zhan Zhang | Zhan Zhang |
| [HBASE-16024](https://issues.apache.org/jira/browse/HBASE-16024) | Revert HBASE-15406 from branch-1.3 |  Major | . | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15908](https://issues.apache.org/jira/browse/HBASE-15908) | Checksum verification is broken due to incorrect passing of ByteBuffers in DataChecksum |  Blocker | HFile | Mikhail Antonov | Mikhail Antonov |
| [HBASE-16047](https://issues.apache.org/jira/browse/HBASE-16047) | TestFastFail is broken again |  Major | test | Mikhail Antonov | Mikhail Antonov |
| [HBASE-16061](https://issues.apache.org/jira/browse/HBASE-16061) | Allow logging to a buffered console |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-14485](https://issues.apache.org/jira/browse/HBASE-14485) | ConnectionImplementation leaks on construction failure |  Major | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16032](https://issues.apache.org/jira/browse/HBASE-16032) | Possible memory leak in StoreScanner |  Major | . | Yu Li | Yu Li |
| [HBASE-16062](https://issues.apache.org/jira/browse/HBASE-16062) | Improper error handling in WAL Reader/Writer creation |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16012](https://issues.apache.org/jira/browse/HBASE-16012) | Major compaction can\'t work due to obsolete scanner read point in RegionServer |  Major | Compaction, Scanners | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15976](https://issues.apache.org/jira/browse/HBASE-15976) | RegionServerMetricsWrapperRunnable will be failure  when disable blockcache. |  Major | . | Liu Junhong | Jingcheng Du |
| [HBASE-16129](https://issues.apache.org/jira/browse/HBASE-16129) | check\_compatibility.sh is broken when using Java API Compliance Checker v1.7 |  Major | test | Dima Spivak | Dima Spivak |
| [HBASE-16093](https://issues.apache.org/jira/browse/HBASE-16093) | Splits failed before creating daughter regions leave meta inconsistent |  Critical | master, Region Assignment | Elliott Clark | Elliott Clark |
| [HBASE-16135](https://issues.apache.org/jira/browse/HBASE-16135) | PeerClusterZnode under rs of removed peer may never be deleted |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-16132](https://issues.apache.org/jira/browse/HBASE-16132) | Scan does not return all the result when regionserver is busy |  Major | Client | binlijin | binlijin |
| [HBASE-16177](https://issues.apache.org/jira/browse/HBASE-16177) | In dev mode thrift server can\'t be run |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-16190](https://issues.apache.org/jira/browse/HBASE-16190) | IntegrationTestDDLMasterFailover failed with IllegalArgumentException: n must be positive |  Minor | . | Romil Choksi | Romil Choksi |
| [HBASE-15925](https://issues.apache.org/jira/browse/HBASE-15925) | compat-module maven variable not evaluated |  Blocker | build | Nick Dimiduk | Sean Busbey |
| [HBASE-15775](https://issues.apache.org/jira/browse/HBASE-15775) | Canary launches two AuthUtil Chores |  Minor | canary | Sean Busbey | Vishal Khandelwal |
| [HBASE-16201](https://issues.apache.org/jira/browse/HBASE-16201) | NPE in RpcServer causing intermittent UT failure of TestMasterReplication#testHFileCyclicReplication |  Major | . | Yu Li | Yu Li |
| [HBASE-16074](https://issues.apache.org/jira/browse/HBASE-16074) | ITBLL fails, reports lost big or tiny families |  Blocker | integration tests | Mikhail Antonov | stack |
| [HBASE-16160](https://issues.apache.org/jira/browse/HBASE-16160) | Get the UnsupportedOperationException when using delegation token with encryption |  Blocker | . | Colin Ma | Colin Ma |
| [HBASE-16081](https://issues.apache.org/jira/browse/HBASE-16081) | Replication remove\_peer gets stuck and blocks WAL rolling |  Blocker | regionserver, Replication | Ashu Pachauri | Joseph |
| [HBASE-16207](https://issues.apache.org/jira/browse/HBASE-16207) | can\'t restore snapshot without "Admin" permission |  Major | master, snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16150](https://issues.apache.org/jira/browse/HBASE-16150) | Remove ConcurrentIndex |  Major | . | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-16211](https://issues.apache.org/jira/browse/HBASE-16211) | JMXCacheBuster restarting the metrics system might cause tests to hang |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16227](https://issues.apache.org/jira/browse/HBASE-16227) | [Shell] Column value formatter not working in scans |  Major | . | Appy | Appy |
| [HBASE-16095](https://issues.apache.org/jira/browse/HBASE-16095) | Add priority to TableDescriptor and priority region open thread pool |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16144](https://issues.apache.org/jira/browse/HBASE-16144) | Replication queue\'s lock will live forever if RS acquiring the lock has died prematurely |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16237](https://issues.apache.org/jira/browse/HBASE-16237) | Blocks for hbase:meta table are not cached in L1 cache |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16238](https://issues.apache.org/jira/browse/HBASE-16238) | It\'s useless to catch SESSIONEXPIRED exception and retry in RecoverableZooKeeper |  Minor | Zookeeper | Allan Yang |  |
| [HBASE-16272](https://issues.apache.org/jira/browse/HBASE-16272) | Overflow in ServerName\'s compareTo method |  Major | hbase | huaxiang sun | huaxiang sun |
| [HBASE-16221](https://issues.apache.org/jira/browse/HBASE-16221) | Thrift server drops connection on long scans |  Major | Thrift | Ashu Pachauri | Joseph |
| [HBASE-16281](https://issues.apache.org/jira/browse/HBASE-16281) | TestMasterReplication is flaky |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16096](https://issues.apache.org/jira/browse/HBASE-16096) | Replication keeps accumulating znodes |  Major | Replication | Ashu Pachauri | Joseph |
| [HBASE-16289](https://issues.apache.org/jira/browse/HBASE-16289) | AsyncProcess stuck messages need to print region/server |  Critical | Operability | stack | Yu Li |
| [HBASE-16300](https://issues.apache.org/jira/browse/HBASE-16300) | LruBlockCache.CACHE\_FIXED\_OVERHEAD should calculate LruBlockCache size correctly |  Major | . | Yu Sun | Yu Sun |
| [HBASE-16288](https://issues.apache.org/jira/browse/HBASE-16288) | HFile intermediate block level indexes might recurse forever creating multi TB files |  Critical | HFile | Enis Soztutar | Enis Soztutar |
| [HBASE-16296](https://issues.apache.org/jira/browse/HBASE-16296) | Reverse scan performance degrades when using filter lists |  Major | Filters | James Taylor | Ted Yu |
| [HBASE-16284](https://issues.apache.org/jira/browse/HBASE-16284) | Unauthorized client can shutdown the cluster |  Major | . | Deokwoo Han | Deokwoo Han |
| [HBASE-16315](https://issues.apache.org/jira/browse/HBASE-16315) | RegionSizeCalculator prints region names as binary without escapes |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16319](https://issues.apache.org/jira/browse/HBASE-16319) | Fix TestCacheOnWrite after HBASE-16288 |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-16301](https://issues.apache.org/jira/browse/HBASE-16301) | Trigger flush without waiting when compaction is disabled on a table |  Minor | . | huaxiang sun | huaxiang sun |
| [HBASE-16271](https://issues.apache.org/jira/browse/HBASE-16271) | Fix logging and re-run the test in IntegrationTestBulkLoad |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16350](https://issues.apache.org/jira/browse/HBASE-16350) | Undo server abort from HBASE-14968 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15574](https://issues.apache.org/jira/browse/HBASE-15574) | Minor typo on HRegionServerCommandLine.java |  Trivial | . | Lim Chee Hau | Lim Chee Hau |
| [HBASE-16303](https://issues.apache.org/jira/browse/HBASE-16303) | FilterList with MUST\_PASS\_ONE optimization |  Major | Filters | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16368](https://issues.apache.org/jira/browse/HBASE-16368) | test\*WhenRegionMove in TestPartialResultsFromClientSide is flaky |  Major | Scanners | Guanghao Zhang | Phil Yang |
| [HBASE-16363](https://issues.apache.org/jira/browse/HBASE-16363) | Correct javadoc for qualifier length and value length in Cell interface |  Minor | documentation | Xiang Li | Xiang Li |
| [HBASE-16341](https://issues.apache.org/jira/browse/HBASE-16341) | Missing bit on "Regression: Random Read/WorkloadC slower in 1.x than 0.98" |  Major | rpc | stack | stack |
| [HBASE-16429](https://issues.apache.org/jira/browse/HBASE-16429) | FSHLog: deadlock if rollWriter called when ring buffer filled with appends |  Critical | . | Yu Li | Yu Li |
| [HBASE-16360](https://issues.apache.org/jira/browse/HBASE-16360) | TableMapReduceUtil addHBaseDependencyJars has the wrong class name for PrefixTreeCodec |  Minor | mapreduce | Matteo Bertozzi | Jing Pu Chen |
| [HBASE-16464](https://issues.apache.org/jira/browse/HBASE-16464) | archive folder grows bigger and bigger due to corrupt snapshot under tmp dir |  Major | snapshots | Heng Chen | Heng Chen |
| [HBASE-16471](https://issues.apache.org/jira/browse/HBASE-16471) | Region Server metrics context will be wrong when machine hostname contain "master" word |  Minor | metrics | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16270](https://issues.apache.org/jira/browse/HBASE-16270) | Handle duplicate clearing of snapshot in region replicas |  Major | Replication | Robert Yokota | Robert Yokota |
| [HBASE-16304](https://issues.apache.org/jira/browse/HBASE-16304) | HRegion#RegionScannerImpl#handleFileNotFoundException may lead to deadlock when trying to obtain write lock on updatesLock |  Critical | . | mingmin xu | Ted Yu |
| [HBASE-16535](https://issues.apache.org/jira/browse/HBASE-16535) | Use regex to exclude generated classes for findbugs |  Major | findbugs | Duo Zhang | Duo Zhang |
| [HBASE-16528](https://issues.apache.org/jira/browse/HBASE-16528) | Procedure-V2: ServerCrashProcedure misses owner information |  Major | hbase, master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16527](https://issues.apache.org/jira/browse/HBASE-16527) | IOExceptions from DFS client still can cause CatalogJanitor to delete referenced files |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16375](https://issues.apache.org/jira/browse/HBASE-16375) | Mapreduce mini cluster using HBaseTestingUtility not setting correct resourcemanager and jobhistory webapp address of MapReduceTestingShim |  Minor | . | Loknath Priyatham Teja Singamsetty | Loknath Priyatham Teja Singamsetty |
| [HBASE-16547](https://issues.apache.org/jira/browse/HBASE-16547) | hbase-archetype-builder shell scripts assume bash is installed in /bin |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-16552](https://issues.apache.org/jira/browse/HBASE-16552) | MiniHBaseCluster#getServerWith() does not ignore stopped RSs |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16460](https://issues.apache.org/jira/browse/HBASE-16460) | Can\'t rebuild the BucketAllocator\'s data structures when BucketCache uses FileIOEngine |  Major | BucketCache | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16589](https://issues.apache.org/jira/browse/HBASE-16589) | Adjust log level for FATAL messages from HBaseReplicationEndpoint that are not fatal |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-16613](https://issues.apache.org/jira/browse/HBASE-16613) | Return the unused ByteBuffer to BoundedByteBufferPool when no cell is retrieved from the CellScanner |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16165](https://issues.apache.org/jira/browse/HBASE-16165) | Decrease RpcServer.callQueueSize before writeResponse causes OOM |  Minor | IPC/RPC, rpc | Duo Zhang | Guanghao Zhang |
| [HBASE-16294](https://issues.apache.org/jira/browse/HBASE-16294) | hbck reporting "No HDFS region dir found" for replicas |  Minor | hbck | Matteo Bertozzi | Umesh Agashe |
| [HBASE-16662](https://issues.apache.org/jira/browse/HBASE-16662) | Fix open POODLE vulnerabilities |  Major | REST, Thrift | Ben Lau | Ben Lau |
| [HBASE-16604](https://issues.apache.org/jira/browse/HBASE-16604) | Scanner retries on IOException can cause the scans to miss data |  Major | regionserver, Scanners | Enis Soztutar | Enis Soztutar |
| [HBASE-16679](https://issues.apache.org/jira/browse/HBASE-16679) | Flush throughput controller: Minor perf change and fix flaky TestFlushWithThroughputController |  Major | . | Appy | Appy |
| [HBASE-16649](https://issues.apache.org/jira/browse/HBASE-16649) | Truncate table with splits preserved can cause both data loss and truncated data appeared again |  Major | . | Allan Yang | Matteo Bertozzi |
| [HBASE-16660](https://issues.apache.org/jira/browse/HBASE-16660) | ArrayIndexOutOfBounds during the majorCompactionCheck in DateTieredCompaction |  Major | Compaction | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-16682](https://issues.apache.org/jira/browse/HBASE-16682) | Fix Shell tests failure. NoClassDefFoundError for MiniKdc |  Major | . | Appy | Appy |
| [HBASE-16723](https://issues.apache.org/jira/browse/HBASE-16723) | RMI registry is not destroyed after stopping JMX Connector Server |  Major | metrics | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16732](https://issues.apache.org/jira/browse/HBASE-16732) | Avoid possible NPE in MetaTableLocator |  Minor | . | Jerry He | Jerry He |
| [HBASE-16678](https://issues.apache.org/jira/browse/HBASE-16678) | MapReduce jobs do not update counters from ScanMetrics |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16373](https://issues.apache.org/jira/browse/HBASE-16373) | precommit needs a dockerfile with hbase prereqs |  Critical | build | Sean Busbey | Duo Zhang |
| [HBASE-16644](https://issues.apache.org/jira/browse/HBASE-16644) | Errors when reading legit HFile Trailer of old (v2.0) format file |  Critical | HFile | Mikhail Antonov | Mikhail Antonov |
| [HBASE-16681](https://issues.apache.org/jira/browse/HBASE-16681) | Fix flaky TestReplicationSourceManagerZkImpl |  Major | . | Appy | Ashu Pachauri |
| [HBASE-16699](https://issues.apache.org/jira/browse/HBASE-16699) | Overflows in AverageIntervalRateLimiter\'s refill() and getWaitInterval() |  Major | . | huaxiang sun | huaxiang sun |
| [HBASE-16788](https://issues.apache.org/jira/browse/HBASE-16788) | Race in compacted file deletion between HStore close() and closeAndArchiveCompactedFiles() |  Blocker | regionserver | Gary Helmling | Gary Helmling |
| [HBASE-16807](https://issues.apache.org/jira/browse/HBASE-16807) | RegionServer will fail to report new active Hmaster until HMaster/RegionServer failover |  Major | regionserver | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16664](https://issues.apache.org/jira/browse/HBASE-16664) | Timeout logic in AsyncProcess is broken |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16810](https://issues.apache.org/jira/browse/HBASE-16810) | HBase Balancer throws ArrayIndexOutOfBoundsException when regionservers are in /hbase/draining znode and unloaded |  Major | Balancer | Ashu Pachauri | David Pope |
| [HBASE-16830](https://issues.apache.org/jira/browse/HBASE-16830) | RSRpcServices#openRegion() should handle the case where table descriptor is null |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16853](https://issues.apache.org/jira/browse/HBASE-16853) | Regions are assigned to Region Servers in /hbase/draining after HBase Master failover |  Major | Balancer, Region Assignment | David Pope | David Pope |
| [HBASE-16721](https://issues.apache.org/jira/browse/HBASE-16721) | Concurrency issue in WAL unflushed seqId tracking |  Critical | wal | Enis Soztutar | Enis Soztutar |
| [HBASE-16824](https://issues.apache.org/jira/browse/HBASE-16824) | Writer.flush() can be called on already closed streams in WAL roll |  Major | wal | Atri Sharma | Enis Soztutar |
| [HBASE-16752](https://issues.apache.org/jira/browse/HBASE-16752) | Upgrading from 1.2 to 1.3 can lead to replication failures due to difference in RPC size limit |  Major | Replication, rpc | Ashu Pachauri | Ashu Pachauri |
| [HBASE-16889](https://issues.apache.org/jira/browse/HBASE-16889) | Proc-V2: verifyTables in the IntegrationTestDDLMasterFailover test after each table DDL is incorrect |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16701](https://issues.apache.org/jira/browse/HBASE-16701) | TestHRegion and TestHRegionWithInMemoryFlush timing out |  Major | regionserver, test | Appy | Sean Busbey |
| [HBASE-15348](https://issues.apache.org/jira/browse/HBASE-15348) | Fix tests broken by recent metrics re-work |  Major | metrics, test | Elliott Clark | Elliott Clark |
| [HBASE-16754](https://issues.apache.org/jira/browse/HBASE-16754) | Regions failing compaction due to referencing non-existent store file |  Blocker | . | Gary Helmling | Gary Helmling |
| [HBASE-16743](https://issues.apache.org/jira/browse/HBASE-16743) | TestSimpleRpcScheduler#testCoDelScheduling is broke |  Major | rpc | stack | Mikhail Antonov |
| [HBASE-16980](https://issues.apache.org/jira/browse/HBASE-16980) | TestRowProcessorEndpoint failing consistently |  Major | . | Andrew Purtell | Yu Li |
| [HBASE-16931](https://issues.apache.org/jira/browse/HBASE-16931) | Setting cell\'s seqId to zero in compaction flow might cause RS down. |  Critical | regionserver | binlijin | binlijin |
| [HBASE-16964](https://issues.apache.org/jira/browse/HBASE-16964) | Successfully archived files are not cleared from compacted store file list if archiving of any file fails |  Blocker | regionserver | Gary Helmling | Gary Helmling |
| [HBASE-16960](https://issues.apache.org/jira/browse/HBASE-16960) | RegionServer hang when aborting |  Critical | . | binlijin | binlijin |
| [HBASE-17032](https://issues.apache.org/jira/browse/HBASE-17032) | CallQueueTooBigException and CallDroppedException should not be triggering PFFE |  Major | Client | Mikhail Antonov | Mikhail Antonov |
| [HBASE-17042](https://issues.apache.org/jira/browse/HBASE-17042) | Remove \'public\' keyword from MasterObserver interface |  Minor | Coprocessors | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-17074](https://issues.apache.org/jira/browse/HBASE-17074) | PreCommit job always fails because of OOM |  Critical | build | Duo Zhang | Duo Zhang |
| [HBASE-17044](https://issues.apache.org/jira/browse/HBASE-17044) | Fix merge failed before creating merged region leaves meta inconsistent |  Critical | regionserver | Andrew Purtell | Andrew Purtell |
| [HBASE-17091](https://issues.apache.org/jira/browse/HBASE-17091) | IntegrationTestZKAndFSPermissions failed with \'KeeperException$NoNodeException\' |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-17058](https://issues.apache.org/jira/browse/HBASE-17058) | Lower epsilon used for jitter verification from HBASE-15324 |  Major | Compaction | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-17224](https://issues.apache.org/jira/browse/HBASE-17224) | There are lots of spelling errors in the HBase logging and exception messages |  Trivial | Client, io, mapreduce, master, regionserver, security, wal | Grant Sohn | Grant Sohn |
| [HBASE-17023](https://issues.apache.org/jira/browse/HBASE-17023) | Region left unassigned due to AM and SSH each thinking others would do the assignment work |  Major | Region Assignment | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-17328](https://issues.apache.org/jira/browse/HBASE-17328) | Properly dispose of looped replication peers |  Critical | Replication | Vincent Poon | Vincent Poon |
| [HBASE-17341](https://issues.apache.org/jira/browse/HBASE-17341) | Add a timeout during replication endpoint termination |  Critical | . | Vincent Poon | Vincent Poon |
| [HBASE-16663](https://issues.apache.org/jira/browse/HBASE-16663) | JMX ConnectorServer stopped when unauthorized user try to stop HM/RS/cluster |  Critical | metrics, security | Pankaj Kumar | Pankaj Kumar |
| [HBASE-17238](https://issues.apache.org/jira/browse/HBASE-17238) | Wrong in-memory hbase:meta location causing SSH failure |  Critical | Region Assignment | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16852](https://issues.apache.org/jira/browse/HBASE-16852) | TestDefaultCompactSelection failed on branch-1.3 |  Major | test | Mikhail Antonov | Duo Zhang |
| [HBASE-17424](https://issues.apache.org/jira/browse/HBASE-17424) | Protect REST client against malicious XML responses. |  Major | REST | Josh Elser | Josh Elser |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14197](https://issues.apache.org/jira/browse/HBASE-14197) | TestRegionServerHostname#testInvalidRegionServerHostnameAbortsServer fails in Jenkins |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-14200](https://issues.apache.org/jira/browse/HBASE-14200) | Separate RegionReplica subtests of TestStochasticLoadBalancer into TestStochasticLoadBalancer2 |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-14210](https://issues.apache.org/jira/browse/HBASE-14210) | Create test for cell level ACLs involving user group |  Major | test | Ted Yu | Ashish Singhi |
| [HBASE-14277](https://issues.apache.org/jira/browse/HBASE-14277) | TestRegionServerHostname.testRegionServerHostname may fail at host with a case sensitive name |  Minor | test | Liu Shaohui | Liu Shaohui |
| [HBASE-14293](https://issues.apache.org/jira/browse/HBASE-14293) | TestStochasticBalancerJmxMetrics intermittently fails due to port conflict |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-14758](https://issues.apache.org/jira/browse/HBASE-14758) | Add UT case for unchecked error/exception thrown in AsyncProcess#sendMultiAction |  Minor | Client, test | Yu Li | Yu Li |
| [HBASE-14584](https://issues.apache.org/jira/browse/HBASE-14584) | TestNamespacesInstanceModel fails on jdk8 |  Major | REST, test | Nick Dimiduk | Matt Warhaftig |
| [HBASE-14839](https://issues.apache.org/jira/browse/HBASE-14839) | [branch-1] Backport test categories so that patch backport is easier |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-13590](https://issues.apache.org/jira/browse/HBASE-13590) | TestEnableTableHandler.testEnableTableWithNoRegionServers is flakey |  Major | master | Nick Dimiduk | Yu Li |
| [HBASE-13372](https://issues.apache.org/jira/browse/HBASE-13372) | Unit tests for SplitTransaction and RegionMergeTransaction listeners |  Major | . | Andrew Purtell | Gabor Liptak |
| [HBASE-15679](https://issues.apache.org/jira/browse/HBASE-15679) | Assertion on wrong variable in TestReplicationThrottler#testThrottling |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15923](https://issues.apache.org/jira/browse/HBASE-15923) | Shell rows counter test fails |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16051](https://issues.apache.org/jira/browse/HBASE-16051) | TestScannerHeartbeatMessages fails on some machines |  Major | test | Mikhail Antonov | Phil Yang |
| [HBASE-16049](https://issues.apache.org/jira/browse/HBASE-16049) | TestRowProcessorEndpoint is failing on Apache Builds |  Major | . | Mikhail Antonov | Guanghao Zhang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13909](https://issues.apache.org/jira/browse/HBASE-13909) | create 1.2 branch |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-13470](https://issues.apache.org/jira/browse/HBASE-13470) | High level Integration test for master DDL operations |  Major | master | Enis Soztutar | Sophia Feng |
| [HBASE-13920](https://issues.apache.org/jira/browse/HBASE-13920) | Exclude Java files generated from protobuf from javadoc |  Minor | . | Gabor Liptak | Gabor Liptak |
| [HBASE-13967](https://issues.apache.org/jira/browse/HBASE-13967) | add jdk profiles for jdk.tools dependency |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-13973](https://issues.apache.org/jira/browse/HBASE-13973) | Update documentation for 10070 Phase 2 changes |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14003](https://issues.apache.org/jira/browse/HBASE-14003) | work around jdk8 spec bug in WALPerfEval |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-13990](https://issues.apache.org/jira/browse/HBASE-13990) | clean up remaining errors for maven site goal |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-13415](https://issues.apache.org/jira/browse/HBASE-13415) | Procedure V2 - Use nonces for double submits from client |  Blocker | master | Enis Soztutar | Stephen Yuan Jiang |
| [HBASE-13832](https://issues.apache.org/jira/browse/HBASE-13832) | Procedure V2: master fail to start due to WALProcedureStore sync failures when HDFS data nodes count is low |  Blocker | master, proc-v2 | Stephen Yuan Jiang | Matteo Bertozzi |
| [HBASE-14086](https://issues.apache.org/jira/browse/HBASE-14086) | remove unused bundled dependencies |  Blocker | documentation | Sean Busbey | Sean Busbey |
| [HBASE-14176](https://issues.apache.org/jira/browse/HBASE-14176) | Add missing headers to META-INF files |  Trivial | build | Andrew Purtell | Andrew Purtell |
| [HBASE-14105](https://issues.apache.org/jira/browse/HBASE-14105) | Add shell tests for Snapshot |  Major | test | Ashish Singhi | Ashish Singhi |
| [HBASE-14087](https://issues.apache.org/jira/browse/HBASE-14087) | ensure correct ASF policy compliant headers on source/docs |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14274](https://issues.apache.org/jira/browse/HBASE-14274) | Deadlock in region metrics on shutdown: MetricsRegionSourceImpl vs MetricsRegionAggregateSourceImpl |  Major | test | stack | Elliott Clark |
| [HBASE-14239](https://issues.apache.org/jira/browse/HBASE-14239) | Branch-1.2 AM can get stuck when meta moves |  Major | Region Assignment | Elliott Clark | Elliott Clark |
| [HBASE-13212](https://issues.apache.org/jira/browse/HBASE-13212) | Procedure V2 - master Create/Modify/Delete namespace |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-14423](https://issues.apache.org/jira/browse/HBASE-14423) | TestStochasticBalancerJmxMetrics.testJmxMetrics\_PerTableMode:183 NullPointer |  Major | test | stack | stack |
| [HBASE-14421](https://issues.apache.org/jira/browse/HBASE-14421) | TestFastFail\* are flakey |  Major | test | stack | stack |
| [HBASE-14428](https://issues.apache.org/jira/browse/HBASE-14428) | Upgrade our surefire-plugin from 2.18 to 2.18.1 |  Major | test | stack | stack |
| [HBASE-14435](https://issues.apache.org/jira/browse/HBASE-14435) | thrift tests don\'t have test-specific hbase-site.xml so \'BindException: Address already in use\' because info port is not turned off |  Major | test | stack | stack |
| [HBASE-14401](https://issues.apache.org/jira/browse/HBASE-14401) | Stamp failed appends with sequenceid too.... Cleans up latches |  Major | test, wal | stack | stack |
| [HBASE-14433](https://issues.apache.org/jira/browse/HBASE-14433) | Set down the client executor core thread count from 256 in tests |  Major | test | stack | stack |
| [HBASE-14278](https://issues.apache.org/jira/browse/HBASE-14278) | Fix NPE that is showing up since HBASE-14274 went in |  Major | test | stack | Elliott Clark |
| [HBASE-14447](https://issues.apache.org/jira/browse/HBASE-14447) | Spark tests failing: bind exception when putting up info server |  Minor | test | stack | stack |
| [HBASE-14147](https://issues.apache.org/jira/browse/HBASE-14147) | REST Support for Namespaces |  Minor | REST | Rick Kellogg | Matt Warhaftig |
| [HBASE-14472](https://issues.apache.org/jira/browse/HBASE-14472) | TestHCM and TestRegionServerNoMaster fixes |  Minor | test | stack | stack |
| [HBASE-14464](https://issues.apache.org/jira/browse/HBASE-14464) | Removed unused fs code |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14484](https://issues.apache.org/jira/browse/HBASE-14484) | Follow-on from HBASE-14421, just disable TestFastFail\* until someone digs in and fixes it |  Major | test | stack | stack |
| [HBASE-14378](https://issues.apache.org/jira/browse/HBASE-14378) | Get TestAccessController\* passing again on branch-1 |  Major | . | stack | stack |
| [HBASE-12748](https://issues.apache.org/jira/browse/HBASE-12748) | RegionCoprocessorHost.execOperation creates too many iterator objects |  Major | . | Vladimir Rodionov | Andrew Purtell |
| [HBASE-14051](https://issues.apache.org/jira/browse/HBASE-14051) | Undo workarounds in IntegrationTestDDLMasterFailover for client double submit |  Major | master | Enis Soztutar | Stephen Yuan Jiang |
| [HBASE-14212](https://issues.apache.org/jira/browse/HBASE-14212) | Add IT test for procedure-v2-based namespace DDL |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-14430](https://issues.apache.org/jira/browse/HBASE-14430) | TestHttpServerLifecycle#testStartedServerIsAlive times out |  Major | test | stack | stack |
| [HBASE-14513](https://issues.apache.org/jira/browse/HBASE-14513) | TestBucketCache runs obnoxious 1k threads in a unit test |  Major | test | stack | stack |
| [HBASE-14465](https://issues.apache.org/jira/browse/HBASE-14465) | Backport \'Allow rowlock to be reader/write\' to branch-1 |  Major | regionserver | stack | stack |
| [HBASE-14539](https://issues.apache.org/jira/browse/HBASE-14539) | Slight improvement of StoreScanner.optimize |  Minor | Performance, Scanners | Lars Hofhansl | Lars Hofhansl |
| [HBASE-14559](https://issues.apache.org/jira/browse/HBASE-14559) | branch-1 test tweeks; disable assert explicit region lands post-restart and up a few handlers |  Major | test | stack | stack |
| [HBASE-14561](https://issues.apache.org/jira/browse/HBASE-14561) | Disable zombie TestReplicationShell |  Major | test | stack | stack |
| [HBASE-14563](https://issues.apache.org/jira/browse/HBASE-14563) | Disable zombie TestHFileOutputFormat2 |  Major | test | stack | stack |
| [HBASE-14519](https://issues.apache.org/jira/browse/HBASE-14519) | Purge TestFavoredNodeAssignmentHelper, a test for an abandoned feature that can hang |  Major | test | stack | stack |
| [HBASE-14571](https://issues.apache.org/jira/browse/HBASE-14571) | Purge TestProcessBasedCluster; it does nothing and then fails |  Major | test | stack | stack |
| [HBASE-14572](https://issues.apache.org/jira/browse/HBASE-14572) | TestImportExport#testImport94Table can\'t find its src data file |  Major | test | stack | stack |
| [HBASE-14585](https://issues.apache.org/jira/browse/HBASE-14585) | Clean up TestSnapshotCloneIndependence |  Major | flakey, test | Elliott Clark | Elliott Clark |
| [HBASE-13819](https://issues.apache.org/jira/browse/HBASE-13819) | Make RPC layer CellBlock buffer a DirectByteBuffer |  Major | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-14600](https://issues.apache.org/jira/browse/HBASE-14600) | Make #testWalRollOnLowReplication looser still |  Major | test | stack | stack |
| [HBASE-14596](https://issues.apache.org/jira/browse/HBASE-14596) | TestCellACLs failing... on1.2 builds |  Major | test | stack | stack |
| [HBASE-14622](https://issues.apache.org/jira/browse/HBASE-14622) | Purge TestZkLess\* tests from branch-1 |  Major | test | stack | stack |
| [HBASE-14637](https://issues.apache.org/jira/browse/HBASE-14637) | Loosen TestChoreService assert AND have TestDataBlockEncoders do less work (and add timeouts) |  Major | test | stack | stack |
| [HBASE-14647](https://issues.apache.org/jira/browse/HBASE-14647) | Disable TestWALProcedureStoreOnHDFS#testWalRollOnLowReplication |  Major | test | stack | stack |
| [HBASE-14646](https://issues.apache.org/jira/browse/HBASE-14646) | Move TestCellACLs from medium to large category |  Minor | test | stack | stack |
| [HBASE-14656](https://issues.apache.org/jira/browse/HBASE-14656) | Move TestAssignmentManager from medium to large category |  Major | test | stack | stack |
| [HBASE-14662](https://issues.apache.org/jira/browse/HBASE-14662) | Fix NPE in HFileOutputFormat2 |  Major | . | Heng Chen | Heng Chen |
| [HBASE-14657](https://issues.apache.org/jira/browse/HBASE-14657) | Remove unneeded API from EncodedSeeker |  Major | io | Lars Hofhansl | Heng Chen |
| [HBASE-14535](https://issues.apache.org/jira/browse/HBASE-14535) | Integration test for rpc connection concurrency / deadlock testing |  Major | IPC/RPC | Enis Soztutar | Enis Soztutar |
| [HBASE-14648](https://issues.apache.org/jira/browse/HBASE-14648) | Reenable TestWALProcedureStoreOnHDFS#testWalRollOnLowReplication |  Critical | test | stack | Heng Chen |
| [HBASE-14698](https://issues.apache.org/jira/browse/HBASE-14698) | Set category timeouts on TestScanner and TestNamespaceAuditor |  Major | test | stack | stack |
| [HBASE-14702](https://issues.apache.org/jira/browse/HBASE-14702) | TestZKProcedureControllers.testZKCoordinatorControllerWithSingleMemberCohort is a flakey |  Major | flakey, test | stack | stack |
| [HBASE-14709](https://issues.apache.org/jira/browse/HBASE-14709) | Parent change breaks graceful\_stop.sh on a cluster |  Major | Operability | stack | stack |
| [HBASE-14710](https://issues.apache.org/jira/browse/HBASE-14710) | Add category-based timeouts to MR tests |  Major | hangingTests, mapreduce, test | stack | stack |
| [HBASE-14720](https://issues.apache.org/jira/browse/HBASE-14720) | Make TestHCM and TestMetaWithReplicas large tests rather than mediums |  Major | hangingTests, test | stack | stack |
| [HBASE-14786](https://issues.apache.org/jira/browse/HBASE-14786) | TestProcedureAdmin hangs |  Major | hangingTests, test | stack | Matteo Bertozzi |
| [HBASE-14794](https://issues.apache.org/jira/browse/HBASE-14794) | Cleanup TestAtomicOperation, TestImportExport, and TestMetaWithReplicas |  Major | flakey, test | stack | stack |
| [HBASE-14798](https://issues.apache.org/jira/browse/HBASE-14798) | NPE reporting server load causes regionserver abort; causes TestAcidGuarantee to fail |  Major | test | stack | stack |
| [HBASE-14819](https://issues.apache.org/jira/browse/HBASE-14819) | hbase-it tests failing with OOME; permgen |  Major | test | stack | stack |
| [HBASE-14575](https://issues.apache.org/jira/browse/HBASE-14575) | Relax region read lock for compactions |  Major | Compaction, regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14909](https://issues.apache.org/jira/browse/HBASE-14909) | NPE testing for RIT |  Major | test | stack | stack |
| [HBASE-14883](https://issues.apache.org/jira/browse/HBASE-14883) | TestSplitTransactionOnCluster#testFailedSplit flakey |  Major | flakey, test | stack | stack |
| [HBASE-14605](https://issues.apache.org/jira/browse/HBASE-14605) | Split fails due to \'No valid credentials\' error when SecureBulkLoadEndpoint#start tries to access hdfs |  Blocker | Coprocessors, security | Ted Yu | Ted Yu |
| [HBASE-14631](https://issues.apache.org/jira/browse/HBASE-14631) | Region merge request should be audited with request user through proper scope of doAs() calls to region observer notifications |  Blocker | Coprocessors, security | Ted Yu | Ted Yu |
| [HBASE-14655](https://issues.apache.org/jira/browse/HBASE-14655) | Narrow the scope of doAs() calls to region observer notifications for compaction |  Blocker | Coprocessors, security | Ted Yu | Ted Yu |
| [HBASE-14863](https://issues.apache.org/jira/browse/HBASE-14863) | Add missing test/resources/log4j files in hbase modules |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14908](https://issues.apache.org/jira/browse/HBASE-14908) | TestRowCounter flakey especially on branch-1 |  Major | flakey, test | stack | stack |
| [HBASE-14915](https://issues.apache.org/jira/browse/HBASE-14915) | Hanging test : org.apache.hadoop.hbase.mapreduce.TestImportExport |  Major | hangingTests | stack | Heng Chen |
| [HBASE-15023](https://issues.apache.org/jira/browse/HBASE-15023) | Reenable TestShell and TestStochasticLoadBalancer |  Major | test | stack | stack |
| [HBASE-14107](https://issues.apache.org/jira/browse/HBASE-14107) | Procedure V2 - Administrative Task: Provide an API to List all procedures |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-14432](https://issues.apache.org/jira/browse/HBASE-14432) | Procedure V2 - enforce ACL on procedure admin tasks |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-14108](https://issues.apache.org/jira/browse/HBASE-14108) | Procedure V2 - Administrative Task: provide an API to abort a procedure |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-14487](https://issues.apache.org/jira/browse/HBASE-14487) | Procedure V2 - shell command to list all procedures |  Major | proc-v2, shell | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-14488](https://issues.apache.org/jira/browse/HBASE-14488) | Procedure V2 - shell command to abort a procedure |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15087](https://issues.apache.org/jira/browse/HBASE-15087) | Fix hbase-common findbugs complaints |  Major | build | stack | Stack |
| [HBASE-14837](https://issues.apache.org/jira/browse/HBASE-14837) | Procedure V2 - Procedure Queue Improvement |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15105](https://issues.apache.org/jira/browse/HBASE-15105) | Procedure V2 - Procedure Queue with Namespaces |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15114](https://issues.apache.org/jira/browse/HBASE-15114) | NPE when IPC server ByteBuffer reservoir is turned off |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14962](https://issues.apache.org/jira/browse/HBASE-14962) | TestSplitWalDataLoss fails on all branches |  Blocker | test | Elliott Clark | stack |
| [HBASE-15115](https://issues.apache.org/jira/browse/HBASE-15115) | Fix findbugs complaints in hbase-client |  Major | build | stack | stack |
| [HBASE-15118](https://issues.apache.org/jira/browse/HBASE-15118) | Fix findbugs complaint in hbase-server |  Major | build | stack | stack |
| [HBASE-14221](https://issues.apache.org/jira/browse/HBASE-14221) | Reduce the number of time row comparison is done in a Scan |  Major | Scanners | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15106](https://issues.apache.org/jira/browse/HBASE-15106) | Procedure V2 - Procedure Queue pass Procedure for better debuggability |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15091](https://issues.apache.org/jira/browse/HBASE-15091) | Forward-port to 1.2+ HBASE-15031 "Fix merge of MVCC and SequenceID performance regression in branch-1.0 for Increments" |  Blocker | Performance | stack | stack |
| [HBASE-15171](https://issues.apache.org/jira/browse/HBASE-15171) | Avoid counting duplicate kv and generating lots of small hfiles in PutSortReducer |  Major | . | Yu Li | Yu Li |
| [HBASE-15142](https://issues.apache.org/jira/browse/HBASE-15142) | Procedure v2 - Basic WebUI listing the procedures |  Minor | proc-v2, UI | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15194](https://issues.apache.org/jira/browse/HBASE-15194) | TestStochasticLoadBalancer.testRegionReplicationOnMidClusterSameHosts flaky on trunk |  Major | flakey, test | stack | stack |
| [HBASE-15202](https://issues.apache.org/jira/browse/HBASE-15202) | Reduce garbage while setting response |  Minor | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15210](https://issues.apache.org/jira/browse/HBASE-15210) | Undo aggressive load balancer logging at tens of lines per millisecond |  Major | Balancer | stack | stack |
| [HBASE-15157](https://issues.apache.org/jira/browse/HBASE-15157) | Add \*PerformanceTest for Append, CheckAnd\* |  Major | Performance, test | stack | stack |
| [HBASE-15163](https://issues.apache.org/jira/browse/HBASE-15163) | Add sampling code and metrics for get/scan/multi/mutate count separately |  Major | . | Yu Li | Yu Li |
| [HBASE-15238](https://issues.apache.org/jira/browse/HBASE-15238) | HFileReaderV2 prefetch overreaches; runs off the end of the data |  Major | . | stack | stack |
| [HBASE-15204](https://issues.apache.org/jira/browse/HBASE-15204) | Try to estimate the cell count for adding into WALEdit |  Major | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15203](https://issues.apache.org/jira/browse/HBASE-15203) | Reduce garbage created by path.toString() during Checksum verification |  Minor | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15263](https://issues.apache.org/jira/browse/HBASE-15263) | TestIPv6NIOServerSocketChannel.testServerSocketFromLocalhostResolution can hang indefinetly |  Major | . | stack | Heng Chen |
| [HBASE-15270](https://issues.apache.org/jira/browse/HBASE-15270) | Use appropriate encoding for "filter" field in TaskMonitorTmpl.jamon |  Major | UI | Samir Ahmic | Samir Ahmic |
| [HBASE-14949](https://issues.apache.org/jira/browse/HBASE-14949) | Resolve name conflict when splitting if there are duplicated WAL entries |  Major | wal | Heng Chen | Duo Zhang |
| [HBASE-15232](https://issues.apache.org/jira/browse/HBASE-15232) | Exceptions returned over multi RPC don\'t automatically trigger region location reloads |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-15144](https://issues.apache.org/jira/browse/HBASE-15144) | Procedure v2 - Web UI displaying Store state |  Minor | proc-v2, UI | Matteo Bertozzi | Samir Ahmic |
| [HBASE-15311](https://issues.apache.org/jira/browse/HBASE-15311) | Prevent NPE in BlockCacheViewTmpl |  Major | UI | Samir Ahmic | Samir Ahmic |
| [HBASE-15351](https://issues.apache.org/jira/browse/HBASE-15351) | Fix description of hbase.bucketcache.size in hbase-default.xml |  Major | documentation | stack | stack |
| [HBASE-15365](https://issues.apache.org/jira/browse/HBASE-15365) | Do not write to \'/tmp\' in TestHBaseConfiguration |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-15371](https://issues.apache.org/jira/browse/HBASE-15371) | Procedure V2 - Completed support parent-child procedure |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15373](https://issues.apache.org/jira/browse/HBASE-15373) | DEPRECATED\_NAME\_OF\_NO\_LIMIT\_THROUGHPUT\_CONTROLLER\_CLASS value is wrong in CompactionThroughputControllerFactory |  Minor | Compaction | stack | stack |
| [HBASE-15354](https://issues.apache.org/jira/browse/HBASE-15354) | Use same criteria for clearing meta cache for all operations |  Major | Client | Ashu Pachauri | Ashu Pachauri |
| [HBASE-15422](https://issues.apache.org/jira/browse/HBASE-15422) | Procedure v2 - Avoid double yield |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15113](https://issues.apache.org/jira/browse/HBASE-15113) | Procedure v2 - Speedup eviction of sys operation results |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15435](https://issues.apache.org/jira/browse/HBASE-15435) | Add WAL (in bytes) written metric |  Major | . | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-15390](https://issues.apache.org/jira/browse/HBASE-15390) | Unnecessary MetaCache evictions cause elevated number of requests to meta |  Blocker | Client | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15479](https://issues.apache.org/jira/browse/HBASE-15479) | No more garbage or beware of autoboxing |  Major | Client | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15460](https://issues.apache.org/jira/browse/HBASE-15460) | Fix infer issues in hbase-common |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15464](https://issues.apache.org/jira/browse/HBASE-15464) | Flush / Compaction metrics revisited |  Major | metrics | Enis Soztutar | Enis Soztutar |
| [HBASE-15488](https://issues.apache.org/jira/browse/HBASE-15488) | Add ACL for setting split merge switch |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15412](https://issues.apache.org/jira/browse/HBASE-15412) | Add average region size metric |  Major | . | Enis Soztutar | Alicia Ying Shu |
| [HBASE-15524](https://issues.apache.org/jira/browse/HBASE-15524) | Fix NPE in client-side metrics |  Critical | Client, metrics | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15384](https://issues.apache.org/jira/browse/HBASE-15384) | Avoid using \'/tmp\' directory in TestBulkLoad |  Major | test | Heng Chen | Heng Chen |
| [HBASE-15389](https://issues.apache.org/jira/browse/HBASE-15389) | Write out multiple files when compaction |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-15400](https://issues.apache.org/jira/browse/HBASE-15400) | Use DateTieredCompactor for Date Tiered Compaction |  Major | Compaction | Clara Xiong | Clara Xiong |
| [HBASE-15537](https://issues.apache.org/jira/browse/HBASE-15537) | Make multi WAL work with WALs other than FSHLog |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-15527](https://issues.apache.org/jira/browse/HBASE-15527) | Refactor Compactor related classes |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-15665](https://issues.apache.org/jira/browse/HBASE-15665) | Support using different StoreFileComparators for different CompactionPolicies |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-15640](https://issues.apache.org/jira/browse/HBASE-15640) | L1 cache doesn\'t give fair warning that it is showing partial stats only when it hits limit |  Major | BlockCache | stack | stack |
| [HBASE-15518](https://issues.apache.org/jira/browse/HBASE-15518) | Add Per-Table metrics back |  Major | . | Enis Soztutar | Alicia Ying Shu |
| [HBASE-15368](https://issues.apache.org/jira/browse/HBASE-15368) | Add pluggable window support |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-15683](https://issues.apache.org/jira/browse/HBASE-15683) | Min latency in latency histograms are emitted as Long.MAX\_VALUE |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15366](https://issues.apache.org/jira/browse/HBASE-15366) | Add doc, trace-level logging, and test around hfileblock |  Major | BlockCache | stack | stack |
| [HBASE-15671](https://issues.apache.org/jira/browse/HBASE-15671) | Add per-table metrics on memstore, storefile and regionsize |  Major | . | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-15392](https://issues.apache.org/jira/browse/HBASE-15392) | Single Cell Get reads two HFileBlocks |  Major | BucketCache | stack | stack |
| [HBASE-15477](https://issues.apache.org/jira/browse/HBASE-15477) | Do not save \'next block header\' when we cache hfileblocks |  Major | BlockCache, Performance | stack | stack |
| [HBASE-15713](https://issues.apache.org/jira/browse/HBASE-15713) | Backport "HBASE-15477 Do not save \'next block header\' when we cache hfileblocks" |  Major | BucketCache | stack | stack |
| [HBASE-15658](https://issues.apache.org/jira/browse/HBASE-15658) | RegionServerCallable / RpcRetryingCaller clear meta cache on retries |  Critical | Client | Gary Helmling | Gary Helmling |
| [HBASE-15740](https://issues.apache.org/jira/browse/HBASE-15740) | Replication source.shippedKBs metric is undercounting because it is in KB |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15865](https://issues.apache.org/jira/browse/HBASE-15865) | Move TestTableDeleteFamilyHandler and TestTableDescriptorModification handler tests to procedure |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15872](https://issues.apache.org/jira/browse/HBASE-15872) | Split TestWALProcedureStore |  Trivial | proc-v2, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15878](https://issues.apache.org/jira/browse/HBASE-15878) | Deprecate doBulkLoad(Path hfofDir, final HTable table)  in branch-1 (even though its \'late\') |  Major | . | stack | stack |
| [HBASE-16023](https://issues.apache.org/jira/browse/HBASE-16023) | Fastpath for the FIFO rpcscheduler |  Major | Performance, rpc | stack | stack |
| [HBASE-16034](https://issues.apache.org/jira/browse/HBASE-16034) | Fix ProcedureTestingUtility#LoadCounter.setMaxProcId() |  Minor | proc-v2, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16056](https://issues.apache.org/jira/browse/HBASE-16056) | Procedure v2 - fix master crash for FileNotFound |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15224](https://issues.apache.org/jira/browse/HBASE-15224) | Undo  "hbase.increment.fast.but.narrow.consistency" option; it is not necessary since HBASE-15213 |  Major | Performance | stack | stack |
| [HBASE-14877](https://issues.apache.org/jira/browse/HBASE-14877) | maven archetype: client application |  Major | build, Usability | Nick Dimiduk | Daniel Vimont |
| [HBASE-14878](https://issues.apache.org/jira/browse/HBASE-14878) | maven archetype: client application with shaded jars |  Major | build, Usability | Nick Dimiduk | Daniel Vimont |
| [HBASE-16068](https://issues.apache.org/jira/browse/HBASE-16068) | Procedure v2 - use consts for conf properties in tests |  Trivial | proc-v2, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16180](https://issues.apache.org/jira/browse/HBASE-16180) | Fix ST\_WRITE\_TO\_STATIC\_FROM\_INSTANCE\_METHOD findbugs introduced by parent |  Major | regionserver | stack | stack |
| [HBASE-15935](https://issues.apache.org/jira/browse/HBASE-15935) | Have a separate Walker task running concurrently with Generator |  Minor | integration tests | Joseph | Joseph |
| [HBASE-16176](https://issues.apache.org/jira/browse/HBASE-16176) | Bug fixes/improvements on HBASE-15650 Remove TimeRangeTracker as point of contention when many threads reading a StoreFile |  Major | Performance | stack | stack |
| [HBASE-16194](https://issues.apache.org/jira/browse/HBASE-16194) | Should count in MSLAB chunk allocation into heap size change when adding duplicate cells |  Major | regionserver | Yu Li | Yu Li |
| [HBASE-16195](https://issues.apache.org/jira/browse/HBASE-16195) | Should not add chunk into chunkQueue if not using chunk pool in HeapMemStoreLAB |  Major | . | Yu Li | Yu Li |
| [HBASE-16189](https://issues.apache.org/jira/browse/HBASE-16189) | [Rolling Upgrade] 2.0 hfiles cannot be opened by 1.x servers |  Critical | migration | Enis Soztutar | ramkrishna.s.vasudevan |
| [HBASE-16317](https://issues.apache.org/jira/browse/HBASE-16317) | revert all ESAPI changes |  Blocker | dependencies, security | Sean Busbey | Nick Dimiduk |
| [HBASE-16285](https://issues.apache.org/jira/browse/HBASE-16285) | Drop RPC requests if it must be considered as timeout at client |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16452](https://issues.apache.org/jira/browse/HBASE-16452) | Procedure v2 - Make ProcedureWALPrettyPrinter extend Tool |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16318](https://issues.apache.org/jira/browse/HBASE-16318) | fail build if license isn\'t in whitelist |  Major | build, dependencies | Sean Busbey | Sean Busbey |
| [HBASE-16485](https://issues.apache.org/jira/browse/HBASE-16485) | Procedure V2 - Add support to addChildProcedure() as last "step" in StateMachineProcedure |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16522](https://issues.apache.org/jira/browse/HBASE-16522) | Procedure v2 - Cache system user and avoid IOException |  Major | master, proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16101](https://issues.apache.org/jira/browse/HBASE-16101) | Procedure v2 - Perf Tool for WAL |  Major | proc-v2, tooling | Appy | Appy |
| [HBASE-15984](https://issues.apache.org/jira/browse/HBASE-15984) | Given failure to parse a given WAL that was closed cleanly, replay the WAL. |  Critical | Replication | Sean Busbey | Sean Busbey |
| [HBASE-14734](https://issues.apache.org/jira/browse/HBASE-14734) | BindException when setting up MiniKdc |  Major | flakey, test | stack | Appy |
| [HBASE-16146](https://issues.apache.org/jira/browse/HBASE-16146) | Counters are expensive... |  Major | metrics | stack | Gary Helmling |
| [HBASE-16951](https://issues.apache.org/jira/browse/HBASE-16951) | 1.3 assembly scripts dont package hbase-archetypes in the tarball |  Major | build | Mikhail Antonov | Mikhail Antonov |
| [HBASE-16970](https://issues.apache.org/jira/browse/HBASE-16970) | Clarify misleading Scan.java comment about caching |  Trivial | . | Jim Kleckner | Jim Kleckner |
| [HBASE-17149](https://issues.apache.org/jira/browse/HBASE-17149) | Procedure V2 - Fix nonce submission to avoid unnecessary calling coprocessor multiple times |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-17409](https://issues.apache.org/jira/browse/HBASE-17409) | Re-fix XSS request issue in JMXJsonServlet |  Major | security, UI | Josh Elser | Josh Elser |
| [HBASE-15347](https://issues.apache.org/jira/browse/HBASE-15347) | Update CHANGES.txt for 1.3 |  Major | documentation | Mikhail Antonov | Mikhail Antonov |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14869](https://issues.apache.org/jira/browse/HBASE-14869) | Better request latency and size histograms |  Major | . | Lars Hofhansl | Vikas Vishwakarma |
| [HBASE-14420](https://issues.apache.org/jira/browse/HBASE-14420) | Zombie Stomping Session |  Critical | test | stack | stack |
| [HBASE-14457](https://issues.apache.org/jira/browse/HBASE-14457) | Umbrella: Improve Multiple WAL for production usage |  Major | . | Yu Li | Yu Li |
| [HBASE-15341](https://issues.apache.org/jira/browse/HBASE-15341) | 1.3 release umbrella |  Major | build | Mikhail Antonov | Mikhail Antonov |
| [HBASE-13666](https://issues.apache.org/jira/browse/HBASE-13666) | book.pdf is not renamed during site build |  Major | site | Nick Dimiduk | Gabor Liptak |
| [HBASE-13929](https://issues.apache.org/jira/browse/HBASE-13929) | make\_rc.sh publishes empty shaded artifacts |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13964](https://issues.apache.org/jira/browse/HBASE-13964) | Skip region normalization for tables under namespace quota |  Major | Balancer, Usability | Mikhail Antonov | Ted Yu |
| [HBASE-14053](https://issues.apache.org/jira/browse/HBASE-14053) | Disable DLR in branch-1+ |  Major | Recovery | stack | stack |
| [HBASE-14052](https://issues.apache.org/jira/browse/HBASE-14052) | Mark a few methods in CellUtil audience private since only make sense internally to hbase |  Trivial | API | stack | stack |
| [HBASE-14066](https://issues.apache.org/jira/browse/HBASE-14066) | clean out old docbook docs from branch-1 |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-11276](https://issues.apache.org/jira/browse/HBASE-11276) | Add back support for running ChaosMonkey as standalone tool |  Minor | . | Dima Spivak | Yu Li |
| [HBASE-14057](https://issues.apache.org/jira/browse/HBASE-14057) | HBase shell user\_permission should list super users defined on hbase-site.xml |  Minor | shell | Wellington Chevreuil | Srikanth Srungarapu |
| [HBASE-13089](https://issues.apache.org/jira/browse/HBASE-13089) | Fix test compilation error on building against htrace-3.2.0-incubating |  Minor | . | Masatake Iwasaki | Esteban Gutierrez |
| [HBASE-14288](https://issues.apache.org/jira/browse/HBASE-14288) | Upgrade asciidoctor plugin to v1.5.2.1 |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14290](https://issues.apache.org/jira/browse/HBASE-14290) | Spin up less threads in tests |  Major | test | stack | stack |
| [HBASE-14318](https://issues.apache.org/jira/browse/HBASE-14318) | make\_rc.sh should purge/re-resolve dependencies from local repository |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14361](https://issues.apache.org/jira/browse/HBASE-14361) | ReplicationSink should create Connection instances lazily |  Major | Replication | Nick Dimiduk | Heng Chen |
| [HBASE-14502](https://issues.apache.org/jira/browse/HBASE-14502) | Purge use of jmock and remove as dependency |  Major | test | stack | Gabor Liptak |
| [HBASE-14493](https://issues.apache.org/jira/browse/HBASE-14493) | Upgrade the jamon-runtime dependency |  Minor | . | Newton Alex | Andrew Purtell |
| [HBASE-14308](https://issues.apache.org/jira/browse/HBASE-14308) | HTableDescriptor WARN is not actionable |  Minor | Usability | Nick Dimiduk | Lars Francke |
| [HBASE-14516](https://issues.apache.org/jira/browse/HBASE-14516) | categorize hadoop-compat tests |  Critical | build, hadoop2, test | Sean Busbey | Sean Busbey |
| [HBASE-14851](https://issues.apache.org/jira/browse/HBASE-14851) | Add test showing how to use TTL from thrift |  Major | test, Thrift | Elliott Clark | Elliott Clark |
| [HBASE-15003](https://issues.apache.org/jira/browse/HBASE-15003) | Remove BoundedConcurrentLinkedQueue and associated test |  Minor | util | Sean Busbey | Sean Busbey |
| [HBASE-15099](https://issues.apache.org/jira/browse/HBASE-15099) | Move RegionStateListener class out of quotas package |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-14526](https://issues.apache.org/jira/browse/HBASE-14526) | Remove delayed rpc |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15220](https://issues.apache.org/jira/browse/HBASE-15220) | Change two logs in SimpleRegionNormalizer to INFO level |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-14678](https://issues.apache.org/jira/browse/HBASE-14678) | Experiment: Temporarily disable balancer and a few others to see if root of crashed/timedout JVMs |  Critical | test | stack | Phil Yang |
| [HBASE-15729](https://issues.apache.org/jira/browse/HBASE-15729) | Remove old JDiff wrapper scripts in dev-support |  Minor | build, community | Dima Spivak | Dima Spivak |
| [HBASE-15895](https://issues.apache.org/jira/browse/HBASE-15895) | remove unmaintained jenkins build analysis tool. |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-15888](https://issues.apache.org/jira/browse/HBASE-15888) | Extend HBASE-12769 for bulk load data replication |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-16073](https://issues.apache.org/jira/browse/HBASE-16073) | update compatibility\_checker for jacc dropping comma sep args |  Critical | build, documentation | Sean Busbey | Dima Spivak |
| [HBASE-16154](https://issues.apache.org/jira/browse/HBASE-16154) | bring non-master branches up to date wrt check\_compatibility script |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-16260](https://issues.apache.org/jira/browse/HBASE-16260) | Audit dependencies for Category-X |  Critical | community, dependencies | Sean Busbey | Sean Busbey |
| [HBASE-16467](https://issues.apache.org/jira/browse/HBASE-16467) | Move AbstractHBaseTool to hbase-common |  Trivial | . | Appy | Appy |
| [HBASE-16376](https://issues.apache.org/jira/browse/HBASE-16376) | Document implicit side-effects on partial results when calling Scan#setBatch(int) |  Minor | API, documentation | Josh Elser | Josh Elser |
| [HBASE-16518](https://issues.apache.org/jira/browse/HBASE-16518) | Remove old .arcconfig file |  Trivial | tooling | Gary Helmling | Gary Helmling |
| [HBASE-16710](https://issues.apache.org/jira/browse/HBASE-16710) | Add ZStandard Codec to Compression.java |  Minor | . | churro morales | churro morales |


