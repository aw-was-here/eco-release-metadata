
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

## Release 0.90.4 - 2011-08-10



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3968](https://issues.apache.org/jira/browse/HBASE-3968) | HLog Pretty Printer |  Minor | io, regionserver, util | Nicolas Spiegelberg | Riley Patterson |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3902](https://issues.apache.org/jira/browse/HBASE-3902) | Add Bytes.toBigDecimal and Bytes.toBytes(BigDecimal) |  Major | util | Vaibhav Puranik |  |
| [HBASE-3906](https://issues.apache.org/jira/browse/HBASE-3906) | When HMaster is running,there are a lot of RegionLoad instances（far greater than the regions）,it has risk of OOME. |  Major | master | jian zhang |  |
| [HBASE-3973](https://issues.apache.org/jira/browse/HBASE-3973) | HBase IRB shell: Don't pretty-print the output when stdout isn't a TTY |  Minor | shell | Benoit Sigoure | Benoit Sigoure |
| [HBASE-3948](https://issues.apache.org/jira/browse/HBASE-3948) | Improve split/compact result page for RegionServer status page |  Blocker | regionserver | Lars George | Li Pi |
| [HBASE-3994](https://issues.apache.org/jira/browse/HBASE-3994) | SplitTransaction has a window where clients can get RegionOfflineException |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3969](https://issues.apache.org/jira/browse/HBASE-3969) | Outdated data can not be cleaned in time |  Major | regionserver | zhoushuaifeng | zhoushuaifeng |
| [HBASE-3893](https://issues.apache.org/jira/browse/HBASE-3893) | HRegion.internalObtainRowLock shouldn't wait forever |  Blocker | . | Jean-Daniel Cryans | Ted Yu |
| [HBASE-4126](https://issues.apache.org/jira/browse/HBASE-4126) | Make timeoutmonitor timeout after 30 minutes instead of 3 |  Major | . | stack | stack |
| [HBASE-4142](https://issues.apache.org/jira/browse/HBASE-4142) | Advise against large batches in javadoc for HTable#put(List\<Put\>) |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1938](https://issues.apache.org/jira/browse/HBASE-1938) | Make in-memory table scanning faster |  Blocker | Performance | stack | Nicolas Liochon |
| [HBASE-4158](https://issues.apache.org/jira/browse/HBASE-4158) | Upgrade pom.xml to surefire 2.9 |  Minor | build | Mikhail Bautin | Mikhail Bautin |
| [HBASE-3855](https://issues.apache.org/jira/browse/HBASE-3855) | Performance degradation of memstore because reseek is linear |  Critical | . | dhruba borthakur |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3617](https://issues.apache.org/jira/browse/HBASE-3617) | NoRouteToHostException during balancing will cause Master abort |  Critical | . | stack | Ted Yu |
| [HBASE-3878](https://issues.apache.org/jira/browse/HBASE-3878) | Hbase client throws NoSuchElementException |  Major | Client | gaojinchao | Ted Yu |
| [HBASE-3881](https://issues.apache.org/jira/browse/HBASE-3881) | Add disable balancer in graceful\_stop.sh script |  Major | . | stack | stack |
| [HBASE-3882](https://issues.apache.org/jira/browse/HBASE-3882) | hbase-config.sh needs to be updated so it can auto-detects the sun jre provided by RHEL6 |  Major | . | Roman Shaposhnik | Roman Shaposhnik |
| [HBASE-3895](https://issues.apache.org/jira/browse/HBASE-3895) | Fix order of parameters after HBASE-1511 |  Trivial | scripts | Lars George | Lars George |
| [HBASE-3874](https://issues.apache.org/jira/browse/HBASE-3874) | ServerShutdownHandler fails on NPE if a plan has a random region assignment |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3820](https://issues.apache.org/jira/browse/HBASE-3820) | Splitlog() executed while the namenode was in safemode may cause data-loss |  Major | master | Jieshan Bean |  |
| [HBASE-3905](https://issues.apache.org/jira/browse/HBASE-3905) | HBaseAdmin.createTableAsync() should check for invalid split keys. |  Minor | . | Vidhyashankar Venkataraman | Ted Yu |
| [HBASE-3912](https://issues.apache.org/jira/browse/HBASE-3912) | [Stargate] Columns not handle by Scan |  Minor | REST | Lars George | Lars George |
| [HBASE-3908](https://issues.apache.org/jira/browse/HBASE-3908) | TableSplit not implementing "hashCode" problem |  Major | mapreduce | Daniel Iancu |  |
| [HBASE-3915](https://issues.apache.org/jira/browse/HBASE-3915) | Binary row keys in hbck and other miscellaneous binary key display issues |  Major | . | stack | stack |
| [HBASE-3914](https://issues.apache.org/jira/browse/HBASE-3914) | ROOT region appeared in two regionserver's onlineRegions at the same time |  Major | master | Jieshan Bean | Jieshan Bean |
| [HBASE-3920](https://issues.apache.org/jira/browse/HBASE-3920) | HLog hbase.regionserver.flushlogentries no longer supported |  Minor | . | Dave Latham | Dave Latham |
| [HBASE-3919](https://issues.apache.org/jira/browse/HBASE-3919) | More places output binary data to text |  Trivial | . | Dave Latham | Dave Latham |
| [HBASE-3934](https://issues.apache.org/jira/browse/HBASE-3934) | MemStoreFlusher.getMemStoreLimit() doesn't honor defaultLimit |  Major | . | Ted Yu | Ted Yu |
| [HBASE-3946](https://issues.apache.org/jira/browse/HBASE-3946) | The splitted region can be online again while the standby hmaster becomes the active one |  Major | . | Jieshan Bean | Jieshan Bean |
| [HBASE-3892](https://issues.apache.org/jira/browse/HBASE-3892) | Table can't disable |  Major | . | gaojinchao |  |
| [HBASE-3974](https://issues.apache.org/jira/browse/HBASE-3974) | Client: Ability to Discard Bad HTable Puts |  Critical | Client | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3894](https://issues.apache.org/jira/browse/HBASE-3894) | Thread contention over row locks set monitor |  Blocker | . | Dave Latham | Dave Latham |
| [HBASE-3916](https://issues.apache.org/jira/browse/HBASE-3916) | Fix problem with default bind address of ThriftServer |  Minor | Thrift | Lars George | Li Pi |
| [HBASE-3985](https://issues.apache.org/jira/browse/HBASE-3985) | Same Region could be picked out twice in LoadBalancer |  Major | master | Jieshan Bean | Jieshan Bean |
| [HBASE-3988](https://issues.apache.org/jira/browse/HBASE-3988) | Infinite loop for secondary master |  Major | . | Liyin Tang | Liyin Tang |
| [HBASE-3989](https://issues.apache.org/jira/browse/HBASE-3989) | Error occured while RegionServer report to Master "we are up" should get master address again |  Major | regionserver | Jieshan Bean | Jieshan Bean |
| [HBASE-3995](https://issues.apache.org/jira/browse/HBASE-3995) | HBASE-3946 broke TestMasterFailover |  Blocker | . | stack | stack |
| [HBASE-2077](https://issues.apache.org/jira/browse/HBASE-2077) | NullPointerException with an open scanner that expired causing an immediate region server shutdown |  Critical | regionserver | Sam Pullara | Sam Pullara |
| [HBASE-4005](https://issues.apache.org/jira/browse/HBASE-4005) | close\_region bugs |  Major | shell | stack | stack |
| [HBASE-4028](https://issues.apache.org/jira/browse/HBASE-4028) | Hmaster crashes caused by splitting log. |  Major | master | gaojinchao | gaojinchao |
| [HBASE-3984](https://issues.apache.org/jira/browse/HBASE-3984) | CT.verifyRegionLocation isn't doing a very good check, can delay cluster recovery |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4045](https://issues.apache.org/jira/browse/HBASE-4045) | [replication] NPE in ReplicationSource when ZK is gone |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4053](https://issues.apache.org/jira/browse/HBASE-4053) | Most of the regions were added into AssignmentManager#servers twice |  Major | master | Jieshan Bean | Ted Yu |
| [HBASE-4043](https://issues.apache.org/jira/browse/HBASE-4043) | 0.90 jenkins build failing because of 'too many open files' |  Blocker | . | stack |  |
| [HBASE-4074](https://issues.apache.org/jira/browse/HBASE-4074) | When a RS has hostname with uppercase letter, there are two RS entries in master |  Major | regionserver | Weihua Jiang | Weihua Jiang |
| [HBASE-4033](https://issues.apache.org/jira/browse/HBASE-4033) | The shutdown RegionServer could be added to AssignmentManager.servers again |  Major | master | Jieshan Bean | Jieshan Bean |
| [HBASE-4077](https://issues.apache.org/jira/browse/HBASE-4077) | Deadlock if WrongRegionException is thrown from getLock in HRegion.delete |  Critical | regionserver | Adam Warrington | Adam Warrington |
| [HBASE-4088](https://issues.apache.org/jira/browse/HBASE-4088) | npes in server shutdown |  Critical | . | stack | stack |
| [HBASE-4075](https://issues.apache.org/jira/browse/HBASE-4075) | A bug in TestZKBasedOpenCloseRegion |  Minor | test | Jieshan Bean | Jieshan Bean |
| [HBASE-4052](https://issues.apache.org/jira/browse/HBASE-4052) | Enabling a table after master switch does not allow table scan, throwing NotServingRegionException |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-4115](https://issues.apache.org/jira/browse/HBASE-4115) | HBase shell assign and unassign unusable if region name includes binary-encoded data |  Minor | shell | Ryan Brush |  |
| [HBASE-4112](https://issues.apache.org/jira/browse/HBASE-4112) | Creating table may throw NullPointerException |  Major | master | gaojinchao | gaojinchao |
| [HBASE-3867](https://issues.apache.org/jira/browse/HBASE-3867) | when cluster is stopped and server which hosted meta region is removed from cluster, master breaks down after restarting cluster. |  Critical | master | Liu Jia |  |
| [HBASE-4118](https://issues.apache.org/jira/browse/HBASE-4118) | method regionserver.MemStore#updateColumnValue: the check for qualifier and family is missing |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4109](https://issues.apache.org/jira/browse/HBASE-4109) | Hostname returned via reverse dns lookup contains trailing period if configured interface is not "default" |  Major | master, regionserver | Shrijeet Paliwal | Shrijeet Paliwal |
| [HBASE-3872](https://issues.apache.org/jira/browse/HBASE-3872) | Hole in split transaction rollback; edits to .META. need to be rolled back even if it seems like they didn't make it |  Blocker | regionserver | stack | stack |
| [HBASE-4105](https://issues.apache.org/jira/browse/HBASE-4105) | Stargate does not support Content-Type: application/json and Content-Encoding: gzip in parallel |  Major | REST | Jean-Pierre Koenig | Andrew Purtell |
| [HBASE-4116](https://issues.apache.org/jira/browse/HBASE-4116) | [stargate] StringIndexOutOfBoundsException in row spec parse |  Major | . | Andrew Purtell |  |
| [HBASE-4129](https://issues.apache.org/jira/browse/HBASE-4129) | hbase-3872 added a warn message 'CatalogJanitor: Daughter regiondir does not exist' that is triggered though its often legit that daughter is not present |  Major | . | stack | stack |
| [HBASE-4139](https://issues.apache.org/jira/browse/HBASE-4139) | [stargate] Update ScannerModel with support for filter package additions |  Major | . | Andrew Purtell | Andrew Purtell |


