
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

## Release 1.0.4 - Unreleased (as of 2016-01-16)

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
| [HBASE-14730](https://issues.apache.org/jira/browse/HBASE-14730) | region server needs to log warnings when there are attributes configured for cells with hfile v2 |  Major | regionserver | huaxiang sun | huaxiang sun |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15108](https://issues.apache.org/jira/browse/HBASE-15108) | TestReplicationAdmin failed on branch-1.0 |  Major | . | Heng Chen | Heng Chen |
| [HBASE-15104](https://issues.apache.org/jira/browse/HBASE-15104) | Occasional failures due to NotServingRegionException in IT tests |  Major | integration tests | huaxiang sun | huaxiang sun |
| [HBASE-15085](https://issues.apache.org/jira/browse/HBASE-15085) | IllegalStateException was thrown when scanning on bulkloaded HFiles |  Critical | . | Victor Xu | Victor Xu |
| [HBASE-15083](https://issues.apache.org/jira/browse/HBASE-15083) | Gets from Multiactions are not counted in metrics for gets. |  Major | . | Elliott Clark | Heng Chen |
| [HBASE-15052](https://issues.apache.org/jira/browse/HBASE-15052) | Use EnvironmentEdgeManager in ReplicationSource |  Trivial | Replication | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15035](https://issues.apache.org/jira/browse/HBASE-15035) | bulkloading hfiles with tags that require splits do not preserve tags |  Blocker | HFile | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-14989](https://issues.apache.org/jira/browse/HBASE-14989) | Implementation of Mutation.getWriteToWAL() is backwards |  Major | Client | James Taylor | Enis Soztutar |
| [HBASE-14968](https://issues.apache.org/jira/browse/HBASE-14968) | ConcurrentModificationException in region close resulting in the region staying in closing state |  Major | Region Assignment, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-14940](https://issues.apache.org/jira/browse/HBASE-14940) | Make our unsafe based ops more safe |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-14936](https://issues.apache.org/jira/browse/HBASE-14936) | CombinedBlockCache should overwrite CacheStats#rollMetricsPeriod() |  Major | BlockCache | Jianwei Cui | Jianwei Cui |
| [HBASE-14930](https://issues.apache.org/jira/browse/HBASE-14930) | check\_compatibility.sh needs smarter exit codes |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-14923](https://issues.apache.org/jira/browse/HBASE-14923) | VerifyReplication should not mask the exception during result comparison |  Minor | tooling | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-14904](https://issues.apache.org/jira/browse/HBASE-14904) | Mark Base[En\|De]coder LimitedPrivate and fix binary compat issue |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14840](https://issues.apache.org/jira/browse/HBASE-14840) | Sink cluster reports data replication request as success though the data is not replicated |  Major | Replication | Y. SREENIVASULU REDDY | Ashish Singhi |
| [HBASE-14822](https://issues.apache.org/jira/browse/HBASE-14822) | Renewing leases of scanners doesn't work |  Major | . | Samarth Jain | Lars Hofhansl |
| [HBASE-14806](https://issues.apache.org/jira/browse/HBASE-14806) | Missing sources.jar for several modules when building HBase |  Major | pom | Duo Zhang | Duo Zhang |
| [HBASE-14799](https://issues.apache.org/jira/browse/HBASE-14799) | Commons-collections object deserialization remote command execution vulnerability |  Critical | dependencies, security | Andrew Purtell | Andrew Purtell |
| [HBASE-14761](https://issues.apache.org/jira/browse/HBASE-14761) | Deletes with and without visibility expression do not delete the matching mutation |  Major | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14839](https://issues.apache.org/jira/browse/HBASE-14839) | [branch-1] Backport test categories so that patch backport is easier |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-14758](https://issues.apache.org/jira/browse/HBASE-14758) | Add UT case for unchecked error/exception thrown in AsyncProcess#sendMultiAction |  Minor | Client, test | Yu Li | Yu Li |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15095](https://issues.apache.org/jira/browse/HBASE-15095) | isReturnResult=false  on fast path in branch-1.1 and branch-1.0 is not respected |  Major | Performance | stack | Heng Chen |
| [HBASE-15031](https://issues.apache.org/jira/browse/HBASE-15031) | Fix merge of MVCC and SequenceID performance regression in branch-1.0 |  Major | Performance | stack | stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14869](https://issues.apache.org/jira/browse/HBASE-14869) | Better request latency and size histograms |  Major | . | Lars Hofhansl | Vikas Vishwakarma |
| [HBASE-15033](https://issues.apache.org/jira/browse/HBASE-15033) | Backport test-patch.sh and zombie-detector.sh from master to branch-1.0/1.1 |  Major | build | stack | stack |
| [HBASE-14516](https://issues.apache.org/jira/browse/HBASE-14516) | categorize hadoop-compat tests |  Critical | build, hadoop2, test | Sean Busbey | Sean Busbey |


