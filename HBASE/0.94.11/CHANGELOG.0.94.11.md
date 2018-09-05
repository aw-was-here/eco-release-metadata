
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

## Release 0.94.11 - 2013-08-20



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7826](https://issues.apache.org/jira/browse/HBASE-7826) | Improve Hbase Thrift v1 to return results in sorted order |  Minor | Thrift | Shivendra Pratap Singh | Shivendra Pratap Singh |
| [HBASE-8663](https://issues.apache.org/jira/browse/HBASE-8663) | a HBase Shell command to list the tables replicated from current cluster |  Critical | Replication, shell | Demai Ni | Demai Ni |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9029](https://issues.apache.org/jira/browse/HBASE-9029) | Backport HBASE-8706 Some improvement in snapshot to 0.94 |  Minor | snapshots | Jerry He | Jerry He |
| [HBASE-9132](https://issues.apache.org/jira/browse/HBASE-9132) | Use table dir modtime to avoid scanning table dir to check cached table descriptor in 0.94 |  Major | . | Dave Latham | Dave Latham |
| [HBASE-9019](https://issues.apache.org/jira/browse/HBASE-9019) | Port HBASE-8690: Reduce unnecessary getFileStatus hdfs calls in TTL hfile and hlog cleanners to 0.94 |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-8995](https://issues.apache.org/jira/browse/HBASE-8995) | Add hadoop-1.2 profile |  Major | . | Ted Yu | Ted Yu |
| [HBASE-6580](https://issues.apache.org/jira/browse/HBASE-6580) | Deprecate HTablePool in favor of HConnection.getTable(...) |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9139](https://issues.apache.org/jira/browse/HBASE-9139) | Independent timeout configuration for rpc channel between cluster nodes |  Minor | IPC/RPC, regionserver | Julian Zhou | Julian Zhou |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6826](https://issues.apache.org/jira/browse/HBASE-6826) | [WINDOWS] TestFromClientSide failures |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-8935](https://issues.apache.org/jira/browse/HBASE-8935) | IntegrationTestBigLinkedList fails under load on 0.94 due to some scan issues - add logging |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-9026](https://issues.apache.org/jira/browse/HBASE-9026) | RestartRsHoldingRoot action in org.apache.hadoop.hbase.util.ChaosMonkey restarting the server holding .META. instead of -ROOT- |  Minor | . | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-9048](https://issues.apache.org/jira/browse/HBASE-9048) | HCM throws NullPointerException under load |  Minor | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8698](https://issues.apache.org/jira/browse/HBASE-8698) | potential thread creation in MetaScanner.metaScan |  Major | Client | Kireet Reddy | Lars Hofhansl |
| [HBASE-9060](https://issues.apache.org/jira/browse/HBASE-9060) | ExportSnapshot job fails if target path contains percentage character |  Minor | snapshots | Jerry He | Jerry He |
| [HBASE-9050](https://issues.apache.org/jira/browse/HBASE-9050) | HBaseClient#call could hang |  Minor | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9032](https://issues.apache.org/jira/browse/HBASE-9032) | Result.getBytes() returns null if backed by KeyValue array |  Major | Client | Aditya Kishore | Aditya Kishore |
| [HBASE-9080](https://issues.apache.org/jira/browse/HBASE-9080) | Retain assignment should be used when re-enabling table(s) |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-9049](https://issues.apache.org/jira/browse/HBASE-9049) | Generalize ServerCallable creation to support custom callables |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-9085](https://issues.apache.org/jira/browse/HBASE-9085) | Integration Tests fails because of bug in teardown phase where the cluster state is not being restored properly. |  Major | test | gautam | gautam |
| [HBASE-8067](https://issues.apache.org/jira/browse/HBASE-8067) | TestHFileArchiving.testArchiveOnTableDelete sometimes fails |  Major | Admin, master, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8670](https://issues.apache.org/jira/browse/HBASE-8670) | [0.94] Backport HBASE-8449,HBASE-8204 and HBASE-8699 to 0.94 (Refactor recoverLease retries and pauses) |  Major | Filesystem Integration, master, wal | Enis Soztutar | Enis Soztutar |
| [HBASE-9087](https://issues.apache.org/jira/browse/HBASE-9087) | Handlers being blocked during reads |  Major | Performance | Pablo Medina | Elliott Clark |
| [HBASE-8949](https://issues.apache.org/jira/browse/HBASE-8949) | hbase.mapreduce.hfileoutputformat.blocksize should configure with blocksize of a table |  Major | mapreduce | rajeshbabu | rajeshbabu |
| [HBASE-9120](https://issues.apache.org/jira/browse/HBASE-9120) | ClassFinder logs errors that are not |  Minor | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-9115](https://issues.apache.org/jira/browse/HBASE-9115) | HTableInterface.append operation may overwrites values |  Critical | . | Aleksandr B | Ted Yu |
| [HBASE-9079](https://issues.apache.org/jira/browse/HBASE-9079) | FilterList getNextKeyHint skips rows that should be included in the results |  Major | Filters | Viral Bajaria | Viral Bajaria |
| [HBASE-9158](https://issues.apache.org/jira/browse/HBASE-9158) | Serious bug in cyclic replication |  Critical | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9097](https://issues.apache.org/jira/browse/HBASE-9097) | Set HBASE\_CLASSPATH before rest of the classpath |  Major | scripts | Jesse Yates | Jesse Yates |
| [HBASE-9146](https://issues.apache.org/jira/browse/HBASE-9146) | TestHTablePool hangs when run as part of runMediumTests profile |  Major | test | Rajesh Venkatachalam | Rajesh Venkatachalam |
| [HBASE-9189](https://issues.apache.org/jira/browse/HBASE-9189) | IncreasingToUpperBoundRegionSplitPolicy.shouldSplit() should check all the stores before returning. |  Major | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-9200](https://issues.apache.org/jira/browse/HBASE-9200) | HFilePrettyPrinter finds incorrect largest row |  Minor | . | Shrijeet Paliwal | Shrijeet Paliwal |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9090](https://issues.apache.org/jira/browse/HBASE-9090) | cleanup snapshot tests setup/teardown code |  Major | snapshots, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9107](https://issues.apache.org/jira/browse/HBASE-9107) | [0.94] Backport HBASE-6950 TestAcidGuarantees system test now flushes too aggressively to 0.94 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9106](https://issues.apache.org/jira/browse/HBASE-9106) | Do not fail TestAcidGuarantees for exceptions on table flush |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9075](https://issues.apache.org/jira/browse/HBASE-9075) | [0.94] Backport HBASE-5760 Unit tests should write only under /target to 0.94 |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-8816](https://issues.apache.org/jira/browse/HBASE-8816) | Add support of loading multiple tables into LoadTestTool |  Minor | test | Jeffrey Zhong | Jeffrey Zhong |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8779](https://issues.apache.org/jira/browse/HBASE-8779) | Add mutateRow method support to Thrift2 |  Major | Thrift | duanhongyi | Hamed Madani |
| [HBASE-8946](https://issues.apache.org/jira/browse/HBASE-8946) | Add a new function to Thrift 2 to open scanner, get results and close scanner |  Major | Thrift | Hamed Madani | Hamed Madani |
| [HBASE-8948](https://issues.apache.org/jira/browse/HBASE-8948) | Bound table pool size in Thrift 2 server |  Major | Thrift | Lars George | Lars George |
| [HBASE-8947](https://issues.apache.org/jira/browse/HBASE-8947) | Thrift 2 : Replace "bool writeToWAL" with "TDurability durability" |  Major | Thrift | Hamed Madani | Hamed Madani |


