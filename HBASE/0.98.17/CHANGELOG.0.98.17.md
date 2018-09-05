
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

## Release 0.98.17 - 2016-01-22



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14355](https://issues.apache.org/jira/browse/HBASE-14355) | Scan different TimeRange for each column family |  Major | Client, regionserver, Scanners | Dave Latham | churro morales |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14805](https://issues.apache.org/jira/browse/HBASE-14805) | status should show the master in shell |  Major | shell | Enis Soztutar | Enis Soztutar |
| [HBASE-14862](https://issues.apache.org/jira/browse/HBASE-14862) | Add support for reporting p90 for histogram metrics |  Minor | metrics | Sanjeev Lakshmanan | Sanjeev Lakshmanan |
| [HBASE-14866](https://issues.apache.org/jira/browse/HBASE-14866) | VerifyReplication should use peer configuration in peer connection |  Major | Replication | Gary Helmling | Gary Helmling |
| [HBASE-14976](https://issues.apache.org/jira/browse/HBASE-14976) | Add RPC call queues to the web ui |  Minor | UI | Elliott Clark | Pallavi Adusumilli |
| [HBASE-15038](https://issues.apache.org/jira/browse/HBASE-15038) | ExportSnapshot should support separate configurations for source and destination clusters |  Major | mapreduce, snapshots | Gary Helmling | Gary Helmling |
| [HBASE-14468](https://issues.apache.org/jira/browse/HBASE-14468) | Compaction improvements: FIFO compaction policy |  Major | Compaction, Performance | Vladimir Rodionov | Vladimir Rodionov |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13796](https://issues.apache.org/jira/browse/HBASE-13796) | ZKUtil doesn't clean quorum setting properly |  Minor | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-14597](https://issues.apache.org/jira/browse/HBASE-14597) | Fix Groups cache in multi-threaded env |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-14674](https://issues.apache.org/jira/browse/HBASE-14674) | Rpc handler / task monitoring seems to be broken after 0.98 |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-14425](https://issues.apache.org/jira/browse/HBASE-14425) | In Secure Zookeeper cluster superuser will not have sufficient permission if multiple values are configured in "hbase.superuser" |  Major | security, Zookeeper | Pankaj Kumar | Pankaj Kumar |
| [HBASE-14788](https://issues.apache.org/jira/browse/HBASE-14788) | Splitting a region does not support the hbase.rs.evictblocksonclose config when closing source region |  Major | regionserver | Randy Fox | Ted Yu |
| [HBASE-14806](https://issues.apache.org/jira/browse/HBASE-14806) | Missing sources.jar for several modules when building HBase |  Major | pom | Duo Zhang | Duo Zhang |
| [HBASE-14793](https://issues.apache.org/jira/browse/HBASE-14793) | Allow limiting size of block into L1 block cache. |  Major | BlockCache | Elliott Clark | Elliott Clark |
| [HBASE-14791](https://issues.apache.org/jira/browse/HBASE-14791) | Batch Deletes in MapReduce jobs (0.98) |  Major | . | Lars Hofhansl | Alex Araujo |
| [HBASE-14782](https://issues.apache.org/jira/browse/HBASE-14782) | FuzzyRowFilter skips valid rows |  Major | Filters | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14761](https://issues.apache.org/jira/browse/HBASE-14761) | Deletes with and without visibility expression do not delete the matching mutation |  Major | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14840](https://issues.apache.org/jira/browse/HBASE-14840) | Sink cluster reports data replication request as success though the data is not replicated |  Major | Replication | Y. SREENIVASULU REDDY | Ashish Singhi |
| [HBASE-14799](https://issues.apache.org/jira/browse/HBASE-14799) | Commons-collections object deserialization remote command execution vulnerability |  Critical | dependencies, security | Andrew Purtell | Andrew Purtell |
| [HBASE-14689](https://issues.apache.org/jira/browse/HBASE-14689) | Addendum and unit test for HBASE-13471 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14893](https://issues.apache.org/jira/browse/HBASE-14893) | Race between mutation on region and region closing operation leads to NotServingRegionException |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14531](https://issues.apache.org/jira/browse/HBASE-14531) | graceful\_stop.sh "if [ "$local" ]" condition unexpected behaviour |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-14905](https://issues.apache.org/jira/browse/HBASE-14905) | VerifyReplication does not honour versions option |  Major | tooling | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-14904](https://issues.apache.org/jira/browse/HBASE-14904) | Mark Base[En\|De]coder LimitedPrivate and fix binary compat issue |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14928](https://issues.apache.org/jira/browse/HBASE-14928) | Start row should be set for query through HBase REST gateway involving globbing option |  Major | REST | Ted Yu | Ted Yu |
| [HBASE-14926](https://issues.apache.org/jira/browse/HBASE-14926) | Hung ThriftServer; no timeout on read from client; if client crashes, worker thread gets stuck reading |  Major | Thrift | stack | stack |
| [HBASE-14923](https://issues.apache.org/jira/browse/HBASE-14923) | VerifyReplication should not mask the exception during result comparison |  Minor | tooling | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-14930](https://issues.apache.org/jira/browse/HBASE-14930) | check\_compatibility.sh needs smarter exit codes |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-14960](https://issues.apache.org/jira/browse/HBASE-14960) | Fallback to using default RPCControllerFactory if class cannot be loaded |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14968](https://issues.apache.org/jira/browse/HBASE-14968) | ConcurrentModificationException in region close resulting in the region staying in closing state |  Major | Region Assignment, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-14974](https://issues.apache.org/jira/browse/HBASE-14974) | Total number of Regions in Transition number on UI incorrect |  Trivial | UI | Elliott Clark | Mikhail Antonov |
| [HBASE-14989](https://issues.apache.org/jira/browse/HBASE-14989) | Implementation of Mutation.getWriteToWAL() is backwards |  Major | Client | James Taylor | Enis Soztutar |
| [HBASE-15009](https://issues.apache.org/jira/browse/HBASE-15009) | Update test-patch.sh on branches; to fix curtailed build report |  Major | build | stack | stack |
| [HBASE-14822](https://issues.apache.org/jira/browse/HBASE-14822) | Renewing leases of scanners doesn't work |  Major | . | Samarth Jain | Lars Hofhansl |
| [HBASE-15015](https://issues.apache.org/jira/browse/HBASE-15015) | Checktyle plugin shouldn't check Jamon-generated Java classes |  Minor | build | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15022](https://issues.apache.org/jira/browse/HBASE-15022) | undefined method `getZooKeeperClusterKey' for Java::OrgApacheHadoopHbaseZookeeper::ZKUtil:Class |  Major | shell | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15032](https://issues.apache.org/jira/browse/HBASE-15032) | hbase shell scan filter string assumes UTF-8 encoding |  Major | shell | huaxiang sun | huaxiang sun |
| [HBASE-14940](https://issues.apache.org/jira/browse/HBASE-14940) | Make our unsafe based ops more safe |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-15039](https://issues.apache.org/jira/browse/HBASE-15039) | HMaster and RegionServers should try to refresh token keys from zk when facing InvalidToken |  Major | . | Yong Zhang | Yong Zhang |
| [HBASE-15035](https://issues.apache.org/jira/browse/HBASE-15035) | bulkloading hfiles with tags that require splits do not preserve tags |  Blocker | HFile | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-15011](https://issues.apache.org/jira/browse/HBASE-15011) | turn off the jdk8 javadoc linter. :( |  Blocker | build, documentation | Sean Busbey | Sean Busbey |
| [HBASE-14987](https://issues.apache.org/jira/browse/HBASE-14987) | Compaction marker whose region name doesn't match current region's needs to be handled |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15080](https://issues.apache.org/jira/browse/HBASE-15080) | Remove synchronized block from MasterServiceStubMaker#releaseZooKeeperWatcher() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15052](https://issues.apache.org/jira/browse/HBASE-15052) | Use EnvironmentEdgeManager in ReplicationSource |  Trivial | Replication | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15085](https://issues.apache.org/jira/browse/HBASE-15085) | IllegalStateException was thrown when scanning on bulkloaded HFiles |  Critical | . | Victor Xu | Victor Xu |
| [HBASE-14512](https://issues.apache.org/jira/browse/HBASE-14512) | Cache UGI groups |  Major | Performance, security | Elliott Clark | Elliott Clark |
| [HBASE-14771](https://issues.apache.org/jira/browse/HBASE-14771) | RpcServer#getRemoteAddress always returns null |  Minor | IPC/RPC | Abhishek Kumar | Abhishek Kumar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14758](https://issues.apache.org/jira/browse/HBASE-14758) | Add UT case for unchecked error/exception thrown in AsyncProcess#sendMultiAction |  Minor | Client, test | Yu Li | Yu Li |
| [HBASE-14584](https://issues.apache.org/jira/browse/HBASE-14584) | TestNamespacesInstanceModel fails on jdk8 |  Major | REST, test | Nick Dimiduk | Matt Warhaftig |
| [HBASE-14839](https://issues.apache.org/jira/browse/HBASE-14839) | [branch-1] Backport test categories so that patch backport is easier |  Major | test | Enis Soztutar | Enis Soztutar |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14863](https://issues.apache.org/jira/browse/HBASE-14863) | Add missing test/resources/log4j files in hbase modules |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14869](https://issues.apache.org/jira/browse/HBASE-14869) | Better request latency and size histograms |  Major | . | Lars Hofhansl | Vikas Vishwakarma |
| [HBASE-14516](https://issues.apache.org/jira/browse/HBASE-14516) | categorize hadoop-compat tests |  Critical | build, hadoop2, test | Sean Busbey | Sean Busbey |


