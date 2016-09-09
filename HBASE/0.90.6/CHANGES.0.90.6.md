
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

## Release 0.90.6 - 2012-03-16



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4970](https://issues.apache.org/jira/browse/HBASE-4970) | Add a parameter so that keepAliveTime of Htable thread pool can be changed |  Trivial | Client | gaojinchao | gaojinchao |
| [HBASE-5102](https://issues.apache.org/jira/browse/HBASE-5102) | Change the default value of  the property "hbase.connection.per.config" to false in hbase-default.xml |  Minor | . | ramkrishna.s.vasudevan |  |
| [HBASE-5363](https://issues.apache.org/jira/browse/HBASE-5363) | Automatically run rat check on mvn release builds |  Major | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5197](https://issues.apache.org/jira/browse/HBASE-5197) | [replication] Handle socket timeouts in ReplicationSource to prevent DDOS |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5395](https://issues.apache.org/jira/browse/HBASE-5395) | CopyTable needs to use GenericOptionsParser |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5008](https://issues.apache.org/jira/browse/HBASE-5008) | The clusters can't  provide services because Region can't flush. |  Blocker | regionserver | gaojinchao | gaojinchao |
| [HBASE-5020](https://issues.apache.org/jira/browse/HBASE-5020) | MetaReader#fullScan doesn't  stop scanning when vistor returns false in 0.90 version |  Major | . | chunhui shen | chunhui shen |
| [HBASE-5060](https://issues.apache.org/jira/browse/HBASE-5060) | HBase client is blocked forever |  Critical | Client | gaojinchao | gaojinchao |
| [HBASE-5073](https://issues.apache.org/jira/browse/HBASE-5073) | Registered listeners not getting removed leading to memory leak in HBaseAdmin |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5009](https://issues.apache.org/jira/browse/HBASE-5009) | Failure of creating split dir if it already exists prevents splits from happening further |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4773](https://issues.apache.org/jira/browse/HBASE-4773) | HBaseAdmin may leak ZooKeeper connections |  Critical | Client | gaojinchao | xufeng |
| [HBASE-5088](https://issues.apache.org/jira/browse/HBASE-5088) | A concurrency issue on SoftValueSortedMap |  Critical | Client | Jieshan Bean | Lars Hofhansl |
| [HBASE-5041](https://issues.apache.org/jira/browse/HBASE-5041) | Major compaction on non existing table does not throw error |  Major | regionserver, shell | Shrijeet Paliwal | Shrijeet Paliwal |
| [HBASE-5137](https://issues.apache.org/jira/browse/HBASE-5137) | MasterFileSystem.splitLog() should abort even if waitOnSafeMode() throws IOException |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5178](https://issues.apache.org/jira/browse/HBASE-5178) | Backport HBASE-4101 - Regionserver Deadlock |  Major | . | ramkrishna.s.vasudevan |  |
| [HBASE-5192](https://issues.apache.org/jira/browse/HBASE-5192) | Backport HBASE-4236 Don't lock the stream while serializing the response |  Major | . | ramkrishna.s.vasudevan |  |
| [HBASE-5160](https://issues.apache.org/jira/browse/HBASE-5160) | Backport HBASE-4397 - -ROOT-, .META. tables stay offline for too long in recovery phase after all RSs are shutdown at the same time |  Major | . | ramkrishna.s.vasudevan |  |
| [HBASE-5184](https://issues.apache.org/jira/browse/HBASE-5184) | Backport HBASE-5152 - Region is on service before completing initialization when doing rollback of split, it will affect read correctness |  Major | . | ramkrishna.s.vasudevan |  |
| [HBASE-5159](https://issues.apache.org/jira/browse/HBASE-5159) | Backport HBASE-4079 - HTableUtil - helper class for loading data |  Major | . | ramkrishna.s.vasudevan |  |
| [HBASE-5168](https://issues.apache.org/jira/browse/HBASE-5168) | Backport HBASE-5100 - Rollback of split could cause closed region to be opened again |  Major | . | ramkrishna.s.vasudevan |  |
| [HBASE-5158](https://issues.apache.org/jira/browse/HBASE-5158) | Backport HBASE-4878 - Master crash when splitting hlog may cause data loss |  Major | . | ramkrishna.s.vasudevan |  |
| [HBASE-5156](https://issues.apache.org/jira/browse/HBASE-5156) | Backport HBASE-4899 -  Region would be assigned twice easily with continually killing server and moving region in testing environment |  Major | . | ramkrishna.s.vasudevan |  |
| [HBASE-5196](https://issues.apache.org/jira/browse/HBASE-5196) | Failure in region split after PONR could cause region hole |  Major | master, regionserver | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5228](https://issues.apache.org/jira/browse/HBASE-5228) | [REST] Rip out "transform" feature |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-5225](https://issues.apache.org/jira/browse/HBASE-5225) | Backport HBASE-3845 -data loss because lastSeqWritten can miss memstore edits |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5269](https://issues.apache.org/jira/browse/HBASE-5269) | IllegalMonitorStateException while retryin HLog split in 0.90 branch. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4893](https://issues.apache.org/jira/browse/HBASE-4893) | HConnectionImplementation is closed but not deleted |  Major | Client | Mubarak Seyed | Mubarak Seyed |
| [HBASE-5235](https://issues.apache.org/jira/browse/HBASE-5235) | HLogSplitter writer thread's streams not getting closed when any of the writer threads has exceptions. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5243](https://issues.apache.org/jira/browse/HBASE-5243) | LogSyncerThread not getting shutdown waiting for the interrupted flag |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5237](https://issues.apache.org/jira/browse/HBASE-5237) | Addendum for HBASE-5160 and HBASE-4397 |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5321](https://issues.apache.org/jira/browse/HBASE-5321) | this.allRegionServersOffline  not set to false after one RS comes online and assignment is done in 0.90. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5364](https://issues.apache.org/jira/browse/HBASE-5364) | Fix source files missing licenses in 0.92 and trunk |  Blocker | . | Jonathan Hsieh | Elliott Clark |
| [HBASE-5377](https://issues.apache.org/jira/browse/HBASE-5377) | Fix licenses on the 0.90 branch. |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5327](https://issues.apache.org/jira/browse/HBASE-5327) | Print a message when an invalid hbase.rootdir is passed |  Major | . | Jean-Daniel Cryans | Jimmy Xiang |
| [HBASE-5379](https://issues.apache.org/jira/browse/HBASE-5379) | Backport HBASE-4287 to 0.90 - If region opening fails, try to transition region back to "offline" in ZK |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5490](https://issues.apache.org/jira/browse/HBASE-5490) | Move the enum RS\_ZK\_REGION\_FAILED\_OPEN to the last of the enum list in 0.90 EventHandler |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5153](https://issues.apache.org/jira/browse/HBASE-5153) | Add retry logic in HConnectionImplementation#resetZooKeeperTrackers |  Major | Client | Jieshan Bean | Jieshan Bean |


