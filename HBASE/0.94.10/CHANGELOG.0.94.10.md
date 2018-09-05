
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

## Release 0.94.10 - 2013-07-24



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8692](https://issues.apache.org/jira/browse/HBASE-8692) | [AccessController] Restrict HTableDescriptor enumeration |  Major | Coprocessors, security | Andrew Purtell | Andrew Purtell |
| [HBASE-8809](https://issues.apache.org/jira/browse/HBASE-8809) | Include deletes in the scan (setRaw) method does not respect the time range or the filter |  Major | Scanners | Vasu Mariyala | Lars Hofhansl |
| [HBASE-8767](https://issues.apache.org/jira/browse/HBASE-8767) | Backport hbase-8001 and hbase-8012, avoid lazy seek |  Major | . | stack | Lars Hofhansl |
| [HBASE-8921](https://issues.apache.org/jira/browse/HBASE-8921) | [thrift2] Add GenericOptionsParser to Thrift 2 server |  Major | Thrift | Lars George | Lars George |
| [HBASE-8908](https://issues.apache.org/jira/browse/HBASE-8908) | Backport HBASE-8882 and HBASE-8904 (An Integration Test to Test MTTR) to 0.94 |  Minor | test | Andrew Purtell | Andrew Purtell |
| [HBASE-8806](https://issues.apache.org/jira/browse/HBASE-8806) | Row locks are acquired repeatedly in HRegion.doMiniBatchMutation for duplicate rows. |  Critical | regionserver | churro morales | churro morales |
| [HBASE-8945](https://issues.apache.org/jira/browse/HBASE-8945) | Backport to 0.94: HBASE-7952 Remove update() and Improve ExplicitColumnTracker performance. |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8847](https://issues.apache.org/jira/browse/HBASE-8847) | Filter.transform() always applies unconditionally, even when combined in a FilterList |  Minor | Filters | Christophe Taton | Christophe Taton |
| [HBASE-8599](https://issues.apache.org/jira/browse/HBASE-8599) | HLogs in ZK are not cleaned up when replication lag is minimal |  Major | Replication | Varun Sharma | Varun Sharma |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8782](https://issues.apache.org/jira/browse/HBASE-8782) | Thrift2 can not parse values when using framed transport |  Major | Thrift | Hamed Madani | Hamed Madani |
| [HBASE-8811](https://issues.apache.org/jira/browse/HBASE-8811) | REST service ignores misspelled "check=" parameter, causing unexpected mutations |  Critical | REST | Chip Salzenberg | Chip Salzenberg |
| [HBASE-8794](https://issues.apache.org/jira/browse/HBASE-8794) | DependentColumnFilter.toString() throws NullPointerException |  Minor | Filters | Stefan Seelmann | Stefan Seelmann |
| [HBASE-8858](https://issues.apache.org/jira/browse/HBASE-8858) | Backport hbase-6979 "recovered.edits file should not break distributed log splitting" |  Major | . | stack | Lars Hofhansl |
| [HBASE-8776](https://issues.apache.org/jira/browse/HBASE-8776) | tweak retry settings some more (on trunk and 0.94) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8814](https://issues.apache.org/jira/browse/HBASE-8814) | Possible NPE in split if a region has empty store files. |  Major | regionserver | rajeshbabu | rajeshbabu |
| [HBASE-8678](https://issues.apache.org/jira/browse/HBASE-8678) | Wrongly delete cells in some case which can not be deleted |  Major | REST | Eric Huang | Jean-Marc Spaggiari |
| [HBASE-8910](https://issues.apache.org/jira/browse/HBASE-8910) | HMaster.abortNow shouldn't try to become a master again if it was stopped |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-8695](https://issues.apache.org/jira/browse/HBASE-8695) | The HBase thrift service ignores XML configuration |  Major | Thrift | Brandon Forehand | Lars George |
| [HBASE-8971](https://issues.apache.org/jira/browse/HBASE-8971) | Bump 0.94 version to 0.94.10-SNAPSHOT |  Major | build | Jesse Yates | Jesse Yates |
| [HBASE-8968](https://issues.apache.org/jira/browse/HBASE-8968) | Avoid call to zk in HRegionServer#getMaster() to log the master address which already read from the zk. |  Minor | Zookeeper | rajeshbabu | rajeshbabu |
| [HBASE-8967](https://issues.apache.org/jira/browse/HBASE-8967) | Duplicate call to snapshotManager.stop() in HRegionServer |  Minor | snapshots | Jerry He | Jerry He |
| [HBASE-8988](https://issues.apache.org/jira/browse/HBASE-8988) | Reuse the thread pool in the shell to not run out of threads |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-8432](https://issues.apache.org/jira/browse/HBASE-8432) | a table with unbalanced regions will balance indefinitely with the 'org.apache.hadoop.hbase.master.DefaultLoadBalancer' |  Major | Balancer | Wang Qiang |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8885](https://issues.apache.org/jira/browse/HBASE-8885) | Fix and reenable TestGet failing#testDynamicFilter |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7770](https://issues.apache.org/jira/browse/HBASE-7770) | minor integration test framework fixes |  Minor | . | Francis Liu | Francis Liu |
| [HBASE-8934](https://issues.apache.org/jira/browse/HBASE-8934) | Fix bunch of flaky tests |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-8914](https://issues.apache.org/jira/browse/HBASE-8914) | [0.94] TestRegionServerCoprocessorExceptionWithAbort is flaky |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-8969](https://issues.apache.org/jira/browse/HBASE-8969) | Backport HBASE-8535+HBASE-8586 TestHCM#testDeleteForZKConnLeak  enhancement to 0.94 |  Minor | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8928](https://issues.apache.org/jira/browse/HBASE-8928) | Make ChaosMonkey & LoadTest tools extensible, to allow addition of more actions and policies. |  Major | test | gautam | gautam |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8774](https://issues.apache.org/jira/browse/HBASE-8774) | Add BatchSize and Filter to Thrift2 |  Major | Thrift | Hamed Madani | Hamed Madani |
| [HBASE-8876](https://issues.apache.org/jira/browse/HBASE-8876) | Addendum to HBASE-8774 Add BatchSize and Filter to Thrift2 - Add BatchSize Test |  Major | Thrift | Lars George | Lars George |
| [HBASE-8819](https://issues.apache.org/jira/browse/HBASE-8819) | Port HBASE-5428 to Thrift 2 |  Major | Thrift | Lars George | Lars George |
| [HBASE-8826](https://issues.apache.org/jira/browse/HBASE-8826) | Ensure HBASE-8695 is covered in Thrift 2 |  Major | Thrift | Lars George | Lars George |
| [HBASE-8832](https://issues.apache.org/jira/browse/HBASE-8832) | Ensure HBASE-4658  is supported by Thrift 2 |  Major | Thrift | Lars George | Hamed Madani |
| [HBASE-8938](https://issues.apache.org/jira/browse/HBASE-8938) | Thrift2 does not close scanner instance |  Major | Thrift | Hamed Madani | Hamed Madani |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8829](https://issues.apache.org/jira/browse/HBASE-8829) | Improve failed TestMetaScanner assert message so can see where/why failure |  Major | . | stack | stack |


