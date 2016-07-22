
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

## Release 1.1.6 - Unreleased (as of 2016-07-22)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15119](https://issues.apache.org/jira/browse/HBASE-15119) | Include git SHA in check\_compatibility reports |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13532](https://issues.apache.org/jira/browse/HBASE-13532) | Make UnknownScannerException logging less scary |  Trivial | . | Appy | Appy |
| [HBASE-15837](https://issues.apache.org/jira/browse/HBASE-15837) | Memstore size accounting is wrong if postBatchMutate() throws exception |  Major | regionserver | Josh Elser | Josh Elser |
| [HBASE-15854](https://issues.apache.org/jira/browse/HBASE-15854) | Log the cause of SASL connection failures |  Minor | security | Robert Yokota |  |
| [HBASE-16124](https://issues.apache.org/jira/browse/HBASE-16124) | Make check\_compatibility.sh less verbose when building HBase |  Minor | build, test | Dima Spivak | Dima Spivak |
| [HBASE-16140](https://issues.apache.org/jira/browse/HBASE-16140) | bump owasp.esapi from 2.1.0 to 2.1.0.1 |  Major | dependencies | Jonathan Hsieh | Jonathan Hsieh |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15801](https://issues.apache.org/jira/browse/HBASE-15801) | Upgrade checkstyle for all branches |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-15811](https://issues.apache.org/jira/browse/HBASE-15811) | Batch Get after batch Put does not fetch all Cells |  Blocker | Client | stack | stack |
| [HBASE-15615](https://issues.apache.org/jira/browse/HBASE-15615) | Wrong sleep time when RegionServerCallable need retry |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15852](https://issues.apache.org/jira/browse/HBASE-15852) | Backport HBASE-15125 'HBaseFsck's adoptHdfsOrphan function creates region with wrong end key boundary' to Apache HBase 1.1 |  Major | hbck | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15824](https://issues.apache.org/jira/browse/HBASE-15824) | LocalHBaseCluster gets bind exception in master info port |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15850](https://issues.apache.org/jira/browse/HBASE-15850) | Localize the configuration change in testCheckTableLocks to reduce flakiness of TestHBaseFsck test suite |  Major | hbck | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15856](https://issues.apache.org/jira/browse/HBASE-15856) | Cached Connection instances can wind up with addresses never resolved |  Critical | Client | Gary Helmling | Gary Helmling |
| [HBASE-15873](https://issues.apache.org/jira/browse/HBASE-15873) | ACL for snapshot restore / clone is not enforced |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-15880](https://issues.apache.org/jira/browse/HBASE-15880) | RpcClientImpl#tracedWriteRequest incorrectly closes HTrace span |  Major | tracing | Mikhail Antonov | Mikhail Antonov |
| [HBASE-11625](https://issues.apache.org/jira/browse/HBASE-11625) | Reading datablock throws "Invalid HFile block magic" and can not switch to hdfs checksum |  Major | HFile | qian wang | Appy |
| [HBASE-15955](https://issues.apache.org/jira/browse/HBASE-15955) | Disable action in CatalogJanitor#setEnabled should wait for active cleanup scan to finish |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15954](https://issues.apache.org/jira/browse/HBASE-15954) | REST server should log requests with TRACE instead of DEBUG |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15698](https://issues.apache.org/jira/browse/HBASE-15698) | Increment TimeRange not serialized to server |  Blocker | . | James Taylor | Ted Yu |
| [HBASE-15957](https://issues.apache.org/jira/browse/HBASE-15957) | RpcClientImpl.close never ends in some circumstances |  Major | Client, rpc | Sergey Soldatov | Sergey Soldatov |
| [HBASE-15975](https://issues.apache.org/jira/browse/HBASE-15975) | logic in TestHTableDescriptor#testAddCoprocessorWithSpecStr is wrong |  Trivial | test | huaxiang sun | huaxiang sun |
| [HBASE-16016](https://issues.apache.org/jira/browse/HBASE-16016) | AssignmentManager#waitForAssignment could have unexpected negative deadline |  Major | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16032](https://issues.apache.org/jira/browse/HBASE-16032) | Possible memory leak in StoreScanner |  Major | . | Yu Li | Yu Li |
| [HBASE-16012](https://issues.apache.org/jira/browse/HBASE-16012) | Major compaction can't work due to obsolete scanner read point in RegionServer |  Major | Compaction, Scanners | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15976](https://issues.apache.org/jira/browse/HBASE-15976) | RegionServerMetricsWrapperRunnable will be failure  when disable blockcache. |  Major | . | Liu Junhong | Jingcheng Du |
| [HBASE-16129](https://issues.apache.org/jira/browse/HBASE-16129) | check\_compatibility.sh is broken when using Java API Compliance Checker v1.7 |  Major | test | Dima Spivak | Dima Spivak |
| [HBASE-16093](https://issues.apache.org/jira/browse/HBASE-16093) | Splits failed before creating daughter regions leave meta inconsistent |  Critical | master, Region Assignment | Elliott Clark | Elliott Clark |
| [HBASE-16135](https://issues.apache.org/jira/browse/HBASE-16135) | PeerClusterZnode under rs of removed peer may never be deleted |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-16132](https://issues.apache.org/jira/browse/HBASE-16132) | Scan does not return all the result when regionserver is busy |  Major | Client | binlijin | binlijin |
| [HBASE-16190](https://issues.apache.org/jira/browse/HBASE-16190) | IntegrationTestDDLMasterFailover failed with IllegalArgumentException: n must be positive |  Minor | . | Romil Choksi | Romil Choksi |
| [HBASE-15925](https://issues.apache.org/jira/browse/HBASE-15925) | compat-module maven variable not evaluated |  Blocker | build | Nick Dimiduk | Sean Busbey |
| [HBASE-16201](https://issues.apache.org/jira/browse/HBASE-16201) | NPE in RpcServer causing intermittent UT failure of TestMasterReplication#testHFileCyclicReplication |  Major | . | Yu Li | Yu Li |
| [HBASE-16207](https://issues.apache.org/jira/browse/HBASE-16207) | can't restore snapshot without "Admin" permission |  Major | master, snapshots | Matteo Bertozzi | Matteo Bertozzi |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15878](https://issues.apache.org/jira/browse/HBASE-15878) | Deprecate doBulkLoad(Path hfofDir, final HTable table)  in branch-1 (even though its 'late') |  Major | . | stack | stack |
| [HBASE-16056](https://issues.apache.org/jira/browse/HBASE-16056) | Procedure v2 - fix master crash for FileNotFound |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16194](https://issues.apache.org/jira/browse/HBASE-16194) | Should count in MSLAB chunk allocation into heap size change when adding duplicate cells |  Major | regionserver | Yu Li | Yu Li |
| [HBASE-16195](https://issues.apache.org/jira/browse/HBASE-16195) | Should not add chunk into chunkQueue if not using chunk pool in HeapMemStoreLAB |  Major | . | Yu Li | Yu Li |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15729](https://issues.apache.org/jira/browse/HBASE-15729) | Remove old JDiff wrapper scripts in dev-support |  Minor | build, community | Dima Spivak | Dima Spivak |
| [HBASE-15895](https://issues.apache.org/jira/browse/HBASE-15895) | remove unmaintained jenkins build analysis tool. |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-16073](https://issues.apache.org/jira/browse/HBASE-16073) | update compatibility\_checker for jacc dropping comma sep args |  Critical | build, documentation | Sean Busbey | Dima Spivak |
| [HBASE-16154](https://issues.apache.org/jira/browse/HBASE-16154) | bring non-master branches up to date wrt check\_compatibility script |  Minor | test | Sean Busbey | Sean Busbey |


