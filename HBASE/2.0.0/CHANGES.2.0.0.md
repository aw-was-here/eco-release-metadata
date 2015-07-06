
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
| [HBASE-13063](https://issues.apache.org/jira/browse/HBASE-13063) | Allow to turn off memstore replication for region replicas |  Minor | regionserver, Replication | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13057](https://issues.apache.org/jira/browse/HBASE-13057) | Provide client utility to easily enable and disable table replication |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-12869](https://issues.apache.org/jira/browse/HBASE-12869) | Add a REST API implementation of the ClusterManager interface |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-12709](https://issues.apache.org/jira/browse/HBASE-12709) | [mvn] Add unit test excludes command line flag to the build. |  Major | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12496](https://issues.apache.org/jira/browse/HBASE-12496) | A blockedRequestsCount metric |  Minor | metrics | Yi Deng | Yi Deng |
| [HBASE-12286](https://issues.apache.org/jira/browse/HBASE-12286) | [shell] Add server/cluster online load of configuration changes |  Major | shell | stack | Manukranth Kolloju |
| [HBASE-12268](https://issues.apache.org/jira/browse/HBASE-12268) | Add support for Scan.setRowPrefixFilter to shell |  Major | shell | Niels Basjes | Niels Basjes |
| [HBASE-12133](https://issues.apache.org/jira/browse/HBASE-12133) | Add FastLongHistogram for metric computation |  Minor | metrics | Yi Deng | Yi Deng |
| [HBASE-11909](https://issues.apache.org/jira/browse/HBASE-11909) | Region count listed by HMaster UI and hbck are different |  Minor | documentation | Gautam Gopalakrishnan | Misty Stanley-Jones |
| [HBASE-11724](https://issues.apache.org/jira/browse/HBASE-11724) | Add to RWQueueRpcExecutor the ability to split get and scan handlers |  Minor | IPC/RPC | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9531](https://issues.apache.org/jira/browse/HBASE-9531) | a command line (hbase shell) interface to retreive the replication metrics and show replication lag |  Major | Replication | Demai Ni | Ashish Singhi |
| [HBASE-5980](https://issues.apache.org/jira/browse/HBASE-5980) | Scanner responses from RS should include metrics on rows/KVs filtered |  Minor | Client, metrics, Operability, regionserver | Todd Lipcon | Jonathan Lawlor |
| [HBASE-5238](https://issues.apache.org/jira/browse/HBASE-5238) | Add a log4j category for all edits to META/ROOT |  Minor | regionserver | Todd Lipcon | Andrey Stepachev |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14015](https://issues.apache.org/jira/browse/HBASE-14015) | Allow setting a richer state value when toString a pv2 |  Minor | proc-v2 | stack | stack |
| [HBASE-14002](https://issues.apache.org/jira/browse/HBASE-14002) | Add --noReplicationSetup option to IntegrationTestReplication |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-13917](https://issues.apache.org/jira/browse/HBASE-13917) | Remove string comparison to identify request priority |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13894](https://issues.apache.org/jira/browse/HBASE-13894) | Avoid visitor alloc each call of ByteBufferArray get/putMultiple() |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13876](https://issues.apache.org/jira/browse/HBASE-13876) | Improving performance of HeapMemoryManager |  Minor | hbase, regionserver | Abhilash | Abhilash |
| [HBASE-13848](https://issues.apache.org/jira/browse/HBASE-13848) | Access InfoServer SSL passwords through Credential Provder API |  Major | security | Sean Busbey | Sean Busbey |
| [HBASE-13846](https://issues.apache.org/jira/browse/HBASE-13846) | Run MiniCluster on top of other MiniDfsCluster |  Minor | test | Jesse Yates | Jesse Yates |
| [HBASE-13829](https://issues.apache.org/jira/browse/HBASE-13829) | Add more ThrottleType |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-13761](https://issues.apache.org/jira/browse/HBASE-13761) | Optimize FuzzyRowFilter |  Minor | Filters | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-13745](https://issues.apache.org/jira/browse/HBASE-13745) | Say why a flush was requested in log message |  Minor | Operability | stack | stack |
| [HBASE-13718](https://issues.apache.org/jira/browse/HBASE-13718) | Add a pretty printed table description to the table detail page of HBase's master |  Minor | hbase | Joao Girao | Joao Girao |
| [HBASE-13671](https://issues.apache.org/jira/browse/HBASE-13671) | More classes to add to the invoking repository of org.apache.hadoop.hbase.mapreduce.driver |  Major | mapreduce | li xiang | li xiang |
| [HBASE-13578](https://issues.apache.org/jira/browse/HBASE-13578) | Remove Arrays.asList().subList() from FSHLog.offer() |  Trivial | wal | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13456](https://issues.apache.org/jira/browse/HBASE-13456) | Improve HFilePrettyPrinter first hbase:meta region processing |  Minor | util | Samir Ahmic | Samir Ahmic |
| [HBASE-13419](https://issues.apache.org/jira/browse/HBASE-13419) | Thrift gateway should propagate text from exception causes. |  Major | Thrift | Michael Muller | Michael Muller |
| [HBASE-13381](https://issues.apache.org/jira/browse/HBASE-13381) | Expand TestSizeFailures to include small scans |  Minor | test | Josh Elser | Josh Elser |
| [HBASE-13375](https://issues.apache.org/jira/browse/HBASE-13375) | Provide HBase superuser higher priority over other users in the RPC handling |  Major | rpc | Devaraj Das | Mikhail Antonov |
| [HBASE-13351](https://issues.apache.org/jira/browse/HBASE-13351) | Annotate internal MasterRpcServices methods with admin priority |  Major | master | Josh Elser | Josh Elser |
| [HBASE-13350](https://issues.apache.org/jira/browse/HBASE-13350) | Add a debug-warn if we fail HTD checks even if table.sanity.checks is false |  Trivial | master, Operability | Matteo Bertozzi | Matt Warhaftig |
| [HBASE-13348](https://issues.apache.org/jira/browse/HBASE-13348) | Separate the thread number configs for meta server and server operations |  Minor | master | Liu Shaohui | Liu Shaohui |
| [HBASE-13344](https://issues.apache.org/jira/browse/HBASE-13344) | Add enforcer rule that matches our JDK support statement |  Minor | build | Sean Busbey | Matt Warhaftig |
| [HBASE-13334](https://issues.apache.org/jira/browse/HBASE-13334) | FindBugs should create precise report for new bugs introduced |  Minor | build | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13316](https://issues.apache.org/jira/browse/HBASE-13316) | Reduce the downtime on planned moves of regions |  Minor | Balancer | Sameet Agarwal | Sameet Agarwal |
| [HBASE-13286](https://issues.apache.org/jira/browse/HBASE-13286) | Minimum timeout for a rpc call could be 1 ms instead of 2 seconds |  Minor | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-13256](https://issues.apache.org/jira/browse/HBASE-13256) | HBaseConfiguration#checkDefaultsVersion(Configuration) has spelling error |  Trivial | Client | Josh Elser | Josh Elser |
| [HBASE-13255](https://issues.apache.org/jira/browse/HBASE-13255) | Bad grammar in RegionServer status page |  Trivial | monitoring | Josh Elser | Josh Elser |
| [HBASE-13251](https://issues.apache.org/jira/browse/HBASE-13251) | Correct 'HBase, MapReduce, and the CLASSPATH' section in HBase Ref Guide |  Major | documentation | Jerry He | li xiang |
| [HBASE-13247](https://issues.apache.org/jira/browse/HBASE-13247) | Change BufferedMutatorExample to use addColumn() since add() is deprecated |  Trivial | Client | Lars George | Nick Dimiduk |
| [HBASE-13241](https://issues.apache.org/jira/browse/HBASE-13241) | Add tests for group level grants |  Critical | security, test | Sean Busbey | Ashish Singhi |
| [HBASE-13240](https://issues.apache.org/jira/browse/HBASE-13240) | add an exemption to test-patch for build-only changes. |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-13236](https://issues.apache.org/jira/browse/HBASE-13236) | Clean up m2e-related warnings/errors from poms |  Minor | build | Josh Elser | Josh Elser |
| [HBASE-13223](https://issues.apache.org/jira/browse/HBASE-13223) | Add testMoveMeta to IntegrationTestMTTR |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-13222](https://issues.apache.org/jira/browse/HBASE-13222) | Provide means of non-destructive balancer inspection |  Minor | Balancer | Nick Dimiduk | Josh Elser |
| [HBASE-13216](https://issues.apache.org/jira/browse/HBASE-13216) | Add version info in RPC connection header |  Minor | Client, rpc | Liu Shaohui | Liu Shaohui |
| [HBASE-13185](https://issues.apache.org/jira/browse/HBASE-13185) | Document hbase.regionserver.thrift.framed.max\_frame\_size\_in\_mb more clearly |  Trivial | documentation | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-13183](https://issues.apache.org/jira/browse/HBASE-13183) | Make ZK tickTime configurable in standalone HBase |  Minor | master | Alex Araujo | Alex Araujo |
| [HBASE-13142](https://issues.apache.org/jira/browse/HBASE-13142) | [PERF] Reuse the IPCUtil#buildCellBlock buffer |  Major | Performance | stack | Liang Xie |
| [HBASE-13138](https://issues.apache.org/jira/browse/HBASE-13138) | Clean up TestMasterObserver (debug, trying to figure why fails) |  Major | test | stack | stack |
| [HBASE-13132](https://issues.apache.org/jira/browse/HBASE-13132) | Improve RemoveColumn action debug message |  Trivial | integration tests | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13128](https://issues.apache.org/jira/browse/HBASE-13128) | Make HBCK's lock file retry creation and deletion |  Minor | hbck | Victoria | Victoria |
| [HBASE-13122](https://issues.apache.org/jira/browse/HBASE-13122) | Improve efficiency for return codes of some filters |  Major | Filters | Shuaifeng Zhou | Shuaifeng Zhou |
| [HBASE-13118](https://issues.apache.org/jira/browse/HBASE-13118) | [PE] Add being able to write many columns |  Major | test | stack | stack |
| [HBASE-13103](https://issues.apache.org/jira/browse/HBASE-13103) | [ergonomics] add region size balancing as a feature of master |  Major | Balancer, Usability | Nick Dimiduk | Mikhail Antonov |
| [HBASE-13100](https://issues.apache.org/jira/browse/HBASE-13100) | Shell command to retrieve table splits |  Minor | shell | Sean Busbey | Ashish Singhi |
| [HBASE-13086](https://issues.apache.org/jira/browse/HBASE-13086) | Show ZK root node on Master WebUI |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13059](https://issues.apache.org/jira/browse/HBASE-13059) | Set executable bit for scripts in dev-support |  Trivial | scripts | Dima Spivak | Dima Spivak |
| [HBASE-12997](https://issues.apache.org/jira/browse/HBASE-12997) | FSHLog should print pipeline on low replication |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-12990](https://issues.apache.org/jira/browse/HBASE-12990) | MetaScanner should be replaced by MetaTableAccessor |  Major | Client | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12987](https://issues.apache.org/jira/browse/HBASE-12987) | HBCK should print status while scanning over many regions |  Major | hbck, Usability | Nick Dimiduk | Josh Elser |
| [HBASE-12957](https://issues.apache.org/jira/browse/HBASE-12957) | region\_mover#isSuccessfulScan may be extremely slow on region with lots of expired data |  Minor | scripts | hongyu bi | hongyu bi |
| [HBASE-12896](https://issues.apache.org/jira/browse/HBASE-12896) | checkstyle report diff tool |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12893](https://issues.apache.org/jira/browse/HBASE-12893) | IntegrationTestBigLinkedListWithVisibility should use buffered writes |  Minor | integration tests | Nick Dimiduk | Jingcheng Du |
| [HBASE-12891](https://issues.apache.org/jira/browse/HBASE-12891) | Parallel execution for Hbck checkRegionConsistency |  Major | hbck | churro morales | Dave Latham |
| [HBASE-12887](https://issues.apache.org/jira/browse/HBASE-12887) | Cleanup many checkstyle errors in o.a.h.h.client |  Minor | build, Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12825](https://issues.apache.org/jira/browse/HBASE-12825) | CallRunner exception messages should include destination host:port |  Minor | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12808](https://issues.apache.org/jira/browse/HBASE-12808) | Use Java API Compliance Checker for binary/source compatibility |  Major | test | Dima Spivak | Dima Spivak |
| [HBASE-12768](https://issues.apache.org/jira/browse/HBASE-12768) | Support enable cache\_data\_on\_write in Shell while creating table |  Major | shell | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12762](https://issues.apache.org/jira/browse/HBASE-12762) | Region with no hfiles will have the highest locality cost in LocalityCostFunction |  Minor | Balancer | cuijianwei | cuijianwei |
| [HBASE-12745](https://issues.apache.org/jira/browse/HBASE-12745) | Visibility Labels:  support visibility labels for user groups. |  Major | security | Jerry He | Jerry He |
| [HBASE-12736](https://issues.apache.org/jira/browse/HBASE-12736) | Let MetaScanner recycle a given Connection |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12719](https://issues.apache.org/jira/browse/HBASE-12719) | Add test WAL provider to quantify FSHLog overhead in the absence of HDFS. |  Minor | test, wal | Sean Busbey | Sean Busbey |
| [HBASE-12684](https://issues.apache.org/jira/browse/HBASE-12684) | Add new AsyncRpcClient |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12680](https://issues.apache.org/jira/browse/HBASE-12680) | Refactor base ClusterManager in HBase to not have the notion of sending a signal. |  Minor | integration tests | Yi Deng | Yi Deng |
| [HBASE-12676](https://issues.apache.org/jira/browse/HBASE-12676) | Fix the misleading ASCII art in IntegrationTestBigLinkedList |  Trivial | documentation, integration tests | Yi Deng | Yi Deng |
| [HBASE-12668](https://issues.apache.org/jira/browse/HBASE-12668) | Adapt PayloadCarryingRpcController so it can also be used in async way |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12659](https://issues.apache.org/jira/browse/HBASE-12659) | Replace the method calls to grant and revoke in shell scripts with AccessControlClient |  Minor | security, shell | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12653](https://issues.apache.org/jira/browse/HBASE-12653) | Move TestRegionServerOnlineConfigChange & TestConfigurationManager to Junit4 tests |  Minor | test | Ashish Singhi | Ashish Singhi |
| [HBASE-12641](https://issues.apache.org/jira/browse/HBASE-12641) | Grant all permissions of hbase zookeeper node to hbase superuser in a secure cluster |  Minor | Zookeeper | Liu Shaohui | Liu Shaohui |
| [HBASE-12640](https://issues.apache.org/jira/browse/HBASE-12640) | Add Thrift-over-HTTPS and doAs support for Thrift Server |  Major | Thrift | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12627](https://issues.apache.org/jira/browse/HBASE-12627) | Add back snapshot batching facility from HBASE-11360 dropped by HBASE-11742 |  Major | master, scaling | stack | churro morales |
| [HBASE-12620](https://issues.apache.org/jira/browse/HBASE-12620) | Add HBASE-11639 related items to Ref Guide |  Major | documentation | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12608](https://issues.apache.org/jira/browse/HBASE-12608) | region\_mover.rb does not log moving region count correctly when loading regions |  Minor | shell | cuijianwei | cuijianwei |
| [HBASE-12601](https://issues.apache.org/jira/browse/HBASE-12601) | Explain how to grant/revoke permission to a group/namespace in grant/revoke command usage |  Minor | documentation, security, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12597](https://issues.apache.org/jira/browse/HBASE-12597) | Add RpcClient interface and enable changing of RpcClient implementation |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12590](https://issues.apache.org/jira/browse/HBASE-12590) | A solution for data skew in HBase-Mapreduce Job |  Major | mapreduce | Weichen Ye | Weichen Ye |
| [HBASE-12569](https://issues.apache.org/jira/browse/HBASE-12569) | Control MaxDirectMemorySize in the same manner as heap size |  Minor | scripts | Patrick White | Patrick White |
| [HBASE-12529](https://issues.apache.org/jira/browse/HBASE-12529) | Use ThreadLocalRandom for RandomQueueBalancer |  Minor | IPC/RPC | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12455](https://issues.apache.org/jira/browse/HBASE-12455) | Add 'description' to bean and attribute output when you do /jmx?description=true |  Major | metrics | stack | stack |
| [HBASE-12434](https://issues.apache.org/jira/browse/HBASE-12434) | Add a command to compact all the regions in a regionserver |  Minor | shell | Liu Shaohui | Liu Shaohui |
| [HBASE-12432](https://issues.apache.org/jira/browse/HBASE-12432) | RpcRetryingCaller should log after fixed number of retries like AsyncProcess |  Minor | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12429](https://issues.apache.org/jira/browse/HBASE-12429) | Add port to ClusterManager's actions. |  Major | integration tests | Elliott Clark | Elliott Clark |
| [HBASE-12416](https://issues.apache.org/jira/browse/HBASE-12416) | RegionServerCallable should report what host it was communicating with |  Trivial | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12411](https://issues.apache.org/jira/browse/HBASE-12411) | Optionally enable p-reads and private readers for compactions |  Major | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12405](https://issues.apache.org/jira/browse/HBASE-12405) | WAL accounting by Store |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-12389](https://issues.apache.org/jira/browse/HBASE-12389) | Reduce the number of versions configured for the ACL table |  Minor | security | Andrew Purtell | Andrew Purtell |
| [HBASE-12272](https://issues.apache.org/jira/browse/HBASE-12272) | Generate Thrift code through maven |  Major | build, documentation, Thrift | Niels Basjes | Niels Basjes |
| [HBASE-12271](https://issues.apache.org/jira/browse/HBASE-12271) | Add counters for files skipped during snapshot export |  Minor | snapshots | Patrick White | Patrick White |
| [HBASE-12264](https://issues.apache.org/jira/browse/HBASE-12264) | ImportTsv should fail fast if output is not specified and table does not exist |  Minor | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12251](https://issues.apache.org/jira/browse/HBASE-12251) | [book] Hadoop compat matrix 0.94 section needs cleaned up |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12249](https://issues.apache.org/jira/browse/HBASE-12249) | Script to help you adhere to the patch-naming guidelines |  Minor | documentation, scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12243](https://issues.apache.org/jira/browse/HBASE-12243) | HBaseFsck should auto set ignorePreCheckPermission to true if no fix option is set. |  Minor | hbck | Yi Deng | Yi Deng |
| [HBASE-12223](https://issues.apache.org/jira/browse/HBASE-12223) | MultiTableInputFormatBase.getSplits is too slow |  Minor | Client | shanwen | YuanBo Peng |
| [HBASE-12207](https://issues.apache.org/jira/browse/HBASE-12207) | A script to help keep your Git repo fresh |  Major | documentation, scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12195](https://issues.apache.org/jira/browse/HBASE-12195) | Fix dev-support/findHangingTests |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12121](https://issues.apache.org/jira/browse/HBASE-12121) | maven release plugin does not allow for customized goals |  Minor | build | Enoch Hsu | Enoch Hsu |
| [HBASE-12118](https://issues.apache.org/jira/browse/HBASE-12118) | Explain how to grant permission to a namespace in grant command usage |  Minor | documentation, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12090](https://issues.apache.org/jira/browse/HBASE-12090) | Bytes: more Unsafe, more Faster |  Major | Performance | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-12049](https://issues.apache.org/jira/browse/HBASE-12049) | Help for alter command is a bit confusing |  Trivial | documentation, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12035](https://issues.apache.org/jira/browse/HBASE-12035) | Keep table state in META |  Critical | Client, master | Enis Soztutar | Andrey Stepachev |
| [HBASE-12032](https://issues.apache.org/jira/browse/HBASE-12032) | Script to stop regionservers via RPC |  Major | scripts, util | Patrick White | Patrick White |
| [HBASE-12021](https://issues.apache.org/jira/browse/HBASE-12021) | Hbase shell does not respect the HBASE\_OPTS set by the user in console |  Minor | documentation, Operability, shell | nijel | Ashish Singhi |
| [HBASE-12013](https://issues.apache.org/jira/browse/HBASE-12013) | Make region\_mover.rb support multiple regionservers per host |  Major | scripts, util | Patrick White | Patrick White |
| [HBASE-12003](https://issues.apache.org/jira/browse/HBASE-12003) | Fix SecureBulkLoadEndpoint class javadoc formatting |  Trivial | documentation, security | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11948](https://issues.apache.org/jira/browse/HBASE-11948) | graceful\_stop.sh should use hbase-daemon.sh when executed on the decomissioned node |  Minor | scripts | Sebastien Barrier | Sebastien Barrier |
| [HBASE-11939](https://issues.apache.org/jira/browse/HBASE-11939) | Document compressed blockcache |  Major | documentation | Nick Dimiduk | Misty Stanley-Jones |
| [HBASE-11927](https://issues.apache.org/jira/browse/HBASE-11927) | Use Native Hadoop Library for HFile checksum (And flip default from CRC32 to CRC32C) |  Major | Performance | stack | Apekshit Sharma |
| [HBASE-11897](https://issues.apache.org/jira/browse/HBASE-11897) | Add append and remove peer table-cfs cmds for replication |  Minor | Operability | Liu Shaohui | Liu Shaohui |
| [HBASE-11873](https://issues.apache.org/jira/browse/HBASE-11873) | Hbase Version CLI enhancement |  Minor | build | Guo Ruijing | Ashish Singhi |
| [HBASE-11870](https://issues.apache.org/jira/browse/HBASE-11870) | Optimization : Avoid copy of key and value for tags addition in AC and VC |  Major | Performance, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11847](https://issues.apache.org/jira/browse/HBASE-11847) | HFile tool should be able to print block headers |  Minor | HFile | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11846](https://issues.apache.org/jira/browse/HBASE-11846) | HStore#assertBulkLoadHFileOk should log if a full HFile verification will be performed during a bulkload |  Trivial | regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11845](https://issues.apache.org/jira/browse/HBASE-11845) | HFile tool should implement Tool, disable blockcache by default |  Minor | HFile | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11828](https://issues.apache.org/jira/browse/HBASE-11828) | callers of SeverName.valueOf should use equals and not == |  Minor | Client | Sean Busbey | Sean Busbey |
| [HBASE-11821](https://issues.apache.org/jira/browse/HBASE-11821) | [ImportTSV] Abstract labels tags creation into pluggable Interface |  Major | mapreduce, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11810](https://issues.apache.org/jira/browse/HBASE-11810) | Access SSL Passwords through Credential Provider API |  Major | security | Larry McCay | Larry McCay |
| [HBASE-11805](https://issues.apache.org/jira/browse/HBASE-11805) | KeyValue to Cell Convert in WALEdit APIs |  Major | wal | Anoop Sam John | Anoop Sam John |
| [HBASE-11796](https://issues.apache.org/jira/browse/HBASE-11796) | Add client support for atomic checkAndMutate |  Major | Client | Danny Purcell | Srikanth Srungarapu |
| [HBASE-11760](https://issues.apache.org/jira/browse/HBASE-11760) | Tighten up region state transition |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11749](https://issues.apache.org/jira/browse/HBASE-11749) | Better error logging when coprocessors loading has failed. |  Trivial | Coprocessors, Usability | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11748](https://issues.apache.org/jira/browse/HBASE-11748) | Cleanup and add pool usage tracing to Compression |  Trivial | io | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11731](https://issues.apache.org/jira/browse/HBASE-11731) | Add option to only run a subset of the shell tests |  Minor | build, shell | Sean Busbey | Sean Busbey |
| [HBASE-11706](https://issues.apache.org/jira/browse/HBASE-11706) | Set versions for VerifyReplication |  Minor | mapreduce | cuijianwei | cuijianwei |
| [HBASE-11701](https://issues.apache.org/jira/browse/HBASE-11701) | Start and end of memstore flush log should be on the same level |  Trivial | Usability | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11674](https://issues.apache.org/jira/browse/HBASE-11674) | LoadIncrementalHFiles should be more verbose after unrecoverable error |  Minor | mapreduce | Jan Lukavsky | Jan Lukavsky |
| [HBASE-11639](https://issues.apache.org/jira/browse/HBASE-11639) | [Visibility controller] Replicate the visibility of Cells as strings |  Major | Replication, security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
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
| [HBASE-11452](https://issues.apache.org/jira/browse/HBASE-11452) | add getUserPermission feature in AccessControlClient as client API |  Major | Client, security | Demai Ni | Demai Ni |
| [HBASE-11450](https://issues.apache.org/jira/browse/HBASE-11450) | Improve file size info in SnapshotInfo tool |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11438](https://issues.apache.org/jira/browse/HBASE-11438) | [Visibility Controller] Support UTF8 character as Visibility Labels |  Major | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11412](https://issues.apache.org/jira/browse/HBASE-11412) | Minimize a number of hbase-client transitive dependencies |  Minor | Client | Sergey Beryozkin | Sergey Beryozkin |
| [HBASE-11400](https://issues.apache.org/jira/browse/HBASE-11400) | Edit, consolidate, and update Compression and data encoding docs |  Minor | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11349](https://issues.apache.org/jira/browse/HBASE-11349) | [Thrift] support authentication/impersonation |  Major | security, Thrift | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11331](https://issues.apache.org/jira/browse/HBASE-11331) | [blockcache] lazy block decompression |  Major | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11240](https://issues.apache.org/jira/browse/HBASE-11240) | Print hdfs pipeline when hlog's sync is slow |  Major | Operability, wal | Liu Shaohui | Liu Shaohui |
| [HBASE-11144](https://issues.apache.org/jira/browse/HBASE-11144) | Filter to support scanning multiple row key ranges |  Major | Filters | Jiajia Li | Jiajia Li |
| [HBASE-11136](https://issues.apache.org/jira/browse/HBASE-11136) | Add permission check to roll WAL writer |  Minor | regionserver, security | Jerry He | Jerry He |
| [HBASE-10411](https://issues.apache.org/jira/browse/HBASE-10411) | [Book] Add a kerberos 'request is a replay (34)' issue at troubleshooting section |  Minor | documentation, security | takeshi.miao | takeshi.miao |
| [HBASE-10202](https://issues.apache.org/jira/browse/HBASE-10202) | Documentation is lacking information about rolling-restart.sh script. |  Major | documentation | Jean-Marc Spaggiari | Misty Stanley-Jones |
| [HBASE-10201](https://issues.apache.org/jira/browse/HBASE-10201) | Port 'Make flush decisions per column family' to trunk |  Major | wal | Ted Yu | Duo Zhang |
| [HBASE-10153](https://issues.apache.org/jira/browse/HBASE-10153) | improve VerifyReplication to compute BADROWS more accurately |  Major | Operability, Replication | cuijianwei | cuijianwei |
| [HBASE-10082](https://issues.apache.org/jira/browse/HBASE-10082) | Describe 'table' output is all on one line, could use better formatting |  Minor | shell | Maxime C Dumas | Srikanth Srungarapu |
| [HBASE-8361](https://issues.apache.org/jira/browse/HBASE-8361) | Bulk load and other utilities should not create tables for user |  Major | mapreduce | Nick Dimiduk | Ashish Singhi |
| [HBASE-8329](https://issues.apache.org/jira/browse/HBASE-8329) | Limit compaction speed |  Major | Compaction | binlijin | Duo Zhang |
| [HBASE-8298](https://issues.apache.org/jira/browse/HBASE-8298) | In shell, provide alias of 'desc' for 'describe' |  Trivial | shell | Hari Sekhon | Sean Busbey |
| [HBASE-7782](https://issues.apache.org/jira/browse/HBASE-7782) | HBaseTestingUtility.truncateTable() not acting like CLI |  Minor | test | Adrien Mogenet | Sean Busbey |
| [HBASE-6626](https://issues.apache.org/jira/browse/HBASE-6626) | Add a chapter on HDFS in the troubleshooting section of the HBase reference guide. |  Blocker | documentation | Nicolas Liochon | Misty Stanley-Jones |
| [HBASE-6290](https://issues.apache.org/jira/browse/HBASE-6290) | Add a function a mark a server as dead and start the recovery the process |  Minor | monitoring | Nicolas Liochon | Talat UYARER |
| [HBASE-5699](https://issues.apache.org/jira/browse/HBASE-5699) | Run with \> 1 WAL in HRegionServer |  Critical | Performance, wal | binlijin | Sean Busbey |
| [HBASE-4955](https://issues.apache.org/jira/browse/HBASE-4955) | Use the official versions of surefire & junit |  Critical | test | Nicolas Liochon | Alex Newman |
| [HBASE-3270](https://issues.apache.org/jira/browse/HBASE-3270) | When we create the .version file, we should create it in a tmp location and then move it into place |  Minor | master | stack | Andrew Purtell |
| [HBASE-2609](https://issues.apache.org/jira/browse/HBASE-2609) | Harmonize the Get and Delete operations |  Major | Client | Jeff Hammerbacher | stack |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14010](https://issues.apache.org/jira/browse/HBASE-14010) | TestRegionRebalancing.testRebalanceOnRegionServerNumberChange fails; cluster not balanced |  Major | test | stack | stack |
| [HBASE-13995](https://issues.apache.org/jira/browse/HBASE-13995) | ServerName is not fully case insensitive |  Major | Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13978](https://issues.apache.org/jira/browse/HBASE-13978) | Variable never assigned in SimpleTotalOrderPartitioner.getPartition() |  Major | mapreduce | Lars George | Bhupendra Kumar Jain |
| [HBASE-13974](https://issues.apache.org/jira/browse/HBASE-13974) | TestRateLimiter#testFixedIntervalResourceAvailability may fail |  Minor | test | Guanghao Zhang | Guanghao Zhang |
| [HBASE-13959](https://issues.apache.org/jira/browse/HBASE-13959) | Region splitting uses a single thread in most common cases |  Critical | regionserver | Hari Krishna Dara | Hari Krishna Dara |
| [HBASE-13958](https://issues.apache.org/jira/browse/HBASE-13958) | RESTApiClusterManager calls kill() instead of suspend() and resume() |  Minor | integration tests | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13938](https://issues.apache.org/jira/browse/HBASE-13938) | Deletes done during the region merge transaction may get eclipsed |  Major | master, regionserver | Devaraj Das | Enis Soztutar |
| [HBASE-13923](https://issues.apache.org/jira/browse/HBASE-13923) | Loaded region coprocessors are not reported in shell status command |  Major | regionserver, shell | Lars George | Ashish Singhi |
| [HBASE-13918](https://issues.apache.org/jira/browse/HBASE-13918) | Fix hbase:namespace description in webUI |  Trivial | hbase | Patrick White | Patrick White |
| [HBASE-13905](https://issues.apache.org/jira/browse/HBASE-13905) | TestRecoveredEdits.testReplayWorksThoughLotsOfFlushing failing consistently on branch-1.1 |  Critical | regionserver, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13893](https://issues.apache.org/jira/browse/HBASE-13893) | Replace HTable with Table in client tests |  Major | Client, test | Jurriaan Mous | Jurriaan Mous |
| [HBASE-13892](https://issues.apache.org/jira/browse/HBASE-13892) | Scanner with all results filtered out results in NPE |  Critical | Client | Josh Elser | Josh Elser |
| [HBASE-13885](https://issues.apache.org/jira/browse/HBASE-13885) | ZK watches leaks during snapshots |  Critical | snapshots | Abhishek Singh Chouhan | Lars Hofhansl |
| [HBASE-13878](https://issues.apache.org/jira/browse/HBASE-13878) | Set hbase.fs.tmp.dir config in HBaseTestingUtility.java for Phoenix UT to use |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13873](https://issues.apache.org/jira/browse/HBASE-13873) | LoadTestTool addAuthInfoToConf throws UnsupportedOperationException |  Major | integration tests | sunyerui | sunyerui |
| [HBASE-13863](https://issues.apache.org/jira/browse/HBASE-13863) | Multi-wal feature breaks reported number and size of HLogs |  Major | regionserver, UI | Elliott Clark | Abhilash |
| [HBASE-13861](https://issues.apache.org/jira/browse/HBASE-13861) | BucketCacheTmpl.jamon has wrong bucket free and used labels |  Major | regionserver, UI | Lars George | Matt Warhaftig |
| [HBASE-13847](https://issues.apache.org/jira/browse/HBASE-13847) | getWriteRequestCount function in HRegionServer uses int variable to return the count. |  Major | hbase, regionserver | Abhilash | Abhilash |
| [HBASE-13845](https://issues.apache.org/jira/browse/HBASE-13845) | Expire of one region server carrying meta can bring down the master |  Major | master | Jerry He | Jerry He |
| [HBASE-13843](https://issues.apache.org/jira/browse/HBASE-13843) | Fix internal constant text in ReplicationManager.java |  Trivial | master | Lars George | Gabor Liptak |
| [HBASE-13835](https://issues.apache.org/jira/browse/HBASE-13835) | KeyValueHeap.current might be in heap when exception happens in pollRealKV |  Major | Scanners | zhouyingchao | zhouyingchao |
| [HBASE-13834](https://issues.apache.org/jira/browse/HBASE-13834) | Evict count not properly passed to HeapMemoryTuner. |  Major | hbase, regionserver | Abhilash | Abhilash |
| [HBASE-13831](https://issues.apache.org/jira/browse/HBASE-13831) | TestHBaseFsck#testParallelHbck is flaky against hadoop 2.6+ |  Minor | hbck, test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13826](https://issues.apache.org/jira/browse/HBASE-13826) | Unable to create table when group acls are appropriately set. |  Major | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13824](https://issues.apache.org/jira/browse/HBASE-13824) | TestGenerateDelegationToken: Master fails to start in Windows environment |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13821](https://issues.apache.org/jira/browse/HBASE-13821) | WARN if hbase.bucketcache.percentage.in.combinedcache is set |  Minor | regionserver, Usability | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13813](https://issues.apache.org/jira/browse/HBASE-13813) | Fix Javadoc warnings in Procedure.java |  Minor | documentation | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13812](https://issues.apache.org/jira/browse/HBASE-13812) | Deleting of last Column Family of a table should not be allowed |  Major | master | Sophia Feng | Enis Soztutar |
| [HBASE-13811](https://issues.apache.org/jira/browse/HBASE-13811) | Splitting WALs, we are filtering out too many edits -\> DATALOSS |  Critical | wal | stack | stack |
| [HBASE-13809](https://issues.apache.org/jira/browse/HBASE-13809) | TestRowTooBig should use HDFS directory for its region directory |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13802](https://issues.apache.org/jira/browse/HBASE-13802) | Procedure V2: Master fails to come up due to rollback of create namespace table |  Major | master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13800](https://issues.apache.org/jira/browse/HBASE-13800) | TestStore#testDeleteExpiredStoreFiles should create unique data/log directory for each call |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13789](https://issues.apache.org/jira/browse/HBASE-13789) | ForeignException should not be sent to the client |  Minor | Client, master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13777](https://issues.apache.org/jira/browse/HBASE-13777) | Table fragmentation display triggers NPE on master status page |  Major | UI | Lars George | Lars George |
| [HBASE-13767](https://issues.apache.org/jira/browse/HBASE-13767) | Allow ZKAclReset to set and not just clear ZK ACLs |  Trivial | Operability, Zookeeper | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13746](https://issues.apache.org/jira/browse/HBASE-13746) | list\_replicated\_tables command is not listing table in hbase shell. |  Major | shell | Y. SREENIVASULU REDDY | Abhishek Kumar |
| [HBASE-13734](https://issues.apache.org/jira/browse/HBASE-13734) | Improper timestamp checking with VisibilityScanDeleteTracker |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-13733](https://issues.apache.org/jira/browse/HBASE-13733) | Failed MiniZooKeeperCluster startup did not shutdown ZK servers |  Major | Zookeeper | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13732](https://issues.apache.org/jira/browse/HBASE-13732) | TestHBaseFsck#testParallelWithRetriesHbck fails intermittently |  Minor | hbck, test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13731](https://issues.apache.org/jira/browse/HBASE-13731) | TestReplicationAdmin should clean up MiniZKCluster resource |  Trivial | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13729](https://issues.apache.org/jira/browse/HBASE-13729) | Old hbase.regionserver.global.memstore.upperLimit and lowerLimit properties are ignored if present |  Critical | regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13721](https://issues.apache.org/jira/browse/HBASE-13721) | Improve shell scan performances when using LIMIT |  Major | shell | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-13717](https://issues.apache.org/jira/browse/HBASE-13717) | TestBoundedRegionGroupingProvider#setMembershipDedups need to set HDFS diretory for WAL |  Minor | wal | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13704](https://issues.apache.org/jira/browse/HBASE-13704) | Hbase throws OutOfOrderScannerNextException when MultiRowRangeFilter is used |  Major | Client | Aleksandr Maksymenko | Aleksandr Maksymenko |
| [HBASE-13700](https://issues.apache.org/jira/browse/HBASE-13700) | Allow Thrift2 HSHA server to have configurable threads |  Major | Thrift | Elliott Clark | Elliott Clark |
| [HBASE-13699](https://issues.apache.org/jira/browse/HBASE-13699) | Expand information about HBase quotas |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13694](https://issues.apache.org/jira/browse/HBASE-13694) | CallQueueSize is incorrectly decremented until the response is sent |  Major | master, regionserver, rpc | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13663](https://issues.apache.org/jira/browse/HBASE-13663) | HMaster fails to restart 'HMaster: Failed to become active master' |  Major | hbase | Romil Choksi | Ted Yu |
| [HBASE-13653](https://issues.apache.org/jira/browse/HBASE-13653) | Uninitialized HRegionServer#walFactory may result in NullPointerException at region server startup​ |  Major | hbase | Romil Choksi | Ted Yu |
| [HBASE-13649](https://issues.apache.org/jira/browse/HBASE-13649) | CellComparator.compareTimestamps javadoc inconsistent and wrong |  Minor | documentation | Dave Latham | Dave Latham |
| [HBASE-13648](https://issues.apache.org/jira/browse/HBASE-13648) | test-patch.sh should ignore 'protobuf.generated' |  Minor | build | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13635](https://issues.apache.org/jira/browse/HBASE-13635) | Regions stuck in transition because master is incorrectly assumed dead |  Major | master, regionserver | Elliott Clark | Elliott Clark |
| [HBASE-13634](https://issues.apache.org/jira/browse/HBASE-13634) | Avoid unsafe reference equality checks to EMPTY byte[] |  Major | Compaction, Scanners | Dave Latham | Lars Francke |
| [HBASE-13633](https://issues.apache.org/jira/browse/HBASE-13633) | draining\_servers.rb broken with NoMethodError: undefined method 'getServerInfo' |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-13625](https://issues.apache.org/jira/browse/HBASE-13625) | Use HDFS for HFileOutputFormat2 partitioner's path |  Major | mapreduce | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13612](https://issues.apache.org/jira/browse/HBASE-13612) | TestRegionFavoredNodes doesn't guard against setup failure |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-13611](https://issues.apache.org/jira/browse/HBASE-13611) | update clover to work for current versions |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-13607](https://issues.apache.org/jira/browse/HBASE-13607) | TestSplitLogManager.testGetPreviousRecoveryMode consistently failing |  Minor | test | Josh Elser | Josh Elser |
| [HBASE-13606](https://issues.apache.org/jira/browse/HBASE-13606) | AssignmentManager.assign() is not sync in both path |  Major | Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13600](https://issues.apache.org/jira/browse/HBASE-13600) | check\_compatibility.sh should ignore shaded jars |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13599](https://issues.apache.org/jira/browse/HBASE-13599) | The Example Provided in Section 69: Examples of the Documentation Does Not Compile |  Minor | documentation | David Newcomer | Lars Francke |
| [HBASE-13596](https://issues.apache.org/jira/browse/HBASE-13596) | src assembly does not build |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13585](https://issues.apache.org/jira/browse/HBASE-13585) | HRegionFileSystem#splitStoreFile() finishes without closing the file handle in some situation |  Major | regionserver | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13580](https://issues.apache.org/jira/browse/HBASE-13580) | region\_mover.rb broken with TypeError: no public constructors for Java::OrgApacheHadoopHbaseClient::HTable |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-13577](https://issues.apache.org/jira/browse/HBASE-13577) | Documentation is pointing to wrong port for Master Web UI |  Minor | documentation | David Newcomer | Lars Francke |
| [HBASE-13576](https://issues.apache.org/jira/browse/HBASE-13576) | HBCK enhancement: Failure in checking one region should not fail the entire HBCK operation. |  Major | hbck | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13560](https://issues.apache.org/jira/browse/HBASE-13560) | Large compaction queue should steal from small compaction queue when idle |  Major | Compaction | Elliott Clark | Changgeng Li |
| [HBASE-13546](https://issues.apache.org/jira/browse/HBASE-13546) | NPE on region server status page if all masters are down |  Major | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-13533](https://issues.apache.org/jira/browse/HBASE-13533) | section on configuring ~/.m2/settings.xml has no anchor |  Trivial | documentation | Nick Dimiduk | Gabor Liptak |
| [HBASE-13528](https://issues.apache.org/jira/browse/HBASE-13528) | A bug on selecting compaction pool |  Minor | Compaction | Shuaifeng Zhou | Shuaifeng Zhou |
| [HBASE-13526](https://issues.apache.org/jira/browse/HBASE-13526) | TestRegionServerReportForDuty can be flaky: hang or timeout |  Minor | test | Jerry He | Jerry He |
| [HBASE-13523](https://issues.apache.org/jira/browse/HBASE-13523) | API Doumentation formatting is broken |  Minor | documentation | Dylan Jones | Dylan Jones |
| [HBASE-13499](https://issues.apache.org/jira/browse/HBASE-13499) | AsyncRpcClient test cases failure in powerpc |  Major | IPC/RPC | sangamesh | Duo Zhang |
| [HBASE-13491](https://issues.apache.org/jira/browse/HBASE-13491) | Issue in FuzzyRowFilter#getNextForFuzzyRule |  Major | Filters | Anoop Sam John | Anoop Sam John |
| [HBASE-13490](https://issues.apache.org/jira/browse/HBASE-13490) | foreground daemon start re-executes ulimit output |  Minor | scripts | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-13486](https://issues.apache.org/jira/browse/HBASE-13486) | region\_status.rb broken with NameError: uninitialized constant IOException |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-13475](https://issues.apache.org/jira/browse/HBASE-13475) | Small spelling mistake in region\_mover#isSuccessfulScan causes NoMethodError |  Trivial | scripts | Victor Xu | Victor Xu |
| [HBASE-13473](https://issues.apache.org/jira/browse/HBASE-13473) | deleted cells come back alive after the stripe compaction |  Blocker | Compaction | jeongmin kim | jeongmin kim |
| [HBASE-13457](https://issues.apache.org/jira/browse/HBASE-13457) | SnapshotExistsException doesn't honor the DoNotRetry |  Trivial | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13437](https://issues.apache.org/jira/browse/HBASE-13437) | ThriftServer leaks ZooKeeper connections |  Major | Thrift | Winger Pun | Winger Pun |
| [HBASE-13430](https://issues.apache.org/jira/browse/HBASE-13430) | HFiles that are in use by a table cloned from a snapshot may be deleted when that snapshot is deleted |  Critical | hbase | Tobi Vollebregt | Tobi Vollebregt |
| [HBASE-13423](https://issues.apache.org/jira/browse/HBASE-13423) | Remove duplicate entry for hbase.regionserver.regionSplitLimit in hbase-default.xml |  Minor | hbase | Apekshit Sharma | Apekshit Sharma |
| [HBASE-13417](https://issues.apache.org/jira/browse/HBASE-13417) | batchCoprocessorService() does not handle NULL keys |  Minor | Coprocessors | Lars George | Abhishek Singh Chouhan |
| [HBASE-13414](https://issues.apache.org/jira/browse/HBASE-13414) | TestHCM no longer needs to test for JRE 6. |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-13406](https://issues.apache.org/jira/browse/HBASE-13406) | TestAccessController is flaky when create is slow |  Minor | security, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13397](https://issues.apache.org/jira/browse/HBASE-13397) | Purge duplicate rpc request thread local |  Major | rpc | stack | stack |
| [HBASE-13394](https://issues.apache.org/jira/browse/HBASE-13394) | Failed to recreate a table when quota is enabled |  Major | security | Y. SREENIVASULU REDDY | Ashish Singhi |
| [HBASE-13385](https://issues.apache.org/jira/browse/HBASE-13385) | TestGenerateDelegationToken is broken with hadoop 2.8.0 |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13382](https://issues.apache.org/jira/browse/HBASE-13382) | IntegrationTestBigLinkedList should use SecureRandom |  Major | integration tests | Todd Lipcon | Dima Spivak |
| [HBASE-13377](https://issues.apache.org/jira/browse/HBASE-13377) | Canary may generate false alarm on the first region when there are many delete markers |  Major | monitoring | He Liangliang | He Liangliang |
| [HBASE-13371](https://issues.apache.org/jira/browse/HBASE-13371) | Fix typo in TestAsyncIPC |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13364](https://issues.apache.org/jira/browse/HBASE-13364) | Make using the default javac on by default |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-13359](https://issues.apache.org/jira/browse/HBASE-13359) | Update ACL matrix to include table owner. |  Minor | documentation | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13331](https://issues.apache.org/jira/browse/HBASE-13331) | Exceptions from DFS client can cause CatalogJanitor to delete referenced files |  Blocker | master | Elliott Clark | Elliott Clark |
| [HBASE-13329](https://issues.apache.org/jira/browse/HBASE-13329) | ArrayIndexOutOfBoundsException in CellComparator#getMinimumMidpointArray |  Critical | regionserver | Ruben Aguiar | Lars Hofhansl |
| [HBASE-13321](https://issues.apache.org/jira/browse/HBASE-13321) | Fix flaky TestHBaseFsck |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13317](https://issues.apache.org/jira/browse/HBASE-13317) | Region server reportForDuty stuck looping if there is a master change |  Major | regionserver | Jerry He | Jerry He |
| [HBASE-13312](https://issues.apache.org/jira/browse/HBASE-13312) | SmallScannerCallable does not increment scan metrics |  Major | Client, Scanners | Lars George | Andrew Purtell |
| [HBASE-13311](https://issues.apache.org/jira/browse/HBASE-13311) | TestQuotaThrottle flaky on slow machine |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13309](https://issues.apache.org/jira/browse/HBASE-13309) | Some tests do not reset EnvironmentEdgeManager |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13308](https://issues.apache.org/jira/browse/HBASE-13308) | Fix flaky TestEndToEndSplitTransaction |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13305](https://issues.apache.org/jira/browse/HBASE-13305) | Get(Get get) is not copying the row key |  Major | API | Lars George | Ashish Singhi |
| [HBASE-13301](https://issues.apache.org/jira/browse/HBASE-13301) | Possible memory leak in BucketCache |  Major | BlockCache | Duo Zhang | Duo Zhang |
| [HBASE-13299](https://issues.apache.org/jira/browse/HBASE-13299) | Add setReturnResults() to Increment, like Append has |  Critical | API | Lars George | Ashish Singhi |
| [HBASE-13298](https://issues.apache.org/jira/browse/HBASE-13298) | Clarify if Table.{set\|get}WriteBufferSize() is deprecated or not |  Critical | API | Lars George | stack |
| [HBASE-13295](https://issues.apache.org/jira/browse/HBASE-13295) | TestInfoServers hang |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13289](https://issues.apache.org/jira/browse/HBASE-13289) | typo in splitSuccessCount  metric |  Major | metrics | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13285](https://issues.apache.org/jira/browse/HBASE-13285) | Fix flaky getRegions() in TestAccessController.setUp() |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13281](https://issues.apache.org/jira/browse/HBASE-13281) | 'hbase.bucketcache.size' description in hbase book is not correct |  Major | documentation | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13279](https://issues.apache.org/jira/browse/HBASE-13279) | Add src/main/asciidoc/asciidoctor.css to RAT exclusion list in POM |  Minor | documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-13274](https://issues.apache.org/jira/browse/HBASE-13274) | Fix misplaced deprecation in Delete#addXYZ |  Major | API | stack | Mikhail Antonov |
| [HBASE-13262](https://issues.apache.org/jira/browse/HBASE-13262) | ResultScanner doesn't return all rows in Scan |  Blocker | Client | Josh Elser | Josh Elser |
| [HBASE-13253](https://issues.apache.org/jira/browse/HBASE-13253) | LoadIncrementalHFiles unify hfiles discovery |  Major | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13246](https://issues.apache.org/jira/browse/HBASE-13246) | Correct the assertion for namespace permissions in tearDown method of TestAccessController |  Minor | security, test | Ashish Singhi | Ashish Singhi |
| [HBASE-13242](https://issues.apache.org/jira/browse/HBASE-13242) | TestPerColumnFamilyFlush.testFlushingWhenLogRolling hung |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13239](https://issues.apache.org/jira/browse/HBASE-13239) | HBase grant at specific column level does not work for Groups |  Major | hbase | Jaymin Patel | Ted Yu |
| [HBASE-13229](https://issues.apache.org/jira/browse/HBASE-13229) | Specify bash for local-regionservers.sh and local-master-backup.sh |  Minor | scripts | Gustavo Anatoly | Gustavo Anatoly |
| [HBASE-13227](https://issues.apache.org/jira/browse/HBASE-13227) | LoadIncrementalHFile should skip non-files inside a possible family-dir |  Minor | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13224](https://issues.apache.org/jira/browse/HBASE-13224) | Minor formatting issue when logging a namespace scope in AuthResult#toContextString |  Trivial | Coprocessors, security | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13218](https://issues.apache.org/jira/browse/HBASE-13218) | Correct the syntax shown for using ExportSnapshot tool in the book |  Minor | documentation | Ashish Singhi | Ashish Singhi |
| [HBASE-13200](https://issues.apache.org/jira/browse/HBASE-13200) | Improper configuration can leads to endless lease recovery during failover |  Major | MTTR | He Liangliang | He Liangliang |
| [HBASE-13196](https://issues.apache.org/jira/browse/HBASE-13196) | Add info about default number of versions when using the export tool |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13194](https://issues.apache.org/jira/browse/HBASE-13194) | TableNamespaceManager not ready cause MasterQuotaManager initialization fail |  Major | master | Duo Zhang | Duo Zhang |
| [HBASE-13186](https://issues.apache.org/jira/browse/HBASE-13186) | HBase build error due to checkstyle |  Major | build | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13174](https://issues.apache.org/jira/browse/HBASE-13174) | Apply HBASE-11804 to Windows scripts |  Major | scripts | Lars George | Lars George |
| [HBASE-13167](https://issues.apache.org/jira/browse/HBASE-13167) | The check for balancerCutoffTime is buggy |  Trivial | Balancer | Tianyin Xu | Mikhail Antonov |
| [HBASE-13165](https://issues.apache.org/jira/browse/HBASE-13165) | Fix docs and scripts for default max heaps size after HBASE-11804 |  Minor | documentation, scripts | Lars George | Lars George |
| [HBASE-13163](https://issues.apache.org/jira/browse/HBASE-13163) | Add HBase version to header and footer of HTML and PDF docs |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13155](https://issues.apache.org/jira/browse/HBASE-13155) | Fix TestPrefixTree |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13150](https://issues.apache.org/jira/browse/HBASE-13150) | TestMasterObserver failing disable table at end of test |  Major | test | stack | Duo Zhang |
| [HBASE-13146](https://issues.apache.org/jira/browse/HBASE-13146) | Race Condition in ScheduledChore and ChoreService |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-13145](https://issues.apache.org/jira/browse/HBASE-13145) | TestNamespaceAuditor.testRegionMerge is flaky |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13141](https://issues.apache.org/jira/browse/HBASE-13141) | IntegrationTestAcidGuarantees returns incorrect values for getColumnFamilies |  Major | integration tests | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13139](https://issues.apache.org/jira/browse/HBASE-13139) | Clean up missing JAVA\_HOME message in bin/hbase-config.sh |  Trivial | shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13135](https://issues.apache.org/jira/browse/HBASE-13135) | Move replication ops mgmt stuff from Javadoc to Ref Guide |  Major | documentation, Replication | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13131](https://issues.apache.org/jira/browse/HBASE-13131) | ReplicationAdmin leaks connections if there's an error in the constructor |  Critical | Replication | Sean Busbey | Sean Busbey |
| [HBASE-13114](https://issues.apache.org/jira/browse/HBASE-13114) | [UNITTEST] TestEnableTableHandler.testDeleteForSureClearsAllTableRowsFromMeta |  Major | test | stack | Esteban Gutierrez |
| [HBASE-13112](https://issues.apache.org/jira/browse/HBASE-13112) | quota.rb, security.rb and visibility\_labels.rb leak connection |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-13111](https://issues.apache.org/jira/browse/HBASE-13111) | truncate\_preserve command is failing with undefined method error |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-13097](https://issues.apache.org/jira/browse/HBASE-13097) | Use same EventLoopGroup for different AsyncRpcClients if possible |  Major | IPC/RPC, test | Duo Zhang | Duo Zhang |
| [HBASE-13085](https://issues.apache.org/jira/browse/HBASE-13085) | Security issue in the implementation of Rest gataway 'doAs' proxy user support |  Critical | REST, security | Jerry He | Jerry He |
| [HBASE-13084](https://issues.apache.org/jira/browse/HBASE-13084) | Add labels to VisibilityLabelsCache asynchronously causes TestShell flakey |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13083](https://issues.apache.org/jira/browse/HBASE-13083) | Master can be dead-locked while assigning META. |  Major | master, Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13077](https://issues.apache.org/jira/browse/HBASE-13077) | BoundedCompletionService doesn't pass trace info to server |  Major | hbase | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-13076](https://issues.apache.org/jira/browse/HBASE-13076) | Table can be forcibly enabled in AssignmentManager during table disabling. |  Major | master, Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13075](https://issues.apache.org/jira/browse/HBASE-13075) | TableInputFormatBase spuriously warning about multiple initializeTable calls |  Minor | mapreduce | Sean Busbey | Sean Busbey |
| [HBASE-13072](https://issues.apache.org/jira/browse/HBASE-13072) | BucketCache.evictBlock returns true if block does not exist |  Major | BlockCache | Duo Zhang | Duo Zhang |
| [HBASE-13070](https://issues.apache.org/jira/browse/HBASE-13070) | Fix TestCacheOnWrite |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13066](https://issues.apache.org/jira/browse/HBASE-13066) | Fix typo in AsyncRpcChannel |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-13065](https://issues.apache.org/jira/browse/HBASE-13065) | Increasing -Xmx when running TestDistributedLogSplitting |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13061](https://issues.apache.org/jira/browse/HBASE-13061) | RegionStates can remove wrong region from server holdings |  Major | Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13058](https://issues.apache.org/jira/browse/HBASE-13058) | Hbase shell command 'scan' for non existent table shows unnecessary info for one unrelated existent table. |  Trivial | Client | Abhishek Kumar | Abhishek Kumar |
| [HBASE-13052](https://issues.apache.org/jira/browse/HBASE-13052) | Explain each region split policy |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13049](https://issues.apache.org/jira/browse/HBASE-13049) | wal\_roll ruby command doesn't work. |  Major | shell | Bhupendra Kumar Jain | Bhupendra Kumar Jain |
| [HBASE-13047](https://issues.apache.org/jira/browse/HBASE-13047) | Add "HBase Configuration" link missing on the table details pages |  Trivial | Operability | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-13041](https://issues.apache.org/jira/browse/HBASE-13041) | TestEnableTableHandler should not call AssignmentManager#assign concurrently with master |  Major | integration tests | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13040](https://issues.apache.org/jira/browse/HBASE-13040) | Possible failure of TestHMasterRPCException |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13039](https://issues.apache.org/jira/browse/HBASE-13039) | Add patchprocess/\* to .gitignore to fix builds of branches |  Major | build | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13037](https://issues.apache.org/jira/browse/HBASE-13037) | LoadIncrementalHFile should try to verify the content of unmatched families |  Minor | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13030](https://issues.apache.org/jira/browse/HBASE-13030) | [1.0.0 polish] Make ScanMetrics public again and align Put 'add' with Get, Delete, etc., addColumn |  Major | Operability | stack | stack |
| [HBASE-13029](https://issues.apache.org/jira/browse/HBASE-13029) | Table state should be deleted from META as a last operation in DeleteTableHandler |  Major | master | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13028](https://issues.apache.org/jira/browse/HBASE-13028) | Cleanup mapreduce API changes |  Blocker | mapreduce | Sean Busbey | Sean Busbey |
| [HBASE-13027](https://issues.apache.org/jira/browse/HBASE-13027) | mapreduce.TableInputFormatBase should create its own Connection if needed |  Blocker | mapreduce | Sean Busbey | Sean Busbey |
| [HBASE-13023](https://issues.apache.org/jira/browse/HBASE-13023) | Document multiWAL |  Major | documentation, wal | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13010](https://issues.apache.org/jira/browse/HBASE-13010) | HFileOutputFormat2 partitioner's path is hard-coded as '/tmp' |  Major | mapreduce | Aditya Kishore | Aditya Kishore |
| [HBASE-13009](https://issues.apache.org/jira/browse/HBASE-13009) | HBase REST UI inaccessible |  Major | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-13004](https://issues.apache.org/jira/browse/HBASE-13004) | Make possible to explain why HBaseTestingUtility.waitFor fails |  Minor | test | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13003](https://issues.apache.org/jira/browse/HBASE-13003) | Get tests in TestHFileBlockIndex back |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-12999](https://issues.apache.org/jira/browse/HBASE-12999) | Make foreground\_start return the correct exit code |  Major | shell | Elliott Clark | Elliott Clark |
| [HBASE-12989](https://issues.apache.org/jira/browse/HBASE-12989) | region\_mover.rb unloadRegions method uses ArrayList concurrently resulting in errors |  Minor | scripts | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-12971](https://issues.apache.org/jira/browse/HBASE-12971) | Replication stuck due to large default value for replication.source.maxretriesmultiplier |  Major | hbase | Adrian Muraru | Lars Hofhansl |
| [HBASE-12969](https://issues.apache.org/jira/browse/HBASE-12969) | Parameter Validation is not there for shell script, local-master-backup.sh and local-regionservers.sh |  Minor | scripts | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-12966](https://issues.apache.org/jira/browse/HBASE-12966) | NPE in HMaster while recovering tables in Enabling state |  Major | master | ramkrishna.s.vasudevan | Andrey Stepachev |
| [HBASE-12962](https://issues.apache.org/jira/browse/HBASE-12962) | TestHFileBlockIndex.testBlockIndex() commented out during HBASE-10531 |  Major | test | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12961](https://issues.apache.org/jira/browse/HBASE-12961) | Negative values in read and write region server metrics |  Minor | regionserver | Victoria | Victoria |
| [HBASE-12953](https://issues.apache.org/jira/browse/HBASE-12953) | RegionServer is not functionally working with AysncRpcClient in secure mode |  Critical | security | Ashish Singhi | Duo Zhang |
| [HBASE-12951](https://issues.apache.org/jira/browse/HBASE-12951) | TestHCM.testConnectionClose is flakey when using AsyncRpcClient as client implementation |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-12948](https://issues.apache.org/jira/browse/HBASE-12948) | Calling Increment#addColumn on the same column multiple times produces wrong result |  Critical | Client, regionserver | hongyu bi | hongyu bi |
| [HBASE-12922](https://issues.apache.org/jira/browse/HBASE-12922) | Post-asciidoc conversion fix-ups part 2 |  Major | documentation | Lars Francke | Lars Francke |
| [HBASE-12917](https://issues.apache.org/jira/browse/HBASE-12917) | HFilePerformanceEvaluation Scan tests fail with StackOverflowError due to recursive call in createCell function |  Major | hbase | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-12916](https://issues.apache.org/jira/browse/HBASE-12916) | No access control for replicating WAL entries |  Major | Replication | Liu Shaohui | Liu Shaohui |
| [HBASE-12903](https://issues.apache.org/jira/browse/HBASE-12903) | Fix configuration which enables secure bulk load |  Major | Coprocessors, documentation | Weichen Ye | Weichen Ye |
| [HBASE-12902](https://issues.apache.org/jira/browse/HBASE-12902) | Post-asciidoc conversion fix-ups |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12898](https://issues.apache.org/jira/browse/HBASE-12898) | Add in used undeclared dependencies |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-12881](https://issues.apache.org/jira/browse/HBASE-12881) | TestFastFail is not compatible with surefire.rerunFailingTestsCount |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12878](https://issues.apache.org/jira/browse/HBASE-12878) | Incorrect HFile path in TestHFilePerformance print output (fix for easier debugging) |  Trivial | test | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-12877](https://issues.apache.org/jira/browse/HBASE-12877) | Hbase documentation- a referenced link is not working |  Minor | documentation | Subrahmanyam | Misty Stanley-Jones |
| [HBASE-12871](https://issues.apache.org/jira/browse/HBASE-12871) | Document JDK versions supported by each release missing in new documentation |  Minor | documentation | Kevin Risden | Misty Stanley-Jones |
| [HBASE-12858](https://issues.apache.org/jira/browse/HBASE-12858) | Remove unneeded files under src/main/docbkx |  Major | documentation | Ted Yu | Misty Stanley-Jones |
| [HBASE-12849](https://issues.apache.org/jira/browse/HBASE-12849) | LoadIncrementalHFiles should use unmanaged connection in branch-1 |  Major | mapreduce | Ted Yu | Ted Yu |
| [HBASE-12837](https://issues.apache.org/jira/browse/HBASE-12837) | ReplicationAdmin leaks zk connections |  Major | Zookeeper | stack | stack |
| [HBASE-12833](https://issues.apache.org/jira/browse/HBASE-12833) | [shell] table.rb leaks connections |  Major | shell | Nick Dimiduk | Solomon Duskis |
| [HBASE-12817](https://issues.apache.org/jira/browse/HBASE-12817) | Data missing while scanning using PREFIX\_TREE data block encoding |  Major | Scanners | Duo Zhang | Duo Zhang |
| [HBASE-12811](https://issues.apache.org/jira/browse/HBASE-12811) | [AccessController] NPE while scanning a table with user not having READ permission on the namespace |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12801](https://issues.apache.org/jira/browse/HBASE-12801) | Failed to truncate a table while maintaing binary region boundaries |  Minor | shell | Liu Shaohui | Liu Shaohui |
| [HBASE-12791](https://issues.apache.org/jira/browse/HBASE-12791) | HBase does not attempt to clean up an aborted split when the regionserver shutting down |  Critical | regionserver | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-12782](https://issues.apache.org/jira/browse/HBASE-12782) | ITBLL fails for me if generator does anything but 5M per maptask |  Critical | integration tests | stack | stack |
| [HBASE-12781](https://issues.apache.org/jira/browse/HBASE-12781) | thrift2 listen port will bind always to the passed command line address |  Major | Thrift | Pankaj Kumar | Pankaj Kumar |
| [HBASE-12777](https://issues.apache.org/jira/browse/HBASE-12777) | Multi-page book has broken links that work in the single-page version |  Major | documentation | Dima Spivak | Misty Stanley-Jones |
| [HBASE-12775](https://issues.apache.org/jira/browse/HBASE-12775) | CompressionTest ate my HFile (sigh!) |  Major | test | Aditya Kishore | Aditya Kishore |
| [HBASE-12772](https://issues.apache.org/jira/browse/HBASE-12772) | TestPerColumnFamilyFlush failing |  Major | test | stack | stack |
| [HBASE-12767](https://issues.apache.org/jira/browse/HBASE-12767) | Fix a StoreFileScanner NPE in reverse scan flow |  Major | regionserver, Scanners | Liang Xie | Liang Xie |
| [HBASE-12750](https://issues.apache.org/jira/browse/HBASE-12750) | getRequestsCount() in ClusterStatus returns total number of request |  Major | Client | Weichen Ye | Weichen Ye |
| [HBASE-12749](https://issues.apache.org/jira/browse/HBASE-12749) | Tighten HFileLink api to enable non-snapshot uses |  Major | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12740](https://issues.apache.org/jira/browse/HBASE-12740) | Improve performance of TestHBaseFsck |  Major | util | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12739](https://issues.apache.org/jira/browse/HBASE-12739) | Avoid too large identifier of ZooKeeperWatcher |  Minor | Zookeeper | Liu Shaohui | Liu Shaohui |
| [HBASE-12728](https://issues.apache.org/jira/browse/HBASE-12728) | buffered writes substantially less useful after removal of HTablePool |  Blocker | hbase | Aaron Beppu | Nick Dimiduk |
| [HBASE-12718](https://issues.apache.org/jira/browse/HBASE-12718) | Convert TestAcidGuarantees from a unit test to an integration test |  Major | hbase, integration tests, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12716](https://issues.apache.org/jira/browse/HBASE-12716) | A bug in RegionSplitter.UniformSplit algorithm |  Major | regionserver | Weichen Ye | Weichen Ye |
| [HBASE-12715](https://issues.apache.org/jira/browse/HBASE-12715) | getLastSequenceId always returns -1 |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-12703](https://issues.apache.org/jira/browse/HBASE-12703) | Cleanup TestClientPushback for repeatability |  Minor | test | Jesse Yates | Jesse Yates |
| [HBASE-12699](https://issues.apache.org/jira/browse/HBASE-12699) | undefined method `setAsyncLogFlush' exception thrown when setting DEFERRED\_LOG\_FLUSH=\>true |  Major | shell | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12693](https://issues.apache.org/jira/browse/HBASE-12693) | [docs] nit fix in HBase and MapReduce section |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12692](https://issues.apache.org/jira/browse/HBASE-12692) | NPE from SnapshotManager#stop |  Minor | snapshots | Ashish Singhi | Ashish Singhi |
| [HBASE-12690](https://issues.apache.org/jira/browse/HBASE-12690) | list\_quotas command is failing with not able to load Java class |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12688](https://issues.apache.org/jira/browse/HBASE-12688) | Update site with a bootstrap-based UI |  Major | site | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12687](https://issues.apache.org/jira/browse/HBASE-12687) | Book is missing styling |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12682](https://issues.apache.org/jira/browse/HBASE-12682) | compaction thread throttle value is not correct in hbase-default.xml |  Major | regionserver | Jerry He | Jerry He |
| [HBASE-12681](https://issues.apache.org/jira/browse/HBASE-12681) | truncate\_preserve command fails with undefined method `getTable' error |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12677](https://issues.apache.org/jira/browse/HBASE-12677) | Update replication docs to clarify terminology |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12674](https://issues.apache.org/jira/browse/HBASE-12674) | Add permission check to getNamespaceDescriptor() |  Major | master, security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12665](https://issues.apache.org/jira/browse/HBASE-12665) | When aborting, dump metrics |  Major | Operability | stack | stack |
| [HBASE-12664](https://issues.apache.org/jira/browse/HBASE-12664) | TestDefaultLoadBalancer.testBalanceCluster fails in CachedDNSToSwitchMapping |  Minor | test | stack | stack |
| [HBASE-12663](https://issues.apache.org/jira/browse/HBASE-12663) | unify getTableDescriptors() and listTableDescriptorsByNamespace() |  Major | master, security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12662](https://issues.apache.org/jira/browse/HBASE-12662) | region\_status.rb is failing with NoMethodError |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12655](https://issues.apache.org/jira/browse/HBASE-12655) | WALPerformanceEvaluation miscalculates append/sync statistics for multiple regions |  Minor | wal | Sean Busbey | Sean Busbey |
| [HBASE-12644](https://issues.apache.org/jira/browse/HBASE-12644) | Visibility Labels: issue with storing super users in labels table |  Major | security | Jerry He | Jerry He |
| [HBASE-12642](https://issues.apache.org/jira/browse/HBASE-12642) | LoadIncrementalHFiles does not throw exception after hitting hbase.bulkload.retries.number setting |  Minor | mapreduce | Erik Ingle | Ted Yu |
| [HBASE-12634](https://issues.apache.org/jira/browse/HBASE-12634) |  Fix the AccessController#requireGlobalPermission(ns) with NS |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12628](https://issues.apache.org/jira/browse/HBASE-12628) | Update instructions for running shell tests using maven. |  Minor | documentation, shell | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12622](https://issues.apache.org/jira/browse/HBASE-12622) | user\_permission should require global admin to display global and ns permissions |  Major | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12600](https://issues.apache.org/jira/browse/HBASE-12600) | Remove REPLAY tag dependency in Distributed Replay Mode |  Major | wal | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12585](https://issues.apache.org/jira/browse/HBASE-12585) | Fix refguide so it does hbase 1.0 style API everywhere with callout on how we used to do it in pre-1.0 |  Major | documentation | stack | Misty Stanley-Jones |
| [HBASE-12584](https://issues.apache.org/jira/browse/HBASE-12584) | Fix branch-1 failing since task 5 HBASE-12404 (HBASE-12404 addendum) |  Major | test | stack | stack |
| [HBASE-12581](https://issues.apache.org/jira/browse/HBASE-12581) | TestCellACLWithMultipleVersions failing since task 5 HBASE-12404 (HBASE-12404 addendum) |  Critical | test | stack | stack |
| [HBASE-12576](https://issues.apache.org/jira/browse/HBASE-12576) | Add metrics for rolling the HLog if there are too few DN's in the write pipeline |  Major | metrics, wal | Elliott Clark | Elliott Clark |
| [HBASE-12574](https://issues.apache.org/jira/browse/HBASE-12574) | Update replication metrics to not do so many map look ups. |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-12564](https://issues.apache.org/jira/browse/HBASE-12564) | consolidate the getTableDescriptors() semantic |  Minor | Client, master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12553](https://issues.apache.org/jira/browse/HBASE-12553) | request value is not consistent for restoreSnapshot in audit logs |  Minor | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12552](https://issues.apache.org/jira/browse/HBASE-12552) | listSnapshots should list only owned snapshots for non-super user |  Major | snapshots | Ashish Singhi | Ashish Singhi |
| [HBASE-12541](https://issues.apache.org/jira/browse/HBASE-12541) | Add misc debug logging to hanging tests in TestHCM and TestBaseLoadBalancer |  Major | test | stack | stack |
| [HBASE-12539](https://issues.apache.org/jira/browse/HBASE-12539) | HFileLinkCleaner logs are uselessly noisy |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12537](https://issues.apache.org/jira/browse/HBASE-12537) | HBase should log the remote host on replication error |  Major | Operability, Replication | stack | stack |
| [HBASE-12536](https://issues.apache.org/jira/browse/HBASE-12536) | Reduce the effective scope of GLOBAL CREATE and ADMIN permission |  Major | security | Andrew Purtell | Andrew Purtell |
| [HBASE-12535](https://issues.apache.org/jira/browse/HBASE-12535) | NPE in WALFactory close under contention for getInstance |  Major | Replication, wal | stack | Sean Busbey |
| [HBASE-12533](https://issues.apache.org/jira/browse/HBASE-12533) | staging directories are not deleted after secure bulk load |  Major | regionserver | Andrejs Dubovskis | Jeffrey Zhong |
| [HBASE-12532](https://issues.apache.org/jira/browse/HBASE-12532) | TestFilter failing occasionally with ExitCodeException doing chmod since HBASE-10378 |  Major | test | stack | stack |
| [HBASE-12491](https://issues.apache.org/jira/browse/HBASE-12491) | TableMapReduceUtil.findContainingJar() NPE |  Major | mapreduce | Solomon Duskis | Solomon Duskis |
| [HBASE-12488](https://issues.apache.org/jira/browse/HBASE-12488) | Small bug in publish\_hbase\_website.sh script |  Minor | scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12480](https://issues.apache.org/jira/browse/HBASE-12480) | Regions in FAILED\_OPEN/FAILED\_CLOSE should be processed on master failover |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-12468](https://issues.apache.org/jira/browse/HBASE-12468) | AUTHORIZATIONS should be part of Visibility Label Docs |  Major | documentation | Kevin Odell | Misty Stanley-Jones |
| [HBASE-12467](https://issues.apache.org/jira/browse/HBASE-12467) | Master joins cluster but never completes initialization |  Major | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12464](https://issues.apache.org/jira/browse/HBASE-12464) | meta table region assignment stuck in the FAILED\_OPEN state due to region server not fully ready to serve |  Major | Region Assignment | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12459](https://issues.apache.org/jira/browse/HBASE-12459) | Use a non-managed Table in mapred.TableOutputFormat |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12431](https://issues.apache.org/jira/browse/HBASE-12431) | Use of getColumnLatestCell(byte[], int, int, byte[], int, int) is Not Thread Safe |  Major | Client | Jonathan Jarvis | Jingcheng Du |
| [HBASE-12422](https://issues.apache.org/jira/browse/HBASE-12422) | Use ConnectionFactory in HTable constructors |  Minor | Client | Solomon Duskis | stack |
| [HBASE-12421](https://issues.apache.org/jira/browse/HBASE-12421) | Clarify ACL concepts and best practices |  Major | documentation, security | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12414](https://issues.apache.org/jira/browse/HBASE-12414) | Move HFileLink.exists() to base class |  Trivial | io | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12412](https://issues.apache.org/jira/browse/HBASE-12412) | update the ref guide(currently Example 10.2) to show "update an existing CF" with the new API modifyFamily in master |  Minor | documentation | Jingcheng Du | Misty Stanley-Jones |
| [HBASE-12409](https://issues.apache.org/jira/browse/HBASE-12409) | Add actual tunable parameters for finding optimal # of regions per RS |  Major | documentation, Performance | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12399](https://issues.apache.org/jira/browse/HBASE-12399) | Master startup race between metrics and RpcServer |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12393](https://issues.apache.org/jira/browse/HBASE-12393) | The regionserver web will throw exception if we disable block cache |  Minor | regionserver, UI | ChiaPing Tsai | ChiaPing Tsai |
| [HBASE-12386](https://issues.apache.org/jira/browse/HBASE-12386) | Replication gets stuck following a transient zookeeper error to remote peer cluster |  Major | Replication | Adrian Muraru | Adrian Muraru |
| [HBASE-12380](https://issues.apache.org/jira/browse/HBASE-12380) | TestRegionServerNoMaster#testMultipleOpen is flaky after HBASE-11760 |  Major | test | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12377](https://issues.apache.org/jira/browse/HBASE-12377) | HBaseAdmin#deleteTable fails when META region is moved around the same timeframe |  Major | Client | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12366](https://issues.apache.org/jira/browse/HBASE-12366) | Add login code to HBase Canary tool. |  Minor | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12359](https://issues.apache.org/jira/browse/HBASE-12359) | MulticastPublisher should specify IPv4/v6 protocol family when creating multicast channel |  Minor | master | Qiang Tian | Qiang Tian |
| [HBASE-12356](https://issues.apache.org/jira/browse/HBASE-12356) | Rpc with region replica does not propagate tracing spans |  Major | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12352](https://issues.apache.org/jira/browse/HBASE-12352) | Add hbase-annotation-tests to runtime classpath so can run hbase it tests. |  Major | integration tests | stack | stack |
| [HBASE-12348](https://issues.apache.org/jira/browse/HBASE-12348) | preModifyColumn and preDeleteColumn in AC denies user to perform its operation though it has required rights |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12347](https://issues.apache.org/jira/browse/HBASE-12347) | Fix the edge case where Hadoop QA's parsing of attached patches breaks the JIRA status checker in dev-support/rebase\_all\_git\_branches.sh |  Minor | scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12346](https://issues.apache.org/jira/browse/HBASE-12346) | Scan's default auths behavior under Visibility labels |  Major | API, security | Jerry He | Jerry He |
| [HBASE-12339](https://issues.apache.org/jira/browse/HBASE-12339) | WAL performance evaluation tool doesn't roll logs |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-12329](https://issues.apache.org/jira/browse/HBASE-12329) | Table create with duplicate column family names quietly succeeds |  Minor | Client, shell | Sean Busbey | Jingcheng Du |
| [HBASE-12326](https://issues.apache.org/jira/browse/HBASE-12326) | Document scanner timeout workarounds in troubleshooting section |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12322](https://issues.apache.org/jira/browse/HBASE-12322) | Add clean up command to ITBLL |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-12306](https://issues.apache.org/jira/browse/HBASE-12306) | CellCounter output's wrong value for Total Families Across all Rows in output file |  Major | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12304](https://issues.apache.org/jira/browse/HBASE-12304) | CellCounter will throw AIOBE when output directory is not specified |  Minor | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12302](https://issues.apache.org/jira/browse/HBASE-12302) | VisibilityClient getAuths does not propagate remote service exception correctly |  Minor | Client, security | Jerry He | Jerry He |
| [HBASE-12301](https://issues.apache.org/jira/browse/HBASE-12301) | user\_permission command does not show global permissions |  Major | security, shell | Jerry He | Matteo Bertozzi |
| [HBASE-12294](https://issues.apache.org/jira/browse/HBASE-12294) | Can't build the docs after the hbase-checkstyle module was added |  Blocker | build | Misty Stanley-Jones | Elliott Clark |
| [HBASE-12278](https://issues.apache.org/jira/browse/HBASE-12278) | Race condition in TestSecureLoadIncrementalHFilesSplitRecovery |  Critical | test | Dima Spivak | Dima Spivak |
| [HBASE-12265](https://issues.apache.org/jira/browse/HBASE-12265) | HBase shell 'show\_filters' points to internal Facebook URL |  Trivial | shell | Niels Basjes | Andrew Purtell |
| [HBASE-12261](https://issues.apache.org/jira/browse/HBASE-12261) | Add checkstyle to HBase build process |  Major | build, site | Elliott Clark | Elliott Clark |
| [HBASE-12258](https://issues.apache.org/jira/browse/HBASE-12258) | Make TestHBaseFsck less flaky |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12252](https://issues.apache.org/jira/browse/HBASE-12252) | IntegrationTestBulkLoad fails with illegal partition error |  Major | test | Dima Spivak | Dima Spivak |
| [HBASE-12241](https://issues.apache.org/jira/browse/HBASE-12241) | The crash of regionServer when taking deadserver's replication queue breaks replication |  Critical | Replication | Liu Shaohui | Liu Shaohui |
| [HBASE-12240](https://issues.apache.org/jira/browse/HBASE-12240) | hbase-daemon.sh should remove pid file if process not found running |  Minor | Usability | Ashish Singhi | Ashish Singhi |
| [HBASE-12229](https://issues.apache.org/jira/browse/HBASE-12229) | NullPointerException in SnapshotTestingUtils |  Minor | test | Dima Spivak | Dima Spivak |
| [HBASE-12219](https://issues.apache.org/jira/browse/HBASE-12219) | Cache more efficiently getAll() and get() in FSTableDescriptors |  Major | master | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12200](https://issues.apache.org/jira/browse/HBASE-12200) | When an RPC server handler thread dies, throw exception |  Minor | regionserver | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-12199](https://issues.apache.org/jira/browse/HBASE-12199) | Make TestAtomicOperation and TestEncodedSeekers faster |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12198](https://issues.apache.org/jira/browse/HBASE-12198) | Fix the bug of not updating location cache |  Minor | Client | Yi Deng | Yi Deng |
| [HBASE-12197](https://issues.apache.org/jira/browse/HBASE-12197) | Move REST |  Major | REST | Elliott Clark | Elliott Clark |
| [HBASE-12193](https://issues.apache.org/jira/browse/HBASE-12193) | Add missing docbook file to git |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12192](https://issues.apache.org/jira/browse/HBASE-12192) | Remove EventHandlerListener |  Major | master | ryan rawson | ryan rawson |
| [HBASE-12191](https://issues.apache.org/jira/browse/HBASE-12191) | Make TestCacheOnWrite faster. |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12186](https://issues.apache.org/jira/browse/HBASE-12186) | Formatting error in Table 8.2. Examples of Visibility Expressions |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12183](https://issues.apache.org/jira/browse/HBASE-12183) | FuzzyRowFilter doesn't support reverse scans |  Major | Filters | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12172](https://issues.apache.org/jira/browse/HBASE-12172) | Disable flakey TestRegionReplicaReplicationEndpoint and make fixing it a blocker on 1.0 |  Major | test | stack | stack |
| [HBASE-12170](https://issues.apache.org/jira/browse/HBASE-12170) | TestReplicaWithCluster.testReplicaAndReplication timeouts |  Major | test | stack | stack |
| [HBASE-12166](https://issues.apache.org/jira/browse/HBASE-12166) | TestDistributedLogSplitting.testMasterStartsUpWithLogReplayWork |  Major | test, wal | stack | Jimmy Xiang |
| [HBASE-12165](https://issues.apache.org/jira/browse/HBASE-12165) | TestEndToEndSplitTransaction.testFromClientSideWhileSplitting fails |  Major | test | stack | stack |
| [HBASE-12158](https://issues.apache.org/jira/browse/HBASE-12158) | TestHttpServerLifecycle.testStartedServerWithRequestLog goes zombie on occasion |  Major | test | stack | stack |
| [HBASE-12153](https://issues.apache.org/jira/browse/HBASE-12153) | Fixing TestReplicaWithCluster |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12151](https://issues.apache.org/jira/browse/HBASE-12151) | Make dev scripts executable |  Minor | scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12149](https://issues.apache.org/jira/browse/HBASE-12149) | TestRegionPlacement is failing undeterministically |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12140](https://issues.apache.org/jira/browse/HBASE-12140) | Add ConnectionFactory.createConnection() to create using default HBaseConfiguration. |  Major | Client | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-12139](https://issues.apache.org/jira/browse/HBASE-12139) | StochasticLoadBalancer doesn't work on large lightly loaded clusters |  Critical | Balancer, master | Elliott Clark | Elliott Clark |
| [HBASE-12137](https://issues.apache.org/jira/browse/HBASE-12137) | Alter table add cf doesn't do compression test |  Major | master | Virag Kothari | Virag Kothari |
| [HBASE-12136](https://issues.apache.org/jira/browse/HBASE-12136) | Race condition between client adding tableCF replication znode and  server triggering TableCFsTracker |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-12135](https://issues.apache.org/jira/browse/HBASE-12135) | Website is broken |  Blocker | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12134](https://issues.apache.org/jira/browse/HBASE-12134) | publish\_website.sh script is too optimistic |  Major | scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12126](https://issues.apache.org/jira/browse/HBASE-12126) | Region server coprocessor endpoint |  Major | Coprocessors | Virag Kothari | Virag Kothari |
| [HBASE-12123](https://issues.apache.org/jira/browse/HBASE-12123) | Failed assertion in BucketCache after 11331 |  Major | regionserver | Enis Soztutar | Nick Dimiduk |
| [HBASE-12120](https://issues.apache.org/jira/browse/HBASE-12120) | HBase shell doesn't allow deleting of a cell by user with W-only permissions to it |  Major | shell | Dima Spivak | Srikanth Srungarapu |
| [HBASE-12109](https://issues.apache.org/jira/browse/HBASE-12109) | user\_permission command for namespace does not return correct result |  Minor | shell | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-12099](https://issues.apache.org/jira/browse/HBASE-12099) | TestScannerModel fails if using jackson 1.9.13 |  Major | REST | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12098](https://issues.apache.org/jira/browse/HBASE-12098) | User granted namespace table create permissions can't create a table |  Critical | Client, security | Dima Spivak | Srikanth Srungarapu |
| [HBASE-12067](https://issues.apache.org/jira/browse/HBASE-12067) | Remove deprecated metrics classes. |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-12065](https://issues.apache.org/jira/browse/HBASE-12065) |  Import tool is not restoring multiple DeleteFamily markers of a row |  Minor | util | Maddineni Sukumar | Maddineni Sukumar |
| [HBASE-12064](https://issues.apache.org/jira/browse/HBASE-12064) | hbase.master.balancer.stochastic.numRegionLoadsToRemember is not used |  Minor | Balancer | Junegunn Choi | Junegunn Choi |
| [HBASE-12044](https://issues.apache.org/jira/browse/HBASE-12044) | REST delete operation should not retry disableTable for DoNotRetryIOException |  Minor | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-12043](https://issues.apache.org/jira/browse/HBASE-12043) | REST server should respond with FORBIDDEN(403) code on AccessDeniedException |  Minor | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-12034](https://issues.apache.org/jira/browse/HBASE-12034) | If I kill single RS in branch-1, all regions end up on Master! |  Critical | master | stack | Jimmy Xiang |
| [HBASE-12028](https://issues.apache.org/jira/browse/HBASE-12028) | Abort the RegionServer, when it's handler threads die |  Major | regionserver | Sudarshan Kadambi | Alicia Ying Shu |
| [HBASE-12025](https://issues.apache.org/jira/browse/HBASE-12025) | TestHttpServerLifecycle.testStartedServerWithRequestLog hangs frequently |  Major | test | stack | stack |
| [HBASE-12024](https://issues.apache.org/jira/browse/HBASE-12024) | Fix javadoc warning |  Trivial | documentation | Matteo Bertozzi | Anoop Sam John |
| [HBASE-12019](https://issues.apache.org/jira/browse/HBASE-12019) | hbase-daemon.sh overwrite HBASE\_ROOT\_LOGGER and HBASE\_SECURITY\_LOGGER variables |  Minor | scripts | Sebastien Barrier | Sebastien Barrier |
| [HBASE-11998](https://issues.apache.org/jira/browse/HBASE-11998) | Document a workflow for cherry-picking a fix to a different branch |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11994](https://issues.apache.org/jira/browse/HBASE-11994) | PutCombiner floods the M/R log with repeated log messages. |  Major | mapreduce | Aditya Kishore | Aditya Kishore |
| [HBASE-11989](https://issues.apache.org/jira/browse/HBASE-11989) | IntegrationTestLoadAndVerify cannot be configured anymore on distributed mode |  Trivial | test | Enis Soztutar | Enis Soztutar |
| [HBASE-11983](https://issues.apache.org/jira/browse/HBASE-11983) | HRegion constructors should not create HLog |  Major | wal | Enis Soztutar | Nick Dimiduk |
| [HBASE-11949](https://issues.apache.org/jira/browse/HBASE-11949) | Setting hfile.block.cache.size=0 doesn't actually disable blockcache |  Minor | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11936](https://issues.apache.org/jira/browse/HBASE-11936) | IsolationLevel must be attribute of a Query not a Scan |  Major | Client | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-11932](https://issues.apache.org/jira/browse/HBASE-11932) | Stop the html-single from building a html-single of every chapter and cluttering the docbkx directory |  Major | build, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11898](https://issues.apache.org/jira/browse/HBASE-11898) | CoprocessorHost.Environment should cache class loader instance |  Major | Coprocessors | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-11893](https://issues.apache.org/jira/browse/HBASE-11893) | RowTooBigException should be in hbase-client module |  Minor | API, Client | Sean Busbey | Mikhail Antonov |
| [HBASE-11892](https://issues.apache.org/jira/browse/HBASE-11892) | configs contain stale entries |  Trivial | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-11890](https://issues.apache.org/jira/browse/HBASE-11890) | HBase REST Client is hard coded to http protocol |  Major | Client | Eric Yang | Qiang Tian |
| [HBASE-11887](https://issues.apache.org/jira/browse/HBASE-11887) | Memory retention in branch-1; millions of instances of LiteralByteString for column qualifier and value |  Critical | Protobufs | stack | stack |
| [HBASE-11882](https://issues.apache.org/jira/browse/HBASE-11882) | Row level consistency may not be maintained with bulk load and compaction |  Critical | regionserver | Jerry He | Jerry He |
| [HBASE-11880](https://issues.apache.org/jira/browse/HBASE-11880) | NPE in MasterStatusServlet |  Minor | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11859](https://issues.apache.org/jira/browse/HBASE-11859) | 'hadoop jar' references in documentation should mention hbase-server.jar, not hbase.jar |  Minor | documentation | Stephen Veiss | Stephen Veiss |
| [HBASE-11855](https://issues.apache.org/jira/browse/HBASE-11855) | HBase handbook chapter 18.9 out of date |  Minor | documentation | Michael Tauscher | Michael Tauscher |
| [HBASE-11851](https://issues.apache.org/jira/browse/HBASE-11851) | RpcClient can try to close a connection not ready to close |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11844](https://issues.apache.org/jira/browse/HBASE-11844) | region\_mover.rb load enters an infinite loop if region already present on target server |  Minor | scripts | Stephen Veiss | Stephen Veiss |
| [HBASE-11836](https://issues.apache.org/jira/browse/HBASE-11836) | IntegrationTestTimeBoundedMultiGetRequestsWithRegionReplicas tests simple get by default |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11835](https://issues.apache.org/jira/browse/HBASE-11835) | Wrong managenement of non expected calls in the client |  Major | Client, Performance | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11834](https://issues.apache.org/jira/browse/HBASE-11834) | TestHRegionBusyWait.testParallelAppendWithMemStoreFlush fails sporadically |  Major | test | stack | stack |
| [HBASE-11830](https://issues.apache.org/jira/browse/HBASE-11830) | TestReplicationThrottler.testThrottling failed on virtual boxes |  Minor | test | Sergey Soldatov | Stephen Yuan Jiang |
| [HBASE-11816](https://issues.apache.org/jira/browse/HBASE-11816) | Initializing custom Metrics implementation failed in Mapper or Reducer |  Minor | metrics | Huafeng Wang | Huafeng Wang |
| [HBASE-11804](https://issues.apache.org/jira/browse/HBASE-11804) | Raise default heap size if unspecified |  Major | scripts | Elliott Clark | Elliott Clark |
| [HBASE-11794](https://issues.apache.org/jira/browse/HBASE-11794) | StripeStoreFlusher causes NullPointerException |  Critical | Compaction | jeongmin kim | jeongmin kim |
| [HBASE-11787](https://issues.apache.org/jira/browse/HBASE-11787) | TestRegionLocations is not categorized |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11782](https://issues.apache.org/jira/browse/HBASE-11782) | Document that hbase.MetaMigrationConvertingToPB needs to be set to true for migrations pre 0.96 |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11773](https://issues.apache.org/jira/browse/HBASE-11773) | Wrong field used for protobuf construction in RegionStates. |  Major | Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-11770](https://issues.apache.org/jira/browse/HBASE-11770) | TestBlockCacheReporting.testBucketCache is not stable |  Major | test | Sergey Soldatov | Sergey Soldatov |
| [HBASE-11755](https://issues.apache.org/jira/browse/HBASE-11755) | VisibilityController returns the wrong value for preBalanceSwitch() |  Minor | Coprocessors | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11744](https://issues.apache.org/jira/browse/HBASE-11744) | RpcServer code should not use a collection from netty internal |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11733](https://issues.apache.org/jira/browse/HBASE-11733) | Avoid copy-paste in Master/Region CoprocessorHost |  Trivial | Coprocessors | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11732](https://issues.apache.org/jira/browse/HBASE-11732) | Should not preemptively offline a region |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11728](https://issues.apache.org/jira/browse/HBASE-11728) | Data loss while scanning using PREFIX\_TREE DATA-BLOCK-ENCODING |  Critical | Scanners | wuchengzhi | ramkrishna.s.vasudevan |
| [HBASE-11726](https://issues.apache.org/jira/browse/HBASE-11726) | Master should fail-safe if starting with a pre 0.96 layout |  Critical | master | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11721](https://issues.apache.org/jira/browse/HBASE-11721) | jdiff script no longer works as usage instructions indicate |  Major | scripts | Misty Stanley-Jones | Dima Spivak |
| [HBASE-11719](https://issues.apache.org/jira/browse/HBASE-11719) | Remove some unused paths in AsyncClient |  Trivial | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11718](https://issues.apache.org/jira/browse/HBASE-11718) | Remove some logs in RpcClient.java |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11717](https://issues.apache.org/jira/browse/HBASE-11717) | Remove unused config 'hbase.offheapcache.percentage' from hbase-default.xml and book |  Minor | documentation | Anoop Sam John | Anoop Sam John |
| [HBASE-11708](https://issues.apache.org/jira/browse/HBASE-11708) | RegionSplitter incorrectly calculates splitcount |  Minor | Admin, util | Sean Busbey | louis hust |
| [HBASE-11705](https://issues.apache.org/jira/browse/HBASE-11705) | callQueueSize should be decremented in a fail-fast scenario |  Critical | IPC/RPC | Esteban Gutierrez | Esteban Gutierrez |
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
| [HBASE-11617](https://issues.apache.org/jira/browse/HBASE-11617) | incorrect AgeOfLastAppliedOp and AgeOfLastShippedOp in replication Metrics when no new replication OP |  Minor | Replication | Demai Ni | Demai Ni |
| [HBASE-11609](https://issues.apache.org/jira/browse/HBASE-11609) | LoadIncrementalHFiles fails if the namespace is specified |  Major | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11593](https://issues.apache.org/jira/browse/HBASE-11593) | TestCacheConfig failing consistently in precommit builds |  Major | BlockCache | Andrew Purtell | stack |
| [HBASE-11589](https://issues.apache.org/jira/browse/HBASE-11589) | AccessControlException should be a not retriable exception |  Major | IPC/RPC | Kashif | Qiang Tian |
| [HBASE-11588](https://issues.apache.org/jira/browse/HBASE-11588) | RegionServerMetricsWrapperRunnable misused the 'period' parameter |  Minor | metrics | Victor Xu | Victor Xu |
| [HBASE-11579](https://issues.apache.org/jira/browse/HBASE-11579) | CopyTable should check endtime value only if != 0 |  Major | mapreduce | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-11565](https://issues.apache.org/jira/browse/HBASE-11565) | Stale connection could stay for a while |  Major | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11564](https://issues.apache.org/jira/browse/HBASE-11564) | Improve cancellation management in the rpc layer |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11562](https://issues.apache.org/jira/browse/HBASE-11562) | CopyTable should provide an option to shuffle the mapper tasks |  Major | mapreduce | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-11558](https://issues.apache.org/jira/browse/HBASE-11558) | Caching set on Scan object gets lost when using TableMapReduceUtil in 0.95+ |  Major | mapreduce, Scanners | Ishan Chhabra | Ishan Chhabra |
| [HBASE-11556](https://issues.apache.org/jira/browse/HBASE-11556) | Move HTablePool to hbase-thrift module. |  Major | Thrift | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-11555](https://issues.apache.org/jira/browse/HBASE-11555) | TableSnapshotRegionSplit should be public |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11545](https://issues.apache.org/jira/browse/HBASE-11545) | mapred.TableSnapshotInputFormat is missing InterfaceAudience annotation |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11540](https://issues.apache.org/jira/browse/HBASE-11540) | Document HBASE-11474 |  Critical | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11539](https://issues.apache.org/jira/browse/HBASE-11539) | Expand info about contributing to and building documentation |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11536](https://issues.apache.org/jira/browse/HBASE-11536) | Puts of region location to Meta may be out of order which causes inconsistent of region location |  Critical | Region Assignment | Liu Shaohui | Liu Shaohui |
| [HBASE-11535](https://issues.apache.org/jira/browse/HBASE-11535) | ReplicationPeer map is not thread safe |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-11531](https://issues.apache.org/jira/browse/HBASE-11531) | RegionStates for regions under region-in-transition znode are not updated on startup |  Major | Region Assignment | Virag Kothari | Jimmy Xiang |
| [HBASE-11529](https://issues.apache.org/jira/browse/HBASE-11529) | Images and CSS still don't work properly on both html and html-single book |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11525](https://issues.apache.org/jira/browse/HBASE-11525) | Region server holding in region states is out of sync with meta |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11522](https://issues.apache.org/jira/browse/HBASE-11522) | Move Replication information into the Ref Guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11521](https://issues.apache.org/jira/browse/HBASE-11521) | Modify pom.xml to copy the images/ and css/ directories to the right location for the Ref Guide to see them correctly |  Critical | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11518](https://issues.apache.org/jira/browse/HBASE-11518) | doc update for how to create non-shared HConnection |  Minor | documentation | Qiang Tian | Qiang Tian |
| [HBASE-11510](https://issues.apache.org/jira/browse/HBASE-11510) | Visibility serialization format tag gets duplicated in Append/Increment'ed cells |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11505](https://issues.apache.org/jira/browse/HBASE-11505) | 'snapshot' shell command shadows 'snapshot' shell when 'help' is invoked |  Trivial | shell | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11502](https://issues.apache.org/jira/browse/HBASE-11502) | Track down broken images in Ref Guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11500](https://issues.apache.org/jira/browse/HBASE-11500) | Possible null pointer dereference of regionLocation in ReversedScannerCallable |  Minor | Client | Mike Drob | Mike Drob |
| [HBASE-11499](https://issues.apache.org/jira/browse/HBASE-11499) | AsyncProcess.buildDetailedErrorMessage concatenates strings using + in a loop |  Trivial | Client | Mike Drob | Mike Drob |
| [HBASE-11492](https://issues.apache.org/jira/browse/HBASE-11492) | Hadoop configuration overrides some ipc parameters including tcpNoDelay |  Critical | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11488](https://issues.apache.org/jira/browse/HBASE-11488) | cancelTasks in SubprocedurePool can hang during task error |  Minor | snapshots | Jerry He | Jerry He |
| [HBASE-11487](https://issues.apache.org/jira/browse/HBASE-11487) | ScanResponse carries non-zero cellblock for CloseScanRequest (ScanRequest with close\_scanner = true) |  Minor | IPC/RPC, regionserver | Shengzhe Yao | Shengzhe Yao |
| [HBASE-11477](https://issues.apache.org/jira/browse/HBASE-11477) | book.xml has Docbook validity issues (again) |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11476](https://issues.apache.org/jira/browse/HBASE-11476) | Expand 'Conceptual View' section of Data Model chapter |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11465](https://issues.apache.org/jira/browse/HBASE-11465) | [VisibilityController] Reserved tags check not happening for Append/Increment |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11460](https://issues.apache.org/jira/browse/HBASE-11460) | Deadlock in HMaster on masterAndZKLock in HConnectionManager |  Critical | master | Andrey Stepachev | Ted Yu |
| [HBASE-11445](https://issues.apache.org/jira/browse/HBASE-11445) | TestZKProcedure#testMultiCohortWithMemberTimeoutDuringPrepare is flaky |  Major | snapshots | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-11442](https://issues.apache.org/jira/browse/HBASE-11442) | ReplicationSourceManager doesn't cleanup the queues for recovered sources |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-11439](https://issues.apache.org/jira/browse/HBASE-11439) | StripeCompaction may not obey the OffPeak rule to compaction |  Minor | Compaction | Victor Xu | Victor Xu |
| [HBASE-11435](https://issues.apache.org/jira/browse/HBASE-11435) | Visibility labelled cells fail to getting replicated |  Critical | Replication, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11423](https://issues.apache.org/jira/browse/HBASE-11423) | Visibility label and per cell ACL feature not working with HTable#mutateRow() and MultiRowMutationEndpoint |  Blocker | Coprocessors, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11405](https://issues.apache.org/jira/browse/HBASE-11405) | Multiple invocations of hbck in parallel disables balancer permanently |  Major | Balancer, hbck | bharath v | bharath v |
| [HBASE-11399](https://issues.apache.org/jira/browse/HBASE-11399) | Improve Quickstart chapter and move Pseudo-distributed and distributed to it |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11333](https://issues.apache.org/jira/browse/HBASE-11333) | Remove deprecated class MetaMigrationConvertingToPB |  Trivial | master | Mikhail Antonov | Mikhail Antonov |
| [HBASE-11316](https://issues.apache.org/jira/browse/HBASE-11316) | Expand info about compactions beyond HBASE-11120 |  Major | Compaction, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11297](https://issues.apache.org/jira/browse/HBASE-11297) | Remove some synchros in the rpcServer responder |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11266](https://issues.apache.org/jira/browse/HBASE-11266) | Remove shaded references to logger |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-11153](https://issues.apache.org/jira/browse/HBASE-11153) | Document that http webUI's should redirect to https when enabled |  Minor | documentation, master, regionserver, UI | Nick Dimiduk | Misty Stanley-Jones |
| [HBASE-11145](https://issues.apache.org/jira/browse/HBASE-11145) | UNEXPECTED!!! when HLog sync: Queue full |  Critical | wal | Anoop Sam John | stack |
| [HBASE-11118](https://issues.apache.org/jira/browse/HBASE-11118) | non environment variable solution for "IllegalAccessError: class com.google.protobuf.ZeroCopyLiteralByteString cannot access its superclass com.google.protobuf.LiteralByteString" |  Blocker | mapreduce | André Kelpe | stack |
| [HBASE-11099](https://issues.apache.org/jira/browse/HBASE-11099) | Two situations where we could open a region with smaller sequence number |  Major | regionserver | Jeffrey Zhong | Stephen Yuan Jiang |
| [HBASE-10780](https://issues.apache.org/jira/browse/HBASE-10780) | HFilePrettyPrinter#processFile should return immediately if file does not exist |  Minor | HFile | Ashish Singhi | Ashish Singhi |
| [HBASE-10748](https://issues.apache.org/jira/browse/HBASE-10748) | hbase-daemon.sh fails to execute with 'sh' command |  Major | scripts | Ashish Singhi | Ashish Singhi |
| [HBASE-10314](https://issues.apache.org/jira/browse/HBASE-10314) | Add Chaos Monkey that doesn't touch the master |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-10205](https://issues.apache.org/jira/browse/HBASE-10205) | ConcurrentModificationException in BucketAllocator |  Minor | regionserver | Arjen Roodselaar | Arjen Roodselaar |
| [HBASE-9910](https://issues.apache.org/jira/browse/HBASE-9910) | TestHFilePerformance and HFilePerformanceEvaluation should be merged in a single HFile performance test class. |  Major | Performance, test | Jean-Marc Spaggiari | Vikas Vishwakarma |
| [HBASE-9763](https://issues.apache.org/jira/browse/HBASE-9763) | Scan javadoc doesn't fully capture semantics of start and stop row |  Minor | documentation | Gabriel Reid | Gabriel Reid |
| [HBASE-9745](https://issues.apache.org/jira/browse/HBASE-9745) | Append HBASE\_CLASSPATH to end of Java classpath and use another env var for prefix |  Major | scripts | Aditya Kishore | Aditya Kishore |
| [HBASE-9473](https://issues.apache.org/jira/browse/HBASE-9473) | Change UI to list 'system tables' rather than 'catalog tables'. |  Major | UI | stack | stack |
| [HBASE-9005](https://issues.apache.org/jira/browse/HBASE-9005) | Improve documentation around KEEP\_DELETED\_CELLS, time range scans, and delete markers |  Minor | documentation | Lars Hofhansl | Misty Stanley-Jones |
| [HBASE-9003](https://issues.apache.org/jira/browse/HBASE-9003) | TableMapReduceUtil should not rely on org.apache.hadoop.util.JarFinder#getJar |  Major | mapreduce | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-8808](https://issues.apache.org/jira/browse/HBASE-8808) | Use Jacoco to generate Unit Test coverage reports |  Trivial | build | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-8725](https://issues.apache.org/jira/browse/HBASE-8725) | Add total time RPC call metrics |  Major | metrics | Elliott Clark | Nate Edel |
| [HBASE-8674](https://issues.apache.org/jira/browse/HBASE-8674) | JUnit and Surefire TRUNK-HBASE-2 plugins need a new home |  Major | build | Andrew Purtell | Gary Helmling |
| [HBASE-8473](https://issues.apache.org/jira/browse/HBASE-8473) | add note to ref guide about snapshots and ec2 reverse dns requirements. |  Major | documentation, snapshots | Jonathan Hsieh | Misty Stanley-Jones |
| [HBASE-7332](https://issues.apache.org/jira/browse/HBASE-7332) | [webui] HMaster webui should display the number of regions a table has. |  Minor | UI | Jonathan Hsieh | Andrey Stepachev |
| [HBASE-7211](https://issues.apache.org/jira/browse/HBASE-7211) | Improve hbase ref guide for the testing part. |  Minor | documentation | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6994](https://issues.apache.org/jira/browse/HBASE-6994) | minor doc update about DEFAULT\_ACCEPTABLE\_FACTOR |  Minor | documentation | Liang Xie | Liang Xie |
| [HBASE-4931](https://issues.apache.org/jira/browse/HBASE-4931) | CopyTable instructions could be improved. |  Major | documentation, mapreduce | Jonathan Hsieh | Misty Stanley-Jones |
| [HBASE-1989](https://issues.apache.org/jira/browse/HBASE-1989) | Admin (et al.) not accurate with Column vs. Column-Family usage |  Minor | Client | Doug Meil | Lars Francke |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13609](https://issues.apache.org/jira/browse/HBASE-13609) | TestFastFail is still failing |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13591](https://issues.apache.org/jira/browse/HBASE-13591) | TestHBaseFsck is flakey |  Major | hbck | Nick Dimiduk | Josh Elser |
| [HBASE-13413](https://issues.apache.org/jira/browse/HBASE-13413) | Create an integration test for Replication |  Minor | integration tests | Rajesh Nishtala | Rajesh Nishtala |
| [HBASE-13182](https://issues.apache.org/jira/browse/HBASE-13182) | Test NamespaceAuditor/AccessController create/delete table is flaky |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13179](https://issues.apache.org/jira/browse/HBASE-13179) | TestMasterObserver deleteTable is flaky |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12885](https://issues.apache.org/jira/browse/HBASE-12885) | Unit test for RAW / VERSIONS scanner specifications |  Minor | shell | Amit Kabra | Amit Kabra |
| [HBASE-12645](https://issues.apache.org/jira/browse/HBASE-12645) | HBaseTestingUtility is using ${$HOME} for rootDir |  Critical | test | Nick Dimiduk | Varun Saxena |
| [HBASE-12472](https://issues.apache.org/jira/browse/HBASE-12472) | Improve debuggability of IntegrationTestBulkLoad |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12403](https://issues.apache.org/jira/browse/HBASE-12403) | IntegrationTestMTTR flaky due to aggressive RS restart timeout |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12401](https://issues.apache.org/jira/browse/HBASE-12401) | Add some timestamp signposts in IntegrationTestMTTR |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12378](https://issues.apache.org/jira/browse/HBASE-12378) | Add a test to verify that the read-replica is able to read after a compaction |  Minor | regionserver, Replication | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12335](https://issues.apache.org/jira/browse/HBASE-12335) | IntegrationTestRegionReplicaPerf is flaky |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12317](https://issues.apache.org/jira/browse/HBASE-12317) | Run IntegrationTestRegionReplicaPerf w.o mapred |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12008](https://issues.apache.org/jira/browse/HBASE-12008) | Remove IntegrationTestImportTsv#testRunFromOutputCommitter |  Minor | mapreduce, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11966](https://issues.apache.org/jira/browse/HBASE-11966) | Minor error in TestHRegion.testCheckAndMutate\_WithCorrectValue() |  Minor | regionserver | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11838](https://issues.apache.org/jira/browse/HBASE-11838) | Enable PREFIX\_TREE in integration tests |  Minor | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11713](https://issues.apache.org/jira/browse/HBASE-11713) | Adding hbase shell unit test coverage for visibility labels. |  Minor | security, shell | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11615](https://issues.apache.org/jira/browse/HBASE-11615) | TestZKLessAMOnCluster.testForceAssignWhileClosing failed on Jenkins |  Major | master | Mike Drob | Jimmy Xiang |
| [HBASE-7781](https://issues.apache.org/jira/browse/HBASE-7781) | Update security unit tests to use a KDC if available |  Blocker | security, test | Gary Helmling | Duo Zhang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14013](https://issues.apache.org/jira/browse/HBASE-14013) | Retry when RegionServerNotYetRunningException rather than go ahead with assign so for sure we don't skip WAL replay |  Major | Region Assignment | stack | Enis Soztutar |
| [HBASE-14003](https://issues.apache.org/jira/browse/HBASE-14003) | work around jdk8 spec bug in WALPerfEval |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-13990](https://issues.apache.org/jira/browse/HBASE-13990) | clean up remaining errors for maven site goal |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-13983](https://issues.apache.org/jira/browse/HBASE-13983) | Doc how the oddball HTable methods getStartKey, getEndKey, etc. will be removed in 2.0.0 |  Minor | documentation | stack | stack |
| [HBASE-13975](https://issues.apache.org/jira/browse/HBASE-13975) | add 1.2 RM to docs |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-13968](https://issues.apache.org/jira/browse/HBASE-13968) | Remove deprecated methods from BufferedMutator class |  Major | API | Ashish Singhi | Ashish Singhi |
| [HBASE-13963](https://issues.apache.org/jira/browse/HBASE-13963) | avoid leaking jdk.tools |  Critical | build, documentation | Sean Busbey | Gabor Liptak |
| [HBASE-13950](https://issues.apache.org/jira/browse/HBASE-13950) | Add a NoopProcedureStore for testing |  Trivial | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13926](https://issues.apache.org/jira/browse/HBASE-13926) | Close the scanner only after Call#setResponse |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
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
| [HBASE-13679](https://issues.apache.org/jira/browse/HBASE-13679) | Change ColumnTracker and SQM to deal with Cell instead of byte[], int, int |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13658](https://issues.apache.org/jira/browse/HBASE-13658) | Improve the test run time for TestAccessController class |  Major | test | Ashish Singhi | Ashish Singhi |
| [HBASE-13642](https://issues.apache.org/jira/browse/HBASE-13642) | Deprecate RegionObserver#postScannerFilterRow CP hook with byte[],int,int args in favor of taking Cell arg |  Major | Coprocessors, regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13641](https://issues.apache.org/jira/browse/HBASE-13641) | Deperecate Filter#filterRowKey(byte[] buffer, int offset, int length) in favor of filterRowKey(Cell firstRowCell) |  Major | Filters, regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13616](https://issues.apache.org/jira/browse/HBASE-13616) | Move ServerShutdownHandler to Pv2 |  Major | proc-v2 | stack | stack |
| [HBASE-13572](https://issues.apache.org/jira/browse/HBASE-13572) | Procedure v2 - client truncate table sync |  Minor | proc-v2 | Srikanth Srungarapu | Ashish Singhi |
| [HBASE-13569](https://issues.apache.org/jira/browse/HBASE-13569) | correct errors reported with mvn site |  Minor | documentation | Gabor Liptak | Gabor Liptak |
| [HBASE-13551](https://issues.apache.org/jira/browse/HBASE-13551) | Procedure V2 - Procedure classes should not be InterfaceAudience.Public |  Blocker | master | Enis Soztutar | Enis Soztutar |
| [HBASE-13537](https://issues.apache.org/jira/browse/HBASE-13537) | Change the admin interface for async operations to return Future. |  Major | proc-v2 | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13536](https://issues.apache.org/jira/browse/HBASE-13536) | Cleanup the handlers that are no longer being used. |  Major | proc-v2 | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13529](https://issues.apache.org/jira/browse/HBASE-13529) | Procedure v2 - WAL Improvements |  Blocker | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13498](https://issues.apache.org/jira/browse/HBASE-13498) | Add more docs and a basic check for storage policy handling |  Minor | wal | Sean Busbey | Sean Busbey |
| [HBASE-13497](https://issues.apache.org/jira/browse/HBASE-13497) | Remove MVCC stamps from HFile when that is safe |  Major | Scanners | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13496](https://issues.apache.org/jira/browse/HBASE-13496) | Make Bytes$LexicographicalComparerHolder$UnsafeComparer::compareTo inlineable |  Major | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13476](https://issues.apache.org/jira/browse/HBASE-13476) | Procedure v2 - Add Replay Order logic for child procedures |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13470](https://issues.apache.org/jira/browse/HBASE-13470) | High level Integration test for master DDL operations |  Major | master | Enis Soztutar | Sophia Feng |
| [HBASE-13455](https://issues.apache.org/jira/browse/HBASE-13455) | Procedure V2 - master truncate table |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13448](https://issues.apache.org/jira/browse/HBASE-13448) | New Cell implementation with cached component offsets/lengths |  Blocker | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13447](https://issues.apache.org/jira/browse/HBASE-13447) | Bypass logic in TimeRange.compare |  Minor | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13429](https://issues.apache.org/jira/browse/HBASE-13429) | Remove deprecated seek/reseek methods from HFileScanner |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13398](https://issues.apache.org/jira/browse/HBASE-13398) | Document HBase Quota |  Major | documentation | Ashish Singhi | Gururaj Shetty |
| [HBASE-13335](https://issues.apache.org/jira/browse/HBASE-13335) | Update ClientSmallScanner and ClientSmallReversedScanner |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-13307](https://issues.apache.org/jira/browse/HBASE-13307) | Making methods under ScannerV2#next inlineable, faster |  Major | Scanners | stack | stack |
| [HBASE-13303](https://issues.apache.org/jira/browse/HBASE-13303) | Fix size calculation of results on the region server |  Major | Client | Lars Hofhansl | Andrew Purtell |
| [HBASE-13290](https://issues.apache.org/jira/browse/HBASE-13290) | Procedure v2 - client enable/disable table sync |  Major | Client | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13258](https://issues.apache.org/jira/browse/HBASE-13258) | Promote TestHRegion to LargeTests |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13252](https://issues.apache.org/jira/browse/HBASE-13252) | Get rid of managed connections and connection caching |  Major | API | Mikhail Antonov | Mikhail Antonov |
| [HBASE-13248](https://issues.apache.org/jira/browse/HBASE-13248) | Make HConnectionImplementation top-level class. |  Major | API | Mikhail Antonov | Mikhail Antonov |
| [HBASE-13244](https://issues.apache.org/jira/browse/HBASE-13244) | Test delegation token generation with kerberos enabled |  Major | security, test | Duo Zhang | Duo Zhang |
| [HBASE-13226](https://issues.apache.org/jira/browse/HBASE-13226) | Document enable\_table\_replication and disable\_table\_replication shell commands |  Minor | documentation | Ashish Singhi | Ashish Singhi |
| [HBASE-13214](https://issues.apache.org/jira/browse/HBASE-13214) | Remove deprecated and unused methods from HTable class |  Major | API | Mikhail Antonov | Ashish Singhi |
| [HBASE-13211](https://issues.apache.org/jira/browse/HBASE-13211) | Procedure V2 - master Enable/Disable table |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13210](https://issues.apache.org/jira/browse/HBASE-13210) | Procedure V2 - master Modify table |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13209](https://issues.apache.org/jira/browse/HBASE-13209) | Procedure V2 - master Add/Modify/Delete Column Family |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13204](https://issues.apache.org/jira/browse/HBASE-13204) | Procedure v2 - client create/delete table sync |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13203](https://issues.apache.org/jira/browse/HBASE-13203) | Procedure v2 - master create/delete table |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13202](https://issues.apache.org/jira/browse/HBASE-13202) | Procedure v2 - core framework |  Major | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13198](https://issues.apache.org/jira/browse/HBASE-13198) | Remove HConnectionManager |  Major | API | Mikhail Antonov | Mikhail Antonov |
| [HBASE-13184](https://issues.apache.org/jira/browse/HBASE-13184) | Document turning off memstore for region replicas |  Critical | documentation, Replication | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13164](https://issues.apache.org/jira/browse/HBASE-13164) | Update TestUsersOperationsWithSecureHadoop to use MiniKdc |  Major | security, test | Duo Zhang | Duo Zhang |
| [HBASE-13130](https://issues.apache.org/jira/browse/HBASE-13130) | Add timeouts on TestMasterObserver, a frequent zombie show |  Major | test | stack | stack |
| [HBASE-13095](https://issues.apache.org/jira/browse/HBASE-13095) | Document how to retrieve replication stats from HBase Shell |  Major | documentation, Replication | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12980](https://issues.apache.org/jira/browse/HBASE-12980) | Delete of a table may not clean all rows from hbase:meta |  Major | Operability | stack | stack |
| [HBASE-12793](https://issues.apache.org/jira/browse/HBASE-12793) | [hbck] closeRegionSilentlyAndWait() should log cause of IOException and retry until  hbase.hbck.close.timeout expires |  Minor | hbck | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12763](https://issues.apache.org/jira/browse/HBASE-12763) | Make it so there must be WALs for a server to be marked dead |  Major | wal | stack | stack |
| [HBASE-12738](https://issues.apache.org/jira/browse/HBASE-12738) | Chunk Ref Guide into file-per-chapter |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12735](https://issues.apache.org/jira/browse/HBASE-12735) | Refactor TAG so it can live as unit test and as an integration test |  Major | test | stack | Jonathan Hsieh |
| [HBASE-12708](https://issues.apache.org/jira/browse/HBASE-12708) | Document newly introduced params for using Thrift-over-HTTPS. |  Minor | documentation, Thrift | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12704](https://issues.apache.org/jira/browse/HBASE-12704) | Add demo client which uses doAs functionality on Thrift-over-HTTPS. |  Minor | Thrift | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12695](https://issues.apache.org/jira/browse/HBASE-12695) | JDK 1.8 compilation broken |  Critical | build | Elliott Clark | Esteban Gutierrez |
| [HBASE-12679](https://issues.apache.org/jira/browse/HBASE-12679) | Add HBaseInterfaceAudience.TOOLS and move some of the Public classes to LimitedPrivate |  Major | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-12648](https://issues.apache.org/jira/browse/HBASE-12648) | Document per cell TTLs |  Minor | documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-12528](https://issues.apache.org/jira/browse/HBASE-12528) | Document the newly introduced params for providing principal and keytabs. |  Minor | documentation | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12523](https://issues.apache.org/jira/browse/HBASE-12523) | Update checkstyle plugin rules to match our use |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-12518](https://issues.apache.org/jira/browse/HBASE-12518) | Task 4 polish. Remove CM#{get,delete}Connection |  Major | test | stack | stack |
| [HBASE-12425](https://issues.apache.org/jira/browse/HBASE-12425) | Document the phases of the split transaction |  Major | documentation | Andrew Purtell | Misty Stanley-Jones |
| [HBASE-12400](https://issues.apache.org/jira/browse/HBASE-12400) | Fix refguide so it does connection#getTable rather than new HTable everywhere: first cut! |  Major | documentation | stack | stack |
| [HBASE-12379](https://issues.apache.org/jira/browse/HBASE-12379) | Try surefire 2.18-SNAPSHOT |  Major | test | stack | stack |
| [HBASE-12363](https://issues.apache.org/jira/browse/HBASE-12363) | Improve how KEEP\_DELETED\_CELLS works with MIN\_VERSIONS |  Major | regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12355](https://issues.apache.org/jira/browse/HBASE-12355) | Update maven plugins |  Major | build | stack | stack |
| [HBASE-12354](https://issues.apache.org/jira/browse/HBASE-12354) | Update dependencies in time for 1.0 release |  Major | dependencies | stack | stack |
| [HBASE-12345](https://issues.apache.org/jira/browse/HBASE-12345) | Unsafe based ByteBuffer Comparator |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-12313](https://issues.apache.org/jira/browse/HBASE-12313) | Redo the hfile index length optimization so cell-based rather than serialized KV key |  Major | regionserver, Scanners | stack | stack |
| [HBASE-12297](https://issues.apache.org/jira/browse/HBASE-12297) | Support DBB usage in Bloom and HFileIndex area |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-12288](https://issues.apache.org/jira/browse/HBASE-12288) | Support DirectByteBuffer usage in DataBlock Encoding area |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-12210](https://issues.apache.org/jira/browse/HBASE-12210) | Avoid KeyValue in Prefix Tree |  Major | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12202](https://issues.apache.org/jira/browse/HBASE-12202) | Support DirectByteBuffer usage in HFileBlock |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-12115](https://issues.apache.org/jira/browse/HBASE-12115) | Fix NumberFormat Exception in TableInputFormatBase. |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12112](https://issues.apache.org/jira/browse/HBASE-12112) | Avoid KeyValueUtil#ensureKeyValue some more simple cases |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12111](https://issues.apache.org/jira/browse/HBASE-12111) | Remove deprecated APIs from Mutation(s) |  Major | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-12104](https://issues.apache.org/jira/browse/HBASE-12104) | Some optimization and bugfix for HTableMultiplexer |  Major | Client | Yi Deng | Yi Deng |
| [HBASE-12086](https://issues.apache.org/jira/browse/HBASE-12086) | Fix bugs in HTableMultiplexer |  Minor | Client | @deprecated Yi Deng | Yi Deng |
| [HBASE-12084](https://issues.apache.org/jira/browse/HBASE-12084) | Remove deprecated APIs from Result |  Major | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-12082](https://issues.apache.org/jira/browse/HBASE-12082) | Find a way to set timestamp on Cells on the server |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12079](https://issues.apache.org/jira/browse/HBASE-12079) | Deprecate KeyValueUtil#ensureKeyValue(s) |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12075](https://issues.apache.org/jira/browse/HBASE-12075) | Preemptive Fast Fail |  Major | Client | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12059](https://issues.apache.org/jira/browse/HBASE-12059) | Create hbase-annotations module |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-12050](https://issues.apache.org/jira/browse/HBASE-12050) | Avoid KeyValueUtil#ensureKeyValue from DefaultMemStore |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12048](https://issues.apache.org/jira/browse/HBASE-12048) | Remove deprecated APIs from Filter |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12047](https://issues.apache.org/jira/browse/HBASE-12047) | Avoid usage of KeyValueUtil#ensureKeyValue in simple cases |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-11997](https://issues.apache.org/jira/browse/HBASE-11997) | CopyTable with bulkload |  Minor | Client | @deprecated Yi Deng | Yi Deng |
| [HBASE-11941](https://issues.apache.org/jira/browse/HBASE-11941) | Rebuild site because of major structural changes to HTML |  Major | build, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11934](https://issues.apache.org/jira/browse/HBASE-11934) | Support KeyValueCodec to encode non KeyValue cells. |  Critical | Performance, regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-11930](https://issues.apache.org/jira/browse/HBASE-11930) | Document new permission check to roll WAL writer |  Major | documentation, regionserver, security, wal | Andrew Purtell | Jerry He |
| [HBASE-11920](https://issues.apache.org/jira/browse/HBASE-11920) | Add CP hooks for ReplicationEndPoint |  Major | Coprocessors, Replication | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11919](https://issues.apache.org/jira/browse/HBASE-11919) | Remove the deprecated pre/postGet CP hook |  Major | Coprocessors, regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-11917](https://issues.apache.org/jira/browse/HBASE-11917) | Deprecate / Remove HTableUtil |  Major | Client, Usability | Enis Soztutar | stack |
| [HBASE-11872](https://issues.apache.org/jira/browse/HBASE-11872) | Avoid usage of KeyValueUtil#ensureKeyValue from Compactor |  Major | regionserver | Anoop Sam John | Anoop Sam John |
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
| [HBASE-11607](https://issues.apache.org/jira/browse/HBASE-11607) | Document HBase metrics |  Major | documentation, metrics | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11573](https://issues.apache.org/jira/browse/HBASE-11573) | Report age on eviction |  Major | BlockCache | stack | stack |
| [HBASE-11559](https://issues.apache.org/jira/browse/HBASE-11559) | Add dumping of DATA block usage to the BlockCache JSON report. |  Major | metrics | stack | stack |
| [HBASE-11533](https://issues.apache.org/jira/browse/HBASE-11533) | AsciiDoctor POC |  Minor | build, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11520](https://issues.apache.org/jira/browse/HBASE-11520) | Simplify offheap cache config by removing the confusing "hbase.bucketcache.percentage.in.combinedcache" |  Major | io | stack | stack |
| [HBASE-11508](https://issues.apache.org/jira/browse/HBASE-11508) | Document changes to IPC config parameters from HBASE-11492 |  Major | regionserver | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11483](https://issues.apache.org/jira/browse/HBASE-11483) | Check the rest of the book for new XML validity errors and fix |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11472](https://issues.apache.org/jira/browse/HBASE-11472) | Remove ZKTableStateClientSideReader class |  Major | Client, Consensus, Zookeeper | Mikhail Antonov | Andrey Stepachev |
| [HBASE-11471](https://issues.apache.org/jira/browse/HBASE-11471) | Move TableStateManager and ZkTableStateManager and Server to hbase-server |  Major | Client, Consensus, Zookeeper | Mikhail Antonov | Alex Newman |
| [HBASE-11372](https://issues.apache.org/jira/browse/HBASE-11372) | Remove SlabCache |  Major | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11323](https://issues.apache.org/jira/browse/HBASE-11323) | BucketCache all the time! |  Major | io | stack | stack |
| [HBASE-11318](https://issues.apache.org/jira/browse/HBASE-11318) | Classes in security subpackages missing @InterfaceAudience annotations. |  Major | security | Jonathan Hsieh | Andrew Purtell |
| [HBASE-11178](https://issues.apache.org/jira/browse/HBASE-11178) | Remove deprecation annotations from mapred namespace |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11072](https://issues.apache.org/jira/browse/HBASE-11072) | Abstract WAL splitting from ZK |  Major | Consensus, Zookeeper | Mikhail Antonov | Sergey Soldatov |
| [HBASE-11059](https://issues.apache.org/jira/browse/HBASE-11059) | ZK-less region assignment |  Major | master, Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10841](https://issues.apache.org/jira/browse/HBASE-10841) | Scan,Get,Put,Delete,etc setters should consistently return this |  Minor | Client, Usability | Nick Dimiduk | Enis Soztutar |
| [HBASE-10671](https://issues.apache.org/jira/browse/HBASE-10671) | Add missing InterfaceAudience annotations for classes in hbase-common and hbase-client modules |  Major | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-10378](https://issues.apache.org/jira/browse/HBASE-10378) | Divide HLog interface into User and Implementor specific interfaces |  Major | wal | Himanshu Vashishtha | Sean Busbey |
| [HBASE-8139](https://issues.apache.org/jira/browse/HBASE-8139) | Allow job names to be overridden |  Major | mapreduce, Usability | Nick Dimiduk | Ashish Singhi |
| [HBASE-7767](https://issues.apache.org/jira/browse/HBASE-7767) | Get rid of ZKTable, and table enable/disable state in ZK |  Major | Zookeeper | Enis Soztutar | Andrey Stepachev |
| [HBASE-2251](https://issues.apache.org/jira/browse/HBASE-2251) | PE defaults to 1k rows - uncommon use case, and easy to hit benchmarks |  Major | Performance | ryan rawson | stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10909](https://issues.apache.org/jira/browse/HBASE-10909) | Abstract out ZooKeeper usage in HBase - phase 1 |  Major | Consensus, Zookeeper | Mikhail Antonov | Mikhail Antonov |
| [HBASE-13964](https://issues.apache.org/jira/browse/HBASE-13964) | Skip region normalization for tables under namespace quota |  Major | Balancer, Usability | Mikhail Antonov | Ted Yu |
| [HBASE-13956](https://issues.apache.org/jira/browse/HBASE-13956) | Add myself as 1.1 release manager |  Trivial | site | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13948](https://issues.apache.org/jira/browse/HBASE-13948) | Expand hadoop2 versions built on the pre-commit |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13929](https://issues.apache.org/jira/browse/HBASE-13929) | make\_rc.sh publishes empty shaded artifacts |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13915](https://issues.apache.org/jira/browse/HBASE-13915) | Remove EOL HBase versions from java and hadoop prereq tables |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-13869](https://issues.apache.org/jira/browse/HBASE-13869) | Fix typo in HBase book |  Trivial | documentation | Vladimir Rodionov | Gabor Liptak |
| [HBASE-13799](https://issues.apache.org/jira/browse/HBASE-13799) | javadoc how Scan gets polluted when used; if you set attributes or ask for scan metrics |  Minor | documentation | stack | stack |
| [HBASE-13666](https://issues.apache.org/jira/browse/HBASE-13666) | book.pdf is not renamed during site build |  Major | site | Nick Dimiduk | Gabor Liptak |
| [HBASE-13660](https://issues.apache.org/jira/browse/HBASE-13660) | Add link to cloud bigtable schema modeling guide into our refguide |  Major | documentation | stack | stack |
| [HBASE-13586](https://issues.apache.org/jira/browse/HBASE-13586) | Update book on Hadoop and Java supported versions for 1.1.x |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13582](https://issues.apache.org/jira/browse/HBASE-13582) | Update docs for HTrace |  Minor | documentation | Sean Busbey | Lars Francke |
| [HBASE-13554](https://issues.apache.org/jira/browse/HBASE-13554) | Update book clarifying API stability guarantees |  Major | documentation | Josh Elser | Josh Elser |
| [HBASE-13487](https://issues.apache.org/jira/browse/HBASE-13487) | Doc KEEP\_DELETED\_CELLS |  Major | documentation | stack | stack |
| [HBASE-13361](https://issues.apache.org/jira/browse/HBASE-13361) | Remove or undeprecate {get\|set}ScannerCaching in HTable |  Minor | Client | Lars Francke | Lars Francke |
| [HBASE-13237](https://issues.apache.org/jira/browse/HBASE-13237) | Improve trademark marks on the hbase.apache.org homepage |  Minor | documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-13234](https://issues.apache.org/jira/browse/HBASE-13234) | Improve the obviousness of the download link on hbase.apache.org |  Minor | documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-13187](https://issues.apache.org/jira/browse/HBASE-13187) | Add ITBLL that exercises per CF flush |  Critical | integration tests | stack | Duo Zhang |
| [HBASE-13079](https://issues.apache.org/jira/browse/HBASE-13079) | Add an admonition to Scans example that the results scanner should be closed |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12701](https://issues.apache.org/jira/browse/HBASE-12701) | Document how to set the split policy on a given table |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12624](https://issues.apache.org/jira/browse/HBASE-12624) | Remove rename\_snapshot.rb from code as there is no equivalent renameSnapshot api in Admin class |  Minor | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12589](https://issues.apache.org/jira/browse/HBASE-12589) | Forward-port fix for TestFromClientSideWithCoprocessor.testMaxKeyValueSize |  Major | test | stack | stack |
| [HBASE-12516](https://issues.apache.org/jira/browse/HBASE-12516) | Clean up master so QA Bot is in known good state |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-12515](https://issues.apache.org/jira/browse/HBASE-12515) | update test-patch to use git |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-12466](https://issues.apache.org/jira/browse/HBASE-12466) | Document visibility scan label generator usage and behavior |  Major | documentation, security | Jerry He | Misty Stanley-Jones |
| [HBASE-12456](https://issues.apache.org/jira/browse/HBASE-12456) | Update surefire from 2.18-SNAPSHOT to 2.18 |  Major | test | stack | stack |
| [HBASE-12438](https://issues.apache.org/jira/browse/HBASE-12438) | Add  -Dsurefire.rerunFailingTestsCount=2 to patch build runs so flakies get rerun |  Major | test | stack | stack |
| [HBASE-12388](https://issues.apache.org/jira/browse/HBASE-12388) | Document that WALObservers don't get empty edits. |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-12381](https://issues.apache.org/jira/browse/HBASE-12381) | Add maven enforcer rules for build assumptions |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-12362](https://issues.apache.org/jira/browse/HBASE-12362) | Interim documentation of important master and regionserver metrics |  Major | documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-12250](https://issues.apache.org/jira/browse/HBASE-12250) | Adding an endpoint for updating the regionserver config |  Minor | regionserver | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12239](https://issues.apache.org/jira/browse/HBASE-12239) | Document hedged reads |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12180](https://issues.apache.org/jira/browse/HBASE-12180) | Fix and reenable TestRegionReplicaReplicationEndpoint |  Major | test | stack | Enis Soztutar |
| [HBASE-12168](https://issues.apache.org/jira/browse/HBASE-12168) | Document Rest gateway SPNEGO-based authentication for client |  Major | documentation, REST, security | Jerry He | Jerry He |
| [HBASE-11981](https://issues.apache.org/jira/browse/HBASE-11981) | Document how to find the units of measure for a given HBase metric |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11858](https://issues.apache.org/jira/browse/HBASE-11858) | Audit regionserver classes that are missing InterfaceAudience |  Minor | regionserver | Sean Busbey | Sean Busbey |
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
| [HBASE-11670](https://issues.apache.org/jira/browse/HBASE-11670) | Build PDF of Ref Guide |  Minor | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11666](https://issues.apache.org/jira/browse/HBASE-11666) | Enforce JDK7 javac for builds on branch-1 and master |  Minor | build, documentation | Sean Busbey | Sean Busbey |
| [HBASE-11619](https://issues.apache.org/jira/browse/HBASE-11619) | Remove unused test class from TestHLogSplit |  Trivial | wal | Sean Busbey | Mikhail Antonov |
| [HBASE-11600](https://issues.apache.org/jira/browse/HBASE-11600) | DataInputputStream and DoubleOutputStream are no longer being used |  Trivial | io | Shengzhe Yao | Shengzhe Yao |
| [HBASE-11459](https://issues.apache.org/jira/browse/HBASE-11459) | Add more doc on compression codecs, how to hook up native lib, lz4, etc. |  Minor | documentation | stack | stack |
| [HBASE-11317](https://issues.apache.org/jira/browse/HBASE-11317) | Expand unit testing to cover Mockito and MRUnit and give more examples |  Trivial | documentation | Mike Drob | Misty Stanley-Jones |
| [HBASE-10398](https://issues.apache.org/jira/browse/HBASE-10398) | HBase book updates for Replication after HBASE-10322 |  Major | documentation | Anoop Sam John | Misty Stanley-Jones |
| [HBASE-9004](https://issues.apache.org/jira/browse/HBASE-9004) | Fix Documentation around Minor compaction and ttl |  Major | documentation | Elliott Clark | Masatake Iwasaki |
| [HBASE-7126](https://issues.apache.org/jira/browse/HBASE-7126) | Update website with info on how to report security bugs |  Critical | documentation | Eli Collins | Misty Stanley-Jones |
| [HBASE-4593](https://issues.apache.org/jira/browse/HBASE-4593) | Design and document the official procedure for posting patches, commits, commit messages, etc. to smooth process and make integration with tools easier |  Major | documentation | Jonathan Gray | Misty Stanley-Jones |


