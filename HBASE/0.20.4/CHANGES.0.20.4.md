
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

## Release 0.20.4 - 2010-05-05

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-2378](https://issues.apache.org/jira/browse/HBASE-2378) | Bulk insert with multiple reducers broken due to improper ImmutableBytesWritable comparator |  Critical | mapreduce | Ruslan Salyakhov | Todd Lipcon |
| [HBASE-2422](https://issues.apache.org/jira/browse/HBASE-2422) | Remove fragmentation indicator for 0.20.4... fix in 0.20.5. |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-2248](https://issues.apache.org/jira/browse/HBASE-2248) | Provide new non-copy mechanism to assure atomic reads in get and scan |  Blocker | . | Dave Latham | ryan rawson |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-2220](https://issues.apache.org/jira/browse/HBASE-2220) | Add a binary comparator that only compares up to the length of the supplied byte array |  Minor | Filters | Bruno Dumon |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-2185](https://issues.apache.org/jira/browse/HBASE-2185) | Add html version of default hbase-site.xml |  Major | documentation | Karthik K |  |
| [HBASE-2198](https://issues.apache.org/jira/browse/HBASE-2198) | SingleColumnValueFilter should be able to find the column value even when it's not specifically added as input on the scan. |  Major | Filters | Ferdy Galema |  |
| [HBASE-2189](https://issues.apache.org/jira/browse/HBASE-2189) | HCM trashes meta cache even when not needed |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2190](https://issues.apache.org/jira/browse/HBASE-2190) | HRS should report to master when HMsg are available |  Major | . | Jean-Daniel Cryans | stack |
| [HBASE-2222](https://issues.apache.org/jira/browse/HBASE-2222) | Improve log "Trying to contact region server Some server for region , row 'ip\_info\_100,,1263329969690', but failed after 11 attempts." |  Major | . | stack | stack |
| [HBASE-2167](https://issues.apache.org/jira/browse/HBASE-2167) | PE for IHBase |  Major | . | stack |  |
| [HBASE-2230](https://issues.apache.org/jira/browse/HBASE-2230) | SingleColumnValueFilter has an ungaurded debug log message. |  Minor | Filters | Dan Washusen |  |
| [HBASE-2262](https://issues.apache.org/jira/browse/HBASE-2262) | ZKW.ensureExists should check for existence |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2273](https://issues.apache.org/jira/browse/HBASE-2273) | [stargate] export metrics via Hadoop metrics, JMX, and ZooKeeper |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2257](https://issues.apache.org/jira/browse/HBASE-2257) | [stargate] multiuser mode |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2277](https://issues.apache.org/jira/browse/HBASE-2277) | Update branch to hadoop 0.20.2 |  Major | . | stack |  |
| [HBASE-2174](https://issues.apache.org/jira/browse/HBASE-2174) | Stop from resolving HRegionServer addresses to names using DNS on every heartbeat |  Major | . | Jean-Daniel Cryans | Karthik Ranganathan |
| [HBASE-2403](https://issues.apache.org/jira/browse/HBASE-2403) | [stargate] client HTable interface to REST connector |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2412](https://issues.apache.org/jira/browse/HBASE-2412) | [stargate] PerformanceEvaluation |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2419](https://issues.apache.org/jira/browse/HBASE-2419) | Remove from RS logs the fat NotServingRegionException stack |  Major | . | stack | stack |
| [HBASE-2436](https://issues.apache.org/jira/browse/HBASE-2436) | [stargate] review Jersey and JSON dependencies |  Blocker | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2440](https://issues.apache.org/jira/browse/HBASE-2440) | Master UI should check against known bad JDK versions and warn the user |  Minor | scripts | Todd Lipcon | Todd Lipcon |
| [HBASE-1892](https://issues.apache.org/jira/browse/HBASE-1892) | [performance] make hbase splits run faster |  Major | . | stack | stack |
| [HBASE-2490](https://issues.apache.org/jira/browse/HBASE-2490) | Improve the javadoc of the client API for HTable. |  Minor | Client | Benoit Sigoure | Benoit Sigoure |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-2173](https://issues.apache.org/jira/browse/HBASE-2173) | New idx javadoc not included with the rest |  Major | . | Jean-Daniel Cryans | stack |
| [HBASE-2177](https://issues.apache.org/jira/browse/HBASE-2177) | Add timestamping to gc logging options |  Major | . | stack | stack |
| [HBASE-2199](https://issues.apache.org/jira/browse/HBASE-2199) | hbase.client.tableindexed.IndexSpecification, lines 72-73 should be reversed |  Minor | . | Adrian Popescu |  |
| [HBASE-2227](https://issues.apache.org/jira/browse/HBASE-2227) | [IHBASE] Idx Expression functionality is incompatible with SingleColumnValueFilter |  Major | . | Yoram Kulbak |  |
| [HBASE-2207](https://issues.apache.org/jira/browse/HBASE-2207) | [IHBASE] Index partial column values |  Major | . | stack |  |
| [HBASE-2206](https://issues.apache.org/jira/browse/HBASE-2206) | [IHBASE] Idx memory allocation fix |  Major | . | stack |  |
| [HBASE-2205](https://issues.apache.org/jira/browse/HBASE-2205) | [IHBASE] Updated Idx pacakge javadocs |  Major | . | stack |  |
| [HBASE-2204](https://issues.apache.org/jira/browse/HBASE-2204) | [IHBASE] Index expression evaluation should fail with a DoNotRetryException in case of an invalid index specification |  Major | . | stack |  |
| [HBASE-2203](https://issues.apache.org/jira/browse/HBASE-2203) | [IHBase] Include only those columns required for indexed scan |  Major | . | stack |  |
| [HBASE-2202](https://issues.apache.org/jira/browse/HBASE-2202) | IdxRegion crash when binary characters |  Major | . | stack |  |
| [HBASE-2241](https://issues.apache.org/jira/browse/HBASE-2241) | Change balancer sloppyness from 0.1 to 0.3 |  Major | . | stack | stack |
| [HBASE-2258](https://issues.apache.org/jira/browse/HBASE-2258) | The WhileMatchFilter doesn't delegate the call to filterRow() |  Major | Filters | Dan Washusen | stack |
| [HBASE-2259](https://issues.apache.org/jira/browse/HBASE-2259) | StackOverflow in ExplicitColumnTracker when row has many columns |  Major | . | Erik Rozendaal | Jean-Daniel Cryans |
| [HBASE-2284](https://issues.apache.org/jira/browse/HBASE-2284) | fsWriteLatency metric may be incorrectly reported |  Minor | . | Kannan Muthukkaruppan | Kannan Muthukkaruppan |
| [HBASE-2063](https://issues.apache.org/jira/browse/HBASE-2063) | For hfileoutputformat, on timeout/failure/kill clean up half-written hfile |  Major | . | stack | stack |
| [HBASE-2244](https://issues.apache.org/jira/browse/HBASE-2244) | META gets inconsistent in a number of crash scenarios |  Critical | . | Kannan Muthukkaruppan | stack |
| [HBASE-2288](https://issues.apache.org/jira/browse/HBASE-2288) | Shell fails on alter |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2293](https://issues.apache.org/jira/browse/HBASE-2293) | CME in RegionManager#isMetaServer |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-2023](https://issues.apache.org/jira/browse/HBASE-2023) | Client sync block can cause 1 thread of a multi-threaded client to block all others |  Major | . | ryan rawson | Karthik Ranganathan |
| [HBASE-2355](https://issues.apache.org/jira/browse/HBASE-2355) | unsychronized logWriters map is mutated from several threads in HLog splitting |  Critical | master | Todd Lipcon | Todd Lipcon |
| [HBASE-2358](https://issues.apache.org/jira/browse/HBASE-2358) | Store doReconstructionLog will fail if oldlogfile.log is empty and won't load region |  Major | regionserver | Cosmin Lehene | Cosmin Lehene |
| [HBASE-2373](https://issues.apache.org/jira/browse/HBASE-2373) | Remove confusing log message of how "BaseScanner GET got different address/startcode than SCAN" |  Major | . | Kannan Muthukkaruppan | stack |
| [HBASE-2365](https://issues.apache.org/jira/browse/HBASE-2365) | Double-assignment around split |  Blocker | . | stack | stack |
| [HBASE-2402](https://issues.apache.org/jira/browse/HBASE-2402) | [stargate] set maxVersions on gets |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2087](https://issues.apache.org/jira/browse/HBASE-2087) | The wait on compaction because "Too many store files" holds up all flushing |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-2252](https://issues.apache.org/jira/browse/HBASE-2252) | Mapping a very big table kills region servers |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2335](https://issues.apache.org/jira/browse/HBASE-2335) | mapred package docs don't say zookeeper jar is a dependency. |  Major | . | ryan rawson | stack |
| [HBASE-2417](https://issues.apache.org/jira/browse/HBASE-2417) | HCM.locateRootRegion fails hard on "Connection refused" |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2346](https://issues.apache.org/jira/browse/HBASE-2346) | Usage of FilterList slows down scans |  Major | Filters | Stefan Seelmann | Jean-Daniel Cryans |
| [HBASE-2322](https://issues.apache.org/jira/browse/HBASE-2322) | deadlock between put and cacheflusher in 0.20 branch |  Blocker | . | stack | stack |
| [HBASE-2481](https://issues.apache.org/jira/browse/HBASE-2481) | Client is not getting UnknownScannerExceptions; they are being eaten |  Blocker | . | stack | Jean-Daniel Cryans |
| [HBASE-2210](https://issues.apache.org/jira/browse/HBASE-2210) | NPE in thrift deleteAll |  Minor | Thrift | Igor Ranitovic | Lars Francke |
| [HBASE-2180](https://issues.apache.org/jira/browse/HBASE-2180) | Bad random read performance from synchronizing hfile.fddatainputstream |  Major | . | ryan rawson | stack |
| [HBASE-2499](https://issues.apache.org/jira/browse/HBASE-2499) | Race condition when disabling a table leaves regions in transition |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-2509](https://issues.apache.org/jira/browse/HBASE-2509) | NPEs in various places, HRegion.get, HRS.close |  Major | . | ryan rawson | ryan rawson |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-2242](https://issues.apache.org/jira/browse/HBASE-2242) | [EC2] Downgrade JDK to 6u17 and rebuild AMIs |  Critical | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2263](https://issues.apache.org/jira/browse/HBASE-2263) | [stargate] multiuser mode: authenticator for zookeeper |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2274](https://issues.apache.org/jira/browse/HBASE-2274) | [stargate] support specification of filters for scanners: JSON descriptors |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2319](https://issues.apache.org/jira/browse/HBASE-2319) | [stargate] multiuser mode: request shaping |  Major | . | Andrew Purtell | Andrew Purtell |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-2381](https://issues.apache.org/jira/browse/HBASE-2381) | missing copyright headers |  Blocker | . | Thomas Koch | Andrew Purtell |
| [HBASE-2415](https://issues.apache.org/jira/browse/HBASE-2415) | Disable META splitting in 0.20 |  Major | . | Todd Lipcon | Todd Lipcon |
| [HBASE-2360](https://issues.apache.org/jira/browse/HBASE-2360) | Make sure we have all the hadoop fixes in our our copy of its rpc |  Major | . | stack | Todd Lipcon |
| [HBASE-2423](https://issues.apache.org/jira/browse/HBASE-2423) | Update 'Getting Started' for 0.20.4 including making "important configurations more visiable" |  Blocker | . | stack | Jean-Daniel Cryans |
| [HBASE-2383](https://issues.apache.org/jira/browse/HBASE-2383) | Replace JSON-licensed json dependencies |  Blocker | . | Thomas Koch | stack |


