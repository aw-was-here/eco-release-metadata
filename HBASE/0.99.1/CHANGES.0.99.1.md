
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

## Release 0.99.1 - 2014-10-15

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12046](https://issues.apache.org/jira/browse/HBASE-12046) | HTD/HCD setters should be builder-style |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12099](https://issues.apache.org/jira/browse/HBASE-12099) | TestScannerModel fails if using jackson 1.9.13 |  Major | REST | Esteban Gutierrez | Esteban Gutierrez |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11995](https://issues.apache.org/jira/browse/HBASE-11995) | Use Connection and ConnectionFactory where possible |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12143](https://issues.apache.org/jira/browse/HBASE-12143) | Minor fix for Table code |  Minor | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12127](https://issues.apache.org/jira/browse/HBASE-12127) | Move the core Connection creation functionality into ConnectionFactory |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12133](https://issues.apache.org/jira/browse/HBASE-12133) | Add FastLongHistogram for metric computation |  Minor | metrics | Yi Deng | Yi Deng |
| [HBASE-11990](https://issues.apache.org/jira/browse/HBASE-11990) | Make setting the start and stop row for a specific prefix easier |  Major | Client | Niels Basjes |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12013](https://issues.apache.org/jira/browse/HBASE-12013) | Make region\_mover.rb support multiple regionservers per host |  Major | scripts, util | Patrick White | Patrick White |
| [HBASE-12010](https://issues.apache.org/jira/browse/HBASE-12010) | Use TableName.META\_TABLE\_NAME instead of indirectly from HTableDescriptor |  Trivial | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12021](https://issues.apache.org/jira/browse/HBASE-12021) | Hbase shell does not respect the HBASE\_OPTS set by the user in console |  Minor | documentation, Operability, shell | nijel | Ashish Singhi |
| [HBASE-12032](https://issues.apache.org/jira/browse/HBASE-12032) | Script to stop regionservers via RPC |  Major | scripts, util | Patrick White | Patrick White |
| [HBASE-11796](https://issues.apache.org/jira/browse/HBASE-11796) | Add client support for atomic checkAndMutate |  Major | Client | Danny Purcell | Srikanth Srungarapu |
| [HBASE-11948](https://issues.apache.org/jira/browse/HBASE-11948) | graceful\_stop.sh should use hbase-daemon.sh when executed on the decomissioned node |  Minor | scripts | Sebastien Barrier | Sebastien Barrier |
| [HBASE-12090](https://issues.apache.org/jira/browse/HBASE-12090) | Bytes: more Unsafe, more Faster |  Major | Performance | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-12118](https://issues.apache.org/jira/browse/HBASE-12118) | Explain how to grant permission to a namespace in grant command usage |  Minor | documentation, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-11879](https://issues.apache.org/jira/browse/HBASE-11879) | Change TableInputFormatBase to take interface arguments |  Major | . | Carter | Solomon Duskis |
| [HBASE-12049](https://issues.apache.org/jira/browse/HBASE-12049) | Help for alter command is a bit confusing |  Trivial | documentation, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-10153](https://issues.apache.org/jira/browse/HBASE-10153) | improve VerifyReplication to compute BADROWS more accurately |  Major | Operability, Replication | Jianwei Cui | Jianwei Cui |
| [HBASE-11907](https://issues.apache.org/jira/browse/HBASE-11907) | Use the joni byte[] regex engine in place of j.u.regex in RegexStringComparator |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12011](https://issues.apache.org/jira/browse/HBASE-12011) | Add namespace column during display of user tables |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-10411](https://issues.apache.org/jira/browse/HBASE-10411) | [Book] Add a kerberos 'request is a replay (34)' issue at troubleshooting section |  Minor | documentation, security | takeshi.miao | takeshi.miao |
| [HBASE-12212](https://issues.apache.org/jira/browse/HBASE-12212) | HBaseTestingUtility#waitUntilAllRegionsAssigned should wait for RegionStates |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-12176](https://issues.apache.org/jira/browse/HBASE-12176) | WALCellCodec Encoders support for non-KeyValue Cells |  Major | . | Anoop Sam John | Anoop Sam John |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11994](https://issues.apache.org/jira/browse/HBASE-11994) | PutCombiner floods the M/R log with repeated log messages. |  Major | mapreduce | Aditya Kishore | Aditya Kishore |
| [HBASE-11991](https://issues.apache.org/jira/browse/HBASE-11991) | Region states may be out of sync |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11266](https://issues.apache.org/jira/browse/HBASE-11266) | Remove shaded references to logger |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-10314](https://issues.apache.org/jira/browse/HBASE-10314) | Add Chaos Monkey that doesn't touch the master |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-12025](https://issues.apache.org/jira/browse/HBASE-12025) | TestHttpServerLifecycle.testStartedServerWithRequestLog hangs frequently |  Major | test | stack | stack |
| [HBASE-12007](https://issues.apache.org/jira/browse/HBASE-12007) | StochasticBalancer should avoid putting user regions on master |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10757](https://issues.apache.org/jira/browse/HBASE-10757) | Change HTable class doc so it sends people to HCM getting instances |  Critical | . | stack | stack |
| [HBASE-11145](https://issues.apache.org/jira/browse/HBASE-11145) | UNEXPECTED!!! when HLog sync: Queue full |  Critical | wal | Anoop Sam John | stack |
| [HBASE-11982](https://issues.apache.org/jira/browse/HBASE-11982) | Bootstraping hbase:meta table creates a WAL file in region dir |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11906](https://issues.apache.org/jira/browse/HBASE-11906) | Meta data loss with distributed log replay |  Major | . | Jimmy Xiang | Jeffrey Zhong |
| [HBASE-11988](https://issues.apache.org/jira/browse/HBASE-11988) | AC/VC system table create on postStartMaster fails too often in test |  Critical | . | Anoop Sam John | stack |
| [HBASE-11974](https://issues.apache.org/jira/browse/HBASE-11974) | When a disabled table is scanned, NotServingRegionException is thrown instead of TableNotEnabledException |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12043](https://issues.apache.org/jira/browse/HBASE-12043) | REST server should respond with FORBIDDEN(403) code on AccessDeniedException |  Minor | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-12044](https://issues.apache.org/jira/browse/HBASE-12044) | REST delete operation should not retry disableTable for DoNotRetryIOException |  Minor | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-12045](https://issues.apache.org/jira/browse/HBASE-12045) | REST proxy users configuration in hbase-site.xml is ignored |  Major | . | Aditya Kishore | Aditya Kishore |
| [HBASE-12024](https://issues.apache.org/jira/browse/HBASE-12024) | Fix javadoc warning |  Trivial | documentation | Matteo Bertozzi | Anoop Sam John |
| [HBASE-12067](https://issues.apache.org/jira/browse/HBASE-12067) | Remove deprecated metrics classes. |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-12064](https://issues.apache.org/jira/browse/HBASE-12064) | hbase.master.balancer.stochastic.numRegionLoadsToRemember is not used |  Minor | Balancer | Junegunn Choi | Junegunn Choi |
| [HBASE-12056](https://issues.apache.org/jira/browse/HBASE-12056) | RPC logging too much in DEBUG mode |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10748](https://issues.apache.org/jira/browse/HBASE-10748) | hbase-daemon.sh fails to execute with 'sh' command |  Major | scripts | Ashish Singhi | Ashish Singhi |
| [HBASE-12054](https://issues.apache.org/jira/browse/HBASE-12054) | bad state after NamespaceUpgrade with reserved table names |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11405](https://issues.apache.org/jira/browse/HBASE-11405) | Multiple invocations of hbck in parallel disables balancer permanently |  Major | Balancer, hbck | bharath v | bharath v |
| [HBASE-12041](https://issues.apache.org/jira/browse/HBASE-12041) | AssertionError in HFilePerformanceEvaluation.UniformRandomReadBenchmark |  Major | . | Jean-Marc Spaggiari | stack |
| [HBASE-12052](https://issues.apache.org/jira/browse/HBASE-12052) | BulkLoad Failed due to no write permission on input files |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12019](https://issues.apache.org/jira/browse/HBASE-12019) | hbase-daemon.sh overwrite HBASE\_ROOT\_LOGGER and HBASE\_SECURITY\_LOGGER variables |  Minor | scripts | Sebastien Barrier | Sebastien Barrier |
| [HBASE-12034](https://issues.apache.org/jira/browse/HBASE-12034) | If I kill single RS in branch-1, all regions end up on Master! |  Critical | master | stack | Jimmy Xiang |
| [HBASE-12042](https://issues.apache.org/jira/browse/HBASE-12042) | Replace internal uses of HTable(Configuration, String) with HTable(Configuration, TableName) |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12098](https://issues.apache.org/jira/browse/HBASE-12098) | User granted namespace table create permissions can't create a table |  Critical | Client, security | Dima Spivak | Srikanth Srungarapu |
| [HBASE-12119](https://issues.apache.org/jira/browse/HBASE-12119) | Master regionserver web UI NOT\_FOUND |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12038](https://issues.apache.org/jira/browse/HBASE-12038) | Replace internal uses of signatures with byte[] and String tableNames to use the TableName equivalents. |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12123](https://issues.apache.org/jira/browse/HBASE-12123) | Failed assertion in BucketCache after HBASE-11331 |  Major | regionserver | Enis Soztutar | Nick Dimiduk |
| [HBASE-12134](https://issues.apache.org/jira/browse/HBASE-12134) | publish\_website.sh script is too optimistic |  Major | scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12135](https://issues.apache.org/jira/browse/HBASE-12135) | Website is broken |  Blocker | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12095](https://issues.apache.org/jira/browse/HBASE-12095) | SecureWALCellCodec should handle the case where encryption is disabled |  Major | . | Ashish Singhi | Ted Yu |
| [HBASE-12139](https://issues.apache.org/jira/browse/HBASE-12139) | StochasticLoadBalancer doesn't work on large lightly loaded clusters |  Critical | Balancer, master | Elliott Clark | Elliott Clark |
| [HBASE-11804](https://issues.apache.org/jira/browse/HBASE-11804) | Raise default heap size if unspecified |  Major | scripts | Elliott Clark | Elliott Clark |
| [HBASE-12130](https://issues.apache.org/jira/browse/HBASE-12130) | HBASE-11980 calls hflush and hsync doing near double the syncing work |  Critical | . | stack | stack |
| [HBASE-12145](https://issues.apache.org/jira/browse/HBASE-12145) | Fix javadoc and findbugs so new folks aren't freaked when they see them |  Major | . | stack | stack |
| [HBASE-12065](https://issues.apache.org/jira/browse/HBASE-12065) |  Import tool is not restoring multiple DeleteFamily markers of a row |  Minor | util | Maddineni Sukumar | Maddineni Sukumar |
| [HBASE-12078](https://issues.apache.org/jira/browse/HBASE-12078) | Missing Data when scanning using PREFIX\_TREE DATA-BLOCK-ENCODING |  Critical | . | Duo Zhang | Duo Zhang |
| [HBASE-12120](https://issues.apache.org/jira/browse/HBASE-12120) | HBase shell doesn't allow deleting of a cell by user with W-only permissions to it |  Major | shell | Dima Spivak | Srikanth Srungarapu |
| [HBASE-12140](https://issues.apache.org/jira/browse/HBASE-12140) | Add ConnectionFactory.createConnection() to create using default HBaseConfiguration. |  Major | Client | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-12153](https://issues.apache.org/jira/browse/HBASE-12153) | Fixing TestReplicaWithCluster |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12158](https://issues.apache.org/jira/browse/HBASE-12158) | TestHttpServerLifecycle.testStartedServerWithRequestLog goes zombie on occasion |  Major | test | stack | stack |
| [HBASE-12149](https://issues.apache.org/jira/browse/HBASE-12149) | TestRegionPlacement is failing undeterministically |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12160](https://issues.apache.org/jira/browse/HBASE-12160) | Make Surefire's argLine configurable in the command line |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12151](https://issues.apache.org/jira/browse/HBASE-12151) | Make dev scripts executable |  Minor | scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12164](https://issues.apache.org/jira/browse/HBASE-12164) | Check for presence of user Id in SecureBulkLoadEndpoint#secureBulkLoadHFiles() is inaccurate |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12122](https://issues.apache.org/jira/browse/HBASE-12122) | Try not to assign user regions to master all the time |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12136](https://issues.apache.org/jira/browse/HBASE-12136) | Race condition between client adding tableCF replication znode and  server triggering TableCFsTracker |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-12167](https://issues.apache.org/jira/browse/HBASE-12167) | NPE in AssignmentManager |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12156](https://issues.apache.org/jira/browse/HBASE-12156) | TableName cache isn't used for one of valueOf methods. |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12166](https://issues.apache.org/jira/browse/HBASE-12166) | TestDistributedLogSplitting.testMasterStartsUpWithLogReplayWork |  Major | test, wal | stack | Jimmy Xiang |
| [HBASE-12137](https://issues.apache.org/jira/browse/HBASE-12137) | Alter table add cf doesn't do compression test |  Major | master | Virag Kothari | Virag Kothari |
| [HBASE-8808](https://issues.apache.org/jira/browse/HBASE-8808) | Use Jacoco to generate Unit Test coverage reports |  Trivial | build | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12124](https://issues.apache.org/jira/browse/HBASE-12124) | Closed region could stay closed if master stops at bad time |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12146](https://issues.apache.org/jira/browse/HBASE-12146) | RegionServerTracker should escape data in log messages |  Trivial | . | Lars Hofhansl | stack |
| [HBASE-11890](https://issues.apache.org/jira/browse/HBASE-11890) | HBase REST Client is hard coded to http protocol |  Major | Client | Eric Yang | Qiang Tian |
| [HBASE-12184](https://issues.apache.org/jira/browse/HBASE-12184) | ServerShutdownHandler throws NPE |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6994](https://issues.apache.org/jira/browse/HBASE-6994) | minor doc update about DEFAULT\_ACCEPTABLE\_FACTOR |  Minor | documentation | Liang Xie | Liang Xie |
| [HBASE-9005](https://issues.apache.org/jira/browse/HBASE-9005) | Improve documentation around KEEP\_DELETED\_CELLS, time range scans, and delete markers |  Minor | documentation | Lars Hofhansl | Misty Stanley-Jones |
| [HBASE-11815](https://issues.apache.org/jira/browse/HBASE-11815) | Flush and compaction could just close the tmp writer if there is an exception |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12106](https://issues.apache.org/jira/browse/HBASE-12106) | Move test annotations to test artifact |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12191](https://issues.apache.org/jira/browse/HBASE-12191) | Make TestCacheOnWrite faster. |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12196](https://issues.apache.org/jira/browse/HBASE-12196) | SSH should retry in case failed to assign regions |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12199](https://issues.apache.org/jira/browse/HBASE-12199) | Make TestAtomicOperation and TestEncodedSeekers faster |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-8936](https://issues.apache.org/jira/browse/HBASE-8936) | Fixing TestSplitLogWorker while running Jacoco tests. |  Trivial | . | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12181](https://issues.apache.org/jira/browse/HBASE-12181) | Some tests create a table and try to use it before regions get assigned |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-12206](https://issues.apache.org/jira/browse/HBASE-12206) | NPE in RSRpcServices |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12200](https://issues.apache.org/jira/browse/HBASE-12200) | When an RPC server handler thread dies, throw exception |  Minor | regionserver | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-12209](https://issues.apache.org/jira/browse/HBASE-12209) | NPE in HRegionServer#getLastSequenceId |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12218](https://issues.apache.org/jira/browse/HBASE-12218) | Make HBaseCommonTestingUtil#deleteDir try harder |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12109](https://issues.apache.org/jira/browse/HBASE-12109) | user\_permission command for namespace does not return correct result |  Minor | shell | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-12165](https://issues.apache.org/jira/browse/HBASE-12165) | TestEndToEndSplitTransaction.testFromClientSideWhileSplitting fails |  Major | test | stack | stack |
| [HBASE-12198](https://issues.apache.org/jira/browse/HBASE-12198) | Fix the bug of not updating location cache |  Minor | Client | Yi Deng | Yi Deng |
| [HBASE-12183](https://issues.apache.org/jira/browse/HBASE-12183) | FuzzyRowFilter doesn't support reverse scans |  Major | Filters | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12197](https://issues.apache.org/jira/browse/HBASE-12197) | Move REST |  Major | REST | Elliott Clark | Elliott Clark |
| [HBASE-11394](https://issues.apache.org/jira/browse/HBASE-11394) | Replication can have data loss if peer id contains hyphen "-" |  Major | . | Enis Soztutar | Talat UYARER |
| [HBASE-12126](https://issues.apache.org/jira/browse/HBASE-12126) | Region server coprocessor endpoint |  Major | Coprocessors | Virag Kothari | Virag Kothari |
| [HBASE-12170](https://issues.apache.org/jira/browse/HBASE-12170) | TestReplicaWithCluster.testReplicaAndReplication timeouts |  Major | test | stack | stack |
| [HBASE-12465](https://issues.apache.org/jira/browse/HBASE-12465) | HBase master start fails due to incorrect file creations |  Major | master | Biju Nair | Alicia Ying Shu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11798](https://issues.apache.org/jira/browse/HBASE-11798) | TestBucketWriterThread may hang due to WriterThread stopping prematurely |  Major | . | Alex Newman | Alex Newman |
| [HBASE-12055](https://issues.apache.org/jira/browse/HBASE-12055) | TestBucketWriterThread hangs flakily based on timing |  Major | . | Enis Soztutar | Nick Dimiduk |
| [HBASE-12008](https://issues.apache.org/jira/browse/HBASE-12008) | Remove IntegrationTestImportTsv#testRunFromOutputCommitter |  Minor | mapreduce, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11838](https://issues.apache.org/jira/browse/HBASE-11838) | Enable PREFIX\_TREE in integration tests |  Minor | test | Jimmy Xiang | Jimmy Xiang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11738](https://issues.apache.org/jira/browse/HBASE-11738) | Document improvements to LoadTestTool and PerformanceEvaluation |  Minor | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11874](https://issues.apache.org/jira/browse/HBASE-11874) | Support Cell to be passed to StoreFile.Writer rather than KeyValue |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11917](https://issues.apache.org/jira/browse/HBASE-11917) | Deprecate / Remove HTableUtil |  Major | Client, Usability | Enis Soztutar | stack |
| [HBASE-11872](https://issues.apache.org/jira/browse/HBASE-11872) | Avoid usage of KeyValueUtil#ensureKeyValue from Compactor |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12047](https://issues.apache.org/jira/browse/HBASE-12047) | Avoid usage of KeyValueUtil#ensureKeyValue in simple cases |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12062](https://issues.apache.org/jira/browse/HBASE-12062) | Fix usage of Collections.toArray |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12023](https://issues.apache.org/jira/browse/HBASE-12023) | HRegion.applyFamilyMapToMemstore creates too many iterator objects. |  Minor | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-12059](https://issues.apache.org/jira/browse/HBASE-12059) | Create hbase-annotations module |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-12068](https://issues.apache.org/jira/browse/HBASE-12068) | [Branch-1] Avoid need to always do KeyValueUtil#ensureKeyValue for Filter transformCell |  Major | Filters | Anoop Sam John | Anoop Sam John |
| [HBASE-12076](https://issues.apache.org/jira/browse/HBASE-12076) | Move InterfaceAudience imports to hbase-annotations |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12077](https://issues.apache.org/jira/browse/HBASE-12077) | FilterLists create many ArrayList$Itr objects per row. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12050](https://issues.apache.org/jira/browse/HBASE-12050) | Avoid KeyValueUtil#ensureKeyValue from DefaultMemStore |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12069](https://issues.apache.org/jira/browse/HBASE-12069) | Finish making HFile.Writer Cell-centric; undo APIs that expect KV serializations. |  Major | . | stack | stack |
| [HBASE-12086](https://issues.apache.org/jira/browse/HBASE-12086) | Fix bugs in HTableMultiplexer |  Minor | Client | @deprecated Yi Deng | Yi Deng |
| [HBASE-11920](https://issues.apache.org/jira/browse/HBASE-11920) | Add CP hooks for ReplicationEndPoint |  Major | Coprocessors, Replication | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12110](https://issues.apache.org/jira/browse/HBASE-12110) | Fix .arcconfig |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12079](https://issues.apache.org/jira/browse/HBASE-12079) | Deprecate KeyValueUtil#ensureKeyValue(s) |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12082](https://issues.apache.org/jira/browse/HBASE-12082) | Find a way to set timestamp on Cells on the server |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12096](https://issues.apache.org/jira/browse/HBASE-12096) | In ZKSplitLog Coordination and AggregateImplementation replace enhaced for statements with basic for statement to avoid unnecessary object allocation |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-11178](https://issues.apache.org/jira/browse/HBASE-11178) | Remove deprecation annotations from mapred namespace |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12115](https://issues.apache.org/jira/browse/HBASE-12115) | Fix NumberFormat Exception in TableInputFormatBase. |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12112](https://issues.apache.org/jira/browse/HBASE-12112) | Avoid KeyValueUtil#ensureKeyValue some more simple cases |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-11930](https://issues.apache.org/jira/browse/HBASE-11930) | Document new permission check to roll WAL writer |  Major | documentation, regionserver, security, wal | Andrew Purtell | Jerry He |
| [HBASE-12104](https://issues.apache.org/jira/browse/HBASE-12104) | Some optimization and bugfix for HTableMultiplexer |  Major | Client | Yi Deng | Yi Deng |
| [HBASE-11980](https://issues.apache.org/jira/browse/HBASE-11980) | Change sync to hsync, remove unused InfoServer, and reference our httpserver instead of hadoops |  Major | . | stack | stack |
| [HBASE-11997](https://issues.apache.org/jira/browse/HBASE-11997) | CopyTable with bulkload |  Minor | Client | @deprecated Yi Deng | Yi Deng |
| [HBASE-12189](https://issues.apache.org/jira/browse/HBASE-12189) | Fix new issues found by coverity static analysis |  Major | . | Elliott Clark | stack |
| [HBASE-12210](https://issues.apache.org/jira/browse/HBASE-12210) | Avoid KeyValue in Prefix Tree |  Major | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11730](https://issues.apache.org/jira/browse/HBASE-11730) | Document release managers for non-deprecated branches |  Major | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-11761](https://issues.apache.org/jira/browse/HBASE-11761) | Add a FAQ item for updating a maven-managed application from 0.94 -\> 0.96+ |  Major | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-11960](https://issues.apache.org/jira/browse/HBASE-11960) | Provide a sample to show how to use Thrift client authentication |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9004](https://issues.apache.org/jira/browse/HBASE-9004) | Fix Documentation around Minor compaction and ttl |  Major | documentation | Elliott Clark | Masatake Iwasaki |
| [HBASE-11692](https://issues.apache.org/jira/browse/HBASE-11692) | Document how and why to do a manual region split |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11981](https://issues.apache.org/jira/browse/HBASE-11981) | Document how to find the units of measure for a given HBase metric |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |


