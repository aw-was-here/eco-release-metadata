
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

## Release 0.99.2 - 2014-12-07

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12346](https://issues.apache.org/jira/browse/HBASE-12346) | Scan's default auths behavior under Visibility labels |  Major | API, security | Jerry He | Jerry He |
| [HBASE-12297](https://issues.apache.org/jira/browse/HBASE-12297) | Support DBB usage in Bloom and HFileIndex area |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-12241](https://issues.apache.org/jira/browse/HBASE-12241) | The crash of regionServer when taking deadserver's replication queue breaks replication |  Critical | Replication | Liu Shaohui | Liu Shaohui |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12496](https://issues.apache.org/jira/browse/HBASE-12496) | A blockedRequestsCount metric |  Minor | metrics | Yi Deng | Yi Deng |
| [HBASE-12361](https://issues.apache.org/jira/browse/HBASE-12361) | Show data locality of region in table page |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12286](https://issues.apache.org/jira/browse/HBASE-12286) | [shell] Add server/cluster online load of configuration changes |  Major | shell | stack | Manukranth Kolloju |
| [HBASE-8707](https://issues.apache.org/jira/browse/HBASE-8707) | Add LongComparator for filter |  Minor | . | Liu Shaohui | Liu Shaohui |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12569](https://issues.apache.org/jira/browse/HBASE-12569) | Control MaxDirectMemorySize in the same manner as heap size |  Minor | scripts | Patrick White | Patrick White |
| [HBASE-12529](https://issues.apache.org/jira/browse/HBASE-12529) | Use ThreadLocalRandom for RandomQueueBalancer |  Minor | IPC/RPC | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12455](https://issues.apache.org/jira/browse/HBASE-12455) | Add 'description' to bean and attribute output when you do /jmx?description=true |  Major | metrics | stack | stack |
| [HBASE-12447](https://issues.apache.org/jira/browse/HBASE-12447) | Add support for setTimeRange for RowCounter and CellCounter |  Minor | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12434](https://issues.apache.org/jira/browse/HBASE-12434) | Add a command to compact all the regions in a regionserver |  Minor | shell | Liu Shaohui | Liu Shaohui |
| [HBASE-12432](https://issues.apache.org/jira/browse/HBASE-12432) | RpcRetryingCaller should log after fixed number of retries like AsyncProcess |  Minor | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12424](https://issues.apache.org/jira/browse/HBASE-12424) | Finer grained logging and metrics for split transactions |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12416](https://issues.apache.org/jira/browse/HBASE-12416) | RegionServerCallable should report what host it was communicating with |  Trivial | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12411](https://issues.apache.org/jira/browse/HBASE-12411) | Optionally enable p-reads and private readers for compactions |  Major | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12390](https://issues.apache.org/jira/browse/HBASE-12390) | Change revision style from svn to git |  Minor | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12389](https://issues.apache.org/jira/browse/HBASE-12389) | Reduce the number of versions configured for the ACL table |  Minor | security | Andrew Purtell | Andrew Purtell |
| [HBASE-12328](https://issues.apache.org/jira/browse/HBASE-12328) | Need to separate JvmMetrics for Master and RegionServer |  Minor | . | Sanghyun Yun |  |
| [HBASE-12272](https://issues.apache.org/jira/browse/HBASE-12272) | Generate Thrift code through maven |  Major | build, documentation, Thrift | Niels Basjes | Niels Basjes |
| [HBASE-12271](https://issues.apache.org/jira/browse/HBASE-12271) | Add counters for files skipped during snapshot export |  Minor | snapshots | Patrick White | Patrick White |
| [HBASE-12264](https://issues.apache.org/jira/browse/HBASE-12264) | ImportTsv should fail fast if output is not specified and table does not exist |  Minor | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12249](https://issues.apache.org/jira/browse/HBASE-12249) | Script to help you adhere to the patch-naming guidelines |  Minor | documentation, scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12243](https://issues.apache.org/jira/browse/HBASE-12243) | HBaseFsck should auto set ignorePreCheckPermission to true if no fix option is set. |  Minor | hbck | Yi Deng | Yi Deng |
| [HBASE-12161](https://issues.apache.org/jira/browse/HBASE-12161) | Add support for grant/revoke on namespaces in AccessControlClient |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11870](https://issues.apache.org/jira/browse/HBASE-11870) | Optimization : Avoid copy of key and value for tags addition in AC and VC |  Major | Performance, security | Anoop Sam John | Anoop Sam John |
| [HBASE-10483](https://issues.apache.org/jira/browse/HBASE-10483) | Provide API for retrieving info port when hbase.master.info.port is set to 0 |  Major | . | Ted Yu | Liu Shaohui |
| [HBASE-10082](https://issues.apache.org/jira/browse/HBASE-10082) | Describe 'table' output is all on one line, could use better formatting |  Minor | shell | Maxime C Dumas | Srikanth Srungarapu |
| [HBASE-8572](https://issues.apache.org/jira/browse/HBASE-8572) | Enhance delete\_snapshot.rb to call snapshot deletion API with regex |  Major | . | Ted Yu | Ashish Singhi |
| [HBASE-8361](https://issues.apache.org/jira/browse/HBASE-8361) | Bulk load and other utilities should not create tables for user |  Major | mapreduce | Nick Dimiduk | Ashish Singhi |
| [HBASE-4955](https://issues.apache.org/jira/browse/HBASE-4955) | Use the official versions of surefire & junit |  Critical | test | Nicolas Liochon | Alex Newman |
| [HBASE-2609](https://issues.apache.org/jira/browse/HBASE-2609) | Harmonize the Get and Delete operations |  Major | Client | Jeff Hammerbacher | stack |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12616](https://issues.apache.org/jira/browse/HBASE-12616) | We lost the IntegrationTestBigLinkedList COMMANDS in recent usage refactoring |  Trivial | . | stack | stack |
| [HBASE-12614](https://issues.apache.org/jira/browse/HBASE-12614) | Potentially unclosed StoreFile(s) in DefaultCompactor#compact() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12610](https://issues.apache.org/jira/browse/HBASE-12610) | Close connection in TableInputFormatBase |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12600](https://issues.apache.org/jira/browse/HBASE-12600) | Remove REPLAY tag dependency in Distributed Replay Mode |  Major | wal | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12595](https://issues.apache.org/jira/browse/HBASE-12595) | Use Connection.getTable() in table.rb |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12584](https://issues.apache.org/jira/browse/HBASE-12584) | Fix branch-1 failing since task 5 HBASE-12404 (HBASE-12404 addendum) |  Major | test | stack | stack |
| [HBASE-12581](https://issues.apache.org/jira/browse/HBASE-12581) | TestCellACLWithMultipleVersions failing since task 5 HBASE-12404 (HBASE-12404 addendum) |  Critical | test | stack | stack |
| [HBASE-12580](https://issues.apache.org/jira/browse/HBASE-12580) | Zookeeper instantiated even though we might not need it in the shell |  Major | . | Alex Newman | Alex Newman |
| [HBASE-12576](https://issues.apache.org/jira/browse/HBASE-12576) | Add metrics for rolling the HLog if there are too few DN's in the write pipeline |  Major | metrics, wal | Elliott Clark | Elliott Clark |
| [HBASE-12560](https://issues.apache.org/jira/browse/HBASE-12560) | [WINDOWS] Append the classpath from Hadoop to HBase classpath in bin/hbase.cmd |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12550](https://issues.apache.org/jira/browse/HBASE-12550) | Check all storefiles are referenced before splitting |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12544](https://issues.apache.org/jira/browse/HBASE-12544) | ops\_mgt.xml missing in branch-1 |  Blocker | . | Solomon Duskis | Sean Busbey |
| [HBASE-12541](https://issues.apache.org/jira/browse/HBASE-12541) | Add misc debug logging to hanging tests in TestHCM and TestBaseLoadBalancer |  Major | test | stack | stack |
| [HBASE-12539](https://issues.apache.org/jira/browse/HBASE-12539) | HFileLinkCleaner logs are uselessly noisy |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12537](https://issues.apache.org/jira/browse/HBASE-12537) | HBase should log the remote host on replication error |  Major | Operability, Replication | stack | stack |
| [HBASE-12536](https://issues.apache.org/jira/browse/HBASE-12536) | Reduce the effective scope of GLOBAL CREATE and ADMIN permission |  Major | security | Andrew Purtell | Andrew Purtell |
| [HBASE-12533](https://issues.apache.org/jira/browse/HBASE-12533) | staging directories are not deleted after secure bulk load |  Major | regionserver | Andrejs Dubovskis | Jeffrey Zhong |
| [HBASE-12520](https://issues.apache.org/jira/browse/HBASE-12520) | Add protected getters on TableInputFormatBase |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12514](https://issues.apache.org/jira/browse/HBASE-12514) | Cleanup HFileOutputFormat legacy code |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12513](https://issues.apache.org/jira/browse/HBASE-12513) | Graceful stop script does not restore the balancer state |  Minor | scripts | Florin Broasca |  |
| [HBASE-12495](https://issues.apache.org/jira/browse/HBASE-12495) | Use interfaces in the shell scripts |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12491](https://issues.apache.org/jira/browse/HBASE-12491) | TableMapReduceUtil.findContainingJar() NPE |  Major | mapreduce | Solomon Duskis | Solomon Duskis |
| [HBASE-12490](https://issues.apache.org/jira/browse/HBASE-12490) | Replace uses of setAutoFlush(boolean, boolean) |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12479](https://issues.apache.org/jira/browse/HBASE-12479) | Backport HBASE-11689 (Track meta in transition) to 0.98 and branch-1 |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-12478](https://issues.apache.org/jira/browse/HBASE-12478) | HBASE-10141 and MIN\_VERSIONS are not compatible |  Critical | . | Enis Soztutar | Ted Yu |
| [HBASE-12464](https://issues.apache.org/jira/browse/HBASE-12464) | meta table region assignment stuck in the FAILED\_OPEN state due to region server not fully ready to serve |  Major | Region Assignment | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12461](https://issues.apache.org/jira/browse/HBASE-12461) | FSVisitor logging is excessive |  Minor | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12460](https://issues.apache.org/jira/browse/HBASE-12460) | Moving Chore to hbase-common module. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12459](https://issues.apache.org/jira/browse/HBASE-12459) | Use a non-managed Table in mapred.TableOutputFormat |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12450](https://issues.apache.org/jira/browse/HBASE-12450) | Unbalance chaos monkey might kill all region servers without starting them back |  Minor | . | Virag Kothari | Virag Kothari |
| [HBASE-12449](https://issues.apache.org/jira/browse/HBASE-12449) | Use the max timestamp of current or old cell's timestamp in HRegion.append() |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12448](https://issues.apache.org/jira/browse/HBASE-12448) | Fix rate reporting in compaction progress DEBUG logging |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12445](https://issues.apache.org/jira/browse/HBASE-12445) | hbase is removing all remaining cells immediately after the cell marked with marker = KeyValue.Type.DeleteColumn via PUT |  Major | . | sri venu bora | Hani Nadra |
| [HBASE-12440](https://issues.apache.org/jira/browse/HBASE-12440) | Region may remain offline on clean startup under certain race condition |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-12428](https://issues.apache.org/jira/browse/HBASE-12428) | region\_mover.rb script is broken if port is not specified |  Major | . | Sameer Vaishampayan | Sameer Vaishampayan |
| [HBASE-12423](https://issues.apache.org/jira/browse/HBASE-12423) | Use a non-managed Table in TableOutputFormat |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12420](https://issues.apache.org/jira/browse/HBASE-12420) | BucketCache logged startup message is egregiously large |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12419](https://issues.apache.org/jira/browse/HBASE-12419) | "Partial cell read caused by EOF" ERRORs on replication source during replication |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12417](https://issues.apache.org/jira/browse/HBASE-12417) | Scan copy constructor does not retain small attribute |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12414](https://issues.apache.org/jira/browse/HBASE-12414) | Move HFileLink.exists() to base class |  Trivial | io | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12407](https://issues.apache.org/jira/browse/HBASE-12407) | HConnectionKey doesn't contain CUSTOM\_CONTROLLER\_CONF\_KEY in CONNECTION\_PROPERTIES |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12402](https://issues.apache.org/jira/browse/HBASE-12402) | ZKPermissionWatcher race condition in refreshing the cache leaving stale ACLs and causing AccessDenied |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12399](https://issues.apache.org/jira/browse/HBASE-12399) | Master startup race between metrics and RpcServer |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12398](https://issues.apache.org/jira/browse/HBASE-12398) | Region isn't assigned in an extreme race condition |  Major | Region Assignment | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12386](https://issues.apache.org/jira/browse/HBASE-12386) | Replication gets stuck following a transient zookeeper error to remote peer cluster |  Major | Replication | Adrian Muraru | Adrian Muraru |
| [HBASE-12384](https://issues.apache.org/jira/browse/HBASE-12384) | TestTags can hang on fast test hosts |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12377](https://issues.apache.org/jira/browse/HBASE-12377) | HBaseAdmin#deleteTable fails when META region is moved around the same timeframe |  Major | Client | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12375](https://issues.apache.org/jira/browse/HBASE-12375) | LoadIncrementalHFiles fails to load data in table when CF name starts with '\_' |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-12372](https://issues.apache.org/jira/browse/HBASE-12372) | [WINDOWS] Enable log4j configuration in hbase.cmd |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12366](https://issues.apache.org/jira/browse/HBASE-12366) | Add login code to HBase Canary tool. |  Minor | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12359](https://issues.apache.org/jira/browse/HBASE-12359) | MulticastPublisher should specify IPv4/v6 protocol family when creating multicast channel |  Minor | master | Qiang Tian | Qiang Tian |
| [HBASE-12356](https://issues.apache.org/jira/browse/HBASE-12356) | Rpc with region replica does not propagate tracing spans |  Major | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12352](https://issues.apache.org/jira/browse/HBASE-12352) | Add hbase-annotation-tests to runtime classpath so can run hbase it tests. |  Major | integration tests | stack | stack |
| [HBASE-12337](https://issues.apache.org/jira/browse/HBASE-12337) | Import tool fails with NullPointerException if clusterIds is not initialized |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12336](https://issues.apache.org/jira/browse/HBASE-12336) | RegionServer failed to shutdown for NodeFailoverWorker thread |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12334](https://issues.apache.org/jira/browse/HBASE-12334) | Handling of DeserializationException causes needless retry on failure |  Major | . | James Taylor | Lars Hofhansl |
| [HBASE-12329](https://issues.apache.org/jira/browse/HBASE-12329) | Table create with duplicate column family names quietly succeeds |  Minor | Client, shell | Sean Busbey | Jingcheng Du |
| [HBASE-12327](https://issues.apache.org/jira/browse/HBASE-12327) | MetricsHBaseServerSourceFactory#createContextName has wrong conditions |  Major | . | Sanghyun Yun |  |
| [HBASE-12322](https://issues.apache.org/jira/browse/HBASE-12322) | Add clean up command to ITBLL |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-12319](https://issues.apache.org/jira/browse/HBASE-12319) | Inconsistencies during region recovery due to close/open of a region during recovery |  Critical | . | Devaraj Das | Jeffrey Zhong |
| [HBASE-12318](https://issues.apache.org/jira/browse/HBASE-12318) | Add license header to checkstyle xml files |  Trivial | . | Ted Yu | Ted Yu |
| [HBASE-12316](https://issues.apache.org/jira/browse/HBASE-12316) | test-patch.sh (Hadoop-QA) outputs the wrong release audit warnings URL |  Trivial | . | Dima Spivak | Dima Spivak |
| [HBASE-12315](https://issues.apache.org/jira/browse/HBASE-12315) | Fix 0.98 Tests after checkstyle got parented |  Blocker | . | Elliott Clark | Elliott Clark |
| [HBASE-12314](https://issues.apache.org/jira/browse/HBASE-12314) | Add chaos monkey policy to execute two actions concurrently |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12312](https://issues.apache.org/jira/browse/HBASE-12312) | Another couple of createTable race conditions |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-12308](https://issues.apache.org/jira/browse/HBASE-12308) | Fix typo in hbase-rest profile name |  Minor | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12306](https://issues.apache.org/jira/browse/HBASE-12306) | CellCounter output's wrong value for Total Families Across all Rows in output file |  Major | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12304](https://issues.apache.org/jira/browse/HBASE-12304) | CellCounter will throw AIOBE when output directory is not specified |  Minor | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12302](https://issues.apache.org/jira/browse/HBASE-12302) | VisibilityClient getAuths does not propagate remote service exception correctly |  Minor | Client, security | Jerry He | Jerry He |
| [HBASE-12301](https://issues.apache.org/jira/browse/HBASE-12301) | user\_permission command does not show global permissions |  Major | security, shell | Jerry He | Matteo Bertozzi |
| [HBASE-12294](https://issues.apache.org/jira/browse/HBASE-12294) | Can't build the docs after the hbase-checkstyle module was added |  Blocker | build | Misty Stanley-Jones | Elliott Clark |
| [HBASE-12285](https://issues.apache.org/jira/browse/HBASE-12285) | Builds are failing, possibly because of SUREFIRE-1091 |  Blocker | . | Dima Spivak | Dima Spivak |
| [HBASE-12281](https://issues.apache.org/jira/browse/HBASE-12281) | ClonedPrefixTreeCell should implement HeapSize |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12279](https://issues.apache.org/jira/browse/HBASE-12279) | Generated thrift files were generated with the wrong parameters |  Major | . | Niels Basjes | Niels Basjes |
| [HBASE-12278](https://issues.apache.org/jira/browse/HBASE-12278) | Race condition in TestSecureLoadIncrementalHFilesSplitRecovery |  Critical | test | Dima Spivak | Dima Spivak |
| [HBASE-12277](https://issues.apache.org/jira/browse/HBASE-12277) | Refactor bulkLoad methods in AccessController to its own interface |  Major | . | Madhan Neethiraj | Madhan Neethiraj |
| [HBASE-12274](https://issues.apache.org/jira/browse/HBASE-12274) | Race between RegionScannerImpl#nextInternal() and RegionScannerImpl#close() may produce null pointer exception |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12265](https://issues.apache.org/jira/browse/HBASE-12265) | HBase shell 'show\_filters' points to internal Facebook URL |  Trivial | shell | Niels Basjes | Andrew Purtell |
| [HBASE-12263](https://issues.apache.org/jira/browse/HBASE-12263) | RegionServer listens on localhost in distributed cluster when DNS is unavailable |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12261](https://issues.apache.org/jira/browse/HBASE-12261) | Add checkstyle to HBase build process |  Major | build, site | Elliott Clark | Elliott Clark |
| [HBASE-12258](https://issues.apache.org/jira/browse/HBASE-12258) | Make TestHBaseFsck less flaky |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12257](https://issues.apache.org/jira/browse/HBASE-12257) | TestAssignmentManager unsynchronized access to regionPlans |  Trivial | Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
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
| [HBASE-12142](https://issues.apache.org/jira/browse/HBASE-12142) | Truncate command does not preserve ACLs table |  Minor | . | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-12083](https://issues.apache.org/jira/browse/HBASE-12083) | Deprecate new HBaseAdmin() in favor of Connection.getAdmin() |  Critical | . | Solomon Duskis | Enis Soztutar |
| [HBASE-12072](https://issues.apache.org/jira/browse/HBASE-12072) | Standardize retry handling for master operations |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12053](https://issues.apache.org/jira/browse/HBASE-12053) | SecurityBulkLoadEndPoint set 777 permission on input data files |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12029](https://issues.apache.org/jira/browse/HBASE-12029) | Use Table and RegionLocator in HTable.getRegionLocations() |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12017](https://issues.apache.org/jira/browse/HBASE-12017) | Use Connection.createTable() instead of HTable constructors. |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-11835](https://issues.apache.org/jira/browse/HBASE-11835) | Wrong managenement of non expected calls in the client |  Major | Client, Performance | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11562](https://issues.apache.org/jira/browse/HBASE-11562) | CopyTable should provide an option to shuffle the mapper tasks |  Major | mapreduce | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-11099](https://issues.apache.org/jira/browse/HBASE-11099) | Two situations where we could open a region with smaller sequence number |  Major | regionserver | Jeffrey Zhong | Stephen Yuan Jiang |
| [HBASE-10780](https://issues.apache.org/jira/browse/HBASE-10780) | HFilePrettyPrinter#processFile should return immediately if file does not exist |  Minor | HFile | Ashish Singhi | Ashish Singhi |
| [HBASE-10536](https://issues.apache.org/jira/browse/HBASE-10536) | ImportTsv should fail fast if any of the column family passed to the job is not present in the table |  Major | mapreduce | rajeshbabu |  |
| [HBASE-9157](https://issues.apache.org/jira/browse/HBASE-9157) | ZKUtil.blockUntilAvailable loops forever with non-recoverable errors |  Minor | Zookeeper | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9117](https://issues.apache.org/jira/browse/HBASE-9117) | Remove HTablePool and all HConnection pooling related APIs |  Critical | . | Lars Hofhansl | Nick Dimiduk |
| [HBASE-9003](https://issues.apache.org/jira/browse/HBASE-9003) | TableMapReduceUtil should not rely on org.apache.hadoop.util.JarFinder#getJar |  Major | mapreduce | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-7211](https://issues.apache.org/jira/browse/HBASE-7211) | Improve hbase ref guide for the testing part. |  Minor | documentation | Nicolas Liochon | Nicolas Liochon |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12554](https://issues.apache.org/jira/browse/HBASE-12554) | TestBaseLoadBalancer may timeout due to lengthy rack lookup |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12549](https://issues.apache.org/jira/browse/HBASE-12549) | Fix TestAssignmentManagerOnCluster#testAssignRacingWithSSH() flaky test |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12472](https://issues.apache.org/jira/browse/HBASE-12472) | Improve debuggability of IntegrationTestBulkLoad |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12403](https://issues.apache.org/jira/browse/HBASE-12403) | IntegrationTestMTTR flaky due to aggressive RS restart timeout |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12401](https://issues.apache.org/jira/browse/HBASE-12401) | Add some timestamp signposts in IntegrationTestMTTR |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12378](https://issues.apache.org/jira/browse/HBASE-12378) | Add a test to verify that the read-replica is able to read after a compaction |  Minor | regionserver, Replication | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12367](https://issues.apache.org/jira/browse/HBASE-12367) | Integration tests should not restore the cluster if the CM is not destructive |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12335](https://issues.apache.org/jira/browse/HBASE-12335) | IntegrationTestRegionReplicaPerf is flaky |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12317](https://issues.apache.org/jira/browse/HBASE-12317) | Run IntegrationTestRegionReplicaPerf w.o mapred |  Minor | test | Nick Dimiduk | Nick Dimiduk |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12577](https://issues.apache.org/jira/browse/HBASE-12577) | Disable distributed log replay by default |  Critical | . | Enis Soztutar | Jeffrey Zhong |
| [HBASE-12526](https://issues.apache.org/jira/browse/HBASE-12526) | Remove unused imports |  Minor | . | Sean Busbey | Varun Saxena |
| [HBASE-12519](https://issues.apache.org/jira/browse/HBASE-12519) | Remove tabs used as whitespace |  Minor | . | Sean Busbey | Varun Saxena |
| [HBASE-12518](https://issues.apache.org/jira/browse/HBASE-12518) | Task 4 polish. Remove CM#{get,delete}Connection |  Major | test | stack | stack |
| [HBASE-12517](https://issues.apache.org/jira/browse/HBASE-12517) | Several HConstant members are assignable |  Critical | . | Sean Busbey | Sean Busbey |
| [HBASE-12471](https://issues.apache.org/jira/browse/HBASE-12471) | Task 4. replace internal ConnectionManager#{delete,get}Connection use with #close, #createConnection (0.98, 0.99) under src/main/java |  Major | . | stack | stack |
| [HBASE-12404](https://issues.apache.org/jira/browse/HBASE-12404) | Task 5 from parent: Replace internal HTable constructor use with HConnection#getTable (0.98, 0.99) |  Major | . | stack | stack |
| [HBASE-12400](https://issues.apache.org/jira/browse/HBASE-12400) | Fix refguide so it does connection#getTable rather than new HTable everywhere: first cut! |  Major | documentation | stack | stack |
| [HBASE-12379](https://issues.apache.org/jira/browse/HBASE-12379) | Try surefire 2.18-SNAPSHOT |  Major | test | stack | stack |
| [HBASE-12363](https://issues.apache.org/jira/browse/HBASE-12363) | Improve how KEEP\_DELETED\_CELLS works with MIN\_VERSIONS |  Major | regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12355](https://issues.apache.org/jira/browse/HBASE-12355) | Update maven plugins |  Major | build | stack | stack |
| [HBASE-12354](https://issues.apache.org/jira/browse/HBASE-12354) | Update dependencies in time for 1.0 release |  Major | dependencies | stack | stack |
| [HBASE-12353](https://issues.apache.org/jira/browse/HBASE-12353) | Turn down logging on some spewing unit tests |  Major | . | stack | Dima Spivak |
| [HBASE-12313](https://issues.apache.org/jira/browse/HBASE-12313) | Redo the hfile index length optimization so cell-based rather than serialized KV key |  Major | regionserver, Scanners | stack | stack |
| [HBASE-12288](https://issues.apache.org/jira/browse/HBASE-12288) | Support DirectByteBuffer usage in DataBlock Encoding area |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-12202](https://issues.apache.org/jira/browse/HBASE-12202) | Support DirectByteBuffer usage in HFileBlock |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-12147](https://issues.apache.org/jira/browse/HBASE-12147) | Porting Online Config Change from 89-fb |  Major | . | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12128](https://issues.apache.org/jira/browse/HBASE-12128) | Cache configuration and RpcController selection for Table in Connection |  Major | . | Andrew Purtell | Stephen Yuan Jiang |
| [HBASE-12075](https://issues.apache.org/jira/browse/HBASE-12075) | Preemptive Fast Fail |  Major | Client | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-11964](https://issues.apache.org/jira/browse/HBASE-11964) | Improve spreading replication load from failed regionservers |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11915](https://issues.apache.org/jira/browse/HBASE-11915) | Document and test 0.94 -\> 1.0.0 update |  Critical | . | Enis Soztutar | stack |
| [HBASE-11164](https://issues.apache.org/jira/browse/HBASE-11164) | Document and test rolling updates from 0.98 -\> 1.0 |  Critical | . | Enis Soztutar | stack |
| [HBASE-10671](https://issues.apache.org/jira/browse/HBASE-10671) | Add missing InterfaceAudience annotations for classes in hbase-common and hbase-client modules |  Major | Client | Enis Soztutar | Enis Soztutar |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10856](https://issues.apache.org/jira/browse/HBASE-10856) | Prep for 1.0 |  Major | . | stack |  |
| [HBASE-10602](https://issues.apache.org/jira/browse/HBASE-10602) | Cleanup HTable public interface |  Blocker | Client, Usability | Nick Dimiduk | Enis Soztutar |
| [HBASE-12522](https://issues.apache.org/jira/browse/HBASE-12522) | Backport WAL refactoring to branch-1 |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-12516](https://issues.apache.org/jira/browse/HBASE-12516) | Clean up master so QA Bot is in known good state |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-12456](https://issues.apache.org/jira/browse/HBASE-12456) | Update surefire from 2.18-SNAPSHOT to 2.18 |  Major | test | stack | stack |
| [HBASE-12442](https://issues.apache.org/jira/browse/HBASE-12442) | Bring KeyValue#createFirstOnRow() back to branch-1 as deprecated methods |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12388](https://issues.apache.org/jira/browse/HBASE-12388) | Document that WALObservers don't get empty edits. |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-12381](https://issues.apache.org/jira/browse/HBASE-12381) | Add maven enforcer rules for build assumptions |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-12344](https://issues.apache.org/jira/browse/HBASE-12344) | Split up TestAdmin |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12250](https://issues.apache.org/jira/browse/HBASE-12250) | Adding an endpoint for updating the regionserver config |  Minor | regionserver | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-10870](https://issues.apache.org/jira/browse/HBASE-10870) | Deprecate and replace HCD methods that have a 'should' prefix with a 'get' instead |  Major | . | stack | Ashish Singhi |
| [HBASE-10200](https://issues.apache.org/jira/browse/HBASE-10200) | Better error message when HttpServer fails to start due to java.net.BindException |  Minor | . | Ted Yu | Kiran Kumar M R |


