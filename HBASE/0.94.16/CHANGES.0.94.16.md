
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

## Release 0.94.16 - 2014-01-20



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10285](https://issues.apache.org/jira/browse/HBASE-10285) | All for configurable policies in ChaosMonkey |  Minor | test | Cody Marcel | Cody Marcel |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10193](https://issues.apache.org/jira/browse/HBASE-10193) | Cleanup HRegion if one of the store fails to open at region initialization |  Critical | regionserver | Aditya Kishore | Aditya Kishore |
| [HBASE-8558](https://issues.apache.org/jira/browse/HBASE-8558) | Add timeout limit for HBaseClient dataOutputStream |  Major | Client | wanbin | Liang Xie |
| [HBASE-10225](https://issues.apache.org/jira/browse/HBASE-10225) | Bug in calls to RegionObsever.postScannerFilterRow |  Major | Coprocessors | Lars Hofhansl | Anoop Sam John |
| [HBASE-10214](https://issues.apache.org/jira/browse/HBASE-10214) | Regionserver shutdown improperly and leaves the dir in .old not deleted |  Major | regionserver | binlijin | binlijin |
| [HBASE-10215](https://issues.apache.org/jira/browse/HBASE-10215) | TableNotFoundException should be thrown after removing stale znode in ETH |  Minor | master | rajeshbabu | rajeshbabu |
| [HBASE-9346](https://issues.apache.org/jira/browse/HBASE-9346) | HBCK should provide an option to check if regions boundaries are the same in META and in stores. |  Major | hbck, Operability | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-7226](https://issues.apache.org/jira/browse/HBASE-7226) | HRegion.checkAndMutate uses incorrect comparison result for \<, \<=, \> and \>= |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10250](https://issues.apache.org/jira/browse/HBASE-10250) | [0.94] TestHLog fails occasionally |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8912](https://issues.apache.org/jira/browse/HBASE-8912) | [0.94] AssignmentManager throws IllegalStateException from PENDING\_OPEN to OFFLINE |  Critical | . | Enis Soztutar | Lars Hofhansl |
| [HBASE-10279](https://issues.apache.org/jira/browse/HBASE-10279) | TestStore.testDeleteExpiredStoreFiles is flaky |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10284](https://issues.apache.org/jira/browse/HBASE-10284) | Build broken with svn 1.8 |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10273](https://issues.apache.org/jira/browse/HBASE-10273) | AssignmentManager.regions and AssignmentManager.servers are not always updated in tandem |  Major | master | Honghua Feng | Honghua Feng |
| [HBASE-10272](https://issues.apache.org/jira/browse/HBASE-10272) | Cluster becomes nonoperational if the node hosting the active Master AND ROOT/META table goes offline |  Critical | IPC/RPC | Aditya Kishore | Aditya Kishore |
| [HBASE-10078](https://issues.apache.org/jira/browse/HBASE-10078) | Dynamic Filter - Not using DynamicClassLoader when using FilterList |  Minor | Filters | Federico Gaule | Jimmy Xiang |
| [HBASE-10286](https://issues.apache.org/jira/browse/HBASE-10286) | Revert HBASE-9593, breaks RS wildcard addresses |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10268](https://issues.apache.org/jira/browse/HBASE-10268) | TestSplitLogWorker occasionally fails |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10281](https://issues.apache.org/jira/browse/HBASE-10281) | TestMultiParallel.testFlushCommitsNoAbort fails frequently in 0.94 |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10306](https://issues.apache.org/jira/browse/HBASE-10306) | Backport HBASE-6820 to 0.94, MiniZookeeperCluster should ensure that ZKDatabase is closed upon shutdown() |  Minor | . | chendihao | chendihao |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10259](https://issues.apache.org/jira/browse/HBASE-10259) | [0.94] Upgrade JUnit to 4.11 |  Major | . | Lars Hofhansl | Lars Hofhansl |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10257](https://issues.apache.org/jira/browse/HBASE-10257) | [0.94] Master aborts due to assignment race |  Critical | . | Lars Hofhansl | Lars Hofhansl |


