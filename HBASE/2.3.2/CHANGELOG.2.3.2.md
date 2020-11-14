
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

## Release 2.3.2 - 2020-09-25



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24776](https://issues.apache.org/jira/browse/HBASE-24776) | [hbtop] Support Batch mode |  Major | hbtop | Toshihiro Suzuki | Toshihiro Suzuki |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24854](https://issues.apache.org/jira/browse/HBASE-24854) | Correct the help content of assign and unassign commands in hbase shell |  Minor | shell | Zheng Wang | Zheng Wang |
| [HBASE-24912](https://issues.apache.org/jira/browse/HBASE-24912) | Enlarge MemstoreFlusherChore/CompactionChecker period for unit test |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24686](https://issues.apache.org/jira/browse/HBASE-24686) | [LOG] Log improvement in Connection#close |  Major | Client, logging | mokai | mokai |
| [HBASE-24811](https://issues.apache.org/jira/browse/HBASE-24811) | Use class access static field or method |  Minor | . | Yechao Chen | Yechao Chen |
| [HBASE-24942](https://issues.apache.org/jira/browse/HBASE-24942) | MergeTableRegionsProcedure should not call clean merge region |  Major | proc-v2, Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-24928](https://issues.apache.org/jira/browse/HBASE-24928) | balanceRSGroup should skip generating balance plan for disabled table and splitParent region |  Major | Balancer | niuyulin | niuyulin |
| [HBASE-24898](https://issues.apache.org/jira/browse/HBASE-24898) | Use EnvironmentEdge.currentTime() instead of System.currentTimeMillis() in CurrentHourProvider |  Major | tooling | Zheng Wang | Zheng Wang |
| [HBASE-24913](https://issues.apache.org/jira/browse/HBASE-24913) | Refactor TestJMXConnectorServer |  Major | test | Sun Xin | Sun Xin |
| [HBASE-24569](https://issues.apache.org/jira/browse/HBASE-24569) | Get hostAndWeights in addition using localhost if it is null in local mode |  Minor | regionserver | Zheng Wang | Zheng Wang |
| [HBASE-24940](https://issues.apache.org/jira/browse/HBASE-24940) | runCatalogJanitor() API should return -1 to indicate already running status |  Major | . | Mohammad Arshad | Mohammad Arshad |
| [HBASE-24937](https://issues.apache.org/jira/browse/HBASE-24937) | table.rb use LocalDateTime to replace Instant |  Minor | shell | Bo Cui | Bo Cui |
| [HBASE-24974](https://issues.apache.org/jira/browse/HBASE-24974) | Provide a flexibility to print only row key and filter for multiple tables in the WALPrettyPrinter |  Minor | wal | Sandeep Pal | Sandeep Pal |
| [HBASE-25006](https://issues.apache.org/jira/browse/HBASE-25006) | Make the cost functions optional for StochastoicBalancer |  Major | . | Clara Xiong | Clara Xiong |
| [HBASE-24831](https://issues.apache.org/jira/browse/HBASE-24831) | Avoid invoke Counter using reflection  in SnapshotInputFormat |  Major | . | Yechao Chen | Yechao Chen |
| [HBASE-25057](https://issues.apache.org/jira/browse/HBASE-25057) | Fix typo "memeber" |  Trivial | documentation | Hyeran Lee | Hyeran Lee |
| [HBASE-24991](https://issues.apache.org/jira/browse/HBASE-24991) | Replace MovedRegionsCleaner with guava cache |  Minor | . | Junhong Xu | Junhong Xu |
| [HBASE-25069](https://issues.apache.org/jira/browse/HBASE-25069) |  Display region name instead of encoded region name in HBCK report page. |  Minor | hbck | Mohammad Arshad | Mohammad Arshad |
| [HBASE-25066](https://issues.apache.org/jira/browse/HBASE-25066) | Use FutureUtils.rethrow in AsyncTableResultScanner to better catch the stack trace |  Major | Client, Scanners | Duo Zhang | Duo Zhang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24884](https://issues.apache.org/jira/browse/HBASE-24884) | BulkLoadHFilesTool/LoadIncrementalHFiles should accept -D options from command line parameters |  Minor | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24926](https://issues.apache.org/jira/browse/HBASE-24926) | Should call setFailure in MergeTableRegionsProcedure when isMergeable returns false |  Major | master, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-24885](https://issues.apache.org/jira/browse/HBASE-24885) | STUCK RIT by hbck2 assigns |  Major | hbck2, Region Assignment | Bo Cui | Michael Stack |
| [HBASE-24871](https://issues.apache.org/jira/browse/HBASE-24871) | Replication may loss data when refresh recovered replication sources |  Major | Replication | Guanghao Zhang | Sun Xin |
| [HBASE-24892](https://issues.apache.org/jira/browse/HBASE-24892) | config 'hbase.hregion.memstore.mslab.indexchunksize' not be used |  Major | . | wenfeiyi666 | wenfeiyi666 |
| [HBASE-24916](https://issues.apache.org/jira/browse/HBASE-24916) | Region hole contains wrong regions pair when hole is created by first region deletion |  Major | hbck2 | Ajeet Rai | Mohammad Arshad |
| [HBASE-24968](https://issues.apache.org/jira/browse/HBASE-24968) | One of static initializers of CellComparatorImpl referring to subclass MetaCellComparator |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24971](https://issues.apache.org/jira/browse/HBASE-24971) | Upgrade JQuery to 3.5.1 |  Major | security, UI | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-19352](https://issues.apache.org/jira/browse/HBASE-19352) | Port HADOOP-10379: Protect authentication cookies with the HttpOnly and Secure flags |  Major | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-24719](https://issues.apache.org/jira/browse/HBASE-24719) | Renaming invalid rsgroup throws NPE instead of proper error message |  Major | . | chiranjeevi | Mohammad Arshad |
| [HBASE-24995](https://issues.apache.org/jira/browse/HBASE-24995) | MetaFixer fails to fix overlaps when multiple tables have overlaps |  Major | hbck2 | Mohammad Arshad | Mohammad Arshad |
| [HBASE-24958](https://issues.apache.org/jira/browse/HBASE-24958) | CompactingMemStore.timeOfOldestEdit error update |  Critical | regionserver | wenfeiyi666 | wenfeiyi666 |
| [HBASE-25016](https://issues.apache.org/jira/browse/HBASE-25016) | Should close ResultScanner in MetaTableAccessor.scanByRegionEncodedName |  Critical | master, meta | Duo Zhang | niuyulin |
| [HBASE-25014](https://issues.apache.org/jira/browse/HBASE-25014) | ScheduledChore is never triggered when initalDelay \> 1.5\*period |  Major | . | Sun Xin | Sun Xin |
| [HBASE-25009](https://issues.apache.org/jira/browse/HBASE-25009) | Hbck chore logs wrong message when loading regions from RS report |  Minor | . | Mohammad Arshad | Mohammad Arshad |
| [HBASE-25012](https://issues.apache.org/jira/browse/HBASE-25012) | HBASE-24359 causes replication missed log of some RemoteException |  Major | Replication | Sun Xin | Sun Xin |
| [HBASE-25021](https://issues.apache.org/jira/browse/HBASE-25021) | Nightly job should skip hadoop-2 integration test for master |  Major | build, scripts | Duo Zhang | Duo Zhang |
| [HBASE-25047](https://issues.apache.org/jira/browse/HBASE-25047) | WAL split edits number is negative in RegionServerUI |  Minor | UI, wal | Yi Mei | Junhong Xu |
| [HBASE-24481](https://issues.apache.org/jira/browse/HBASE-24481) | HBase Rest: Request for region detail of a table which doesn't exits is success(200 success code) instead of 404 |  Minor | . | Ajeet Rai | Kevin Wang |
| [HBASE-24956](https://issues.apache.org/jira/browse/HBASE-24956) | ConnectionManager#locateRegionInMeta waits for user region lock indefinitely. |  Major | Client | Rushabh Shah | Rushabh Shah |
| [HBASE-24896](https://issues.apache.org/jira/browse/HBASE-24896) | 'Stuck' in static initialization creating RegionInfo instance |  Major | . | Michael Stack | Michael Stack |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24894](https://issues.apache.org/jira/browse/HBASE-24894) | [Flakey Test] TestStochasticLoadBalancer.testMoveCostMultiplier |  Major | Balancer, master, test | Nick Dimiduk | Zheng Wang |
| [HBASE-24979](https://issues.apache.org/jira/browse/HBASE-24979) | Include batch mutatations in client operation timeout tests |  Major | . | Viraj Jasani | Viraj Jasani |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24876](https://issues.apache.org/jira/browse/HBASE-24876) | Fix the flaky job url in hbase-personality.sh |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24918](https://issues.apache.org/jira/browse/HBASE-24918) | Make RegionInfo#UNDEFINED IA.Private |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24857](https://issues.apache.org/jira/browse/HBASE-24857) |  Fix several problems when starting webUI |  Minor | canary, UI | Zhuoyue Huang | Zhuoyue Huang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14847](https://issues.apache.org/jira/browse/HBASE-14847) | Add FIFO compaction section to HBase book |  Major | documentation | Vladimir Rodionov | ethan hur |
| [HBASE-25004](https://issues.apache.org/jira/browse/HBASE-25004) | Log RegionTooBusyException details |  Major | . | Viraj Jasani | Viraj Jasani |


