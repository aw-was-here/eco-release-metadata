
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
# Hadoop Changelog

## Release 1.0.0 - 2015-02-21

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12774](https://issues.apache.org/jira/browse/HBASE-12774) | Fix the inconsistent permission checks for bulkloading. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12731](https://issues.apache.org/jira/browse/HBASE-12731) | Heap occupancy based client pushback |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12709](https://issues.apache.org/jira/browse/HBASE-12709) | [mvn] Add unit test excludes command line flag to the build. |  Major | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10560](https://issues.apache.org/jira/browse/HBASE-10560) | Per cell TTLs |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-9531](https://issues.apache.org/jira/browse/HBASE-9531) | a command line (hbase shell) interface to retreive the replication metrics and show replication lag |  Major | Replication | Demai Ni | Ashish Singhi |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13008](https://issues.apache.org/jira/browse/HBASE-13008) | Better default for hbase.regionserver.regionSplitLimit parameter. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12997](https://issues.apache.org/jira/browse/HBASE-12997) | FSHLog should print pipeline on low replication |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-12979](https://issues.apache.org/jira/browse/HBASE-12979) | Use setters instead of return values for handing back statistics from HRegion methods |  Major | . | Andrew Purtell | Jesse Yates |
| [HBASE-12973](https://issues.apache.org/jira/browse/HBASE-12973) | RegionCoprocessorEnvironment should provide HRegionInfo directly |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12929](https://issues.apache.org/jira/browse/HBASE-12929) | TableMapReduceUtil.initTableMapperJob unnecessarily limits the types of outputKeyClass and outputValueClass |  Minor | mapreduce | Will Temperley |  |
| [HBASE-12899](https://issues.apache.org/jira/browse/HBASE-12899) | HBase should prefix htrace configuration keys with "hbase.htrace" rather than just "hbase." |  Major | . | Colin Patrick McCabe |  |
| [HBASE-12893](https://issues.apache.org/jira/browse/HBASE-12893) | IntegrationTestBigLinkedListWithVisibility should use buffered writes |  Minor | integration tests | Nick Dimiduk | Jingcheng Du |
| [HBASE-12825](https://issues.apache.org/jira/browse/HBASE-12825) | CallRunner exception messages should include destination host:port |  Minor | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12773](https://issues.apache.org/jira/browse/HBASE-12773) | Add warning message when user is trying to bulkload a large HFile. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12768](https://issues.apache.org/jira/browse/HBASE-12768) | Support enable cache\_data\_on\_write in Shell while creating table |  Major | shell | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12762](https://issues.apache.org/jira/browse/HBASE-12762) | Region with no hfiles will have the highest locality cost in LocalityCostFunction |  Minor | Balancer | cuijianwei | cuijianwei |
| [HBASE-12745](https://issues.apache.org/jira/browse/HBASE-12745) | Visibility Labels:  support visibility labels for user groups. |  Major | security | Jerry He | Jerry He |
| [HBASE-12736](https://issues.apache.org/jira/browse/HBASE-12736) | Let MetaScanner recycle a given Connection |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12720](https://issues.apache.org/jira/browse/HBASE-12720) | Make InternalScan LimitedPrivate |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-12719](https://issues.apache.org/jira/browse/HBASE-12719) | Add test WAL provider to quantify FSHLog overhead in the absence of HDFS. |  Minor | test, wal | Sean Busbey | Sean Busbey |
| [HBASE-12680](https://issues.apache.org/jira/browse/HBASE-12680) | Refactor base ClusterManager in HBase to not have the notion of sending a signal. |  Minor | integration tests | Yi Deng | Yi Deng |
| [HBASE-12678](https://issues.apache.org/jira/browse/HBASE-12678) | HBCK should print command line arguments |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12676](https://issues.apache.org/jira/browse/HBASE-12676) | Fix the misleading ASCII art in IntegrationTestBigLinkedList |  Trivial | documentation, integration tests | Yi Deng | Yi Deng |
| [HBASE-12668](https://issues.apache.org/jira/browse/HBASE-12668) | Adapt PayloadCarryingRpcController so it can also be used in async way |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12659](https://issues.apache.org/jira/browse/HBASE-12659) | Replace the method calls to grant and revoke in shell scripts with AccessControlClient |  Minor | security, shell | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12653](https://issues.apache.org/jira/browse/HBASE-12653) | Move TestRegionServerOnlineConfigChange & TestConfigurationManager to Junit4 tests |  Minor | test | Ashish Singhi | Ashish Singhi |
| [HBASE-12651](https://issues.apache.org/jira/browse/HBASE-12651) | Backport HBASE-12559 'Provide LoadBalancer with online configuration capability' to branch-1 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12641](https://issues.apache.org/jira/browse/HBASE-12641) | Grant all permissions of hbase zookeeper node to hbase superuser in a secure cluster |  Minor | Zookeeper | Liu Shaohui | Liu Shaohui |
| [HBASE-12640](https://issues.apache.org/jira/browse/HBASE-12640) | Add Thrift-over-HTTPS and doAs support for Thrift Server |  Major | Thrift | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12608](https://issues.apache.org/jira/browse/HBASE-12608) | region\_mover.rb does not log moving region count correctly when loading regions |  Minor | shell | cuijianwei | cuijianwei |
| [HBASE-12597](https://issues.apache.org/jira/browse/HBASE-12597) | Add RpcClient interface and enable changing of RpcClient implementation |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12583](https://issues.apache.org/jira/browse/HBASE-12583) | Allow creating reference files even the split row not lies in the storefile range if required |  Major | . | rajeshbabu | rajeshbabu |
| [HBASE-12373](https://issues.apache.org/jira/browse/HBASE-12373) | Provide a command to list visibility labels |  Minor | . | Jerry He | Jerry He |
| [HBASE-12204](https://issues.apache.org/jira/browse/HBASE-12204) | Backport HBASE-12016 'Reduce number of versions in Meta table. Make it configurable' to branch-1 |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12121](https://issues.apache.org/jira/browse/HBASE-12121) | maven release plugin does not allow for customized goals |  Minor | build | Enoch Hsu | Enoch Hsu |
| [HBASE-12071](https://issues.apache.org/jira/browse/HBASE-12071) | Separate out thread pool for Master \<-\> RegionServer communication |  Major | . | Sudarshan Kadambi | Stephen Yuan Jiang |
| [HBASE-11639](https://issues.apache.org/jira/browse/HBASE-11639) | [Visibility controller] Replicate the visibility of Cells as strings |  Major | Replication, security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11412](https://issues.apache.org/jira/browse/HBASE-11412) | Minimize a number of hbase-client transitive dependencies |  Minor | Client | Sergey Beryozkin | Sergey Beryozkin |
| [HBASE-11195](https://issues.apache.org/jira/browse/HBASE-11195) | Potentially improve block locality during major compaction for old regions |  Major | . | churro morales | churro morales |
| [HBASE-5699](https://issues.apache.org/jira/browse/HBASE-5699) | Run with \> 1 WAL in HRegionServer |  Critical | Performance, wal | binlijin | Sean Busbey |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13039](https://issues.apache.org/jira/browse/HBASE-13039) | Add patchprocess/* to .gitignore to fix builds of branches |  Major | build | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13038](https://issues.apache.org/jira/browse/HBASE-13038) | Fix the java doc warning continuously reported by Hadoop QA |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13037](https://issues.apache.org/jira/browse/HBASE-13037) | LoadIncrementalHFile should try to verify the content of unmatched families |  Minor | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13030](https://issues.apache.org/jira/browse/HBASE-13030) | [1.0.0 polish] Make ScanMetrics public again and align Put 'add' with Get, Delete, etc., addColumn |  Major | Operability | stack | stack |
| [HBASE-13028](https://issues.apache.org/jira/browse/HBASE-13028) | Cleanup mapreduce API changes |  Blocker | mapreduce | Sean Busbey | Sean Busbey |
| [HBASE-13027](https://issues.apache.org/jira/browse/HBASE-13027) | mapreduce.TableInputFormatBase should create its own Connection if needed |  Blocker | mapreduce | Sean Busbey | Sean Busbey |
| [HBASE-13026](https://issues.apache.org/jira/browse/HBASE-13026) | Wrong error message in case incorrect snapshot name OR Incorrect table name |  Minor | . | Bhupendra Kumar Jain | Bhupendra Kumar Jain |
| [HBASE-13010](https://issues.apache.org/jira/browse/HBASE-13010) | HFileOutputFormat2 partitioner's path is hard-coded as '/tmp' |  Major | mapreduce | Aditya Kishore | Aditya Kishore |
| [HBASE-13009](https://issues.apache.org/jira/browse/HBASE-13009) | HBase REST UI inaccessible |  Major | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-13003](https://issues.apache.org/jira/browse/HBASE-13003) | Get tests in TestHFileBlockIndex back |  Major | test | zhangduo | zhangduo |
| [HBASE-12998](https://issues.apache.org/jira/browse/HBASE-12998) | Compilation with Hdfs-2.7.0-SNAPSHOT is broken after HDFS-7647 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12996](https://issues.apache.org/jira/browse/HBASE-12996) | Reversed field on Filter should be transient |  Trivial | . | Ian Friedman | Ian Friedman |
| [HBASE-12991](https://issues.apache.org/jira/browse/HBASE-12991) | Use HBase 1.0 interfaces in hbase-rest |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12989](https://issues.apache.org/jira/browse/HBASE-12989) | region\_mover.rb unloadRegions method uses ArrayList concurrently resulting in errors |  Minor | scripts | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-12985](https://issues.apache.org/jira/browse/HBASE-12985) | Javadoc warning and findbugs fixes to get us green again |  Major | . | stack | stack |
| [HBASE-12984](https://issues.apache.org/jira/browse/HBASE-12984) | SSL cannot be used by the InfoPort after removing deprecated code in HBASE-10336 |  Blocker | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12978](https://issues.apache.org/jira/browse/HBASE-12978) | Region goes permanently offline (WAS: hbase:meta has a row missing hregioninfo and it causes my long-running job to fail) |  Blocker | . | stack | stack |
| [HBASE-12976](https://issues.apache.org/jira/browse/HBASE-12976) | Set default value for hbase.client.scanner.max.result.size |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12971](https://issues.apache.org/jira/browse/HBASE-12971) | Replication stuck due to large default value for replication.source.maxretriesmultiplier |  Major | hbase | Adrian Muraru | Lars Hofhansl |
| [HBASE-12966](https://issues.apache.org/jira/browse/HBASE-12966) | NPE in HMaster while recovering tables in Enabling state |  Major | master | ramkrishna.s.vasudevan | Andrey Stepachev |
| [HBASE-12962](https://issues.apache.org/jira/browse/HBASE-12962) | TestHFileBlockIndex.testBlockIndex() commented out during HBASE-10531 |  Major | test | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12958](https://issues.apache.org/jira/browse/HBASE-12958) | SSH doing hbase:meta get but hbase:meta not assigned |  Major | . | stack | stack |
| [HBASE-12956](https://issues.apache.org/jira/browse/HBASE-12956) | Binding to 0.0.0.0 is broken after HBASE-10569 |  Blocker | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12925](https://issues.apache.org/jira/browse/HBASE-12925) | Use acl cache for doing access control checks in prepare and clean phases of Bulkloading. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12919](https://issues.apache.org/jira/browse/HBASE-12919) | Compilation with Hadoop-2.4- is broken again |  Major | . | Enis Soztutar | Srikanth Srungarapu |
| [HBASE-12918](https://issues.apache.org/jira/browse/HBASE-12918) | Backport asciidoc changes |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12917](https://issues.apache.org/jira/browse/HBASE-12917) | HFilePerformanceEvaluation Scan tests fail with StackOverflowError due to recursive call in createCell function |  Major | hbase | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-12916](https://issues.apache.org/jira/browse/HBASE-12916) | No access control for replicating WAL entries |  Major | Replication | Liu Shaohui | Liu Shaohui |
| [HBASE-12915](https://issues.apache.org/jira/browse/HBASE-12915) | Disallow small scan with batching |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12904](https://issues.apache.org/jira/browse/HBASE-12904) | Threading issues in region\_mover.rb |  Major | . | Lars Hofhansl | Andrew Purtell |
| [HBASE-12901](https://issues.apache.org/jira/browse/HBASE-12901) | Possible deadlock while onlining a region and get region plan for other region run parallel |  Critical | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-12898](https://issues.apache.org/jira/browse/HBASE-12898) | Add in used undeclared dependencies |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-12897](https://issues.apache.org/jira/browse/HBASE-12897) | Minimum memstore size is a percentage |  Major | . | churro morales | churro morales |
| [HBASE-12892](https://issues.apache.org/jira/browse/HBASE-12892) | Add a class to allow taking a snapshot from the command line |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12886](https://issues.apache.org/jira/browse/HBASE-12886) | Correct tag option name in PerformanceEvaluation |  Minor | . | Jerry He | Jerry He |
| [HBASE-12881](https://issues.apache.org/jira/browse/HBASE-12881) | TestFastFail is not compatible with surefire.rerunFailingTestsCount |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12878](https://issues.apache.org/jira/browse/HBASE-12878) | Incorrect HFile path in TestHFilePerformance print output (fix for easier debugging) |  Trivial | test | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-12874](https://issues.apache.org/jira/browse/HBASE-12874) | LoadIncrementalHFiles should use unmanaged connection |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12864](https://issues.apache.org/jira/browse/HBASE-12864) | IntegrationTestTableSnapshotInputFormat fails |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12863](https://issues.apache.org/jira/browse/HBASE-12863) | Master info port on RS UI is always 0 |  Major | . | Enis Soztutar | zhangduo |
| [HBASE-12862](https://issues.apache.org/jira/browse/HBASE-12862) | Uppercase "wals" in RegionServer webUI |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12847](https://issues.apache.org/jira/browse/HBASE-12847) | TestZKLessSplitOnCluster frequently times out in 0.98 builds |  Major | . | Andrew Purtell | Rajeshbabu Chintaguntla |
| [HBASE-12844](https://issues.apache.org/jira/browse/HBASE-12844) | ServerManager.isServerReacable() should sleep between retries |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12837](https://issues.apache.org/jira/browse/HBASE-12837) | ReplicationAdmin leaks zk connections |  Major | Zookeeper | stack | stack |
| [HBASE-12835](https://issues.apache.org/jira/browse/HBASE-12835) | HBASE-12422 changed new HTable(Configuration) to not use managed Connections anymore |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12833](https://issues.apache.org/jira/browse/HBASE-12833) | [shell] table.rb leaks connections |  Major | shell | Nick Dimiduk | Solomon Duskis |
| [HBASE-12832](https://issues.apache.org/jira/browse/HBASE-12832) | Describe table from shell no longer shows Table's attributes, only CF attributes |  Critical | . | Enis Soztutar | Srikanth Srungarapu |
| [HBASE-12831](https://issues.apache.org/jira/browse/HBASE-12831) | Changing the set of vis labels a user has access to doesn't generate an audit log event |  Major | . | Sean Busbey | Ashish Singhi |
| [HBASE-12824](https://issues.apache.org/jira/browse/HBASE-12824) | CompressionTest fails with org.apache.hadoop.hbase.io.hfile.AbstractHFileReader$NotSeekedException: Not seeked to a key/value |  Critical | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12819](https://issues.apache.org/jira/browse/HBASE-12819) | ExportSnapshot doesn't close FileSystem instances |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12817](https://issues.apache.org/jira/browse/HBASE-12817) | Data missing while scanning using PREFIX\_TREE data block encoding |  Major | Scanners | zhangduo | zhangduo |
| [HBASE-12811](https://issues.apache.org/jira/browse/HBASE-12811) | [AccessController] NPE while scanning a table with user not having READ permission on the namespace |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12810](https://issues.apache.org/jira/browse/HBASE-12810) | Update to htrace-incubating |  Major | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12804](https://issues.apache.org/jira/browse/HBASE-12804) | ImportTsv fails to delete partition files created by it |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-12801](https://issues.apache.org/jira/browse/HBASE-12801) | Failed to truncate a table while maintaing binary region boundaries |  Minor | shell | Liu Shaohui | Liu Shaohui |
| [HBASE-12798](https://issues.apache.org/jira/browse/HBASE-12798) | Map Reduce jobs should not create Tables in setConf() |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12791](https://issues.apache.org/jira/browse/HBASE-12791) | HBase does not attempt to clean up an aborted split when the regionserver shutting down |  Critical | regionserver | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-12782](https://issues.apache.org/jira/browse/HBASE-12782) | ITBLL fails for me if generator does anything but 5M per maptask |  Critical | integration tests | stack | stack |
| [HBASE-12781](https://issues.apache.org/jira/browse/HBASE-12781) | thrift2 listen port will bind always to the passed command line address |  Major | Thrift | Pankaj Kumar | Pankaj Kumar |
| [HBASE-12771](https://issues.apache.org/jira/browse/HBASE-12771) | TestFailFast#testFastFail failing |  Major | test | stack | Manukranth Kolloju |
| [HBASE-12767](https://issues.apache.org/jira/browse/HBASE-12767) | Fix a StoreFileScanner NPE in reverse scan flow |  Major | regionserver, Scanners | Liang Xie | Liang Xie |
| [HBASE-12750](https://issues.apache.org/jira/browse/HBASE-12750) | getRequestsCount() in ClusterStatus returns total number of request |  Major | Client | Weichen Ye | Weichen Ye |
| [HBASE-12747](https://issues.apache.org/jira/browse/HBASE-12747) | IntegrationTestMTTR will OOME if launched with mvn verify |  Minor | . | Andrew Purtell | Abhishek Singh Chouhan |
| [HBASE-12746](https://issues.apache.org/jira/browse/HBASE-12746) | [1.0.0RC0] Distributed Log Replay is on (HBASE-12577 was insufficient) |  Critical | wal | stack | stack |
| [HBASE-12744](https://issues.apache.org/jira/browse/HBASE-12744) | hbase-default.xml lists hbase.regionserver.global.memstore.size twice |  Minor | . | Jerry He | Jerry He |
| [HBASE-12742](https://issues.apache.org/jira/browse/HBASE-12742) | ClusterStatusPublisher crashes with a IPv6 network interface. |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12741](https://issues.apache.org/jira/browse/HBASE-12741) | AccessController contains a javadoc issue |  Minor | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12740](https://issues.apache.org/jira/browse/HBASE-12740) | Improve performance of TestHBaseFsck |  Major | util | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12739](https://issues.apache.org/jira/browse/HBASE-12739) | Avoid too large identifier of ZooKeeperWatcher |  Minor | Zookeeper | Liu Shaohui | Liu Shaohui |
| [HBASE-12732](https://issues.apache.org/jira/browse/HBASE-12732) | Log messages in FileLink$FileLinkInputStream#tryOpen are reversed |  Trivial | hbase | Tobi Vollebregt |  |
| [HBASE-12728](https://issues.apache.org/jira/browse/HBASE-12728) | buffered writes substantially less useful after removal of HTablePool |  Blocker | hbase | Aaron Beppu | Nick Dimiduk |
| [HBASE-12718](https://issues.apache.org/jira/browse/HBASE-12718) | Convert TestAcidGuarantees from a unit test to an integration test |  Major | hbase, integration tests, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12716](https://issues.apache.org/jira/browse/HBASE-12716) | A bug in RegionSplitter.UniformSplit algorithm |  Major | regionserver | Weichen Ye | Weichen Ye |
| [HBASE-12715](https://issues.apache.org/jira/browse/HBASE-12715) | getLastSequenceId always returns -1 |  Major | wal | zhangduo | zhangduo |
| [HBASE-12711](https://issues.apache.org/jira/browse/HBASE-12711) | Fix new findbugs warnings in hbase-thrift module |  Minor | . | Ted Yu | Srikanth Srungarapu |
| [HBASE-12699](https://issues.apache.org/jira/browse/HBASE-12699) | undefined method `setAsyncLogFlush' exception thrown when setting DEFERRED\_LOG\_FLUSH=\>true |  Major | shell | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12697](https://issues.apache.org/jira/browse/HBASE-12697) | Don't use RegionLocationFinder if localityCost == 0 |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12696](https://issues.apache.org/jira/browse/HBASE-12696) | Possible NPE in HRegionFileSystem#splitStoreFile when skipStoreFileRangeCheck in splitPolicy return true |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-12694](https://issues.apache.org/jira/browse/HBASE-12694) | testTableExistsIfTheSpecifiedTableRegionIsSplitParent in TestSplitTransactionOnCluster class leaves regions in transition |  Minor | . | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-12692](https://issues.apache.org/jira/browse/HBASE-12692) | NPE from SnapshotManager#stop |  Minor | snapshots | Ashish Singhi | Ashish Singhi |
| [HBASE-12686](https://issues.apache.org/jira/browse/HBASE-12686) | Failures in split before PONR not clearing the daughter regions from regions in transition during rollback |  Blocker | Region Assignment | Rajeshbabu Chintaguntla | Vandana Ayyalasomayajula |
| [HBASE-12683](https://issues.apache.org/jira/browse/HBASE-12683) | Compilation with hadoop-2.7.0-SNAPSHOT is broken |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12681](https://issues.apache.org/jira/browse/HBASE-12681) | truncate\_preserve command fails with undefined method `getTable' error |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12675](https://issues.apache.org/jira/browse/HBASE-12675) | Use interface methods in shell scripts |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12674](https://issues.apache.org/jira/browse/HBASE-12674) | Add permission check to getNamespaceDescriptor() |  Major | master, security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12671](https://issues.apache.org/jira/browse/HBASE-12671) | HBASE-12652 broke branch-1 builds (TestAssignmentManager fails) |  Major | test | stack | stack |
| [HBASE-12666](https://issues.apache.org/jira/browse/HBASE-12666) | TestAssignmentManager hanging; add timeouts |  Major | test | stack | stack |
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
| [HBASE-12622](https://issues.apache.org/jira/browse/HBASE-12622) | user\_permission should require global admin to display global and ns permissions |  Major | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12618](https://issues.apache.org/jira/browse/HBASE-12618) | Add 'Namespace' to headers while displaying user permissions. |  Trivial | . | Srikanth Srungarapu | Ashish Singhi |
| [HBASE-12617](https://issues.apache.org/jira/browse/HBASE-12617) | Running IntegrationTestBigLinkedList against cluster getting not an instance of org.apache.hadoop.hbase.MiniHBaseCluster |  Major | . | stack | stack |
| [HBASE-12611](https://issues.apache.org/jira/browse/HBASE-12611) | Create autoCommit() method and remove clearBufferOnFail |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12607](https://issues.apache.org/jira/browse/HBASE-12607) | TestHBaseFsck#testParallelHbck fails running against hadoop 2.6.0 |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12585](https://issues.apache.org/jira/browse/HBASE-12585) | Fix refguide so it does hbase 1.0 style API everywhere with callout on how we used to do it in pre-1.0 |  Major | documentation | stack | Misty Stanley-Jones |
| [HBASE-12574](https://issues.apache.org/jira/browse/HBASE-12574) | Update replication metrics to not do so many map look ups. |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-12565](https://issues.apache.org/jira/browse/HBASE-12565) | Race condition in HRegion.batchMutate()  causes partial data to be written when region closes |  Major | Performance, regionserver | Scott Fines |  |
| [HBASE-12564](https://issues.apache.org/jira/browse/HBASE-12564) | consolidate the getTableDescriptors() semantic |  Minor | Client, master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12480](https://issues.apache.org/jira/browse/HBASE-12480) | Regions in FAILED\_OPEN/FAILED\_CLOSE should be processed on master failover |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-12467](https://issues.apache.org/jira/browse/HBASE-12467) | Master joins cluster but never completes initialization |  Major | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12454](https://issues.apache.org/jira/browse/HBASE-12454) | Setting didPerformCompaction early in HRegion#compact |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12431](https://issues.apache.org/jira/browse/HBASE-12431) | Use of getColumnLatestCell(byte[], int, int, byte[], int, int) is Not Thread Safe |  Major | Client | Jonathan Jarvis | Jingcheng Du |
| [HBASE-12422](https://issues.apache.org/jira/browse/HBASE-12422) | Use ConnectionFactory in HTable constructors |  Minor | Client | Solomon Duskis | stack |
| [HBASE-12393](https://issues.apache.org/jira/browse/HBASE-12393) | The regionserver web will throw exception if we disable block cache |  Minor | regionserver, UI | ChiaPing Tsai | ChiaPing Tsai |
| [HBASE-12348](https://issues.apache.org/jira/browse/HBASE-12348) | preModifyColumn and preDeleteColumn in AC denies user to perform its operation though it has required rights |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12339](https://issues.apache.org/jira/browse/HBASE-12339) | WAL performance evaluation tool doesn't roll logs |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-12270](https://issues.apache.org/jira/browse/HBASE-12270) | A bug in the bucket cache, with cache blocks on write enabled |  Critical | . | Khaled Elmeleegy | Liu Shaohui |
| [HBASE-12108](https://issues.apache.org/jira/browse/HBASE-12108) | HBaseConfiguration: set classloader before loading xml files |  Minor | Client | Aniket Bhatnagar |  |
| [HBASE-12070](https://issues.apache.org/jira/browse/HBASE-12070) | Add an option to hbck to fix ZK inconsistencies |  Major | hbck | Sudarshan Kadambi | Stephen Yuan Jiang |
| [HBASE-12028](https://issues.apache.org/jira/browse/HBASE-12028) | Abort the RegionServer, when it's handler threads die |  Major | regionserver | Sudarshan Kadambi | Alicia Ying Shu |
| [HBASE-11979](https://issues.apache.org/jira/browse/HBASE-11979) | Compaction progress reporting is wrong |  Minor | . | Andrew Purtell | Esteban Gutierrez |
| [HBASE-10528](https://issues.apache.org/jira/browse/HBASE-10528) | DefaultBalancer selects plans to move regions onto draining nodes |  Major | . | churro morales | churro morales |
| [HBASE-10499](https://issues.apache.org/jira/browse/HBASE-10499) | In write heavy scenario one of the regions does not get flushed causing RegionTooBusyException |  Critical | . | ramkrishna.s.vasudevan | Ted Yu |
| [HBASE-9910](https://issues.apache.org/jira/browse/HBASE-9910) | TestHFilePerformance and HFilePerformanceEvaluation should be merged in a single HFile performance test class. |  Major | Performance, test | Jean-Marc Spaggiari | Vikas Vishwakarma |
| [HBASE-9431](https://issues.apache.org/jira/browse/HBASE-9431) | Set  'hbase.bulkload.retries.number' to 10 as HBASE-8450 claims |  Major | . | stack | stack |
| [HBASE-8026](https://issues.apache.org/jira/browse/HBASE-8026) | HBase Shell docs for scan command does not reference VERSIONS |  Major | . | Jonathan Natkins | Amit Kabra |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12885](https://issues.apache.org/jira/browse/HBASE-12885) | Unit test for RAW / VERSIONS scanner specifications |  Minor | shell | Amit Kabra | Amit Kabra |
| [HBASE-12799](https://issues.apache.org/jira/browse/HBASE-12799) | ITAG fails with java.lang.RuntimeException if table does not exist |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12685](https://issues.apache.org/jira/browse/HBASE-12685) | TestSplitLogManager#testLogFilesAreArchived sometimes times out due to race condition |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12645](https://issues.apache.org/jira/browse/HBASE-12645) | HBaseTestingUtility is using ${$HOME} for rootDir |  Critical | test | Nick Dimiduk | Varun Saxena |
| [HBASE-12163](https://issues.apache.org/jira/browse/HBASE-12163) | Move test annotation classes to the same package as in master |  Trivial | . | Enis Soztutar | Nick Dimiduk |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12980](https://issues.apache.org/jira/browse/HBASE-12980) | Delete of a table may not clean all rows from hbase:meta |  Major | Operability | stack | stack |
| [HBASE-12926](https://issues.apache.org/jira/browse/HBASE-12926) | Backport HBASE-12688 (Update site with a bootstrap-based UI) for HBASE-12918 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12802](https://issues.apache.org/jira/browse/HBASE-12802) | Remove unnecessary Table.flushCommits() |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12793](https://issues.apache.org/jira/browse/HBASE-12793) | [hbck] closeRegionSilentlyAndWait() should log cause of IOException and retry until  hbase.hbck.close.timeout expires |  Minor | hbck | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12779](https://issues.apache.org/jira/browse/HBASE-12779) | SplitTransaction: Add metrics |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12776](https://issues.apache.org/jira/browse/HBASE-12776) | SpliTransaction: Log number of files to be split |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12763](https://issues.apache.org/jira/browse/HBASE-12763) | Make it so there must be WALs for a server to be marked dead |  Major | wal | stack | stack |
| [HBASE-12735](https://issues.apache.org/jira/browse/HBASE-12735) | Refactor TAG so it can live as unit test and as an integration test |  Major | test | stack | Jonathan Hsieh |
| [HBASE-12730](https://issues.apache.org/jira/browse/HBASE-12730) | Backport HBASE-5162 (Basic client pushback mechanism) to branch-1 |  Major | Client, regionserver | Andrew Purtell | Andrew Purtell |
| [HBASE-12704](https://issues.apache.org/jira/browse/HBASE-12704) | Add demo client which uses doAs functionality on Thrift-over-HTTPS. |  Minor | Thrift | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12679](https://issues.apache.org/jira/browse/HBASE-12679) | Add HBaseInterfaceAudience.TOOLS and move some of the Public classes to LimitedPrivate |  Major | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-12606](https://issues.apache.org/jira/browse/HBASE-12606) | Sanity check encryption configuration before opening WAL or onlining regions |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12575](https://issues.apache.org/jira/browse/HBASE-12575) | Sanity check table coprocessor classes are loadable |  Major | . | Enis Soztutar | Andrew Purtell |
| [HBASE-12568](https://issues.apache.org/jira/browse/HBASE-12568) | Adopt Semantic Versioning and document it in the book |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12511](https://issues.apache.org/jira/browse/HBASE-12511) | namespace permissions - add support from table creation privilege in a namespace 'C' |  Blocker | . | Francis Liu | Huaiyu Zhu |
| [HBASE-12485](https://issues.apache.org/jira/browse/HBASE-12485) | Maintain SeqId monotonically increasing |  Major | . | Jeffrey Zhong | Jeffrey Zhong |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12834](https://issues.apache.org/jira/browse/HBASE-12834) | Promote ScanType to LimitedPrivate |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12788](https://issues.apache.org/jira/browse/HBASE-12788) | Promote Abortable to LimitedPrivate |  Major | . | Andrew Purtell | Enis Soztutar |
| [HBASE-12726](https://issues.apache.org/jira/browse/HBASE-12726) | Backport to branch-1.0 addendum for "Minimize a number of hbase-client transitive dependencies" |  Major | pom | stack |  |
| [HBASE-12724](https://issues.apache.org/jira/browse/HBASE-12724) | Upgrade the interface audience of RegionScanner from Private to LimitedPrivate |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12689](https://issues.apache.org/jira/browse/HBASE-12689) | Move version on from 0.99.2 to HBASE-1.0.0-SNAPSHOT |  Major | . | stack | stack |
| [HBASE-12625](https://issues.apache.org/jira/browse/HBASE-12625) | Deprecate certain methods in classes annotated with InterfaceAudience.Public in branch-1 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12624](https://issues.apache.org/jira/browse/HBASE-12624) | Remove rename\_snapshot.rb from code as there is no equivalent renameSnapshot api in Admin class |  Minor | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12567](https://issues.apache.org/jira/browse/HBASE-12567) | Track remaining issues for HBase-1.0 |  Blocker | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12493](https://issues.apache.org/jira/browse/HBASE-12493) | User class should provide a way to re-use existing token |  Major | . | Brock Noland | Gary Helmling |


