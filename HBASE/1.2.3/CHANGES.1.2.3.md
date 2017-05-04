
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

## Release 1.2.3 - 2016-09-12

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16321](https://issues.apache.org/jira/browse/HBASE-16321) | Ensure findbugs jsr305 jar isn't present |  Blocker | dependencies | Sean Busbey | Sean Busbey |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15931](https://issues.apache.org/jira/browse/HBASE-15931) | Add log for long-running tasks in AsyncProcess |  Critical | Operability | Yu Li | Yu Li |
| [HBASE-16241](https://issues.apache.org/jira/browse/HBASE-16241) | Allow specification of annotations to use when running check\_compatibility.sh |  Major | scripts | Dima Spivak | Dima Spivak |
| [HBASE-16266](https://issues.apache.org/jira/browse/HBASE-16266) | Do not throw ScannerTimeoutException when catch UnknownScannerException |  Major | Client, Scanners | Phil Yang | Phil Yang |
| [HBASE-16256](https://issues.apache.org/jira/browse/HBASE-16256) | Purpose of EnvironmentEdge, EnvironmentEdgeManager |  Trivial | documentation, regionserver | Sai Teja Ranuva | Sai Teja Ranuva |
| [HBASE-16287](https://issues.apache.org/jira/browse/HBASE-16287) | LruBlockCache size should not exceed acceptableSize too many |  Major | BlockCache | Yu Sun | Yu Sun |
| [HBASE-14345](https://issues.apache.org/jira/browse/HBASE-14345) | Consolidate printUsage in IntegrationTestLoadAndVerify |  Trivial | integration tests | Nick Dimiduk | Reid Chan |
| [HBASE-16379](https://issues.apache.org/jira/browse/HBASE-16379) | [replication] Minor improvement to replication/copy\_tables\_desc.rb |  Trivial | Replication, shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-16385](https://issues.apache.org/jira/browse/HBASE-16385) | Have hbase-rest pull hbase.rest.port from Constants.java |  Minor | REST | Dima Spivak | Yi Liang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16135](https://issues.apache.org/jira/browse/HBASE-16135) | PeerClusterZnode under rs of removed peer may never be deleted |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-16132](https://issues.apache.org/jira/browse/HBASE-16132) | Scan does not return all the result when regionserver is busy |  Major | Client | binlijin | binlijin |
| [HBASE-16190](https://issues.apache.org/jira/browse/HBASE-16190) | IntegrationTestDDLMasterFailover failed with IllegalArgumentException: n must be positive |  Minor | . | Romil Choksi | Romil Choksi |
| [HBASE-15775](https://issues.apache.org/jira/browse/HBASE-15775) | Canary launches two AuthUtil Chores |  Minor | canary | Sean Busbey | Vishal Khandelwal |
| [HBASE-16201](https://issues.apache.org/jira/browse/HBASE-16201) | NPE in RpcServer causing intermittent UT failure of TestMasterReplication#testHFileCyclicReplication |  Major | . | Yu Li | Yu Li |
| [HBASE-16207](https://issues.apache.org/jira/browse/HBASE-16207) | can't restore snapshot without "Admin" permission |  Major | master, snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16227](https://issues.apache.org/jira/browse/HBASE-16227) | [Shell] Column value formatter not working in scans |  Major | . | Appy | Appy |
| [HBASE-16144](https://issues.apache.org/jira/browse/HBASE-16144) | Replication queue's lock will live forever if RS acquiring the lock has died prematurely |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16237](https://issues.apache.org/jira/browse/HBASE-16237) | Blocks for hbase:meta table are not cached in L1 cache |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16272](https://issues.apache.org/jira/browse/HBASE-16272) | Overflow in ServerName's compareTo method |  Major | hbase | huaxiang sun | huaxiang sun |
| [HBASE-16281](https://issues.apache.org/jira/browse/HBASE-16281) | TestMasterReplication is flaky |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16289](https://issues.apache.org/jira/browse/HBASE-16289) | AsyncProcess stuck messages need to print region/server |  Critical | Operability | stack | Yu Li |
| [HBASE-16300](https://issues.apache.org/jira/browse/HBASE-16300) | LruBlockCache.CACHE\_FIXED\_OVERHEAD should calculate LruBlockCache size correctly |  Major | . | Yu Sun | Yu Sun |
| [HBASE-16288](https://issues.apache.org/jira/browse/HBASE-16288) | HFile intermediate block level indexes might recurse forever creating multi TB files |  Critical | HFile | Enis Soztutar | Enis Soztutar |
| [HBASE-16296](https://issues.apache.org/jira/browse/HBASE-16296) | Reverse scan performance degrades when using filter lists |  Major | Filters | James Taylor | Ted Yu |
| [HBASE-16284](https://issues.apache.org/jira/browse/HBASE-16284) | Unauthorized client can shutdown the cluster |  Major | . | Deokwoo Han | Deokwoo Han |
| [HBASE-16315](https://issues.apache.org/jira/browse/HBASE-16315) | RegionSizeCalculator prints region names as binary without escapes |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16319](https://issues.apache.org/jira/browse/HBASE-16319) | Fix TestCacheOnWrite after HBASE-16288 |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-16350](https://issues.apache.org/jira/browse/HBASE-16350) | Undo server abort from HBASE-14968 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16368](https://issues.apache.org/jira/browse/HBASE-16368) | test\*WhenRegionMove in TestPartialResultsFromClientSide is flaky |  Major | Scanners | Guanghao Zhang | Phil Yang |
| [HBASE-16363](https://issues.apache.org/jira/browse/HBASE-16363) | Correct javadoc for qualifier length and value length in Cell interface |  Minor | documentation | Xiang Li | Xiang Li |
| [HBASE-16420](https://issues.apache.org/jira/browse/HBASE-16420) | Fix source incompatibility of Table interface |  Major | . | Phil Yang | Phil Yang |
| [HBASE-15635](https://issues.apache.org/jira/browse/HBASE-15635) | Mean age of Blocks in cache (seconds) on webUI should be greater than zero |  Major | . | Heng Chen | Heng Chen |
| [HBASE-16429](https://issues.apache.org/jira/browse/HBASE-16429) | FSHLog: deadlock if rollWriter called when ring buffer filled with appends |  Critical | . | Yu Li | Yu Li |
| [HBASE-16464](https://issues.apache.org/jira/browse/HBASE-16464) | archive folder grows bigger and bigger due to corrupt snapshot under tmp dir |  Major | snapshots | Heng Chen | Heng Chen |
| [HBASE-16471](https://issues.apache.org/jira/browse/HBASE-16471) | Region Server metrics context will be wrong when machine hostname contain "master" word |  Minor | metrics | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16270](https://issues.apache.org/jira/browse/HBASE-16270) | Handle duplicate clearing of snapshot in region replicas |  Major | Replication | Robert Yokota | Robert Yokota |
| [HBASE-16304](https://issues.apache.org/jira/browse/HBASE-16304) | HRegion#RegionScannerImpl#handleFileNotFoundException may lead to deadlock when trying to obtain write lock on updatesLock |  Critical | . | mingmin xu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16194](https://issues.apache.org/jira/browse/HBASE-16194) | Should count in MSLAB chunk allocation into heap size change when adding duplicate cells |  Major | regionserver | Yu Li | Yu Li |
| [HBASE-16195](https://issues.apache.org/jira/browse/HBASE-16195) | Should not add chunk into chunkQueue if not using chunk pool in HeapMemStoreLAB |  Major | . | Yu Li | Yu Li |
| [HBASE-16189](https://issues.apache.org/jira/browse/HBASE-16189) | [Rolling Upgrade] 2.0 hfiles cannot be opened by 1.x servers |  Critical | migration | Enis Soztutar | ramkrishna.s.vasudevan |
| [HBASE-16317](https://issues.apache.org/jira/browse/HBASE-16317) | revert all ESAPI changes |  Blocker | dependencies, security | Sean Busbey | Nick Dimiduk |
| [HBASE-16452](https://issues.apache.org/jira/browse/HBASE-16452) | Procedure v2 - Make ProcedureWALPrettyPrinter extend Tool |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16318](https://issues.apache.org/jira/browse/HBASE-16318) | fail build if license isn't in whitelist |  Major | build, dependencies | Sean Busbey | Sean Busbey |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16517](https://issues.apache.org/jira/browse/HBASE-16517) | Make a 1.2.3 release |  Major | . | stack | stack |
| [HBASE-16260](https://issues.apache.org/jira/browse/HBASE-16260) | Audit dependencies for Category-X |  Critical | community, dependencies | Sean Busbey | Sean Busbey |
| [HBASE-16467](https://issues.apache.org/jira/browse/HBASE-16467) | Move AbstractHBaseTool to hbase-common |  Trivial | . | Appy | Appy |
| [HBASE-16376](https://issues.apache.org/jira/browse/HBASE-16376) | Document implicit side-effects on partial results when calling Scan#setBatch(int) |  Minor | API, documentation | Josh Elser | Josh Elser |


