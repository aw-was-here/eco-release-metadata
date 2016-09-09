
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

## Release 0.90.2 - 2011-04-08



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3448](https://issues.apache.org/jira/browse/HBASE-3448) | RegionSplitter : Utility class for manual region splitting |  Minor | Client, scripts, util | Nicolas Spiegelberg | Nicolas Spiegelberg |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3496](https://issues.apache.org/jira/browse/HBASE-3496) | HFile CLI Improvements |  Minor | io, regionserver, util | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3542](https://issues.apache.org/jira/browse/HBASE-3542) | MultiGet methods in Thrift |  Major | Thrift | Martin Blom | Martin Blom |
| [HBASE-3553](https://issues.apache.org/jira/browse/HBASE-3553) | number of active threads in HTable's ThreadPoolExecutor |  Major | Client | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-3586](https://issues.apache.org/jira/browse/HBASE-3586) | Improve the selection of regions to balance |  Critical | . | Jean-Daniel Cryans | Ted Yu |
| [HBASE-3620](https://issues.apache.org/jira/browse/HBASE-3620) | Make HBCK Faster |  Minor | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3625](https://issues.apache.org/jira/browse/HBASE-3625) | improve/fix support excluding Tests via Maven -D property |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [HBASE-3610](https://issues.apache.org/jira/browse/HBASE-3610) | Improve RegionSplitter Performance |  Trivial | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3596](https://issues.apache.org/jira/browse/HBASE-3596) | [replication] Wait a few seconds before transferring queues |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3653](https://issues.apache.org/jira/browse/HBASE-3653) | Parallelize Server Requests on HBase Client |  Major | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3640](https://issues.apache.org/jira/browse/HBASE-3640) | [replication] Transferring queues shouldn't be done inline with RS startup |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3683](https://issues.apache.org/jira/browse/HBASE-3683) | NMapInputFormat should use a different config param for number of maps |  Minor | test | Todd Lipcon | Todd Lipcon |
| [HBASE-3681](https://issues.apache.org/jira/browse/HBASE-3681) | Check the sloppiness of the region load before balancing |  Major | . | Jean-Daniel Cryans | Ted Yu |
| [HBASE-4158](https://issues.apache.org/jira/browse/HBASE-4158) | Upgrade pom.xml to surefire 2.9 |  Minor | build | Mikhail Bautin | Mikhail Bautin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3524](https://issues.apache.org/jira/browse/HBASE-3524) | NPE from CompactionChecker |  Blocker | regionserver | James Kennedy | ryan rawson |
| [HBASE-3545](https://issues.apache.org/jira/browse/HBASE-3545) | Possible liveness issue with MasterServerAddress in HRegionServer getMaster |  Major | regionserver | Greg Bowyer |  |
| [HBASE-3550](https://issues.apache.org/jira/browse/HBASE-3550) | FilterList reports false positives |  Major | Filters | Bill Graham | Bill Graham |
| [HBASE-3548](https://issues.apache.org/jira/browse/HBASE-3548) | Fix type in documentation of pseudo distributed mode |  Trivial | documentation | Lars George | stack |
| [HBASE-3561](https://issues.apache.org/jira/browse/HBASE-3561) | OPTS arguments are duplicated |  Major | scripts | Tim Sell | stack |
| [HBASE-3566](https://issues.apache.org/jira/browse/HBASE-3566) |  writeToWAL is not serialized for increment operation |  Major | Client | Dmitri Pavlovski | Andrew Purtell |
| [HBASE-3572](https://issues.apache.org/jira/browse/HBASE-3572) | memstore lab can leave half inited data structs (bad!) |  Major | . | ryan rawson | ryan rawson |
| [HBASE-3589](https://issues.apache.org/jira/browse/HBASE-3589) | test jar should not include mapred-queues.xml and log4j.properties |  Major | . | Todd Lipcon | Todd Lipcon |
| [HBASE-3594](https://issues.apache.org/jira/browse/HBASE-3594) | Rest server fails because of missing asm jar |  Blocker | build, REST | Todd Lipcon | Todd Lipcon |
| [HBASE-3582](https://issues.apache.org/jira/browse/HBASE-3582) | HMaster and HRegionServer should be able to login from Kerberos keytab when running on security-enabled Hadoop |  Major | security | Gary Helmling | Gary Helmling |
| [HBASE-3285](https://issues.apache.org/jira/browse/HBASE-3285) | Hlog recovery takes too much time |  Major | . | Hairong Kuang | Hairong Kuang |
| [HBASE-3608](https://issues.apache.org/jira/browse/HBASE-3608) | MemstoreFlusher error message doesnt include exception! |  Major | . | ryan rawson | ryan rawson |
| [HBASE-3612](https://issues.apache.org/jira/browse/HBASE-3612) | HBaseAdmin::isTableAvailable( name ) returns true when the table does not exist |  Major | Client | Jeremy Hinegardner | Andrew Purtell |
| [HBASE-3633](https://issues.apache.org/jira/browse/HBASE-3633) | ZKUtil::createSetData should only create a node when it nonexists |  Major | Zookeeper | Guanpeng Xu |  |
| [HBASE-3636](https://issues.apache.org/jira/browse/HBASE-3636) | a bug about deciding whether this key is a new key for the ROWCOL bloomfilter |  Major | regionserver | Liyin Tang |  |
| [HBASE-3639](https://issues.apache.org/jira/browse/HBASE-3639) | FSUtils.getRootDir should qualify path |  Critical | . | Todd Lipcon | Todd Lipcon |
| [HBASE-3648](https://issues.apache.org/jira/browse/HBASE-3648) | [replication] failover is sloppy with znodes |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3613](https://issues.apache.org/jira/browse/HBASE-3613) | NPE in MemStoreFlusher |  Major | . | ryan rawson | ryan rawson |
| [HBASE-3650](https://issues.apache.org/jira/browse/HBASE-3650) | HBA.delete can return too fast |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3595](https://issues.apache.org/jira/browse/HBASE-3595) | get\_counter broken in shell |  Critical | shell | Todd Lipcon | Todd Lipcon |
| [HBASE-3662](https://issues.apache.org/jira/browse/HBASE-3662) | REST server does not respect client supplied max versions when creating scanner |  Major | REST | Gary Helmling | Andrew Purtell |
| [HBASE-3664](https://issues.apache.org/jira/browse/HBASE-3664) | [replication] Adding a slave when there's none may kill the cluster |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3641](https://issues.apache.org/jira/browse/HBASE-3641) | LruBlockCache.CacheStats.getHitCount() is not using the correct variable |  Major | io | Jonathan Gray | Jonathan Gray |
| [HBASE-3674](https://issues.apache.org/jira/browse/HBASE-3674) | Treat ChecksumException as we would a ParseException splitting logs; else we replay split on every restart |  Critical | wal | stack | stack |
| [HBASE-3621](https://issues.apache.org/jira/browse/HBASE-3621) | The timeout handler in AssignmentManager does an RPC while holding lock on RIT; a big no-no |  Major | . | stack | Ted Yu |
| [HBASE-3575](https://issues.apache.org/jira/browse/HBASE-3575) | Update rename table script |  Major | . | stack | stack |
| [HBASE-3687](https://issues.apache.org/jira/browse/HBASE-3687) | Bulk assign on startup should handle a ServerNotRunningException |  Major | . | stack | stack |
| [HBASE-3668](https://issues.apache.org/jira/browse/HBASE-3668) | CatalogTracker.waitForMeta can wait forever and totally stall a RS |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3659](https://issues.apache.org/jira/browse/HBASE-3659) | TestHLog fails on newer Hadoop |  Minor | . | Todd Lipcon | Todd Lipcon |
| [HBASE-3697](https://issues.apache.org/jira/browse/HBASE-3697) | Admin actions that use MetaReader to iterate regions need to skip offline ones |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-3627](https://issues.apache.org/jira/browse/HBASE-3627) | NPE in EventHandler when region already reassigned |  Critical | . | Jean-Daniel Cryans | stack |
| [HBASE-3660](https://issues.apache.org/jira/browse/HBASE-3660) | HMaster will exit when starting with stale data in cached locations such as -ROOT- or .META. |  Critical | master, regionserver | Cosmin Lehene | stack |
| [HBASE-3654](https://issues.apache.org/jira/browse/HBASE-3654) | Weird blocking between getOnlineRegion and createRegionLoad |  Blocker | . | Jean-Daniel Cryans | Subbu M Iyer |
| [HBASE-3666](https://issues.apache.org/jira/browse/HBASE-3666) | TestScannerTimeout fails occasionally |  Major | . | Todd Lipcon | Todd Lipcon |
| [HBASE-3497](https://issues.apache.org/jira/browse/HBASE-3497) | TableMapReduceUtil.initTableReducerJob broken due to setConf method in TableOutputFormat |  Major | . | Amandeep Khurana | Jean-Daniel Cryans |
| [HBASE-3703](https://issues.apache.org/jira/browse/HBASE-3703) | hbase-config.sh needs to be updated so it can auto-detects the sun jdk provided by RHEL6 |  Major | . | Bruno Mahé | Bruno Mahé |
| [HBASE-3709](https://issues.apache.org/jira/browse/HBASE-3709) | HFile compression not sharing configuration |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-3723](https://issues.apache.org/jira/browse/HBASE-3723) | Major compact should be done when there is only one storefile and some keyvalue is outdated. |  Major | regionserver | zhoushuaifeng | zhoushuaifeng |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3665](https://issues.apache.org/jira/browse/HBASE-3665) | checking the number entries in the unit test case |  Major | regionserver | Liyin Tang |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3520](https://issues.apache.org/jira/browse/HBASE-3520) | Update our bundled hadoop from branch-0.20-append to latest (rpc version 43) |  Major | . | stack | stack |
| [HBASE-3600](https://issues.apache.org/jira/browse/HBASE-3600) | Update our jruby to 1.6.0 |  Major | . | stack | stack |


