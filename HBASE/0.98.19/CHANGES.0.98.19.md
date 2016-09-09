
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

## Release 0.98.19 - 2016-04-29



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15212](https://issues.apache.org/jira/browse/HBASE-15212) | RRCServer should enforce max request size |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15475](https://issues.apache.org/jira/browse/HBASE-15475) | Allow TimestampsFilter to provide a seek hint |  Major | Client, Filters, regionserver | Elliott Clark | Elliott Clark |
| [HBASE-15191](https://issues.apache.org/jira/browse/HBASE-15191) | CopyTable and VerifyReplication - Option to specify batch size, versions |  Minor | Replication | Parth Shah | Parth Shah |
| [HBASE-14983](https://issues.apache.org/jira/browse/HBASE-14983) | Create metrics for per block type hit/miss ratios |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-15569](https://issues.apache.org/jira/browse/HBASE-15569) | Make Bytes.toStringBinary faster |  Minor | Performance | Junegunn Choi | Junegunn Choi |
| [HBASE-15647](https://issues.apache.org/jira/browse/HBASE-15647) | Backport HBASE-15507 to 0.98 |  Major | Replication | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-15614](https://issues.apache.org/jira/browse/HBASE-15614) | Report metrics from JvmPauseMonitor |  Major | metrics, regionserver | Nick Dimiduk | Andrew Purtell |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12663](https://issues.apache.org/jira/browse/HBASE-12663) | unify getTableDescriptors() and listTableDescriptorsByNamespace() |  Major | master, security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12674](https://issues.apache.org/jira/browse/HBASE-12674) | Add permission check to getNamespaceDescriptor() |  Major | master, security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11830](https://issues.apache.org/jira/browse/HBASE-11830) | TestReplicationThrottler.testThrottling failed on virtual boxes |  Minor | test | Sergey Soldatov | Stephen Yuan Jiang |
| [HBASE-13700](https://issues.apache.org/jira/browse/HBASE-13700) | Allow Thrift2 HSHA server to have configurable threads |  Major | Thrift | Elliott Clark | Elliott Clark |
| [HBASE-14809](https://issues.apache.org/jira/browse/HBASE-14809) | Grant / revoke Namespace admin permission to group |  Major | security | Steven Hancz | Ted Yu |
| [HBASE-15548](https://issues.apache.org/jira/browse/HBASE-15548) | SyncTable: sourceHashDir is supposed to be optional but won't work without |  Minor | Replication | My Ho | Dave Latham |
| [HBASE-15234](https://issues.apache.org/jira/browse/HBASE-15234) | ReplicationLogCleaner can abort due to transient ZK issues |  Critical | master, Replication | Gary Helmling | Gary Helmling |
| [HBASE-15582](https://issues.apache.org/jira/browse/HBASE-15582) | SnapshotManifestV1 too verbose when there are no regions |  Trivial | master, snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15587](https://issues.apache.org/jira/browse/HBASE-15587) | FSTableDescriptors.getDescriptor() logs stack trace erronously |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15627](https://issues.apache.org/jira/browse/HBASE-15627) |  Miss space and closing quote in AccessController#checkSystemOrSuperUser |  Minor | security | huaxiang sun | huaxiang sun |
| [HBASE-15621](https://issues.apache.org/jira/browse/HBASE-15621) | Suppress Hbase SnapshotHFile cleaner error  messages when a snaphot is going on |  Minor | snapshots | huaxiang sun | huaxiang sun |
| [HBASE-15637](https://issues.apache.org/jira/browse/HBASE-15637) | TSHA Thrift-2 server should allow limiting call queue size |  Major | Thrift | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15405](https://issues.apache.org/jira/browse/HBASE-15405) | Synchronize final results logging single thread in PE, fix wrong defaults in help message |  Minor | Performance | Appy | Appy |
| [HBASE-15622](https://issues.apache.org/jira/browse/HBASE-15622) | Superusers does not consider the keytab credentials |  Critical | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15650](https://issues.apache.org/jira/browse/HBASE-15650) | Remove TimeRangeTracker as point of contention when many threads reading a StoreFile |  Major | Performance | stack | stack |
| [HBASE-15664](https://issues.apache.org/jira/browse/HBASE-15664) | Use Long.MAX\_VALUE instead of HConstants.FOREVER in CompactionPolicy |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-15673](https://issues.apache.org/jira/browse/HBASE-15673) | [PE tool] Fix latency metrics for multiGet |  Major | Performance | Appy | Appy |
| [HBASE-15672](https://issues.apache.org/jira/browse/HBASE-15672) | hadoop.hbase.security.visibility.TestVisibilityLabelsWithDeletes fails |  Major | test | Vladimir Rodionov | Anoop Sam John |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15679](https://issues.apache.org/jira/browse/HBASE-15679) | Assertion on wrong variable in TestReplicationThrottler#testThrottling |  Minor | . | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12511](https://issues.apache.org/jira/browse/HBASE-12511) | namespace permissions - add support from table creation privilege in a namespace 'C' |  Blocker | . | Francis Liu | Huaiyu Zhu |
| [HBASE-15479](https://issues.apache.org/jira/browse/HBASE-15479) | No more garbage or beware of autoboxing |  Major | Client | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15460](https://issues.apache.org/jira/browse/HBASE-15460) | Fix infer issues in hbase-common |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15412](https://issues.apache.org/jira/browse/HBASE-15412) | Add average region size metric |  Major | . | Enis Soztutar | Alicia Ying Shu |
| [HBASE-15389](https://issues.apache.org/jira/browse/HBASE-15389) | Write out multiple files when compaction |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-15400](https://issues.apache.org/jira/browse/HBASE-15400) | Use DateTieredCompactor for Date Tiered Compaction |  Major | Compaction | Clara Xiong | Clara Xiong |
| [HBASE-15527](https://issues.apache.org/jira/browse/HBASE-15527) | Refactor Compactor related classes |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-15665](https://issues.apache.org/jira/browse/HBASE-15665) | Support using different StoreFileComparators for different CompactionPolicies |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-15386](https://issues.apache.org/jira/browse/HBASE-15386) | PREFETCH\_BLOCKS\_ON\_OPEN in HColumnDescriptor is ignored |  Major | BucketCache | stack | stack |
| [HBASE-15640](https://issues.apache.org/jira/browse/HBASE-15640) | L1 cache doesn't give fair warning that it is showing partial stats only when it hits limit |  Major | BlockCache | stack | stack |
| [HBASE-15662](https://issues.apache.org/jira/browse/HBASE-15662) | Hook up JvmPauseMonitor to REST server |  Major | metrics, REST | Andrew Purtell | Andrew Purtell |
| [HBASE-15663](https://issues.apache.org/jira/browse/HBASE-15663) | Hook up JvmPauseMonitor to ThriftServer |  Major | metrics, Thrift | Andrew Purtell | Andrew Purtell |
| [HBASE-15661](https://issues.apache.org/jira/browse/HBASE-15661) | Hook up JvmPauseMonitor metrics in Master |  Major | master, metrics | Andrew Purtell | Andrew Purtell |
| [HBASE-15368](https://issues.apache.org/jira/browse/HBASE-15368) | Add pluggable window support |  Major | Compaction | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14870](https://issues.apache.org/jira/browse/HBASE-14870) | Backport namespace permissions to 98 branch |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-15629](https://issues.apache.org/jira/browse/HBASE-15629) | Backport HBASE-14703 to 0.98+ |  Major | . | Heng Chen | Heng Chen |


