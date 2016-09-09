
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

## Release 0.20.0 - 2009-09-08

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1144](https://issues.apache.org/jira/browse/HBASE-1144) | Store the ROOT region location in Zookeeper |  Major | . | Jean-Daniel Cryans | Nitay Joffe |
| [HBASE-61](https://issues.apache.org/jira/browse/HBASE-61) | [hbase] Create an HBase-specific MapFile implementation |  Blocker | io | Bryan Duxbury | ryan rawson |
| [HBASE-859](https://issues.apache.org/jira/browse/HBASE-859) | HStoreKey needs a reworking |  Blocker | . | stack | stack |
| [HBASE-1217](https://issues.apache.org/jira/browse/HBASE-1217) | add new compression and hfile blocksize to HColumnDescriptor |  Major | . | stack | stack |
| [HBASE-1145](https://issues.apache.org/jira/browse/HBASE-1145) | Ensure that there is only 1 Master with Zookeeper (part of HA Master) |  Major | . | Jean-Daniel Cryans | Nitay Joffe |
| [HBASE-1289](https://issues.apache.org/jira/browse/HBASE-1289) | Remove "hbase.fully.distributed" option and update docs |  Major | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1292](https://issues.apache.org/jira/browse/HBASE-1292) | php thrift's getRow() would throw an exception if the row does not exist |  Minor | Thrift | Rong-En Fan | Rong-En Fan |
| [HBASE-1348](https://issues.apache.org/jira/browse/HBASE-1348) | Move 0.20.0 targeted TRUNK to 0.20.0 hadoop |  Blocker | . | stack | ryan rawson |
| [HBASE-1342](https://issues.apache.org/jira/browse/HBASE-1342) | Add to filesystem info needed to rebuild .META. |  Major | . | stack |  |
| [HBASE-1361](https://issues.apache.org/jira/browse/HBASE-1361) | Disable bloom filters |  Major | . | Andrew Purtell | stack |
| [HBASE-1367](https://issues.apache.org/jira/browse/HBASE-1367) | get rid of thrift exception 'NotFound' |  Major | . | ryan rawson | Andrew Purtell |
| [HBASE-1264](https://issues.apache.org/jira/browse/HBASE-1264) | Wrong return values of comparators for ColumnValueFilter |  Minor | Filters | Thomas Schneider | Clint Morgan |
| [HBASE-1454](https://issues.apache.org/jira/browse/HBASE-1454) | HBaseAdmin.getClusterStatus |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1357](https://issues.apache.org/jira/browse/HBASE-1357) | If one sets the hbase.master to 0.0.0.0 non local regionservers can't find the master |  Major | master, regionserver | Alex Newman | Jean-Daniel Cryans |
| [HBASE-1460](https://issues.apache.org/jira/browse/HBASE-1460) | Concurrent LRU Block Cache |  Major | io | Jonathan Gray | Jonathan Gray |
| [HBASE-1586](https://issues.apache.org/jira/browse/HBASE-1586) | Bring back transactions and indexing for 0.20 |  Major | Client, regionserver | Clint Morgan | Clint Morgan |
| [HBASE-1582](https://issues.apache.org/jira/browse/HBASE-1582) | Translate ColumnValueFilter and RowFilterSet to the new Filter interface |  Major | Filters | Clint Morgan |  |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1089](https://issues.apache.org/jira/browse/HBASE-1089) | Add count of regions on filesystem to master UI; add percentage online as difference between whats open and whats on filesystem |  Major | . | stack | Sijie Guo |
| [HBASE-1130](https://issues.apache.org/jira/browse/HBASE-1130) | PrefixRowFilter |  Minor | Filters | Michael Gottesman | Michael Gottesman |
| [HBASE-1189](https://issues.apache.org/jira/browse/HBASE-1189) | Changing the map type used internally  for HbaseMapWritable. |  Minor | io | Erik Holstad | Erik Holstad |
| [HBASE-803](https://issues.apache.org/jira/browse/HBASE-803) | Atomic increment operations |  Minor | Client, IPC/RPC, regionserver | Jonathan Gray | ryan rawson |
| [HBASE-1285](https://issues.apache.org/jira/browse/HBASE-1285) | Forcing compactions should be available via thrift. |  Minor | . | Tim Sell | Tim Sell |
| [HBASE-1186](https://issues.apache.org/jira/browse/HBASE-1186) | Memory-aware Maps with LRU eviction for Cell Cache |  Critical | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1350](https://issues.apache.org/jira/browse/HBASE-1350) | New method in HTable.java to return start and end keys for regions in a table |  Major | master | Vimal Mathew |  |
| [HBASE-1341](https://issues.apache.org/jira/browse/HBASE-1341) | Create HTable Pooler |  Minor | Client, io | Jonathan Gray | Andrew Purtell |
| [HBASE-1286](https://issues.apache.org/jira/browse/HBASE-1286) | Thrift should support next(nbRow) like functionality |  Major | . | Alex Newman | Alex Newman |
| [HBASE-1126](https://issues.apache.org/jira/browse/HBASE-1126) | Enable choice of codec; i.e. at a minimum enable LZO COMPRESSION support |  Major | . | Alex Newman |  |
| [HBASE-1192](https://issues.apache.org/jira/browse/HBASE-1192) | LRU-style map for the block cache |  Blocker | regionserver | Jonathan Gray | ryan rawson |
| [HBASE-1448](https://issues.apache.org/jira/browse/HBASE-1448) | Add a node in ZK to tell all masters to shutdown. |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-52](https://issues.apache.org/jira/browse/HBASE-52) | [hbase] Add a means of scanning over all versions |  Minor | Client | stack | Jonathan Gray |
| [HBASE-1329](https://issues.apache.org/jira/browse/HBASE-1329) | Visibility into ZooKeeper |  Blocker | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1535](https://issues.apache.org/jira/browse/HBASE-1535) | Add client ability to perform mutations without the WAL |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1532](https://issues.apache.org/jira/browse/HBASE-1532) | UI Visibility into ZooKeeper |  Major | . | Nitay Joffe | stack |
| [HBASE-1218](https://issues.apache.org/jira/browse/HBASE-1218) | Implement in-memory column |  Major | . | stack | Jonathan Gray |
| [HBASE-1662](https://issues.apache.org/jira/browse/HBASE-1662) | Tool to run major compaction on catalog regions when hbase is shutdown |  Major | . | stack |  |
| [HBASE-1579](https://issues.apache.org/jira/browse/HBASE-1579) | Document Master failover on the web site |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1588](https://issues.apache.org/jira/browse/HBASE-1588) | Rig our build to support our new contribs -- stargate and THBase/ITHBase |  Major | . | stack | stack |
| [HBASE-786](https://issues.apache.org/jira/browse/HBASE-786) | Subclass of TableMap which accepts a date range to be applied to timestamps |  Minor | . | Adam Gerber |  |
| [HBASE-1710](https://issues.apache.org/jira/browse/HBASE-1710) | Add Regular Expression filters back into 0.20, add ability to match on KV |  Major | Filters | Jonathan Gray | Jonathan Gray |
| [HBASE-1807](https://issues.apache.org/jira/browse/HBASE-1807) | KeyFilter for filtering based on comparsions of row, column, and qualifiers of KeyValues |  Minor | . | Andrew Purtell | Jonathan Gray |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-789](https://issues.apache.org/jira/browse/HBASE-789) | add clover coverage report targets |  Minor | build | Rong-En Fan |  |
| [HBASE-896](https://issues.apache.org/jira/browse/HBASE-896) | Update jruby from 1.1.2 to 1.1.4. |  Major | . | stack | stack |
| [HBASE-1064](https://issues.apache.org/jira/browse/HBASE-1064) | HBase REST xml/json improvements |  Major | REST | Brian Beggs |  |
| [HBASE-1138](https://issues.apache.org/jira/browse/HBASE-1138) | Make HLog block size configurable |  Major | master, regionserver, test | Jim Kellerman | Jim Kellerman |
| [HBASE-845](https://issues.apache.org/jira/browse/HBASE-845) | HCM.isTableEnabled doesn't really tell if it is, or not |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-1178](https://issues.apache.org/jira/browse/HBASE-1178) | Add shutdown command to shell |  Trivial | . | Andrew Purtell |  |
| [HBASE-1184](https://issues.apache.org/jira/browse/HBASE-1184) | HColumnDescriptor is a little too restrictive with family names |  Minor | . | Toby White | Andrew Purtell |
| [HBASE-1180](https://issues.apache.org/jira/browse/HBASE-1180) | Adding missing import statement from example and Removing some @Override attributes. |  Minor | master | Ryan Smith | Andrew Purtell |
| [HBASE-1210](https://issues.apache.org/jira/browse/HBASE-1210) | Allow truncation of output for scan and get commands in shell |  Trivial | . | Lars George | Lars George |
| [HBASE-1221](https://issues.apache.org/jira/browse/HBASE-1221) | When using ant -projecthelp to build HBase not all the important options show up. |  Trivial | . | Erik Holstad | Erik Holstad |
| [HBASE-1188](https://issues.apache.org/jira/browse/HBASE-1188) | Memory size of Java Objects - Make cacheable objects implement HeapSize |  Critical | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1230](https://issues.apache.org/jira/browse/HBASE-1230) | Document installation of HBase on Windows |  Minor | documentation | Jim Kellerman | Jim Kellerman |
| [HBASE-1233](https://issues.apache.org/jira/browse/HBASE-1233) | Transactional fixes: Overly conservative scan read-set, potential CME |  Major | regionserver | Clint Morgan | Clint Morgan |
| [HBASE-1231](https://issues.apache.org/jira/browse/HBASE-1231) | Today, going from a RowResult to a BatchUpdate reqiures some data processing even though they are pretty much the same thing. |  Trivial | . | Erik Holstad | Erik Holstad |
| [HBASE-1252](https://issues.apache.org/jira/browse/HBASE-1252) | Make atomic increment perform a binary increment |  Minor | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1240](https://issues.apache.org/jira/browse/HBASE-1240) | Would be nice if RowResult could be comparable. |  Trivial | io | Erik Holstad | Erik Holstad |
| [HBASE-1265](https://issues.apache.org/jira/browse/HBASE-1265) | HLogEdit static constants should be final. |  Trivial | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1244](https://issues.apache.org/jira/browse/HBASE-1244) | ZooKeeperWrapper constants cleanup |  Trivial | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1262](https://issues.apache.org/jira/browse/HBASE-1262) | Eclipse warnings, including performance related things like synthetic accessors. |  Trivial | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1273](https://issues.apache.org/jira/browse/HBASE-1273) | ZooKeeper WARN spits out lots of useless messages |  Trivial | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1283](https://issues.apache.org/jira/browse/HBASE-1283) | thrift's package descrpition needs to update for start/stop procedure |  Minor | documentation | Rong-En Fan | Rong-En Fan |
| [HBASE-546](https://issues.apache.org/jira/browse/HBASE-546) | Use Zookeeper in HBase |  Critical | . | Bryan Duxbury | Jean-Daniel Cryans |
| [HBASE-1205](https://issues.apache.org/jira/browse/HBASE-1205) | RegionServers should find new master when a new master comes up. |  Major | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1234](https://issues.apache.org/jira/browse/HBASE-1234) | Change HBase StoreKey format |  Major | . | stack | stack |
| [HBASE-1331](https://issues.apache.org/jira/browse/HBASE-1331) | Lower the default scanner caching value |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1235](https://issues.apache.org/jira/browse/HBASE-1235) | Add table enabled status to shell and UI |  Trivial | master | Lars George | Lars George |
| [HBASE-1195](https://issues.apache.org/jira/browse/HBASE-1195) | If HBase directory exists but version file is inexistent, still proceed with bootstrapping |  Minor | master | Jean-Daniel Cryans | Evgeny Ryabitskiy |
| [HBASE-1176](https://issues.apache.org/jira/browse/HBASE-1176) | Javadocs in HBA should be clear about which functions are asynchronous and which are synchronous |  Minor | Client | Jonathan Gray | Evgeny Ryabitskiy |
| [HBASE-1260](https://issues.apache.org/jira/browse/HBASE-1260) | Bytes utility class changes: remove usage of ByteBuffer and provide additional ByteBuffer primitives |  Major | util | Jonathan Gray | Jonathan Gray |
| [HBASE-1183](https://issues.apache.org/jira/browse/HBASE-1183) | New MR splitting algorithm and other new features need a way to split a key range in N chunks |  Minor | util | Jonathan Gray | Jonathan Gray |
| [HBASE-1271](https://issues.apache.org/jira/browse/HBASE-1271) | Allow multiple tests to run on one machine |  Minor | test | Nitay Joffe | Evgeny Ryabitskiy |
| [HBASE-1347](https://issues.apache.org/jira/browse/HBASE-1347) | HTable.incrementColumnValue does not take negative 'amount' |  Minor | Client | atppp | Evgeny Ryabitskiy |
| [HBASE-1393](https://issues.apache.org/jira/browse/HBASE-1393) | Narrow synchronization in HLog |  Major | . | stack | stack |
| [HBASE-1404](https://issues.apache.org/jira/browse/HBASE-1404) | minor edit of regionserver logging messages |  Trivial | . | stack | stack |
| [HBASE-1405](https://issues.apache.org/jira/browse/HBASE-1405) | Threads.shutdown has unnecessary branch |  Minor | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1407](https://issues.apache.org/jira/browse/HBASE-1407) | Changing internal structure of ImmutableBytesWritable contructor. |  Major | io | Erik Holstad | Erik Holstad |
| [HBASE-1345](https://issues.apache.org/jira/browse/HBASE-1345) | Remove distributed mode from MiniZooKeeper |  Minor | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1414](https://issues.apache.org/jira/browse/HBASE-1414) | add server status logging chore to ServerManager |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1412](https://issues.apache.org/jira/browse/HBASE-1412) | Change values for delete column and column family in KeyValue. |  Major | . | stack |  |
| [HBASE-1379](https://issues.apache.org/jira/browse/HBASE-1379) | Make KeyValue implement Writable |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1380](https://issues.apache.org/jira/browse/HBASE-1380) | Make KeyValue implement HeapSize |  Major | . | Jonathan Gray |  |
| [HBASE-1411](https://issues.apache.org/jira/browse/HBASE-1411) | remove HLogEdit |  Major | . | Andrew Purtell | stack |
| [HBASE-1424](https://issues.apache.org/jira/browse/HBASE-1424) | have shell print regioninfo and location on first load if DEBUG enabled |  Major | . | stack | stack |
| [HBASE-1008](https://issues.apache.org/jira/browse/HBASE-1008) | [performance] The replay of logs on server crash takes way too long |  Blocker | . | stack | Jean-Daniel Cryans |
| [HBASE-1429](https://issues.apache.org/jira/browse/HBASE-1429) | allow passing of a configuration object to HTablePool |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1420](https://issues.apache.org/jira/browse/HBASE-1420) | add abliity to add and remove (table) indexes on existing tables |  Major | Client, regionserver | Clint Morgan | Clint Morgan |
| [HBASE-1430](https://issues.apache.org/jira/browse/HBASE-1430) | Read the logs in batches during log splitting to avoid OOME |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1017](https://issues.apache.org/jira/browse/HBASE-1017) | Region balancing does not bring newly added node within acceptable range |  Minor | . | Jonathan Gray | Evgeny Ryabitskiy |
| [HBASE-1302](https://issues.apache.org/jira/browse/HBASE-1302) | When a new master comes up, regionservers should continue with their region assignments from the last master |  Major | master, regionserver | Nitay Joffe | Jean-Daniel Cryans |
| [HBASE-1236](https://issues.apache.org/jira/browse/HBASE-1236) | Improve readability of table descriptions in the UI |  Trivial | master | Lars George | Lars George |
| [HBASE-1445](https://issues.apache.org/jira/browse/HBASE-1445) | Add the ability to start a master from any machine |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1474](https://issues.apache.org/jira/browse/HBASE-1474) | Add zk attributes to list of attributes in master and regionserver UIs |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-1478](https://issues.apache.org/jira/browse/HBASE-1478) | Remove hbase master options from shell |  Minor | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1449](https://issues.apache.org/jira/browse/HBASE-1449) | Update to latest ZooKeeper trunk |  Major | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1304](https://issues.apache.org/jira/browse/HBASE-1304) | New client server implementation of how gets and puts are handled. |  Blocker | . | Erik Holstad | Jonathan Gray |
| [HBASE-1493](https://issues.apache.org/jira/browse/HBASE-1493) | New TableMapReduceUtil methods should be static |  Trivial | . | Billy Pearson | Billy Pearson |
| [HBASE-1014](https://issues.apache.org/jira/browse/HBASE-1014) | commit(BatchUpdate)  method should return timestamp |  Major | . | Slava | Jonathan Gray |
| [HBASE-1410](https://issues.apache.org/jira/browse/HBASE-1410) | compactions are not memory efficient |  Major | . | Andrew Purtell |  |
| [HBASE-1490](https://issues.apache.org/jira/browse/HBASE-1490) | Update ZooKeeper library |  Minor | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1489](https://issues.apache.org/jira/browse/HBASE-1489) | Basic git ignores for people who use git and eclipse |  Trivial | build | Nitay Joffe | Nitay Joffe |
| [HBASE-1499](https://issues.apache.org/jira/browse/HBASE-1499) | Fix javadoc warnings |  Major | . | Lars George | Lars George |
| [HBASE-1131](https://issues.apache.org/jira/browse/HBASE-1131) | Support for binary data (keys+values) in UI and on shell |  Major | . | stack | Lars George |
| [HBASE-1509](https://issues.apache.org/jira/browse/HBASE-1509) | Add explanation to shell "help" command on how to use binary keys |  Trivial | . | Lars George | Lars George |
| [HBASE-1507](https://issues.apache.org/jira/browse/HBASE-1507) | iCMS as default JVM |  Major | . | stack | stack |
| [HBASE-1514](https://issues.apache.org/jira/browse/HBASE-1514) | hfile inspection tool |  Major | . | stack | ryan rawson |
| [HBASE-1538](https://issues.apache.org/jira/browse/HBASE-1538) | Up zookeeper timeout from 10 seconds to 30 seconds to cut down on hbase-user traffic |  Major | . | stack |  |
| [HBASE-1539](https://issues.apache.org/jira/browse/HBASE-1539) | prevent aborts due to missing zoo.cfg |  Minor | . | Andrew Purtell |  |
| [HBASE-1544](https://issues.apache.org/jira/browse/HBASE-1544) | Cleanup HTable |  Major | Client | Jonathan Gray | Jonathan Gray |
| [HBASE-1552](https://issues.apache.org/jira/browse/HBASE-1552) | provide version running on cluster via HBaseAdmin.getClusterStatus() |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1550](https://issues.apache.org/jira/browse/HBASE-1550) | hbase-daemon.sh stop should provide more information when stop command fails |  Trivial | scripts | Nitay Joffe | Nitay Joffe |
| [HBASE-1515](https://issues.apache.org/jira/browse/HBASE-1515) | Address part of config option hbase.regionserver unnecessary |  Minor | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1578](https://issues.apache.org/jira/browse/HBASE-1578) | Change the name of the in-memory updates from 'memcache' to 'memtable' or.... |  Major | . | stack |  |
| [HBASE-1584](https://issues.apache.org/jira/browse/HBASE-1584) | Put add methods should return this for ease of use (Be consistant with Get) |  Trivial | Client | Clint Morgan | Clint Morgan |
| [HBASE-1585](https://issues.apache.org/jira/browse/HBASE-1585) | More binary key/value log output cleanup |  Trivial | Client | Lars George | Lars George |
| [HBASE-1577](https://issues.apache.org/jira/browse/HBASE-1577) | Move memcache to ConcurrentSkipListMap from ConcurrentSkipListSet |  Major | . | stack | stack |
| [HBASE-1450](https://issues.apache.org/jira/browse/HBASE-1450) | Scripts passed to hbase shell do not have shell context set up for them |  Major | . | stack | stack |
| [HBASE-1587](https://issues.apache.org/jira/browse/HBASE-1587) | Update ganglia config and doc to account for ganglia 3.1 and hadoop-4675 |  Major | . | stack | stack |
| [HBASE-1589](https://issues.apache.org/jira/browse/HBASE-1589) | Up zk maxClientCnxns from default of 10 to 20 or 30 or so |  Major | . | stack | stack |
| [HBASE-1624](https://issues.apache.org/jira/browse/HBASE-1624) | Don't sort Puts if only one in list in HCM#processBatchOfRows |  Major | . | stack |  |
| [HBASE-1551](https://issues.apache.org/jira/browse/HBASE-1551) | HBase should manage multiple node ZooKeeper quorum |  Major | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1637](https://issues.apache.org/jira/browse/HBASE-1637) | Delete client class methods should return itself like Put, Get, Scan |  Major | Client | Jonathan Gray | Jonathan Gray |
| [HBASE-1630](https://issues.apache.org/jira/browse/HBASE-1630) | Provide sample config options to enable GC debugging |  Minor | scripts | Nitay Joffe | Nitay Joffe |
| [HBASE-1632](https://issues.apache.org/jira/browse/HBASE-1632) | Write documentation for configuring/managing ZooKeeper with HBase |  Major | documentation | Nitay Joffe | Nitay Joffe |
| [HBASE-1665](https://issues.apache.org/jira/browse/HBASE-1665) | expose more load information to the client side |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1609](https://issues.apache.org/jira/browse/HBASE-1609) | [part of hbase-1583] We wait on leases to expire before regionserver goes down.  Rather, just let client fail |  Major | . | stack | stack |
| [HBASE-1655](https://issues.apache.org/jira/browse/HBASE-1655) | Usability improvements to HTablePool |  Major | Client | Ken Weiner | Ken Weiner |
| [HBASE-1688](https://issues.apache.org/jira/browse/HBASE-1688) | Improve javadocs in Result and KeyValue |  Major | Client | Jonathan Gray | Jonathan Gray |
| [HBASE-1694](https://issues.apache.org/jira/browse/HBASE-1694) | Add TOC to 'Getting Started', add references to THBase and ITHBase |  Major | . | stack | stack |
| [HBASE-1719](https://issues.apache.org/jira/browse/HBASE-1719) | hold a reference to the HRegion in Store instead of only the HRegionInfo |  Minor | . | Andrew Purtell |  |
| [HBASE-1725](https://issues.apache.org/jira/browse/HBASE-1725) | Old TableMap interface's definitions are not generic enough |  Minor | . | Doğacan Güney |  |
| [HBASE-1760](https://issues.apache.org/jira/browse/HBASE-1760) | Cleanup TODOs in HTable |  Trivial | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1759](https://issues.apache.org/jira/browse/HBASE-1759) | Ability to specify scanner caching on a per-scan basis |  Major | Client | Ken Weiner | Ken Weiner |
| [HBASE-1763](https://issues.apache.org/jira/browse/HBASE-1763) | Put writeToWAL methods do not have proper getter/setter names |  Major | Client | Jonathan Gray | Jonathan Gray |
| [HBASE-1766](https://issues.apache.org/jira/browse/HBASE-1766) | Add advanced features to HFile.main() to be able to analyze storefile problems |  Minor | io | Lars George | Lars George |
| [HBASE-1770](https://issues.apache.org/jira/browse/HBASE-1770) | HTable.setWriteBufferSize does not flush the writeBuffer when its size is set to a value lower than its current size. |  Trivial | Client | Mathias Herberts | Mathias Herberts |
| [HBASE-1772](https://issues.apache.org/jira/browse/HBASE-1772) | Up the default ZK session timeout from 30seconds to 60seconds |  Major | . | stack | stack |
| [HBASE-1400](https://issues.apache.org/jira/browse/HBASE-1400) | Improve REST interface semantics and efficiency |  Minor | REST | Andrew Purtell |  |
| [HBASE-1050](https://issues.apache.org/jira/browse/HBASE-1050) | Allow regions to split around scanners |  Major | Client, regionserver | Andrew Purtell | stack |
| [HBASE-1698](https://issues.apache.org/jira/browse/HBASE-1698) | Review documentation for o.a.h.h.mapreduce |  Major | . | Jonathan Gray | stack |
| [HBASE-1800](https://issues.apache.org/jira/browse/HBASE-1800) | Too many ZK connections |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1024](https://issues.apache.org/jira/browse/HBASE-1024) | Rearchitect regionserver I/O |  Major | io, regionserver | Andrew Purtell |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1140](https://issues.apache.org/jira/browse/HBASE-1140) | "ant clean test" fails |  Trivial | build | Nitay Joffe | Nitay Joffe |
| [HBASE-1139](https://issues.apache.org/jira/browse/HBASE-1139) | Update Clover in build.xml |  Trivial | build | Nitay Joffe | Nitay Joffe |
| [HBASE-1136](https://issues.apache.org/jira/browse/HBASE-1136) | HashFunction inadvertently destroys some randomness |  Major | . | Jonathan Ellis |  |
| [HBASE-876](https://issues.apache.org/jira/browse/HBASE-876) | There are a large number of Java warnings in HBase |  Minor | . | Jim Kellerman | Evgeny Ryabitskiy |
| [HBASE-1148](https://issues.apache.org/jira/browse/HBASE-1148) | Always flush HLog on root or meta region updates |  Critical | regionserver | Jim Kellerman | Jim Kellerman |
| [HBASE-1121](https://issues.apache.org/jira/browse/HBASE-1121) | Cluster confused about where -ROOT- is |  Major | . | stack | Jim Kellerman |
| [HBASE-1129](https://issues.apache.org/jira/browse/HBASE-1129) | Master won't go down; stuck joined on rootScanner |  Major | . | stack | Jim Kellerman |
| [HBASE-1152](https://issues.apache.org/jira/browse/HBASE-1152) | Fix shell usage for format.width |  Major | . | stack | stack |
| [HBASE-1166](https://issues.apache.org/jira/browse/HBASE-1166) | saveVersion.sh doesn't work with git |  Trivial | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1167](https://issues.apache.org/jira/browse/HBASE-1167) | JSP doesn't work in a git checkout |  Major | . | Nitay Joffe | Nitay Joffe |
| [HBASE-903](https://issues.apache.org/jira/browse/HBASE-903) | [shell] Can't set table descriptor attributes when I alter a table |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-1181](https://issues.apache.org/jira/browse/HBASE-1181) | src/saveVersion.sh bails on non-standard Bourne shells (e.g. dash) |  Trivial | . | K M | K M |
| [HBASE-1175](https://issues.apache.org/jira/browse/HBASE-1175) | HBA administrative tools do not work when specifying regionName |  Major | Client, master | Jonathan Gray | Jonathan Gray |
| [HBASE-1191](https://issues.apache.org/jira/browse/HBASE-1191) | ZooKeeper ensureParentExists calls fail on absolute path |  Major | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1187](https://issues.apache.org/jira/browse/HBASE-1187) | After disabling/enabling a table, the regions seems to be assigned to only 1-2 region servers |  Major | master | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1190](https://issues.apache.org/jira/browse/HBASE-1190) | TableInputFormatBase with row filters scan too far |  Minor | . | Dave Latham | Andrew Purtell |
| [HBASE-1194](https://issues.apache.org/jira/browse/HBASE-1194) | List of committers on Credits page is out of date |  Blocker | documentation | Jim Kellerman | stack |
| [HBASE-1196](https://issues.apache.org/jira/browse/HBASE-1196) | OOME in HRS IPC server causes infinite client stall |  Critical | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1223](https://issues.apache.org/jira/browse/HBASE-1223) | application/x-www-form-urlencoded is incorrectly handled in the REST interface |  Major | REST | Brian Beggs | Brian Beggs |
| [HBASE-1209](https://issues.apache.org/jira/browse/HBASE-1209) | Make port displayed the same as is used in URL for RegionServer table in UI |  Trivial | . | Lars George | Lars George |
| [HBASE-1118](https://issues.apache.org/jira/browse/HBASE-1118) | Scanner setup takes too long |  Critical | . | stack |  |
| [HBASE-1185](https://issues.apache.org/jira/browse/HBASE-1185) | wrong request/sec in the gui reporting wrong |  Minor | Client, regionserver | Billy Pearson | Jean-Daniel Cryans |
| [HBASE-1239](https://issues.apache.org/jira/browse/HBASE-1239) | input buffer reading in the REST interface does not correctly clear the character buffer each iteration |  Major | REST | Brian Beggs | Brian Beggs |
| [HBASE-1245](https://issues.apache.org/jira/browse/HBASE-1245) | hfile meta block handling bugs |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1238](https://issues.apache.org/jira/browse/HBASE-1238) | Under upload, region servers are unable to compact when loaded with hundreds of regions |  Blocker | regionserver | Jean-Daniel Cryans |  |
| [HBASE-1169](https://issues.apache.org/jira/browse/HBASE-1169) | When a shutdown is requested, stop scanning META regions immediately |  Critical | . | Jonathan Gray | Jim Kellerman |
| [HBASE-1220](https://issues.apache.org/jira/browse/HBASE-1220) | Don't reopen file if already open when updating readers underneath scanners |  Major | . | stack | stack |
| [HBASE-1251](https://issues.apache.org/jira/browse/HBASE-1251) | HConnectionManager.getConnection(HBaseConfiguration) returns same HConnection for different HBaseConfigurations |  Major | Client | Guilherme Mauro Germoglio Barbosa |  |
| [HBASE-1258](https://issues.apache.org/jira/browse/HBASE-1258) | ganglia metrics for 'requests' is confusing |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1259](https://issues.apache.org/jira/browse/HBASE-1259) | ganglia metrics should have a common prefix so we can group easier |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1267](https://issues.apache.org/jira/browse/HBASE-1267) | binary keys broken in trunk (again). |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1268](https://issues.apache.org/jira/browse/HBASE-1268) | ZooKeeper config parsing can break HBase startup |  Major | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1270](https://issues.apache.org/jira/browse/HBASE-1270) | Fix TestInfoServers |  Minor | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1277](https://issues.apache.org/jira/browse/HBASE-1277) | HStoreKey: Wrong comparator logic |  Major | build, regionserver | Evgeny Ryabitskiy | Evgeny Ryabitskiy |
| [HBASE-1275](https://issues.apache.org/jira/browse/HBASE-1275) | TestTable.testCreateTable broken |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1274](https://issues.apache.org/jira/browse/HBASE-1274) | TestMergeTable is broken in Hudson |  Minor | test | Nitay Joffe | Nitay Joffe |
| [HBASE-1284](https://issues.apache.org/jira/browse/HBASE-1284) | drop table drops all disabled tables |  Major | . | Andrew Purtell | stack |
| [HBASE-1282](https://issues.apache.org/jira/browse/HBASE-1282) | TestThriftServer is failing on TRUNK |  Major | Thrift | Andrew Purtell |  |
| [HBASE-1290](https://issues.apache.org/jira/browse/HBASE-1290) | table.jsp either 500s out or doesnt list the regions |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1157](https://issues.apache.org/jira/browse/HBASE-1157) | If we do not take start code as a part of region server recovery, we could inadvertantly try to reassign regions assigned to a restarted server with a different start code |  Major | master, regionserver | Jim Kellerman | Jim Kellerman |
| [HBASE-1293](https://issues.apache.org/jira/browse/HBASE-1293) | hfile doesn't recycle decompressors |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1232](https://issues.apache.org/jira/browse/HBASE-1232) | zookeeper client wont reconnect if there is a problem |  Critical | . | ryan rawson | Nitay Joffe |
| [HBASE-1303](https://issues.apache.org/jira/browse/HBASE-1303) | Secondary index configuration prevents HBase from starting |  Major | regionserver | Ken Weiner |  |
| [HBASE-1298](https://issues.apache.org/jira/browse/HBASE-1298) | master.jsp & table.jsp do not URI Encode table or region names in links |  Major | . | Hoss Man | Lars George |
| [HBASE-1310](https://issues.apache.org/jira/browse/HBASE-1310) | off by one error in Bytes.vintToBytes |  Major | . | Andrew Purtell |  |
| [HBASE-1309](https://issues.apache.org/jira/browse/HBASE-1309) | HFile rejects key in Memcache with empty value |  Major | . | Andrew Purtell |  |
| [HBASE-1202](https://issues.apache.org/jira/browse/HBASE-1202) | getRow does not always work when specifying number of versions |  Major | regionserver | Jim Kellerman | Jim Kellerman |
| [HBASE-1324](https://issues.apache.org/jira/browse/HBASE-1324) | hbase-1234 broke testget2 unit test (and broke the build) |  Major | . | stack | stack |
| [HBASE-1321](https://issues.apache.org/jira/browse/HBASE-1321) | hbase-1234 broke TestCompaction; fix and reenable |  Blocker | . | stack | stack |
| [HBASE-1330](https://issues.apache.org/jira/browse/HBASE-1330) | binary keys broken on trunk |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1332](https://issues.apache.org/jira/browse/HBASE-1332) | regionserver carrying .META. starts sucking all cpu, drives load up - infinite loop? |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1334](https://issues.apache.org/jira/browse/HBASE-1334) | .META. region running into hfile errors |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1338](https://issues.apache.org/jira/browse/HBASE-1338) | HBASE-1234 lost use of compaction.dir; we were compacting into live store subdirectory |  Major | . | stack |  |
| [HBASE-1333](https://issues.apache.org/jira/browse/HBASE-1333) | RowCounter updates |  Major | . | stack | stack |
| [HBASE-1301](https://issues.apache.org/jira/browse/HBASE-1301) | HTable.getRow() returns null if the row does no exist |  Minor | Client, documentation | Rong-En Fan | Rong-En Fan |
| [HBASE-1340](https://issues.apache.org/jira/browse/HBASE-1340) | Fix new javadoc warnings |  Major | . | stack | Evgeny Ryabitskiy |
| [HBASE-1287](https://issues.apache.org/jira/browse/HBASE-1287) | Partitioner class not used in TableMapReduceUtil.initTableReduceJob() |  Major | . | Lars George | Billy Pearson |
| [HBASE-1320](https://issues.apache.org/jira/browse/HBASE-1320) | hbase-1234 broke filter tests |  Blocker | . | stack |  |
| [HBASE-1355](https://issues.apache.org/jira/browse/HBASE-1355) | [performance] Cache family maxversions; we were calculating on each access |  Major | . | stack | stack |
| [HBASE-1358](https://issues.apache.org/jira/browse/HBASE-1358) | Bug in reading from Memcache method (read only from snapshot) |  Major | . | Evgeny Ryabitskiy | Evgeny Ryabitskiy |
| [HBASE-1112](https://issues.apache.org/jira/browse/HBASE-1112) | we will lose data if the table name happens to be the logs' dir name |  Minor | . | Sijie Guo |  |
| [HBASE-1322](https://issues.apache.org/jira/browse/HBASE-1322) | hbase-1234 broke TestAtomicIncrement; fix and reenable |  Blocker | . | stack | Evgeny Ryabitskiy |
| [HBASE-1365](https://issues.apache.org/jira/browse/HBASE-1365) | Typo in TableInputFormatBase.setInputColums |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1366](https://issues.apache.org/jira/browse/HBASE-1366) | HBASE-1342 broke splitting (broke build) |  Major | . | stack | stack |
| [HBASE-1318](https://issues.apache.org/jira/browse/HBASE-1318) | Thrift server doesnt know about atomicIncrement |  Major | . | ryan rawson | Tim Sell |
| [HBASE-1279](https://issues.apache.org/jira/browse/HBASE-1279) | Fix the way hostnames and IPs are handled |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1368](https://issues.apache.org/jira/browse/HBASE-1368) | HBASE-1279 broke the build |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-889](https://issues.apache.org/jira/browse/HBASE-889) | The current Thrift API does not allow a new scanner to be created without supplying a column list unlike the other APIs. |  Major | Thrift | Charlie Mason | Tim Sell |
| [HBASE-1374](https://issues.apache.org/jira/browse/HBASE-1374) | NPE out of hbase.zookeeper.ZooKeeperWrapper.loadZooKeeperConfig |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1336](https://issues.apache.org/jira/browse/HBASE-1336) | Splitting up the compare of family+column into 2 different compares |  Major | . | Erik Holstad |  |
| [HBASE-1377](https://issues.apache.org/jira/browse/HBASE-1377) | RS address is null in master web UI |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1370](https://issues.apache.org/jira/browse/HBASE-1370) | re-enable LZO using hadoop-gpl-compression library |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1383](https://issues.apache.org/jira/browse/HBASE-1383) | hbase shell needs to warn on deleting multi-region table |  Major | . | ryan rawson | stack |
| [HBASE-1392](https://issues.apache.org/jira/browse/HBASE-1392) | change how we build/configure lzocodec |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1396](https://issues.apache.org/jira/browse/HBASE-1396) | Remove unused sequencefile and mapfile config. from hbase-default.xml |  Major | . | stack | stack |
| [HBASE-1397](https://issues.apache.org/jira/browse/HBASE-1397) | Better distribution in the PerformanceEvaluation MapReduce when rows run to the Billions |  Major | . | stack | stack |
| [HBASE-1344](https://issues.apache.org/jira/browse/HBASE-1344) | WARN IllegalStateException: Cannot set a region as open if it has not been pending |  Major | . | stack | stack |
| [HBASE-1398](https://issues.apache.org/jira/browse/HBASE-1398) | TableOperation doesnt format keys for meta scan properly |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1399](https://issues.apache.org/jira/browse/HBASE-1399) | cant delete tables since  1398 |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1311](https://issues.apache.org/jira/browse/HBASE-1311) | ZooKeeperWrapper: Failed to set watcher on ZNode /hbase/master |  Blocker | . | Andrew Purtell | Nitay Joffe |
| [HBASE-1391](https://issues.apache.org/jira/browse/HBASE-1391) | NPE in TableInputFormatBase$TableRecordReader.restart if zoo.cfg is wrong on tasktrackers |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1323](https://issues.apache.org/jira/browse/HBASE-1323) | hbase-1234 broke TestThriftServer; fix and reenable |  Blocker | . | stack | stack |
| [HBASE-1417](https://issues.apache.org/jira/browse/HBASE-1417) | Cleanup disorientating RPC message |  Major | . | stack |  |
| [HBASE-1425](https://issues.apache.org/jira/browse/HBASE-1425) | ColumnValueFilter and WhileMatchFilter fixes on trunk |  Major | Filters | Clint Morgan |  |
| [HBASE-1394](https://issues.apache.org/jira/browse/HBASE-1394) | Uploads sometimes fall to 0 requests/second (Binding up on HLog#append?) |  Critical | . | stack |  |
| [HBASE-1431](https://issues.apache.org/jira/browse/HBASE-1431) | NPE in HTable.checkAndSave when row doesn't exist |  Trivial | regionserver | Guilherme Mauro Germoglio Barbosa | Guilherme Mauro Germoglio Barbosa |
| [HBASE-1401](https://issues.apache.org/jira/browse/HBASE-1401) | close HLog (and open new one) if there hasnt been edits in N minutes/hours |  Blocker | . | ryan rawson | stack |
| [HBASE-1421](https://issues.apache.org/jira/browse/HBASE-1421) | Processing a regionserver message -- OPEN, CLOSE, SPLIT, etc. -- and if we're carrying more than one message in payload, if exception, all messages that follow are dropped on floor |  Blocker | . | stack | stack |
| [HBASE-1386](https://issues.apache.org/jira/browse/HBASE-1386) | NPE in housekeeping |  Major | . | stack | stack |
| [HBASE-1434](https://issues.apache.org/jira/browse/HBASE-1434) | Duplicate property in hbase-default.xml |  Trivial | regionserver | Lars George |  |
| [HBASE-1438](https://issues.apache.org/jira/browse/HBASE-1438) | HBASE-1421 broke the build (#602 up on hudson). |  Major | . | stack |  |
| [HBASE-1440](https://issues.apache.org/jira/browse/HBASE-1440) | master won't go down because joined on a rootscanner that is waiting for ever |  Major | . | stack | stack |
| [HBASE-1441](https://issues.apache.org/jira/browse/HBASE-1441) | NPE in ProcessRegionStatusChange#getMetaRegion |  Major | . | stack | stack |
| [HBASE-1162](https://issues.apache.org/jira/browse/HBASE-1162) | CME in Master in RegionManager.applyActions |  Major | master | Andrew Purtell |  |
| [HBASE-1010](https://issues.apache.org/jira/browse/HBASE-1010) | IOE on regionserver shutdown because hadn't opened an HLog. |  Minor | . | stack |  |
| [HBASE-1415](https://issues.apache.org/jira/browse/HBASE-1415) | Stuck on memcache flush |  Major | . | stack | Andrew Purtell |
| [HBASE-1257](https://issues.apache.org/jira/browse/HBASE-1257) | base64 encoded values are not contained in quotes during the HBase REST JSON serialization |  Major | REST | Brian Beggs | Brian Beggs |
| [HBASE-1436](https://issues.apache.org/jira/browse/HBASE-1436) | Killing regionserver can make corrupted hfile |  Major | . | stack |  |
| [HBASE-1272](https://issues.apache.org/jira/browse/HBASE-1272) | Unreadable log messages -- "... to the only server localhost\_1237525439599\_56094" \<- You'd have to be perverse to recognize that as a hostname, startcode, and port number. |  Blocker | . | stack |  |
| [HBASE-1395](https://issues.apache.org/jira/browse/HBASE-1395) | InfoServers no longer put up a UI |  Major | . | Andrew Purtell | stack |
| [HBASE-1226](https://issues.apache.org/jira/browse/HBASE-1226) | In zookeeper.sh, '$zookeeper' is not defined; cmd-line shows " : starting zookeeper"; i.e. a leading ' :' |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-1351](https://issues.apache.org/jira/browse/HBASE-1351) | need to be able to rolling restart hbase |  Major | . | ryan rawson | stack |
| [HBASE-1455](https://issues.apache.org/jira/browse/HBASE-1455) | Update DemoClient.py for thrift 1.0 |  Major | Thrift | Tim Sell |  |
| [HBASE-1464](https://issues.apache.org/jira/browse/HBASE-1464) | Add hbase.regionserver.logroll.period to hbase-default |  Major | . | stack |  |
| [HBASE-1390](https://issues.apache.org/jira/browse/HBASE-1390) | RegionHistorian.getRegionHistory was changed to take String instead of byte[] |  Major | . | ryan rawson |  |
| [HBASE-1471](https://issues.apache.org/jira/browse/HBASE-1471) | During cluster shutdown, deleting zookeeper regionserver nodes causes exceptions |  Blocker | . | Jonathan Gray | Jean-Daniel Cryans |
| [HBASE-1462](https://issues.apache.org/jira/browse/HBASE-1462) | hclient still seems to depend on master |  Major | . | ryan rawson | Jean-Daniel Cryans |
| [HBASE-1143](https://issues.apache.org/jira/browse/HBASE-1143) | region count erratic in master UI (kill server hosting root or meta and see how count goes awry).... make sure you have a bunch of reions in there |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-861](https://issues.apache.org/jira/browse/HBASE-861) | get with timestamp will return a value if there is a version with an earlier timestamp |  Critical | . | Jim Kellerman | Jonathan Gray |
| [HBASE-1486](https://issues.apache.org/jira/browse/HBASE-1486) | BLOCKCACHE always on even when disabled |  Major | . | stack | Lars George |
| [HBASE-1491](https://issues.apache.org/jira/browse/HBASE-1491) | ZooKeeper errors: "Client has seen zxid 0xe our last zxid is 0xd" |  Major | test | Nitay Joffe | Nitay Joffe |
| [HBASE-1466](https://issues.apache.org/jira/browse/HBASE-1466) | Binary keys are not first class citizens |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1315](https://issues.apache.org/jira/browse/HBASE-1315) | when HRS znode expires while HRS is still running, HRS enters infinite loop |  Blocker | . | Andrew Purtell |  |
| [HBASE-1504](https://issues.apache.org/jira/browse/HBASE-1504) | Remove left-over debug from 1304 commit. |  Major | . | stack |  |
| [HBASE-1518](https://issues.apache.org/jira/browse/HBASE-1518) | Delete Trackers using compareRow, should just use raw binary comparator |  Critical | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1522](https://issues.apache.org/jira/browse/HBASE-1522) | We delete splits before their time occasionally |  Blocker | . | ryan rawson | ryan rawson |
| [HBASE-1520](https://issues.apache.org/jira/browse/HBASE-1520) | StoreFileScanner catches and ignore IOExceptions from HFile |  Major | . | ryan rawson |  |
| [HBASE-1516](https://issues.apache.org/jira/browse/HBASE-1516) | Investigate if StoreScanner will not return the next row if earlied-out of previous row |  Major | regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-1513](https://issues.apache.org/jira/browse/HBASE-1513) | Compactions too slow |  Blocker | regionserver | Billy Pearson | ryan rawson |
| [HBASE-1500](https://issues.apache.org/jira/browse/HBASE-1500) | KeyValue$KeyComparator array overrun |  Blocker | . | Andrew Purtell | ryan rawson |
| [HBASE-1495](https://issues.apache.org/jira/browse/HBASE-1495) | IllegalArgumentException in halfhfilereader#next |  Major | . | stack | stack |
| [HBASE-1525](https://issues.apache.org/jira/browse/HBASE-1525) | HTable.incrementColumnValue hangs() |  Major | regionserver | Irfan Mohammed |  |
| [HBASE-1523](https://issues.apache.org/jira/browse/HBASE-1523) | NPE in BaseScanner |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1503](https://issues.apache.org/jira/browse/HBASE-1503) | hbase-1304 dropped updating list of store files on flush |  Major | . | stack | stack |
| [HBASE-1480](https://issues.apache.org/jira/browse/HBASE-1480) | compaction file not cleaned up after a crash/OOME server |  Major | master, regionserver | Billy Pearson | Evgeny Ryabitskiy |
| [HBASE-1526](https://issues.apache.org/jira/browse/HBASE-1526) | mapreduce fixup |  Blocker | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1529](https://issues.apache.org/jira/browse/HBASE-1529) | familyMap not invalidated when Result is (re)read as a Writable |  Blocker | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1528](https://issues.apache.org/jira/browse/HBASE-1528) | Ensure scanners work across memcache snapshot |  Major | . | stack |  |
| [HBASE-1207](https://issues.apache.org/jira/browse/HBASE-1207) | Fix locking in memcache flush |  Major | . | Ben Maurer | Jonathan Gray |
| [HBASE-1206](https://issues.apache.org/jira/browse/HBASE-1206) | Scanner spins when there are concurrent inserts to column family |  Major | . | Ben Maurer |  |
| [HBASE-867](https://issues.apache.org/jira/browse/HBASE-867) | If millions of columns in a column family, hbase scanner won't come up |  Critical | . | stack | Jonathan Gray |
| [HBASE-1536](https://issues.apache.org/jira/browse/HBASE-1536) | Controlled crash of regionserver not hosting meta/root leaves master in spinning state, regions not reassigned |  Blocker | master | Jonathan Gray | ryan rawson |
| [HBASE-1541](https://issues.apache.org/jira/browse/HBASE-1541) | Scanning multiple column families in the presence of deleted families results in bad scans |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1543](https://issues.apache.org/jira/browse/HBASE-1543) | Unnecessary toString during scanning costs us some CPU |  Major | . | stack |  |
| [HBASE-1542](https://issues.apache.org/jira/browse/HBASE-1542) | Scan returns rows beyond the endRow when the column is specified |  Major | Client | Irfan Mohammed | ryan rawson |
| [HBASE-1488](https://issues.apache.org/jira/browse/HBASE-1488) | After 1304 goes in, fix and reenable test of thrift, mr indexer, and merge tool |  Major | . | stack |  |
| [HBASE-1531](https://issues.apache.org/jira/browse/HBASE-1531) | Change new Get to use new filter API |  Major | . | stack |  |
| [HBASE-1549](https://issues.apache.org/jira/browse/HBASE-1549) | in zookeeper.sh, use localhost instead of 127.0.0.1? |  Major | . | stack | stack |
| [HBASE-1545](https://issues.apache.org/jira/browse/HBASE-1545) | atomicIncrements creating new values with Long.MAX\_VALUE |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1547](https://issues.apache.org/jira/browse/HBASE-1547) | atomicIncrement doesnt increase hregion.memcacheSize |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1553](https://issues.apache.org/jira/browse/HBASE-1553) | ClassSize missing in trunk |  Critical | util | Jonathan Gray | Erik Holstad |
| [HBASE-1561](https://issues.apache.org/jira/browse/HBASE-1561) | HTable Mismatch between javadoc and what it actually does |  Major | . | ryan rawson |  |
| [HBASE-1558](https://issues.apache.org/jira/browse/HBASE-1558) | deletes use 'HConstants.LATEST\_TIMESTAMP' but no one translates that into 'now' |  Blocker | Client, regionserver | ryan rawson |  |
| [HBASE-1508](https://issues.apache.org/jira/browse/HBASE-1508) | Shell "close\_region" reveals a Master\<\>HRS problem, regions are not reassigned |  Blocker | master | Lars George | stack |
| [HBASE-1568](https://issues.apache.org/jira/browse/HBASE-1568) | Client doesnt consult old row filter interface in filterSaysStop() - could result in NPE or excessive scanning |  Blocker | Filters | ryan rawson | ryan rawson |
| [HBASE-1564](https://issues.apache.org/jira/browse/HBASE-1564) | in UI make host addresses all look the same -- not IP sometimes and host at others |  Major | . | stack | stack |
| [HBASE-1572](https://issues.apache.org/jira/browse/HBASE-1572) | Zookeeper log4j property set to ERROR on default, same output when cluster working and not working |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1567](https://issues.apache.org/jira/browse/HBASE-1567) | cant serialize new filters: |  Blocker | Filters | ryan rawson | ryan rawson |
| [HBASE-1576](https://issues.apache.org/jira/browse/HBASE-1576) | TIF needs to be able to set scanner caching size for smaller row tables & performance |  Critical | . | ryan rawson | Andrew Purtell |
| [HBASE-1562](https://issues.apache.org/jira/browse/HBASE-1562) | How to handle the setting of 32 bit versus 64 bit machines |  Major | . | Erik Holstad | Erik Holstad |
| [HBASE-1563](https://issues.apache.org/jira/browse/HBASE-1563) | incrementColumnValue does not write to WAL |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1581](https://issues.apache.org/jira/browse/HBASE-1581) | Run major compaction on .META. when table is dropped or truncated |  Major | . | stack |  |
| [HBASE-1566](https://issues.apache.org/jira/browse/HBASE-1566) | using Scan(startRow,stopRow) will cause you to iterate the entire table |  Blocker | . | ryan rawson | ryan rawson |
| [HBASE-1569](https://issues.apache.org/jira/browse/HBASE-1569) | rare race condition can take down a regionserver. |  Critical | . | ryan rawson | stack |
| [HBASE-1560](https://issues.apache.org/jira/browse/HBASE-1560) | TIF (and other clients?) cant seem to find one region (getClosestRowBefore issue?) |  Blocker | . | ryan rawson |  |
| [HBASE-1580](https://issues.apache.org/jira/browse/HBASE-1580) | Store scanner does not consult filter.filterRow at end of scan |  Major | regionserver | Clint Morgan |  |
| [HBASE-1437](https://issues.apache.org/jira/browse/HBASE-1437) | broken links in hbase.org |  Major | . | stack |  |
| [HBASE-1554](https://issues.apache.org/jira/browse/HBASE-1554) | TestHeapSize failing on Hudson |  Critical | . | Andrew Purtell | Jonathan Gray |
| [HBASE-1591](https://issues.apache.org/jira/browse/HBASE-1591) | HBASE-1554 broke org.apache.hadoop.hbase.io.hfile.TestLruBlockCache.testResizeBlockCache |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1385](https://issues.apache.org/jira/browse/HBASE-1385) | Revamp TableInputFormat, needs updating to match hadoop 0.20.x AND remove bit where we can make \< maps than regions |  Major | . | stack | Lars George |
| [HBASE-1594](https://issues.apache.org/jira/browse/HBASE-1594) | Fix scan addcolumns after hbase-1385 commit (broken hudson build) |  Major | . | stack |  |
| [HBASE-1595](https://issues.apache.org/jira/browse/HBASE-1595) | hadoop-default.xml and zoo.cfg in hbase jar |  Major | . | stack | stack |
| [HBASE-1602](https://issues.apache.org/jira/browse/HBASE-1602) | HRegionServer won't go down since we added in new LruBlockCache |  Major | . | stack | stack |
| [HBASE-1599](https://issues.apache.org/jira/browse/HBASE-1599) | Fix TestFilterSet, broken up on hudson |  Major | . | stack | Jonathan Gray |
| [HBASE-1608](https://issues.apache.org/jira/browse/HBASE-1608) | TestCachedBlockQueue failing on some jvms |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1596](https://issues.apache.org/jira/browse/HBASE-1596) | Remove WatcherWrapper and have all users of ZooKeeperWrapper supply a Watcher. |  Major | . | Nitay Joffe | Nitay Joffe |
| [HBASE-1597](https://issues.apache.org/jira/browse/HBASE-1597) | Prevent unnecessary caching of blocks during compactions |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1607](https://issues.apache.org/jira/browse/HBASE-1607) | Redo MemStore heap sizing to be accurate, testable, and more like new LruBlockCache |  Major | regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-1615](https://issues.apache.org/jira/browse/HBASE-1615) | HBASE-1597 introduced a bug when compacting after a split |  Major | . | Jonathan Gray | stack |
| [HBASE-1575](https://issues.apache.org/jira/browse/HBASE-1575) | HMaster does not handle ZK session expiration |  Critical | master | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1620](https://issues.apache.org/jira/browse/HBASE-1620) | Need to use special StoreScanner constructor for major compactions (passed sf, no caching, etc) |  Blocker | regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-1618](https://issues.apache.org/jira/browse/HBASE-1618) | Investigate further into the MemStoreFlusher StoreFile limit |  Major | regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-1625](https://issues.apache.org/jira/browse/HBASE-1625) | Adding check to Put.add(KeyValue kv), to see that it has the same row as when instantiated |  Minor | Client | Erik Holstad | Erik Holstad |
| [HBASE-1626](https://issues.apache.org/jira/browse/HBASE-1626) | Allow emitting Deletes out of new TableReducer |  Major | . | stack | Lars George |
| [HBASE-1635](https://issues.apache.org/jira/browse/HBASE-1635) | PerformanceEvaluation should use scanner prefetching |  Major | . | Jonathan Gray | Jean-Daniel Cryans |
| [HBASE-1629](https://issues.apache.org/jira/browse/HBASE-1629) | HRS unable to contact master |  Major | . | Amandeep Khurana | Nitay Joffe |
| [HBASE-1633](https://issues.apache.org/jira/browse/HBASE-1633) | Can't delete in TRUNK shell; makes it hard doing admin repairs |  Major | . | stack | stack |
| [HBASE-1640](https://issues.apache.org/jira/browse/HBASE-1640) | Allow passing arguments to jruby script run when run by bin/hbase shell |  Major | . | stack | stack |
| [HBASE-1641](https://issues.apache.org/jira/browse/HBASE-1641) | Stargate build.xml causes error in Eclipse |  Minor | . | Nitay Joffe | Andrew Purtell |
| [HBASE-1627](https://issues.apache.org/jira/browse/HBASE-1627) | TableInputFormatBase#nextKeyValue catches the wrong exception |  Minor | . | Doğacan Güney | Doğacan Güney |
| [HBASE-1639](https://issues.apache.org/jira/browse/HBASE-1639) | clean checkout with empty hbase-site.xml, zk won't start |  Major | . | stack | Nitay Joffe |
| [HBASE-1470](https://issues.apache.org/jira/browse/HBASE-1470) | hbase and HADOOP-4379, dhruba's flush/sync |  Major | . | stack |  |
| [HBASE-1646](https://issues.apache.org/jira/browse/HBASE-1646) | Scan-s can't set a Filter |  Major | . | Doğacan Güney |  |
| [HBASE-1649](https://issues.apache.org/jira/browse/HBASE-1649) | ValueFilter may not reset its internal state |  Minor | Filters | Doğacan Güney |  |
| [HBASE-698](https://issues.apache.org/jira/browse/HBASE-698) | HLog recovery is not performed after master failure |  Blocker | master, regionserver | Clint Morgan | Jean-Daniel Cryans |
| [HBASE-1651](https://issues.apache.org/jira/browse/HBASE-1651) | client is broken, it requests ROOT region location from ZK too much |  Blocker | . | ryan rawson | stack |
| [HBASE-1650](https://issues.apache.org/jira/browse/HBASE-1650) | HBASE-1551 broke the ability to manage non-regionserver start-up/shut down. ie: you cant start/stop thrift on a cluster anymore |  Blocker | . | ryan rawson | stack |
| [HBASE-1656](https://issues.apache.org/jira/browse/HBASE-1656) | loadZooConfig can mask true error |  Minor | . | Bryan Duxbury | Bryan Duxbury |
| [HBASE-1658](https://issues.apache.org/jira/browse/HBASE-1658) | Remove UI refresh -- its annoying |  Major | . | stack | stack |
| [HBASE-1659](https://issues.apache.org/jira/browse/HBASE-1659) | merge tool doesnt take binary regions with \x escape format |  Major | . | ryan rawson |  |
| [HBASE-1661](https://issues.apache.org/jira/browse/HBASE-1661) | HBASE-1215 partial commit broke trunk, does not compile |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1663](https://issues.apache.org/jira/browse/HBASE-1663) | Request compaction only once instead of every time 500ms each time we cycle the hstore.getStorefilesCount() \> this.blockingStoreFilesNumber loop |  Major | . | stack |  |
| [HBASE-1664](https://issues.apache.org/jira/browse/HBASE-1664) | Disable 1058 on catalog tables |  Major | . | stack | stack |
| [HBASE-1058](https://issues.apache.org/jira/browse/HBASE-1058) | Prevent runaway compactions |  Blocker | . | stack | Andrew Purtell |
| [HBASE-1583](https://issues.apache.org/jira/browse/HBASE-1583) | Start/Stop of large cluster untenable |  Major | . | stack | stack |
| [HBASE-1668](https://issues.apache.org/jira/browse/HBASE-1668) | hbase-1609 broke TestHRegion.testScanSplitOnRegion unit test |  Major | . | stack | stack |
| [HBASE-1669](https://issues.apache.org/jira/browse/HBASE-1669) | need dynamic extensibility of HBaseRPC code maps and interface lists |  Major | . | Andrew Purtell |  |
| [HBASE-1359](https://issues.apache.org/jira/browse/HBASE-1359) | After  a large truncating table HBase becomes unresponsive |  Critical | . | Alex Newman | Alex Newman |
| [HBASE-1677](https://issues.apache.org/jira/browse/HBASE-1677) | TestHeapSize failing for me on latest trunk |  Major | . | Andrew Purtell | Jonathan Gray |
| [HBASE-1689](https://issues.apache.org/jira/browse/HBASE-1689) | Fix javadoc warnings and add overview on client classes to client package. |  Major | . | stack |  |
| [HBASE-1680](https://issues.apache.org/jira/browse/HBASE-1680) | FilterList writable only works for HBaseObjectWritable defined types |  Major | . | Clint Morgan |  |
| [HBASE-1670](https://issues.apache.org/jira/browse/HBASE-1670) | transactions / indexing fixes: trx deletes not handeled, index scan can't specify stopRow |  Major | . | Clint Morgan |  |
| [HBASE-1683](https://issues.apache.org/jira/browse/HBASE-1683) | OOME on master splitting logs; stuck, won't go down |  Major | . | stack | stack |
| [HBASE-1704](https://issues.apache.org/jira/browse/HBASE-1704) | Better zk error when failed connect |  Major | . | stack | stack |
| [HBASE-1702](https://issues.apache.org/jira/browse/HBASE-1702) | TestMergeUtil fails on trunk |  Critical | . | Jonathan Gray |  |
| [HBASE-1693](https://issues.apache.org/jira/browse/HBASE-1693) | NPE close\_region ".META." in shell |  Major | . | stack | stack |
| [HBASE-1706](https://issues.apache.org/jira/browse/HBASE-1706) | META row with missing HRI breaks UI |  Critical | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1709](https://issues.apache.org/jira/browse/HBASE-1709) | Thrift getRowWithColumns doesn't accept column-family only |  Minor | Thrift | Matthias Lehmann |  |
| [HBASE-1692](https://issues.apache.org/jira/browse/HBASE-1692) | Web UI is extremely slow / freezes up if you have many tables |  Blocker | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1686](https://issues.apache.org/jira/browse/HBASE-1686) | major compaction can create empty store files, causing AIOOB when trying to read |  Blocker | . | ryan rawson | stack |
| [HBASE-1705](https://issues.apache.org/jira/browse/HBASE-1705) | Thrift server: deletes in mutateRow/s don't delete. |  Major | Thrift | Tim Sell | ryan rawson |
| [HBASE-1634](https://issues.apache.org/jira/browse/HBASE-1634) | UI and shell list throw NPE |  Blocker | . | stack |  |
| [HBASE-1714](https://issues.apache.org/jira/browse/HBASE-1714) | convenience functions in Scan and the thrift API along with a few other bug fixes |  Major | Client, Thrift | ryan rawson |  |
| [HBASE-1703](https://issues.apache.org/jira/browse/HBASE-1703) | ICVs across /during a flush can cause multiple keys with the same TS (bad) |  Critical | . | ryan rawson | ryan rawson |
| [HBASE-1671](https://issues.apache.org/jira/browse/HBASE-1671) | HBASE-1609 broke scanners riding across splits |  Major | . | stack |  |
| [HBASE-1717](https://issues.apache.org/jira/browse/HBASE-1717) | Put on client-side uses passed-in byte[]s rather than always using copies |  Critical | Client | Jonathan Gray | Jonathan Gray |
| [HBASE-1647](https://issues.apache.org/jira/browse/HBASE-1647) | Filter#filterRow is called too often, filters rows it shouldn't have |  Major | . | Doğacan Güney | ryan rawson |
| [HBASE-1718](https://issues.apache.org/jira/browse/HBASE-1718) | Reuse of KeyValue during log replay could cause the wrong data to be used |  Blocker | regionserver | Jonathan Gray | Jonathan Gray |
| [HBASE-1573](https://issues.apache.org/jira/browse/HBASE-1573) | Holes in master state change; updated startcode and server go into .META. but catalog scanner just got old values |  Blocker | . | stack |  |
| [HBASE-1534](https://issues.apache.org/jira/browse/HBASE-1534) | Got ZooKeeper event, state: Disconnected on HRS and then NPE on reinit |  Major | . | stack | Nitay Joffe |
| [HBASE-1638](https://issues.apache.org/jira/browse/HBASE-1638) | hfile has entry from wrong family |  Blocker | . | stack |  |
| [HBASE-1726](https://issues.apache.org/jira/browse/HBASE-1726) | Migration to 0.20 looses index information from HTableDescriptor |  Major | . | Clint Morgan |  |
| [HBASE-1732](https://issues.apache.org/jira/browse/HBASE-1732) | Flag to disable regionserver restart |  Major | . | stack |  |
| [HBASE-1727](https://issues.apache.org/jira/browse/HBASE-1727) | HTD and HCD versions need update |  Minor | . | Andrew Purtell |  |
| [HBASE-1604](https://issues.apache.org/jira/browse/HBASE-1604) | HBaseClient.getConnection() may return a broken connection without throwing an exception |  Major | Client | Eugene Kirpichov |  |
| [HBASE-1739](https://issues.apache.org/jira/browse/HBASE-1739) | hbase-1683 broke splitting; only split three logs no matter what N was. |  Major | . | stack | stack |
| [HBASE-1743](https://issues.apache.org/jira/browse/HBASE-1743) | [debug tool] Add regionsInTransition list to ClusterStatus detailed output |  Major | . | stack | stack |
| [HBASE-1745](https://issues.apache.org/jira/browse/HBASE-1745) | [tools] Tool to kick region out of inTransistion |  Major | . | stack | stack |
| [HBASE-1757](https://issues.apache.org/jira/browse/HBASE-1757) | REST server runs out of fds |  Major | . | stack | stack |
| [HBASE-1761](https://issues.apache.org/jira/browse/HBASE-1761) | getclosest doesn't understand delete family; manifests as "HRegionInfo was null or empty in .META" A.K.A the BS problem |  Major | . | stack | stack |
| [HBASE-1738](https://issues.apache.org/jira/browse/HBASE-1738) | Scanner doesnt reset when a snapshot is created, could miss new updates into the 'kvset' (active part) |  Major | . | ryan rawson | stack |
| [HBASE-1767](https://issues.apache.org/jira/browse/HBASE-1767) | test zookeeper broken in trunk and 0.20 branch; broken on hudson too |  Major | . | stack | stack |
| [HBASE-1771](https://issues.apache.org/jira/browse/HBASE-1771) | PE sequentialWrite is 7x slower because of MemStoreFlusher#checkStoreFileCount |  Major | . | stack | Jonathan Gray |
| [HBASE-1773](https://issues.apache.org/jira/browse/HBASE-1773) | Fix broken tests (setWriteBuffer now throws IOE) |  Major | . | stack | stack |
| [HBASE-1754](https://issues.apache.org/jira/browse/HBASE-1754) | use TCP keepalives |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1768](https://issues.apache.org/jira/browse/HBASE-1768) | REST server has upper limit of 5k PUT |  Critical | . | stack | stack |
| [HBASE-1713](https://issues.apache.org/jira/browse/HBASE-1713) | close\_region on explicit region broken in shell |  Major | . | stack |  |
| [HBASE-1610](https://issues.apache.org/jira/browse/HBASE-1610) | On regionserver reinit on zk expiration, spews thousands of "Unable to set watcher on ZooKeeper master address. Retrying." in a few seconds |  Major | . | stack |  |
| [HBASE-1737](https://issues.apache.org/jira/browse/HBASE-1737) | Regions unbalanced when adding new node |  Blocker | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1793](https://issues.apache.org/jira/browse/HBASE-1793) | [Regression] HTable.get/getRow with a ts is broken |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1792](https://issues.apache.org/jira/browse/HBASE-1792) | [Regression] Cannot save timestamp in the future |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1798](https://issues.apache.org/jira/browse/HBASE-1798) | [Regression] Unable to delete a row in the future |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1799](https://issues.apache.org/jira/browse/HBASE-1799) | deprecate o.a.h.h.rest in favor of stargate |  Major | . | stack | stack |
| [HBASE-1780](https://issues.apache.org/jira/browse/HBASE-1780) | HTable.flushCommits clears write buffer in finally clause |  Major | Client | Mathias Herberts | Andrew Purtell |
| [HBASE-1784](https://issues.apache.org/jira/browse/HBASE-1784) | Missing rows after medium intensity insert |  Blocker | . | Jean-Daniel Cryans | stack |
| [HBASE-1810](https://issues.apache.org/jira/browse/HBASE-1810) | ConcurrentModificationException in region assignment |  Major | . | Lars George | Mathias Herberts |
| [HBASE-1804](https://issues.apache.org/jira/browse/HBASE-1804) | Puts are permitted (and stored) when including an appended colon |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1715](https://issues.apache.org/jira/browse/HBASE-1715) | compaction failure in ScanWildcardColumnTracker.checkColumn |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1790](https://issues.apache.org/jira/browse/HBASE-1790) | filters are not working correctly |  Major | Filters | Matus Zamborsky | Jonathan Gray |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-835](https://issues.apache.org/jira/browse/HBASE-835) | add test coverag ereport in hudson build |  Critical | build, test | Rong-En Fan | stack |
| [HBASE-1540](https://issues.apache.org/jira/browse/HBASE-1540) | Client delete unit test, define behavior |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1616](https://issues.apache.org/jira/browse/HBASE-1616) | Unit test of compacting referenced StoreFiles |  Major | io, regionserver | Jonathan Gray |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1031](https://issues.apache.org/jira/browse/HBASE-1031) | Add the Zookeeper jar |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1146](https://issues.apache.org/jira/browse/HBASE-1146) | Replace the HRS leases with Zookeeper |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1198](https://issues.apache.org/jira/browse/HBASE-1198) | OOME in IPC server does not trigger abort behavior |  Critical | . | Andrew Purtell | Andrew Purtell |
| [HBASE-647](https://issues.apache.org/jira/browse/HBASE-647) | Remove the HStoreFile 'info' file (and index and bloomfilter if possible) |  Major | . | stack | stack |
| [HBASE-1156](https://issues.apache.org/jira/browse/HBASE-1156) | Improve lease handling |  Major | master, regionserver | Jim Kellerman | Jim Kellerman |
| [HBASE-1150](https://issues.apache.org/jira/browse/HBASE-1150) | HMsg carries safemode flag; remove |  Major | . | stack | Nitay Joffe |
| [HBASE-1362](https://issues.apache.org/jira/browse/HBASE-1362) | .META. may not come back if regionserver crashes |  Major | . | ryan rawson | Nitay Joffe |
| [HBASE-33](https://issues.apache.org/jira/browse/HBASE-33) | Add a HTable get/obtainScanner method that retrieves all versions of a particular column and row between two timestamps |  Critical | Client | Peter Dolan | Jonathan Gray |
| [HBASE-1182](https://issues.apache.org/jira/browse/HBASE-1182) | Scan for columns \> some timestamp |  Major | Filters | Tom Nichols | Jonathan Gray |
| [HBASE-1363](https://issues.apache.org/jira/browse/HBASE-1363) | Can't use 'close region' when keys are binary |  Major | . | ryan rawson | Lars George |
| [HBASE-1606](https://issues.apache.org/jira/browse/HBASE-1606) | Remove zoo.cfg, put config options into hbase-site.xml |  Major | . | Nitay Joffe | Nitay Joffe |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1432](https://issues.apache.org/jira/browse/HBASE-1432) | LuceneDocumentWrapper is not public |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1356](https://issues.apache.org/jira/browse/HBASE-1356) | up jruby to 1.2 release and log4j to 1.2.15 (same as hadoop 0.20.0) |  Major | . | stack | stack |
| [HBASE-1381](https://issues.apache.org/jira/browse/HBASE-1381) | Remove onelab and bloom filters files from hbase |  Major | . | stack |  |
| [HBASE-1458](https://issues.apache.org/jira/browse/HBASE-1458) | 64 commit logs as upper bound is too many -- make it half |  Major | . | stack |  |
| [HBASE-1453](https://issues.apache.org/jira/browse/HBASE-1453) | Add HADOOP-4681 to our bundled hadoop, add to 'gettting started' recommendation that hbase users backport |  Major | . | stack | stack |
| [HBASE-1447](https://issues.apache.org/jira/browse/HBASE-1447) | Take last version of the hbase-1249 design doc. and make documentation out of it |  Major | . | stack | Erik Holstad |
| [HBASE-1305](https://issues.apache.org/jira/browse/HBASE-1305) | Update TRUNK to hadoop 0.20.0 |  Major | . | stack |  |
| [HBASE-1387](https://issues.apache.org/jira/browse/HBASE-1387) | Before release verify all object sizes using Ryans' instrumented JVM trick |  Major | . | stack | Erik Holstad |
| [HBASE-1215](https://issues.apache.org/jira/browse/HBASE-1215) | [migration] 0.19.0 -\> 0.20.0 migration (hfile, HCD changes, HSK changes) |  Blocker | . | stack | stack |
| [HBASE-1699](https://issues.apache.org/jira/browse/HBASE-1699) | Remove hbrep example as it's too out of date |  Major | . | Tim Sell | Tim Sell |
| [HBASE-1685](https://issues.apache.org/jira/browse/HBASE-1685) | [stargate] package and wiki documentation |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1695](https://issues.apache.org/jira/browse/HBASE-1695) | [stargate] differentiate PUT and POST processing for schema upload |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1403](https://issues.apache.org/jira/browse/HBASE-1403) | Move transactional and indexer hbase out of core into contrib or out to their own project |  Major | . | stack |  |


