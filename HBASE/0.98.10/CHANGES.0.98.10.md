
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

## Release 0.98.10 - 2015-02-05

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12774](https://issues.apache.org/jira/browse/HBASE-12774) | Fix the inconsistent permission checks for bulkloading. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12731](https://issues.apache.org/jira/browse/HBASE-12731) | Heap occupancy based client pushback |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12709](https://issues.apache.org/jira/browse/HBASE-12709) | [mvn] Add unit test excludes command line flag to the build. |  Major | build | Jonathan Hsieh | Jonathan Hsieh |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12825](https://issues.apache.org/jira/browse/HBASE-12825) | CallRunner exception messages should include destination host:port |  Minor | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12773](https://issues.apache.org/jira/browse/HBASE-12773) | Add warning message when user is trying to bulkload a large HFile. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12768](https://issues.apache.org/jira/browse/HBASE-12768) | Support enable cache\_data\_on\_write in Shell while creating table |  Major | shell | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12762](https://issues.apache.org/jira/browse/HBASE-12762) | Region with no hfiles will have the highest locality cost in LocalityCostFunction |  Minor | Balancer | cuijianwei | cuijianwei |
| [HBASE-12745](https://issues.apache.org/jira/browse/HBASE-12745) | Visibility Labels:  support visibility labels for user groups. |  Major | security | Jerry He | Jerry He |
| [HBASE-12720](https://issues.apache.org/jira/browse/HBASE-12720) | Make InternalScan LimitedPrivate |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-12641](https://issues.apache.org/jira/browse/HBASE-12641) | Grant all permissions of hbase zookeeper node to hbase superuser in a secure cluster |  Minor | Zookeeper | Liu Shaohui | Liu Shaohui |
| [HBASE-12627](https://issues.apache.org/jira/browse/HBASE-12627) | Add back snapshot batching facility from HBASE-11360 dropped by HBASE-11742 |  Major | master, scaling | stack | churro morales |
| [HBASE-12608](https://issues.apache.org/jira/browse/HBASE-12608) | region\_mover.rb does not log moving region count correctly when loading regions |  Minor | shell | cuijianwei | cuijianwei |
| [HBASE-12223](https://issues.apache.org/jira/browse/HBASE-12223) | MultiTableInputFormatBase.getSplits is too slow |  Minor | Client | shanwen | YuanBo Peng |
| [HBASE-12121](https://issues.apache.org/jira/browse/HBASE-12121) | maven release plugin does not allow for customized goals |  Minor | build | Enoch Hsu | Enoch Hsu |
| [HBASE-11195](https://issues.apache.org/jira/browse/HBASE-11195) | Potentially improve block locality during major compaction for old regions |  Major | . | churro morales | churro morales |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12925](https://issues.apache.org/jira/browse/HBASE-12925) | Use acl cache for doing access control checks in prepare and clean phases of Bulkloading. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12918](https://issues.apache.org/jira/browse/HBASE-12918) | Backport asciidoc changes |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12916](https://issues.apache.org/jira/browse/HBASE-12916) | No access control for replicating WAL entries |  Major | Replication | Liu Shaohui | Liu Shaohui |
| [HBASE-12915](https://issues.apache.org/jira/browse/HBASE-12915) | Disallow small scan with batching |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12910](https://issues.apache.org/jira/browse/HBASE-12910) | describe in the shell is broken |  Critical | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12905](https://issues.apache.org/jira/browse/HBASE-12905) | Clean up presence of hadoop annotations in 0.98 |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-12904](https://issues.apache.org/jira/browse/HBASE-12904) | Threading issues in region\_mover.rb |  Major | . | Lars Hofhansl | Andrew Purtell |
| [HBASE-12898](https://issues.apache.org/jira/browse/HBASE-12898) | Add in used undeclared dependencies |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-12892](https://issues.apache.org/jira/browse/HBASE-12892) | Add a class to allow taking a snapshot from the command line |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12886](https://issues.apache.org/jira/browse/HBASE-12886) | Correct tag option name in PerformanceEvaluation |  Minor | . | Jerry He | Jerry He |
| [HBASE-12878](https://issues.apache.org/jira/browse/HBASE-12878) | Incorrect HFile path in TestHFilePerformance print output (fix for easier debugging) |  Trivial | test | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-12864](https://issues.apache.org/jira/browse/HBASE-12864) | IntegrationTestTableSnapshotInputFormat fails |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12847](https://issues.apache.org/jira/browse/HBASE-12847) | TestZKLessSplitOnCluster frequently times out in 0.98 builds |  Major | . | Andrew Purtell | Rajeshbabu Chintaguntla |
| [HBASE-12845](https://issues.apache.org/jira/browse/HBASE-12845) | ByteBufferOutputStream should grow as direct buffer if the initial buffer is also direct BB |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12844](https://issues.apache.org/jira/browse/HBASE-12844) | ServerManager.isServerReacable() should sleep between retries |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12837](https://issues.apache.org/jira/browse/HBASE-12837) | ReplicationAdmin leaks zk connections |  Major | Zookeeper | stack | stack |
| [HBASE-12832](https://issues.apache.org/jira/browse/HBASE-12832) | Describe table from shell no longer shows Table's attributes, only CF attributes |  Critical | . | Enis Soztutar | Srikanth Srungarapu |
| [HBASE-12831](https://issues.apache.org/jira/browse/HBASE-12831) | Changing the set of vis labels a user has access to doesn't generate an audit log event |  Major | . | Sean Busbey | Ashish Singhi |
| [HBASE-12819](https://issues.apache.org/jira/browse/HBASE-12819) | ExportSnapshot doesn't close FileSystem instances |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12817](https://issues.apache.org/jira/browse/HBASE-12817) | Data missing while scanning using PREFIX\_TREE data block encoding |  Major | Scanners | Duo Zhang | Duo Zhang |
| [HBASE-12811](https://issues.apache.org/jira/browse/HBASE-12811) | [AccessController] NPE while scanning a table with user not having READ permission on the namespace |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12804](https://issues.apache.org/jira/browse/HBASE-12804) | ImportTsv fails to delete partition files created by it |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-12801](https://issues.apache.org/jira/browse/HBASE-12801) | Failed to truncate a table while maintaing binary region boundaries |  Minor | shell | Liu Shaohui | Liu Shaohui |
| [HBASE-12791](https://issues.apache.org/jira/browse/HBASE-12791) | HBase does not attempt to clean up an aborted split when the regionserver shutting down |  Critical | regionserver | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-12782](https://issues.apache.org/jira/browse/HBASE-12782) | ITBLL fails for me if generator does anything but 5M per maptask |  Critical | integration tests | stack | stack |
| [HBASE-12781](https://issues.apache.org/jira/browse/HBASE-12781) | thrift2 listen port will bind always to the passed command line address |  Major | Thrift | Pankaj Kumar | Pankaj Kumar |
| [HBASE-12767](https://issues.apache.org/jira/browse/HBASE-12767) | Fix a StoreFileScanner NPE in reverse scan flow |  Major | regionserver, Scanners | Liang Xie | Liang Xie |
| [HBASE-12750](https://issues.apache.org/jira/browse/HBASE-12750) | getRequestsCount() in ClusterStatus returns total number of request |  Major | Client | Weichen Ye | Weichen Ye |
| [HBASE-12739](https://issues.apache.org/jira/browse/HBASE-12739) | Avoid too large identifier of ZooKeeperWatcher |  Minor | Zookeeper | Liu Shaohui | Liu Shaohui |
| [HBASE-12732](https://issues.apache.org/jira/browse/HBASE-12732) | Log messages in FileLink$FileLinkInputStream#tryOpen are reversed |  Trivial | hbase | Tobi Vollebregt |  |
| [HBASE-12716](https://issues.apache.org/jira/browse/HBASE-12716) | A bug in RegionSplitter.UniformSplit algorithm |  Major | regionserver | Weichen Ye | Weichen Ye |
| [HBASE-12715](https://issues.apache.org/jira/browse/HBASE-12715) | getLastSequenceId always returns -1 |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-12699](https://issues.apache.org/jira/browse/HBASE-12699) | undefined method `setAsyncLogFlush' exception thrown when setting DEFERRED\_LOG\_FLUSH=\>true |  Major | shell | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12697](https://issues.apache.org/jira/browse/HBASE-12697) | Don't use RegionLocationFinder if localityCost == 0 |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12694](https://issues.apache.org/jira/browse/HBASE-12694) | testTableExistsIfTheSpecifiedTableRegionIsSplitParent in TestSplitTransactionOnCluster class leaves regions in transition |  Minor | . | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-12644](https://issues.apache.org/jira/browse/HBASE-12644) | Visibility Labels: issue with storing super users in labels table |  Major | security | Jerry He | Jerry He |
| [HBASE-12607](https://issues.apache.org/jira/browse/HBASE-12607) | TestHBaseFsck#testParallelHbck fails running against hadoop 2.6.0 |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12480](https://issues.apache.org/jira/browse/HBASE-12480) | Regions in FAILED\_OPEN/FAILED\_CLOSE should be processed on master failover |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-12393](https://issues.apache.org/jira/browse/HBASE-12393) | The regionserver web will throw exception if we disable block cache |  Minor | regionserver, UI | ChiaPing Tsai | ChiaPing Tsai |
| [HBASE-12270](https://issues.apache.org/jira/browse/HBASE-12270) | A bug in the bucket cache, with cache blocks on write enabled |  Critical | . | Khaled Elmeleegy | Liu Shaohui |
| [HBASE-10528](https://issues.apache.org/jira/browse/HBASE-10528) | DefaultBalancer selects plans to move regions onto draining nodes |  Major | . | churro morales | churro morales |
| [HBASE-10499](https://issues.apache.org/jira/browse/HBASE-10499) | In write heavy scenario one of the regions does not get flushed causing RegionTooBusyException |  Critical | . | ramkrishna.s.vasudevan | Ted Yu |
| [HBASE-8026](https://issues.apache.org/jira/browse/HBASE-8026) | HBase Shell docs for scan command does not reference VERSIONS |  Major | . | Jonathan Natkins | Amit Kabra |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12885](https://issues.apache.org/jira/browse/HBASE-12885) | Unit test for RAW / VERSIONS scanner specifications |  Minor | shell | Amit Kabra | Amit Kabra |
| [HBASE-12722](https://issues.apache.org/jira/browse/HBASE-12722) | Backport TestMultiTableInputFormat to 0.98 branch |  Minor | . | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12933](https://issues.apache.org/jira/browse/HBASE-12933) | [0.98] Fold StatisticsHConnection into HConnection |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12926](https://issues.apache.org/jira/browse/HBASE-12926) | Backport HBASE-12688 (Update site with a bootstrap-based UI) for HBASE-12918 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12854](https://issues.apache.org/jira/browse/HBASE-12854) | Fix the CopyTable incompatibility introduced in HBASE-11997 in 0.98 |  Major | . | Andrew Purtell | Srikanth Srungarapu |
| [HBASE-12842](https://issues.apache.org/jira/browse/HBASE-12842) | Fix the incompatibility introduced by AccessControlClient in 0.98 |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12793](https://issues.apache.org/jira/browse/HBASE-12793) | [hbck] closeRegionSilentlyAndWait() should log cause of IOException and retry until  hbase.hbck.close.timeout expires |  Minor | hbck | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12779](https://issues.apache.org/jira/browse/HBASE-12779) | SplitTransaction: Add metrics |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12776](https://issues.apache.org/jira/browse/HBASE-12776) | SpliTransaction: Log number of files to be split |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12729](https://issues.apache.org/jira/browse/HBASE-12729) | Backport HBASE-5162 (Basic client pushback mechanism) to 0.98 |  Major | Client, regionserver | Andrew Purtell | Andrew Purtell |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12932](https://issues.apache.org/jira/browse/HBASE-12932) | [0.98] Change the interface annotation of HConnection from Public/Stable to Public/Evolving |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12834](https://issues.apache.org/jira/browse/HBASE-12834) | Promote ScanType to LimitedPrivate |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12788](https://issues.apache.org/jira/browse/HBASE-12788) | Promote Abortable to LimitedPrivate |  Major | . | Andrew Purtell | Enis Soztutar |
| [HBASE-12787](https://issues.apache.org/jira/browse/HBASE-12787) | Backport HBASE-12028 (Abort the RegionServer when it's handler threads die) to 0.98 |  Major | . | Andrew Purtell | Alicia Ying Shu |
| [HBASE-12724](https://issues.apache.org/jira/browse/HBASE-12724) | Upgrade the interface audience of RegionScanner from Private to LimitedPrivate |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12658](https://issues.apache.org/jira/browse/HBASE-12658) | Backport HBASE-12574 (Update replication metrics to not do so many map look ups) to 0.98 |  Major | . | Andrew Purtell | Andrew Purtell |


