
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

## Release 1.1.3 - Unreleased (as of 2015-12-16)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14780](https://issues.apache.org/jira/browse/HBASE-14780) | Integration Tests that run with ChaosMonkey need to specify CFs |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-14715](https://issues.apache.org/jira/browse/HBASE-14715) | Add javadocs to DelegatingRetryingCallable |  Trivial | Client | Jesse Yates | Jesse Yates |
| [HBASE-14696](https://issues.apache.org/jira/browse/HBASE-14696) | Support setting allowPartialResults in mapreduce Mappers |  Major | mapreduce | Mindaugas Kairys | Ted Yu |
| [HBASE-14643](https://issues.apache.org/jira/browse/HBASE-14643) | Avoid Splits from once again opening a closed reader for fetching the first and last key |  Major | regionserver | ramkrishna.s.vasudevan | Heng Chen |
| [HBASE-14588](https://issues.apache.org/jira/browse/HBASE-14588) | Stop accessing test resources from within src folder |  Major | . | Andrew Wang | Andrew Wang |
| [HBASE-14586](https://issues.apache.org/jira/browse/HBASE-14586) | Use a maven profile to run Jacoco analysis |  Minor | . | Andrew Wang | Andrew Wang |
| [HBASE-14582](https://issues.apache.org/jira/browse/HBASE-14582) | Regionserver status webpage bucketcache list can become huge |  Major | regionserver | James Hartshorn | stack |
| [HBASE-14461](https://issues.apache.org/jira/browse/HBASE-14461) | Cleanup IncreasingToUpperBoundRegionSplitPolicy |  Minor | . | Lars Francke | Lars Francke |
| [HBASE-14436](https://issues.apache.org/jira/browse/HBASE-14436) | HTableDescriptor#addCoprocessor will always make RegionCoprocessorHost create new Configuration |  Minor | Coprocessors | Jianwei Cui | stack |
| [HBASE-14261](https://issues.apache.org/jira/browse/HBASE-14261) | Enhance Chaos Monkey framework by adding zookeeper and datanode fault injections. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14954](https://issues.apache.org/jira/browse/HBASE-14954) | IllegalArgumentException was thrown when doing online configuration change in CompactSplitThread |  Major | Compaction, regionserver | Victor Xu | Victor Xu |
| [HBASE-14943](https://issues.apache.org/jira/browse/HBASE-14943) | Procedure-V2: Deadlock in WALProcedureStore |  Blocker | proc-v2 | Ashu Pachauri | Matteo Bertozzi |
| [HBASE-14930](https://issues.apache.org/jira/browse/HBASE-14930) | check\_compatibility.sh needs smarter exit codes |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-14929](https://issues.apache.org/jira/browse/HBASE-14929) | There is a space missing from Table "foo" is not currently available. |  Trivial | . | Ted Malaska | Carlos A. Morillo |
| [HBASE-14928](https://issues.apache.org/jira/browse/HBASE-14928) | Start row should be set for query through HBase REST gateway involving globbing option |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14923](https://issues.apache.org/jira/browse/HBASE-14923) | VerifyReplication should not mask the exception during result comparison |  Minor | tooling | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-14904](https://issues.apache.org/jira/browse/HBASE-14904) | Mark Base[En\|De]coder LimitedPrivate and fix binary compat issue |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14894](https://issues.apache.org/jira/browse/HBASE-14894) | Fix misspellings of threshold in log4j.properties files for tests |  Trivial | . | Youngjoon Kim | Youngjoon Kim |
| [HBASE-14893](https://issues.apache.org/jira/browse/HBASE-14893) | Race between mutation on region and region closing operation leads to NotServingRegionException |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14875](https://issues.apache.org/jira/browse/HBASE-14875) | Forward port HBASE-14207 'Region was hijacked and remained in transition when RS failed to open a region and later regionplan changed to new RS on retry' |  Major | . | Ted Yu |  |
| [HBASE-14843](https://issues.apache.org/jira/browse/HBASE-14843) | TestWALProcedureStore.testLoad is flakey |  Blocker | proc-v2 | Heng Chen | Matteo Bertozzi |
| [HBASE-14840](https://issues.apache.org/jira/browse/HBASE-14840) | Sink cluster reports data replication request as success though the data is not replicated |  Major | . | Y. SREENIVASULU REDDY | Ashish Singhi |
| [HBASE-14799](https://issues.apache.org/jira/browse/HBASE-14799) | Commons-collections object deserialization remote command execution vulnerability |  Critical | . | Andrew Purtell | Andrew Purtell |
| [HBASE-14768](https://issues.apache.org/jira/browse/HBASE-14768) | bin/graceful\_stop.sh logs nothing as a balancer state to be stored |  Trivial | . | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-14759](https://issues.apache.org/jira/browse/HBASE-14759) | Avoid using Math.abs when selecting SyncRunner in FSHLog |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-14733](https://issues.apache.org/jira/browse/HBASE-14733) | Minor typo in alter\_namespace.rb |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14706](https://issues.apache.org/jira/browse/HBASE-14706) | RegionLocationFinder should return multiple servernames by top host |  Major | Balancer | Guanghao Zhang | Guanghao Zhang |
| [HBASE-14705](https://issues.apache.org/jira/browse/HBASE-14705) | Javadoc for KeyValue constructor is not correct. |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-14694](https://issues.apache.org/jira/browse/HBASE-14694) | Scan copy constructor doesn't handle allowPartialResults |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14689](https://issues.apache.org/jira/browse/HBASE-14689) | Addendum and unit test for HBASE-13471 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14682](https://issues.apache.org/jira/browse/HBASE-14682) | CM restore functionality for regionservers is broken |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14680](https://issues.apache.org/jira/browse/HBASE-14680) | Two configs for snapshot timeout and better defaults |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-14667](https://issues.apache.org/jira/browse/HBASE-14667) | HBaseFsck constructors have diverged |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14663](https://issues.apache.org/jira/browse/HBASE-14663) | HStore::close does not honor config hbase.rs.evictblocksonclose |  Minor | BlockCache, regionserver | Randy Fox | Vladimir Rodionov |
| [HBASE-14661](https://issues.apache.org/jira/browse/HBASE-14661) | RegionServer link is not opening, in HBase Table page. |  Minor | UI | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-14632](https://issues.apache.org/jira/browse/HBASE-14632) | Region server aborts due to unguarded dereference of Reader |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14624](https://issues.apache.org/jira/browse/HBASE-14624) | BucketCache.freeBlock is too expensive |  Major | BlockCache | Randy Fox | Ted Yu |
| [HBASE-14621](https://issues.apache.org/jira/browse/HBASE-14621) | ReplicationLogCleaner gets stuck when a regionserver crashes |  Critical | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-14598](https://issues.apache.org/jira/browse/HBASE-14598) | ByteBufferOutputStream grows its HeapByteBuffer beyond JVM limitations |  Major | . | Ian Friedman | Ian Friedman |
| [HBASE-14594](https://issues.apache.org/jira/browse/HBASE-14594) | Use new DNS API introduced in HADOOP-12437 |  Major | . | Josh Elser | Josh Elser |
| [HBASE-14591](https://issues.apache.org/jira/browse/HBASE-14591) | Region with reference hfile may split after a forced split in IncreasingToUpperBoundRegionSplitPolicy |  Critical | . | Liu Shaohui | Liu Shaohui |
| [HBASE-14581](https://issues.apache.org/jira/browse/HBASE-14581) | Znode cleanup throws auth exception in secure mode |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14578](https://issues.apache.org/jira/browse/HBASE-14578) | URISyntaxException during snapshot restore for table with user defined namespace |  Major | snapshots | Pankaj Kumar | Pankaj Kumar |
| [HBASE-14577](https://issues.apache.org/jira/browse/HBASE-14577) | HBase shell help for scan and returning a column family has a typo |  Trivial | shell | Dima Spivak | Dima Spivak |
| [HBASE-14545](https://issues.apache.org/jira/browse/HBASE-14545) | TestMasterFailover often times out |  Major | test | Mikhail Antonov | stack |
| [HBASE-14536](https://issues.apache.org/jira/browse/HBASE-14536) | Balancer & SSH interfering with each other leading to unavailability |  Major | master, Region Assignment | Devaraj Das | Stephen Yuan Jiang |
| [HBASE-14531](https://issues.apache.org/jira/browse/HBASE-14531) | graceful\_stop.sh "if [ "$local" ]" condition unexpected behaviour |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-14510](https://issues.apache.org/jira/browse/HBASE-14510) | Can not set coprocessor from Shell after HBASE-14224 |  Major | . | Yerui Sun | Yerui Sun |
| [HBASE-14501](https://issues.apache.org/jira/browse/HBASE-14501) | NPE in replication with TDE |  Critical | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14494](https://issues.apache.org/jira/browse/HBASE-14494) | Wrong usage messages on shell commands |  Minor | shell | Josh Elser | Josh Elser |
| [HBASE-14492](https://issues.apache.org/jira/browse/HBASE-14492) | Increase REST server header buffer size from 8k to 64k |  Major | REST | huaxiang sun | huaxiang sun |
| [HBASE-14491](https://issues.apache.org/jira/browse/HBASE-14491) | ReplicationSource#countDistinctRowKeys code logic is not correct |  Minor | . | Ashish Singhi | Enis Soztutar |
| [HBASE-14489](https://issues.apache.org/jira/browse/HBASE-14489) | postScannerFilterRow consumes a lot of CPU |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-14475](https://issues.apache.org/jira/browse/HBASE-14475) | Region split requests are always audited with "hbase" user rather than request user |  Major | . | Enis Soztutar | Ted Yu |
| [HBASE-14474](https://issues.apache.org/jira/browse/HBASE-14474) | DeadLock in RpcClientImpl.Connection.close() |  Blocker | rpc | Enis Soztutar | Enis Soztutar |
| [HBASE-14471](https://issues.apache.org/jira/browse/HBASE-14471) | Thrift -  HTTP Error 413 full HEAD if using kerberos authentication |  Major | Thrift | huaxiang sun | huaxiang sun |
| [HBASE-14449](https://issues.apache.org/jira/browse/HBASE-14449) | Rewrite deadlock prevention for concurrent connection close |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14445](https://issues.apache.org/jira/browse/HBASE-14445) | ExportSnapshot does not honor -chmod option |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14431](https://issues.apache.org/jira/browse/HBASE-14431) | AsyncRpcClient#removeConnection() never removes connection from connections pool if server fails |  Critical | IPC/RPC | Samir Ahmic | Samir Ahmic |
| [HBASE-14407](https://issues.apache.org/jira/browse/HBASE-14407) | NotServingRegion: hbase region closed forever |  Critical | Region Assignment | Shuaifeng Zhou | Shuaifeng Zhou |
| [HBASE-14400](https://issues.apache.org/jira/browse/HBASE-14400) | Fix HBase RPC protection documentation |  Critical | encryption, rpc, security | Appy | Appy |
| [HBASE-14394](https://issues.apache.org/jira/browse/HBASE-14394) | Properly close the connection after reading records from table. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14385](https://issues.apache.org/jira/browse/HBASE-14385) | Close the sockets that is missing in connection closure. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14382](https://issues.apache.org/jira/browse/HBASE-14382) | TestInterfaceAudienceAnnotations should hadoop-compt module resources |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14380](https://issues.apache.org/jira/browse/HBASE-14380) | Correct data gets skipped along with bad data in importTsv bulk load thru TsvImporterTextMapper |  Major | . | Bhupendra Kumar Jain | Bhupendra Kumar Jain |
| [HBASE-14366](https://issues.apache.org/jira/browse/HBASE-14366) | NPE in case visibility expression is not present in labels table during importtsv run |  Minor | . | Y. SREENIVASULU REDDY | Bhupendra Kumar Jain |
| [HBASE-14359](https://issues.apache.org/jira/browse/HBASE-14359) | HTable#close will hang forever if unchecked error/exception thrown in AsyncProcess#sendMultiAction |  Major | . | Yu Li | Victor Xu |
| [HBASE-14354](https://issues.apache.org/jira/browse/HBASE-14354) | Minor improvements for usage of the mlock agent |  Trivial | hbase, regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-14347](https://issues.apache.org/jira/browse/HBASE-14347) | Add a switch to DynamicClassLoader to disable it |  Major | Client, defaults, regionserver | Esteban Gutierrez | huaxiang sun |
| [HBASE-14342](https://issues.apache.org/jira/browse/HBASE-14342) | Recursive call in RegionMergeTransactionImpl.getJournal() |  Major | regionserver | Lars George | Lars Francke |
| [HBASE-14338](https://issues.apache.org/jira/browse/HBASE-14338) | License notification misspells 'Asciidoctor' |  Minor | . | Sean Busbey | Lars Francke |
| [HBASE-14327](https://issues.apache.org/jira/browse/HBASE-14327) | TestIOFencing#testFencingAroundCompactionAfterWALSync is flaky |  Critical | test | Dima Spivak | Heng Chen |
| [HBASE-14313](https://issues.apache.org/jira/browse/HBASE-14313) | After a Connection sees ConnectionClosingException it never recovers |  Critical | . | Elliott Clark | Elliott Clark |
| [HBASE-14307](https://issues.apache.org/jira/browse/HBASE-14307) | Incorrect use of positional read api in HFileBlock |  Major | . | Shradha Revankar | Chris Nauroth |
| [HBASE-14302](https://issues.apache.org/jira/browse/HBASE-14302) | TableSnapshotInputFormat should not create back references when restoring snapshot |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14287](https://issues.apache.org/jira/browse/HBASE-14287) | Bootstrapping a cluster leaves temporary WAL directory laying around |  Minor | master, regionserver | Lars George | Ted Yu |
| [HBASE-14283](https://issues.apache.org/jira/browse/HBASE-14283) | Reverse scan doesn’t work with HFile inline index/bloom blocks |  Major | . | Ben Lau | Ben Lau |
| [HBASE-14280](https://issues.apache.org/jira/browse/HBASE-14280) | Bulk Upload from HA cluster to remote HA hbase cluster fails |  Minor | hadoop2, regionserver | Ankit Singhal | Ankit Singhal |
| [HBASE-14269](https://issues.apache.org/jira/browse/HBASE-14269) | FuzzyRowFilter omits certain rows when multiple fuzzy keys exist |  Major | Filters | hongbin ma | hongbin ma |
| [HBASE-14258](https://issues.apache.org/jira/browse/HBASE-14258) | Make region\_mover.rb script case insensitive with regard to hostname |  Minor | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14229](https://issues.apache.org/jira/browse/HBASE-14229) | Flushing canceled by coprocessor still leads to memstoreSize set down |  Major | regionserver | Yerui Sun | Yerui Sun |
| [HBASE-14224](https://issues.apache.org/jira/browse/HBASE-14224) | Fix coprocessor handling of duplicate classes |  Critical | Coprocessors | Lars George | stack |
| [HBASE-13770](https://issues.apache.org/jira/browse/HBASE-13770) | Programmatic JAAS configuration option for secure zookeeper may be broken |  Major | . | Andrew Purtell | Maddineni Sukumar |
| [HBASE-13324](https://issues.apache.org/jira/browse/HBASE-13324) | o.a.h.h.Coprocessor should be LimitedPrivate("Coprocessor") |  Minor | API | Lars George | Andrew Purtell |
| [HBASE-13318](https://issues.apache.org/jira/browse/HBASE-13318) | RpcServer.getListenerAddress should handle when the accept channel is closed |  Minor | . | Lars Hofhansl | Andrew Purtell |
| [HBASE-13250](https://issues.apache.org/jira/browse/HBASE-13250) | chown of ExportSnapshot does not cover all path and files |  Critical | snapshots | He Liangliang | He Liangliang |
| [HBASE-13143](https://issues.apache.org/jira/browse/HBASE-13143) | TestCacheOnWrite is flaky and needs a diet |  Critical | . | Andrew Purtell | Andrew Purtell |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14839](https://issues.apache.org/jira/browse/HBASE-14839) | [branch-1] Backport test categories so that patch backport is easier |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-14344](https://issues.apache.org/jira/browse/HBASE-14344) | Add timeouts to TestHttpServerLifecycle |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14947](https://issues.apache.org/jira/browse/HBASE-14947) | WALProcedureStore improvements |  Blocker | proc-v2 | Ashu Pachauri | Matteo Bertozzi |
| [HBASE-14863](https://issues.apache.org/jira/browse/HBASE-14863) | Add missing test/resources/log4j files in hbase modules |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14709](https://issues.apache.org/jira/browse/HBASE-14709) | Parent change breaks graceful\_stop.sh on a cluster |  Major | Operability | stack | stack |
| [HBASE-14657](https://issues.apache.org/jira/browse/HBASE-14657) | Remove unneeded API from EncodedSeeker |  Major | . | Lars Hofhansl | Heng Chen |
| [HBASE-14655](https://issues.apache.org/jira/browse/HBASE-14655) | Narrow the scope of doAs() calls to region observer notifications for compaction |  Blocker | . | Ted Yu | Ted Yu |
| [HBASE-14631](https://issues.apache.org/jira/browse/HBASE-14631) | Region merge request should be audited with request user through proper scope of doAs() calls to region observer notifications |  Blocker | . | Ted Yu | Ted Yu |
| [HBASE-14622](https://issues.apache.org/jira/browse/HBASE-14622) | Purge TestZkLess\* tests from branch-1 |  Major | test | stack | stack |
| [HBASE-14605](https://issues.apache.org/jira/browse/HBASE-14605) | Split fails due to 'No valid credentials' error when SecureBulkLoadEndpoint#start tries to access hdfs |  Blocker | . | Ted Yu | Ted Yu |
| [HBASE-14571](https://issues.apache.org/jira/browse/HBASE-14571) | Purge TestProcessBasedCluster; it does nothing and then fails |  Major | test | stack | stack |
| [HBASE-14539](https://issues.apache.org/jira/browse/HBASE-14539) | Slight improvement of StoreScanner.optimize |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-14538](https://issues.apache.org/jira/browse/HBASE-14538) | Remove TestVisibilityLabelsWithDistributedLogReplay, a test for an unsupported feature |  Major | test | stack | stack |
| [HBASE-14535](https://issues.apache.org/jira/browse/HBASE-14535) | Integration test for rpc connection concurrency / deadlock testing |  Major | rpc | Enis Soztutar | Enis Soztutar |
| [HBASE-14513](https://issues.apache.org/jira/browse/HBASE-14513) | TestBucketCache runs obnoxious 1k threads in a unit test |  Major | test | stack | stack |
| [HBASE-14428](https://issues.apache.org/jira/browse/HBASE-14428) | Upgrade our surefire-plugin from 2.18 to 2.18.1 |  Major | test | stack | stack |
| [HBASE-14374](https://issues.apache.org/jira/browse/HBASE-14374) | Backport parent 'HBASE-14317 Stuck FSHLog' issue to 1.1 |  Major | . | stack | stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14516](https://issues.apache.org/jira/browse/HBASE-14516) | categorize hadoop-compat tests |  Critical | build, hadoop2, test | Sean Busbey | Sean Busbey |
| [HBASE-14361](https://issues.apache.org/jira/browse/HBASE-14361) | ReplicationSink should create Connection instances lazily |  Major | Replication | Nick Dimiduk | Heng Chen |
| [HBASE-14318](https://issues.apache.org/jira/browse/HBASE-14318) | make\_rc.sh should purge/re-resolve dependencies from local repository |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14290](https://issues.apache.org/jira/browse/HBASE-14290) | Spin up less threads in tests |  Major | test | stack | stack |


