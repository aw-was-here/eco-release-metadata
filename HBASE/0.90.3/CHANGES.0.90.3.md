
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

## Release 0.90.3 - 2011-05-19

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3783](https://issues.apache.org/jira/browse/HBASE-3783) | hbase-0.90.2.jar exists in hbase root and in 'lib/' |  Blocker | build | Lukas | stack |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3717](https://issues.apache.org/jira/browse/HBASE-3717) | deprecate HTable isTableEnabled() methods in favor of HBaseAdmin methods |  Trivial | Client | David Buttler | David Buttler |
| [HBASE-3071](https://issues.apache.org/jira/browse/HBASE-3071) | Graceful decommissioning of a regionserver |  Major | . | stack | stack |
| [HBASE-3746](https://issues.apache.org/jira/browse/HBASE-3746) | Clean up CompressionTest to not directly reference DistributedFileSystem |  Major | . | Todd Lipcon | Todd Lipcon |
| [HBASE-3747](https://issues.apache.org/jira/browse/HBASE-3747) | [replication] ReplicationSource should differanciate remote and local exceptions |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3652](https://issues.apache.org/jira/browse/HBASE-3652) | Speed up tests by lowering some sleeps |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3773](https://issues.apache.org/jira/browse/HBASE-3773) | Set ZK max connections much higher in 0.90 |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3767](https://issues.apache.org/jira/browse/HBASE-3767) | Improve how HTable handles threads used for multi actions |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3795](https://issues.apache.org/jira/browse/HBASE-3795) | Remove the "Cache hit for row" message |  Trivial | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3798](https://issues.apache.org/jira/browse/HBASE-3798) | [REST] Allow representation to elide row key and column key |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-3580](https://issues.apache.org/jira/browse/HBASE-3580) | Remove RS from DeadServer when new instance checks in |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3818](https://issues.apache.org/jira/browse/HBASE-3818) | docs adding troubleshooting.xml |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-2470](https://issues.apache.org/jira/browse/HBASE-2470) | Add Scan.setTimeRange() support in Shell |  Trivial | . | Lars George | Harsh J |
| [HBASE-3634](https://issues.apache.org/jira/browse/HBASE-3634) | Fix JavaDoc for put(List\<Put\> puts) in HTableInterface |  Trivial | Client | Lars George | Harsh J |
| [HBASE-3805](https://issues.apache.org/jira/browse/HBASE-3805) | Log RegionState that are processed too late in the master |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3695](https://issues.apache.org/jira/browse/HBASE-3695) | Some improvements to Hbck to test the entire region chain in Meta and provide better error reporting |  Major | util | Marc Limotte | Marc Limotte |
| [HBASE-3536](https://issues.apache.org/jira/browse/HBASE-3536) | [site] Add book all-in-one-page |  Major | . | stack | stack |
| [HBASE-3860](https://issues.apache.org/jira/browse/HBASE-3860) | HLog shouldn't create a new HBC when rolling |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3712](https://issues.apache.org/jira/browse/HBASE-3712) | HTable.close() doesn't shutdown thread pool |  Major | . | Ted Yu | Ted Yu |
| [HBASE-3734](https://issues.apache.org/jira/browse/HBASE-3734) | HBaseAdmin creates new configurations in getCatalogTracker |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3756](https://issues.apache.org/jira/browse/HBASE-3756) | Can't move META or ROOT from shell |  Critical | . | stack | stack |
| [HBASE-3740](https://issues.apache.org/jira/browse/HBASE-3740) | hbck doesn't reset the number of errors when retrying |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3750](https://issues.apache.org/jira/browse/HBASE-3750) | HTablePool.putTable() should call tableFactory.releaseHTableInterface() for discarded table |  Major | Client | Ted Yu | Ted Yu |
| [HBASE-3755](https://issues.apache.org/jira/browse/HBASE-3755) | Catch zk's ConnectionLossException and augment error message with more help |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3722](https://issues.apache.org/jira/browse/HBASE-3722) |  A lot of data is lost when name node crashed |  Major | master | gaojinchao | gaojinchao |
| [HBASE-3771](https://issues.apache.org/jira/browse/HBASE-3771) | All jsp pages don't clean their HBA |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3708](https://issues.apache.org/jira/browse/HBASE-3708) | createAndFailSilent is not so silent; leaves lots of logging in ensemble logs |  Major | Zookeeper | stack | Dmitriy V. Ryaboy |
| [HBASE-3744](https://issues.apache.org/jira/browse/HBASE-3744) | createTable blocks until all regions are out of transition |  Critical | master | Todd Lipcon | Ted Yu |
| [HBASE-3800](https://issues.apache.org/jira/browse/HBASE-3800) | If HMaster is started after NN without starting DN in Hbase 090.2 then HMaster is not able to start due to AlreadyCreatedException for /hbase/hbase.version |  Major | master | gaojinchao | Andrew Purtell |
| [HBASE-3539](https://issues.apache.org/jira/browse/HBASE-3539) | Improve shell help to reflect all possible options |  Trivial | shell | Lars George | Harsh J |
| [HBASE-3817](https://issues.apache.org/jira/browse/HBASE-3817) | HBase Shell has an issue accepting FILTER for the 'scan' command. |  Trivial | shell | Harsh J | Harsh J |
| [HBASE-3749](https://issues.apache.org/jira/browse/HBASE-3749) | Master can't exit when open port failed |  Major | master | gaojinchao | gaojinchao |
| [HBASE-3794](https://issues.apache.org/jira/browse/HBASE-3794) | TestRpcMetrics fails on machine where region server is running |  Major | test | Ted Yu | Alex Newman |
| [HBASE-3741](https://issues.apache.org/jira/browse/HBASE-3741) | Make HRegionServer aware of the regions it's opening/closing |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-3597](https://issues.apache.org/jira/browse/HBASE-3597) | ageOfLastAppliedOp should update after cluster replication failures |  Major | Replication | Otis Gospodnetic | Jean-Daniel Cryans |
| [HBASE-3821](https://issues.apache.org/jira/browse/HBASE-3821) |  "NOT flushing memstore for region" keep on printing for half an hour |  Major | regionserver | zhoushuaifeng | zhoushuaifeng |
| [HBASE-3848](https://issues.apache.org/jira/browse/HBASE-3848) | request is always zero in WebUI for region server |  Minor | regionserver | gaojinchao | gaojinchao |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3846](https://issues.apache.org/jira/browse/HBASE-3846) | Set RIT timeout higher |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |


