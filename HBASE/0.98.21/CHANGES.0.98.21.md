
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

## Release 0.98.21 - 2016-08-15

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16321](https://issues.apache.org/jira/browse/HBASE-16321) | Ensure findbugs jsr305 jar isn't present |  Blocker | dependencies | Sean Busbey | Sean Busbey |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11144](https://issues.apache.org/jira/browse/HBASE-11144) | Filter to support scanning multiple row key ranges |  Major | Filters | Jiajia Li | Jiajia Li |
| [HBASE-15119](https://issues.apache.org/jira/browse/HBASE-15119) | Include git SHA in check\_compatibility reports |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-16048](https://issues.apache.org/jira/browse/HBASE-16048) | Tag InternalScanner with LimitedPrivate(HBaseInterfaceAudience.COPROC) |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15870](https://issues.apache.org/jira/browse/HBASE-15870) | Specify columns in REST multi gets |  Minor | REST | Dean Gurvitz | Matt Warhaftig |
| [HBASE-16085](https://issues.apache.org/jira/browse/HBASE-16085) | Add on metric for failed compactions |  Major | . | Elliott Clark | Gary Helmling |
| [HBASE-16124](https://issues.apache.org/jira/browse/HBASE-16124) | Make check\_compatibility.sh less verbose when building HBase |  Minor | build, test | Dima Spivak | Dima Spivak |
| [HBASE-16108](https://issues.apache.org/jira/browse/HBASE-16108) | RowCounter should support multiple key ranges |  Major | . | Geoffrey Jacoby | Konstantin Ryakhovskiy |
| [HBASE-14548](https://issues.apache.org/jira/browse/HBASE-14548) | Expand how table coprocessor jar and dependency path can be specified |  Major | Coprocessors | Jerry He | Xiang Li |
| [HBASE-16220](https://issues.apache.org/jira/browse/HBASE-16220) | Demote log level for "HRegionFileSystem - No StoreFiles for" messages to TRACE |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-16241](https://issues.apache.org/jira/browse/HBASE-16241) | Allow specification of annotations to use when running check\_compatibility.sh |  Major | scripts | Dima Spivak | Dima Spivak |
| [HBASE-16052](https://issues.apache.org/jira/browse/HBASE-16052) | Improve HBaseFsck Scalability |  Major | hbck | Ben Lau | Ben Lau |
| [HBASE-16275](https://issues.apache.org/jira/browse/HBASE-16275) | Change ServerManager#onlineServers from ConcurrentHashMap to ConcurrentSkipListMap |  Minor | . | huaxiang sun | huaxiang sun |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13594](https://issues.apache.org/jira/browse/HBASE-13594) | MultiRowRangeFilter shouldn't call HBaseZeroCopyByteString.wrap() directly |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13704](https://issues.apache.org/jira/browse/HBASE-13704) | Hbase throws OutOfOrderScannerNextException when MultiRowRangeFilter is used |  Major | Client | Aleksandr Maksymenko | Aleksandr Maksymenko |
| [HBASE-14206](https://issues.apache.org/jira/browse/HBASE-14206) | MultiRowRangeFilter returns records whose rowKeys are out of allowed ranges |  Critical | Filters | Anton Nazaruk | Anton Nazaruk |
| [HBASE-15975](https://issues.apache.org/jira/browse/HBASE-15975) | logic in TestHTableDescriptor#testAddCoprocessorWithSpecStr is wrong |  Trivial | test | huaxiang sun | huaxiang sun |
| [HBASE-15990](https://issues.apache.org/jira/browse/HBASE-15990) | The priority value of subsequent coprocessors in the Coprocessor.Priority.SYSTEM list are not incremented by one |  Minor | . | ChiaPing Tsai | ChiaPing Tsai |
| [HBASE-15946](https://issues.apache.org/jira/browse/HBASE-15946) | Eliminate possible security concerns in RS web UI's store file metrics |  Major | . | Sean Mackrory | Sean Mackrory |
| [HBASE-16007](https://issues.apache.org/jira/browse/HBASE-16007) | Job's Configuration should be passed to TableMapReduceUtil#addDependencyJars() in WALPlayer |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15746](https://issues.apache.org/jira/browse/HBASE-15746) | Remove extra RegionCoprocessor preClose() in RSRpcServices#closeRegion |  Minor | Coprocessors, regionserver | Matteo Bertozzi | Stephen Yuan Jiang |
| [HBASE-16033](https://issues.apache.org/jira/browse/HBASE-16033) | Add more details in logging of responseTooSlow/TooLarge |  Major | . | Yu Li | Yu Li |
| [HBASE-16045](https://issues.apache.org/jira/browse/HBASE-16045) | endtime argument for VerifyReplication was incorrectly specified in usage |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16061](https://issues.apache.org/jira/browse/HBASE-16061) | Allow logging to a buffered console |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15783](https://issues.apache.org/jira/browse/HBASE-15783) | AccessControlConstants#OP\_ATTRIBUTE\_ACL\_STRATEGY\_CELL\_FIRST not used any more. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16032](https://issues.apache.org/jira/browse/HBASE-16032) | Possible memory leak in StoreScanner |  Major | . | Yu Li | Yu Li |
| [HBASE-16012](https://issues.apache.org/jira/browse/HBASE-16012) | Major compaction can't work due to obsolete scanner read point in RegionServer |  Major | Compaction, Scanners | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16070](https://issues.apache.org/jira/browse/HBASE-16070) | Mapreduce Serialization classes do not have Interface audience |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16090](https://issues.apache.org/jira/browse/HBASE-16090) | ResultScanner is not closed in SyncTable#finishRemainingHashRanges() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15976](https://issues.apache.org/jira/browse/HBASE-15976) | RegionServerMetricsWrapperRunnable will be failure  when disable blockcache. |  Major | . | Liu Junhong | Jingcheng Du |
| [HBASE-16129](https://issues.apache.org/jira/browse/HBASE-16129) | check\_compatibility.sh is broken when using Java API Compliance Checker v1.7 |  Major | test | Dima Spivak | Dima Spivak |
| [HBASE-16093](https://issues.apache.org/jira/browse/HBASE-16093) | Splits failed before creating daughter regions leave meta inconsistent |  Critical | master, Region Assignment | Elliott Clark | Elliott Clark |
| [HBASE-16135](https://issues.apache.org/jira/browse/HBASE-16135) | PeerClusterZnode under rs of removed peer may never be deleted |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-16091](https://issues.apache.org/jira/browse/HBASE-16091) | Canary takes lot more time when there are delete markers in the table |  Major | canary | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-16201](https://issues.apache.org/jira/browse/HBASE-16201) | NPE in RpcServer causing intermittent UT failure of TestMasterReplication#testHFileCyclicReplication |  Major | . | Yu Li | Yu Li |
| [HBASE-16160](https://issues.apache.org/jira/browse/HBASE-16160) | Get the UnsupportedOperationException when using delegation token with encryption |  Blocker | . | Colin Ma | Colin Ma |
| [HBASE-16055](https://issues.apache.org/jira/browse/HBASE-16055) | PutSortReducer loses any Visibility/acl attribute set on the Puts |  Critical | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16207](https://issues.apache.org/jira/browse/HBASE-16207) | can't restore snapshot without "Admin" permission |  Major | master, snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16227](https://issues.apache.org/jira/browse/HBASE-16227) | [Shell] Column value formatter not working in scans |  Major | . | Appy | Appy |
| [HBASE-16095](https://issues.apache.org/jira/browse/HBASE-16095) | Add priority to TableDescriptor and priority region open thread pool |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16244](https://issues.apache.org/jira/browse/HBASE-16244) | LocalHBaseCluster start timeout should be configurable |  Major | hbase | Siddharth Wagle |  |
| [HBASE-16272](https://issues.apache.org/jira/browse/HBASE-16272) | Overflow in ServerName's compareTo method |  Major | hbase | huaxiang sun | huaxiang sun |
| [HBASE-16281](https://issues.apache.org/jira/browse/HBASE-16281) | TestMasterReplication is flaky |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16300](https://issues.apache.org/jira/browse/HBASE-16300) | LruBlockCache.CACHE\_FIXED\_OVERHEAD should calculate LruBlockCache size correctly |  Major | . | Yu Sun | Yu Sun |
| [HBASE-16288](https://issues.apache.org/jira/browse/HBASE-16288) | HFile intermediate block level indexes might recurse forever creating multi TB files |  Critical | HFile | Enis Soztutar | Enis Soztutar |
| [HBASE-16296](https://issues.apache.org/jira/browse/HBASE-16296) | Reverse scan performance degrades when using filter lists |  Major | Filters | James Taylor | Ted Yu |
| [HBASE-16284](https://issues.apache.org/jira/browse/HBASE-16284) | Unauthorized client can shutdown the cluster |  Major | . | Deokwoo Han | Deokwoo Han |
| [HBASE-16319](https://issues.apache.org/jira/browse/HBASE-16319) | Fix TestCacheOnWrite after HBASE-16288 |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-16350](https://issues.apache.org/jira/browse/HBASE-16350) | Undo server abort from HBASE-14968 |  Major | . | Enis Soztutar | Enis Soztutar |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15115](https://issues.apache.org/jira/browse/HBASE-15115) | Fix findbugs complaints in hbase-client |  Major | build | stack | stack |
| [HBASE-16194](https://issues.apache.org/jira/browse/HBASE-16194) | Should count in MSLAB chunk allocation into heap size change when adding duplicate cells |  Major | regionserver | Yu Li | Yu Li |
| [HBASE-16195](https://issues.apache.org/jira/browse/HBASE-16195) | Should not add chunk into chunkQueue if not using chunk pool in HeapMemStoreLAB |  Major | . | Yu Li | Yu Li |
| [HBASE-16352](https://issues.apache.org/jira/browse/HBASE-16352) | Port HBASE-15645 (hbase.rpc.timeout is not used in operations of HTable) to 0.98 |  Major | . | Andrew Purtell | Andrew Purtell |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15729](https://issues.apache.org/jira/browse/HBASE-15729) | Remove old JDiff wrapper scripts in dev-support |  Minor | build, community | Dima Spivak | Dima Spivak |
| [HBASE-16073](https://issues.apache.org/jira/browse/HBASE-16073) | update compatibility\_checker for jacc dropping comma sep args |  Critical | build, documentation | Sean Busbey | Dima Spivak |
| [HBASE-16154](https://issues.apache.org/jira/browse/HBASE-16154) | bring non-master branches up to date wrt check\_compatibility script |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-16175](https://issues.apache.org/jira/browse/HBASE-16175) | Backport HBASE-15650 (Remove TimeRangeTracker as point of contention when many threads reading a StoreFile) to 0.98 |  Major | . | Andrew Purtell | Andrew Purtell |


