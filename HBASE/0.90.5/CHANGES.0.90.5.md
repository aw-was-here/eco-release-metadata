
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

## Release 0.90.5 - 2011-12-22



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4375](https://issues.apache.org/jira/browse/HBASE-4375) | [hbck] Add region coverage visualization to hbck |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4377](https://issues.apache.org/jira/browse/HBASE-4377) | [hbck] Offline rebuild .META. from fs data only. |  Major | . | Jonathan Hsieh | Jonathan Hsieh |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4159](https://issues.apache.org/jira/browse/HBASE-4159) | HBaseServer - IPC Reader threads are not daemons |  Major | IPC/RPC | Douglas Campbell | Douglas Campbell |
| [HBASE-4170](https://issues.apache.org/jira/browse/HBASE-4170) | createTable java doc needs to be improved |  Major | Client | Mubarak Seyed | Mubarak Seyed |
| [HBASE-4205](https://issues.apache.org/jira/browse/HBASE-4205) | Enhance HTable javadoc |  Minor | Client | Eric Charles | Eric Charles |
| [HBASE-4225](https://issues.apache.org/jira/browse/HBASE-4225) | NoSuchColumnFamilyException in multi doesn't say which family is bad |  Critical | . | Jean-Daniel Cryans | ramkrishna.s.vasudevan |
| [HBASE-4222](https://issues.apache.org/jira/browse/HBASE-4222) | Make HLog more resilient to write pipeline failures |  Major | wal | Gary Helmling | Gary Helmling |
| [HBASE-4293](https://issues.apache.org/jira/browse/HBASE-4293) | More verbose logging in ServerShutdownHandler for meta/root cases |  Trivial | master | Todd Lipcon | Todd Lipcon |
| [HBASE-4276](https://issues.apache.org/jira/browse/HBASE-4276) | AssignmentManager debug logs should be at INFO level for META/ROOT regions |  Minor | master | Todd Lipcon | Todd Lipcon |
| [HBASE-4269](https://issues.apache.org/jira/browse/HBASE-4269) | Add tests and restore semantics to TableInputFormat/TableRecordReader |  Major | mapreduce, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4323](https://issues.apache.org/jira/browse/HBASE-4323) | Add debug logging when AssignmentManager can't make a plan for a region |  Trivial | master | Todd Lipcon | Todd Lipcon |
| [HBASE-4206](https://issues.apache.org/jira/browse/HBASE-4206) | jenkins hash implementation uses longs unnecessarily |  Minor | util | Ron Yang | Ron Yang |
| [HBASE-4313](https://issues.apache.org/jira/browse/HBASE-4313) | Refactor TestHBaseFsck to make adding individual hbck tests easier |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4272](https://issues.apache.org/jira/browse/HBASE-4272) | Add hbck feature to only inspect and try to repair META and ROOT |  Major | . | Todd Lipcon | Todd Lipcon |
| [HBASE-4321](https://issues.apache.org/jira/browse/HBASE-4321) | Add more comprehensive region split calculator |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4322](https://issues.apache.org/jira/browse/HBASE-4322) | [hbck] Update checkIntegrity/checkRegionChain to present more accurate region split problem summary |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4280](https://issues.apache.org/jira/browse/HBASE-4280) | [replication] ReplicationSink can deadlock itself via handlers |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4506](https://issues.apache.org/jira/browse/HBASE-4506) | [hbck] Allow HBaseFsck to be instantiated without connecting |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4509](https://issues.apache.org/jira/browse/HBASE-4509) | [hbck] Improve region map output |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4944](https://issues.apache.org/jira/browse/HBASE-4944) | Optionally verify bulk loaded HFiles |  Minor | regionserver | Andrew Purtell | Andrew Purtell |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4144](https://issues.apache.org/jira/browse/HBASE-4144) |  RS does not abort if the initialization of RS fails |  Minor | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4160](https://issues.apache.org/jira/browse/HBASE-4160) | HBase shell move and online may be unusable if region name or server includes binary-encoded data |  Minor | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4168](https://issues.apache.org/jira/browse/HBASE-4168) | A client continues to try and connect to a powered down regionserver |  Critical | . | Anirudh Todi | Anirudh Todi |
| [HBASE-4186](https://issues.apache.org/jira/browse/HBASE-4186) | No region is added to regionsInTransitionInRS |  Major | . | Ted Yu | Ted Yu |
| [HBASE-4196](https://issues.apache.org/jira/browse/HBASE-4196) | TableRecordReader may skip first row of region |  Major | mapreduce | Jan Lukavsky | Ming Ma |
| [HBASE-4148](https://issues.apache.org/jira/browse/HBASE-4148) | HFileOutputFormat doesn't fill in TIMERANGE\_KEY metadata |  Major | mapreduce | Todd Lipcon | Jonathan Hsieh |
| [HBASE-4161](https://issues.apache.org/jira/browse/HBASE-4161) | Incorrect use of listStatus() in HBase region initialization. |  Major | regionserver | Pritam Damania |  |
| [HBASE-4095](https://issues.apache.org/jira/browse/HBASE-4095) | Hlog may not be rolled in a long time if checkLowReplication's request of LogRoll is blocked |  Major | regionserver | Jieshan Bean | Jieshan Bean |
| [HBASE-4234](https://issues.apache.org/jira/browse/HBASE-4234) | Let regionserver abort if rollback fail after point-of-no-return on branch |  Major | regionserver | Jieshan Bean | Jieshan Bean |
| [HBASE-4253](https://issues.apache.org/jira/browse/HBASE-4253) | Intermittent test failure because of missing config parameter in new HTable(tablename) |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4252](https://issues.apache.org/jira/browse/HBASE-4252) | TestLogRolling's low-probability failure |  Major | regionserver | Jieshan Bean | Jieshan Bean |
| [HBASE-4124](https://issues.apache.org/jira/browse/HBASE-4124) | ZK restarted while a region is being assigned, new active HM re-assigns it but the RS warns 'already online on this server'. |  Major | master | fulin wang | gaojinchao |
| [HBASE-4294](https://issues.apache.org/jira/browse/HBASE-4294) | HLogSplitter sleeps with 1-second granularity |  Trivial | master | Todd Lipcon | Todd Lipcon |
| [HBASE-4341](https://issues.apache.org/jira/browse/HBASE-4341) | HRS#closeAllRegions should take care of HRS#onlineRegions's weak consistency |  Major | regionserver | Jieshan Bean | Jieshan Bean |
| [HBASE-4297](https://issues.apache.org/jira/browse/HBASE-4297) | TableMapReduceUtil overwrites user supplied options |  Major | mapreduce | Jan Lukavsky |  |
| [HBASE-4340](https://issues.apache.org/jira/browse/HBASE-4340) | Hbase can't balance if ServerShutdownHandler encountered exception |  Major | . | gaojinchao | gaojinchao |
| [HBASE-4180](https://issues.apache.org/jira/browse/HBASE-4180) | HBase should check the isSecurityEnabled flag |  Major | security | Bochun Bai | Gary Helmling |
| [HBASE-4325](https://issues.apache.org/jira/browse/HBASE-4325) | Improve error message when using STARTROW for meta scans. |  Major | shell | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4238](https://issues.apache.org/jira/browse/HBASE-4238) | CatalogJanitor can clear a daughter that split before processing its parent |  Critical | . | Jean-Daniel Cryans | stack |
| [HBASE-4351](https://issues.apache.org/jira/browse/HBASE-4351) | If from Admin we try to unassign a region forcefully, though a valid region name is given the master is not able to identify the region to unassign. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4363](https://issues.apache.org/jira/browse/HBASE-4363) | [replication] ReplicationSource won't close if failing to contact the sink |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4390](https://issues.apache.org/jira/browse/HBASE-4390) | [replication] ReplicationSource's UncaughtExceptionHandler shouldn't join |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4395](https://issues.apache.org/jira/browse/HBASE-4395) | EnableTableHandler races with itself |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4423](https://issues.apache.org/jira/browse/HBASE-4423) | HBASE-4238 broke TestCatalogJanitor#testCleanParent test |  Major | test | stack | ramkrishna.s.vasudevan |
| [HBASE-4417](https://issues.apache.org/jira/browse/HBASE-4417) | HBaseAdmin.checkHBaseAvailable() doesn't close ZooKeeper connections |  Minor | Client | Stefan Seelmann | Stefan Seelmann |
| [HBASE-4400](https://issues.apache.org/jira/browse/HBASE-4400) | .META. getting stuck if RS hosting it is dead and znode state is in RS\_ZK\_REGION\_OPENED |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4445](https://issues.apache.org/jira/browse/HBASE-4445) | Not passing --config when checking if distributed mode or not |  Major | scripts | stack | stack |
| [HBASE-3421](https://issues.apache.org/jira/browse/HBASE-3421) | Very wide rows -- 30M plus -- cause us OOME |  Major | . | stack | Nate Putnam |
| [HBASE-4453](https://issues.apache.org/jira/browse/HBASE-4453) | TestReplication failing up on builds.a.o because already running zk with new format root servername |  Major | . | stack | stack |
| [HBASE-4452](https://issues.apache.org/jira/browse/HBASE-4452) | Possibility of RS opening a region though tickleOpening fails due to znode version mismatch |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4387](https://issues.apache.org/jira/browse/HBASE-4387) | Error while syncing: DFSOutputStream is closed |  Critical | wal | Todd Lipcon | Lars Hofhansl |
| [HBASE-4295](https://issues.apache.org/jira/browse/HBASE-4295) | rowcounter does not return the correct number of rows in certain circumstances |  Critical | mapreduce | Wing Yew Poon | Dave Revell |
| [HBASE-4512](https://issues.apache.org/jira/browse/HBASE-4512) | JVMClusterUtil throwing wrong exception when master thread cannot be created |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4515](https://issues.apache.org/jira/browse/HBASE-4515) | User.getCurrent() can fail to initialize the current user |  Major | . | Jonathan Hsieh | Gary Helmling |
| [HBASE-4473](https://issues.apache.org/jira/browse/HBASE-4473) | NPE when executors are down but events are still coming in |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4212](https://issues.apache.org/jira/browse/HBASE-4212) | TestMasterFailover fails occasionally |  Major | master | gaojinchao | gaojinchao |
| [HBASE-4537](https://issues.apache.org/jira/browse/HBASE-4537) | Bad imports in TestUser from HBASE-4515 change |  Major | . | Gary Helmling | Gary Helmling |
| [HBASE-4501](https://issues.apache.org/jira/browse/HBASE-4501) | [replication] Shutting down a stream leaves recovered sources running |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4449](https://issues.apache.org/jira/browse/HBASE-4449) | LoadIncrementalHFiles should be able to handle CFs with blooms |  Major | . | Dave Revell | Dave Revell |
| [HBASE-4282](https://issues.apache.org/jira/browse/HBASE-4282) | RegionServer should abort when WAL close encounters an error with unflushed edits |  Blocker | . | Gary Helmling | Gary Helmling |
| [HBASE-4540](https://issues.apache.org/jira/browse/HBASE-4540) | OpenedRegionHandler is not enforcing atomicity of the operation it is performing |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4563](https://issues.apache.org/jira/browse/HBASE-4563) | When error occurs in this.parent.close(false) of split, the split region cannot write or read |  Blocker | regionserver | bluedavy | bluedavy |
| [HBASE-4570](https://issues.apache.org/jira/browse/HBASE-4570) | Scan ACID problem with concurrent puts. |  Major | Client, regionserver | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4562](https://issues.apache.org/jira/browse/HBASE-4562) | When split doing offlineParentInMeta encounters error, it'll cause data loss |  Blocker | regionserver | bluedavy | bluedavy |
| [HBASE-4378](https://issues.apache.org/jira/browse/HBASE-4378) | [hbck] Does not complain about regions with startkey==endkey. |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4508](https://issues.apache.org/jira/browse/HBASE-4508) | Backport HBASE-3777 to 0.90 branch |  Major | . | Ted Yu | Bright Fulton |
| [HBASE-4695](https://issues.apache.org/jira/browse/HBASE-4695) | WAL logs get deleted before region server can fully flush |  Blocker | wal | jack levin | gaojinchao |
| [HBASE-4277](https://issues.apache.org/jira/browse/HBASE-4277) | HRS.closeRegion should be able to close regions with only the encoded name |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4684](https://issues.apache.org/jira/browse/HBASE-4684) | REST server is leaking ZK connections in 0.90 |  Critical | . | Jean-Daniel Cryans | Andrew Purtell |
| [HBASE-4800](https://issues.apache.org/jira/browse/HBASE-4800) | Result.compareResults is incorrect |  Major | Client | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4806](https://issues.apache.org/jira/browse/HBASE-4806) | Fix logging message in HbaseObjectWritable |  Trivial | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4799](https://issues.apache.org/jira/browse/HBASE-4799) | Catalog Janitor logic bug causes region leackage |  Critical | master | Max Lapan | Max Lapan |
| [HBASE-4718](https://issues.apache.org/jira/browse/HBASE-4718) | Backport HBASE-4552 to 0.90 branch |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-4862](https://issues.apache.org/jira/browse/HBASE-4862) | Splitting hlog and opening region concurrently may cause data loss |  Critical | . | chunhui shen | chunhui shen |
| [HBASE-4900](https://issues.apache.org/jira/browse/HBASE-4900) | Fix javadoc warnings out on 0.90 branch |  Major | . | stack | stack |
| [HBASE-4904](https://issues.apache.org/jira/browse/HBASE-4904) | Fix overcommit to 0.90 (hbase-4352+hbase-4900) |  Major | . | stack | stack |
| [HBASE-4982](https://issues.apache.org/jira/browse/HBASE-4982) | graceful\_stop.sh does not pass on the --config its passed to its internal invocations of other hbase scripts |  Major | scripts | stack | stack |
| [HBASE-4848](https://issues.apache.org/jira/browse/HBASE-4848) | TestScanner failing because hostname can't be null |  Major | . | stack | stack |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4827](https://issues.apache.org/jira/browse/HBASE-4827) | TestAdmin should clean up resources after tests |  Major | . | Andrew Purtell | Andrew Purtell |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4384](https://issues.apache.org/jira/browse/HBASE-4384) | Hard to tell what causes failure in CloseRegionHandler#getCurrentVersion |  Minor | Zookeeper | Harsh J | Harsh J |
| [HBASE-3952](https://issues.apache.org/jira/browse/HBASE-3952) | Guava snuck back in as a dependency via hbase-3777 |  Major | . | stack |  |


