
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

## Release 0.98.7 - 2014-10-16

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12099](https://issues.apache.org/jira/browse/HBASE-12099) | TestScannerModel fails if using jackson 1.9.13 |  Major | REST | Esteban Gutierrez | Esteban Gutierrez |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11885](https://issues.apache.org/jira/browse/HBASE-11885) | Provide a Dockerfile to easily build and run HBase from source |  Major | . | Dima Spivak | Dima Spivak |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11877](https://issues.apache.org/jira/browse/HBASE-11877) | Make TableSplit more readable |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-11891](https://issues.apache.org/jira/browse/HBASE-11891) | Introduce HBaseInterfaceAudience level to denote class names that appear in configs. |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-11331](https://issues.apache.org/jira/browse/HBASE-11331) | [blockcache] lazy block decompression |  Major | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11845](https://issues.apache.org/jira/browse/HBASE-11845) | HFile tool should implement Tool, disable blockcache by default |  Minor | HFile | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11847](https://issues.apache.org/jira/browse/HBASE-11847) | HFile tool should be able to print block headers |  Minor | HFile | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11971](https://issues.apache.org/jira/browse/HBASE-11971) | [0.98] Deprecate KeyValue based APIs in WALEdit |  Critical | wal | Anoop Sam John | Anoop Sam John |
| [HBASE-11136](https://issues.apache.org/jira/browse/HBASE-11136) | Add permission check to roll WAL writer |  Minor | regionserver, security | Jerry He | Jerry He |
| [HBASE-12013](https://issues.apache.org/jira/browse/HBASE-12013) | Make region\_mover.rb support multiple regionservers per host |  Major | scripts, util | Patrick White | Patrick White |
| [HBASE-12021](https://issues.apache.org/jira/browse/HBASE-12021) | Hbase shell does not respect the HBASE\_OPTS set by the user in console |  Minor | documentation, Operability, shell | nijel | Ashish Singhi |
| [HBASE-12032](https://issues.apache.org/jira/browse/HBASE-12032) | Script to stop regionservers via RPC |  Major | scripts, util | Patrick White | Patrick White |
| [HBASE-11796](https://issues.apache.org/jira/browse/HBASE-11796) | Add client support for atomic checkAndMutate |  Major | Client | Danny Purcell | Srikanth Srungarapu |
| [HBASE-11948](https://issues.apache.org/jira/browse/HBASE-11948) | graceful\_stop.sh should use hbase-daemon.sh when executed on the decomissioned node |  Minor | scripts | Sebastien Barrier | Sebastien Barrier |
| [HBASE-12090](https://issues.apache.org/jira/browse/HBASE-12090) | Bytes: more Unsafe, more Faster |  Major | Performance | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-12118](https://issues.apache.org/jira/browse/HBASE-12118) | Explain how to grant permission to a namespace in grant command usage |  Minor | documentation, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-10153](https://issues.apache.org/jira/browse/HBASE-10153) | improve VerifyReplication to compute BADROWS more accurately |  Major | Operability, Replication | Jianwei Cui | Jianwei Cui |
| [HBASE-11907](https://issues.apache.org/jira/browse/HBASE-11907) | Use the joni byte[] regex engine in place of j.u.regex in RegexStringComparator |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12011](https://issues.apache.org/jira/browse/HBASE-12011) | Add namespace column during display of user tables |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12144](https://issues.apache.org/jira/browse/HBASE-12144) | Backport HBASE-10141 'instead of putting expired store files thru compaction, just archive them' to 0.98 |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12680](https://issues.apache.org/jira/browse/HBASE-12680) | Refactor base ClusterManager in HBase to not have the notion of sending a signal. |  Minor | integration tests | Yi Deng | Yi Deng |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11898](https://issues.apache.org/jira/browse/HBASE-11898) | CoprocessorHost.Environment should cache class loader instance |  Major | Coprocessors | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-11896](https://issues.apache.org/jira/browse/HBASE-11896) | LoadIncrementalHFiles fails in secure mode if the namespace is specified |  Major | . | Ashish Singhi |  |
| [HBASE-11772](https://issues.apache.org/jira/browse/HBASE-11772) | Bulk load mvcc and seqId issues with native hfiles |  Critical | . | Jerry He | Jerry He |
| [HBASE-11445](https://issues.apache.org/jira/browse/HBASE-11445) | TestZKProcedure#testMultiCohortWithMemberTimeoutDuringPrepare is flaky |  Major | snapshots | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9473](https://issues.apache.org/jira/browse/HBASE-9473) | Change UI to list 'system tables' rather than 'catalog tables'. |  Major | UI | stack | stack |
| [HBASE-11839](https://issues.apache.org/jira/browse/HBASE-11839) | TestRegionRebalance is flakey |  Major | . | Alex Newman | Sergey Soldatov |
| [HBASE-11936](https://issues.apache.org/jira/browse/HBASE-11936) | IsolationLevel must be attribute of a Query not a Scan |  Major | Client | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-11972](https://issues.apache.org/jira/browse/HBASE-11972) | The "doAs user" used in the update to hbase:acl table RPC is incorrect |  Critical | . | Devaraj Das | Devaraj Das |
| [HBASE-11984](https://issues.apache.org/jira/browse/HBASE-11984) | TestClassFinder failing on occasion |  Major | . | stack | stack |
| [HBASE-11989](https://issues.apache.org/jira/browse/HBASE-11989) | IntegrationTestLoadAndVerify cannot be configured anymore on distributed mode |  Trivial | test | Enis Soztutar | Enis Soztutar |
| [HBASE-11994](https://issues.apache.org/jira/browse/HBASE-11994) | PutCombiner floods the M/R log with repeated log messages. |  Major | mapreduce | Aditya Kishore | Aditya Kishore |
| [HBASE-11982](https://issues.apache.org/jira/browse/HBASE-11982) | Bootstraping hbase:meta table creates a WAL file in region dir |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12033](https://issues.apache.org/jira/browse/HBASE-12033) | SecurityUtil#doAsLoginUser is absent in hadoop-1, making AccessController#postCreateTableHandler() ineffective |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11988](https://issues.apache.org/jira/browse/HBASE-11988) | AC/VC system table create on postStartMaster fails too often in test |  Critical | . | Anoop Sam John | stack |
| [HBASE-12043](https://issues.apache.org/jira/browse/HBASE-12043) | REST server should respond with FORBIDDEN(403) code on AccessDeniedException |  Minor | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-12044](https://issues.apache.org/jira/browse/HBASE-12044) | REST delete operation should not retry disableTable for DoNotRetryIOException |  Minor | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-12045](https://issues.apache.org/jira/browse/HBASE-12045) | REST proxy users configuration in hbase-site.xml is ignored |  Major | . | Aditya Kishore | Aditya Kishore |
| [HBASE-12064](https://issues.apache.org/jira/browse/HBASE-12064) | hbase.master.balancer.stochastic.numRegionLoadsToRemember is not used |  Minor | Balancer | Junegunn Choi | Junegunn Choi |
| [HBASE-10748](https://issues.apache.org/jira/browse/HBASE-10748) | hbase-daemon.sh fails to execute with 'sh' command |  Major | scripts | Ashish Singhi | Ashish Singhi |
| [HBASE-12054](https://issues.apache.org/jira/browse/HBASE-12054) | bad state after NamespaceUpgrade with reserved table names |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11405](https://issues.apache.org/jira/browse/HBASE-11405) | Multiple invocations of hbck in parallel disables balancer permanently |  Major | Balancer, hbck | bharath v | bharath v |
| [HBASE-12087](https://issues.apache.org/jira/browse/HBASE-12087) | [0.98] Changing the default setting of hbase.security.access.early\_out to true |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12052](https://issues.apache.org/jira/browse/HBASE-12052) | BulkLoad Failed due to no write permission on input files |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12019](https://issues.apache.org/jira/browse/HBASE-12019) | hbase-daemon.sh overwrite HBASE\_ROOT\_LOGGER and HBASE\_SECURITY\_LOGGER variables |  Minor | scripts | Sebastien Barrier | Sebastien Barrier |
| [HBASE-12098](https://issues.apache.org/jira/browse/HBASE-12098) | User granted namespace table create permissions can't create a table |  Critical | Client, security | Dima Spivak | Srikanth Srungarapu |
| [HBASE-12123](https://issues.apache.org/jira/browse/HBASE-12123) | Failed assertion in BucketCache after HBASE-11331 |  Major | regionserver | Enis Soztutar | Nick Dimiduk |
| [HBASE-12095](https://issues.apache.org/jira/browse/HBASE-12095) | SecureWALCellCodec should handle the case where encryption is disabled |  Major | . | Ashish Singhi | Ted Yu |
| [HBASE-12139](https://issues.apache.org/jira/browse/HBASE-12139) | StochasticLoadBalancer doesn't work on large lightly loaded clusters |  Critical | Balancer, master | Elliott Clark | Elliott Clark |
| [HBASE-12065](https://issues.apache.org/jira/browse/HBASE-12065) |  Import tool is not restoring multiple DeleteFamily markers of a row |  Minor | util | Maddineni Sukumar | Maddineni Sukumar |
| [HBASE-12078](https://issues.apache.org/jira/browse/HBASE-12078) | Missing Data when scanning using PREFIX\_TREE DATA-BLOCK-ENCODING |  Critical | . | Duo Zhang | Duo Zhang |
| [HBASE-12120](https://issues.apache.org/jira/browse/HBASE-12120) | HBase shell doesn't allow deleting of a cell by user with W-only permissions to it |  Major | shell | Dima Spivak | Srikanth Srungarapu |
| [HBASE-12160](https://issues.apache.org/jira/browse/HBASE-12160) | Make Surefire's argLine configurable in the command line |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12164](https://issues.apache.org/jira/browse/HBASE-12164) | Check for presence of user Id in SecureBulkLoadEndpoint#secureBulkLoadHFiles() is inaccurate |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12136](https://issues.apache.org/jira/browse/HBASE-12136) | Race condition between client adding tableCF replication znode and  server triggering TableCFsTracker |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-12156](https://issues.apache.org/jira/browse/HBASE-12156) | TableName cache isn't used for one of valueOf methods. |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12137](https://issues.apache.org/jira/browse/HBASE-12137) | Alter table add cf doesn't do compression test |  Major | master | Virag Kothari | Virag Kothari |
| [HBASE-8808](https://issues.apache.org/jira/browse/HBASE-8808) | Use Jacoco to generate Unit Test coverage reports |  Trivial | build | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12124](https://issues.apache.org/jira/browse/HBASE-12124) | Closed region could stay closed if master stops at bad time |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12146](https://issues.apache.org/jira/browse/HBASE-12146) | RegionServerTracker should escape data in log messages |  Trivial | . | Lars Hofhansl | stack |
| [HBASE-11890](https://issues.apache.org/jira/browse/HBASE-11890) | HBase REST Client is hard coded to http protocol |  Major | Client | Eric Yang | Qiang Tian |
| [HBASE-12184](https://issues.apache.org/jira/browse/HBASE-12184) | ServerShutdownHandler throws NPE |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11815](https://issues.apache.org/jira/browse/HBASE-11815) | Flush and compaction could just close the tmp writer if there is an exception |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12039](https://issues.apache.org/jira/browse/HBASE-12039) | Lower log level for TableNotFoundException log message when throwing |  Minor | . | James Taylor | stack |
| [HBASE-12106](https://issues.apache.org/jira/browse/HBASE-12106) | Move test annotations to test artifact |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12191](https://issues.apache.org/jira/browse/HBASE-12191) | Make TestCacheOnWrite faster. |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12199](https://issues.apache.org/jira/browse/HBASE-12199) | Make TestAtomicOperation and TestEncodedSeekers faster |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-8936](https://issues.apache.org/jira/browse/HBASE-8936) | Fixing TestSplitLogWorker while running Jacoco tests. |  Trivial | . | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12428](https://issues.apache.org/jira/browse/HBASE-12428) | region\_mover.rb script is broken if port is not specified |  Major | . | Sameer Vaishampayan | Sameer Vaishampayan |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11798](https://issues.apache.org/jira/browse/HBASE-11798) | TestBucketWriterThread may hang due to WriterThread stopping prematurely |  Major | . | Alex Newman | Alex Newman |
| [HBASE-11918](https://issues.apache.org/jira/browse/HBASE-11918) | TestVisibilityLabelsWithDistributedLogReplay#testAddVisibilityLabelsOnRSRestart sometimes fails due to VisibilityController initialization not being recognized |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-11942](https://issues.apache.org/jira/browse/HBASE-11942) | Fix TestHRegionBusyWait |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11966](https://issues.apache.org/jira/browse/HBASE-11966) | Minor error in TestHRegion.testCheckAndMutate\_WithCorrectValue() |  Minor | regionserver | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12055](https://issues.apache.org/jira/browse/HBASE-12055) | TestBucketWriterThread hangs flakily based on timing |  Major | . | Enis Soztutar | Nick Dimiduk |
| [HBASE-12008](https://issues.apache.org/jira/browse/HBASE-12008) | Remove IntegrationTestImportTsv#testRunFromOutputCommitter |  Minor | mapreduce, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11838](https://issues.apache.org/jira/browse/HBASE-11838) | Enable PREFIX\_TREE in integration tests |  Minor | test | Jimmy Xiang | Jimmy Xiang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11923](https://issues.apache.org/jira/browse/HBASE-11923) | Potential race condition in RecoverableZookeeper.checkZk() |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11963](https://issues.apache.org/jira/browse/HBASE-11963) | Synchronize peer cluster replication connection attempts |  Major | . | Andrew Purtell | Maddineni Sukumar |
| [HBASE-12062](https://issues.apache.org/jira/browse/HBASE-12062) | Fix usage of Collections.toArray |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12023](https://issues.apache.org/jira/browse/HBASE-12023) | HRegion.applyFamilyMapToMemstore creates too many iterator objects. |  Minor | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-12059](https://issues.apache.org/jira/browse/HBASE-12059) | Create hbase-annotations module |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-12076](https://issues.apache.org/jira/browse/HBASE-12076) | Move InterfaceAudience imports to hbase-annotations |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12077](https://issues.apache.org/jira/browse/HBASE-12077) | FilterLists create many ArrayList$Itr objects per row. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12110](https://issues.apache.org/jira/browse/HBASE-12110) | Fix .arcconfig |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12115](https://issues.apache.org/jira/browse/HBASE-12115) | Fix NumberFormat Exception in TableInputFormatBase. |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12104](https://issues.apache.org/jira/browse/HBASE-12104) | Some optimization and bugfix for HTableMultiplexer |  Major | Client | Yi Deng | Yi Deng |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11858](https://issues.apache.org/jira/browse/HBASE-11858) | Audit regionserver classes that are missing InterfaceAudience |  Minor | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-12150](https://issues.apache.org/jira/browse/HBASE-12150) | Backport replication changes from HBASE-12145 |  Major | . | Andrew Purtell | Andrew Purtell |


