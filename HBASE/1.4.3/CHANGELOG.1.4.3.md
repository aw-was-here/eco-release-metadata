
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

## Release 1.4.3 - 2018-03-30

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18731](https://issues.apache.org/jira/browse/HBASE-18731) | [compat 1-2] Mark protected methods of QuotaSettings that touch Protobuf internals as IA.Private |  Major | API | stack | Sean Busbey |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18467](https://issues.apache.org/jira/browse/HBASE-18467) | nightly job needs to run all stages and then comment on jira |  Critical | community, test | Sean Busbey | Sean Busbey |
| [HBASE-20186](https://issues.apache.org/jira/browse/HBASE-20186) | Improve RSGroupBasedLoadBalancer#balanceCluster() to be more efficient when calculating cluster state for each rsgroup |  Minor | rsgroup | Xiang Li | Xiang Li |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19769](https://issues.apache.org/jira/browse/HBASE-19769) | IllegalAccessError on package-private Hadoop metrics2 classes in MapReduce jobs |  Critical | mapreduce, metrics | Josh Elser | Josh Elser |
| [HBASE-14897](https://issues.apache.org/jira/browse/HBASE-14897) | TestTableLockManager.testReapAllTableLocks is flakey |  Major | . | Heng Chen | Heng Chen |
| [HBASE-19553](https://issues.apache.org/jira/browse/HBASE-19553) | Old replica regions should be cleared from AM memory after primary region split or merge |  Minor | master | huaxiang sun | Pankaj Kumar |
| [HBASE-20016](https://issues.apache.org/jira/browse/HBASE-20016) | TestCatalogJanitorInMemoryStates#testInMemoryForReplicaParentCleanup is flaky |  Minor | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19391](https://issues.apache.org/jira/browse/HBASE-19391) | Calling HRegion#initializeRegionInternals from a region replica can still re-create a region directory |  Major | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-20062](https://issues.apache.org/jira/browse/HBASE-20062) | findbugs is not running on precommit checks |  Blocker | community, test | Sean Busbey | Mike Drob |
| [HBASE-20061](https://issues.apache.org/jira/browse/HBASE-20061) | HStore synchronized member variable filesCompacting should be private |  Major | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-20091](https://issues.apache.org/jira/browse/HBASE-20091) | Fix for 'build.plugins.plugin.version' for org.codehaus.mojo: is missing. |  Trivial | . | Artem Ervits | Artem Ervits |
| [HBASE-20001](https://issues.apache.org/jira/browse/HBASE-20001) | cleanIfNoMetaEntry() uses encoded instead of region name to lookup region |  Major | . | Francis Liu | Thiruvel Thirumoolan |
| [HBASE-20102](https://issues.apache.org/jira/browse/HBASE-20102) | AssignmentManager#shutdown doesn't shut down scheduled executor |  Minor | master, Region Assignment | Andrew Purtell | Andrew Purtell |
| [HBASE-19989](https://issues.apache.org/jira/browse/HBASE-19989) | READY\_TO\_MERGE and READY\_TO\_SPLIT do not update region state correctly |  Major | . | Ben Lau | Ben Lau |
| [HBASE-20106](https://issues.apache.org/jira/browse/HBASE-20106) | API Compliance checker should fall back to specifying origin as remote repo |  Major | API, community | Sean Busbey | Alex Leblang |
| [HBASE-19863](https://issues.apache.org/jira/browse/HBASE-19863) | java.lang.IllegalStateException: isDelete failed when SingleColumnValueFilter is used |  Major | Filters | Sergey Soldatov | Sergey Soldatov |
| [HBASE-19985](https://issues.apache.org/jira/browse/HBASE-19985) | Redundant instanceof check in ProtobufUtil#getServiceException |  Trivial | . | Ted Yu | Artem Ervits |
| [HBASE-20139](https://issues.apache.org/jira/browse/HBASE-20139) | NPE in RSRpcServices.get() when getRegion throws an exception |  Minor | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-20134](https://issues.apache.org/jira/browse/HBASE-20134) | support scripts use hard-coded /tmp |  Minor | website | Mike Drob | Sean Busbey |
| [HBASE-20164](https://issues.apache.org/jira/browse/HBASE-20164) | failed hadoopcheck should add footer link |  Major | community | Mike Drob | Mike Drob |
| [HBASE-20162](https://issues.apache.org/jira/browse/HBASE-20162) | [nightly] depending on pipeline execution we sometimes refer to the wrong workspace |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20174](https://issues.apache.org/jira/browse/HBASE-20174) | Fix TestZKLessMergeOnCluster flakiness |  Major | . | Francis Liu | Francis Liu |
| [HBASE-20153](https://issues.apache.org/jira/browse/HBASE-20153) | enable error-prone analysis in precommit |  Major | community | Mike Drob | Mike Drob |
| [HBASE-19802](https://issues.apache.org/jira/browse/HBASE-19802) | Wrong usage messages on shell commands (grant/revoke namespace syntax) |  Minor | shell | Csaba Skrabak | Csaba Skrabak |
| [HBASE-20189](https://issues.apache.org/jira/browse/HBASE-20189) | Typo in Required Java Version error message while building HBase. |  Trivial | build | Sakthi | Sakthi |
| [HBASE-20146](https://issues.apache.org/jira/browse/HBASE-20146) | Regions are stuck while opening when WAL is disabled |  Critical | wal | Ashish Singhi | Ashish Singhi |
| [HBASE-20141](https://issues.apache.org/jira/browse/HBASE-20141) | Fix TooManyFiles exception when RefreshingChannels in FileIOEngine |  Major | BucketCache | Zach York | Zach York |
| [HBASE-19364](https://issues.apache.org/jira/browse/HBASE-19364) | Truncate\_preserve fails with table when replica region \> 1 |  Major | master | Pankaj Kumar | Pankaj Kumar |
| [HBASE-18864](https://issues.apache.org/jira/browse/HBASE-18864) | NullPointerException thrown when adding rows to a table from peer cluster, table with replication factor other than 0 or 1 |  Major | Client, Replication | smita | Sakthi |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20052](https://issues.apache.org/jira/browse/HBASE-20052) | TestRegionOpen#testNonExistentRegionReplica fails due to NPE |  Major | . | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16848](https://issues.apache.org/jira/browse/HBASE-16848) | Usage for show\_peer\_tableCFs command doesn't include peer |  Minor | . | Ted Yu | Peter Somogyi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20089](https://issues.apache.org/jira/browse/HBASE-20089) | make\_rc.sh should name SHA-512 checksum files with the extension .sha512 |  Minor | . | Andrew Purtell | Josh Elser |
| [HBASE-20088](https://issues.apache.org/jira/browse/HBASE-20088) | Update copyright notices to year 2018 |  Minor | . | Andrew Purtell | Josh Elser |
| [HBASE-20075](https://issues.apache.org/jira/browse/HBASE-20075) | remove logic for branch-1.1 nightly testing |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-15151](https://issues.apache.org/jira/browse/HBASE-15151) | Rely on nightly tests for findbugs compliance on existing branch |  Critical | build, test | Sean Busbey | Sean Busbey |


