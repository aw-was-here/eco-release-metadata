
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

## Release 0.98.9 - 2014-12-22

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12346](https://issues.apache.org/jira/browse/HBASE-12346) | Scan's default auths behavior under Visibility labels |  Major | API, security | Jerry He | Jerry He |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12496](https://issues.apache.org/jira/browse/HBASE-12496) | A blockedRequestsCount metric |  Minor | metrics | Yi Deng | Yi Deng |
| [HBASE-10560](https://issues.apache.org/jira/browse/HBASE-10560) | Per cell TTLs |  Major | . | Andrew Purtell | Andrew Purtell |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12678](https://issues.apache.org/jira/browse/HBASE-12678) | HBCK should print command line arguments |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12676](https://issues.apache.org/jira/browse/HBASE-12676) | Fix the misleading ASCII art in IntegrationTestBigLinkedList |  Trivial | documentation, integration tests | Yi Deng | Yi Deng |
| [HBASE-12659](https://issues.apache.org/jira/browse/HBASE-12659) | Replace the method calls to grant and revoke in shell scripts with AccessControlClient |  Minor | security, shell | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12619](https://issues.apache.org/jira/browse/HBASE-12619) | Backport HBASE-11639 (Replicate the visibility of Cells as strings) to 0.98 |  Major | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12583](https://issues.apache.org/jira/browse/HBASE-12583) | Allow creating reference files even the split row not lies in the storefile range if required |  Major | . | rajeshbabu | rajeshbabu |
| [HBASE-12582](https://issues.apache.org/jira/browse/HBASE-12582) | Backport HBASE-10881 'Support reverse scan in thrift2' to 0.98 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12529](https://issues.apache.org/jira/browse/HBASE-12529) | Use ThreadLocalRandom for RandomQueueBalancer |  Minor | IPC/RPC | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12411](https://issues.apache.org/jira/browse/HBASE-12411) | Optionally enable p-reads and private readers for compactions |  Major | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12373](https://issues.apache.org/jira/browse/HBASE-12373) | Provide a command to list visibility labels |  Minor | . | Jerry He | Jerry He |
| [HBASE-8572](https://issues.apache.org/jira/browse/HBASE-8572) | Enhance delete\_snapshot.rb to call snapshot deletion API with regex |  Major | . | Ted Yu | Ashish Singhi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12696](https://issues.apache.org/jira/browse/HBASE-12696) | Possible NPE in HRegionFileSystem#splitStoreFile when skipStoreFileRangeCheck in splitPolicy return true |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-12692](https://issues.apache.org/jira/browse/HBASE-12692) | NPE from SnapshotManager#stop |  Minor | snapshots | Ashish Singhi | Ashish Singhi |
| [HBASE-12686](https://issues.apache.org/jira/browse/HBASE-12686) | Failures in split before PONR not clearing the daughter regions from regions in transition during rollback |  Blocker | Region Assignment | Rajeshbabu Chintaguntla | Vandana Ayyalasomayajula |
| [HBASE-12683](https://issues.apache.org/jira/browse/HBASE-12683) | Compilation with hadoop-2.7.0-SNAPSHOT is broken |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12666](https://issues.apache.org/jira/browse/HBASE-12666) | TestAssignmentManager hanging; add timeouts |  Major | test | stack | stack |
| [HBASE-12647](https://issues.apache.org/jira/browse/HBASE-12647) | Truncate table should work with C as well |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12642](https://issues.apache.org/jira/browse/HBASE-12642) | LoadIncrementalHFiles does not throw exception after hitting hbase.bulkload.retries.number setting |  Minor | mapreduce | Erik Ingle | Ted Yu |
| [HBASE-12639](https://issues.apache.org/jira/browse/HBASE-12639) | Backport HBASE-12565 Race condition in HRegion.batchMutate() causes partial data to be written when region closes |  Major | . | Keith David Winkler |  |
| [HBASE-12635](https://issues.apache.org/jira/browse/HBASE-12635) | Delete acl notify znode of table after the table is deleted |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12634](https://issues.apache.org/jira/browse/HBASE-12634) |  Fix the AccessController#requireGlobalPermission(ns) with NS |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12632](https://issues.apache.org/jira/browse/HBASE-12632) | ThrottledInputStream/ExportSnapshot does not throttle |  Major | mapreduce | Tobi Vollebregt |  |
| [HBASE-12622](https://issues.apache.org/jira/browse/HBASE-12622) | user\_permission should require global admin to display global and ns permissions |  Major | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12618](https://issues.apache.org/jira/browse/HBASE-12618) | Add 'Namespace' to headers while displaying user permissions. |  Trivial | . | Srikanth Srungarapu | Ashish Singhi |
| [HBASE-12616](https://issues.apache.org/jira/browse/HBASE-12616) | We lost the IntegrationTestBigLinkedList COMMANDS in recent usage refactoring |  Trivial | . | stack | stack |
| [HBASE-12614](https://issues.apache.org/jira/browse/HBASE-12614) | Potentially unclosed StoreFile(s) in DefaultCompactor#compact() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12580](https://issues.apache.org/jira/browse/HBASE-12580) | Zookeeper instantiated even though we might not need it in the shell |  Major | . | Alex Newman | Alex Newman |
| [HBASE-12560](https://issues.apache.org/jira/browse/HBASE-12560) | [WINDOWS] Append the classpath from Hadoop to HBase classpath in bin/hbase.cmd |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12551](https://issues.apache.org/jira/browse/HBASE-12551) | Backport HBASE-10955 'HBCK leaves the region in masters in-memory RegionStates if region hdfs dir is lost' to 0.98 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12550](https://issues.apache.org/jira/browse/HBASE-12550) | Check all storefiles are referenced before splitting |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12539](https://issues.apache.org/jira/browse/HBASE-12539) | HFileLinkCleaner logs are uselessly noisy |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12537](https://issues.apache.org/jira/browse/HBASE-12537) | HBase should log the remote host on replication error |  Major | Operability, Replication | stack | stack |
| [HBASE-12533](https://issues.apache.org/jira/browse/HBASE-12533) | staging directories are not deleted after secure bulk load |  Major | regionserver | Andrejs Dubovskis | Jeffrey Zhong |
| [HBASE-12513](https://issues.apache.org/jira/browse/HBASE-12513) | Graceful stop script does not restore the balancer state |  Minor | scripts | Florin Broasca |  |
| [HBASE-12491](https://issues.apache.org/jira/browse/HBASE-12491) | TableMapReduceUtil.findContainingJar() NPE |  Major | mapreduce | Solomon Duskis | Solomon Duskis |
| [HBASE-12479](https://issues.apache.org/jira/browse/HBASE-12479) | Backport HBASE-11689 (Track meta in transition) to 0.98 and branch-1 |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-12467](https://issues.apache.org/jira/browse/HBASE-12467) | Master joins cluster but never completes initialization |  Major | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12464](https://issues.apache.org/jira/browse/HBASE-12464) | meta table region assignment stuck in the FAILED\_OPEN state due to region server not fully ready to serve |  Major | Region Assignment | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12454](https://issues.apache.org/jira/browse/HBASE-12454) | Setting didPerformCompaction early in HRegion#compact |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12449](https://issues.apache.org/jira/browse/HBASE-12449) | Use the max timestamp of current or old cell's timestamp in HRegion.append() |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12431](https://issues.apache.org/jira/browse/HBASE-12431) | Use of getColumnLatestCell(byte[], int, int, byte[], int, int) is Not Thread Safe |  Major | Client | Jonathan Jarvis | Jingcheng Du |
| [HBASE-12398](https://issues.apache.org/jira/browse/HBASE-12398) | Region isn't assigned in an extreme race condition |  Major | Region Assignment | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12348](https://issues.apache.org/jira/browse/HBASE-12348) | preModifyColumn and preDeleteColumn in AC denies user to perform its operation though it has required rights |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12337](https://issues.apache.org/jira/browse/HBASE-12337) | Import tool fails with NullPointerException if clusterIds is not initialized |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12277](https://issues.apache.org/jira/browse/HBASE-12277) | Refactor bulkLoad methods in AccessController to its own interface |  Major | . | Madhan Neethiraj | Madhan Neethiraj |
| [HBASE-12053](https://issues.apache.org/jira/browse/HBASE-12053) | SecurityBulkLoadEndPoint set 777 permission on input data files |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-11979](https://issues.apache.org/jira/browse/HBASE-11979) | Compaction progress reporting is wrong |  Minor | . | Andrew Purtell | Esteban Gutierrez |
| [HBASE-11099](https://issues.apache.org/jira/browse/HBASE-11099) | Two situations where we could open a region with smaller sequence number |  Major | regionserver | Jeffrey Zhong | Stephen Yuan Jiang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12685](https://issues.apache.org/jira/browse/HBASE-12685) | TestSplitLogManager#testLogFilesAreArchived sometimes times out due to race condition |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12549](https://issues.apache.org/jira/browse/HBASE-12549) | Fix TestAssignmentManagerOnCluster#testAssignRacingWithSSH() flaky test |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12472](https://issues.apache.org/jira/browse/HBASE-12472) | Improve debuggability of IntegrationTestBulkLoad |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12163](https://issues.apache.org/jira/browse/HBASE-12163) | Move test annotation classes to the same package as in master |  Trivial | . | Enis Soztutar | Nick Dimiduk |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12606](https://issues.apache.org/jira/browse/HBASE-12606) | Sanity check encryption configuration before opening WAL or onlining regions |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12604](https://issues.apache.org/jira/browse/HBASE-12604) | Backport HBASE-12128 (Cache configuration and RpcController selection for Table in Connection) to 0.98 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12575](https://issues.apache.org/jira/browse/HBASE-12575) | Sanity check table coprocessor classes are loadable |  Major | . | Enis Soztutar | Andrew Purtell |
| [HBASE-12573](https://issues.apache.org/jira/browse/HBASE-12573) | Backport HBASE-10591 Sanity check table configuration in createTable |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12517](https://issues.apache.org/jira/browse/HBASE-12517) | Several HConstant members are assignable |  Critical | . | Sean Busbey | Sean Busbey |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12631](https://issues.apache.org/jira/browse/HBASE-12631) | Backport HBASE-12576 (Add metrics for rolling the HLog if there are too few DN's in the write pipeline) to 0.98 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12624](https://issues.apache.org/jira/browse/HBASE-12624) | Remove rename\_snapshot.rb from code as there is no equivalent renameSnapshot api in Admin class |  Minor | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12493](https://issues.apache.org/jira/browse/HBASE-12493) | User class should provide a way to re-use existing token |  Major | . | Brock Noland | Gary Helmling |
| [HBASE-12383](https://issues.apache.org/jira/browse/HBASE-12383) | Move 0.98 build to surefire 2.18 |  Minor | build | stack | Andrew Purtell |
| [HBASE-11992](https://issues.apache.org/jira/browse/HBASE-11992) | Backport HBASE-11367 (Pluggable replication endpoint) to 0.98 |  Major | . | Andrew Purtell | ramkrishna.s.vasudevan |


