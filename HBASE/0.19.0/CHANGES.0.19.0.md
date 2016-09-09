
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

## Release 0.19.0 - 2009-01-21

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-947](https://issues.apache.org/jira/browse/HBASE-947) | [Optimization] Major compaction should remove deletes as well as the deleted cell |  Minor | . | Jim Kellerman | stack |
| [HBASE-1005](https://issues.apache.org/jira/browse/HBASE-1005) | Regex and string comparison operators for ColumnValueFilter |  Minor | Filters | Andrew Purtell | Andrew Purtell |
| [HBASE-972](https://issues.apache.org/jira/browse/HBASE-972) | Update hbase trunk to use released hadoop 0.19.0 |  Major | . | stack | stack |
| [HBASE-1028](https://issues.apache.org/jira/browse/HBASE-1028) | If key does not exist, return null in getRow rather than an empty RowResult |  Major | . | stack | Andrew Purtell |
| [HBASE-1027](https://issues.apache.org/jira/browse/HBASE-1027) | Make global flusher check work with percentages rather than hard code memory sizes. |  Major | . | stack | stack |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-748](https://issues.apache.org/jira/browse/HBASE-748) | Add an efficient way to batch update many rows |  Major | Client | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-636](https://issues.apache.org/jira/browse/HBASE-636) | java6 as a requirement |  Blocker | . | stack | stack |
| [HBASE-817](https://issues.apache.org/jira/browse/HBASE-817) | Hbase/Shell Truncate |  Minor | . | Adam Gerber | Jean-Daniel Cryans |
| [HBASE-961](https://issues.apache.org/jira/browse/HBASE-961) | Delete multiple columns by regular expression |  Major | Client | Slava | Sijie Guo |
| [HBASE-883](https://issues.apache.org/jira/browse/HBASE-883) | Secondary Indexes |  Major | Client, regionserver | Clint Morgan | Andrew Purtell |
| [HBASE-847](https://issues.apache.org/jira/browse/HBASE-847) | new API: HTable.getRow with numVersion specified |  Critical | Client | Michael Bieniosek | Doğacan Güney |
| [HBASE-1106](https://issues.apache.org/jira/browse/HBASE-1106) | Expose getClosestRowBefore in HTable |  Minor | . | Michael Gottesman | Michael Gottesman |
| [HBASE-1082](https://issues.apache.org/jira/browse/HBASE-1082) | Administrative functions for table/region maintenance |  Major | . | Jonathan Gray | stack |
| [HBASE-1090](https://issues.apache.org/jira/browse/HBASE-1090) | Atomic Check And Save in HTable |  Minor | . | Michael Gottesman | Michael Gottesman |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-890](https://issues.apache.org/jira/browse/HBASE-890) | alter table operation and also related changes in REST interface |  Major | REST, scripts | sishen | sishen |
| [HBASE-886](https://issues.apache.org/jira/browse/HBASE-886) | Sort the tables in the web UI |  Minor | Client | Jean-Daniel Cryans |  |
| [HBASE-885](https://issues.apache.org/jira/browse/HBASE-885) | TableMap and TableReduce should be interfaces |  Minor | . | Doğacan Güney | Doğacan Güney |
| [HBASE-884](https://issues.apache.org/jira/browse/HBASE-884) | Double and float converters for Bytes class |  Minor | io | Doğacan Güney | Doğacan Güney |
| [HBASE-887](https://issues.apache.org/jira/browse/HBASE-887) | Fix a hotspot in scanners |  Major | Client, regionserver | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-875](https://issues.apache.org/jira/browse/HBASE-875) | Use MurmurHash instead of JenkinsHash |  Major | util | Andrzej Bialecki |  |
| [HBASE-901](https://issues.apache.org/jira/browse/HBASE-901) | Add a limit to key length, check key and value length on client side. |  Blocker | Client | Jim Kellerman | Jean-Daniel Cryans |
| [HBASE-908](https://issues.apache.org/jira/browse/HBASE-908) | Add approximate counting to CountingBloomFilter |  Major | util | Andrzej Bialecki |  |
| [HBASE-576](https://issues.apache.org/jira/browse/HBASE-576) | Investigate IPC performance |  Major | IPC/RPC | Jim Kellerman | stack |
| [HBASE-920](https://issues.apache.org/jira/browse/HBASE-920) | Make region balancing sloppier |  Major | . | stack | stack |
| [HBASE-943](https://issues.apache.org/jira/browse/HBASE-943) |  to ColumnValueFilter: add filterIfColumnMissing property, add SubString operator |  Minor | . | Clint Morgan | Clint Morgan |
| [HBASE-942](https://issues.apache.org/jira/browse/HBASE-942) | Add convenience methods to RowFilterSet |  Minor | . | Clint Morgan | Clint Morgan |
| [HBASE-937](https://issues.apache.org/jira/browse/HBASE-937) | Thrift getRow does not support specifying columns |  Minor | Thrift | Doğacan Güney | Doğacan Güney |
| [HBASE-940](https://issues.apache.org/jira/browse/HBASE-940) | Make the TableOutputFormat batching-aware |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-967](https://issues.apache.org/jira/browse/HBASE-967) | [Optimization] Cache cell maximum length (HCD.getMaxValueLength); its used checking batch size. |  Major | . | stack | stack |
| [HBASE-728](https://issues.apache.org/jira/browse/HBASE-728) | Supporting for HLog appends |  Blocker | regionserver | Billy Pearson | Jim Kellerman |
| [HBASE-936](https://issues.apache.org/jira/browse/HBASE-936) | REST Interface:   enable to get numbers of rows from scanner interface |  Major | REST | sishen | sishen |
| [HBASE-960](https://issues.apache.org/jira/browse/HBASE-960) | REST interface:  more generic column family configure and also get Rows using offset and limit |  Major | REST | sishen | sishen |
| [HBASE-625](https://issues.apache.org/jira/browse/HBASE-625) | Metrics support for cluster load history: emissions and graphs |  Critical | . | stack | stack |
| [HBASE-785](https://issues.apache.org/jira/browse/HBASE-785) | Remove InfoServer, use HADOOP-3824 StatusHttpServer instead (requires hadoop 0.19) |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-81](https://issues.apache.org/jira/browse/HBASE-81) | [hbase] When a scanner lease times out, throw a more "user friendly" exception |  Trivial | Client, regionserver | Jim Kellerman | Jim Kellerman |
| [HBASE-983](https://issues.apache.org/jira/browse/HBASE-983) | Declare Perl namespace in Hbase.thrift |  Trivial | . | Carlos Valiente | Carlos Valiente |
| [HBASE-987](https://issues.apache.org/jira/browse/HBASE-987) | We need a Hbase Partitioner for TableMapReduceUtil.initTableReduceJob MR Jobs |  Minor | . | Billy Pearson | Billy Pearson |
| [HBASE-992](https://issues.apache.org/jira/browse/HBASE-992) | Up the versions kept by catalog tables; currently 1.  Make it 10? |  Major | . | stack | stack |
| [HBASE-678](https://issues.apache.org/jira/browse/HBASE-678) | hbase needs a 'safe-mode' |  Blocker | . | stack | Jim Kellerman |
| [HBASE-998](https://issues.apache.org/jira/browse/HBASE-998) | Narrow getClosestRowBefore by passing column family |  Major | . | stack | stack |
| [HBASE-999](https://issues.apache.org/jira/browse/HBASE-999) | Up versions on historian and keep history of deleted regions for a while rather than delete immediately |  Major | . | stack | stack |
| [HBASE-1023](https://issues.apache.org/jira/browse/HBASE-1023) | Check global flusher |  Major | . | stack |  |
| [HBASE-1020](https://issues.apache.org/jira/browse/HBASE-1020) | Regionserver OOME handler should dump vital stats |  Major | regionserver | Andrew Purtell | stack |
| [HBASE-1018](https://issues.apache.org/jira/browse/HBASE-1018) | Regionservers should report detailed health to master; master should flag troubled regionservers in UI |  Major | master, regionserver | Andrew Purtell | Andrew Purtell |
| [HBASE-902](https://issues.apache.org/jira/browse/HBASE-902) | Add force compaction and force split operations to UI and Admin |  Major | . | stack | Andrew Purtell |
| [HBASE-1043](https://issues.apache.org/jira/browse/HBASE-1043) | Removing @Override attributes where they are no longer needed. |  Minor | Filters, master, regionserver | Ryan Smith |  |
| [HBASE-1029](https://issues.apache.org/jira/browse/HBASE-1029) | REST wiki documentation incorrect |  Major | . | Craig Macdonald | sishen |
| [HBASE-1055](https://issues.apache.org/jira/browse/HBASE-1055) | Better vm stats on startup |  Major | . | stack | stack |
| [HBASE-1065](https://issues.apache.org/jira/browse/HBASE-1065) | Minor logging improvements in the master |  Major | . | stack | stack |
| [HBASE-1053](https://issues.apache.org/jira/browse/HBASE-1053) | bring recent rpc changes down from hadoop |  Major | . | stack | stack |
| [HBASE-1069](https://issues.apache.org/jira/browse/HBASE-1069) | Show whether HRegion major compacts or not in INFO level |  Minor | regionserver | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1066](https://issues.apache.org/jira/browse/HBASE-1066) | Master should support close/open/reassignment/enable/disable operations on individual regions |  Major | . | Andrew Purtell | stack |
| [HBASE-1102](https://issues.apache.org/jira/browse/HBASE-1102) | boolean HTable.exists |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1105](https://issues.apache.org/jira/browse/HBASE-1105) | Remove duplicated code in HCM, add javadoc to RegionState, etc. |  Trivial | . | stack | stack |
| [HBASE-1137](https://issues.apache.org/jira/browse/HBASE-1137) | Add not on xceivers count to overview documentation |  Major | . | stack |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-891](https://issues.apache.org/jira/browse/HBASE-891) | HRS.validateValuesLength throws IOE, gets caught in the retries |  Major | Client | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-894](https://issues.apache.org/jira/browse/HBASE-894) | [shell] Should be able to copy-paste table description to create new table |  Major | . | stack | sishen |
| [HBASE-892](https://issues.apache.org/jira/browse/HBASE-892) | Cell iteration is broken |  Minor | io | Doğacan Güney | Doğacan Güney |
| [HBASE-895](https://issues.apache.org/jira/browse/HBASE-895) | [shell] 'list' command should emit a sorted list of tables |  Major | . | stack |  |
| [HBASE-898](https://issues.apache.org/jira/browse/HBASE-898) | RowResult.containsKey(String) doesn't work |  Trivial | io | Doğacan Güney | Doğacan Güney |
| [HBASE-906](https://issues.apache.org/jira/browse/HBASE-906) | [shell] Truncates output |  Major | . | stack | stack |
| [HBASE-912](https://issues.apache.org/jira/browse/HBASE-912) | PE is broken when other tables exist |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-853](https://issues.apache.org/jira/browse/HBASE-853) | [shell] Cannot describe meta tables |  Major | . | stack | Izaak Rubin |
| [HBASE-852](https://issues.apache.org/jira/browse/HBASE-852) | Cannot scan all families in a row with a LIMIT, STARTROW, etc. |  Major | . | stack | Izaak Rubin |
| [HBASE-844](https://issues.apache.org/jira/browse/HBASE-844) | Can't pass script to hbase shell |  Major | . | stack | Izaak Rubin |
| [HBASE-837](https://issues.apache.org/jira/browse/HBASE-837) | Add unit tests for ThriftServer.HBaseHandler |  Major | . | stack | Izaak Rubin |
| [HBASE-913](https://issues.apache.org/jira/browse/HBASE-913) | Classes using log4j directly |  Major | . | stack | stack |
| [HBASE-914](https://issues.apache.org/jira/browse/HBASE-914) | MSG\_REPORT\_CLOSE has a byte array for a message |  Major | . | stack | stack |
| [HBASE-925](https://issues.apache.org/jira/browse/HBASE-925) | HRS NPE on way out if no master to connect to |  Major | . | stack | stack |
| [HBASE-928](https://issues.apache.org/jira/browse/HBASE-928) | NPE throwing RetriesExhaustedException |  Major | . | stack | stack |
| [HBASE-924](https://issues.apache.org/jira/browse/HBASE-924) | Update hadoop in lib on 0.18 hbase branch to 0.18.1 |  Major | . | stack | Jim Kellerman |
| [HBASE-929](https://issues.apache.org/jira/browse/HBASE-929) | clarify that ttl in HColumnDescriptor is seconds |  Major | . | stack | stack |
| [HBASE-930](https://issues.apache.org/jira/browse/HBASE-930) | RegionServer stuck: HLog: Could not append. Requesting close of log java.io.IOException: Could not get block locations. Aborting... |  Major | . | stack | stack |
| [HBASE-926](https://issues.apache.org/jira/browse/HBASE-926) | If no master, regionservers should hang out rather than fail on connection and shut themselves down |  Blocker | . | stack | Jim Kellerman |
| [HBASE-939](https://issues.apache.org/jira/browse/HBASE-939) | NPE in HStoreKey |  Major | . | stack | stack |
| [HBASE-945](https://issues.apache.org/jira/browse/HBASE-945) | Be consistent in use of qualified/unqualified mapfile paths |  Major | . | stack | stack |
| [HBASE-946](https://issues.apache.org/jira/browse/HBASE-946) | Row with 55k deletes timesout scanner lease |  Blocker | . | stack | stack |
| [HBASE-950](https://issues.apache.org/jira/browse/HBASE-950) | HTable.commit no longer works with existing RowLocks though it's still in API |  Major | . | Jonathan Gray | Jean-Daniel Cryans |
| [HBASE-957](https://issues.apache.org/jira/browse/HBASE-957) | PerformanceEvaluation tests if table exists by comparing descriptors |  Major | . | stack | stack |
| [HBASE-970](https://issues.apache.org/jira/browse/HBASE-970) | Update the copy/rename scripts to go against change API |  Major | . | stack |  |
| [HBASE-966](https://issues.apache.org/jira/browse/HBASE-966) | HBASE-748 misses some writes |  Blocker | regionserver | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-949](https://issues.apache.org/jira/browse/HBASE-949) | Add an HBase Manual |  Blocker | . | stack | stack |
| [HBASE-973](https://issues.apache.org/jira/browse/HBASE-973) | [doc] In getting started, make it clear that hbase needs to create its directory in hdfs |  Major | . | stack | stack |
| [HBASE-963](https://issues.apache.org/jira/browse/HBASE-963) | Fix the retries in HTable.flushCommit |  Blocker | Client | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-971](https://issues.apache.org/jira/browse/HBASE-971) | Fix the failing tests on Hudson |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-969](https://issues.apache.org/jira/browse/HBASE-969) | Won't when storefile \> 2G (WAS -\> Won't split under load) |  Blocker | . | stack | stack |
| [HBASE-976](https://issues.apache.org/jira/browse/HBASE-976) | HADOOP 0.19.0 RC0 is broke; replace with HEAD of branch-0.19 |  Major | . | stack | stack |
| [HBASE-977](https://issues.apache.org/jira/browse/HBASE-977) | Arcane HStoreKey comparator bug |  Major | . | stack | stack |
| [HBASE-980](https://issues.apache.org/jira/browse/HBASE-980) | Undo core of HBASE-975, caching of start and end row |  Major | . | stack | stack |
| [HBASE-982](https://issues.apache.org/jira/browse/HBASE-982) | Deleting a column in MapReduce fails |  Major | . | Doğacan Güney | Doğacan Güney |
| [HBASE-985](https://issues.apache.org/jira/browse/HBASE-985) | javadoc error |  Blocker | . | Jim Kellerman | stack |
| [HBASE-951](https://issues.apache.org/jira/browse/HBASE-951) | Either shut down master or let it finish cleanup |  Major | master | Jim Kellerman | Jim Kellerman |
| [HBASE-722](https://issues.apache.org/jira/browse/HBASE-722) | Shutdown and Compactions |  Major | regionserver | Billy Pearson | stack |
| [HBASE-964](https://issues.apache.org/jira/browse/HBASE-964) | Startup stuck "waiting for root region" |  Major | . | stack | Jim Kellerman |
| [HBASE-993](https://issues.apache.org/jira/browse/HBASE-993) | Turn of logging of every catalog table row entry on every scan |  Major | . | stack | stack |
| [HBASE-984](https://issues.apache.org/jira/browse/HBASE-984) | Fix javadoc warnings |  Blocker | . | Jim Kellerman | Jim Kellerman |
| [HBASE-994](https://issues.apache.org/jira/browse/HBASE-994) | IPC interfaces with different versions can cause problems |  Major | IPC/RPC | Jim Kellerman | Jim Kellerman |
| [HBASE-996](https://issues.apache.org/jira/browse/HBASE-996) | Migration script to up the versions in catalog tables |  Major | . | stack | stack |
| [HBASE-602](https://issues.apache.org/jira/browse/HBASE-602) | HBase Crash when network card has a IPv6 address |  Major | master, regionserver | Zhou Wei | Jim Kellerman |
| [HBASE-991](https://issues.apache.org/jira/browse/HBASE-991) | Update the mapred package document examples so they work with TRUNK/0.19.0. |  Major | . | stack | stack |
| [HBASE-1003](https://issues.apache.org/jira/browse/HBASE-1003) | If cell exceeds TTL but not VERSIONs, will not be removed during major compaction |  Major | . | stack | stack |
| [HBASE-990](https://issues.apache.org/jira/browse/HBASE-990) | NoSuchElementException in flushSomeRegions |  Major | . | stack | stack |
| [HBASE-910](https://issues.apache.org/jira/browse/HBASE-910) | Scanner misses columns / rows when the scanner is obtained durring a memcache flush |  Blocker | regionserver | Clint Morgan | stack |
| [HBASE-1009](https://issues.apache.org/jira/browse/HBASE-1009) | Master stuck in loop wanting to assign but regions are closing |  Blocker | . | stack | stack |
| [HBASE-1013](https://issues.apache.org/jira/browse/HBASE-1013) | Add debugging around commit log cleanup |  Major | . | stack | stack |
| [HBASE-1016](https://issues.apache.org/jira/browse/HBASE-1016) | Fix example in javadoc overview |  Major | . | stack | stack |
| [HBASE-1021](https://issues.apache.org/jira/browse/HBASE-1021) | hbase metrics FileContext not working |  Major | . | stack | stack |
| [HBASE-1036](https://issues.apache.org/jira/browse/HBASE-1036) | HBASE-1028 broke Thrift |  Blocker | Thrift | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1030](https://issues.apache.org/jira/browse/HBASE-1030) | Bit of polish on HBASE-1018 |  Major | . | stack | stack |
| [HBASE-1041](https://issues.apache.org/jira/browse/HBASE-1041) | migration throwing NPE |  Major | . | stack | stack |
| [HBASE-1039](https://issues.apache.org/jira/browse/HBASE-1039) | Compaction fails if bloomfilters are enabled |  Major | regionserver | Andrew Purtell | stack |
| [HBASE-927](https://issues.apache.org/jira/browse/HBASE-927) | We don't recover if HRS hosting -ROOT-/.META. goes down |  Blocker | . | stack | Jim Kellerman |
| [HBASE-1040](https://issues.apache.org/jira/browse/HBASE-1040) | OOME does not cause graceful shutdown under some failure scenarios |  Major | regionserver | Andrew Purtell |  |
| [HBASE-1000](https://issues.apache.org/jira/browse/HBASE-1000) | Sleeper.sleep does not go back to sleep when interrupted and no stop flag given. |  Trivial | util | Nitay Joffe | stack |
| [HBASE-1048](https://issues.apache.org/jira/browse/HBASE-1048) | HLog: Found 0 logs to remove out of total 1450; oldest outstanding seqnum is 162297053 fr om region -ROOT-,,0 |  Major | . | stack | stack |
| [HBASE-1054](https://issues.apache.org/jira/browse/HBASE-1054) | Index NPE on scanning |  Major | . | Clint Morgan | Clint Morgan |
| [HBASE-1059](https://issues.apache.org/jira/browse/HBASE-1059) | ConcurrentModificationException in notifyChangedReadersObservers |  Major | . | stack | stack |
| [HBASE-1063](https://issues.apache.org/jira/browse/HBASE-1063) | "File separator problem on Windows" |  Major | . | stack |  |
| [HBASE-797](https://issues.apache.org/jira/browse/HBASE-797) | IllegalAccessError running RowCounter |  Major | . | stack | stack |
| [HBASE-1056](https://issues.apache.org/jira/browse/HBASE-1056) | [migration] enable blockcaching on .META. table |  Major | . | stack | stack |
| [HBASE-1068](https://issues.apache.org/jira/browse/HBASE-1068) | TestCompaction broken on hudson. |  Major | . | stack | stack |
| [HBASE-900](https://issues.apache.org/jira/browse/HBASE-900) | Regionserver memory leak causing OOME during relatively modest bulk importing |  Blocker | . | Jonathan Gray | stack |
| [HBASE-1067](https://issues.apache.org/jira/browse/HBASE-1067) | TestRegionRebalancing broken by running of hdfs shutdown thread. |  Major | . | stack | stack |
| [HBASE-1052](https://issues.apache.org/jira/browse/HBASE-1052) | Stopping a HRegionServer with unflushed cache causes data loss from org.apache.hadoop.hbase.DroppedSnapshotException |  Critical | regionserver | Cosmin Lehene | Jim Kellerman |
| [HBASE-1074](https://issues.apache.org/jira/browse/HBASE-1074) | New thread introduced by hbase-900 part 4 is not daemon so can cause JVM to stick around on abort |  Major | . | stack | stack |
| [HBASE-1079](https://issues.apache.org/jira/browse/HBASE-1079) | Dumb NPE in ServerCallable hides the RetriesExhausted exception. |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-782](https://issues.apache.org/jira/browse/HBASE-782) | The DELETE key in the hbase shell deletes the wrong character |  Minor | Client | Sebastien Rainville | Tim Sell |
| [HBASE-1045](https://issues.apache.org/jira/browse/HBASE-1045) | Hangup by regionserver causes write to fail |  Major | Client | Andrew Purtell | Jean-Daniel Cryans |
| [HBASE-543](https://issues.apache.org/jira/browse/HBASE-543) | A region's state is kept in several places in the master opening the possibility for race conditions |  Major | master | Jim Kellerman | Jim Kellerman |
| [HBASE-989](https://issues.apache.org/jira/browse/HBASE-989) | Cannot add columnfamily in shell |  Major | . | stack | Rong-En Fan |
| [HBASE-1087](https://issues.apache.org/jira/browse/HBASE-1087) | DFS failures did not shutdown regionserver |  Critical | . | Jonathan Gray | stack |
| [HBASE-1081](https://issues.apache.org/jira/browse/HBASE-1081) | Master does not notice unassigned regions |  Critical | . | Andrew Purtell |  |
| [HBASE-1077](https://issues.apache.org/jira/browse/HBASE-1077) | Master does not reassign regions closed while opening |  Major | master | Andrew Purtell |  |
| [HBASE-1072](https://issues.apache.org/jira/browse/HBASE-1072) | Change Thread.join on exit to a timed Thread.join |  Major | . | stack | stack |
| [HBASE-1062](https://issues.apache.org/jira/browse/HBASE-1062) | Compactions at (re)start on a large table can overwhelm DFS |  Critical | regionserver | Andrew Purtell | Andrew Purtell |
| [HBASE-1100](https://issues.apache.org/jira/browse/HBASE-1100) | HBASE-1062 broke TestForceSplit |  Major | . | stack | stack |
| [HBASE-1091](https://issues.apache.org/jira/browse/HBASE-1091) | shell tools -\> close\_region does not work for regions that did not deploy properly on startup |  Major | master | Andrew Purtell | stack |
| [HBASE-1093](https://issues.apache.org/jira/browse/HBASE-1093) | NPE in HStore#compact |  Major | . | stack | stack |
| [HBASE-1097](https://issues.apache.org/jira/browse/HBASE-1097) | SequenceFile.Reader keeps around buffer whose size is that of largest item read -\> results in lots of dead heap |  Major | . | stack | stack |
| [HBASE-1083](https://issues.apache.org/jira/browse/HBASE-1083) | Will keep scheduling major compactions if last time one ran, we didn't. |  Major | . | stack | stack |
| [HBASE-1101](https://issues.apache.org/jira/browse/HBASE-1101) | NPE in HConnectionManager$TableServers.processBatchOfRows |  Critical | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1099](https://issues.apache.org/jira/browse/HBASE-1099) | Regions assigned while master is splitting logs of recently crashed server; regionserver tries to execute incomplete log |  Blocker | . | stack | stack |
| [HBASE-1104](https://issues.apache.org/jira/browse/HBASE-1104) | Doubly-assigned regions redux |  Major | . | stack | Jim Kellerman |
| [HBASE-1119](https://issues.apache.org/jira/browse/HBASE-1119) | Test failures on TRUNK - ArrayIndexOutOfBoundsException in o.a.h.h.regionserver.HStore.compact |  Blocker | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1114](https://issues.apache.org/jira/browse/HBASE-1114) | Weird NPEs compacting |  Major | . | stack | stack |
| [HBASE-1125](https://issues.apache.org/jira/browse/HBASE-1125) | "IllegalStateException: Cannot set a region to be closed if it was not already marked as pending close" |  Blocker | . | stack |  |
| [HBASE-1124](https://issues.apache.org/jira/browse/HBASE-1124) | Balancer kicks in way too early |  Major | . | Andrew Purtell | stack |
| [HBASE-1127](https://issues.apache.org/jira/browse/HBASE-1127) | OOME running randomRead PE (Disable blanket enabling of blockcache) |  Blocker | . | stack | stack |
| [HBASE-1116](https://issues.apache.org/jira/browse/HBASE-1116) | generated web.xml and svn don't play nice together |  Major | . | stack |  |
| [HBASE-1134](https://issues.apache.org/jira/browse/HBASE-1134) | OOME in HMaster when HBaseRPC is older than 0.19 |  Blocker | IPC/RPC | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1132](https://issues.apache.org/jira/browse/HBASE-1132) | Can't append to HLog, can't roll log, infinite cycle (another spin on HBASE-930) |  Major | . | stack | stack |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1034](https://issues.apache.org/jira/browse/HBASE-1034) | Remove useless TestToString unit test |  Minor | . | Andrew Purtell | Andrew Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-918](https://issues.apache.org/jira/browse/HBASE-918) | Region balancing during startup makes cluster unstable |  Blocker | master | Jim Kellerman | Jim Kellerman |
| [HBASE-919](https://issues.apache.org/jira/browse/HBASE-919) | Master and Region Server need to provide root region location if they are using HTable |  Blocker | master, regionserver | Jim Kellerman | Jim Kellerman |
| [HBASE-952](https://issues.apache.org/jira/browse/HBASE-952) | Deadlock in HRegion.batchUpdate |  Blocker | . | Jim Kellerman | Jim Kellerman |
| [HBASE-954](https://issues.apache.org/jira/browse/HBASE-954) | Don't reassign root region until ProcessServerShutdown has split the former region server's log |  Blocker | master | Jim Kellerman | Jim Kellerman |
| [HBASE-956](https://issues.apache.org/jira/browse/HBASE-956) | Master and region server threads should extend Chore |  Minor | master, regionserver | Jim Kellerman | Jim Kellerman |
| [HBASE-955](https://issues.apache.org/jira/browse/HBASE-955) | Stop HLog thread before starting a new one |  Blocker | regionserver | Jim Kellerman | Jim Kellerman |
| [HBASE-959](https://issues.apache.org/jira/browse/HBASE-959) | Be able to get multiple RowResult at one time from client side |  Major | Client | sishen | sishen |
| [HBASE-979](https://issues.apache.org/jira/browse/HBASE-979) | REST web app is not started automatically |  Major | master | sishen |  |
| [HBASE-988](https://issues.apache.org/jira/browse/HBASE-988) | Enhance web ui to include "safe-mode" |  Major | . | Jim Kellerman | Jean-Daniel Cryans |
| [HBASE-675](https://issues.apache.org/jira/browse/HBASE-675) | Report correct server hosting a table split for assignment to for MR Jobs |  Critical | . | Billy Pearson | stack |
| [HBASE-1022](https://issues.apache.org/jira/browse/HBASE-1022) | Add  storefile index size to hbase metrics |  Major | . | stack | Andrew Purtell |
| [HBASE-44](https://issues.apache.org/jira/browse/HBASE-44) | [hbase] Method to get a number of timestamped versions of a row all at once |  Trivial | Client | Bryan Duxbury | Doğacan Güney |
| [HBASE-857](https://issues.apache.org/jira/browse/HBASE-857) | Add a getFamily method that returns all the cells in a column family |  Major | . | Jim Kellerman | Doğacan Güney |
| [HBASE-1046](https://issues.apache.org/jira/browse/HBASE-1046) | Region assigned to two regionservers after split |  Blocker | regionserver | Andrew Purtell | Jim Kellerman |
| [HBASE-1051](https://issues.apache.org/jira/browse/HBASE-1051) | Regionserver attempting to open reassigned region but master ignoring, thinks region is still closing |  Major | master, regionserver | Andrew Purtell | Jim Kellerman |
| [HBASE-1098](https://issues.apache.org/jira/browse/HBASE-1098) | IllegalStateException: Cannot set a region to be closed it it was not already marked as closing |  Major | . | stack | Jim Kellerman |
| [HBASE-1096](https://issues.apache.org/jira/browse/HBASE-1096) | Does not recover if HRS carrying -ROOT- goes down |  Major | . | stack | Jim Kellerman |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-905](https://issues.apache.org/jira/browse/HBASE-905) | Remove V5 migration classes from 0.19.0 |  Major | util | Jim Kellerman | Jim Kellerman |
| [HBASE-953](https://issues.apache.org/jira/browse/HBASE-953) | Enable BLOCKCACHE by default [WAS -\> Reevaluate HBASE-288 block caching work....?] |  Critical | . | stack | stack |
| [HBASE-839](https://issues.apache.org/jira/browse/HBASE-839) | Update hadoop libs in hbase; move hbase TRUNK on to an hadoop 0.19.0 RC |  Major | . | Jim Kellerman | stack |
| [HBASE-978](https://issues.apache.org/jira/browse/HBASE-978) | Remove BloomFilterDescriptor. It is no longer used. |  Minor | . | Jim Kellerman | Jim Kellerman |
| [HBASE-1070](https://issues.apache.org/jira/browse/HBASE-1070) | Up default index interval in TRUNK and branch |  Major | . | stack | stack |


