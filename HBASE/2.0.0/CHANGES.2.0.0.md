
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
# Changelog

## Release 2.0.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13983](https://issues.apache.org/jira/browse/HBASE-13983) | Doc how the oddball HTable methods getStartKey, getEndKey, etc. will be removed in 2.0.0 |  Minor | documentation | stack | stack |
| [HBASE-13963](https://issues.apache.org/jira/browse/HBASE-13963) | avoid leaking jdk.tools |  Critical | build, documentation | Sean Busbey | Gabor Liptak |
| [HBASE-13843](https://issues.apache.org/jira/browse/HBASE-13843) | Fix internal constant text in ReplicationManager.java |  Trivial | master | Lars George | Gabor Liptak |
| [HBASE-13636](https://issues.apache.org/jira/browse/HBASE-13636) | Remove deprecation for HBASE-4072 (Reading of zoo.cfg) |  Major | . | Lars Francke | Lars Francke |
| [HBASE-13375](https://issues.apache.org/jira/browse/HBASE-13375) | Provide HBase superuser higher priority over other users in the RPC handling |  Major | rpc | Devaraj Das | Mikhail Antonov |
| [HBASE-13373](https://issues.apache.org/jira/browse/HBASE-13373) | Squash HFileReaderV3 together with HFileReaderV2 and AbstractHFileReader; ditto for Scanners and BlockReader, etc. |  Major | . | stack | stack |
| [HBASE-13248](https://issues.apache.org/jira/browse/HBASE-13248) | Make HConnectionImplementation top-level class. |  Major | API | Mikhail Antonov | Mikhail Antonov |
| [HBASE-13214](https://issues.apache.org/jira/browse/HBASE-13214) | Remove deprecated and unused methods from HTable class |  Major | API | Mikhail Antonov | Ashish Singhi |
| [HBASE-13198](https://issues.apache.org/jira/browse/HBASE-13198) | Remove HConnectionManager |  Major | API | Mikhail Antonov | Mikhail Antonov |
| [HBASE-13118](https://issues.apache.org/jira/browse/HBASE-13118) | [PE] Add being able to write many columns |  Major | test | stack | stack |
| [HBASE-12774](https://issues.apache.org/jira/browse/HBASE-12774) | Fix the inconsistent permission checks for bulkloading. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12684](https://issues.apache.org/jira/browse/HBASE-12684) | Add new AsyncRpcClient |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12586](https://issues.apache.org/jira/browse/HBASE-12586) | Task 6 & 7 from HBASE-9117,  delete all public HTable constructors and delete ConnectionManager#{delete,get}Connection |  Major | . | stack | Mikhail Antonov |
| [HBASE-12346](https://issues.apache.org/jira/browse/HBASE-12346) | Scan's default auths behavior under Visibility labels |  Major | API, security | Jerry He | Jerry He |
| [HBASE-12297](https://issues.apache.org/jira/browse/HBASE-12297) | Support DBB usage in Bloom and HFileIndex area |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-12241](https://issues.apache.org/jira/browse/HBASE-12241) | The crash of regionServer when taking deadserver's replication queue breaks replication |  Critical | Replication | Liu Shaohui | Liu Shaohui |
| [HBASE-12111](https://issues.apache.org/jira/browse/HBASE-12111) | Remove deprecated APIs from Mutation(s) |  Major | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-12099](https://issues.apache.org/jira/browse/HBASE-12099) | TestScannerModel fails if using jackson 1.9.13 |  Major | REST | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12084](https://issues.apache.org/jira/browse/HBASE-12084) | Remove deprecated APIs from Result |  Major | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-12048](https://issues.apache.org/jira/browse/HBASE-12048) | Remove deprecated APIs from Filter |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12046](https://issues.apache.org/jira/browse/HBASE-12046) | HTD/HCD setters should be builder-style |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11805](https://issues.apache.org/jira/browse/HBASE-11805) | KeyValue to Cell Convert in WALEdit APIs |  Major | wal | Anoop Sam John | Anoop Sam John |
| [HBASE-11556](https://issues.apache.org/jira/browse/HBASE-11556) | Move HTablePool to hbase-thrift module. |  Major | Thrift | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10728](https://issues.apache.org/jira/browse/HBASE-10728) | get\_counter value is never used. |  Major | . | Jean-Marc Spaggiari | Lars George |
| [HBASE-10378](https://issues.apache.org/jira/browse/HBASE-10378) | Divide HLog interface into User and Implementor specific interfaces |  Major | wal | Himanshu Vashishtha | Sean Busbey |
| [HBASE-6778](https://issues.apache.org/jira/browse/HBASE-6778) | Deprecate Chore; its a thread per task when we should have one thread to do all tasks |  Major | . | stack | Jonathan Lawlor |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13412](https://issues.apache.org/jira/browse/HBASE-13412) | Region split decisions should have jitter |  Major | regionserver | Elliott Clark | Elliott Clark |
| [HBASE-13356](https://issues.apache.org/jira/browse/HBASE-13356) | HBase should provide an InputFormat supporting multiple scans in mapreduce jobs over snapshots |  Minor | mapreduce | Andrew Mains | Andrew Mains |
| [HBASE-13170](https://issues.apache.org/jira/browse/HBASE-13170) | Allow block cache to be external |  Major | io | Elliott Clark | Elliott Clark |
| [HBASE-13090](https://issues.apache.org/jira/browse/HBASE-13090) | Progress heartbeats for long running scanners |  Major | . | Andrew Purtell | Jonathan Lawlor |
| [HBASE-13071](https://issues.apache.org/jira/browse/HBASE-13071) | Hbase Streaming Scan Feature |  Major | . | Eshcar Hillel | Eshcar Hillel |
| [HBASE-13063](https://issues.apache.org/jira/browse/HBASE-13063) | Allow to turn off memstore replication for region replicas |  Minor | regionserver, Replication | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13057](https://issues.apache.org/jira/browse/HBASE-13057) | Provide client utility to easily enable and disable table replication |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-12972](https://issues.apache.org/jira/browse/HBASE-12972) | Region, a supportable public/evolving subset of HRegion |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12944](https://issues.apache.org/jira/browse/HBASE-12944) | Support patches to branches in precommit jenkins build |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12869](https://issues.apache.org/jira/browse/HBASE-12869) | Add a REST API implementation of the ClusterManager interface |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-12731](https://issues.apache.org/jira/browse/HBASE-12731) | Heap occupancy based client pushback |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12709](https://issues.apache.org/jira/browse/HBASE-12709) | [mvn] Add unit test excludes command line flag to the build. |  Major | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12496](https://issues.apache.org/jira/browse/HBASE-12496) | A blockedRequestsCount metric |  Minor | metrics | Yi Deng | Yi Deng |
| [HBASE-12361](https://issues.apache.org/jira/browse/HBASE-12361) | Show data locality of region in table page |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12286](https://issues.apache.org/jira/browse/HBASE-12286) | [shell] Add server/cluster online load of configuration changes |  Major | shell | stack | Manukranth Kolloju |
| [HBASE-12268](https://issues.apache.org/jira/browse/HBASE-12268) | Add support for Scan.setRowPrefixFilter to shell |  Major | shell | Niels Basjes | Niels Basjes |
| [HBASE-12143](https://issues.apache.org/jira/browse/HBASE-12143) | Minor fix for Table code |  Minor | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12133](https://issues.apache.org/jira/browse/HBASE-12133) | Add FastLongHistogram for metric computation |  Minor | metrics | Yi Deng | Yi Deng |
| [HBASE-12127](https://issues.apache.org/jira/browse/HBASE-12127) | Move the core Connection creation functionality into ConnectionFactory |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-11995](https://issues.apache.org/jira/browse/HBASE-11995) | Use Connection and ConnectionFactory where possible |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-11990](https://issues.apache.org/jira/browse/HBASE-11990) | Make setting the start and stop row for a specific prefix easier |  Major | Client | Niels Basjes |  |
| [HBASE-11909](https://issues.apache.org/jira/browse/HBASE-11909) | Region count listed by HMaster UI and hbck are different |  Minor | documentation | Gautam Gopalakrishnan | Misty Stanley-Jones |
| [HBASE-11885](https://issues.apache.org/jira/browse/HBASE-11885) | Provide a Dockerfile to easily build and run HBase from source |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-11724](https://issues.apache.org/jira/browse/HBASE-11724) | Add to RWQueueRpcExecutor the ability to split get and scan handlers |  Minor | IPC/RPC | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10560](https://issues.apache.org/jira/browse/HBASE-10560) | Per cell TTLs |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10070](https://issues.apache.org/jira/browse/HBASE-10070) | HBase read high-availability using timeline-consistent region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9531](https://issues.apache.org/jira/browse/HBASE-9531) | a command line (hbase shell) interface to retreive the replication metrics and show replication lag |  Major | Replication | Demai Ni | Ashish Singhi |
| [HBASE-8707](https://issues.apache.org/jira/browse/HBASE-8707) | Add LongComparator for filter |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-5980](https://issues.apache.org/jira/browse/HBASE-5980) | Scanner responses from RS should include metrics on rows/KVs filtered |  Minor | Client, metrics, Operability, regionserver | Todd Lipcon | Jonathan Lawlor |
| [HBASE-5238](https://issues.apache.org/jira/browse/HBASE-5238) | Add a log4j category for all edits to META/ROOT |  Minor | regionserver | Todd Lipcon | Andrey Stepachev |
| [HBASE-5162](https://issues.apache.org/jira/browse/HBASE-5162) | Basic client pushback mechanism |  Major | . | Jean-Daniel Cryans | Jesse Yates |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14015](https://issues.apache.org/jira/browse/HBASE-14015) | Allow setting a richer state value when toString a pv2 |  Minor | proc-v2 | stack | stack |
| [HBASE-14001](https://issues.apache.org/jira/browse/HBASE-14001) | Optimize write(OutputStream out, boolean withTags) for SizeCachedNoTagsKeyValue |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13980](https://issues.apache.org/jira/browse/HBASE-13980) | Distinguish blockedFlushCount vs unblockedFlushCount when tuning heap memory |  Minor | . | Ted Yu | Abhilash |
| [HBASE-13943](https://issues.apache.org/jira/browse/HBASE-13943) | Get rid of KeyValue#heapSizeWithoutTags |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13931](https://issues.apache.org/jira/browse/HBASE-13931) | Move Unsafe based operations to UnsafeAccess |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13917](https://issues.apache.org/jira/browse/HBASE-13917) | Remove string comparison to identify request priority |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13900](https://issues.apache.org/jira/browse/HBASE-13900) | duplicate methods between ProtobufMagic and ProtobufUtil |  Minor | . | Gabor Liptak | Gabor Liptak |
| [HBASE-13894](https://issues.apache.org/jira/browse/HBASE-13894) | Avoid visitor alloc each call of ByteBufferArray get/putMultiple() |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13876](https://issues.apache.org/jira/browse/HBASE-13876) | Improving performance of HeapMemoryManager |  Minor | hbase, regionserver | Abhilash | Abhilash |
| [HBASE-13848](https://issues.apache.org/jira/browse/HBASE-13848) | Access InfoServer SSL passwords through Credential Provder API |  Major | security | Sean Busbey | Sean Busbey |
| [HBASE-13846](https://issues.apache.org/jira/browse/HBASE-13846) | Run MiniCluster on top of other MiniDfsCluster |  Minor | test | Jesse Yates | Jesse Yates |
| [HBASE-13829](https://issues.apache.org/jira/browse/HBASE-13829) | Add more ThrottleType |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-13828](https://issues.apache.org/jira/browse/HBASE-13828) | Add group permissions testing coverage to AC. |  Major | . | Srikanth Srungarapu | Ashish Singhi |
| [HBASE-13816](https://issues.apache.org/jira/browse/HBASE-13816) | Build shaded modules only in release profile |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13780](https://issues.apache.org/jira/browse/HBASE-13780) | Default to 700 for HDFS root dir permissions for secure deployments |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13761](https://issues.apache.org/jira/browse/HBASE-13761) | Optimize FuzzyRowFilter |  Minor | Filters | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-13755](https://issues.apache.org/jira/browse/HBASE-13755) | Provide single super user check implementation |  Major | . | Anoop Sam John | Mikhail Antonov |
| [HBASE-13745](https://issues.apache.org/jira/browse/HBASE-13745) | Say why a flush was requested in log message |  Minor | Operability | stack | stack |
| [HBASE-13725](https://issues.apache.org/jira/browse/HBASE-13725) | [documentation] Pseudo-Distributed Local Install can link to hadoop instructions |  Minor | . | Nick Dimiduk | Lars Francke |
| [HBASE-13718](https://issues.apache.org/jira/browse/HBASE-13718) | Add a pretty printed table description to the table detail page of HBase's master |  Minor | hbase | Joao Girao | Joao Girao |
| [HBASE-13710](https://issues.apache.org/jira/browse/HBASE-13710) | Remove use of Hadoop's ReflectionUtil in favor of our own. |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-13684](https://issues.apache.org/jira/browse/HBASE-13684) | Allow mlockagent to be used when not starting as root |  Minor | . | Patrick White | Patrick White |
| [HBASE-13677](https://issues.apache.org/jira/browse/HBASE-13677) | RecoverableZookeeper WARNs on expected events |  Minor | . | Nick Dimiduk | Ted Malaska |
| [HBASE-13675](https://issues.apache.org/jira/browse/HBASE-13675) | ProcedureExecutor completion report should be at DEBUG log level |  Minor | . | Andrew Purtell | Srikanth Srungarapu |
| [HBASE-13673](https://issues.apache.org/jira/browse/HBASE-13673) | WALProcedureStore procedure is chatty |  Minor | . | Andrew Purtell | Srikanth Srungarapu |
| [HBASE-13671](https://issues.apache.org/jira/browse/HBASE-13671) | More classes to add to the invoking repository of org.apache.hadoop.hbase.mapreduce.driver |  Major | mapreduce | li xiang | li xiang |
| [HBASE-13656](https://issues.apache.org/jira/browse/HBASE-13656) | Rename getDeadServers to getDeadServersSize in Admin |  Minor | . | Lars Francke | Lars Francke |
| [HBASE-13655](https://issues.apache.org/jira/browse/HBASE-13655) | Deprecate duplicate getCompression methods in HColumnDescriptor |  Minor | . | Lars Francke | Lars Francke |
| [HBASE-13645](https://issues.apache.org/jira/browse/HBASE-13645) | Rename *column methods in MasterObserver to *columnFamily |  Minor | . | Lars Francke | Lars Francke |
| [HBASE-13598](https://issues.apache.org/jira/browse/HBASE-13598) | Make hbase assembly 'attach' to the project |  Minor | . | Jerry He | Jerry He |
| [HBASE-13578](https://issues.apache.org/jira/browse/HBASE-13578) | Remove Arrays.asList().subList() from FSHLog.offer() |  Trivial | wal | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13552](https://issues.apache.org/jira/browse/HBASE-13552) | ChoreService shutdown message could be more informative |  Trivial | . | Andrew Purtell | Jonathan Lawlor |
| [HBASE-13550](https://issues.apache.org/jira/browse/HBASE-13550) | [Shell] Support unset of a list of table attributes |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13534](https://issues.apache.org/jira/browse/HBASE-13534) | Change HBase master WebUI to explicitly mention if it is a backup master |  Minor | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-13518](https://issues.apache.org/jira/browse/HBASE-13518) | Typo in hbase.hconnection.meta.lookup.threads.core parameter |  Major | . | Enis Soztutar | Devaraj Das |
| [HBASE-13516](https://issues.apache.org/jira/browse/HBASE-13516) | Increase PermSize to 128MB |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13456](https://issues.apache.org/jira/browse/HBASE-13456) | Improve HFilePrettyPrinter first hbase:meta region processing |  Minor | util | Samir Ahmic | Samir Ahmic |
| [HBASE-13453](https://issues.apache.org/jira/browse/HBASE-13453) | Master should not bind to region server ports |  Critical | . | Enis Soztutar | Srikanth Srungarapu |
| [HBASE-13436](https://issues.apache.org/jira/browse/HBASE-13436) | Include user name in ADE for scans |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13431](https://issues.apache.org/jira/browse/HBASE-13431) | Allow to skip store file range check based on column family while creating reference files in HRegionFileSystem#splitStoreFile |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-13420](https://issues.apache.org/jira/browse/HBASE-13420) | RegionEnvironment.offerExecutionLatency Blocks Threads under Heavy Load |  Major | . | John Leach | Andrew Purtell |
| [HBASE-13419](https://issues.apache.org/jira/browse/HBASE-13419) | Thrift gateway should propagate text from exception causes. |  Major | Thrift | Michael Muller | Michael Muller |
| [HBASE-13381](https://issues.apache.org/jira/browse/HBASE-13381) | Expand TestSizeFailures to include small scans |  Minor | test | Josh Elser | Josh Elser |
| [HBASE-13370](https://issues.apache.org/jira/browse/HBASE-13370) | PE tool could give option for using Explicit Column Tracker which leads to seeks |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13369](https://issues.apache.org/jira/browse/HBASE-13369) | Expose scanNext stats to region server level |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13366](https://issues.apache.org/jira/browse/HBASE-13366) | Throw DoNotRetryIOException instead of read only IOException |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-13362](https://issues.apache.org/jira/browse/HBASE-13362) | Set max result size from client only (like scanner caching). |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13358](https://issues.apache.org/jira/browse/HBASE-13358) | Upgrade VisibilityClient API to accept Connection object. |  Minor | . | Srikanth Srungarapu | Matt Warhaftig |
| [HBASE-13351](https://issues.apache.org/jira/browse/HBASE-13351) | Annotate internal MasterRpcServices methods with admin priority |  Major | master | Josh Elser | Josh Elser |
| [HBASE-13350](https://issues.apache.org/jira/browse/HBASE-13350) | Add a debug-warn if we fail HTD checks even if table.sanity.checks is false |  Trivial | master, Operability | Matteo Bertozzi | Matt Warhaftig |
| [HBASE-13348](https://issues.apache.org/jira/browse/HBASE-13348) | Separate the thread number configs for meta server and server operations |  Minor | master | Liu Shaohui | Liu Shaohui |
| [HBASE-13345](https://issues.apache.org/jira/browse/HBASE-13345) | Fix LocalHBaseCluster so that different region server impl can be used for different slaves |  Minor | . | Jerry He | Jerry He |
| [HBASE-13344](https://issues.apache.org/jira/browse/HBASE-13344) | Add enforcer rule that matches our JDK support statement |  Minor | build | Sean Busbey | Matt Warhaftig |
| [HBASE-13342](https://issues.apache.org/jira/browse/HBASE-13342) | Fix incorrect interface annotations |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13341](https://issues.apache.org/jira/browse/HBASE-13341) | Add option to disable filtering on interface annotations for the API compatibility report |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13340](https://issues.apache.org/jira/browse/HBASE-13340) | Include LimitedPrivate interfaces in the API compatibility report |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13334](https://issues.apache.org/jira/browse/HBASE-13334) | FindBugs should create precise report for new bugs introduced |  Minor | build | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13316](https://issues.apache.org/jira/browse/HBASE-13316) | Reduce the downtime on planned moves of regions |  Minor | Balancer | Sameet Agarwal | Sameet Agarwal |
| [HBASE-13286](https://issues.apache.org/jira/browse/HBASE-13286) | Minimum timeout for a rpc call could be 1 ms instead of 2 seconds |  Minor | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-13270](https://issues.apache.org/jira/browse/HBASE-13270) | Setter for Result#getStats is #addResults; confusing! |  Major | . | stack | Mikhail Antonov |
| [HBASE-13256](https://issues.apache.org/jira/browse/HBASE-13256) | HBaseConfiguration#checkDefaultsVersion(Configuration) has spelling error |  Trivial | Client | Josh Elser | Josh Elser |
| [HBASE-13255](https://issues.apache.org/jira/browse/HBASE-13255) | Bad grammar in RegionServer status page |  Trivial | monitoring | Josh Elser | Josh Elser |
| [HBASE-13251](https://issues.apache.org/jira/browse/HBASE-13251) | Correct 'HBase, MapReduce, and the CLASSPATH' section in HBase Ref Guide |  Major | documentation | Jerry He | li xiang |
| [HBASE-13247](https://issues.apache.org/jira/browse/HBASE-13247) | Change BufferedMutatorExample to use addColumn() since add() is deprecated |  Trivial | Client | Lars George | Nick Dimiduk |
| [HBASE-13241](https://issues.apache.org/jira/browse/HBASE-13241) | Add tests for group level grants |  Critical | security, test | Sean Busbey | Ashish Singhi |
| [HBASE-13240](https://issues.apache.org/jira/browse/HBASE-13240) | add an exemption to test-patch for build-only changes. |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-13236](https://issues.apache.org/jira/browse/HBASE-13236) | Clean up m2e-related warnings/errors from poms |  Minor | build | Josh Elser | Josh Elser |
| [HBASE-13235](https://issues.apache.org/jira/browse/HBASE-13235) | Revisit the security auditing semantics. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13223](https://issues.apache.org/jira/browse/HBASE-13223) | Add testMoveMeta to IntegrationTestMTTR |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-13222](https://issues.apache.org/jira/browse/HBASE-13222) | Provide means of non-destructive balancer inspection |  Minor | Balancer | Nick Dimiduk | Josh Elser |
| [HBASE-13216](https://issues.apache.org/jira/browse/HBASE-13216) | Add version info in RPC connection header |  Minor | Client, rpc | Liu Shaohui | Liu Shaohui |
| [HBASE-13199](https://issues.apache.org/jira/browse/HBASE-13199) | Some small improvements on canary tool |  Major | . | Liu Shaohui | Liu Shaohui |
| [HBASE-13185](https://issues.apache.org/jira/browse/HBASE-13185) | Document hbase.regionserver.thrift.framed.max\_frame\_size\_in\_mb more clearly |  Trivial | documentation | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-13183](https://issues.apache.org/jira/browse/HBASE-13183) | Make ZK tickTime configurable in standalone HBase |  Minor | master | Alex Araujo | Alex Araujo |
| [HBASE-13171](https://issues.apache.org/jira/browse/HBASE-13171) | Change AccessControlClient methods to accept connection object to reduce setup time. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13162](https://issues.apache.org/jira/browse/HBASE-13162) | Add capability for cleaning hbase acls to hbase cleanup script. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13142](https://issues.apache.org/jira/browse/HBASE-13142) | [PERF] Reuse the IPCUtil#buildCellBlock buffer |  Major | Performance | stack | Liang Xie |
| [HBASE-13138](https://issues.apache.org/jira/browse/HBASE-13138) | Clean up TestMasterObserver (debug, trying to figure why fails) |  Major | test | stack | stack |
| [HBASE-13132](https://issues.apache.org/jira/browse/HBASE-13132) | Improve RemoveColumn action debug message |  Trivial | integration tests | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13128](https://issues.apache.org/jira/browse/HBASE-13128) | Make HBCK's lock file retry creation and deletion |  Minor | hbck | Victoria | Victoria |
| [HBASE-13122](https://issues.apache.org/jira/browse/HBASE-13122) | Improve efficiency for return codes of some filters |  Major | Filters | Shuaifeng Zhou | Shuaifeng Zhou |
| [HBASE-13120](https://issues.apache.org/jira/browse/HBASE-13120) | Allow disabling hadoop classpath and native library lookup |  Major | hbase | Siddharth Wagle |  |
| [HBASE-13109](https://issues.apache.org/jira/browse/HBASE-13109) | Make better SEEK vs SKIP decisions during scanning |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13103](https://issues.apache.org/jira/browse/HBASE-13103) | [ergonomics] add region size balancing as a feature of master |  Major | Balancer, Usability | Nick Dimiduk | Mikhail Antonov |
| [HBASE-13100](https://issues.apache.org/jira/browse/HBASE-13100) | Shell command to retrieve table splits |  Minor | shell | Sean Busbey | Ashish Singhi |
| [HBASE-13086](https://issues.apache.org/jira/browse/HBASE-13086) | Show ZK root node on Master WebUI |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13080](https://issues.apache.org/jira/browse/HBASE-13080) | Hbase shell message containing extra quote at the end of error message. |  Trivial | . | Abhishek Kumar | Abhishek Kumar |
| [HBASE-13059](https://issues.apache.org/jira/browse/HBASE-13059) | Set executable bit for scripts in dev-support |  Trivial | scripts | Dima Spivak | Dima Spivak |
| [HBASE-13056](https://issues.apache.org/jira/browse/HBASE-13056) | Refactor table.jsp code to remove repeated code and make it easier to add new checks |  Major | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-13054](https://issues.apache.org/jira/browse/HBASE-13054) | Provide more tracing information for locking/latching events. |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-13044](https://issues.apache.org/jira/browse/HBASE-13044) | Configuration option for disabling coprocessor loading |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13018](https://issues.apache.org/jira/browse/HBASE-13018) | WALSplitter should not try to get table states while splitting META |  Critical | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13016](https://issues.apache.org/jira/browse/HBASE-13016) | Clean up remnants of table states stored in table descriptors |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13008](https://issues.apache.org/jira/browse/HBASE-13008) | Better default for hbase.regionserver.regionSplitLimit parameter. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13002](https://issues.apache.org/jira/browse/HBASE-13002) | Make encryption cipher configurable |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-12997](https://issues.apache.org/jira/browse/HBASE-12997) | FSHLog should print pipeline on low replication |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-12990](https://issues.apache.org/jira/browse/HBASE-12990) | MetaScanner should be replaced by MetaTableAccessor |  Major | Client | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12987](https://issues.apache.org/jira/browse/HBASE-12987) | HBCK should print status while scanning over many regions |  Major | hbck, Usability | Nick Dimiduk | Josh Elser |
| [HBASE-12982](https://issues.apache.org/jira/browse/HBASE-12982) | Adding timeouts to TestChoreService |  Major | . | stack | stack |
| [HBASE-12979](https://issues.apache.org/jira/browse/HBASE-12979) | Use setters instead of return values for handing back statistics from HRegion methods |  Major | . | Andrew Purtell | Jesse Yates |
| [HBASE-12975](https://issues.apache.org/jira/browse/HBASE-12975) | Supportable SplitTransaction and RegionMergeTransaction interfaces |  Major | . | Rajeshbabu Chintaguntla | Andrew Purtell |
| [HBASE-12973](https://issues.apache.org/jira/browse/HBASE-12973) | RegionCoprocessorEnvironment should provide HRegionInfo directly |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12957](https://issues.apache.org/jira/browse/HBASE-12957) | region\_mover#isSuccessfulScan may be extremely slow on region with lots of expired data |  Minor | scripts | hongyu bi | hongyu bi |
| [HBASE-12929](https://issues.apache.org/jira/browse/HBASE-12929) | TableMapReduceUtil.initTableMapperJob unnecessarily limits the types of outputKeyClass and outputValueClass |  Minor | mapreduce | Will Temperley |  |
| [HBASE-12899](https://issues.apache.org/jira/browse/HBASE-12899) | HBase should prefix htrace configuration keys with "hbase.htrace" rather than just "hbase." |  Major | . | Colin Patrick McCabe |  |
| [HBASE-12896](https://issues.apache.org/jira/browse/HBASE-12896) | checkstyle report diff tool |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12893](https://issues.apache.org/jira/browse/HBASE-12893) | IntegrationTestBigLinkedListWithVisibility should use buffered writes |  Minor | integration tests | Nick Dimiduk | Jingcheng Du |
| [HBASE-12891](https://issues.apache.org/jira/browse/HBASE-12891) | Parallel execution for Hbck checkRegionConsistency |  Major | hbck | churro morales | Dave Latham |
| [HBASE-12887](https://issues.apache.org/jira/browse/HBASE-12887) | Cleanup many checkstyle errors in o.a.h.h.client |  Minor | build, Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12840](https://issues.apache.org/jira/browse/HBASE-12840) | Improve unit test coverage of the client pushback mechanism |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12839](https://issues.apache.org/jira/browse/HBASE-12839) | Remove synchronization in ServerStatisticsTracker |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12825](https://issues.apache.org/jira/browse/HBASE-12825) | CallRunner exception messages should include destination host:port |  Minor | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12808](https://issues.apache.org/jira/browse/HBASE-12808) | Use Java API Compliance Checker for binary/source compatibility |  Major | test | Dima Spivak | Dima Spivak |
| [HBASE-12796](https://issues.apache.org/jira/browse/HBASE-12796) | Clean up HTable and HBaseAdmin deprecated constructor usage |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12773](https://issues.apache.org/jira/browse/HBASE-12773) | Add warning message when user is trying to bulkload a large HFile. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12768](https://issues.apache.org/jira/browse/HBASE-12768) | Support enable cache\_data\_on\_write in Shell while creating table |  Major | shell | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12762](https://issues.apache.org/jira/browse/HBASE-12762) | Region with no hfiles will have the highest locality cost in LocalityCostFunction |  Minor | Balancer | cuijianwei | cuijianwei |
| [HBASE-12761](https://issues.apache.org/jira/browse/HBASE-12761) | On region jump ClientScanners should get next row start key instead of a skip. |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12745](https://issues.apache.org/jira/browse/HBASE-12745) | Visibility Labels:  support visibility labels for user groups. |  Major | security | Jerry He | Jerry He |
| [HBASE-12736](https://issues.apache.org/jira/browse/HBASE-12736) | Let MetaScanner recycle a given Connection |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12720](https://issues.apache.org/jira/browse/HBASE-12720) | Make InternalScan LimitedPrivate |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-12719](https://issues.apache.org/jira/browse/HBASE-12719) | Add test WAL provider to quantify FSHLog overhead in the absence of HDFS. |  Minor | test, wal | Sean Busbey | Sean Busbey |
| [HBASE-12706](https://issues.apache.org/jira/browse/HBASE-12706) | Support multiple port numbers in ZK quorum string |  Critical | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12680](https://issues.apache.org/jira/browse/HBASE-12680) | Refactor base ClusterManager in HBase to not have the notion of sending a signal. |  Minor | integration tests | Yi Deng | Yi Deng |
| [HBASE-12678](https://issues.apache.org/jira/browse/HBASE-12678) | HBCK should print command line arguments |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12676](https://issues.apache.org/jira/browse/HBASE-12676) | Fix the misleading ASCII art in IntegrationTestBigLinkedList |  Trivial | documentation, integration tests | Yi Deng | Yi Deng |
| [HBASE-12668](https://issues.apache.org/jira/browse/HBASE-12668) | Adapt PayloadCarryingRpcController so it can also be used in async way |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12659](https://issues.apache.org/jira/browse/HBASE-12659) | Replace the method calls to grant and revoke in shell scripts with AccessControlClient |  Minor | security, shell | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12653](https://issues.apache.org/jira/browse/HBASE-12653) | Move TestRegionServerOnlineConfigChange & TestConfigurationManager to Junit4 tests |  Minor | test | Ashish Singhi | Ashish Singhi |
| [HBASE-12650](https://issues.apache.org/jira/browse/HBASE-12650) | Move ServerName to hbase-common module |  Blocker | . | Gaurav Menghani | Ted Yu |
| [HBASE-12641](https://issues.apache.org/jira/browse/HBASE-12641) | Grant all permissions of hbase zookeeper node to hbase superuser in a secure cluster |  Minor | Zookeeper | Liu Shaohui | Liu Shaohui |
| [HBASE-12640](https://issues.apache.org/jira/browse/HBASE-12640) | Add Thrift-over-HTTPS and doAs support for Thrift Server |  Major | Thrift | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12627](https://issues.apache.org/jira/browse/HBASE-12627) | Add back snapshot batching facility from HBASE-11360 dropped by HBASE-11742 |  Major | master, scaling | stack | churro morales |
| [HBASE-12620](https://issues.apache.org/jira/browse/HBASE-12620) | Add HBASE-11639 related items to Ref Guide |  Major | documentation | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12608](https://issues.apache.org/jira/browse/HBASE-12608) | region\_mover.rb does not log moving region count correctly when loading regions |  Minor | shell | cuijianwei | cuijianwei |
| [HBASE-12601](https://issues.apache.org/jira/browse/HBASE-12601) | Explain how to grant/revoke permission to a group/namespace in grant/revoke command usage |  Minor | documentation, security, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12597](https://issues.apache.org/jira/browse/HBASE-12597) | Add RpcClient interface and enable changing of RpcClient implementation |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12590](https://issues.apache.org/jira/browse/HBASE-12590) | A solution for data skew in HBase-Mapreduce Job |  Major | mapreduce | Weichen Ye | Weichen Ye |
| [HBASE-12583](https://issues.apache.org/jira/browse/HBASE-12583) | Allow creating reference files even the split row not lies in the storefile range if required |  Major | . | rajeshbabu | rajeshbabu |
| [HBASE-12569](https://issues.apache.org/jira/browse/HBASE-12569) | Control MaxDirectMemorySize in the same manner as heap size |  Minor | scripts | Patrick White | Patrick White |
| [HBASE-12559](https://issues.apache.org/jira/browse/HBASE-12559) | Provide LoadBalancer with online configuration capability |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12529](https://issues.apache.org/jira/browse/HBASE-12529) | Use ThreadLocalRandom for RandomQueueBalancer |  Minor | IPC/RPC | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12455](https://issues.apache.org/jira/browse/HBASE-12455) | Add 'description' to bean and attribute output when you do /jmx?description=true |  Major | metrics | stack | stack |
| [HBASE-12447](https://issues.apache.org/jira/browse/HBASE-12447) | Add support for setTimeRange for RowCounter and CellCounter |  Minor | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12434](https://issues.apache.org/jira/browse/HBASE-12434) | Add a command to compact all the regions in a regionserver |  Minor | shell | Liu Shaohui | Liu Shaohui |
| [HBASE-12432](https://issues.apache.org/jira/browse/HBASE-12432) | RpcRetryingCaller should log after fixed number of retries like AsyncProcess |  Minor | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12429](https://issues.apache.org/jira/browse/HBASE-12429) | Add port to ClusterManager's actions. |  Major | integration tests | Elliott Clark | Elliott Clark |
| [HBASE-12424](https://issues.apache.org/jira/browse/HBASE-12424) | Finer grained logging and metrics for split transactions |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12416](https://issues.apache.org/jira/browse/HBASE-12416) | RegionServerCallable should report what host it was communicating with |  Trivial | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12415](https://issues.apache.org/jira/browse/HBASE-12415) | Add add(byte[][] arrays) to Bytes. |  Major | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-12411](https://issues.apache.org/jira/browse/HBASE-12411) | Optionally enable p-reads and private readers for compactions |  Major | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12405](https://issues.apache.org/jira/browse/HBASE-12405) | WAL accounting by Store |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-12390](https://issues.apache.org/jira/browse/HBASE-12390) | Change revision style from svn to git |  Minor | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12389](https://issues.apache.org/jira/browse/HBASE-12389) | Reduce the number of versions configured for the ACL table |  Minor | security | Andrew Purtell | Andrew Purtell |
| [HBASE-12373](https://issues.apache.org/jira/browse/HBASE-12373) | Provide a command to list visibility labels |  Minor | . | Jerry He | Jerry He |
| [HBASE-12328](https://issues.apache.org/jira/browse/HBASE-12328) | Need to separate JvmMetrics for Master and RegionServer |  Minor | . | Sanghyun Yun |  |
| [HBASE-12272](https://issues.apache.org/jira/browse/HBASE-12272) | Generate Thrift code through maven |  Major | build, documentation, Thrift | Niels Basjes | Niels Basjes |
| [HBASE-12271](https://issues.apache.org/jira/browse/HBASE-12271) | Add counters for files skipped during snapshot export |  Minor | snapshots | Patrick White | Patrick White |
| [HBASE-12264](https://issues.apache.org/jira/browse/HBASE-12264) | ImportTsv should fail fast if output is not specified and table does not exist |  Minor | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12251](https://issues.apache.org/jira/browse/HBASE-12251) | [book] Hadoop compat matrix 0.94 section needs cleaned up |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12249](https://issues.apache.org/jira/browse/HBASE-12249) | Script to help you adhere to the patch-naming guidelines |  Minor | documentation, scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12243](https://issues.apache.org/jira/browse/HBASE-12243) | HBaseFsck should auto set ignorePreCheckPermission to true if no fix option is set. |  Minor | hbck | Yi Deng | Yi Deng |
| [HBASE-12223](https://issues.apache.org/jira/browse/HBASE-12223) | MultiTableInputFormatBase.getSplits is too slow |  Minor | Client | shanwen | YuanBo Peng |
| [HBASE-12220](https://issues.apache.org/jira/browse/HBASE-12220) | Add hedgedReads and hedgedReadWins metrics |  Major | . | stack | stack |
| [HBASE-12212](https://issues.apache.org/jira/browse/HBASE-12212) | HBaseTestingUtility#waitUntilAllRegionsAssigned should wait for RegionStates |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-12207](https://issues.apache.org/jira/browse/HBASE-12207) | A script to help keep your Git repo fresh |  Major | documentation, scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12195](https://issues.apache.org/jira/browse/HBASE-12195) | Fix dev-support/findHangingTests |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12176](https://issues.apache.org/jira/browse/HBASE-12176) | WALCellCodec Encoders support for non-KeyValue Cells |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-12161](https://issues.apache.org/jira/browse/HBASE-12161) | Add support for grant/revoke on namespaces in AccessControlClient |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12121](https://issues.apache.org/jira/browse/HBASE-12121) | maven release plugin does not allow for customized goals |  Minor | build | Enoch Hsu | Enoch Hsu |
| [HBASE-12118](https://issues.apache.org/jira/browse/HBASE-12118) | Explain how to grant permission to a namespace in grant command usage |  Minor | documentation, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12090](https://issues.apache.org/jira/browse/HBASE-12090) | Bytes: more Unsafe, more Faster |  Major | Performance | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-12071](https://issues.apache.org/jira/browse/HBASE-12071) | Separate out thread pool for Master \<-\> RegionServer communication |  Major | . | Sudarshan Kadambi | Stephen Yuan Jiang |
| [HBASE-12049](https://issues.apache.org/jira/browse/HBASE-12049) | Help for alter command is a bit confusing |  Trivial | documentation, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12035](https://issues.apache.org/jira/browse/HBASE-12035) | Keep table state in META |  Critical | Client, master | Enis Soztutar | Andrey Stepachev |
| [HBASE-12032](https://issues.apache.org/jira/browse/HBASE-12032) | Script to stop regionservers via RPC |  Major | scripts, util | Patrick White | Patrick White |
| [HBASE-12021](https://issues.apache.org/jira/browse/HBASE-12021) | Hbase shell does not respect the HBASE\_OPTS set by the user in console |  Minor | documentation, Operability, shell | nijel | Ashish Singhi |
| [HBASE-12016](https://issues.apache.org/jira/browse/HBASE-12016) | Reduce number of versions in Meta table. Make it configurable |  Minor | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12013](https://issues.apache.org/jira/browse/HBASE-12013) | Make region\_mover.rb support multiple regionservers per host |  Major | scripts, util | Patrick White | Patrick White |
| [HBASE-12011](https://issues.apache.org/jira/browse/HBASE-12011) | Add namespace column during display of user tables |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12010](https://issues.apache.org/jira/browse/HBASE-12010) | Use TableName.META\_TABLE\_NAME instead of indirectly from HTableDescriptor |  Trivial | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12003](https://issues.apache.org/jira/browse/HBASE-12003) | Fix SecureBulkLoadEndpoint class javadoc formatting |  Trivial | documentation, security | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11948](https://issues.apache.org/jira/browse/HBASE-11948) | graceful\_stop.sh should use hbase-daemon.sh when executed on the decomissioned node |  Minor | scripts | Sebastien Barrier | Sebastien Barrier |
| [HBASE-11939](https://issues.apache.org/jira/browse/HBASE-11939) | Document compressed blockcache |  Major | documentation | Nick Dimiduk | Misty Stanley-Jones |
| [HBASE-11927](https://issues.apache.org/jira/browse/HBASE-11927) | Use Native Hadoop Library for HFile checksum (And flip default from CRC32 to CRC32C) |  Major | Performance | stack | Apekshit Sharma |
| [HBASE-11907](https://issues.apache.org/jira/browse/HBASE-11907) | Use the joni byte[] regex engine in place of j.u.regex in RegexStringComparator |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11897](https://issues.apache.org/jira/browse/HBASE-11897) | Add append and remove peer table-cfs cmds for replication |  Minor | Operability | Liu Shaohui | Liu Shaohui |
| [HBASE-11891](https://issues.apache.org/jira/browse/HBASE-11891) | Introduce HBaseInterfaceAudience level to denote class names that appear in configs. |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-11879](https://issues.apache.org/jira/browse/HBASE-11879) | Change TableInputFormatBase to take interface arguments |  Major | . | Carter | Solomon Duskis |
| [HBASE-11877](https://issues.apache.org/jira/browse/HBASE-11877) | Make TableSplit more readable |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-11873](https://issues.apache.org/jira/browse/HBASE-11873) | Hbase Version CLI enhancement |  Minor | build | Guo Ruijing | Ashish Singhi |
| [HBASE-11870](https://issues.apache.org/jira/browse/HBASE-11870) | Optimization : Avoid copy of key and value for tags addition in AC and VC |  Major | Performance, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11869](https://issues.apache.org/jira/browse/HBASE-11869) | Support snapshot owner |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-11865](https://issues.apache.org/jira/browse/HBASE-11865) | Result implements CellScannable; rather it should BE a CellScanner |  Major | . | stack | stack |
| [HBASE-11864](https://issues.apache.org/jira/browse/HBASE-11864) | Enhance HLogPrettyPrinter to print information from WAL Header |  Minor | . | Ted Yu | Chuhan Yang |
| [HBASE-11862](https://issues.apache.org/jira/browse/HBASE-11862) | Get rid of Writables in HTableDescriptor, HColumnDescriptor |  Minor | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-11847](https://issues.apache.org/jira/browse/HBASE-11847) | HFile tool should be able to print block headers |  Minor | HFile | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11846](https://issues.apache.org/jira/browse/HBASE-11846) | HStore#assertBulkLoadHFileOk should log if a full HFile verification will be performed during a bulkload |  Trivial | regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11845](https://issues.apache.org/jira/browse/HBASE-11845) | HFile tool should implement Tool, disable blockcache by default |  Minor | HFile | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11828](https://issues.apache.org/jira/browse/HBASE-11828) | callers of SeverName.valueOf should use equals and not == |  Minor | Client | Sean Busbey | Sean Busbey |
| [HBASE-11826](https://issues.apache.org/jira/browse/HBASE-11826) | Split each tableOrRegionName admin methods into two targetted methods |  Major | . | Carter | Carter |
| [HBASE-11825](https://issues.apache.org/jira/browse/HBASE-11825) | Create Connection and ConnectionManager |  Critical | . | Carter | Solomon Duskis |
| [HBASE-11821](https://issues.apache.org/jira/browse/HBASE-11821) | [ImportTSV] Abstract labels tags creation into pluggable Interface |  Major | mapreduce, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11810](https://issues.apache.org/jira/browse/HBASE-11810) | Access SSL Passwords through Credential Provider API |  Major | security | Larry McCay | Larry McCay |
| [HBASE-11796](https://issues.apache.org/jira/browse/HBASE-11796) | Add client support for atomic checkAndMutate |  Major | Client | Danny Purcell | Srikanth Srungarapu |
| [HBASE-11777](https://issues.apache.org/jira/browse/HBASE-11777) | Find a way to set sequenceId on Cells on the server |  Major | . | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-11774](https://issues.apache.org/jira/browse/HBASE-11774) | Avoid allocating unnecessary tag iterators |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11760](https://issues.apache.org/jira/browse/HBASE-11760) | Tighten up region state transition |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11757](https://issues.apache.org/jira/browse/HBASE-11757) | Provide a common base abstract class for both RegionObserver and MasterObserver |  Major | . | Andrew Purtell | Matteo Bertozzi |
| [HBASE-11754](https://issues.apache.org/jira/browse/HBASE-11754) | [Shell] Record table property SPLITS\_FILE in descriptor |  Trivial | . | chendihao | chendihao |
| [HBASE-11749](https://issues.apache.org/jira/browse/HBASE-11749) | Better error logging when coprocessors loading has failed. |  Trivial | Coprocessors, Usability | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11748](https://issues.apache.org/jira/browse/HBASE-11748) | Cleanup and add pool usage tracing to Compression |  Trivial | io | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11731](https://issues.apache.org/jira/browse/HBASE-11731) | Add option to only run a subset of the shell tests |  Minor | build, shell | Sean Busbey | Sean Busbey |
| [HBASE-11706](https://issues.apache.org/jira/browse/HBASE-11706) | Set versions for VerifyReplication |  Minor | mapreduce | cuijianwei | cuijianwei |
| [HBASE-11702](https://issues.apache.org/jira/browse/HBASE-11702) | Better introspection of long running compactions |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11701](https://issues.apache.org/jira/browse/HBASE-11701) | Start and end of memstore flush log should be on the same level |  Trivial | Usability | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11697](https://issues.apache.org/jira/browse/HBASE-11697) | Improve the 'Too many blocks' message on UI blockcache status page |  Minor | . | Andrew Purtell | Mikhail Antonov |
| [HBASE-11696](https://issues.apache.org/jira/browse/HBASE-11696) | Make CombinedBlockCache resizable. |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11679](https://issues.apache.org/jira/browse/HBASE-11679) | Replace "HTable" with "HTableInterface" where backwards-compatible |  Major | . | Carter | Carter |
| [HBASE-11674](https://issues.apache.org/jira/browse/HBASE-11674) | LoadIncrementalHFiles should be more verbose after unrecoverable error |  Minor | mapreduce | Jan Lukavsky | Jan Lukavsky |
| [HBASE-11667](https://issues.apache.org/jira/browse/HBASE-11667) | Comment ClientScanner logic for NSREs. |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11664](https://issues.apache.org/jira/browse/HBASE-11664) | Build broken - TestVisibilityWithCheckAuths |  Blocker | . | Carter | Carter |
| [HBASE-11657](https://issues.apache.org/jira/browse/HBASE-11657) | Put HTable region methods in an interface |  Major | . | Carter | Carter |
| [HBASE-11650](https://issues.apache.org/jira/browse/HBASE-11650) | Write hbase.id to a temporary location and move into place |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11649](https://issues.apache.org/jira/browse/HBASE-11649) | Add shortcut commands to bin/hbase for test tools |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11639](https://issues.apache.org/jira/browse/HBASE-11639) | [Visibility controller] Replicate the visibility of Cells as strings |  Major | Replication, security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11631](https://issues.apache.org/jira/browse/HBASE-11631) | Wait a little till server is online in assigning meta |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11630](https://issues.apache.org/jira/browse/HBASE-11630) | Refactor TestAdmin to use Admin interface instead of HBaseAdmin |  Major | . | Carter | Carter |
| [HBASE-11623](https://issues.apache.org/jira/browse/HBASE-11623) | mutateRowsWithLocks might require updatesLock.readLock with waitTime=0 |  Minor | regionserver | cuijianwei | cuijianwei |
| [HBASE-11611](https://issues.apache.org/jira/browse/HBASE-11611) | Clean up ZK-based region assignment |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11585](https://issues.apache.org/jira/browse/HBASE-11585) | PE: Allows warm-up |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11583](https://issues.apache.org/jira/browse/HBASE-11583) | Refactoring out the configuration changes for enabling VisibilityLabels in the unit tests. |  Minor | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11566](https://issues.apache.org/jira/browse/HBASE-11566) | make ExportSnapshot extendable by removing 'final' |  Minor | snapshots | Demai Ni | Andrew Purtell |
| [HBASE-11553](https://issues.apache.org/jira/browse/HBASE-11553) | Abstract visibility label related services into an interface |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11548](https://issues.apache.org/jira/browse/HBASE-11548) | [PE] Add 'cycling' test N times and unit tests for size/zipf/valueSize calculations |  Trivial | test | stack | stack |
| [HBASE-11516](https://issues.apache.org/jira/browse/HBASE-11516) | Track time spent in executing coprocessors in each region. |  Minor | Coprocessors | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11513](https://issues.apache.org/jira/browse/HBASE-11513) | Combine SingleMultiple Queue RpcExecutor into a single class |  Minor | io, regionserver | Jesse Yates | Jesse Yates |
| [HBASE-11497](https://issues.apache.org/jira/browse/HBASE-11497) | Expose RpcScheduling implementations as LimitedPrivate interfaces |  Major | io, regionserver, Usability | Jesse Yates | Jesse Yates |
| [HBASE-11491](https://issues.apache.org/jira/browse/HBASE-11491) | Add an option to sleep randomly during the tests with the PE tool |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11474](https://issues.apache.org/jira/browse/HBASE-11474) | [Thrift2] support authentication/impersonation |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11473](https://issues.apache.org/jira/browse/HBASE-11473) | Add BaseWALObserver class |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11452](https://issues.apache.org/jira/browse/HBASE-11452) | add getUserPermission feature in AccessControlClient as client API |  Major | Client, security | Demai Ni | Demai Ni |
| [HBASE-11450](https://issues.apache.org/jira/browse/HBASE-11450) | Improve file size info in SnapshotInfo tool |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11444](https://issues.apache.org/jira/browse/HBASE-11444) | Remove use of reflection for User#getShortName |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11440](https://issues.apache.org/jira/browse/HBASE-11440) | Make KeyValueCodecWithTags as the default codec for replication in trunk |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11438](https://issues.apache.org/jira/browse/HBASE-11438) | [Visibility Controller] Support UTF8 character as Visibility Labels |  Major | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11437](https://issues.apache.org/jira/browse/HBASE-11437) | Modify cell tag handling code to treat the length as unsigned |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11412](https://issues.apache.org/jira/browse/HBASE-11412) | Minimize a number of hbase-client transitive dependencies |  Minor | Client | Sergey Beryozkin | Sergey Beryozkin |
| [HBASE-11400](https://issues.apache.org/jira/browse/HBASE-11400) | Edit, consolidate, and update Compression and data encoding docs |  Minor | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11349](https://issues.apache.org/jira/browse/HBASE-11349) | [Thrift] support authentication/impersonation |  Major | security, Thrift | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11344](https://issues.apache.org/jira/browse/HBASE-11344) | Hide row keys and such from the web UIs |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-11331](https://issues.apache.org/jira/browse/HBASE-11331) | [blockcache] lazy block decompression |  Major | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11315](https://issues.apache.org/jira/browse/HBASE-11315) | Keeping MVCC for configurable longer time |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-11240](https://issues.apache.org/jira/browse/HBASE-11240) | Print hdfs pipeline when hlog's sync is slow |  Major | Operability, wal | Liu Shaohui | Liu Shaohui |
| [HBASE-11195](https://issues.apache.org/jira/browse/HBASE-11195) | Potentially improve block locality during major compaction for old regions |  Major | . | churro morales | churro morales |
| [HBASE-11144](https://issues.apache.org/jira/browse/HBASE-11144) | Filter to support scanning multiple row key ranges |  Major | Filters | Jiajia Li | Jiajia Li |
| [HBASE-11136](https://issues.apache.org/jira/browse/HBASE-11136) | Add permission check to roll WAL writer |  Minor | regionserver, security | Jerry He | Jerry He |
| [HBASE-11068](https://issues.apache.org/jira/browse/HBASE-11068) | Update code to use Admin factory method instead of constructor |  Major | . | Carter | Carter |
| [HBASE-10885](https://issues.apache.org/jira/browse/HBASE-10885) | Support visibility expressions on Deletes |  Blocker | . | Andrew Purtell | ramkrishna.s.vasudevan |
| [HBASE-10483](https://issues.apache.org/jira/browse/HBASE-10483) | Provide API for retrieving info port when hbase.master.info.port is set to 0 |  Major | . | Ted Yu | Liu Shaohui |
| [HBASE-10411](https://issues.apache.org/jira/browse/HBASE-10411) | [Book] Add a kerberos 'request is a replay (34)' issue at troubleshooting section |  Minor | documentation, security | takeshi.miao | takeshi.miao |
| [HBASE-10202](https://issues.apache.org/jira/browse/HBASE-10202) | Documentation is lacking information about rolling-restart.sh script. |  Major | documentation | Jean-Marc Spaggiari | Misty Stanley-Jones |
| [HBASE-10201](https://issues.apache.org/jira/browse/HBASE-10201) | Port 'Make flush decisions per column family' to trunk |  Major | wal | Ted Yu | Duo Zhang |
| [HBASE-10153](https://issues.apache.org/jira/browse/HBASE-10153) | improve VerifyReplication to compute BADROWS more accurately |  Major | Operability, Replication | cuijianwei | cuijianwei |
| [HBASE-10082](https://issues.apache.org/jira/browse/HBASE-10082) | Describe 'table' output is all on one line, could use better formatting |  Minor | shell | Maxime C Dumas | Srikanth Srungarapu |
| [HBASE-8572](https://issues.apache.org/jira/browse/HBASE-8572) | Enhance delete\_snapshot.rb to call snapshot deletion API with regex |  Major | . | Ted Yu | Ashish Singhi |
| [HBASE-8361](https://issues.apache.org/jira/browse/HBASE-8361) | Bulk load and other utilities should not create tables for user |  Major | mapreduce | Nick Dimiduk | Ashish Singhi |
| [HBASE-8329](https://issues.apache.org/jira/browse/HBASE-8329) | Limit compaction speed |  Major | Compaction | binlijin | Duo Zhang |
| [HBASE-8298](https://issues.apache.org/jira/browse/HBASE-8298) | In shell, provide alias of 'desc' for 'describe' |  Trivial | shell | Hari Sekhon | Sean Busbey |
| [HBASE-7910](https://issues.apache.org/jira/browse/HBASE-7910) | Dont use reflection for security |  Major | . | Enis Soztutar | Mike Drob |
| [HBASE-7782](https://issues.apache.org/jira/browse/HBASE-7782) | HBaseTestingUtility.truncateTable() not acting like CLI |  Minor | test | Adrien Mogenet | Sean Busbey |
| [HBASE-7541](https://issues.apache.org/jira/browse/HBASE-7541) | Convert all tests that use HBaseTestingUtility.createMultiRegions to HBA.createTable |  Major | . | Jean-Daniel Cryans | Jonathan Lawlor |
| [HBASE-6919](https://issues.apache.org/jira/browse/HBASE-6919) | Remove unnecessary throws IOException from Bytes.readVLong |  Minor | . | James Taylor | Apekshit Sharma |
| [HBASE-6626](https://issues.apache.org/jira/browse/HBASE-6626) | Add a chapter on HDFS in the troubleshooting section of the HBase reference guide. |  Blocker | documentation | Nicolas Liochon | Misty Stanley-Jones |
| [HBASE-6290](https://issues.apache.org/jira/browse/HBASE-6290) | Add a function a mark a server as dead and start the recovery the process |  Minor | monitoring | Nicolas Liochon | Talat UYARER |
| [HBASE-5699](https://issues.apache.org/jira/browse/HBASE-5699) | Run with \> 1 WAL in HRegionServer |  Critical | Performance, wal | binlijin | Sean Busbey |
| [HBASE-5696](https://issues.apache.org/jira/browse/HBASE-5696) | Use Hadoop's DataOutputOutputStream instead of have a copy local |  Major | . | stack | Talat UYARER |
| [HBASE-4955](https://issues.apache.org/jira/browse/HBASE-4955) | Use the official versions of surefire & junit |  Critical | test | Nicolas Liochon | Alex Newman |
| [HBASE-4495](https://issues.apache.org/jira/browse/HBASE-4495) | CatalogTracker has an identity crisis; needs to be cut-back in scope |  Major | . | stack | Mikhail Antonov |
| [HBASE-3270](https://issues.apache.org/jira/browse/HBASE-3270) | When we create the .version file, we should create it in a tmp location and then move it into place |  Minor | master | stack | Andrew Purtell |
| [HBASE-3135](https://issues.apache.org/jira/browse/HBASE-3135) | Make our MR jobs implement Tool and use ToolRunner so can do -D trickery, etc. |  Major | . | stack | Talat UYARER |
| [HBASE-2609](https://issues.apache.org/jira/browse/HBASE-2609) | Harmonize the Get and Delete operations |  Major | Client | Jeff Hammerbacher | stack |
| [HBASE-2217](https://issues.apache.org/jira/browse/HBASE-2217) | VM OPTS for shell only |  Major | . | stack | Andrew Purtell |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14011](https://issues.apache.org/jira/browse/HBASE-14011) | MultiByteBuffer position based reads does not work correctly |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14010](https://issues.apache.org/jira/browse/HBASE-14010) | TestRegionRebalancing.testRebalanceOnRegionServerNumberChange fails; cluster not balanced |  Major | test | stack | stack |
| [HBASE-14005](https://issues.apache.org/jira/browse/HBASE-14005) | Set permission to .top hfile in LoadIncrementalHFiles |  Trivial | . | Francesco MDE | Francesco MDE |
| [HBASE-13995](https://issues.apache.org/jira/browse/HBASE-13995) | ServerName is not fully case insensitive |  Major | Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13989](https://issues.apache.org/jira/browse/HBASE-13989) | Threshold for combined MemStore and BlockCache percentages is not checked |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13978](https://issues.apache.org/jira/browse/HBASE-13978) | Variable never assigned in SimpleTotalOrderPartitioner.getPartition() |  Major | mapreduce | Lars George | Bhupendra Kumar Jain |
| [HBASE-13974](https://issues.apache.org/jira/browse/HBASE-13974) | TestRateLimiter#testFixedIntervalResourceAvailability may fail |  Minor | test | Guanghao Zhang | Guanghao Zhang |
| [HBASE-13970](https://issues.apache.org/jira/browse/HBASE-13970) | NPE during compaction in trunk |  Major | . | ramkrishna.s.vasudevan | Duo Zhang |
| [HBASE-13969](https://issues.apache.org/jira/browse/HBASE-13969) | AuthenticationTokenSecretManager is never stopped in RPCServer |  Minor | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-13959](https://issues.apache.org/jira/browse/HBASE-13959) | Region splitting uses a single thread in most common cases |  Critical | regionserver | Hari Krishna Dara | Hari Krishna Dara |
| [HBASE-13958](https://issues.apache.org/jira/browse/HBASE-13958) | RESTApiClusterManager calls kill() instead of suspend() and resume() |  Minor | integration tests | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13945](https://issues.apache.org/jira/browse/HBASE-13945) | Prefix\_Tree seekBefore() does not work correctly |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13938](https://issues.apache.org/jira/browse/HBASE-13938) | Deletes done during the region merge transaction may get eclipsed |  Major | master, regionserver | Devaraj Das | Enis Soztutar |
| [HBASE-13933](https://issues.apache.org/jira/browse/HBASE-13933) | DBE's seekBefore with tags corrupts the tag's offset information thus leading to incorrect results |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13930](https://issues.apache.org/jira/browse/HBASE-13930) | Exclude Findbugs packages from shaded jars |  Major | . | Nick Dimiduk | Gabor Liptak |
| [HBASE-13923](https://issues.apache.org/jira/browse/HBASE-13923) | Loaded region coprocessors are not reported in shell status command |  Major | regionserver, shell | Lars George | Ashish Singhi |
| [HBASE-13918](https://issues.apache.org/jira/browse/HBASE-13918) | Fix hbase:namespace description in webUI |  Trivial | hbase | Patrick White | Patrick White |
| [HBASE-13913](https://issues.apache.org/jira/browse/HBASE-13913) | RAT exclusion list missing asciidoctor support files |  Major | . | Sean Busbey | Andrew Purtell |
| [HBASE-13905](https://issues.apache.org/jira/browse/HBASE-13905) | TestRecoveredEdits.testReplayWorksThoughLotsOfFlushing failing consistently on branch-1.1 |  Critical | regionserver, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13901](https://issues.apache.org/jira/browse/HBASE-13901) | Error while calling watcher on creating and deleting an HBase table |  Minor | . | neha | Ashish Singhi |
| [HBASE-13895](https://issues.apache.org/jira/browse/HBASE-13895) | DATALOSS: Region assigned before WAL replay when abort |  Critical | . | stack | stack |
| [HBASE-13893](https://issues.apache.org/jira/browse/HBASE-13893) | Replace HTable with Table in client tests |  Major | Client, test | Jurriaan Mous | Jurriaan Mous |
| [HBASE-13892](https://issues.apache.org/jira/browse/HBASE-13892) | Scanner with all results filtered out results in NPE |  Critical | Client | Josh Elser | Josh Elser |
| [HBASE-13888](https://issues.apache.org/jira/browse/HBASE-13888) | Fix refill bug from HBASE-13686 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-13885](https://issues.apache.org/jira/browse/HBASE-13885) | ZK watches leaks during snapshots |  Critical | snapshots | Abhishek Singh Chouhan | Lars Hofhansl |
| [HBASE-13878](https://issues.apache.org/jira/browse/HBASE-13878) | Set hbase.fs.tmp.dir config in HBaseTestingUtility.java for Phoenix UT to use |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13877](https://issues.apache.org/jira/browse/HBASE-13877) | Interrupt to flush from TableFlushProcedure causes dataloss in ITBLL |  Blocker | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13875](https://issues.apache.org/jira/browse/HBASE-13875) | Clock skew between master and region server may render restored region without server address |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13873](https://issues.apache.org/jira/browse/HBASE-13873) | LoadTestTool addAuthInfoToConf throws UnsupportedOperationException |  Major | integration tests | sunyerui | sunyerui |
| [HBASE-13863](https://issues.apache.org/jira/browse/HBASE-13863) | Multi-wal feature breaks reported number and size of HLogs |  Major | regionserver, UI | Elliott Clark | Abhilash |
| [HBASE-13861](https://issues.apache.org/jira/browse/HBASE-13861) | BucketCacheTmpl.jamon has wrong bucket free and used labels |  Major | regionserver, UI | Lars George | Matt Warhaftig |
| [HBASE-13853](https://issues.apache.org/jira/browse/HBASE-13853) | ITBLL improvements after HBASE-13811 |  Blocker | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13851](https://issues.apache.org/jira/browse/HBASE-13851) | RpcClientImpl.close() can hang with cancelled replica RPCs |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13847](https://issues.apache.org/jira/browse/HBASE-13847) | getWriteRequestCount function in HRegionServer uses int variable to return the count. |  Major | hbase, regionserver | Abhilash | Abhilash |
| [HBASE-13845](https://issues.apache.org/jira/browse/HBASE-13845) | Expire of one region server carrying meta can bring down the master |  Major | master | Jerry He | Jerry He |
| [HBASE-13835](https://issues.apache.org/jira/browse/HBASE-13835) | KeyValueHeap.current might be in heap when exception happens in pollRealKV |  Major | Scanners | zhouyingchao | zhouyingchao |
| [HBASE-13834](https://issues.apache.org/jira/browse/HBASE-13834) | Evict count not properly passed to HeapMemoryTuner. |  Major | hbase, regionserver | Abhilash | Abhilash |
| [HBASE-13833](https://issues.apache.org/jira/browse/HBASE-13833) | LoadIncrementalHFile.doBulkLoad(Path,HTable) doesn't handle unmanaged connections when using SecureBulkLoad |  Major | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13831](https://issues.apache.org/jira/browse/HBASE-13831) | TestHBaseFsck#testParallelHbck is flaky against hadoop 2.6+ |  Minor | hbck, test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13826](https://issues.apache.org/jira/browse/HBASE-13826) | Unable to create table when group acls are appropriately set. |  Major | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13824](https://issues.apache.org/jira/browse/HBASE-13824) | TestGenerateDelegationToken: Master fails to start in Windows environment |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13821](https://issues.apache.org/jira/browse/HBASE-13821) | WARN if hbase.bucketcache.percentage.in.combinedcache is set |  Minor | regionserver, Usability | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13820](https://issues.apache.org/jira/browse/HBASE-13820) | Zookeeper is failing to start |  Critical | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13813](https://issues.apache.org/jira/browse/HBASE-13813) | Fix Javadoc warnings in Procedure.java |  Minor | documentation | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13812](https://issues.apache.org/jira/browse/HBASE-13812) | Deleting of last Column Family of a table should not be allowed |  Major | master | Sophia Feng | Enis Soztutar |
| [HBASE-13811](https://issues.apache.org/jira/browse/HBASE-13811) | Splitting WALs, we are filtering out too many edits -\> DATALOSS |  Critical | wal | stack | stack |
| [HBASE-13809](https://issues.apache.org/jira/browse/HBASE-13809) | TestRowTooBig should use HDFS directory for its region directory |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13802](https://issues.apache.org/jira/browse/HBASE-13802) | Procedure V2: Master fails to come up due to rollback of create namespace table |  Major | master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13801](https://issues.apache.org/jira/browse/HBASE-13801) | Hadoop src checksum is shown instead of HBase src checksum in master / RS UI |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13800](https://issues.apache.org/jira/browse/HBASE-13800) | TestStore#testDeleteExpiredStoreFiles should create unique data/log directory for each call |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13797](https://issues.apache.org/jira/browse/HBASE-13797) | Fix resource leak in HBaseFsck |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-13796](https://issues.apache.org/jira/browse/HBASE-13796) | ZKUtil doesn't clean quorum setting properly |  Minor | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-13789](https://issues.apache.org/jira/browse/HBASE-13789) | ForeignException should not be sent to the client |  Minor | Client, master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13779](https://issues.apache.org/jira/browse/HBASE-13779) | Calling table.exists() before table.get() end up with an empty Result |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13778](https://issues.apache.org/jira/browse/HBASE-13778) | BoundedByteBufferPool incorrectly increasing runningAverage buffer length |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13777](https://issues.apache.org/jira/browse/HBASE-13777) | Table fragmentation display triggers NPE on master status page |  Major | UI | Lars George | Lars George |
| [HBASE-13776](https://issues.apache.org/jira/browse/HBASE-13776) | Setting illegal versions for HColumnDescriptor does not throw IllegalArgumentException |  Major | . | Yuhao Bi | Yuhao Bi |
| [HBASE-13768](https://issues.apache.org/jira/browse/HBASE-13768) | ZooKeeper znodes are bootstrapped with insecure ACLs in a secure configuration |  Blocker | . | Andrew Purtell | Enis Soztutar |
| [HBASE-13767](https://issues.apache.org/jira/browse/HBASE-13767) | Allow ZKAclReset to set and not just clear ZK ACLs |  Trivial | Operability, Zookeeper | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13760](https://issues.apache.org/jira/browse/HBASE-13760) | Cleanup Findbugs keySet iterator warnings |  Minor | . | Gabor Liptak | Gabor Liptak |
| [HBASE-13746](https://issues.apache.org/jira/browse/HBASE-13746) | list\_replicated\_tables command is not listing table in hbase shell. |  Major | shell | Y. SREENIVASULU REDDY | Abhishek Kumar |
| [HBASE-13741](https://issues.apache.org/jira/browse/HBASE-13741) | Disable TestRegionObserverInterface#testRecovery and testLegacyRecovery |  Minor | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13734](https://issues.apache.org/jira/browse/HBASE-13734) | Improper timestamp checking with VisibilityScanDeleteTracker |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-13733](https://issues.apache.org/jira/browse/HBASE-13733) | Failed MiniZooKeeperCluster startup did not shutdown ZK servers |  Major | Zookeeper | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13732](https://issues.apache.org/jira/browse/HBASE-13732) | TestHBaseFsck#testParallelWithRetriesHbck fails intermittently |  Minor | hbck, test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13731](https://issues.apache.org/jira/browse/HBASE-13731) | TestReplicationAdmin should clean up MiniZKCluster resource |  Trivial | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13729](https://issues.apache.org/jira/browse/HBASE-13729) | Old hbase.regionserver.global.memstore.upperLimit and lowerLimit properties are ignored if present |  Critical | regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13723](https://issues.apache.org/jira/browse/HBASE-13723) | In table.rb scanners are never closed. |  Major | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-13722](https://issues.apache.org/jira/browse/HBASE-13722) | Avoid non static method from BloomFilterUtil |  Trivial | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13721](https://issues.apache.org/jira/browse/HBASE-13721) | Improve shell scan performances when using LIMIT |  Major | shell | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-13719](https://issues.apache.org/jira/browse/HBASE-13719) | Asynchronous scanner -- cache size-in-bytes bug fix |  Major | . | Eshcar Hillel | Eshcar Hillel |
| [HBASE-13717](https://issues.apache.org/jira/browse/HBASE-13717) | TestBoundedRegionGroupingProvider#setMembershipDedups need to set HDFS diretory for WAL |  Minor | wal | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13711](https://issues.apache.org/jira/browse/HBASE-13711) | Provide an API to set min and max versions in HColumnDescriptor |  Minor | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13709](https://issues.apache.org/jira/browse/HBASE-13709) | Updates to meta table server columns may be eclipsed |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13704](https://issues.apache.org/jira/browse/HBASE-13704) | Hbase throws OutOfOrderScannerNextException when MultiRowRangeFilter is used |  Major | Client | Aleksandr Maksymenko | Aleksandr Maksymenko |
| [HBASE-13703](https://issues.apache.org/jira/browse/HBASE-13703) | ReplicateContext should not be a member of ReplicationSource |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13700](https://issues.apache.org/jira/browse/HBASE-13700) | Allow Thrift2 HSHA server to have configurable threads |  Major | Thrift | Elliott Clark | Elliott Clark |
| [HBASE-13699](https://issues.apache.org/jira/browse/HBASE-13699) | Expand information about HBase quotas |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13698](https://issues.apache.org/jira/browse/HBASE-13698) | Add RegionLocator methods to Thrift2 proxy. |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13694](https://issues.apache.org/jira/browse/HBASE-13694) | CallQueueSize is incorrectly decremented until the response is sent |  Major | master, regionserver, rpc | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13686](https://issues.apache.org/jira/browse/HBASE-13686) | Fail to limit rate in RateLimiter |  Major | . | Guanghao Zhang | Ashish Singhi |
| [HBASE-13668](https://issues.apache.org/jira/browse/HBASE-13668) | TestFlushRegionEntry is flaky |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13663](https://issues.apache.org/jira/browse/HBASE-13663) | HMaster fails to restart 'HMaster: Failed to become active master' |  Major | hbase | Romil Choksi | Ted Yu |
| [HBASE-13662](https://issues.apache.org/jira/browse/HBASE-13662) | RSRpcService.scan() throws an OutOfOrderScannerNext if the scan has a retriable failure |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13661](https://issues.apache.org/jira/browse/HBASE-13661) | Correct binary compatibility issues discovered in 1.1.0RC0 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13653](https://issues.apache.org/jira/browse/HBASE-13653) | Uninitialized HRegionServer#walFactory may result in NullPointerException at region server startup​ |  Major | hbase | Romil Choksi | Ted Yu |
| [HBASE-13651](https://issues.apache.org/jira/browse/HBASE-13651) | Handle StoreFileScanner FileNotFoundException |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13649](https://issues.apache.org/jira/browse/HBASE-13649) | CellComparator.compareTimestamps javadoc inconsistent and wrong |  Minor | documentation | Dave Latham | Dave Latham |
| [HBASE-13648](https://issues.apache.org/jira/browse/HBASE-13648) | test-patch.sh should ignore 'protobuf.generated' |  Minor | build | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13647](https://issues.apache.org/jira/browse/HBASE-13647) | Default value for hbase.client.operation.timeout is too high |  Blocker | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13638](https://issues.apache.org/jira/browse/HBASE-13638) | Put copy constructor is shallow |  Major | . | Dave Latham | Changgeng Li |
| [HBASE-13635](https://issues.apache.org/jira/browse/HBASE-13635) | Regions stuck in transition because master is incorrectly assumed dead |  Major | master, regionserver | Elliott Clark | Elliott Clark |
| [HBASE-13634](https://issues.apache.org/jira/browse/HBASE-13634) | Avoid unsafe reference equality checks to EMPTY byte[] |  Major | Compaction, Scanners | Dave Latham | Lars Francke |
| [HBASE-13633](https://issues.apache.org/jira/browse/HBASE-13633) | draining\_servers.rb broken with NoMethodError: undefined method 'getServerInfo' |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-13630](https://issues.apache.org/jira/browse/HBASE-13630) | Remove dead code in BufferedDataEncoder |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13628](https://issues.apache.org/jira/browse/HBASE-13628) | Use AtomicLong as size in BoundedConcurrentLinkedQueue |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-13625](https://issues.apache.org/jira/browse/HBASE-13625) | Use HDFS for HFileOutputFormat2 partitioner's path |  Major | mapreduce | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13618](https://issues.apache.org/jira/browse/HBASE-13618) | ReplicationSource is too eager to remove sinks |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13617](https://issues.apache.org/jira/browse/HBASE-13617) | TestReplicaWithCluster.testChangeTable timeout |  Major | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13612](https://issues.apache.org/jira/browse/HBASE-13612) | TestRegionFavoredNodes doesn't guard against setup failure |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-13611](https://issues.apache.org/jira/browse/HBASE-13611) | update clover to work for current versions |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-13608](https://issues.apache.org/jira/browse/HBASE-13608) | 413 Error with Stargate through Knox, using AD, SPNEGO, and Pre-Auth |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13607](https://issues.apache.org/jira/browse/HBASE-13607) | TestSplitLogManager.testGetPreviousRecoveryMode consistently failing |  Minor | test | Josh Elser | Josh Elser |
| [HBASE-13606](https://issues.apache.org/jira/browse/HBASE-13606) | AssignmentManager.assign() is not sync in both path |  Major | Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13604](https://issues.apache.org/jira/browse/HBASE-13604) | bin/hbase mapredcp does not include yammer-metrics jar |  Minor | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13600](https://issues.apache.org/jira/browse/HBASE-13600) | check\_compatibility.sh should ignore shaded jars |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13599](https://issues.apache.org/jira/browse/HBASE-13599) | The Example Provided in Section 69: Examples of the Documentation Does Not Compile |  Minor | documentation | David Newcomer | Lars Francke |
| [HBASE-13596](https://issues.apache.org/jira/browse/HBASE-13596) | src assembly does not build |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13595](https://issues.apache.org/jira/browse/HBASE-13595) | Fix Javadoc warn induced in Bytes.java |  Trivial | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13594](https://issues.apache.org/jira/browse/HBASE-13594) | MultiRowRangeFilter shouldn't call HBaseZeroCopyByteString.wrap() directly |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13589](https://issues.apache.org/jira/browse/HBASE-13589) | [WINDOWS] hbase.cmd script is broken |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13585](https://issues.apache.org/jira/browse/HBASE-13585) | HRegionFileSystem#splitStoreFile() finishes without closing the file handle in some situation |  Major | regionserver | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13580](https://issues.apache.org/jira/browse/HBASE-13580) | region\_mover.rb broken with TypeError: no public constructors for Java::OrgApacheHadoopHbaseClient::HTable |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-13577](https://issues.apache.org/jira/browse/HBASE-13577) | Documentation is pointing to wrong port for Master Web UI |  Minor | documentation | David Newcomer | Lars Francke |
| [HBASE-13576](https://issues.apache.org/jira/browse/HBASE-13576) | HBCK enhancement: Failure in checking one region should not fail the entire HBCK operation. |  Major | hbck | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13575](https://issues.apache.org/jira/browse/HBASE-13575) | TestChoreService has to make sure that the opened ChoreService is closed for each unit test |  Trivial | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13564](https://issues.apache.org/jira/browse/HBASE-13564) | Master MBeans are not published |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13560](https://issues.apache.org/jira/browse/HBASE-13560) | Large compaction queue should steal from small compaction queue when idle |  Major | Compaction | Elliott Clark | Changgeng Li |
| [HBASE-13555](https://issues.apache.org/jira/browse/HBASE-13555) | StackServlet produces 500 error |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13546](https://issues.apache.org/jira/browse/HBASE-13546) | NPE on region server status page if all masters are down |  Major | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-13528](https://issues.apache.org/jira/browse/HBASE-13528) | A bug on selecting compaction pool |  Minor | Compaction | Shuaifeng Zhou | Shuaifeng Zhou |
| [HBASE-13527](https://issues.apache.org/jira/browse/HBASE-13527) | The default value for hbase.client.scanner.max.result.size is never actually set on Scans |  Major | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13526](https://issues.apache.org/jira/browse/HBASE-13526) | TestRegionServerReportForDuty can be flaky: hang or timeout |  Minor | test | Jerry He | Jerry He |
| [HBASE-13524](https://issues.apache.org/jira/browse/HBASE-13524) | TestReplicationAdmin fails on JDK 1.8 |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13523](https://issues.apache.org/jira/browse/HBASE-13523) | API Doumentation formatting is broken |  Minor | documentation | Dylan Jones | Dylan Jones |
| [HBASE-13520](https://issues.apache.org/jira/browse/HBASE-13520) | NullPointerException in TagRewriteCell |  Major | . | Josh Elser | Josh Elser |
| [HBASE-13517](https://issues.apache.org/jira/browse/HBASE-13517) | Publish a client artifact with shaded dependencies |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13499](https://issues.apache.org/jira/browse/HBASE-13499) | AsyncRpcClient test cases failure in powerpc |  Major | IPC/RPC | sangamesh | Duo Zhang |
| [HBASE-13491](https://issues.apache.org/jira/browse/HBASE-13491) | Issue in FuzzyRowFilter#getNextForFuzzyRule |  Major | Filters | Anoop Sam John | Anoop Sam John |
| [HBASE-13490](https://issues.apache.org/jira/browse/HBASE-13490) | foreground daemon start re-executes ulimit output |  Minor | scripts | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-13486](https://issues.apache.org/jira/browse/HBASE-13486) | region\_status.rb broken with NameError: uninitialized constant IOException |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-13482](https://issues.apache.org/jira/browse/HBASE-13482) | Phoenix is failing to scan tables on secure environments. |  Major | . | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-13477](https://issues.apache.org/jira/browse/HBASE-13477) | Create metrics on failed requests |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13475](https://issues.apache.org/jira/browse/HBASE-13475) | Small spelling mistake in region\_mover#isSuccessfulScan causes NoMethodError |  Trivial | scripts | Victor Xu | Victor Xu |
| [HBASE-13473](https://issues.apache.org/jira/browse/HBASE-13473) | deleted cells come back alive after the stripe compaction |  Blocker | Compaction | jeongmin kim | jeongmin kim |
| [HBASE-13471](https://issues.apache.org/jira/browse/HBASE-13471) | Fix a possible infinite loop in doMiniBatchMutation |  Major | . | Elliott Clark | Rajesh Nishtala |
| [HBASE-13457](https://issues.apache.org/jira/browse/HBASE-13457) | SnapshotExistsException doesn't honor the DoNotRetry |  Trivial | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13437](https://issues.apache.org/jira/browse/HBASE-13437) | ThriftServer leaks ZooKeeper connections |  Major | Thrift | Winger Pun | Winger Pun |
| [HBASE-13430](https://issues.apache.org/jira/browse/HBASE-13430) | HFiles that are in use by a table cloned from a snapshot may be deleted when that snapshot is deleted |  Critical | hbase | Tobi Vollebregt | Tobi Vollebregt |
| [HBASE-13423](https://issues.apache.org/jira/browse/HBASE-13423) | Remove duplicate entry for hbase.regionserver.regionSplitLimit in hbase-default.xml |  Minor | hbase | Apekshit Sharma | Apekshit Sharma |
| [HBASE-13417](https://issues.apache.org/jira/browse/HBASE-13417) | batchCoprocessorService() does not handle NULL keys |  Minor | Coprocessors | Lars George | Abhishek Singh Chouhan |
| [HBASE-13414](https://issues.apache.org/jira/browse/HBASE-13414) | TestHCM no longer needs to test for JRE 6. |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-13411](https://issues.apache.org/jira/browse/HBASE-13411) | Misleading error message when request size quota limit exceeds |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13410](https://issues.apache.org/jira/browse/HBASE-13410) | Bug in KeyValueUtil.oswrite() for non Keyvalue cases |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13409](https://issues.apache.org/jira/browse/HBASE-13409) | Add categories to uncategorized tests |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13406](https://issues.apache.org/jira/browse/HBASE-13406) | TestAccessController is flaky when create is slow |  Minor | security, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13397](https://issues.apache.org/jira/browse/HBASE-13397) | Purge duplicate rpc request thread local |  Major | rpc | stack | stack |
| [HBASE-13394](https://issues.apache.org/jira/browse/HBASE-13394) | Failed to recreate a table when quota is enabled |  Major | security | Y. SREENIVASULU REDDY | Ashish Singhi |
| [HBASE-13388](https://issues.apache.org/jira/browse/HBASE-13388) | Handling NullPointer in ZKProcedureMemberRpcs while getting ZNode data |  Minor | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-13385](https://issues.apache.org/jira/browse/HBASE-13385) | TestGenerateDelegationToken is broken with hadoop 2.8.0 |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13384](https://issues.apache.org/jira/browse/HBASE-13384) | Fix Javadoc warnings introduced by HBASE-12972 |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13383](https://issues.apache.org/jira/browse/HBASE-13383) | TestRegionServerObserver.testCoprocessorHooksInRegionsMerge zombie after HBASE-12975 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13382](https://issues.apache.org/jira/browse/HBASE-13382) | IntegrationTestBigLinkedList should use SecureRandom |  Major | integration tests | Todd Lipcon | Dima Spivak |
| [HBASE-13377](https://issues.apache.org/jira/browse/HBASE-13377) | Canary may generate false alarm on the first region when there are many delete markers |  Major | monitoring | He Liangliang | He Liangliang |
| [HBASE-13374](https://issues.apache.org/jira/browse/HBASE-13374) | Small scanners (with particular configurations) do not return all rows |  Blocker | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13371](https://issues.apache.org/jira/browse/HBASE-13371) | Fix typo in TestAsyncIPC |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13368](https://issues.apache.org/jira/browse/HBASE-13368) | Hash.java is declared as public Interface - but it should be Private |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13364](https://issues.apache.org/jira/browse/HBASE-13364) | Make using the default javac on by default |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-13359](https://issues.apache.org/jira/browse/HBASE-13359) | Update ACL matrix to include table owner. |  Minor | documentation | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13357](https://issues.apache.org/jira/browse/HBASE-13357) | If maxTables/maxRegions exceeds quota in a namespace, throw QuotaExceededException |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13355](https://issues.apache.org/jira/browse/HBASE-13355) | QA bot reports checking javac twice |  Minor | . | Elliott Clark | Elliott Clark |
| [HBASE-13333](https://issues.apache.org/jira/browse/HBASE-13333) | Renew Scanner Lease without advancing the RegionScanner |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13331](https://issues.apache.org/jira/browse/HBASE-13331) | Exceptions from DFS client can cause CatalogJanitor to delete referenced files |  Blocker | master | Elliott Clark | Elliott Clark |
| [HBASE-13328](https://issues.apache.org/jira/browse/HBASE-13328) | LoadIncrementalHFile.doBulkLoad(Path,HTable) should handle managed connections |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13325](https://issues.apache.org/jira/browse/HBASE-13325) | Protocol Buffers 2.5 no longer available for download on code.google.com |  Major | . | Andrew Purtell | Elliott Clark |
| [HBASE-13321](https://issues.apache.org/jira/browse/HBASE-13321) | Fix flaky TestHBaseFsck |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13317](https://issues.apache.org/jira/browse/HBASE-13317) | Region server reportForDuty stuck looping if there is a master change |  Major | regionserver | Jerry He | Jerry He |
| [HBASE-13315](https://issues.apache.org/jira/browse/HBASE-13315) | BufferedMutator should be @InterfaceAudience.Public |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-13314](https://issues.apache.org/jira/browse/HBASE-13314) | Fix NPE in HMaster.getClusterStatus() |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13312](https://issues.apache.org/jira/browse/HBASE-13312) | SmallScannerCallable does not increment scan metrics |  Major | Client, Scanners | Lars George | Andrew Purtell |
| [HBASE-13311](https://issues.apache.org/jira/browse/HBASE-13311) | TestQuotaThrottle flaky on slow machine |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13309](https://issues.apache.org/jira/browse/HBASE-13309) | Some tests do not reset EnvironmentEdgeManager |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13308](https://issues.apache.org/jira/browse/HBASE-13308) | Fix flaky TestEndToEndSplitTransaction |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13305](https://issues.apache.org/jira/browse/HBASE-13305) | Get(Get get) is not copying the row key |  Major | API | Lars George | Ashish Singhi |
| [HBASE-13301](https://issues.apache.org/jira/browse/HBASE-13301) | Possible memory leak in BucketCache |  Major | BlockCache | Duo Zhang | Duo Zhang |
| [HBASE-13299](https://issues.apache.org/jira/browse/HBASE-13299) | Add setReturnResults() to Increment, like Append has |  Critical | API | Lars George | Ashish Singhi |
| [HBASE-13298](https://issues.apache.org/jira/browse/HBASE-13298) | Clarify if Table.{set\|get}WriteBufferSize() is deprecated or not |  Critical | API | Lars George | stack |
| [HBASE-13296](https://issues.apache.org/jira/browse/HBASE-13296) | Fix the deletion of acl notify nodes for namespace. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13295](https://issues.apache.org/jira/browse/HBASE-13295) | TestInfoServers hang |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13294](https://issues.apache.org/jira/browse/HBASE-13294) | Fix the critical ancient loopholes in security testing infrastructure. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13289](https://issues.apache.org/jira/browse/HBASE-13289) | typo in splitSuccessCount  metric |  Major | metrics | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13285](https://issues.apache.org/jira/browse/HBASE-13285) | Fix flaky getRegions() in TestAccessController.setUp() |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13282](https://issues.apache.org/jira/browse/HBASE-13282) | Fix the minor issues of running Canary on kerberized environment |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13281](https://issues.apache.org/jira/browse/HBASE-13281) | 'hbase.bucketcache.size' description in hbase book is not correct |  Major | documentation | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13279](https://issues.apache.org/jira/browse/HBASE-13279) | Add src/main/asciidoc/asciidoctor.css to RAT exclusion list in POM |  Minor | documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-13275](https://issues.apache.org/jira/browse/HBASE-13275) | Setting hbase.security.authorization to false does not disable authorization |  Major | . | William Watson | Andrew Purtell |
| [HBASE-13274](https://issues.apache.org/jira/browse/HBASE-13274) | Fix misplaced deprecation in Delete#addXYZ |  Major | API | stack | Mikhail Antonov |
| [HBASE-13273](https://issues.apache.org/jira/browse/HBASE-13273) | Make Result.EMPTY\_RESULT read-only; currently it can be modified |  Major | . | stack | Mikhail Antonov |
| [HBASE-13265](https://issues.apache.org/jira/browse/HBASE-13265) | Make thrift2 usable from c++ |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13262](https://issues.apache.org/jira/browse/HBASE-13262) | ResultScanner doesn't return all rows in Scan |  Blocker | Client | Josh Elser | Josh Elser |
| [HBASE-13254](https://issues.apache.org/jira/browse/HBASE-13254) | EnableTableHandler#prepare would not throw TableNotFoundException during recovery |  Minor | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13253](https://issues.apache.org/jira/browse/HBASE-13253) | LoadIncrementalHFiles unify hfiles discovery |  Major | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13246](https://issues.apache.org/jira/browse/HBASE-13246) | Correct the assertion for namespace permissions in tearDown method of TestAccessController |  Minor | security, test | Ashish Singhi | Ashish Singhi |
| [HBASE-13242](https://issues.apache.org/jira/browse/HBASE-13242) | TestPerColumnFamilyFlush.testFlushingWhenLogRolling hung |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13239](https://issues.apache.org/jira/browse/HBASE-13239) | HBase grant at specific column level does not work for Groups |  Major | hbase | Jaymin Patel | Ted Yu |
| [HBASE-13232](https://issues.apache.org/jira/browse/HBASE-13232) | ConnectionManger : Batch pool threads and metaLookup pool threads should use different name pattern |  Trivial | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13229](https://issues.apache.org/jira/browse/HBASE-13229) | Specify bash for local-regionservers.sh and local-master-backup.sh |  Minor | scripts | Gustavo Anatoly | Gustavo Anatoly |
| [HBASE-13227](https://issues.apache.org/jira/browse/HBASE-13227) | LoadIncrementalHFile should skip non-files inside a possible family-dir |  Minor | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13224](https://issues.apache.org/jira/browse/HBASE-13224) | Minor formatting issue when logging a namespace scope in AuthResult#toContextString |  Trivial | Coprocessors, security | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13218](https://issues.apache.org/jira/browse/HBASE-13218) | Correct the syntax shown for using ExportSnapshot tool in the book |  Minor | documentation | Ashish Singhi | Ashish Singhi |
| [HBASE-13217](https://issues.apache.org/jira/browse/HBASE-13217) | Procedure fails due to ZK issue |  Major | . | ramkrishna.s.vasudevan | Jerry He |
| [HBASE-13208](https://issues.apache.org/jira/browse/HBASE-13208) | Patch build should match the patch filename and not the whole relative URL in findBranchNameFromPatchName |  Trivial | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13206](https://issues.apache.org/jira/browse/HBASE-13206) | Fix TableLock tableName log format |  Trivial | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13200](https://issues.apache.org/jira/browse/HBASE-13200) | Improper configuration can leads to endless lease recovery during failover |  Major | MTTR | He Liangliang | He Liangliang |
| [HBASE-13196](https://issues.apache.org/jira/browse/HBASE-13196) | Add info about default number of versions when using the export tool |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13194](https://issues.apache.org/jira/browse/HBASE-13194) | TableNamespaceManager not ready cause MasterQuotaManager initialization fail |  Major | master | Duo Zhang | Duo Zhang |
| [HBASE-13193](https://issues.apache.org/jira/browse/HBASE-13193) | RegionScannerImpl filters should not be reset if a partial Result is returned |  Major | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13191](https://issues.apache.org/jira/browse/HBASE-13191) | mvn site fails on jenkins due to permgen |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-13188](https://issues.apache.org/jira/browse/HBASE-13188) | java.lang.ArithmeticException issue in BoundedByteBufferPool.putBuffer |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13186](https://issues.apache.org/jira/browse/HBASE-13186) | HBase build error due to checkstyle |  Major | build | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13181](https://issues.apache.org/jira/browse/HBASE-13181) | TestHRegionReplayEvents.testReplayBulkLoadEvent fails frequently. |  Minor | . | Srikanth Srungarapu | Matteo Bertozzi |
| [HBASE-13176](https://issues.apache.org/jira/browse/HBASE-13176) | Flakey TestZooKeeper test. |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13174](https://issues.apache.org/jira/browse/HBASE-13174) | Apply HBASE-11804 to Windows scripts |  Major | scripts | Lars George | Lars George |
| [HBASE-13167](https://issues.apache.org/jira/browse/HBASE-13167) | The check for balancerCutoffTime is buggy |  Trivial | Balancer | Tianyin Xu | Mikhail Antonov |
| [HBASE-13165](https://issues.apache.org/jira/browse/HBASE-13165) | Fix docs and scripts for default max heaps size after HBASE-11804 |  Minor | documentation, scripts | Lars George | Lars George |
| [HBASE-13163](https://issues.apache.org/jira/browse/HBASE-13163) | Add HBase version to header and footer of HTML and PDF docs |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13156](https://issues.apache.org/jira/browse/HBASE-13156) | Fix minor rat violation recently introduced (asciidoctor.css). |  Major | . | stack | stack |
| [HBASE-13155](https://issues.apache.org/jira/browse/HBASE-13155) | Fix TestPrefixTree |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13150](https://issues.apache.org/jira/browse/HBASE-13150) | TestMasterObserver failing disable table at end of test |  Major | test | stack | Duo Zhang |
| [HBASE-13149](https://issues.apache.org/jira/browse/HBASE-13149) | HBase MR is broken on Hadoop 2.5+ Yarn |  Blocker | . | Jerry He | Jerry He |
| [HBASE-13146](https://issues.apache.org/jira/browse/HBASE-13146) | Race Condition in ScheduledChore and ChoreService |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-13145](https://issues.apache.org/jira/browse/HBASE-13145) | TestNamespaceAuditor.testRegionMerge is flaky |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13141](https://issues.apache.org/jira/browse/HBASE-13141) | IntegrationTestAcidGuarantees returns incorrect values for getColumnFamilies |  Major | integration tests | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13139](https://issues.apache.org/jira/browse/HBASE-13139) | Clean up missing JAVA\_HOME message in bin/hbase-config.sh |  Trivial | shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13136](https://issues.apache.org/jira/browse/HBASE-13136) | TestSplitLogManager.testGetPreviousRecoveryMode is flakey |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-13135](https://issues.apache.org/jira/browse/HBASE-13135) | Move replication ops mgmt stuff from Javadoc to Ref Guide |  Major | documentation, Replication | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13134](https://issues.apache.org/jira/browse/HBASE-13134) | mutateRow and checkAndMutate apis don't throw region level exceptions |  Major | . | Francis Liu | Francis Liu |
| [HBASE-13133](https://issues.apache.org/jira/browse/HBASE-13133) | NPE when running TestSplitLogManager |  Major | . | Duo Zhang | Andrey Stepachev |
| [HBASE-13131](https://issues.apache.org/jira/browse/HBASE-13131) | ReplicationAdmin leaks connections if there's an error in the constructor |  Critical | Replication | Sean Busbey | Sean Busbey |
| [HBASE-13123](https://issues.apache.org/jira/browse/HBASE-13123) | Minor bug in ROW bloom filter |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13119](https://issues.apache.org/jira/browse/HBASE-13119) | FileLink should implement equals |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13115](https://issues.apache.org/jira/browse/HBASE-13115) | Fix the usage of remote user in thrift doAs implementation. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13114](https://issues.apache.org/jira/browse/HBASE-13114) | [UNITTEST] TestEnableTableHandler.testDeleteForSureClearsAllTableRowsFromMeta |  Major | test | stack | Esteban Gutierrez |
| [HBASE-13112](https://issues.apache.org/jira/browse/HBASE-13112) | quota.rb, security.rb and visibility\_labels.rb leak connection |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-13111](https://issues.apache.org/jira/browse/HBASE-13111) | truncate\_preserve command is failing with undefined method error |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-13102](https://issues.apache.org/jira/browse/HBASE-13102) | Fix Pseudo-distributed Mode which was broken in 1.0.0 |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13097](https://issues.apache.org/jira/browse/HBASE-13097) | Use same EventLoopGroup for different AsyncRpcClients if possible |  Major | IPC/RPC, test | Duo Zhang | Duo Zhang |
| [HBASE-13093](https://issues.apache.org/jira/browse/HBASE-13093) | Local mode HBase instance doesn't shut down. |  Major | . | Elliott Clark | Andrey Stepachev |
| [HBASE-13091](https://issues.apache.org/jira/browse/HBASE-13091) | Split ZK Quorum on Master WebUI |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-13085](https://issues.apache.org/jira/browse/HBASE-13085) | Security issue in the implementation of Rest gataway 'doAs' proxy user support |  Critical | REST, security | Jerry He | Jerry He |
| [HBASE-13084](https://issues.apache.org/jira/browse/HBASE-13084) | Add labels to VisibilityLabelsCache asynchronously causes TestShell flakey |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13083](https://issues.apache.org/jira/browse/HBASE-13083) | Master can be dead-locked while assigning META. |  Major | master, Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13081](https://issues.apache.org/jira/browse/HBASE-13081) | Branch precommit builds are not updating to branch head before patch application |  Major | . | Andrew Purtell | Enis Soztutar |
| [HBASE-13077](https://issues.apache.org/jira/browse/HBASE-13077) | BoundedCompletionService doesn't pass trace info to server |  Major | hbase | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-13076](https://issues.apache.org/jira/browse/HBASE-13076) | Table can be forcibly enabled in AssignmentManager during table disabling. |  Major | master, Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13075](https://issues.apache.org/jira/browse/HBASE-13075) | TableInputFormatBase spuriously warning about multiple initializeTable calls |  Minor | mapreduce | Sean Busbey | Sean Busbey |
| [HBASE-13072](https://issues.apache.org/jira/browse/HBASE-13072) | BucketCache.evictBlock returns true if block does not exist |  Major | BlockCache | Duo Zhang | Duo Zhang |
| [HBASE-13070](https://issues.apache.org/jira/browse/HBASE-13070) | Fix TestCacheOnWrite |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13069](https://issues.apache.org/jira/browse/HBASE-13069) | Thrift Http Server returns an error code of 500 instead of 401 when authentication fails |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13066](https://issues.apache.org/jira/browse/HBASE-13066) | Fix typo in AsyncRpcChannel |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-13065](https://issues.apache.org/jira/browse/HBASE-13065) | Increasing -Xmx when running TestDistributedLogSplitting |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13061](https://issues.apache.org/jira/browse/HBASE-13061) | RegionStates can remove wrong region from server holdings |  Major | Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13058](https://issues.apache.org/jira/browse/HBASE-13058) | Hbase shell command 'scan' for non existent table shows unnecessary info for one unrelated existent table. |  Trivial | Client | Abhishek Kumar | Abhishek Kumar |
| [HBASE-13055](https://issues.apache.org/jira/browse/HBASE-13055) | HRegion FIXED\_OVERHEAD missed one boolean |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-13052](https://issues.apache.org/jira/browse/HBASE-13052) | Explain each region split policy |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13050](https://issues.apache.org/jira/browse/HBASE-13050) | Hbase shell create\_namespace command throws ArrayIndexOutOfBoundException for (invalid) empty text input. |  Trivial | . | Abhishek Kumar | Abhishek Kumar |
| [HBASE-13049](https://issues.apache.org/jira/browse/HBASE-13049) | wal\_roll ruby command doesn't work. |  Major | shell | Bhupendra Kumar Jain | Bhupendra Kumar Jain |
| [HBASE-13048](https://issues.apache.org/jira/browse/HBASE-13048) | Use hbase.crypto.wal.algorithm in SecureProtobufLogReader while decrypting the data |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13047](https://issues.apache.org/jira/browse/HBASE-13047) | Add "HBase Configuration" link missing on the table details pages |  Trivial | Operability | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-13041](https://issues.apache.org/jira/browse/HBASE-13041) | TestEnableTableHandler should not call AssignmentManager#assign concurrently with master |  Major | integration tests | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13040](https://issues.apache.org/jira/browse/HBASE-13040) | Possible failure of TestHMasterRPCException |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13039](https://issues.apache.org/jira/browse/HBASE-13039) | Add patchprocess/* to .gitignore to fix builds of branches |  Major | build | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13038](https://issues.apache.org/jira/browse/HBASE-13038) | Fix the java doc warning continuously reported by Hadoop QA |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13037](https://issues.apache.org/jira/browse/HBASE-13037) | LoadIncrementalHFile should try to verify the content of unmatched families |  Minor | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13036](https://issues.apache.org/jira/browse/HBASE-13036) | Meta scanner should use its own threadpool |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-13032](https://issues.apache.org/jira/browse/HBASE-13032) | Migration of states should be performed once META is assigned and onlined. |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13030](https://issues.apache.org/jira/browse/HBASE-13030) | [1.0.0 polish] Make ScanMetrics public again and align Put 'add' with Get, Delete, etc., addColumn |  Major | Operability | stack | stack |
| [HBASE-13029](https://issues.apache.org/jira/browse/HBASE-13029) | Table state should be deleted from META as a last operation in DeleteTableHandler |  Major | master | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13028](https://issues.apache.org/jira/browse/HBASE-13028) | Cleanup mapreduce API changes |  Blocker | mapreduce | Sean Busbey | Sean Busbey |
| [HBASE-13027](https://issues.apache.org/jira/browse/HBASE-13027) | mapreduce.TableInputFormatBase should create its own Connection if needed |  Blocker | mapreduce | Sean Busbey | Sean Busbey |
| [HBASE-13026](https://issues.apache.org/jira/browse/HBASE-13026) | Wrong error message in case incorrect snapshot name OR Incorrect table name |  Minor | . | Bhupendra Kumar Jain | Bhupendra Kumar Jain |
| [HBASE-13023](https://issues.apache.org/jira/browse/HBASE-13023) | Document multiWAL |  Major | documentation, wal | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13011](https://issues.apache.org/jira/browse/HBASE-13011) | TestLoadIncrementalHFiles is flakey when using AsyncRpcClient as client implementation |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-13010](https://issues.apache.org/jira/browse/HBASE-13010) | HFileOutputFormat2 partitioner's path is hard-coded as '/tmp' |  Major | mapreduce | Aditya Kishore | Aditya Kishore |
| [HBASE-13009](https://issues.apache.org/jira/browse/HBASE-13009) | HBase REST UI inaccessible |  Major | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-13007](https://issues.apache.org/jira/browse/HBASE-13007) | Fix the test timeouts being caused by ChoreService |  Major | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13004](https://issues.apache.org/jira/browse/HBASE-13004) | Make possible to explain why HBaseTestingUtility.waitFor fails |  Minor | test | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13003](https://issues.apache.org/jira/browse/HBASE-13003) | Get tests in TestHFileBlockIndex back |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13001](https://issues.apache.org/jira/browse/HBASE-13001) | NullPointer in master logs for table.jsp |  Trivial | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-12999](https://issues.apache.org/jira/browse/HBASE-12999) | Make foreground\_start return the correct exit code |  Major | shell | Elliott Clark | Elliott Clark |
| [HBASE-12998](https://issues.apache.org/jira/browse/HBASE-12998) | Compilation with Hdfs-2.7.0-SNAPSHOT is broken after HDFS-7647 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12996](https://issues.apache.org/jira/browse/HBASE-12996) | Reversed field on Filter should be transient |  Trivial | . | Ian Friedman | Ian Friedman |
| [HBASE-12993](https://issues.apache.org/jira/browse/HBASE-12993) | Use HBase 1.0 interfaces in hbase-thrift |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12991](https://issues.apache.org/jira/browse/HBASE-12991) | Use HBase 1.0 interfaces in hbase-rest |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12989](https://issues.apache.org/jira/browse/HBASE-12989) | region\_mover.rb unloadRegions method uses ArrayList concurrently resulting in errors |  Minor | scripts | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-12985](https://issues.apache.org/jira/browse/HBASE-12985) | Javadoc warning and findbugs fixes to get us green again |  Major | . | stack | stack |
| [HBASE-12984](https://issues.apache.org/jira/browse/HBASE-12984) | SSL cannot be used by the InfoPort after removing deprecated code in HBASE-10336 |  Blocker | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12978](https://issues.apache.org/jira/browse/HBASE-12978) | Region goes permanently offline (WAS: hbase:meta has a row missing hregioninfo and it causes my long-running job to fail) |  Blocker | . | stack | stack |
| [HBASE-12976](https://issues.apache.org/jira/browse/HBASE-12976) | Set default value for hbase.client.scanner.max.result.size |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12971](https://issues.apache.org/jira/browse/HBASE-12971) | Replication stuck due to large default value for replication.source.maxretriesmultiplier |  Major | hbase | Adrian Muraru | Lars Hofhansl |
| [HBASE-12969](https://issues.apache.org/jira/browse/HBASE-12969) | Parameter Validation is not there for shell script, local-master-backup.sh and local-regionservers.sh |  Minor | scripts | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-12966](https://issues.apache.org/jira/browse/HBASE-12966) | NPE in HMaster while recovering tables in Enabling state |  Major | master | ramkrishna.s.vasudevan | Andrey Stepachev |
| [HBASE-12964](https://issues.apache.org/jira/browse/HBASE-12964) | Add the ability for hbase-daemon.sh to start in the foreground |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12962](https://issues.apache.org/jira/browse/HBASE-12962) | TestHFileBlockIndex.testBlockIndex() commented out during HBASE-10531 |  Major | test | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12961](https://issues.apache.org/jira/browse/HBASE-12961) | Negative values in read and write region server metrics |  Minor | regionserver | Victoria | Victoria |
| [HBASE-12958](https://issues.apache.org/jira/browse/HBASE-12958) | SSH doing hbase:meta get but hbase:meta not assigned |  Major | . | stack | stack |
| [HBASE-12956](https://issues.apache.org/jira/browse/HBASE-12956) | Binding to 0.0.0.0 is broken after HBASE-10569 |  Blocker | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12954](https://issues.apache.org/jira/browse/HBASE-12954) | Ability impaired using HBase on multihomed hosts |  Minor | . | Clay B. | Ted Yu |
| [HBASE-12953](https://issues.apache.org/jira/browse/HBASE-12953) | RegionServer is not functionally working with AysncRpcClient in secure mode |  Critical | security | Ashish Singhi | Duo Zhang |
| [HBASE-12951](https://issues.apache.org/jira/browse/HBASE-12951) | TestHCM.testConnectionClose is flakey when using AsyncRpcClient as client implementation |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-12948](https://issues.apache.org/jira/browse/HBASE-12948) | Calling Increment#addColumn on the same column multiple times produces wrong result |  Critical | Client, regionserver | hongyu bi | hongyu bi |
| [HBASE-12931](https://issues.apache.org/jira/browse/HBASE-12931) | The existing KeyValues in memstore are not removed completely after inserting cell into memStore |  Minor | . | ChiaPing Tsai | ChiaPing Tsai |
| [HBASE-12925](https://issues.apache.org/jira/browse/HBASE-12925) | Use acl cache for doing access control checks in prepare and clean phases of Bulkloading. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12924](https://issues.apache.org/jira/browse/HBASE-12924) | HRegionServer#MovedRegionsCleaner Chore does not start |  Minor | . | Jonathan Lawlor | Sameet Agarwal |
| [HBASE-12922](https://issues.apache.org/jira/browse/HBASE-12922) | Post-asciidoc conversion fix-ups part 2 |  Major | documentation | Lars Francke | Lars Francke |
| [HBASE-12920](https://issues.apache.org/jira/browse/HBASE-12920) | hadoopqa should compile with different hadoop versions |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12919](https://issues.apache.org/jira/browse/HBASE-12919) | Compilation with Hadoop-2.4- is broken again |  Major | . | Enis Soztutar | Srikanth Srungarapu |
| [HBASE-12917](https://issues.apache.org/jira/browse/HBASE-12917) | HFilePerformanceEvaluation Scan tests fail with StackOverflowError due to recursive call in createCell function |  Major | hbase | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-12916](https://issues.apache.org/jira/browse/HBASE-12916) | No access control for replicating WAL entries |  Major | Replication | Liu Shaohui | Liu Shaohui |
| [HBASE-12915](https://issues.apache.org/jira/browse/HBASE-12915) | Disallow small scan with batching |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12908](https://issues.apache.org/jira/browse/HBASE-12908) | Typos in MemStoreFlusher javadocs |  Trivial | documentation | Edvin Malinovskis |  |
| [HBASE-12904](https://issues.apache.org/jira/browse/HBASE-12904) | Threading issues in region\_mover.rb |  Major | . | Lars Hofhansl | Andrew Purtell |
| [HBASE-12903](https://issues.apache.org/jira/browse/HBASE-12903) | Fix configuration which enables secure bulk load |  Major | Coprocessors, documentation | Weichen Ye | Weichen Ye |
| [HBASE-12902](https://issues.apache.org/jira/browse/HBASE-12902) | Post-asciidoc conversion fix-ups |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12898](https://issues.apache.org/jira/browse/HBASE-12898) | Add in used undeclared dependencies |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-12897](https://issues.apache.org/jira/browse/HBASE-12897) | Minimum memstore size is a percentage |  Major | . | churro morales | churro morales |
| [HBASE-12892](https://issues.apache.org/jira/browse/HBASE-12892) | Add a class to allow taking a snapshot from the command line |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12886](https://issues.apache.org/jira/browse/HBASE-12886) | Correct tag option name in PerformanceEvaluation |  Minor | . | Jerry He | Jerry He |
| [HBASE-12881](https://issues.apache.org/jira/browse/HBASE-12881) | TestFastFail is not compatible with surefire.rerunFailingTestsCount |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12878](https://issues.apache.org/jira/browse/HBASE-12878) | Incorrect HFile path in TestHFilePerformance print output (fix for easier debugging) |  Trivial | test | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-12877](https://issues.apache.org/jira/browse/HBASE-12877) | Hbase documentation- a referenced link is not working |  Minor | documentation | Subrahmanyam | Misty Stanley-Jones |
| [HBASE-12871](https://issues.apache.org/jira/browse/HBASE-12871) | Document JDK versions supported by each release missing in new documentation |  Minor | documentation | Kevin Risden | Misty Stanley-Jones |
| [HBASE-12867](https://issues.apache.org/jira/browse/HBASE-12867) | Shell does not support custom replication endpoint specification |  Major | . | Andrew Purtell | Kevin Risden |
| [HBASE-12864](https://issues.apache.org/jira/browse/HBASE-12864) | IntegrationTestTableSnapshotInputFormat fails |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12863](https://issues.apache.org/jira/browse/HBASE-12863) | Master info port on RS UI is always 0 |  Major | . | Enis Soztutar | Duo Zhang |
| [HBASE-12862](https://issues.apache.org/jira/browse/HBASE-12862) | Uppercase "wals" in RegionServer webUI |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12858](https://issues.apache.org/jira/browse/HBASE-12858) | Remove unneeded files under src/main/docbkx |  Major | documentation | Ted Yu | Misty Stanley-Jones |
| [HBASE-12849](https://issues.apache.org/jira/browse/HBASE-12849) | LoadIncrementalHFiles should use unmanaged connection in branch-1 |  Major | mapreduce | Ted Yu | Ted Yu |
| [HBASE-12847](https://issues.apache.org/jira/browse/HBASE-12847) | TestZKLessSplitOnCluster frequently times out in 0.98 builds |  Major | . | Andrew Purtell | Rajeshbabu Chintaguntla |
| [HBASE-12845](https://issues.apache.org/jira/browse/HBASE-12845) | ByteBufferOutputStream should grow as direct buffer if the initial buffer is also direct BB |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12844](https://issues.apache.org/jira/browse/HBASE-12844) | ServerManager.isServerReacable() should sleep between retries |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12838](https://issues.apache.org/jira/browse/HBASE-12838) | After HBASE-5162 RSRpcServices accidentally applies mutations twice |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12837](https://issues.apache.org/jira/browse/HBASE-12837) | ReplicationAdmin leaks zk connections |  Major | Zookeeper | stack | stack |
| [HBASE-12833](https://issues.apache.org/jira/browse/HBASE-12833) | [shell] table.rb leaks connections |  Major | shell | Nick Dimiduk | Solomon Duskis |
| [HBASE-12832](https://issues.apache.org/jira/browse/HBASE-12832) | Describe table from shell no longer shows Table's attributes, only CF attributes |  Critical | . | Enis Soztutar | Srikanth Srungarapu |
| [HBASE-12831](https://issues.apache.org/jira/browse/HBASE-12831) | Changing the set of vis labels a user has access to doesn't generate an audit log event |  Major | . | Sean Busbey | Ashish Singhi |
| [HBASE-12824](https://issues.apache.org/jira/browse/HBASE-12824) | CompressionTest fails with org.apache.hadoop.hbase.io.hfile.AbstractHFileReader$NotSeekedException: Not seeked to a key/value |  Critical | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12819](https://issues.apache.org/jira/browse/HBASE-12819) | ExportSnapshot doesn't close FileSystem instances |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12817](https://issues.apache.org/jira/browse/HBASE-12817) | Data missing while scanning using PREFIX\_TREE data block encoding |  Major | Scanners | Duo Zhang | Duo Zhang |
| [HBASE-12811](https://issues.apache.org/jira/browse/HBASE-12811) | [AccessController] NPE while scanning a table with user not having READ permission on the namespace |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12810](https://issues.apache.org/jira/browse/HBASE-12810) | Update to htrace-incubating |  Major | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12804](https://issues.apache.org/jira/browse/HBASE-12804) | ImportTsv fails to delete partition files created by it |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-12801](https://issues.apache.org/jira/browse/HBASE-12801) | Failed to truncate a table while maintaing binary region boundaries |  Minor | shell | Liu Shaohui | Liu Shaohui |
| [HBASE-12798](https://issues.apache.org/jira/browse/HBASE-12798) | Map Reduce jobs should not create Tables in setConf() |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12791](https://issues.apache.org/jira/browse/HBASE-12791) | HBase does not attempt to clean up an aborted split when the regionserver shutting down |  Critical | regionserver | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-12782](https://issues.apache.org/jira/browse/HBASE-12782) | ITBLL fails for me if generator does anything but 5M per maptask |  Critical | integration tests | stack | stack |
| [HBASE-12781](https://issues.apache.org/jira/browse/HBASE-12781) | thrift2 listen port will bind always to the passed command line address |  Major | Thrift | Pankaj Kumar | Pankaj Kumar |
| [HBASE-12777](https://issues.apache.org/jira/browse/HBASE-12777) | Multi-page book has broken links that work in the single-page version |  Major | documentation | Dima Spivak | Misty Stanley-Jones |
| [HBASE-12775](https://issues.apache.org/jira/browse/HBASE-12775) | CompressionTest ate my HFile (sigh!) |  Major | test | Aditya Kishore | Aditya Kishore |
| [HBASE-12772](https://issues.apache.org/jira/browse/HBASE-12772) | TestPerColumnFamilyFlush failing |  Major | test | stack | stack |
| [HBASE-12767](https://issues.apache.org/jira/browse/HBASE-12767) | Fix a StoreFileScanner NPE in reverse scan flow |  Major | regionserver, Scanners | Liang Xie | Liang Xie |
| [HBASE-12750](https://issues.apache.org/jira/browse/HBASE-12750) | getRequestsCount() in ClusterStatus returns total number of request |  Major | Client | Weichen Ye | Weichen Ye |
| [HBASE-12749](https://issues.apache.org/jira/browse/HBASE-12749) | Tighten HFileLink api to enable non-snapshot uses |  Major | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12747](https://issues.apache.org/jira/browse/HBASE-12747) | IntegrationTestMTTR will OOME if launched with mvn verify |  Minor | . | Andrew Purtell | Abhishek Singh Chouhan |
| [HBASE-12742](https://issues.apache.org/jira/browse/HBASE-12742) | ClusterStatusPublisher crashes with a IPv6 network interface. |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12741](https://issues.apache.org/jira/browse/HBASE-12741) | AccessController contains a javadoc issue |  Minor | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12740](https://issues.apache.org/jira/browse/HBASE-12740) | Improve performance of TestHBaseFsck |  Major | util | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12739](https://issues.apache.org/jira/browse/HBASE-12739) | Avoid too large identifier of ZooKeeperWatcher |  Minor | Zookeeper | Liu Shaohui | Liu Shaohui |
| [HBASE-12734](https://issues.apache.org/jira/browse/HBASE-12734) | TestPerColumnFamilyFlush.testCompareStoreFileCount is flakey |  Minor | . | Duo Zhang | Duo Zhang |
| [HBASE-12732](https://issues.apache.org/jira/browse/HBASE-12732) | Log messages in FileLink$FileLinkInputStream#tryOpen are reversed |  Trivial | hbase | Tobi Vollebregt |  |
| [HBASE-12728](https://issues.apache.org/jira/browse/HBASE-12728) | buffered writes substantially less useful after removal of HTablePool |  Blocker | hbase | Aaron Beppu | Nick Dimiduk |
| [HBASE-12723](https://issues.apache.org/jira/browse/HBASE-12723) | Update ACL matrix to reflect reality |  Major | . | Enis Soztutar | Srikanth Srungarapu |
| [HBASE-12718](https://issues.apache.org/jira/browse/HBASE-12718) | Convert TestAcidGuarantees from a unit test to an integration test |  Major | hbase, integration tests, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12716](https://issues.apache.org/jira/browse/HBASE-12716) | A bug in RegionSplitter.UniformSplit algorithm |  Major | regionserver | Weichen Ye | Weichen Ye |
| [HBASE-12715](https://issues.apache.org/jira/browse/HBASE-12715) | getLastSequenceId always returns -1 |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-12711](https://issues.apache.org/jira/browse/HBASE-12711) | Fix new findbugs warnings in hbase-thrift module |  Minor | . | Ted Yu | Srikanth Srungarapu |
| [HBASE-12703](https://issues.apache.org/jira/browse/HBASE-12703) | Cleanup TestClientPushback for repeatability |  Minor | test | Jesse Yates | Jesse Yates |
| [HBASE-12699](https://issues.apache.org/jira/browse/HBASE-12699) | undefined method `setAsyncLogFlush' exception thrown when setting DEFERRED\_LOG\_FLUSH=\>true |  Major | shell | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12697](https://issues.apache.org/jira/browse/HBASE-12697) | Don't use RegionLocationFinder if localityCost == 0 |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12696](https://issues.apache.org/jira/browse/HBASE-12696) | Possible NPE in HRegionFileSystem#splitStoreFile when skipStoreFileRangeCheck in splitPolicy return true |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-12694](https://issues.apache.org/jira/browse/HBASE-12694) | testTableExistsIfTheSpecifiedTableRegionIsSplitParent in TestSplitTransactionOnCluster class leaves regions in transition |  Minor | . | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-12693](https://issues.apache.org/jira/browse/HBASE-12693) | [docs] nit fix in HBase and MapReduce section |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12692](https://issues.apache.org/jira/browse/HBASE-12692) | NPE from SnapshotManager#stop |  Minor | snapshots | Ashish Singhi | Ashish Singhi |
| [HBASE-12690](https://issues.apache.org/jira/browse/HBASE-12690) | list\_quotas command is failing with not able to load Java class |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12688](https://issues.apache.org/jira/browse/HBASE-12688) | Update site with a bootstrap-based UI |  Major | site | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12687](https://issues.apache.org/jira/browse/HBASE-12687) | Book is missing styling |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12683](https://issues.apache.org/jira/browse/HBASE-12683) | Compilation with hadoop-2.7.0-SNAPSHOT is broken |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12682](https://issues.apache.org/jira/browse/HBASE-12682) | compaction thread throttle value is not correct in hbase-default.xml |  Major | regionserver | Jerry He | Jerry He |
| [HBASE-12681](https://issues.apache.org/jira/browse/HBASE-12681) | truncate\_preserve command fails with undefined method `getTable' error |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12677](https://issues.apache.org/jira/browse/HBASE-12677) | Update replication docs to clarify terminology |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12675](https://issues.apache.org/jira/browse/HBASE-12675) | Use interface methods in shell scripts |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12674](https://issues.apache.org/jira/browse/HBASE-12674) | Add permission check to getNamespaceDescriptor() |  Major | master, security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12665](https://issues.apache.org/jira/browse/HBASE-12665) | When aborting, dump metrics |  Major | Operability | stack | stack |
| [HBASE-12664](https://issues.apache.org/jira/browse/HBASE-12664) | TestDefaultLoadBalancer.testBalanceCluster fails in CachedDNSToSwitchMapping |  Minor | test | stack | stack |
| [HBASE-12663](https://issues.apache.org/jira/browse/HBASE-12663) | unify getTableDescriptors() and listTableDescriptorsByNamespace() |  Major | master, security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12662](https://issues.apache.org/jira/browse/HBASE-12662) | region\_status.rb is failing with NoMethodError |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12661](https://issues.apache.org/jira/browse/HBASE-12661) | rat check fails for several files |  Blocker | . | Sean Busbey | Sean Busbey |
| [HBASE-12655](https://issues.apache.org/jira/browse/HBASE-12655) | WALPerformanceEvaluation miscalculates append/sync statistics for multiple regions |  Minor | wal | Sean Busbey | Sean Busbey |
| [HBASE-12652](https://issues.apache.org/jira/browse/HBASE-12652) | Allow unmanaged connections in MetaTableAccessor |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12647](https://issues.apache.org/jira/browse/HBASE-12647) | Truncate table should work with C as well |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12644](https://issues.apache.org/jira/browse/HBASE-12644) | Visibility Labels: issue with storing super users in labels table |  Major | security | Jerry He | Jerry He |
| [HBASE-12642](https://issues.apache.org/jira/browse/HBASE-12642) | LoadIncrementalHFiles does not throw exception after hitting hbase.bulkload.retries.number setting |  Minor | mapreduce | Erik Ingle | Ted Yu |
| [HBASE-12637](https://issues.apache.org/jira/browse/HBASE-12637) | Compilation with Hadoop-2.4- is broken |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12635](https://issues.apache.org/jira/browse/HBASE-12635) | Delete acl notify znode of table after the table is deleted |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12634](https://issues.apache.org/jira/browse/HBASE-12634) |  Fix the AccessController#requireGlobalPermission(ns) with NS |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12632](https://issues.apache.org/jira/browse/HBASE-12632) | ThrottledInputStream/ExportSnapshot does not throttle |  Major | mapreduce | Tobi Vollebregt |  |
| [HBASE-12628](https://issues.apache.org/jira/browse/HBASE-12628) | Update instructions for running shell tests using maven. |  Minor | documentation, shell | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12622](https://issues.apache.org/jira/browse/HBASE-12622) | user\_permission should require global admin to display global and ns permissions |  Major | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12618](https://issues.apache.org/jira/browse/HBASE-12618) | Add 'Namespace' to headers while displaying user permissions. |  Trivial | . | Srikanth Srungarapu | Ashish Singhi |
| [HBASE-12617](https://issues.apache.org/jira/browse/HBASE-12617) | Running IntegrationTestBigLinkedList against cluster getting not an instance of org.apache.hadoop.hbase.MiniHBaseCluster |  Major | . | stack | stack |
| [HBASE-12616](https://issues.apache.org/jira/browse/HBASE-12616) | We lost the IntegrationTestBigLinkedList COMMANDS in recent usage refactoring |  Trivial | . | stack | stack |
| [HBASE-12614](https://issues.apache.org/jira/browse/HBASE-12614) | Potentially unclosed StoreFile(s) in DefaultCompactor#compact() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12611](https://issues.apache.org/jira/browse/HBASE-12611) | Create autoCommit() method and remove clearBufferOnFail |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12610](https://issues.apache.org/jira/browse/HBASE-12610) | Close connection in TableInputFormatBase |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12607](https://issues.apache.org/jira/browse/HBASE-12607) | TestHBaseFsck#testParallelHbck fails running against hadoop 2.6.0 |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12603](https://issues.apache.org/jira/browse/HBASE-12603) | Remove javadoc warnings introduced due to removal of unused imports |  Major | . | Varun Saxena | Varun Saxena |
| [HBASE-12600](https://issues.apache.org/jira/browse/HBASE-12600) | Remove REPLAY tag dependency in Distributed Replay Mode |  Major | wal | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12595](https://issues.apache.org/jira/browse/HBASE-12595) | Use Connection.getTable() in table.rb |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12585](https://issues.apache.org/jira/browse/HBASE-12585) | Fix refguide so it does hbase 1.0 style API everywhere with callout on how we used to do it in pre-1.0 |  Major | documentation | stack | Misty Stanley-Jones |
| [HBASE-12584](https://issues.apache.org/jira/browse/HBASE-12584) | Fix branch-1 failing since task 5 HBASE-12404 (HBASE-12404 addendum) |  Major | test | stack | stack |
| [HBASE-12581](https://issues.apache.org/jira/browse/HBASE-12581) | TestCellACLWithMultipleVersions failing since task 5 HBASE-12404 (HBASE-12404 addendum) |  Critical | test | stack | stack |
| [HBASE-12580](https://issues.apache.org/jira/browse/HBASE-12580) | Zookeeper instantiated even though we might not need it in the shell |  Major | . | Alex Newman | Alex Newman |
| [HBASE-12576](https://issues.apache.org/jira/browse/HBASE-12576) | Add metrics for rolling the HLog if there are too few DN's in the write pipeline |  Major | metrics, wal | Elliott Clark | Elliott Clark |
| [HBASE-12574](https://issues.apache.org/jira/browse/HBASE-12574) | Update replication metrics to not do so many map look ups. |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-12565](https://issues.apache.org/jira/browse/HBASE-12565) | Race condition in HRegion.batchMutate()  causes partial data to be written when region closes |  Major | Performance, regionserver | Scott Fines |  |
| [HBASE-12564](https://issues.apache.org/jira/browse/HBASE-12564) | consolidate the getTableDescriptors() semantic |  Minor | Client, master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12560](https://issues.apache.org/jira/browse/HBASE-12560) | [WINDOWS] Append the classpath from Hadoop to HBase classpath in bin/hbase.cmd |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12553](https://issues.apache.org/jira/browse/HBASE-12553) | request value is not consistent for restoreSnapshot in audit logs |  Minor | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12552](https://issues.apache.org/jira/browse/HBASE-12552) | listSnapshots should list only owned snapshots for non-super user |  Major | snapshots | Ashish Singhi | Ashish Singhi |
| [HBASE-12550](https://issues.apache.org/jira/browse/HBASE-12550) | Check all storefiles are referenced before splitting |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12548](https://issues.apache.org/jira/browse/HBASE-12548) | Improve debuggability of IntegrationTestTimeBoundedRequestsWithRegionReplicas |  Minor | . | Devaraj Das | Devaraj Das |
| [HBASE-12541](https://issues.apache.org/jira/browse/HBASE-12541) | Add misc debug logging to hanging tests in TestHCM and TestBaseLoadBalancer |  Major | test | stack | stack |
| [HBASE-12539](https://issues.apache.org/jira/browse/HBASE-12539) | HFileLinkCleaner logs are uselessly noisy |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12537](https://issues.apache.org/jira/browse/HBASE-12537) | HBase should log the remote host on replication error |  Major | Operability, Replication | stack | stack |
| [HBASE-12536](https://issues.apache.org/jira/browse/HBASE-12536) | Reduce the effective scope of GLOBAL CREATE and ADMIN permission |  Major | security | Andrew Purtell | Andrew Purtell |
| [HBASE-12535](https://issues.apache.org/jira/browse/HBASE-12535) | NPE in WALFactory close under contention for getInstance |  Major | Replication, wal | stack | Sean Busbey |
| [HBASE-12533](https://issues.apache.org/jira/browse/HBASE-12533) | staging directories are not deleted after secure bulk load |  Major | regionserver | Andrejs Dubovskis | Jeffrey Zhong |
| [HBASE-12532](https://issues.apache.org/jira/browse/HBASE-12532) | TestFilter failing occasionally with ExitCodeException doing chmod since HBASE-10378 |  Major | test | stack | stack |
| [HBASE-12520](https://issues.apache.org/jira/browse/HBASE-12520) | Add protected getters on TableInputFormatBase |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12514](https://issues.apache.org/jira/browse/HBASE-12514) | Cleanup HFileOutputFormat legacy code |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12513](https://issues.apache.org/jira/browse/HBASE-12513) | Graceful stop script does not restore the balancer state |  Minor | scripts | Florin Broasca |  |
| [HBASE-12495](https://issues.apache.org/jira/browse/HBASE-12495) | Use interfaces in the shell scripts |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12491](https://issues.apache.org/jira/browse/HBASE-12491) | TableMapReduceUtil.findContainingJar() NPE |  Major | mapreduce | Solomon Duskis | Solomon Duskis |
| [HBASE-12490](https://issues.apache.org/jira/browse/HBASE-12490) | Replace uses of setAutoFlush(boolean, boolean) |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12488](https://issues.apache.org/jira/browse/HBASE-12488) | Small bug in publish\_hbase\_website.sh script |  Minor | scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12480](https://issues.apache.org/jira/browse/HBASE-12480) | Regions in FAILED\_OPEN/FAILED\_CLOSE should be processed on master failover |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-12478](https://issues.apache.org/jira/browse/HBASE-12478) | HBASE-10141 and MIN\_VERSIONS are not compatible |  Critical | . | Enis Soztutar | Ted Yu |
| [HBASE-12474](https://issues.apache.org/jira/browse/HBASE-12474) | Incorrect handling of default namespace in user\_permission command. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12468](https://issues.apache.org/jira/browse/HBASE-12468) | AUTHORIZATIONS should be part of Visibility Label Docs |  Major | documentation | Kevin Odell | Misty Stanley-Jones |
| [HBASE-12467](https://issues.apache.org/jira/browse/HBASE-12467) | Master joins cluster but never completes initialization |  Major | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12464](https://issues.apache.org/jira/browse/HBASE-12464) | meta table region assignment stuck in the FAILED\_OPEN state due to region server not fully ready to serve |  Major | Region Assignment | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12461](https://issues.apache.org/jira/browse/HBASE-12461) | FSVisitor logging is excessive |  Minor | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12460](https://issues.apache.org/jira/browse/HBASE-12460) | Moving Chore to hbase-common module. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12459](https://issues.apache.org/jira/browse/HBASE-12459) | Use a non-managed Table in mapred.TableOutputFormat |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12454](https://issues.apache.org/jira/browse/HBASE-12454) | Setting didPerformCompaction early in HRegion#compact |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12450](https://issues.apache.org/jira/browse/HBASE-12450) | Unbalance chaos monkey might kill all region servers without starting them back |  Minor | . | Virag Kothari | Virag Kothari |
| [HBASE-12449](https://issues.apache.org/jira/browse/HBASE-12449) | Use the max timestamp of current or old cell's timestamp in HRegion.append() |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12448](https://issues.apache.org/jira/browse/HBASE-12448) | Fix rate reporting in compaction progress DEBUG logging |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12445](https://issues.apache.org/jira/browse/HBASE-12445) | hbase is removing all remaining cells immediately after the cell marked with marker = KeyValue.Type.DeleteColumn via PUT |  Major | . | sri venu bora | Hani Nadra |
| [HBASE-12431](https://issues.apache.org/jira/browse/HBASE-12431) | Use of getColumnLatestCell(byte[], int, int, byte[], int, int) is Not Thread Safe |  Major | Client | Jonathan Jarvis | Jingcheng Du |
| [HBASE-12423](https://issues.apache.org/jira/browse/HBASE-12423) | Use a non-managed Table in TableOutputFormat |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12422](https://issues.apache.org/jira/browse/HBASE-12422) | Use ConnectionFactory in HTable constructors |  Minor | Client | Solomon Duskis | stack |
| [HBASE-12421](https://issues.apache.org/jira/browse/HBASE-12421) | Clarify ACL concepts and best practices |  Major | documentation, security | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12420](https://issues.apache.org/jira/browse/HBASE-12420) | BucketCache logged startup message is egregiously large |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12419](https://issues.apache.org/jira/browse/HBASE-12419) | "Partial cell read caused by EOF" ERRORs on replication source during replication |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12418](https://issues.apache.org/jira/browse/HBASE-12418) | Multiple branches for MOB feature breaking git for case insensitive filesystems |  Blocker | . | Sean Busbey | Nick Dimiduk |
| [HBASE-12417](https://issues.apache.org/jira/browse/HBASE-12417) | Scan copy constructor does not retain small attribute |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12414](https://issues.apache.org/jira/browse/HBASE-12414) | Move HFileLink.exists() to base class |  Trivial | io | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12413](https://issues.apache.org/jira/browse/HBASE-12413) | Mismatch in the equals and hashcode methods of KeyValue |  Minor | . | Jingcheng Du | Jingcheng Du |
| [HBASE-12412](https://issues.apache.org/jira/browse/HBASE-12412) | update the ref guide(currently Example 10.2) to show "update an existing CF" with the new API modifyFamily in master |  Minor | documentation | Jingcheng Du | Misty Stanley-Jones |
| [HBASE-12409](https://issues.apache.org/jira/browse/HBASE-12409) | Add actual tunable parameters for finding optimal # of regions per RS |  Major | documentation, Performance | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12407](https://issues.apache.org/jira/browse/HBASE-12407) | HConnectionKey doesn't contain CUSTOM\_CONTROLLER\_CONF\_KEY in CONNECTION\_PROPERTIES |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12402](https://issues.apache.org/jira/browse/HBASE-12402) | ZKPermissionWatcher race condition in refreshing the cache leaving stale ACLs and causing AccessDenied |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12399](https://issues.apache.org/jira/browse/HBASE-12399) | Master startup race between metrics and RpcServer |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12393](https://issues.apache.org/jira/browse/HBASE-12393) | The regionserver web will throw exception if we disable block cache |  Minor | regionserver, UI | ChiaPing Tsai | ChiaPing Tsai |
| [HBASE-12386](https://issues.apache.org/jira/browse/HBASE-12386) | Replication gets stuck following a transient zookeeper error to remote peer cluster |  Major | Replication | Adrian Muraru | Adrian Muraru |
| [HBASE-12384](https://issues.apache.org/jira/browse/HBASE-12384) | TestTags can hang on fast test hosts |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12380](https://issues.apache.org/jira/browse/HBASE-12380) | TestRegionServerNoMaster#testMultipleOpen is flaky after HBASE-11760 |  Major | test | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12377](https://issues.apache.org/jira/browse/HBASE-12377) | HBaseAdmin#deleteTable fails when META region is moved around the same timeframe |  Major | Client | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12375](https://issues.apache.org/jira/browse/HBASE-12375) | LoadIncrementalHFiles fails to load data in table when CF name starts with '\_' |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-12372](https://issues.apache.org/jira/browse/HBASE-12372) | [WINDOWS] Enable log4j configuration in hbase.cmd |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12366](https://issues.apache.org/jira/browse/HBASE-12366) | Add login code to HBase Canary tool. |  Minor | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12359](https://issues.apache.org/jira/browse/HBASE-12359) | MulticastPublisher should specify IPv4/v6 protocol family when creating multicast channel |  Minor | master | Qiang Tian | Qiang Tian |
| [HBASE-12356](https://issues.apache.org/jira/browse/HBASE-12356) | Rpc with region replica does not propagate tracing spans |  Major | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12352](https://issues.apache.org/jira/browse/HBASE-12352) | Add hbase-annotation-tests to runtime classpath so can run hbase it tests. |  Major | integration tests | stack | stack |
| [HBASE-12348](https://issues.apache.org/jira/browse/HBASE-12348) | preModifyColumn and preDeleteColumn in AC denies user to perform its operation though it has required rights |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12347](https://issues.apache.org/jira/browse/HBASE-12347) | Fix the edge case where Hadoop QA's parsing of attached patches breaks the JIRA status checker in dev-support/rebase\_all\_git\_branches.sh |  Minor | scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12339](https://issues.apache.org/jira/browse/HBASE-12339) | WAL performance evaluation tool doesn't roll logs |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-12337](https://issues.apache.org/jira/browse/HBASE-12337) | Import tool fails with NullPointerException if clusterIds is not initialized |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12336](https://issues.apache.org/jira/browse/HBASE-12336) | RegionServer failed to shutdown for NodeFailoverWorker thread |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12334](https://issues.apache.org/jira/browse/HBASE-12334) | Handling of DeserializationException causes needless retry on failure |  Major | . | James Taylor | Lars Hofhansl |
| [HBASE-12329](https://issues.apache.org/jira/browse/HBASE-12329) | Table create with duplicate column family names quietly succeeds |  Minor | Client, shell | Sean Busbey | Jingcheng Du |
| [HBASE-12327](https://issues.apache.org/jira/browse/HBASE-12327) | MetricsHBaseServerSourceFactory#createContextName has wrong conditions |  Major | . | Sanghyun Yun |  |
| [HBASE-12326](https://issues.apache.org/jira/browse/HBASE-12326) | Document scanner timeout workarounds in troubleshooting section |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12322](https://issues.apache.org/jira/browse/HBASE-12322) | Add clean up command to ITBLL |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-12318](https://issues.apache.org/jira/browse/HBASE-12318) | Add license header to checkstyle xml files |  Trivial | . | Ted Yu | Ted Yu |
| [HBASE-12316](https://issues.apache.org/jira/browse/HBASE-12316) | test-patch.sh (Hadoop-QA) outputs the wrong release audit warnings URL |  Trivial | . | Dima Spivak | Dima Spivak |
| [HBASE-12315](https://issues.apache.org/jira/browse/HBASE-12315) | Fix 0.98 Tests after checkstyle got parented |  Blocker | . | Elliott Clark | Elliott Clark |
| [HBASE-12314](https://issues.apache.org/jira/browse/HBASE-12314) | Add chaos monkey policy to execute two actions concurrently |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12312](https://issues.apache.org/jira/browse/HBASE-12312) | Another couple of createTable race conditions |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-12308](https://issues.apache.org/jira/browse/HBASE-12308) | Fix typo in hbase-rest profile name |  Minor | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12307](https://issues.apache.org/jira/browse/HBASE-12307) | Remove unused Imports in hbase-client and hbase-common |  Minor | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12306](https://issues.apache.org/jira/browse/HBASE-12306) | CellCounter output's wrong value for Total Families Across all Rows in output file |  Major | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12304](https://issues.apache.org/jira/browse/HBASE-12304) | CellCounter will throw AIOBE when output directory is not specified |  Minor | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12302](https://issues.apache.org/jira/browse/HBASE-12302) | VisibilityClient getAuths does not propagate remote service exception correctly |  Minor | Client, security | Jerry He | Jerry He |
| [HBASE-12301](https://issues.apache.org/jira/browse/HBASE-12301) | user\_permission command does not show global permissions |  Major | security, shell | Jerry He | Matteo Bertozzi |
| [HBASE-12294](https://issues.apache.org/jira/browse/HBASE-12294) | Can't build the docs after the hbase-checkstyle module was added |  Blocker | build | Misty Stanley-Jones | Elliott Clark |
| [HBASE-12285](https://issues.apache.org/jira/browse/HBASE-12285) | Builds are failing, possibly because of SUREFIRE-1091 |  Blocker | . | Dima Spivak | Dima Spivak |
| [HBASE-12283](https://issues.apache.org/jira/browse/HBASE-12283) | Clean up some checkstyle errors |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12281](https://issues.apache.org/jira/browse/HBASE-12281) | ClonedPrefixTreeCell should implement HeapSize |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12279](https://issues.apache.org/jira/browse/HBASE-12279) | Generated thrift files were generated with the wrong parameters |  Major | . | Niels Basjes | Niels Basjes |
| [HBASE-12278](https://issues.apache.org/jira/browse/HBASE-12278) | Race condition in TestSecureLoadIncrementalHFilesSplitRecovery |  Critical | test | Dima Spivak | Dima Spivak |
| [HBASE-12277](https://issues.apache.org/jira/browse/HBASE-12277) | Refactor bulkLoad methods in AccessController to its own interface |  Major | . | Madhan Neethiraj | Madhan Neethiraj |
| [HBASE-12274](https://issues.apache.org/jira/browse/HBASE-12274) | Race between RegionScannerImpl#nextInternal() and RegionScannerImpl#close() may produce null pointer exception |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12270](https://issues.apache.org/jira/browse/HBASE-12270) | A bug in the bucket cache, with cache blocks on write enabled |  Critical | . | Khaled Elmeleegy | Liu Shaohui |
| [HBASE-12265](https://issues.apache.org/jira/browse/HBASE-12265) | HBase shell 'show\_filters' points to internal Facebook URL |  Trivial | shell | Niels Basjes | Andrew Purtell |
| [HBASE-12263](https://issues.apache.org/jira/browse/HBASE-12263) | RegionServer listens on localhost in distributed cluster when DNS is unavailable |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12261](https://issues.apache.org/jira/browse/HBASE-12261) | Add checkstyle to HBase build process |  Major | build, site | Elliott Clark | Elliott Clark |
| [HBASE-12258](https://issues.apache.org/jira/browse/HBASE-12258) | Make TestHBaseFsck less flaky |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12252](https://issues.apache.org/jira/browse/HBASE-12252) | IntegrationTestBulkLoad fails with illegal partition error |  Major | test | Dima Spivak | Dima Spivak |
| [HBASE-12248](https://issues.apache.org/jira/browse/HBASE-12248) | broken link in hbase shell help |  Minor | shell | André Kelpe |  |
| [HBASE-12247](https://issues.apache.org/jira/browse/HBASE-12247) | Replace setHTable() with initializeTable() in TableInputFormat. |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12246](https://issues.apache.org/jira/browse/HBASE-12246) | Compilation with hadoop-2.3.x and 2.2.x is broken |  Blocker | . | Enis Soztutar | stack |
| [HBASE-12242](https://issues.apache.org/jira/browse/HBASE-12242) | Fix new javadoc warnings in Admin, etc. |  Trivial | . | stack | stack |
| [HBASE-12240](https://issues.apache.org/jira/browse/HBASE-12240) | hbase-daemon.sh should remove pid file if process not found running |  Minor | Usability | Ashish Singhi | Ashish Singhi |
| [HBASE-12238](https://issues.apache.org/jira/browse/HBASE-12238) | A few ugly exceptions on startup |  Minor | . | stack | stack |
| [HBASE-12237](https://issues.apache.org/jira/browse/HBASE-12237) | HBaseZeroCopyByteString#wrap() should not be called in hbase-client code |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-12234](https://issues.apache.org/jira/browse/HBASE-12234) | Make TestMultithreadedTableMapper a little more stable. |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12229](https://issues.apache.org/jira/browse/HBASE-12229) | NullPointerException in SnapshotTestingUtils |  Minor | test | Dima Spivak | Dima Spivak |
| [HBASE-12226](https://issues.apache.org/jira/browse/HBASE-12226) | TestAccessController#testPermissionList failing on master |  Major | . | Andrew Purtell | Srikanth Srungarapu |
| [HBASE-12219](https://issues.apache.org/jira/browse/HBASE-12219) | Cache more efficiently getAll() and get() in FSTableDescriptors |  Major | master | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12218](https://issues.apache.org/jira/browse/HBASE-12218) | Make HBaseCommonTestingUtil#deleteDir try harder |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12216](https://issues.apache.org/jira/browse/HBASE-12216) | Lower closed region logging level |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12209](https://issues.apache.org/jira/browse/HBASE-12209) | NPE in HRegionServer#getLastSequenceId |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12206](https://issues.apache.org/jira/browse/HBASE-12206) | NPE in RSRpcServices |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12200](https://issues.apache.org/jira/browse/HBASE-12200) | When an RPC server handler thread dies, throw exception |  Minor | regionserver | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-12199](https://issues.apache.org/jira/browse/HBASE-12199) | Make TestAtomicOperation and TestEncodedSeekers faster |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12198](https://issues.apache.org/jira/browse/HBASE-12198) | Fix the bug of not updating location cache |  Minor | Client | Yi Deng | Yi Deng |
| [HBASE-12197](https://issues.apache.org/jira/browse/HBASE-12197) | Move REST |  Major | REST | Elliott Clark | Elliott Clark |
| [HBASE-12196](https://issues.apache.org/jira/browse/HBASE-12196) | SSH should retry in case failed to assign regions |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12193](https://issues.apache.org/jira/browse/HBASE-12193) | Add missing docbook file to git |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12192](https://issues.apache.org/jira/browse/HBASE-12192) | Remove EventHandlerListener |  Major | master | ryan rawson | ryan rawson |
| [HBASE-12191](https://issues.apache.org/jira/browse/HBASE-12191) | Make TestCacheOnWrite faster. |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12186](https://issues.apache.org/jira/browse/HBASE-12186) | Formatting error in Table 8.2. Examples of Visibility Expressions |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12184](https://issues.apache.org/jira/browse/HBASE-12184) | ServerShutdownHandler throws NPE |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12183](https://issues.apache.org/jira/browse/HBASE-12183) | FuzzyRowFilter doesn't support reverse scans |  Major | Filters | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12181](https://issues.apache.org/jira/browse/HBASE-12181) | Some tests create a table and try to use it before regions get assigned |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-12172](https://issues.apache.org/jira/browse/HBASE-12172) | Disable flakey TestRegionReplicaReplicationEndpoint and make fixing it a blocker on 1.0 |  Major | test | stack | stack |
| [HBASE-12170](https://issues.apache.org/jira/browse/HBASE-12170) | TestReplicaWithCluster.testReplicaAndReplication timeouts |  Major | test | stack | stack |
| [HBASE-12167](https://issues.apache.org/jira/browse/HBASE-12167) | NPE in AssignmentManager |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12166](https://issues.apache.org/jira/browse/HBASE-12166) | TestDistributedLogSplitting.testMasterStartsUpWithLogReplayWork |  Major | test, wal | stack | Jimmy Xiang |
| [HBASE-12165](https://issues.apache.org/jira/browse/HBASE-12165) | TestEndToEndSplitTransaction.testFromClientSideWhileSplitting fails |  Major | test | stack | stack |
| [HBASE-12164](https://issues.apache.org/jira/browse/HBASE-12164) | Check for presence of user Id in SecureBulkLoadEndpoint#secureBulkLoadHFiles() is inaccurate |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12160](https://issues.apache.org/jira/browse/HBASE-12160) | Make Surefire's argLine configurable in the command line |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12158](https://issues.apache.org/jira/browse/HBASE-12158) | TestHttpServerLifecycle.testStartedServerWithRequestLog goes zombie on occasion |  Major | test | stack | stack |
| [HBASE-12156](https://issues.apache.org/jira/browse/HBASE-12156) | TableName cache isn't used for one of valueOf methods. |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12153](https://issues.apache.org/jira/browse/HBASE-12153) | Fixing TestReplicaWithCluster |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12151](https://issues.apache.org/jira/browse/HBASE-12151) | Make dev scripts executable |  Minor | scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12149](https://issues.apache.org/jira/browse/HBASE-12149) | TestRegionPlacement is failing undeterministically |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12146](https://issues.apache.org/jira/browse/HBASE-12146) | RegionServerTracker should escape data in log messages |  Trivial | . | Lars Hofhansl | stack |
| [HBASE-12145](https://issues.apache.org/jira/browse/HBASE-12145) | Fix javadoc and findbugs so new folks aren't freaked when they see them |  Major | . | stack | stack |
| [HBASE-12142](https://issues.apache.org/jira/browse/HBASE-12142) | Truncate command does not preserve ACLs table |  Minor | . | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-12140](https://issues.apache.org/jira/browse/HBASE-12140) | Add ConnectionFactory.createConnection() to create using default HBaseConfiguration. |  Major | Client | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-12139](https://issues.apache.org/jira/browse/HBASE-12139) | StochasticLoadBalancer doesn't work on large lightly loaded clusters |  Critical | Balancer, master | Elliott Clark | Elliott Clark |
| [HBASE-12137](https://issues.apache.org/jira/browse/HBASE-12137) | Alter table add cf doesn't do compression test |  Major | master | Virag Kothari | Virag Kothari |
| [HBASE-12136](https://issues.apache.org/jira/browse/HBASE-12136) | Race condition between client adding tableCF replication znode and  server triggering TableCFsTracker |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-12135](https://issues.apache.org/jira/browse/HBASE-12135) | Website is broken |  Blocker | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12134](https://issues.apache.org/jira/browse/HBASE-12134) | publish\_website.sh script is too optimistic |  Major | scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12130](https://issues.apache.org/jira/browse/HBASE-12130) | HBASE-11980 calls hflush and hsync doing near double the syncing work |  Critical | . | stack | stack |
| [HBASE-12126](https://issues.apache.org/jira/browse/HBASE-12126) | Region server coprocessor endpoint |  Major | Coprocessors | Virag Kothari | Virag Kothari |
| [HBASE-12123](https://issues.apache.org/jira/browse/HBASE-12123) | Failed assertion in BucketCache after 11331 |  Major | regionserver | Enis Soztutar | Nick Dimiduk |
| [HBASE-12122](https://issues.apache.org/jira/browse/HBASE-12122) | Try not to assign user regions to master all the time |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12120](https://issues.apache.org/jira/browse/HBASE-12120) | HBase shell doesn't allow deleting of a cell by user with W-only permissions to it |  Major | shell | Dima Spivak | Srikanth Srungarapu |
| [HBASE-12119](https://issues.apache.org/jira/browse/HBASE-12119) | Master regionserver web UI NOT\_FOUND |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12109](https://issues.apache.org/jira/browse/HBASE-12109) | user\_permission command for namespace does not return correct result |  Minor | shell | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-12108](https://issues.apache.org/jira/browse/HBASE-12108) | HBaseConfiguration: set classloader before loading xml files |  Minor | Client | Aniket Bhatnagar |  |
| [HBASE-12106](https://issues.apache.org/jira/browse/HBASE-12106) | Move test annotations to test artifact |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12102](https://issues.apache.org/jira/browse/HBASE-12102) | Duplicate keys in HBase.RegionServer metrics JSON |  Minor | . | Andrew Purtell | Ravi Kishore Valeti |
| [HBASE-12098](https://issues.apache.org/jira/browse/HBASE-12098) | User granted namespace table create permissions can't create a table |  Critical | Client, security | Dima Spivak | Srikanth Srungarapu |
| [HBASE-12095](https://issues.apache.org/jira/browse/HBASE-12095) | SecureWALCellCodec should handle the case where encryption is disabled |  Major | . | Ashish Singhi | Ted Yu |
| [HBASE-12083](https://issues.apache.org/jira/browse/HBASE-12083) | Deprecate new HBaseAdmin() in favor of Connection.getAdmin() |  Critical | . | Solomon Duskis | Enis Soztutar |
| [HBASE-12078](https://issues.apache.org/jira/browse/HBASE-12078) | Missing Data when scanning using PREFIX\_TREE DATA-BLOCK-ENCODING |  Critical | . | Duo Zhang | Duo Zhang |
| [HBASE-12073](https://issues.apache.org/jira/browse/HBASE-12073) | Shell command user\_permission fails on the table created by user if he is not global admin. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12072](https://issues.apache.org/jira/browse/HBASE-12072) | Standardize retry handling for master operations |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12067](https://issues.apache.org/jira/browse/HBASE-12067) | Remove deprecated metrics classes. |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-12065](https://issues.apache.org/jira/browse/HBASE-12065) |  Import tool is not restoring multiple DeleteFamily markers of a row |  Minor | util | Maddineni Sukumar | Maddineni Sukumar |
| [HBASE-12064](https://issues.apache.org/jira/browse/HBASE-12064) | hbase.master.balancer.stochastic.numRegionLoadsToRemember is not used |  Minor | Balancer | Junegunn Choi | Junegunn Choi |
| [HBASE-12056](https://issues.apache.org/jira/browse/HBASE-12056) | RPC logging too much in DEBUG mode |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12054](https://issues.apache.org/jira/browse/HBASE-12054) | bad state after NamespaceUpgrade with reserved table names |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12053](https://issues.apache.org/jira/browse/HBASE-12053) | SecurityBulkLoadEndPoint set 777 permission on input data files |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12052](https://issues.apache.org/jira/browse/HBASE-12052) | BulkLoad Failed due to no write permission on input files |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12045](https://issues.apache.org/jira/browse/HBASE-12045) | REST proxy users configuration in hbase-site.xml is ignored |  Major | . | Aditya Kishore | Aditya Kishore |
| [HBASE-12044](https://issues.apache.org/jira/browse/HBASE-12044) | REST delete operation should not retry disableTable for DoNotRetryIOException |  Minor | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-12043](https://issues.apache.org/jira/browse/HBASE-12043) | REST server should respond with FORBIDDEN(403) code on AccessDeniedException |  Minor | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-12042](https://issues.apache.org/jira/browse/HBASE-12042) | Replace internal uses of HTable(Configuration, String) with HTable(Configuration, TableName) |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12041](https://issues.apache.org/jira/browse/HBASE-12041) | AssertionError in HFilePerformanceEvaluation.UniformRandomReadBenchmark |  Major | . | Jean-Marc Spaggiari | stack |
| [HBASE-12038](https://issues.apache.org/jira/browse/HBASE-12038) | Replace internal uses of signatures with byte[] and String tableNames to use the TableName equivalents. |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12034](https://issues.apache.org/jira/browse/HBASE-12034) | If I kill single RS in branch-1, all regions end up on Master! |  Critical | master | stack | Jimmy Xiang |
| [HBASE-12029](https://issues.apache.org/jira/browse/HBASE-12029) | Use Table and RegionLocator in HTable.getRegionLocations() |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12028](https://issues.apache.org/jira/browse/HBASE-12028) | Abort the RegionServer, when it's handler threads die |  Major | regionserver | Sudarshan Kadambi | Alicia Ying Shu |
| [HBASE-12025](https://issues.apache.org/jira/browse/HBASE-12025) | TestHttpServerLifecycle.testStartedServerWithRequestLog hangs frequently |  Major | test | stack | stack |
| [HBASE-12024](https://issues.apache.org/jira/browse/HBASE-12024) | Fix javadoc warning |  Trivial | documentation | Matteo Bertozzi | Anoop Sam John |
| [HBASE-12019](https://issues.apache.org/jira/browse/HBASE-12019) | hbase-daemon.sh overwrite HBASE\_ROOT\_LOGGER and HBASE\_SECURITY\_LOGGER variables |  Minor | scripts | Sebastien Barrier | Sebastien Barrier |
| [HBASE-12017](https://issues.apache.org/jira/browse/HBASE-12017) | Use Connection.createTable() instead of HTable constructors. |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12007](https://issues.apache.org/jira/browse/HBASE-12007) | StochasticBalancer should avoid putting user regions on master |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12006](https://issues.apache.org/jira/browse/HBASE-12006) | [JDK 8] KeyStoreTestUtil#generateCertificate fails due to "subject class type invalid" |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12005](https://issues.apache.org/jira/browse/HBASE-12005) | Split/merge fails if master restarts before PONR |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11998](https://issues.apache.org/jira/browse/HBASE-11998) | Document a workflow for cherry-picking a fix to a different branch |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11994](https://issues.apache.org/jira/browse/HBASE-11994) | PutCombiner floods the M/R log with repeated log messages. |  Major | mapreduce | Aditya Kishore | Aditya Kishore |
| [HBASE-11991](https://issues.apache.org/jira/browse/HBASE-11991) | Region states may be out of sync |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11989](https://issues.apache.org/jira/browse/HBASE-11989) | IntegrationTestLoadAndVerify cannot be configured anymore on distributed mode |  Trivial | test | Enis Soztutar | Enis Soztutar |
| [HBASE-11988](https://issues.apache.org/jira/browse/HBASE-11988) | AC/VC system table create on postStartMaster fails too often in test |  Critical | . | Anoop Sam John | stack |
| [HBASE-11987](https://issues.apache.org/jira/browse/HBASE-11987) | Make zk-less table states backward compatible. |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-11984](https://issues.apache.org/jira/browse/HBASE-11984) | TestClassFinder failing on occasion |  Major | . | stack | stack |
| [HBASE-11983](https://issues.apache.org/jira/browse/HBASE-11983) | HRegion constructors should not create HLog |  Major | wal | Enis Soztutar | Nick Dimiduk |
| [HBASE-11982](https://issues.apache.org/jira/browse/HBASE-11982) | Bootstraping hbase:meta table creates a WAL file in region dir |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11979](https://issues.apache.org/jira/browse/HBASE-11979) | Compaction progress reporting is wrong |  Minor | . | Andrew Purtell | Esteban Gutierrez |
| [HBASE-11976](https://issues.apache.org/jira/browse/HBASE-11976) | Server startcode is not checked for bulk region assignment |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11974](https://issues.apache.org/jira/browse/HBASE-11974) | When a disabled table is scanned, NotServingRegionException is thrown instead of TableNotEnabledException |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11972](https://issues.apache.org/jira/browse/HBASE-11972) | The "doAs user" used in the update to hbase:acl table RPC is incorrect |  Critical | . | Devaraj Das | Devaraj Das |
| [HBASE-11949](https://issues.apache.org/jira/browse/HBASE-11949) | Setting hfile.block.cache.size=0 doesn't actually disable blockcache |  Minor | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11947](https://issues.apache.org/jira/browse/HBASE-11947) | NoSuchElementException in balancer for master regions |  Major | . | Enis Soztutar | Sergey Soldatov |
| [HBASE-11936](https://issues.apache.org/jira/browse/HBASE-11936) | IsolationLevel must be attribute of a Query not a Scan |  Major | Client | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-11932](https://issues.apache.org/jira/browse/HBASE-11932) | Stop the html-single from building a html-single of every chapter and cluttering the docbkx directory |  Major | build, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11921](https://issues.apache.org/jira/browse/HBASE-11921) | Minor fixups that come of testing branch-1 |  Minor | . | stack | stack |
| [HBASE-11906](https://issues.apache.org/jira/browse/HBASE-11906) | Meta data loss with distributed log replay |  Major | . | Jimmy Xiang | Jeffrey Zhong |
| [HBASE-11905](https://issues.apache.org/jira/browse/HBASE-11905) | Add orca to server UIs and update logo. |  Major | . | stack | stack |
| [HBASE-11898](https://issues.apache.org/jira/browse/HBASE-11898) | CoprocessorHost.Environment should cache class loader instance |  Major | Coprocessors | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-11896](https://issues.apache.org/jira/browse/HBASE-11896) | LoadIncrementalHFiles fails in secure mode if the namespace is specified |  Major | . | Ashish Singhi |  |
| [HBASE-11893](https://issues.apache.org/jira/browse/HBASE-11893) | RowTooBigException should be in hbase-client module |  Minor | API, Client | Sean Busbey | Mikhail Antonov |
| [HBASE-11892](https://issues.apache.org/jira/browse/HBASE-11892) | configs contain stale entries |  Trivial | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-11890](https://issues.apache.org/jira/browse/HBASE-11890) | HBase REST Client is hard coded to http protocol |  Major | Client | Eric Yang | Qiang Tian |
| [HBASE-11887](https://issues.apache.org/jira/browse/HBASE-11887) | Memory retention in branch-1; millions of instances of LiteralByteString for column qualifier and value |  Critical | Protobufs | stack | stack |
| [HBASE-11886](https://issues.apache.org/jira/browse/HBASE-11886) | The creator of the table should have all permissions on the table |  Critical | . | Devaraj Das | Devaraj Das |
| [HBASE-11882](https://issues.apache.org/jira/browse/HBASE-11882) | Row level consistency may not be maintained with bulk load and compaction |  Critical | regionserver | Jerry He | Jerry He |
| [HBASE-11880](https://issues.apache.org/jira/browse/HBASE-11880) | NPE in MasterStatusServlet |  Minor | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11878](https://issues.apache.org/jira/browse/HBASE-11878) | TestVisibilityLabelsWithDistributedLogReplay#testAddVisibilityLabelsOnRSRestart sometimes fails due to VisibilityController not yet initialized |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11876](https://issues.apache.org/jira/browse/HBASE-11876) | RegionScanner.nextRaw(...) should not update metrics |  Major | . | Lars Hofhansl | Andrew Purtell |
| [HBASE-11863](https://issues.apache.org/jira/browse/HBASE-11863) | WAL files are not archived and stays in the WAL directory after splitting |  Blocker | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11859](https://issues.apache.org/jira/browse/HBASE-11859) | 'hadoop jar' references in documentation should mention hbase-server.jar, not hbase.jar |  Minor | documentation | Stephen Veiss | Stephen Veiss |
| [HBASE-11857](https://issues.apache.org/jira/browse/HBASE-11857) | Restore ReaderBase.initAfterCompression() and WALCellCodec.create(Configuration, CompressionContext) |  Blocker | . | Ted Yu | Ted Yu |
| [HBASE-11856](https://issues.apache.org/jira/browse/HBASE-11856) | hbase-common needs a log4j.properties resource for handling unit test logging output |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11855](https://issues.apache.org/jira/browse/HBASE-11855) | HBase handbook chapter 18.9 out of date |  Minor | documentation | Michael Tauscher | Michael Tauscher |
| [HBASE-11851](https://issues.apache.org/jira/browse/HBASE-11851) | RpcClient can try to close a connection not ready to close |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11844](https://issues.apache.org/jira/browse/HBASE-11844) | region\_mover.rb load enters an infinite loop if region already present on target server |  Minor | scripts | Stephen Veiss | Stephen Veiss |
| [HBASE-11839](https://issues.apache.org/jira/browse/HBASE-11839) | TestRegionRebalance is flakey |  Major | . | Alex Newman | Sergey Soldatov |
| [HBASE-11836](https://issues.apache.org/jira/browse/HBASE-11836) | IntegrationTestTimeBoundedMultiGetRequestsWithRegionReplicas tests simple get by default |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11835](https://issues.apache.org/jira/browse/HBASE-11835) | Wrong managenement of non expected calls in the client |  Major | Client, Performance | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11834](https://issues.apache.org/jira/browse/HBASE-11834) | TestHRegionBusyWait.testParallelAppendWithMemStoreFlush fails sporadically |  Major | test | stack | stack |
| [HBASE-11832](https://issues.apache.org/jira/browse/HBASE-11832) | maven release plugin overrides command line arguments |  Minor | . | Enoch Hsu | Enoch Hsu |
| [HBASE-11830](https://issues.apache.org/jira/browse/HBASE-11830) | TestReplicationThrottler.testThrottling failed on virtual boxes |  Minor | test | Sergey Soldatov | Stephen Yuan Jiang |
| [HBASE-11823](https://issues.apache.org/jira/browse/HBASE-11823) | Cleanup javadoc warnings. |  Minor | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-11820](https://issues.apache.org/jira/browse/HBASE-11820) | ReplicationSource : Set replication codec class as RPC codec class on a clonned Configuration |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11816](https://issues.apache.org/jira/browse/HBASE-11816) | Initializing custom Metrics implementation failed in Mapper or Reducer |  Minor | metrics | Huafeng Wang | Huafeng Wang |
| [HBASE-11815](https://issues.apache.org/jira/browse/HBASE-11815) | Flush and compaction could just close the tmp writer if there is an exception |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11814](https://issues.apache.org/jira/browse/HBASE-11814) | TestAssignmentManager.testCloseFailed() and testOpenCloseRacing() is flaky |  Minor | . | Virag Kothari | Virag Kothari |
| [HBASE-11813](https://issues.apache.org/jira/browse/HBASE-11813) | CellScanner#advance may overflow stack |  Blocker | . | Andrew Purtell | stack |
| [HBASE-11804](https://issues.apache.org/jira/browse/HBASE-11804) | Raise default heap size if unspecified |  Major | scripts | Elliott Clark | Elliott Clark |
| [HBASE-11802](https://issues.apache.org/jira/browse/HBASE-11802) | Scan copy constructor doesn't copy reversed member variable |  Minor | . | James Taylor | ramkrishna.s.vasudevan |
| [HBASE-11797](https://issues.apache.org/jira/browse/HBASE-11797) | Create Table interface to replace HTableInterface |  Major | . | Carter | Carter |
| [HBASE-11794](https://issues.apache.org/jira/browse/HBASE-11794) | StripeStoreFlusher causes NullPointerException |  Critical | Compaction | jeongmin kim | jeongmin kim |
| [HBASE-11789](https://issues.apache.org/jira/browse/HBASE-11789) | LoadIncrementalHFiles is not picking up the -D option |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11788](https://issues.apache.org/jira/browse/HBASE-11788) | hbase is not deleting the cell when a Put with a KeyValue, KeyValue.Type.Delete is submitted |  Major | . | Cristian Armaselu | Srikanth Srungarapu |
| [HBASE-11787](https://issues.apache.org/jira/browse/HBASE-11787) | TestRegionLocations is not categorized |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11782](https://issues.apache.org/jira/browse/HBASE-11782) | Document that hbase.MetaMigrationConvertingToPB needs to be set to true for migrations pre 0.96 |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11773](https://issues.apache.org/jira/browse/HBASE-11773) | Wrong field used for protobuf construction in RegionStates. |  Major | Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-11772](https://issues.apache.org/jira/browse/HBASE-11772) | Bulk load mvcc and seqId issues with native hfiles |  Critical | . | Jerry He | Jerry He |
| [HBASE-11770](https://issues.apache.org/jira/browse/HBASE-11770) | TestBlockCacheReporting.testBucketCache is not stable |  Major | test | Sergey Soldatov | Sergey Soldatov |
| [HBASE-11766](https://issues.apache.org/jira/browse/HBASE-11766) | Backdoor CoprocessorHConnection is no longer being used for local writes |  Major | . | James Taylor | Andrew Purtell |
| [HBASE-11755](https://issues.apache.org/jira/browse/HBASE-11755) | VisibilityController returns the wrong value for preBalanceSwitch() |  Minor | Coprocessors | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11745](https://issues.apache.org/jira/browse/HBASE-11745) | FilterAllFilter should return ReturnCode.SKIP |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11744](https://issues.apache.org/jira/browse/HBASE-11744) | RpcServer code should not use a collection from netty internal |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11733](https://issues.apache.org/jira/browse/HBASE-11733) | Avoid copy-paste in Master/Region CoprocessorHost |  Trivial | Coprocessors | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11732](https://issues.apache.org/jira/browse/HBASE-11732) | Should not preemptively offline a region |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11728](https://issues.apache.org/jira/browse/HBASE-11728) | Data loss while scanning using PREFIX\_TREE DATA-BLOCK-ENCODING |  Critical | Scanners | wuchengzhi | ramkrishna.s.vasudevan |
| [HBASE-11727](https://issues.apache.org/jira/browse/HBASE-11727) | Assignment wait time error in case of ServerNotRunningYetException |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11726](https://issues.apache.org/jira/browse/HBASE-11726) | Master should fail-safe if starting with a pre 0.96 layout |  Critical | master | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11725](https://issues.apache.org/jira/browse/HBASE-11725) | Backport failover checking change to 1.0 |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11721](https://issues.apache.org/jira/browse/HBASE-11721) | jdiff script no longer works as usage instructions indicate |  Major | scripts | Misty Stanley-Jones | Dima Spivak |
| [HBASE-11719](https://issues.apache.org/jira/browse/HBASE-11719) | Remove some unused paths in AsyncClient |  Trivial | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11718](https://issues.apache.org/jira/browse/HBASE-11718) | Remove some logs in RpcClient.java |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11717](https://issues.apache.org/jira/browse/HBASE-11717) | Remove unused config 'hbase.offheapcache.percentage' from hbase-default.xml and book |  Minor | documentation | Anoop Sam John | Anoop Sam John |
| [HBASE-11716](https://issues.apache.org/jira/browse/HBASE-11716) | LoadTestDataGeneratorWithVisibilityLabels should handle Delete mutations |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11709](https://issues.apache.org/jira/browse/HBASE-11709) | TestMasterShutdown can fail sometime |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11708](https://issues.apache.org/jira/browse/HBASE-11708) | RegionSplitter incorrectly calculates splitcount |  Minor | Admin, util | Sean Busbey | louis hust |
| [HBASE-11705](https://issues.apache.org/jira/browse/HBASE-11705) | callQueueSize should be decremented in a fail-fast scenario |  Critical | IPC/RPC | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11703](https://issues.apache.org/jira/browse/HBASE-11703) | Meta region state could be corrupted |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11689](https://issues.apache.org/jira/browse/HBASE-11689) | Track meta in transition |  Major | Region Assignment | Jimmy Xiang | Andrey Stepachev |
| [HBASE-11687](https://issues.apache.org/jira/browse/HBASE-11687) | No need to abort on postOpenDeployTasks exception if region opening is cancelled |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11678](https://issues.apache.org/jira/browse/HBASE-11678) | BucketCache ramCache fills heap after running a few hours |  Critical | BlockCache | stack | stack |
| [HBASE-11671](https://issues.apache.org/jira/browse/HBASE-11671) | TestEndToEndSplitTransaction fails on master |  Major | Region Assignment, test | Mikhail Antonov | Mikhail Antonov |
| [HBASE-11668](https://issues.apache.org/jira/browse/HBASE-11668) | Re-add HBASE\_LIBRARY\_PATH to bin/hbase |  Trivial | shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11662](https://issues.apache.org/jira/browse/HBASE-11662) | Launching shell with long-form --debug fails |  Major | shell | Sean Busbey | Sean Busbey |
| [HBASE-11661](https://issues.apache.org/jira/browse/HBASE-11661) | Quickstart chapter claims standalone mode has multiple processes |  Minor | documentation | Sean Busbey | Sean Busbey |
| [HBASE-11659](https://issues.apache.org/jira/browse/HBASE-11659) | Region state RPC call is not idempotent |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-11658](https://issues.apache.org/jira/browse/HBASE-11658) | Piped commands to hbase shell should return non-zero if shell command failed. |  Major | shell | Jonathan Hsieh | Sean Busbey |
| [HBASE-11648](https://issues.apache.org/jira/browse/HBASE-11648) | Typo of config: hbase.hstore.compaction.ratio in book.xml |  Minor | Compaction | Liu Shaohui | Liu Shaohui |
| [HBASE-11640](https://issues.apache.org/jira/browse/HBASE-11640) | Add syntax highlighting support to HBase Ref Guide programlistings |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11632](https://issues.apache.org/jira/browse/HBASE-11632) | Region split needs to clear force split flag at the end of SplitRequest run |  Minor | regionserver | Jerry He | Jerry He |
| [HBASE-11629](https://issues.apache.org/jira/browse/HBASE-11629) | Operational concerns for Replication should call out ZooKeeper |  Major | documentation, Replication | Sean Busbey | Misty Stanley-Jones |
| [HBASE-11627](https://issues.apache.org/jira/browse/HBASE-11627) | RegionSplitter's rollingSplit terminated with "/ by zero", and the \_balancedSplit file was not deleted properly |  Major | Admin, util | louis hust | Sean Busbey |
| [HBASE-11620](https://issues.apache.org/jira/browse/HBASE-11620) | Record the class name of Writer in WAL header so that only proper Reader can open the WAL file |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-11617](https://issues.apache.org/jira/browse/HBASE-11617) | incorrect AgeOfLastAppliedOp and AgeOfLastShippedOp in replication Metrics when no new replication OP |  Minor | Replication | Demai Ni | Demai Ni |
| [HBASE-11609](https://issues.apache.org/jira/browse/HBASE-11609) | LoadIncrementalHFiles fails if the namespace is specified |  Major | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11603](https://issues.apache.org/jira/browse/HBASE-11603) | Apply version of HADOOP-8027 to our JMXJsonServlet |  Major | . | stack | stack |
| [HBASE-11594](https://issues.apache.org/jira/browse/HBASE-11594) | Unhandled NoNodeException in distributed log replay mode |  Minor | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-11593](https://issues.apache.org/jira/browse/HBASE-11593) | TestCacheConfig failing consistently in precommit builds |  Major | BlockCache | Andrew Purtell | stack |
| [HBASE-11591](https://issues.apache.org/jira/browse/HBASE-11591) | Scanner fails to retrieve KV  from bulk loaded file with highest sequence id than the cell's mvcc in a non-bulk loaded file |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11589](https://issues.apache.org/jira/browse/HBASE-11589) | AccessControlException should be a not retriable exception |  Major | IPC/RPC | Kashif | Qiang Tian |
| [HBASE-11588](https://issues.apache.org/jira/browse/HBASE-11588) | RegionServerMetricsWrapperRunnable misused the 'period' parameter |  Minor | metrics | Victor Xu | Victor Xu |
| [HBASE-11586](https://issues.apache.org/jira/browse/HBASE-11586) | HFile's HDFS op latency sampling code is not used |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11579](https://issues.apache.org/jira/browse/HBASE-11579) | CopyTable should check endtime value only if != 0 |  Major | mapreduce | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-11575](https://issues.apache.org/jira/browse/HBASE-11575) | Pseudo distributed mode does not work as documented |  Critical | . | Enis Soztutar | Jimmy Xiang |
| [HBASE-11565](https://issues.apache.org/jira/browse/HBASE-11565) | Stale connection could stay for a while |  Major | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11564](https://issues.apache.org/jira/browse/HBASE-11564) | Improve cancellation management in the rpc layer |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11562](https://issues.apache.org/jira/browse/HBASE-11562) | CopyTable should provide an option to shuffle the mapper tasks |  Major | mapreduce | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-11561](https://issues.apache.org/jira/browse/HBASE-11561) | deprecate ImmutableBytesWritable.getSize and replace with getLength |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-11560](https://issues.apache.org/jira/browse/HBASE-11560) | hbase.regionserver.global.memstore.size is documented twice |  Major | . | Jean-Marc Spaggiari | Misty Stanley-Jones |
| [HBASE-11558](https://issues.apache.org/jira/browse/HBASE-11558) | Caching set on Scan object gets lost when using TableMapReduceUtil in 0.95+ |  Major | mapreduce, Scanners | Ishan Chhabra | Ishan Chhabra |
| [HBASE-11555](https://issues.apache.org/jira/browse/HBASE-11555) | TableSnapshotRegionSplit should be public |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11551](https://issues.apache.org/jira/browse/HBASE-11551) | BucketCache$WriterThread.run() doesn't handle exceptions correctly |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11550](https://issues.apache.org/jira/browse/HBASE-11550) | Custom value for BUCKET\_CACHE\_BUCKETS\_KEY should be sorted |  Trivial | . | Ted Yu | Gustavo Anatoly |
| [HBASE-11545](https://issues.apache.org/jira/browse/HBASE-11545) | mapred.TableSnapshotInputFormat is missing InterfaceAudience annotation |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11544](https://issues.apache.org/jira/browse/HBASE-11544) | [Ergonomics] hbase.client.scanner.caching is dogged and will try to return batch even if it means OOME |  Critical | . | stack | Jonathan Lawlor |
| [HBASE-11541](https://issues.apache.org/jira/browse/HBASE-11541) | Wrong result when scaning meta with startRow |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-11540](https://issues.apache.org/jira/browse/HBASE-11540) | Document HBASE-11474 |  Critical | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11539](https://issues.apache.org/jira/browse/HBASE-11539) | Expand info about contributing to and building documentation |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11537](https://issues.apache.org/jira/browse/HBASE-11537) | Avoid synchronization on instances of ConcurrentMap |  Minor | . | Mike Drob | Mike Drob |
| [HBASE-11536](https://issues.apache.org/jira/browse/HBASE-11536) | Puts of region location to Meta may be out of order which causes inconsistent of region location |  Critical | Region Assignment | Liu Shaohui | Liu Shaohui |
| [HBASE-11535](https://issues.apache.org/jira/browse/HBASE-11535) | ReplicationPeer map is not thread safe |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-11534](https://issues.apache.org/jira/browse/HBASE-11534) | Remove broken JAVA\_HOME autodetection in hbase-config.sh |  Minor | . | Andrew Purtell | Esteban Gutierrez |
| [HBASE-11531](https://issues.apache.org/jira/browse/HBASE-11531) | RegionStates for regions under region-in-transition znode are not updated on startup |  Major | Region Assignment | Virag Kothari | Jimmy Xiang |
| [HBASE-11530](https://issues.apache.org/jira/browse/HBASE-11530) | RegionStates adds regions to wrong servers |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11529](https://issues.apache.org/jira/browse/HBASE-11529) | Images and CSS still don't work properly on both html and html-single book |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11527](https://issues.apache.org/jira/browse/HBASE-11527) | Cluster free memory limit check should consider L2 block cache size also when L2 cache is onheap. |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11525](https://issues.apache.org/jira/browse/HBASE-11525) | Region server holding in region states is out of sync with meta |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11523](https://issues.apache.org/jira/browse/HBASE-11523) | JSON serialization of PE Options is broke |  Major | . | stack | stack |
| [HBASE-11522](https://issues.apache.org/jira/browse/HBASE-11522) | Move Replication information into the Ref Guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11521](https://issues.apache.org/jira/browse/HBASE-11521) | Modify pom.xml to copy the images/ and css/ directories to the right location for the Ref Guide to see them correctly |  Critical | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11518](https://issues.apache.org/jira/browse/HBASE-11518) | doc update for how to create non-shared HConnection |  Minor | documentation | Qiang Tian | Qiang Tian |
| [HBASE-11517](https://issues.apache.org/jira/browse/HBASE-11517) | TestReplicaWithCluster turns zombie |  Major | . | stack | Mikhail Antonov |
| [HBASE-11514](https://issues.apache.org/jira/browse/HBASE-11514) | Fix findbugs warnings in blockcache |  Major | . | stack | stack |
| [HBASE-11510](https://issues.apache.org/jira/browse/HBASE-11510) | Visibility serialization format tag gets duplicated in Append/Increment'ed cells |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11509](https://issues.apache.org/jira/browse/HBASE-11509) | Forward port HBASE-11039 to trunk and branch-1 after HBASE-11489 |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11506](https://issues.apache.org/jira/browse/HBASE-11506) | IntegrationTestWithCellVisibilityLoadAndVerify allow User to be passed as arg |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11505](https://issues.apache.org/jira/browse/HBASE-11505) | 'snapshot' shell command shadows 'snapshot' shell when 'help' is invoked |  Trivial | shell | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11502](https://issues.apache.org/jira/browse/HBASE-11502) | Track down broken images in Ref Guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11500](https://issues.apache.org/jira/browse/HBASE-11500) | Possible null pointer dereference of regionLocation in ReversedScannerCallable |  Minor | Client | Mike Drob | Mike Drob |
| [HBASE-11499](https://issues.apache.org/jira/browse/HBASE-11499) | AsyncProcess.buildDetailedErrorMessage concatenates strings using + in a loop |  Trivial | Client | Mike Drob | Mike Drob |
| [HBASE-11496](https://issues.apache.org/jira/browse/HBASE-11496) | HBASE-9745 broke cygwin CLASSPATH translation |  Minor | . | Dave Latham | Dave Latham |
| [HBASE-11493](https://issues.apache.org/jira/browse/HBASE-11493) | Autorestart option is not working because of stale znode  "shutdown" |  Major | . | Nishan Shetty | nijel |
| [HBASE-11492](https://issues.apache.org/jira/browse/HBASE-11492) | Hadoop configuration overrides some ipc parameters including tcpNoDelay |  Critical | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11489](https://issues.apache.org/jira/browse/HBASE-11489) | ClassNotFoundException while running IT tests in trunk using 'mvn verify' |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11488](https://issues.apache.org/jira/browse/HBASE-11488) | cancelTasks in SubprocedurePool can hang during task error |  Minor | snapshots | Jerry He | Jerry He |
| [HBASE-11487](https://issues.apache.org/jira/browse/HBASE-11487) | ScanResponse carries non-zero cellblock for CloseScanRequest (ScanRequest with close\_scanner = true) |  Minor | IPC/RPC, regionserver | Shengzhe Yao | Shengzhe Yao |
| [HBASE-11481](https://issues.apache.org/jira/browse/HBASE-11481) | TableSnapshotInputFormat javadoc wrongly claims HBase "enforces security" |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11477](https://issues.apache.org/jira/browse/HBASE-11477) | book.xml has Docbook validity issues (again) |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11476](https://issues.apache.org/jira/browse/HBASE-11476) | Expand 'Conceptual View' section of Data Model chapter |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11475](https://issues.apache.org/jira/browse/HBASE-11475) | Distributed log replay should also replay compaction events |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11465](https://issues.apache.org/jira/browse/HBASE-11465) | [VisibilityController] Reserved tags check not happening for Append/Increment |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11463](https://issues.apache.org/jira/browse/HBASE-11463) | (findbugs) HE: Class defines equals() and uses Object.hashCode() |  Trivial | . | Mike Drob | Mike Drob |
| [HBASE-11460](https://issues.apache.org/jira/browse/HBASE-11460) | Deadlock in HMaster on masterAndZKLock in HConnectionManager |  Critical | master | Andrey Stepachev | Ted Yu |
| [HBASE-11458](https://issues.apache.org/jira/browse/HBASE-11458) | NPEs if RegionServer cannot initialize |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11449](https://issues.apache.org/jira/browse/HBASE-11449) | IntegrationTestIngestWithACL fails to use different users after HBASE-10810 |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11445](https://issues.apache.org/jira/browse/HBASE-11445) | TestZKProcedure#testMultiCohortWithMemberTimeoutDuringPrepare is flaky |  Major | snapshots | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-11442](https://issues.apache.org/jira/browse/HBASE-11442) | ReplicationSourceManager doesn't cleanup the queues for recovered sources |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-11439](https://issues.apache.org/jira/browse/HBASE-11439) | StripeCompaction may not obey the OffPeak rule to compaction |  Minor | Compaction | Victor Xu | Victor Xu |
| [HBASE-11435](https://issues.apache.org/jira/browse/HBASE-11435) | Visibility labelled cells fail to getting replicated |  Critical | Replication, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11423](https://issues.apache.org/jira/browse/HBASE-11423) | Visibility label and per cell ACL feature not working with HTable#mutateRow() and MultiRowMutationEndpoint |  Blocker | Coprocessors, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11422](https://issues.apache.org/jira/browse/HBASE-11422) | Specification of scope is missing for certain Hadoop dependencies |  Major | . | Ted Yu | Konstantin Boudnik |
| [HBASE-11413](https://issues.apache.org/jira/browse/HBASE-11413) | [findbugs] RV: Negating the result of compareTo()/compare() |  Trivial | . | Mike Drob | Mike Drob |
| [HBASE-11405](https://issues.apache.org/jira/browse/HBASE-11405) | Multiple invocations of hbck in parallel disables balancer permanently |  Major | Balancer, hbck | bharath v | bharath v |
| [HBASE-11399](https://issues.apache.org/jira/browse/HBASE-11399) | Improve Quickstart chapter and move Pseudo-distributed and distributed to it |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11394](https://issues.apache.org/jira/browse/HBASE-11394) | Replication can have data loss if peer id contains hyphen "-" |  Major | . | Enis Soztutar | Talat UYARER |
| [HBASE-11333](https://issues.apache.org/jira/browse/HBASE-11333) | Remove deprecated class MetaMigrationConvertingToPB |  Trivial | master | Mikhail Antonov | Mikhail Antonov |
| [HBASE-11316](https://issues.apache.org/jira/browse/HBASE-11316) | Expand info about compactions beyond HBASE-11120 |  Major | Compaction, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11297](https://issues.apache.org/jira/browse/HBASE-11297) | Remove some synchros in the rpcServer responder |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11266](https://issues.apache.org/jira/browse/HBASE-11266) | Remove shaded references to logger |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-11153](https://issues.apache.org/jira/browse/HBASE-11153) | Document that http webUI's should redirect to https when enabled |  Minor | documentation, master, regionserver, UI | Nick Dimiduk | Misty Stanley-Jones |
| [HBASE-11145](https://issues.apache.org/jira/browse/HBASE-11145) | UNEXPECTED!!! when HLog sync: Queue full |  Critical | wal | Anoop Sam John | stack |
| [HBASE-11118](https://issues.apache.org/jira/browse/HBASE-11118) | non environment variable solution for "IllegalAccessError: class com.google.protobuf.ZeroCopyLiteralByteString cannot access its superclass com.google.protobuf.LiteralByteString" |  Blocker | mapreduce | André Kelpe | stack |
| [HBASE-11099](https://issues.apache.org/jira/browse/HBASE-11099) | Two situations where we could open a region with smaller sequence number |  Major | regionserver | Jeffrey Zhong | Stephen Yuan Jiang |
| [HBASE-11064](https://issues.apache.org/jira/browse/HBASE-11064) | Odd behaviors of TableName for empty namespace |  Trivial | . | Hiroshi Ikeda | Rekha Joshi |
| [HBASE-10780](https://issues.apache.org/jira/browse/HBASE-10780) | HFilePrettyPrinter#processFile should return immediately if file does not exist |  Minor | HFile | Ashish Singhi | Ashish Singhi |
| [HBASE-10757](https://issues.apache.org/jira/browse/HBASE-10757) | Change HTable class doc so it sends people to HCM getting instances |  Critical | . | stack | stack |
| [HBASE-10748](https://issues.apache.org/jira/browse/HBASE-10748) | hbase-daemon.sh fails to execute with 'sh' command |  Major | scripts | Ashish Singhi | Ashish Singhi |
| [HBASE-10536](https://issues.apache.org/jira/browse/HBASE-10536) | ImportTsv should fail fast if any of the column family passed to the job is not present in the table |  Major | mapreduce | rajeshbabu |  |
| [HBASE-10528](https://issues.apache.org/jira/browse/HBASE-10528) | DefaultBalancer selects plans to move regions onto draining nodes |  Major | . | churro morales | churro morales |
| [HBASE-10499](https://issues.apache.org/jira/browse/HBASE-10499) | In write heavy scenario one of the regions does not get flushed causing RegionTooBusyException |  Critical | . | ramkrishna.s.vasudevan | Ted Yu |
| [HBASE-10314](https://issues.apache.org/jira/browse/HBASE-10314) | Add Chaos Monkey that doesn't touch the master |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-10205](https://issues.apache.org/jira/browse/HBASE-10205) | ConcurrentModificationException in BucketAllocator |  Minor | regionserver | Arjen Roodselaar | Arjen Roodselaar |
| [HBASE-9910](https://issues.apache.org/jira/browse/HBASE-9910) | TestHFilePerformance and HFilePerformanceEvaluation should be merged in a single HFile performance test class. |  Major | Performance, test | Jean-Marc Spaggiari | Vikas Vishwakarma |
| [HBASE-9763](https://issues.apache.org/jira/browse/HBASE-9763) | Scan javadoc doesn't fully capture semantics of start and stop row |  Minor | documentation | Gabriel Reid | Gabriel Reid |
| [HBASE-9746](https://issues.apache.org/jira/browse/HBASE-9746) | RegionServer can't start when replication tries to replicate to an unknown host |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9745](https://issues.apache.org/jira/browse/HBASE-9745) | Append HBASE\_CLASSPATH to end of Java classpath and use another env var for prefix |  Major | scripts | Aditya Kishore | Aditya Kishore |
| [HBASE-9738](https://issues.apache.org/jira/browse/HBASE-9738) | Delete table and loadbalancer interference |  Critical | . | Devaraj Das |  |
| [HBASE-9473](https://issues.apache.org/jira/browse/HBASE-9473) | Change UI to list 'system tables' rather than 'catalog tables'. |  Major | UI | stack | stack |
| [HBASE-9431](https://issues.apache.org/jira/browse/HBASE-9431) | Set  'hbase.bulkload.retries.number' to 10 as HBASE-8450 claims |  Major | . | stack | stack |
| [HBASE-9117](https://issues.apache.org/jira/browse/HBASE-9117) | Remove HTablePool and all HConnection pooling related APIs |  Critical | . | Lars Hofhansl | Nick Dimiduk |
| [HBASE-9005](https://issues.apache.org/jira/browse/HBASE-9005) | Improve documentation around KEEP\_DELETED\_CELLS, time range scans, and delete markers |  Minor | documentation | Lars Hofhansl | Misty Stanley-Jones |
| [HBASE-9003](https://issues.apache.org/jira/browse/HBASE-9003) | TableMapReduceUtil should not rely on org.apache.hadoop.util.JarFinder#getJar |  Major | mapreduce | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-8936](https://issues.apache.org/jira/browse/HBASE-8936) | Fixing TestSplitLogWorker while running Jacoco tests. |  Trivial | . | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-8808](https://issues.apache.org/jira/browse/HBASE-8808) | Use Jacoco to generate Unit Test coverage reports |  Trivial | build | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-8725](https://issues.apache.org/jira/browse/HBASE-8725) | Add total time RPC call metrics |  Major | metrics | Elliott Clark | Nate Edel |
| [HBASE-8674](https://issues.apache.org/jira/browse/HBASE-8674) | JUnit and Surefire TRUNK-HBASE-2 plugins need a new home |  Major | build | Andrew Purtell | Gary Helmling |
| [HBASE-8473](https://issues.apache.org/jira/browse/HBASE-8473) | add note to ref guide about snapshots and ec2 reverse dns requirements. |  Major | documentation, snapshots | Jonathan Hsieh | Misty Stanley-Jones |
| [HBASE-8026](https://issues.apache.org/jira/browse/HBASE-8026) | HBase Shell docs for scan command does not reference VERSIONS |  Major | . | Jonathan Natkins | Amit Kabra |
| [HBASE-7332](https://issues.apache.org/jira/browse/HBASE-7332) | [webui] HMaster webui should display the number of regions a table has. |  Minor | UI | Jonathan Hsieh | Andrey Stepachev |
| [HBASE-7211](https://issues.apache.org/jira/browse/HBASE-7211) | Improve hbase ref guide for the testing part. |  Minor | documentation | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6994](https://issues.apache.org/jira/browse/HBASE-6994) | minor doc update about DEFAULT\_ACCEPTABLE\_FACTOR |  Minor | documentation | Liang Xie | Liang Xie |
| [HBASE-4931](https://issues.apache.org/jira/browse/HBASE-4931) | CopyTable instructions could be improved. |  Major | documentation, mapreduce | Jonathan Hsieh | Misty Stanley-Jones |
| [HBASE-1989](https://issues.apache.org/jira/browse/HBASE-1989) | Admin (et al.) not accurate with Column vs. Column-Family usage |  Minor | Client | Doug Meil | Lars Francke |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13940](https://issues.apache.org/jira/browse/HBASE-13940) | IntegrationTestBulkLoad needs option to specify output folders used by test |  Major | . | Enis Soztutar | Rajeshbabu Chintaguntla |
| [HBASE-13609](https://issues.apache.org/jira/browse/HBASE-13609) | TestFastFail is still failing |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13591](https://issues.apache.org/jira/browse/HBASE-13591) | TestHBaseFsck is flakey |  Major | hbck | Nick Dimiduk | Josh Elser |
| [HBASE-13413](https://issues.apache.org/jira/browse/HBASE-13413) | Create an integration test for Replication |  Minor | integration tests | Rajesh Nishtala | Rajesh Nishtala |
| [HBASE-13280](https://issues.apache.org/jira/browse/HBASE-13280) | TestSecureRPC failed |  Minor | . | Liu Shaohui | Duo Zhang |
| [HBASE-13182](https://issues.apache.org/jira/browse/HBASE-13182) | Test NamespaceAuditor/AccessController create/delete table is flaky |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13179](https://issues.apache.org/jira/browse/HBASE-13179) | TestMasterObserver deleteTable is flaky |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13106](https://issues.apache.org/jira/browse/HBASE-13106) | Ensure endpoint-only table coprocessors can be dynamically loaded |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12992](https://issues.apache.org/jira/browse/HBASE-12992) | TestChoreService doesn't close services, that can break test on slow virtual hosts. |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12885](https://issues.apache.org/jira/browse/HBASE-12885) | Unit test for RAW / VERSIONS scanner specifications |  Minor | shell | Amit Kabra | Amit Kabra |
| [HBASE-12799](https://issues.apache.org/jira/browse/HBASE-12799) | ITAG fails with java.lang.RuntimeException if table does not exist |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12764](https://issues.apache.org/jira/browse/HBASE-12764) | TestPerColumnFamilyFlush#testCompareStoreFileCount may fail due to new table not available |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12685](https://issues.apache.org/jira/browse/HBASE-12685) | TestSplitLogManager#testLogFilesAreArchived sometimes times out due to race condition |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12645](https://issues.apache.org/jira/browse/HBASE-12645) | HBaseTestingUtility is using ${$HOME} for rootDir |  Critical | test | Nick Dimiduk | Varun Saxena |
| [HBASE-12554](https://issues.apache.org/jira/browse/HBASE-12554) | TestBaseLoadBalancer may timeout due to lengthy rack lookup |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12549](https://issues.apache.org/jira/browse/HBASE-12549) | Fix TestAssignmentManagerOnCluster#testAssignRacingWithSSH() flaky test |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12472](https://issues.apache.org/jira/browse/HBASE-12472) | Improve debuggability of IntegrationTestBulkLoad |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12403](https://issues.apache.org/jira/browse/HBASE-12403) | IntegrationTestMTTR flaky due to aggressive RS restart timeout |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12401](https://issues.apache.org/jira/browse/HBASE-12401) | Add some timestamp signposts in IntegrationTestMTTR |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12378](https://issues.apache.org/jira/browse/HBASE-12378) | Add a test to verify that the read-replica is able to read after a compaction |  Minor | regionserver, Replication | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12367](https://issues.apache.org/jira/browse/HBASE-12367) | Integration tests should not restore the cluster if the CM is not destructive |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12335](https://issues.apache.org/jira/browse/HBASE-12335) | IntegrationTestRegionReplicaPerf is flaky |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12317](https://issues.apache.org/jira/browse/HBASE-12317) | Run IntegrationTestRegionReplicaPerf w.o mapred |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12055](https://issues.apache.org/jira/browse/HBASE-12055) | TestBucketWriterThread hangs flakily based on timing |  Major | . | Enis Soztutar | Nick Dimiduk |
| [HBASE-12008](https://issues.apache.org/jira/browse/HBASE-12008) | Remove IntegrationTestImportTsv#testRunFromOutputCommitter |  Minor | mapreduce, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11966](https://issues.apache.org/jira/browse/HBASE-11966) | Minor error in TestHRegion.testCheckAndMutate\_WithCorrectValue() |  Minor | regionserver | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11942](https://issues.apache.org/jira/browse/HBASE-11942) | Fix TestHRegionBusyWait |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11918](https://issues.apache.org/jira/browse/HBASE-11918) | TestVisibilityLabelsWithDistributedLogReplay#testAddVisibilityLabelsOnRSRestart sometimes fails due to VisibilityController initialization not being recognized |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-11867](https://issues.apache.org/jira/browse/HBASE-11867) | TestSplitLogManager.testUnassignedTimeout is flaky |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11866](https://issues.apache.org/jira/browse/HBASE-11866) | TestDistributedLogSplitting is flaky |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11838](https://issues.apache.org/jira/browse/HBASE-11838) | Enable PREFIX\_TREE in integration tests |  Minor | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11798](https://issues.apache.org/jira/browse/HBASE-11798) | TestBucketWriterThread may hang due to WriterThread stopping prematurely |  Major | . | Alex Newman | Alex Newman |
| [HBASE-11713](https://issues.apache.org/jira/browse/HBASE-11713) | Adding hbase shell unit test coverage for visibility labels. |  Minor | security, shell | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11673](https://issues.apache.org/jira/browse/HBASE-11673) | TestIOFencing#testFencingAroundCompactionAfterWALSync fails |  Major | . | Qiang Tian | Sergey Soldatov |
| [HBASE-11616](https://issues.apache.org/jira/browse/HBASE-11616) | TestNamespaceUpgrade fails in trunk |  Major | . | Ted Yu | Jimmy Xiang |
| [HBASE-11615](https://issues.apache.org/jira/browse/HBASE-11615) | TestZKLessAMOnCluster.testForceAssignWhileClosing failed on Jenkins |  Major | master | Mike Drob | Jimmy Xiang |
| [HBASE-11461](https://issues.apache.org/jira/browse/HBASE-11461) | Compilation errors are not posted back to JIRA during QA run |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-11057](https://issues.apache.org/jira/browse/HBASE-11057) | Improve TestShell coverage of grant and revoke comamnds |  Minor | . | Andrew Purtell | Srikanth Srungarapu |
| [HBASE-7781](https://issues.apache.org/jira/browse/HBASE-7781) | Update security unit tests to use a KDC if available |  Blocker | security, test | Gary Helmling | Duo Zhang |
| [HBASE-4744](https://issues.apache.org/jira/browse/HBASE-4744) | Remove @Ignore for testLogRollAfterSplitStart |  Critical | . | Nicolas Spiegelberg | Sean Busbey |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14013](https://issues.apache.org/jira/browse/HBASE-14013) | Retry when RegionServerNotYetRunningException rather than go ahead with assign so for sure we don't skip WAL replay |  Major | Region Assignment | stack | Enis Soztutar |
| [HBASE-14003](https://issues.apache.org/jira/browse/HBASE-14003) | work around jdk8 spec bug in WALPerfEval |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-13998](https://issues.apache.org/jira/browse/HBASE-13998) | Remove CellComparator#compareRows(byte[] left, int loffset, int llength, byte[] right, int roffset, int rlength) |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13990](https://issues.apache.org/jira/browse/HBASE-13990) | clean up remaining errors for maven site goal |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-13975](https://issues.apache.org/jira/browse/HBASE-13975) | add 1.2 RM to docs |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-13973](https://issues.apache.org/jira/browse/HBASE-13973) | Update documentation for 10070 Phase 2 changes |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13968](https://issues.apache.org/jira/browse/HBASE-13968) | Remove deprecated methods from BufferedMutator class |  Major | API | Ashish Singhi | Ashish Singhi |
| [HBASE-13967](https://issues.apache.org/jira/browse/HBASE-13967) | add jdk profiles for jdk.tools dependency |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-13950](https://issues.apache.org/jira/browse/HBASE-13950) | Add a NoopProcedureStore for testing |  Trivial | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13939](https://issues.apache.org/jira/browse/HBASE-13939) | Make HFileReaderImpl.getFirstKeyInBlock() to return a Cell |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13926](https://issues.apache.org/jira/browse/HBASE-13926) | Close the scanner only after Call#setResponse |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13920](https://issues.apache.org/jira/browse/HBASE-13920) | Exclude Java files generated from protobuf from javadoc |  Minor | . | Gabor Liptak | Gabor Liptak |
| [HBASE-13916](https://issues.apache.org/jira/browse/HBASE-13916) | Create MultiByteBuffer an aggregation of ByteBuffers |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13911](https://issues.apache.org/jira/browse/HBASE-13911) | add 1.2 to prereq tables in ref guide |  Blocker | documentation | Sean Busbey | Sean Busbey |
| [HBASE-13910](https://issues.apache.org/jira/browse/HBASE-13910) | add branch-1.2 to precommit branches |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-13899](https://issues.apache.org/jira/browse/HBASE-13899) | Jacoco instrumentation fails under jdk8 |  Major | build, test | Sean Busbey | Duo Zhang |
| [HBASE-13898](https://issues.apache.org/jira/browse/HBASE-13898) | correct additional javadoc failures under java 8 |  Minor | documentation | Sean Busbey | Gabor Liptak |
| [HBASE-13871](https://issues.apache.org/jira/browse/HBASE-13871) | Change RegionScannerImpl to deal with Cell instead of byte[], int, int |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13827](https://issues.apache.org/jira/browse/HBASE-13827) | Delayed scanner close in KeyValueHeap and StoreScanner |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13817](https://issues.apache.org/jira/browse/HBASE-13817) | ByteBufferOuputStream - add writeInt support |  Major | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13759](https://issues.apache.org/jira/browse/HBASE-13759) | Improve procedure yielding |  Trivial | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13754](https://issues.apache.org/jira/browse/HBASE-13754) | Allow non KeyValue Cell types also to oswrite |  Major | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13728](https://issues.apache.org/jira/browse/HBASE-13728) | Remove use of Hadoop's GenericOptionsParser |  Blocker | . | Sean Busbey | Sean Busbey |
| [HBASE-13679](https://issues.apache.org/jira/browse/HBASE-13679) | Change ColumnTracker and SQM to deal with Cell instead of byte[], int, int |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13658](https://issues.apache.org/jira/browse/HBASE-13658) | Improve the test run time for TestAccessController class |  Major | test | Ashish Singhi | Ashish Singhi |
| [HBASE-13642](https://issues.apache.org/jira/browse/HBASE-13642) | Deprecate RegionObserver#postScannerFilterRow CP hook with byte[],int,int args in favor of taking Cell arg |  Major | Coprocessors, regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13641](https://issues.apache.org/jira/browse/HBASE-13641) | Deperecate Filter#filterRowKey(byte[] buffer, int offset, int length) in favor of filterRowKey(Cell firstRowCell) |  Major | Filters, regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13620](https://issues.apache.org/jira/browse/HBASE-13620) | Bring back the removed VisibilityClient methods and mark them as deprecated. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13616](https://issues.apache.org/jira/browse/HBASE-13616) | Move ServerShutdownHandler to Pv2 |  Major | proc-v2 | stack | stack |
| [HBASE-13614](https://issues.apache.org/jira/browse/HBASE-13614) | Avoid temp KeyOnlyKeyValue temp objects creations in read hot path |  Critical | . | Anoop Sam John | ramkrishna.s.vasudevan |
| [HBASE-13593](https://issues.apache.org/jira/browse/HBASE-13593) | Quota support for namespace should take snapshot restore and clone into account |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13572](https://issues.apache.org/jira/browse/HBASE-13572) | Procedure v2 - client truncate table sync |  Minor | proc-v2 | Srikanth Srungarapu | Ashish Singhi |
| [HBASE-13569](https://issues.apache.org/jira/browse/HBASE-13569) | correct errors reported with mvn site |  Minor | documentation | Gabor Liptak | Gabor Liptak |
| [HBASE-13563](https://issues.apache.org/jira/browse/HBASE-13563) | Add missing table owner to AC tests. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13551](https://issues.apache.org/jira/browse/HBASE-13551) | Procedure V2 - Procedure classes should not be InterfaceAudience.Public |  Blocker | master | Enis Soztutar | Enis Soztutar |
| [HBASE-13537](https://issues.apache.org/jira/browse/HBASE-13537) | Change the admin interface for async operations to return Future. |  Major | proc-v2 | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13536](https://issues.apache.org/jira/browse/HBASE-13536) | Cleanup the handlers that are no longer being used. |  Major | proc-v2 | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13529](https://issues.apache.org/jira/browse/HBASE-13529) | Procedure v2 - WAL Improvements |  Blocker | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13515](https://issues.apache.org/jira/browse/HBASE-13515) | Handle FileNotFoundException in region replica replay for flush/compaction events |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13514](https://issues.apache.org/jira/browse/HBASE-13514) | Fix test failures in TestScannerHeartbeatMessages caused by incorrect setting of hbase.rpc.timeout |  Minor | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13510](https://issues.apache.org/jira/browse/HBASE-13510) | Purge ByteBloomFilter |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13502](https://issues.apache.org/jira/browse/HBASE-13502) | Deprecate/remove getRowComparator() in TableName |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13501](https://issues.apache.org/jira/browse/HBASE-13501) | Deprecate/Remove getComparator() in HRegionInfo. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13498](https://issues.apache.org/jira/browse/HBASE-13498) | Add more docs and a basic check for storage policy handling |  Minor | wal | Sean Busbey | Sean Busbey |
| [HBASE-13497](https://issues.apache.org/jira/browse/HBASE-13497) | Remove MVCC stamps from HFile when that is safe |  Major | Scanners | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13496](https://issues.apache.org/jira/browse/HBASE-13496) | Make Bytes$LexicographicalComparerHolder$UnsafeComparer::compareTo inlineable |  Major | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13481](https://issues.apache.org/jira/browse/HBASE-13481) | Master should respect master (old) DNS/bind related configurations |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13476](https://issues.apache.org/jira/browse/HBASE-13476) | Procedure v2 - Add Replay Order logic for child procedures |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13470](https://issues.apache.org/jira/browse/HBASE-13470) | High level Integration test for master DDL operations |  Major | master | Enis Soztutar | Sophia Feng |
| [HBASE-13466](https://issues.apache.org/jira/browse/HBASE-13466) | Document deprecations in 1.x - Part 1 |  Major | . | Lars Francke | Lars Francke |
| [HBASE-13464](https://issues.apache.org/jira/browse/HBASE-13464) | Remove deprecations for 2.0.0 - Part 1 |  Major | . | Lars Francke | Lars Francke |
| [HBASE-13455](https://issues.apache.org/jira/browse/HBASE-13455) | Procedure V2 - master truncate table |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13451](https://issues.apache.org/jira/browse/HBASE-13451) | Make the HFileBlockIndex blockKeys to Cells so that it could be easy to use in the CellComparators |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13450](https://issues.apache.org/jira/browse/HBASE-13450) | Purge RawBytescomparator from the writers and readers for HBASE-10800 |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13448](https://issues.apache.org/jira/browse/HBASE-13448) | New Cell implementation with cached component offsets/lengths |  Blocker | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13447](https://issues.apache.org/jira/browse/HBASE-13447) | Bypass logic in TimeRange.compare |  Minor | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13429](https://issues.apache.org/jira/browse/HBASE-13429) | Remove deprecated seek/reseek methods from HFileScanner |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13421](https://issues.apache.org/jira/browse/HBASE-13421) | Reduce the number of object creations introduced by HBASE-11544 in scan RPC hot code paths |  Major | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13398](https://issues.apache.org/jira/browse/HBASE-13398) | Document HBase Quota |  Major | documentation | Ashish Singhi | Gururaj Shetty |
| [HBASE-13393](https://issues.apache.org/jira/browse/HBASE-13393) | Optimize memstore flushing to avoid writing tag information to hfiles when no tags are present. |  Major | . | stack | ramkrishna.s.vasudevan |
| [HBASE-13335](https://issues.apache.org/jira/browse/HBASE-13335) | Update ClientSmallScanner and ClientSmallReversedScanner |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-13332](https://issues.apache.org/jira/browse/HBASE-13332) | Fix the usage of doAs/runAs in Visibility Controller tests. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13327](https://issues.apache.org/jira/browse/HBASE-13327) | Use Admin in ConnectionCache |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-13307](https://issues.apache.org/jira/browse/HBASE-13307) | Making methods under ScannerV2#next inlineable, faster |  Major | Scanners | stack | stack |
| [HBASE-13303](https://issues.apache.org/jira/browse/HBASE-13303) | Fix size calculation of results on the region server |  Major | Client | Lars Hofhansl | Andrew Purtell |
| [HBASE-13290](https://issues.apache.org/jira/browse/HBASE-13290) | Procedure v2 - client enable/disable table sync |  Major | Client | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13258](https://issues.apache.org/jira/browse/HBASE-13258) | Promote TestHRegion to LargeTests |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13252](https://issues.apache.org/jira/browse/HBASE-13252) | Get rid of managed connections and connection caching |  Major | API | Mikhail Antonov | Mikhail Antonov |
| [HBASE-13244](https://issues.apache.org/jira/browse/HBASE-13244) | Test delegation token generation with kerberos enabled |  Major | security, test | Duo Zhang | Duo Zhang |
| [HBASE-13226](https://issues.apache.org/jira/browse/HBASE-13226) | Document enable\_table\_replication and disable\_table\_replication shell commands |  Minor | documentation | Ashish Singhi | Ashish Singhi |
| [HBASE-13213](https://issues.apache.org/jira/browse/HBASE-13213) | Split out locality metrics among primary and secondary region |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13211](https://issues.apache.org/jira/browse/HBASE-13211) | Procedure V2 - master Enable/Disable table |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13210](https://issues.apache.org/jira/browse/HBASE-13210) | Procedure V2 - master Modify table |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13209](https://issues.apache.org/jira/browse/HBASE-13209) | Procedure V2 - master Add/Modify/Delete Column Family |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13204](https://issues.apache.org/jira/browse/HBASE-13204) | Procedure v2 - client create/delete table sync |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13203](https://issues.apache.org/jira/browse/HBASE-13203) | Procedure v2 - master create/delete table |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13202](https://issues.apache.org/jira/browse/HBASE-13202) | Procedure v2 - core framework |  Major | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13201](https://issues.apache.org/jira/browse/HBASE-13201) | Remove HTablePool from thrift-server |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-13184](https://issues.apache.org/jira/browse/HBASE-13184) | Document turning off memstore for region replicas |  Critical | documentation, Replication | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13169](https://issues.apache.org/jira/browse/HBASE-13169) | ModifyTable increasing the region replica count should also auto-setup RRRE |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13164](https://issues.apache.org/jira/browse/HBASE-13164) | Update TestUsersOperationsWithSecureHadoop to use MiniKdc |  Major | security, test | Duo Zhang | Duo Zhang |
| [HBASE-13130](https://issues.apache.org/jira/browse/HBASE-13130) | Add timeouts on TestMasterObserver, a frequent zombie show |  Major | test | stack | stack |
| [HBASE-13121](https://issues.apache.org/jira/browse/HBASE-13121) | Async wal replication for region replicas and dist log replay does not work together |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13095](https://issues.apache.org/jira/browse/HBASE-13095) | Document how to retrieve replication stats from HBase Shell |  Major | documentation, Replication | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13067](https://issues.apache.org/jira/browse/HBASE-13067) | Fix caching of stubs to allow IP address changes of restarted remote servers |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-13006](https://issues.apache.org/jira/browse/HBASE-13006) | Document visibility label support for groups |  Minor | . | Jerry He | Jerry He |
| [HBASE-12980](https://issues.apache.org/jira/browse/HBASE-12980) | Delete of a table may not clean all rows from hbase:meta |  Major | Operability | stack | stack |
| [HBASE-12936](https://issues.apache.org/jira/browse/HBASE-12936) | Quota support for namespace should take region merge into account |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12848](https://issues.apache.org/jira/browse/HBASE-12848) | Utilize Flash storage for WAL |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12802](https://issues.apache.org/jira/browse/HBASE-12802) | Remove unnecessary Table.flushCommits() |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12793](https://issues.apache.org/jira/browse/HBASE-12793) | [hbck] closeRegionSilentlyAndWait() should log cause of IOException and retry until  hbase.hbck.close.timeout expires |  Minor | hbck | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12779](https://issues.apache.org/jira/browse/HBASE-12779) | SplitTransaction: Add metrics |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12776](https://issues.apache.org/jira/browse/HBASE-12776) | SpliTransaction: Log number of files to be split |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12763](https://issues.apache.org/jira/browse/HBASE-12763) | Make it so there must be WALs for a server to be marked dead |  Major | wal | stack | stack |
| [HBASE-12738](https://issues.apache.org/jira/browse/HBASE-12738) | Chunk Ref Guide into file-per-chapter |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12735](https://issues.apache.org/jira/browse/HBASE-12735) | Refactor TAG so it can live as unit test and as an integration test |  Major | test | stack | Jonathan Hsieh |
| [HBASE-12714](https://issues.apache.org/jira/browse/HBASE-12714) | RegionReplicaReplicationEndpoint should not set the RPC Codec |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12708](https://issues.apache.org/jira/browse/HBASE-12708) | Document newly introduced params for using Thrift-over-HTTPS. |  Minor | documentation, Thrift | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12704](https://issues.apache.org/jira/browse/HBASE-12704) | Add demo client which uses doAs functionality on Thrift-over-HTTPS. |  Minor | Thrift | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12695](https://issues.apache.org/jira/browse/HBASE-12695) | JDK 1.8 compilation broken |  Critical | build | Elliott Clark | Esteban Gutierrez |
| [HBASE-12679](https://issues.apache.org/jira/browse/HBASE-12679) | Add HBaseInterfaceAudience.TOOLS and move some of the Public classes to LimitedPrivate |  Major | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-12648](https://issues.apache.org/jira/browse/HBASE-12648) | Document per cell TTLs |  Minor | documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-12606](https://issues.apache.org/jira/browse/HBASE-12606) | Sanity check encryption configuration before opening WAL or onlining regions |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12575](https://issues.apache.org/jira/browse/HBASE-12575) | Sanity check table coprocessor classes are loadable |  Major | . | Enis Soztutar | Andrew Purtell |
| [HBASE-12568](https://issues.apache.org/jira/browse/HBASE-12568) | Adopt Semantic Versioning and document it in the book |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12562](https://issues.apache.org/jira/browse/HBASE-12562) | Handling memory pressure for secondary region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12561](https://issues.apache.org/jira/browse/HBASE-12561) | Replicas of regions can be cached from different instances of the table in MetaCache |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12528](https://issues.apache.org/jira/browse/HBASE-12528) | Document the newly introduced params for providing principal and keytabs. |  Minor | documentation | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12526](https://issues.apache.org/jira/browse/HBASE-12526) | Remove unused imports |  Minor | . | Sean Busbey | Varun Saxena |
| [HBASE-12523](https://issues.apache.org/jira/browse/HBASE-12523) | Update checkstyle plugin rules to match our use |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-12519](https://issues.apache.org/jira/browse/HBASE-12519) | Remove tabs used as whitespace |  Minor | . | Sean Busbey | Varun Saxena |
| [HBASE-12518](https://issues.apache.org/jira/browse/HBASE-12518) | Task 4 polish. Remove CM#{get,delete}Connection |  Major | test | stack | stack |
| [HBASE-12517](https://issues.apache.org/jira/browse/HBASE-12517) | Several HConstant members are assignable |  Critical | . | Sean Busbey | Sean Busbey |
| [HBASE-12511](https://issues.apache.org/jira/browse/HBASE-12511) | namespace permissions - add support from table creation privilege in a namespace 'C' |  Blocker | . | Francis Liu | Huaiyu Zhu |
| [HBASE-12485](https://issues.apache.org/jira/browse/HBASE-12485) | Maintain SeqId monotonically increasing |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12471](https://issues.apache.org/jira/browse/HBASE-12471) | Task 4. replace internal ConnectionManager#{delete,get}Connection use with #close, #createConnection (0.98, 0.99) under src/main/java |  Major | . | stack | stack |
| [HBASE-12425](https://issues.apache.org/jira/browse/HBASE-12425) | Document the phases of the split transaction |  Major | documentation | Andrew Purtell | Misty Stanley-Jones |
| [HBASE-12404](https://issues.apache.org/jira/browse/HBASE-12404) | Task 5 from parent: Replace internal HTable constructor use with HConnection#getTable (0.98, 0.99) |  Major | . | stack | stack |
| [HBASE-12400](https://issues.apache.org/jira/browse/HBASE-12400) | Fix refguide so it does connection#getTable rather than new HTable everywhere: first cut! |  Major | documentation | stack | stack |
| [HBASE-12382](https://issues.apache.org/jira/browse/HBASE-12382) | Restore incremental compilation |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12379](https://issues.apache.org/jira/browse/HBASE-12379) | Try surefire 2.18-SNAPSHOT |  Major | test | stack | stack |
| [HBASE-12363](https://issues.apache.org/jira/browse/HBASE-12363) | Improve how KEEP\_DELETED\_CELLS works with MIN\_VERSIONS |  Major | regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12355](https://issues.apache.org/jira/browse/HBASE-12355) | Update maven plugins |  Major | build | stack | stack |
| [HBASE-12354](https://issues.apache.org/jira/browse/HBASE-12354) | Update dependencies in time for 1.0 release |  Major | dependencies | stack | stack |
| [HBASE-12353](https://issues.apache.org/jira/browse/HBASE-12353) | Turn down logging on some spewing unit tests |  Major | . | stack | Dima Spivak |
| [HBASE-12345](https://issues.apache.org/jira/browse/HBASE-12345) | Unsafe based ByteBuffer Comparator |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-12343](https://issues.apache.org/jira/browse/HBASE-12343) | Document recommended configuration for 0.98 from HBASE-11964 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12313](https://issues.apache.org/jira/browse/HBASE-12313) | Redo the hfile index length optimization so cell-based rather than serialized KV key |  Major | regionserver, Scanners | stack | stack |
| [HBASE-12288](https://issues.apache.org/jira/browse/HBASE-12288) | Support DirectByteBuffer usage in DataBlock Encoding area |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-12210](https://issues.apache.org/jira/browse/HBASE-12210) | Avoid KeyValue in Prefix Tree |  Major | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12202](https://issues.apache.org/jira/browse/HBASE-12202) | Support DirectByteBuffer usage in HFileBlock |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-12189](https://issues.apache.org/jira/browse/HBASE-12189) | Fix new issues found by coverity static analysis |  Major | . | Elliott Clark | stack |
| [HBASE-12128](https://issues.apache.org/jira/browse/HBASE-12128) | Cache configuration and RpcController selection for Table in Connection |  Major | . | Andrew Purtell | Stephen Yuan Jiang |
| [HBASE-12115](https://issues.apache.org/jira/browse/HBASE-12115) | Fix NumberFormat Exception in TableInputFormatBase. |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12112](https://issues.apache.org/jira/browse/HBASE-12112) | Avoid KeyValueUtil#ensureKeyValue some more simple cases |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12110](https://issues.apache.org/jira/browse/HBASE-12110) | Fix .arcconfig |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12104](https://issues.apache.org/jira/browse/HBASE-12104) | Some optimization and bugfix for HTableMultiplexer |  Major | Client | Yi Deng | Yi Deng |
| [HBASE-12096](https://issues.apache.org/jira/browse/HBASE-12096) | In ZKSplitLog Coordination and AggregateImplementation replace enhaced for statements with basic for statement to avoid unnecessary object allocation |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-12086](https://issues.apache.org/jira/browse/HBASE-12086) | Fix bugs in HTableMultiplexer |  Minor | Client | @deprecated Yi Deng | Yi Deng |
| [HBASE-12082](https://issues.apache.org/jira/browse/HBASE-12082) | Find a way to set timestamp on Cells on the server |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12079](https://issues.apache.org/jira/browse/HBASE-12079) | Deprecate KeyValueUtil#ensureKeyValue(s) |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12077](https://issues.apache.org/jira/browse/HBASE-12077) | FilterLists create many ArrayList$Itr objects per row. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12076](https://issues.apache.org/jira/browse/HBASE-12076) | Move InterfaceAudience imports to hbase-annotations |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12075](https://issues.apache.org/jira/browse/HBASE-12075) | Preemptive Fast Fail |  Major | Client | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12069](https://issues.apache.org/jira/browse/HBASE-12069) | Finish making HFile.Writer Cell-centric; undo APIs that expect KV serializations. |  Major | . | stack | stack |
| [HBASE-12062](https://issues.apache.org/jira/browse/HBASE-12062) | Fix usage of Collections.toArray |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12059](https://issues.apache.org/jira/browse/HBASE-12059) | Create hbase-annotations module |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-12050](https://issues.apache.org/jira/browse/HBASE-12050) | Avoid KeyValueUtil#ensureKeyValue from DefaultMemStore |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12047](https://issues.apache.org/jira/browse/HBASE-12047) | Avoid usage of KeyValueUtil#ensureKeyValue in simple cases |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12023](https://issues.apache.org/jira/browse/HBASE-12023) | HRegion.applyFamilyMapToMemstore creates too many iterator objects. |  Minor | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-12012](https://issues.apache.org/jira/browse/HBASE-12012) | Improve cancellation for the scan RPCs |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-11997](https://issues.apache.org/jira/browse/HBASE-11997) | CopyTable with bulkload |  Minor | Client | @deprecated Yi Deng | Yi Deng |
| [HBASE-11980](https://issues.apache.org/jira/browse/HBASE-11980) | Change sync to hsync, remove unused InfoServer, and reference our httpserver instead of hadoops |  Major | . | stack | stack |
| [HBASE-11975](https://issues.apache.org/jira/browse/HBASE-11975) | Remove the explicit list of maven repositories in pom.xml |  Major | . | Alex Newman | Alex Newman |
| [HBASE-11964](https://issues.apache.org/jira/browse/HBASE-11964) | Improve spreading replication load from failed regionservers |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11963](https://issues.apache.org/jira/browse/HBASE-11963) | Synchronize peer cluster replication connection attempts |  Major | . | Andrew Purtell | Maddineni Sukumar |
| [HBASE-11941](https://issues.apache.org/jira/browse/HBASE-11941) | Rebuild site because of major structural changes to HTML |  Major | build, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11934](https://issues.apache.org/jira/browse/HBASE-11934) | Support KeyValueCodec to encode non KeyValue cells. |  Critical | Performance, regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-11930](https://issues.apache.org/jira/browse/HBASE-11930) | Document new permission check to roll WAL writer |  Major | documentation, regionserver, security, wal | Andrew Purtell | Jerry He |
| [HBASE-11923](https://issues.apache.org/jira/browse/HBASE-11923) | Potential race condition in RecoverableZookeeper.checkZk() |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11920](https://issues.apache.org/jira/browse/HBASE-11920) | Add CP hooks for ReplicationEndPoint |  Major | Coprocessors, Replication | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11919](https://issues.apache.org/jira/browse/HBASE-11919) | Remove the deprecated pre/postGet CP hook |  Major | Coprocessors, regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-11917](https://issues.apache.org/jira/browse/HBASE-11917) | Deprecate / Remove HTableUtil |  Major | Client, Usability | Enis Soztutar | stack |
| [HBASE-11912](https://issues.apache.org/jira/browse/HBASE-11912) | Catch some bad practices at compile time with error-prone |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11911](https://issues.apache.org/jira/browse/HBASE-11911) | Break up tests into more fine grained categories |  Major | . | Alex Newman | Alex Newman |
| [HBASE-11910](https://issues.apache.org/jira/browse/HBASE-11910) | Document Premptive Call Me Maybe HBase findings in the online manual |  Major | . | Andrew Purtell | Misty Stanley-Jones |
| [HBASE-11908](https://issues.apache.org/jira/browse/HBASE-11908) | Region replicas should be added to the meta table at the time of table creation |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11903](https://issues.apache.org/jira/browse/HBASE-11903) | Directly invoking split & merge of replica regions should be disallowed |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-11874](https://issues.apache.org/jira/browse/HBASE-11874) | Support Cell to be passed to StoreFile.Writer rather than KeyValue |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11872](https://issues.apache.org/jira/browse/HBASE-11872) | Avoid usage of KeyValueUtil#ensureKeyValue from Compactor |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-11842](https://issues.apache.org/jira/browse/HBASE-11842) | Integration test for async wal replication to secondary regions |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11822](https://issues.apache.org/jira/browse/HBASE-11822) | Convert EnvironmentEdge#getCurrentTimeMillis to getCurrentTime |  Major | . | stack | stack |
| [HBASE-11786](https://issues.apache.org/jira/browse/HBASE-11786) | Document web UI for tracking time spent in coprocessors |  Minor | Coprocessors, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11784](https://issues.apache.org/jira/browse/HBASE-11784) | Document global configuration for maxVersion |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11781](https://issues.apache.org/jira/browse/HBASE-11781) | Document new TableMapReduceUtil scanning options |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11779](https://issues.apache.org/jira/browse/HBASE-11779) | Document the new requirement to set JAVA\_HOME before starting HBase |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11753](https://issues.apache.org/jira/browse/HBASE-11753) | Document HBASE\_SHELL\_OPTS environment variable |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11752](https://issues.apache.org/jira/browse/HBASE-11752) | Document blockcache prefetch option |  Major | BlockCache, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11740](https://issues.apache.org/jira/browse/HBASE-11740) | RegionStates.getRegionAssignments() gets stuck on clone |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-11738](https://issues.apache.org/jira/browse/HBASE-11738) | Document improvements to LoadTestTool and PerformanceEvaluation |  Minor | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11737](https://issues.apache.org/jira/browse/HBASE-11737) | Document callQueue improvements from HBASE-11355 and HBASE-11724 |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11736](https://issues.apache.org/jira/browse/HBASE-11736) | Document SKIP\_FLUSH snapshot option |  Major | documentation, snapshots | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11734](https://issues.apache.org/jira/browse/HBASE-11734) | Document changed behavior of hbase.hstore.time.to.purge.deletes |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11610](https://issues.apache.org/jira/browse/HBASE-11610) | Enhance remote meta updates |  Major | . | Jimmy Xiang | Virag Kothari |
| [HBASE-11607](https://issues.apache.org/jira/browse/HBASE-11607) | Document HBase metrics |  Major | documentation, metrics | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11598](https://issues.apache.org/jira/browse/HBASE-11598) | Add simple rpc throttling |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11580](https://issues.apache.org/jira/browse/HBASE-11580) | Failover handling for secondary region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11573](https://issues.apache.org/jira/browse/HBASE-11573) | Report age on eviction |  Major | BlockCache | stack | stack |
| [HBASE-11572](https://issues.apache.org/jira/browse/HBASE-11572) | Add support for doing get/scans against a particular replica\_id |  Major | . | Enis Soztutar | Jeffrey Zhong |
| [HBASE-11571](https://issues.apache.org/jira/browse/HBASE-11571) | Bulk load handling from secondary region replicas |  Major | . | Enis Soztutar | Jeffrey Zhong |
| [HBASE-11569](https://issues.apache.org/jira/browse/HBASE-11569) | Flush / Compaction handling from secondary region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11568](https://issues.apache.org/jira/browse/HBASE-11568) | Async WAL replication for region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11567](https://issues.apache.org/jira/browse/HBASE-11567) | Write bulk load COMMIT events to WAL |  Major | . | Enis Soztutar | Alex Newman |
| [HBASE-11559](https://issues.apache.org/jira/browse/HBASE-11559) | Add dumping of DATA block usage to the BlockCache JSON report. |  Major | metrics | stack | stack |
| [HBASE-11533](https://issues.apache.org/jira/browse/HBASE-11533) | AsciiDoctor POC |  Minor | build, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11520](https://issues.apache.org/jira/browse/HBASE-11520) | Simplify offheap cache config by removing the confusing "hbase.bucketcache.percentage.in.combinedcache" |  Major | io | stack | stack |
| [HBASE-11512](https://issues.apache.org/jira/browse/HBASE-11512) | Write region open/close events to WAL |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11511](https://issues.apache.org/jira/browse/HBASE-11511) | Write flush events to WAL |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11508](https://issues.apache.org/jira/browse/HBASE-11508) | Document changes to IPC config parameters from HBASE-11492 |  Major | regionserver | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11483](https://issues.apache.org/jira/browse/HBASE-11483) | Check the rest of the book for new XML validity errors and fix |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11472](https://issues.apache.org/jira/browse/HBASE-11472) | Remove ZKTableStateClientSideReader class |  Major | Client, Consensus, Zookeeper | Mikhail Antonov | Andrey Stepachev |
| [HBASE-11471](https://issues.apache.org/jira/browse/HBASE-11471) | Move TableStateManager and ZkTableStateManager and Server to hbase-server |  Major | Client, Consensus, Zookeeper | Mikhail Antonov | Alex Newman |
| [HBASE-11384](https://issues.apache.org/jira/browse/HBASE-11384) | [Visibility Controller]Check for users covering authorizations for every mutation |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11372](https://issues.apache.org/jira/browse/HBASE-11372) | Remove SlabCache |  Major | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11367](https://issues.apache.org/jira/browse/HBASE-11367) | Pluggable replication endpoint |  Blocker | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11323](https://issues.apache.org/jira/browse/HBASE-11323) | BucketCache all the time! |  Major | io | stack | stack |
| [HBASE-11318](https://issues.apache.org/jira/browse/HBASE-11318) | Classes in security subpackages missing @InterfaceAudience annotations. |  Major | security | Jonathan Hsieh | Andrew Purtell |
| [HBASE-11261](https://issues.apache.org/jira/browse/HBASE-11261) | Handle splitting/merging of regions that have region\_replication greater than one |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-11178](https://issues.apache.org/jira/browse/HBASE-11178) | Remove deprecation annotations from mapred namespace |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11088](https://issues.apache.org/jira/browse/HBASE-11088) | Support Visibility Expression Deletes in Shell |  Blocker | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11072](https://issues.apache.org/jira/browse/HBASE-11072) | Abstract WAL splitting from ZK |  Major | Consensus, Zookeeper | Mikhail Antonov | Sergey Soldatov |
| [HBASE-11059](https://issues.apache.org/jira/browse/HBASE-11059) | ZK-less region assignment |  Major | master, Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10841](https://issues.apache.org/jira/browse/HBASE-10841) | Scan,Get,Put,Delete,etc setters should consistently return this |  Minor | Client, Usability | Nick Dimiduk | Enis Soztutar |
| [HBASE-10800](https://issues.apache.org/jira/browse/HBASE-10800) | Use CellComparator instead of KVComparator |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-10674](https://issues.apache.org/jira/browse/HBASE-10674) | HBCK should be updated to do replica related checks |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-10671](https://issues.apache.org/jira/browse/HBASE-10671) | Add missing InterfaceAudience annotations for classes in hbase-common and hbase-client modules |  Major | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-8541](https://issues.apache.org/jira/browse/HBASE-8541) | implement flush-into-stripes in stripe compactions |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8410](https://issues.apache.org/jira/browse/HBASE-8410) | Basic quota support for namespaces |  Major | . | Francis Liu | Vandana Ayyalasomayajula |
| [HBASE-8139](https://issues.apache.org/jira/browse/HBASE-8139) | Allow job names to be overridden |  Major | mapreduce, Usability | Nick Dimiduk | Ashish Singhi |
| [HBASE-7847](https://issues.apache.org/jira/browse/HBASE-7847) | Use zookeeper multi to clear znodes |  Major | . | Ted Yu | Rakesh R |
| [HBASE-7767](https://issues.apache.org/jira/browse/HBASE-7767) | Get rid of ZKTable, and table enable/disable state in ZK |  Major | Zookeeper | Enis Soztutar | Andrey Stepachev |
| [HBASE-4625](https://issues.apache.org/jira/browse/HBASE-4625) | Convert @deprecated HBaseTestCase tests  JUnit4 style tests |  Minor | . | Jonathan Hsieh | Ashish Singhi |
| [HBASE-4624](https://issues.apache.org/jira/browse/HBASE-4624) | Remove and convert @deprecated RemoteExceptionHandler.decodeRemoteException calls |  Major | . | Jonathan Hsieh | Talat UYARER |
| [HBASE-2251](https://issues.apache.org/jira/browse/HBASE-2251) | PE defaults to 1k rows - uncommon use case, and easy to hit benchmarks |  Major | Performance | ryan rawson | stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13747](https://issues.apache.org/jira/browse/HBASE-13747) | Promote Java 8 to "yes" in support matrix |  Critical | . | Sean Busbey | Sean Busbey |
| [HBASE-12859](https://issues.apache.org/jira/browse/HBASE-12859) | New master API to track major compaction completion |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10909](https://issues.apache.org/jira/browse/HBASE-10909) | Abstract out ZooKeeper usage in HBase - phase 1 |  Major | Consensus, Zookeeper | Mikhail Antonov | Mikhail Antonov |
| [HBASE-13964](https://issues.apache.org/jira/browse/HBASE-13964) | Skip region normalization for tables under namespace quota |  Major | Balancer, Usability | Mikhail Antonov | Ted Yu |
| [HBASE-13956](https://issues.apache.org/jira/browse/HBASE-13956) | Add myself as 1.1 release manager |  Trivial | site | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13948](https://issues.apache.org/jira/browse/HBASE-13948) | Expand hadoop2 versions built on the pre-commit |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13929](https://issues.apache.org/jira/browse/HBASE-13929) | make\_rc.sh publishes empty shaded artifacts |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13915](https://issues.apache.org/jira/browse/HBASE-13915) | Remove EOL HBase versions from java and hadoop prereq tables |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-13869](https://issues.apache.org/jira/browse/HBASE-13869) | Fix typo in HBase book |  Trivial | documentation | Vladimir Rodionov | Gabor Liptak |
| [HBASE-13799](https://issues.apache.org/jira/browse/HBASE-13799) | javadoc how Scan gets polluted when used; if you set attributes or ask for scan metrics |  Minor | documentation | stack | stack |
| [HBASE-13726](https://issues.apache.org/jira/browse/HBASE-13726) | stop using Hadoop's IOUtils |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-13716](https://issues.apache.org/jira/browse/HBASE-13716) | Stop using Hadoop's FSConstants |  Blocker | . | Sean Busbey | Sean Busbey |
| [HBASE-13713](https://issues.apache.org/jira/browse/HBASE-13713) | See about dropping ClassLoaderBase#getClassLoadingLock |  Minor | . | Nick Dimiduk | Lars Francke |
| [HBASE-13666](https://issues.apache.org/jira/browse/HBASE-13666) | book.pdf is not renamed during site build |  Major | site | Nick Dimiduk | Gabor Liptak |
| [HBASE-13660](https://issues.apache.org/jira/browse/HBASE-13660) | Add link to cloud bigtable schema modeling guide into our refguide |  Major | documentation | stack | stack |
| [HBASE-13586](https://issues.apache.org/jira/browse/HBASE-13586) | Update book on Hadoop and Java supported versions for 1.1.x |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13582](https://issues.apache.org/jira/browse/HBASE-13582) | Update docs for HTrace |  Minor | documentation | Sean Busbey | Lars Francke |
| [HBASE-13554](https://issues.apache.org/jira/browse/HBASE-13554) | Update book clarifying API stability guarantees |  Major | documentation | Josh Elser | Josh Elser |
| [HBASE-13487](https://issues.apache.org/jira/browse/HBASE-13487) | Doc KEEP\_DELETED\_CELLS |  Major | documentation | stack | stack |
| [HBASE-13361](https://issues.apache.org/jira/browse/HBASE-13361) | Remove or undeprecate {get\|set}ScannerCaching in HTable |  Minor | Client | Lars Francke | Lars Francke |
| [HBASE-13310](https://issues.apache.org/jira/browse/HBASE-13310) | Fix high priority findbugs warnings |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-13257](https://issues.apache.org/jira/browse/HBASE-13257) | Show coverage report on jenkins |  Minor | . | Duo Zhang | Duo Zhang |
| [HBASE-13237](https://issues.apache.org/jira/browse/HBASE-13237) | Improve trademark marks on the hbase.apache.org homepage |  Minor | documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-13234](https://issues.apache.org/jira/browse/HBASE-13234) | Improve the obviousness of the download link on hbase.apache.org |  Minor | documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-13233](https://issues.apache.org/jira/browse/HBASE-13233) | add hbase-11339 branch to the patch testing script |  Minor | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13187](https://issues.apache.org/jira/browse/HBASE-13187) | Add ITBLL that exercises per CF flush |  Critical | integration tests | stack | Duo Zhang |
| [HBASE-13079](https://issues.apache.org/jira/browse/HBASE-13079) | Add an admonition to Scans example that the results scanner should be closed |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12995](https://issues.apache.org/jira/browse/HBASE-12995) | Document that HConnection#getTable methods do not check table existence since 0.98.1 |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12834](https://issues.apache.org/jira/browse/HBASE-12834) | Promote ScanType to LimitedPrivate |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12788](https://issues.apache.org/jira/browse/HBASE-12788) | Promote Abortable to LimitedPrivate |  Major | . | Andrew Purtell | Enis Soztutar |
| [HBASE-12785](https://issues.apache.org/jira/browse/HBASE-12785) | Use FutureTask to timeout the attempt to get the lock for hbck |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12783](https://issues.apache.org/jira/browse/HBASE-12783) | Create efficient RegionLocator implementation |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12724](https://issues.apache.org/jira/browse/HBASE-12724) | Upgrade the interface audience of RegionScanner from Private to LimitedPrivate |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12701](https://issues.apache.org/jira/browse/HBASE-12701) | Document how to set the split policy on a given table |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12624](https://issues.apache.org/jira/browse/HBASE-12624) | Remove rename\_snapshot.rb from code as there is no equivalent renameSnapshot api in Admin class |  Minor | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12623](https://issues.apache.org/jira/browse/HBASE-12623) | Remove pre-0.96 to 0.96 upgrade code |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-12589](https://issues.apache.org/jira/browse/HBASE-12589) | Forward-port fix for TestFromClientSideWithCoprocessor.testMaxKeyValueSize |  Major | test | stack | stack |
| [HBASE-12516](https://issues.apache.org/jira/browse/HBASE-12516) | Clean up master so QA Bot is in known good state |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-12515](https://issues.apache.org/jira/browse/HBASE-12515) | update test-patch to use git |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-12493](https://issues.apache.org/jira/browse/HBASE-12493) | User class should provide a way to re-use existing token |  Major | . | Brock Noland | Gary Helmling |
| [HBASE-12466](https://issues.apache.org/jira/browse/HBASE-12466) | Document visibility scan label generator usage and behavior |  Major | documentation, security | Jerry He | Misty Stanley-Jones |
| [HBASE-12456](https://issues.apache.org/jira/browse/HBASE-12456) | Update surefire from 2.18-SNAPSHOT to 2.18 |  Major | test | stack | stack |
| [HBASE-12438](https://issues.apache.org/jira/browse/HBASE-12438) | Add  -Dsurefire.rerunFailingTestsCount=2 to patch build runs so flakies get rerun |  Major | test | stack | stack |
| [HBASE-12388](https://issues.apache.org/jira/browse/HBASE-12388) | Document that WALObservers don't get empty edits. |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-12381](https://issues.apache.org/jira/browse/HBASE-12381) | Add maven enforcer rules for build assumptions |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-12362](https://issues.apache.org/jira/browse/HBASE-12362) | Interim documentation of important master and regionserver metrics |  Major | documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-12344](https://issues.apache.org/jira/browse/HBASE-12344) | Split up TestAdmin |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12250](https://issues.apache.org/jira/browse/HBASE-12250) | Adding an endpoint for updating the regionserver config |  Minor | regionserver | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12239](https://issues.apache.org/jira/browse/HBASE-12239) | Document hedged reads |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12180](https://issues.apache.org/jira/browse/HBASE-12180) | Fix and reenable TestRegionReplicaReplicationEndpoint |  Major | test | stack | Enis Soztutar |
| [HBASE-12168](https://issues.apache.org/jira/browse/HBASE-12168) | Document Rest gateway SPNEGO-based authentication for client |  Major | documentation, REST, security | Jerry He | Jerry He |
| [HBASE-11981](https://issues.apache.org/jira/browse/HBASE-11981) | Document how to find the units of measure for a given HBase metric |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11961](https://issues.apache.org/jira/browse/HBASE-11961) | Document region state transitions |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11960](https://issues.apache.org/jira/browse/HBASE-11960) | Provide a sample to show how to use Thrift client authentication |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11858](https://issues.apache.org/jira/browse/HBASE-11858) | Audit regionserver classes that are missing InterfaceAudience |  Minor | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-11849](https://issues.apache.org/jira/browse/HBASE-11849) | Clean up orphaned private audience classes |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-11800](https://issues.apache.org/jira/browse/HBASE-11800) | Coprocessor service methods in HTableInterface should be annotated public |  Major | Client | Gary Helmling | Gary Helmling |
| [HBASE-11791](https://issues.apache.org/jira/browse/HBASE-11791) | Update docs on visibility tags and ACLs, transparent encryption, secure bulk upload |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11762](https://issues.apache.org/jira/browse/HBASE-11762) | Record the class name of Codec in WAL header |  Major | wal | Ted Yu | Ted Yu |
| [HBASE-11761](https://issues.apache.org/jira/browse/HBASE-11761) | Add a FAQ item for updating a maven-managed application from 0.94 -\> 0.96+ |  Major | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-11735](https://issues.apache.org/jira/browse/HBASE-11735) | Document Configurable Bucket Sizes in bucketCache |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11730](https://issues.apache.org/jira/browse/HBASE-11730) | Document release managers for non-deprecated branches |  Major | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-11729](https://issues.apache.org/jira/browse/HBASE-11729) | Document HFile v3 |  Trivial | documentation, HFile | Sean Busbey | Sean Busbey |
| [HBASE-11723](https://issues.apache.org/jira/browse/HBASE-11723) | Document all options of bin/hbase command |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11692](https://issues.apache.org/jira/browse/HBASE-11692) | Document how and why to do a manual region split |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11682](https://issues.apache.org/jira/browse/HBASE-11682) | Explain hotspotting |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11677](https://issues.apache.org/jira/browse/HBASE-11677) | Make Logger instance modifiers consistent |  Minor | . | Sean Busbey | Usha Kuchibhotla |
| [HBASE-11670](https://issues.apache.org/jira/browse/HBASE-11670) | Build PDF of Ref Guide |  Minor | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11666](https://issues.apache.org/jira/browse/HBASE-11666) | Enforce JDK7 javac for builds on branch-1 and master |  Minor | build, documentation | Sean Busbey | Sean Busbey |
| [HBASE-11621](https://issues.apache.org/jira/browse/HBASE-11621) | Make MiniDFSCluster run faster |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11619](https://issues.apache.org/jira/browse/HBASE-11619) | Remove unused test class from TestHLogSplit |  Trivial | wal | Sean Busbey | Mikhail Antonov |
| [HBASE-11606](https://issues.apache.org/jira/browse/HBASE-11606) | Enable ZK-less region assignment by default |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11600](https://issues.apache.org/jira/browse/HBASE-11600) | DataInputputStream and DoubleOutputStream are no longer being used |  Trivial | io | Shengzhe Yao | Shengzhe Yao |
| [HBASE-11459](https://issues.apache.org/jira/browse/HBASE-11459) | Add more doc on compression codecs, how to hook up native lib, lz4, etc. |  Minor | documentation | stack | stack |
| [HBASE-11317](https://issues.apache.org/jira/browse/HBASE-11317) | Expand unit testing to cover Mockito and MRUnit and give more examples |  Trivial | documentation | Mike Drob | Misty Stanley-Jones |
| [HBASE-10870](https://issues.apache.org/jira/browse/HBASE-10870) | Deprecate and replace HCD methods that have a 'should' prefix with a 'get' instead |  Major | . | stack | Ashish Singhi |
| [HBASE-10398](https://issues.apache.org/jira/browse/HBASE-10398) | HBase book updates for Replication after HBASE-10322 |  Major | documentation | Anoop Sam John | Misty Stanley-Jones |
| [HBASE-10200](https://issues.apache.org/jira/browse/HBASE-10200) | Better error message when HttpServer fails to start due to java.net.BindException |  Minor | . | Ted Yu | Kiran Kumar M R |
| [HBASE-9875](https://issues.apache.org/jira/browse/HBASE-9875) | NamespaceJanitor chore is not used |  Major | . | Ted Yu | Mikhail Antonov |
| [HBASE-9004](https://issues.apache.org/jira/browse/HBASE-9004) | Fix Documentation around Minor compaction and ttl |  Major | documentation | Elliott Clark | Masatake Iwasaki |
| [HBASE-7126](https://issues.apache.org/jira/browse/HBASE-7126) | Update website with info on how to report security bugs |  Critical | documentation | Eli Collins | Misty Stanley-Jones |
| [HBASE-4920](https://issues.apache.org/jira/browse/HBASE-4920) | We need a mascot, a totem |  Major | . | stack |  |
| [HBASE-4593](https://issues.apache.org/jira/browse/HBASE-4593) | Design and document the official procedure for posting patches, commits, commit messages, etc. to smooth process and make integration with tools easier |  Major | documentation | Jonathan Gray | Misty Stanley-Jones |


