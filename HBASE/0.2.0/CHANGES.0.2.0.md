
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

## Release 0.2.0 - 2008-08-08



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-35](https://issues.apache.org/jira/browse/HBASE-35) | [hbase] Make BatchUpdate public in the API |  Major | Client | Bryan Duxbury | Bryan Duxbury |
| [HBASE-422](https://issues.apache.org/jira/browse/HBASE-422) | HQL's Parallel Execution Features |  Minor | util | Edward J. Yoon | Edward J. Yoon |
| [HBASE-489](https://issues.apache.org/jira/browse/HBASE-489) | CellValue class for transporting cell timestamp with cell value simultaneously |  Minor | Client, regionserver | Bryan Duxbury | Bryan Duxbury |
| [HBASE-40](https://issues.apache.org/jira/browse/HBASE-40) | [hbase] Add a method of getting multiple (but not all) cells for a row at once |  Minor | Client | Bryan Duxbury | Bryan Duxbury |
| [HBASE-536](https://issues.apache.org/jira/browse/HBASE-536) | Remove MiniDFS startup from MiniHBaseCluster |  Minor | test | Bryan Duxbury | Bryan Duxbury |
| [HBASE-548](https://issues.apache.org/jira/browse/HBASE-548) | Tool to online single region |  Minor | . | stack |  |
| [HBASE-46](https://issues.apache.org/jira/browse/HBASE-46) | Robust start and stop for cluster, regionserver |  Major | master, regionserver, scripts | Bryan Duxbury | Jim Kellerman |
| [HBASE-596](https://issues.apache.org/jira/browse/HBASE-596) | DemoClient.py |  Trivial | Thrift | Ivan Begtin |  |
| [HBASE-603](https://issues.apache.org/jira/browse/HBASE-603) | When an exception bubbles out of getRegionServerWithRetries, wrap the exception with a RetriesExhaustedException |  Minor | Client | Bryan Duxbury | Bryan Duxbury |
| [HBASE-47](https://issues.apache.org/jira/browse/HBASE-47) | option to set TTL for columns in hbase |  Minor | regionserver, util | Billy Pearson | Andrew Purtell |
| [HBASE-569](https://issues.apache.org/jira/browse/HBASE-569) | DemoClient.php |  Trivial | Thrift | Jim R. Wilson |  |
| [HBASE-522](https://issues.apache.org/jira/browse/HBASE-522) | Where new Text(string) might be used in client side method calls, add an overload that takes strings |  Trivial | Client | Bryan Duxbury | stack |
| [HBASE-583](https://issues.apache.org/jira/browse/HBASE-583) | RangeRowFilter, allow to choose rows based on a (lexicographic) comparison to  column's values |  Minor | Filters | Clint Morgan | Clint Morgan |
| [HBASE-660](https://issues.apache.org/jira/browse/HBASE-660) | [Migration] addColumn/deleteColumn functionality in MetaUtils |  Blocker | . | stack | stack |
| [HBASE-639](https://issues.apache.org/jira/browse/HBASE-639) | add HBaseAdmin.getTableDescriptor function |  Major | . | Michael Bieniosek | Jim Kellerman |
| [HBASE-631](https://issues.apache.org/jira/browse/HBASE-631) | HTable.getRow() for only a column family |  Major | . | Ryan Lynch | Jean-Daniel Cryans |
| [HBASE-747](https://issues.apache.org/jira/browse/HBASE-747) | Add a simple way to do batch updates of many rows |  Major | Client | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-34](https://issues.apache.org/jira/browse/HBASE-34) | Set memcache flush size per column |  Minor | regionserver | Paul Saab | Andrew Purtell |
| [HBASE-42](https://issues.apache.org/jira/browse/HBASE-42) | Set region split size on table creation |  Minor | . | Paul Saab | Andrew Purtell |
| [HBASE-43](https://issues.apache.org/jira/browse/HBASE-43) | [hbase] Add a read-only attribute to columns |  Minor | . | stack | Andrew Purtell |
| [HBASE-733](https://issues.apache.org/jira/browse/HBASE-733) | Enhance Cell so that it can contain multiple values at multiple timestamps |  Major | io | Jim Kellerman | Jim Kellerman |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-415](https://issues.apache.org/jira/browse/HBASE-415) | Rewrite leases to use DelayedBlockingQueue instead of polling |  Major | . | Jim Kellerman | Jim Kellerman |
| [HBASE-56](https://issues.apache.org/jira/browse/HBASE-56) | Unnecessary HQLClient Object creation in a shell loop. |  Trivial | util | Edward J. Yoon | Edward J. Yoon |
| [HBASE-406](https://issues.apache.org/jira/browse/HBASE-406) | Remove HTable and HConnection close methods |  Minor | Client | Bryan Duxbury | Bryan Duxbury |
| [HBASE-416](https://issues.apache.org/jira/browse/HBASE-416) | Add apache-style logging to REST server and add setting log level, etc. |  Minor | REST | stack |  |
| [HBASE-440](https://issues.apache.org/jira/browse/HBASE-440) | Add optional log roll interval so that log files are garbage collected |  Major | regionserver | Jim Kellerman | Jim Kellerman |
| [HBASE-407](https://issues.apache.org/jira/browse/HBASE-407) | Client should cache region locations in an LRU structure |  Major | Client | Bryan Duxbury | Bryan Duxbury |
| [HBASE-66](https://issues.apache.org/jira/browse/HBASE-66) | Add support for migrating between hbase versions |  Major | util | Johan Oskarsson |  |
| [HBASE-461](https://issues.apache.org/jira/browse/HBASE-461) | Simplify leases |  Minor | . | Jim Kellerman | Jim Kellerman |
| [HBASE-79](https://issues.apache.org/jira/browse/HBASE-79) | [hbase] When HBase needs to be migrated, it should display a message on stdout, not just in the logs |  Blocker | util | Bryan Duxbury | Jim Kellerman |
| [HBASE-430](https://issues.apache.org/jira/browse/HBASE-430) | Performance: Scanners and getRow return maps with duplicate data |  Minor | . | Bryan Duxbury | Bryan Duxbury |
| [HBASE-75](https://issues.apache.org/jira/browse/HBASE-75) | [hbase] Refactor classes into Client, Master, and Regionserver packages |  Minor | . | Bryan Duxbury | Bryan Duxbury |
| [HBASE-515](https://issues.apache.org/jira/browse/HBASE-515) | At least double default timeouts between regionserver and master |  Blocker | . | stack |  |
| [HBASE-506](https://issues.apache.org/jira/browse/HBASE-506) | When an exception has to escape ServerCallable due to exhausted retries, show all the exceptions that lead to this situation |  Major | Client | Bryan Duxbury | Bryan Duxbury |
| [HBASE-456](https://issues.apache.org/jira/browse/HBASE-456) | Clearly state which ports need to be opened in order to run HBase |  Blocker | documentation | Chris Kline |  |
| [HBASE-469](https://issues.apache.org/jira/browse/HBASE-469) | Streamline HStore startup and compactions |  Major | regionserver | Jim Kellerman | Jim Kellerman |
| [HBASE-71](https://issues.apache.org/jira/browse/HBASE-71) | [hbase] Master should rebalance region assignments periodically |  Major | master | Bryan Duxbury | Bryan Duxbury |
| [HBASE-544](https://issues.apache.org/jira/browse/HBASE-544) | Purge startUpdate usage from internal code and test cases |  Trivial | . | Bryan Duxbury | Bryan Duxbury |
| [HBASE-557](https://issues.apache.org/jira/browse/HBASE-557) | HTable.getRow() should receive RowResult objects |  Minor | . | Bryan Duxbury | Bryan Duxbury |
| [HBASE-521](https://issues.apache.org/jira/browse/HBASE-521) | Improve client scanner interface |  Minor | Client | Bryan Duxbury | Bryan Duxbury |
| [HBASE-539](https://issues.apache.org/jira/browse/HBASE-539) | In general, close should not throw exception |  Major | . | stack | Bryan Duxbury |
| [HBASE-53](https://issues.apache.org/jira/browse/HBASE-53) | TableOutputFormat could not assign a timestamp |  Minor | . | Edward J. Yoon | stack |
| [HBASE-584](https://issues.apache.org/jira/browse/HBASE-584) | Names in the filter interface are confusing |  Minor | Filters | Clint Morgan | Clint Morgan |
| [HBASE-581](https://issues.apache.org/jira/browse/HBASE-581) | Allow adding filters to TableInputFormat (At same time, ensure TIF is subclassable) |  Critical | . | stack |  |
| [HBASE-601](https://issues.apache.org/jira/browse/HBASE-601) | Just remove deprecated methods in HTable; 0.2 is not backward compatible anyways |  Major | . | stack | stack |
| [HBASE-600](https://issues.apache.org/jira/browse/HBASE-600) | Filters have excessive DEBUG logging |  Trivial | Filters | Clint Morgan | Jim Kellerman |
| [HBASE-611](https://issues.apache.org/jira/browse/HBASE-611) | regionserver should do basic health check before reporting alls-well to the master |  Minor | . | stack |  |
| [HBASE-614](https://issues.apache.org/jira/browse/HBASE-614) | Retiring regions is not used; exploit or remove |  Major | . | stack | Jim Kellerman |
| [HBASE-538](https://issues.apache.org/jira/browse/HBASE-538) | Improve exceptions that come out on client-side |  Major | . | stack | Jim Kellerman |
| [HBASE-558](https://issues.apache.org/jira/browse/HBASE-558) | Output hbase+hadoop+jvm version as well as java opts, ulimit, into master/regionserver log on startup |  Minor | . | stack | stack |
| [HBASE-76](https://issues.apache.org/jira/browse/HBASE-76) | Purge servers of Text |  Minor | regionserver | stack | stack |
| [HBASE-626](https://issues.apache.org/jira/browse/HBASE-626) | Use Visitor pattern in MetaRegion to reduce code clones in HTable and HConnectionManager |  Minor | master | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-621](https://issues.apache.org/jira/browse/HBASE-621) | Make MAX\_VERSIONS work like TTL: In scans and gets, check MAX\_VERSIONs setting and return that many only rather than wait on compaction |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-504](https://issues.apache.org/jira/browse/HBASE-504) | Allow HMsg's carry a payload: e.g. exception that happened over on the remote side. |  Minor | . | stack | stack |
| [HBASE-579](https://issues.apache.org/jira/browse/HBASE-579) | Add hadoop 0.17.x |  Blocker | . | stack | Jim Kellerman |
| [HBASE-641](https://issues.apache.org/jira/browse/HBASE-641) | Improve master split logging |  Major | . | stack | stack |
| [HBASE-648](https://issues.apache.org/jira/browse/HBASE-648) | If mapfile index is empty, run repair |  Major | . | stack | stack |
| [HBASE-650](https://issues.apache.org/jira/browse/HBASE-650) | Add String versions of get, scanner, put in HTable |  Major | . | stack | stack |
| [HBASE-632](https://issues.apache.org/jira/browse/HBASE-632) | HTable.getMetadata is very inefficient |  Minor | Client | Bryan Duxbury | Jim Kellerman |
| [HBASE-671](https://issues.apache.org/jira/browse/HBASE-671) | New UI page displaying all regions in a table should be sorted |  Minor | build | stack | stack |
| [HBASE-677](https://issues.apache.org/jira/browse/HBASE-677) | Make HTable, HRegion, HRegionServer, HStore, and HColumnDescriptor subclassable |  Minor | . | Clint Morgan | Clint Morgan |
| [HBASE-682](https://issues.apache.org/jira/browse/HBASE-682) | Regularize toString |  Minor | . | stack | stack |
| [HBASE-672](https://issues.apache.org/jira/browse/HBASE-672) | Sort regions in the regionserver UI |  Minor | . | stack | stack |
| [HBASE-715](https://issues.apache.org/jira/browse/HBASE-715) | Base HBase 0.2 on Hadoop 0.17.1 |  Major | . | Jim Kellerman | Jim Kellerman |
| [HBASE-718](https://issues.apache.org/jira/browse/HBASE-718) | hbase shell help info |  Trivial | . | Billy Pearson | stack |
| [HBASE-719](https://issues.apache.org/jira/browse/HBASE-719) | Find out why users have network problems in HBase and not in Hadoop |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-562](https://issues.apache.org/jira/browse/HBASE-562) | Move Exceptions to subpackages |  Minor | . | stack | Jean-Daniel Cryans |
| [HBASE-63](https://issues.apache.org/jira/browse/HBASE-63) | Master does not load balance regions well on startup |  Minor | master | Chris Kline | Bryan Duxbury |
| [HBASE-721](https://issues.apache.org/jira/browse/HBASE-721) | Add a meta refresh tag to the Web ui for master and region server |  Minor | master, regionserver | Jim Kellerman | Jean-Daniel Cryans |
| [HBASE-736](https://issues.apache.org/jira/browse/HBASE-736) | Should have HTable.deleteAll(String row) and HTable.deleteAll(Text row) |  Trivial | . | Sebastien Rainville | Jean-Daniel Cryans |
| [HBASE-730](https://issues.apache.org/jira/browse/HBASE-730) | On startup, rinse STARTCODE and SERVER from .META. |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-741](https://issues.apache.org/jira/browse/HBASE-741) | Rename getMetainfo in HTable as getTableDescriptor |  Major | . | stack |  |
| [HBASE-738](https://issues.apache.org/jira/browse/HBASE-738) | overview.html in need of updating |  Trivial | documentation | Izaak Rubin | Izaak Rubin |
| [HBASE-696](https://issues.apache.org/jira/browse/HBASE-696) | Make bloomfilter true/false and self-sizing |  Major | . | stack | Izaak Rubin |
| [HBASE-700](https://issues.apache.org/jira/browse/HBASE-700) | hbase.io.index.interval need be configuratable in column family |  Minor | regionserver | Luo Ning | Andrew Purtell |
| [HBASE-62](https://issues.apache.org/jira/browse/HBASE-62) | [hbase] Allow user add arbitrary key/value pairs to table and column descriptors |  Trivial | . | stack | stack |
| [HBASE-772](https://issues.apache.org/jira/browse/HBASE-772) | Up default lease period from 60 to 120 seconds |  Major | . | stack |  |
| [HBASE-746](https://issues.apache.org/jira/browse/HBASE-746) | Batching row mutations via thrift |  Minor | Thrift | Tim Sell |  |
| [HBASE-779](https://issues.apache.org/jira/browse/HBASE-779) | Test changing hbase.hregion.memcache.block.multiplier to 2 |  Blocker | . | stack | stack |
| [HBASE-511](https://issues.apache.org/jira/browse/HBASE-511) | Do exponential backoff in clients on NSRE, WRE, ISE, etc. |  Minor | Client | stack | Andrew Purtell |
| [HBASE-783](https://issues.apache.org/jira/browse/HBASE-783) | For single row, single family retrieval, getRow() works half as fast as getScanner().next() |  Minor | . | Jonathan Gray | Jean-Daniel Cryans |
| [HBASE-796](https://issues.apache.org/jira/browse/HBASE-796) | Deprecates Text/String methods from HTable and modifies all classes that used Text/String methods so that they use byte[] instead |  Major | Client, test | Michael Gottesman |  |
| [HBASE-745](https://issues.apache.org/jira/browse/HBASE-745) | scaling of one regionserver, improving memory and cpu usage |  Minor | regionserver | Luo Ning |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-288](https://issues.apache.org/jira/browse/HBASE-288) | Add in-memory caching of data |  Trivial | regionserver | Jim Kellerman | Tom White |
| [HBASE-19](https://issues.apache.org/jira/browse/HBASE-19) | CountingBloomFilter can overflow its storage |  Major | . | Stu Hood |  |
| [HBASE-28](https://issues.apache.org/jira/browse/HBASE-28) | [hbase] thrift put/mutateRow methods need to throw IllegalArgument exceptions |  Major | Thrift | David Simpson | stack |
| [HBASE-2](https://issues.apache.org/jira/browse/HBASE-2) | hlog numbers should wrap around when they reach 999 |  Minor | regionserver | Billy Pearson | Bryan Duxbury |
| [HBASE-425](https://issues.apache.org/jira/browse/HBASE-425) | Fix doc. so it accomodates new hbase untethered context |  Major | . | stack | stack |
| [HBASE-421](https://issues.apache.org/jira/browse/HBASE-421) | TestRegionServerExit broken |  Critical | test | Jim Kellerman | Jim Kellerman |
| [HBASE-3](https://issues.apache.org/jira/browse/HBASE-3) | rest server: configure number of threads for jetty |  Major | REST | Michael Bieniosek | stack |
| [HBASE-426](https://issues.apache.org/jira/browse/HBASE-426) | hbase can't find remote filesystem |  Blocker | . | stack |  |
| [HBASE-437](https://issues.apache.org/jira/browse/HBASE-437) | Clear Command should use system.out |  Major | util | Edward J. Yoon | Edward J. Yoon |
| [HBASE-435](https://issues.apache.org/jira/browse/HBASE-435) | TestTableMapReduce failed in HBase-Patch #15 |  Major | test | Jim Kellerman | Jim Kellerman |
| [HBASE-434](https://issues.apache.org/jira/browse/HBASE-434) | TestTableIndex failed in HBasePatch build #14 |  Major | test | Jim Kellerman | Jim Kellerman |
| [HBASE-444](https://issues.apache.org/jira/browse/HBASE-444) | hbase is very slow at determining table is not present |  Major | . | Michael Bieniosek | Bryan Duxbury |
| [HBASE-438](https://issues.apache.org/jira/browse/HBASE-438) | XMLOutputter state should be initialized. |  Critical | util | Edward J. Yoon | Edward J. Yoon |
| [HBASE-446](https://issues.apache.org/jira/browse/HBASE-446) | Fully qualified hbase.rootdir doesn't work |  Blocker | . | stack | Jim Kellerman |
| [HBASE-8](https://issues.apache.org/jira/browse/HBASE-8) | [hbase] Delete table does not remove the table directory in the FS |  Minor | master | stack | Bryan Duxbury |
| [HBASE-441](https://issues.apache.org/jira/browse/HBASE-441) | Can not create table with the column family "count" |  Minor | util | Billy Pearson | Bryan Duxbury |
| [HBASE-460](https://issues.apache.org/jira/browse/HBASE-460) | TestMigrate broken when HBase moved to subproject |  Major | test | Jim Kellerman | Jim Kellerman |
| [HBASE-462](https://issues.apache.org/jira/browse/HBASE-462) | Update migration tool |  Minor | util | Jim Kellerman | Jim Kellerman |
| [HBASE-464](https://issues.apache.org/jira/browse/HBASE-464) | HBASE-419 introduced javadoc errors |  Major | documentation | Jim Kellerman | Bryan Duxbury |
| [HBASE-428](https://issues.apache.org/jira/browse/HBASE-428) | Under continuous upload of rows, WrongRegionExceptions are thrown that reach the client even after retries |  Blocker | regionserver | Marc Harris | stack |
| [HBASE-473](https://issues.apache.org/jira/browse/HBASE-473) | When a table is deleted, master sends multiple close messages to the region server |  Blocker | master | Jim Kellerman | Bryan Duxbury |
| [HBASE-281](https://issues.apache.org/jira/browse/HBASE-281) | Shell should allow deletions in .META. and -ROOT- tables |  Blocker | util | Bryan Duxbury | Edward J. Yoon |
| [HBASE-480](https://issues.apache.org/jira/browse/HBASE-480) | Tool to manually merge two regions |  Minor | . | stack |  |
| [HBASE-477](https://issues.apache.org/jira/browse/HBASE-477) | Add support for an HBASE\_CLASSPATH |  Minor | . | stack |  |
| [HBASE-490](https://issues.apache.org/jira/browse/HBASE-490) | Doubly-assigned .META.; master uses one and clients another |  Blocker | master | stack |  |
| [HBASE-492](https://issues.apache.org/jira/browse/HBASE-492) | hbase TRUNK does not build against hadoop TRUNK |  Minor | test | Andy Lee | Jim Kellerman |
| [HBASE-496](https://issues.apache.org/jira/browse/HBASE-496) | impossible state for createLease writes 400k lines in about 15seconds |  Major | . | stack |  |
| [HBASE-472](https://issues.apache.org/jira/browse/HBASE-472) | Passing on edits, we dump all to log |  Major | . | stack |  |
| [HBASE-495](https://issues.apache.org/jira/browse/HBASE-495) | No server address listed in .META. |  Major | master | stack |  |
| [HBASE-251](https://issues.apache.org/jira/browse/HBASE-251) | [hbase] Stuck replaying the edits of crashed machine |  Blocker | master | stack | Jim Kellerman |
| [HBASE-433](https://issues.apache.org/jira/browse/HBASE-433) | region server should deleted restore log after successfull restore |  Blocker | regionserver | Billy Pearson | Jim Kellerman |
| [HBASE-27](https://issues.apache.org/jira/browse/HBASE-27) | [hbase] hregioninfo cell empty in meta table |  Blocker | master | stack | Jim Kellerman |
| [HBASE-501](https://issues.apache.org/jira/browse/HBASE-501) | Empty region server address in info:server entry and a startcode of -1 in .META. |  Blocker | . | stack |  |
| [HBASE-510](https://issues.apache.org/jira/browse/HBASE-510) | HConnectionManger.listTables returns empty list if exception (though there may be many tables present) |  Minor | Client | stack | Bryan Duxbury |
| [HBASE-516](https://issues.apache.org/jira/browse/HBASE-516) | HStoreFile.finalKey does not update the final key if it is not the top region of a split region |  Blocker | . | Jim Kellerman | Jim Kellerman |
| [HBASE-525](https://issues.apache.org/jira/browse/HBASE-525) | HTable.getRow(Text) does not work |  Critical | Client | Clint Morgan | Bryan Duxbury |
| [HBASE-524](https://issues.apache.org/jira/browse/HBASE-524) | Problems with getFull |  Critical | regionserver | Bryan Duxbury | Bryan Duxbury |
| [HBASE-529](https://issues.apache.org/jira/browse/HBASE-529) | RegionServer needs to recover if datanode goes down |  Blocker | . | Bryan Duxbury | Bryan Duxbury |
| [HBASE-528](https://issues.apache.org/jira/browse/HBASE-528) | table 'does not exist' when it does |  Major | Client | Bryan Duxbury | Bryan Duxbury |
| [HBASE-537](https://issues.apache.org/jira/browse/HBASE-537) | We no longer wait on hdfs to exit safe mode |  Blocker | . | stack | Jim Kellerman |
| [HBASE-527](https://issues.apache.org/jira/browse/HBASE-527) | RegexpRowFilter does not work when there are columns from multiple families |  Blocker | Filters | Clint Morgan | Jim Kellerman |
| [HBASE-476](https://issues.apache.org/jira/browse/HBASE-476) | RegexpRowFilter behaves incorectly when there are multiple store files |  Blocker | Filters | Clint Morgan | Jim Kellerman |
| [HBASE-534](https://issues.apache.org/jira/browse/HBASE-534) | Double-assignment at SPLIT-time (WAS: Stores retaining references to long-deleted mapfiles) |  Blocker | . | stack |  |
| [HBASE-550](https://issues.apache.org/jira/browse/HBASE-550) | EOF trying to read reconstruction log stops region deployment |  Blocker | . | stack | stack |
| [HBASE-551](https://issues.apache.org/jira/browse/HBASE-551) | Master stuck splitting server logs in shutdown loop; on each iteration, edits are aggregated up into the millions |  Blocker | . | stack | stack |
| [HBASE-505](https://issues.apache.org/jira/browse/HBASE-505) | Region assignments should never time out so long as the region server reports that it is processing the open request |  Blocker | . | Jim Kellerman | stack |
| [HBASE-561](https://issues.apache.org/jira/browse/HBASE-561) | HBase package does not include LICENSE.txt nor build.xml |  Blocker | . | stack |  |
| [HBASE-452](https://issues.apache.org/jira/browse/HBASE-452) | "region offline" should throw IOException, not IllegalStateException |  Minor | . | Michael Bieniosek | Bryan Duxbury |
| [HBASE-541](https://issues.apache.org/jira/browse/HBASE-541) | Hadoop jars used in HBase/lib are not compatible with Hadoop-trunk |  Minor | build | Jim Kellerman | Jim Kellerman |
| [HBASE-563](https://issues.apache.org/jira/browse/HBASE-563) | TestRowFilterAfterWrite erroneously sets master address to 0.0.0.0:60100 rather than relying on conf |  Blocker | Filters | Jim Kellerman | Jim Kellerman |
| [HBASE-507](https://issues.apache.org/jira/browse/HBASE-507) | In master, there are a load of places where no sleep between retries |  Major | . | stack | Jim Kellerman |
| [HBASE-564](https://issues.apache.org/jira/browse/HBASE-564) | Adding a flush file of zero entries |  Minor | . | stack | Jim Kellerman |
| [HBASE-554](https://issues.apache.org/jira/browse/HBASE-554) | filters generate StackOverflowException |  Blocker | Filters | stack | Jim Kellerman |
| [HBASE-567](https://issues.apache.org/jira/browse/HBASE-567) | Reused BatchUpdate instances accumulate BatchOperations |  Major | . | stack |  |
| [HBASE-236](https://issues.apache.org/jira/browse/HBASE-236) | NPE on failed open of region |  Major | regionserver | stack | Jim Kellerman |
| [HBASE-577](https://issues.apache.org/jira/browse/HBASE-577) | NPE getting scanner |  Blocker | . | stack | Jim Kellerman |
| [HBASE-574](https://issues.apache.org/jira/browse/HBASE-574) | HBase does not load hadoop native libs |  Blocker | io | Rong-En Fan | stack |
| [HBASE-573](https://issues.apache.org/jira/browse/HBASE-573) | HBase does not read hadoop-\*.xml for dfs configuration after moving out hadoop/contrib |  Blocker | . | Rong-En Fan | stack |
| [HBASE-11](https://issues.apache.org/jira/browse/HBASE-11) | [hbase] Unexpected exits corrupt DFS |  Major | regionserver | Bryan Duxbury | Jim Kellerman |
| [HBASE-12](https://issues.apache.org/jira/browse/HBASE-12) | when hbase regionserver restarts, it says "impossible state for createLease()" |  Minor | regionserver | Michael Bieniosek | stack |
| [HBASE-559](https://issues.apache.org/jira/browse/HBASE-559) | MR example job to count table rows |  Blocker | . | stack | stack |
| [HBASE-575](https://issues.apache.org/jira/browse/HBASE-575) | hbase master dies with stack overflow error if rootdir isn't qualified |  Blocker | . | Michael Bieniosek | Jim Kellerman |
| [HBASE-582](https://issues.apache.org/jira/browse/HBASE-582) | HBase 554 forgot to clear results on each iteration caused by a filter |  Blocker | regionserver | Clint Morgan |  |
| [HBASE-532](https://issues.apache.org/jira/browse/HBASE-532) | Odd interaction between HRegion.get, HRegion.deleteAll and compactions |  Blocker | . | Jim Kellerman | stack |
| [HBASE-590](https://issues.apache.org/jira/browse/HBASE-590) | HBase migration tool does not get correct FileSystem or root directory if configuration is not correct. |  Blocker | util | Jim Kellerman | Jim Kellerman |
| [HBASE-10](https://issues.apache.org/jira/browse/HBASE-10) | HRegionServer hangs upon exit due to DFSClient Exception |  Minor | regionserver | Chris Kline | Jim Kellerman |
| [HBASE-598](https://issues.apache.org/jira/browse/HBASE-598) | Loggging, no .log file; all goes into .out |  Major | . | stack |  |
| [HBASE-595](https://issues.apache.org/jira/browse/HBASE-595) | RowFilterInterface.rowProcessed() is called \*before\* fhe final filtering decision is made |  Major | Filters | Clint Morgan |  |
| [HBASE-586](https://issues.apache.org/jira/browse/HBASE-586) | HRegion runs HStore memcache snapshotting -- fix it so only HStore knows about workings of memcache |  Critical | . | stack | stack |
| [HBASE-412](https://issues.apache.org/jira/browse/HBASE-412) | unable to report to master |  Minor | regionserver | Billy Pearson |  |
| [HBASE-20](https://issues.apache.org/jira/browse/HBASE-20) | Regions getting messages from master to MSG\_REGION\_CLOSE\_WITHOUT\_REPORT |  Minor | . | Billy Pearson |  |
| [HBASE-588](https://issues.apache.org/jira/browse/HBASE-588) | Still a 'hole' in scanners, even after HBASE-532 |  Blocker | . | stack | stack |
| [HBASE-604](https://issues.apache.org/jira/browse/HBASE-604) | Don't allow CLASSPATH from environment pollute the hbase CLASSPATH |  Blocker | . | stack |  |
| [HBASE-608](https://issues.apache.org/jira/browse/HBASE-608) | HRegionServer::getThisIP() checks hadoop config var for dns interface name |  Major | regionserver | Jim R. Wilson |  |
| [HBASE-609](https://issues.apache.org/jira/browse/HBASE-609) | Master doesn't see regionserver edits because of clock skew |  Blocker | . | stack | stack |
| [HBASE-405](https://issues.apache.org/jira/browse/HBASE-405) | TIF and TOF use log4j directly rather than apache commons-logging |  Minor | . | stack | stack |
| [HBASE-612](https://issues.apache.org/jira/browse/HBASE-612) | HColumnDescriptor's readFields() method is version aware but its write() method is not |  Minor | io | Andrew Purtell |  |
| [HBASE-618](https://issues.apache.org/jira/browse/HBASE-618) | We always compact if 2 files, regardless of the compaction threshold setting |  Blocker | . | stack |  |
| [HBASE-619](https://issues.apache.org/jira/browse/HBASE-619) | Fix 'logs' link in UI |  Major | . | stack |  |
| [HBASE-478](https://issues.apache.org/jira/browse/HBASE-478) | offlining of table does not run reliably |  Critical | . | stack | Jim Kellerman |
| [HBASE-599](https://issues.apache.org/jira/browse/HBASE-599) | CME iterating return from ServerManager.getMarkedToClose |  Critical | . | stack | Jim Kellerman |
| [HBASE-453](https://issues.apache.org/jira/browse/HBASE-453) | undeclared throwable exception from HTable.get |  Minor | . | Michael Bieniosek |  |
| [HBASE-620](https://issues.apache.org/jira/browse/HBASE-620) | testmergetool failing in branch and trunk since hbase-618 went in |  Major | . | stack | stack |
| [HBASE-622](https://issues.apache.org/jira/browse/HBASE-622) | Remove StaticTestEnvironment and put a log4j.properties in src/test |  Major | test | Jim Kellerman | Jim Kellerman |
| [HBASE-624](https://issues.apache.org/jira/browse/HBASE-624) | Master will shut down if number of active region servers is zero even if shutdown was not requested |  Major | . | Jim Kellerman | Jim Kellerman |
| [HBASE-23](https://issues.apache.org/jira/browse/HBASE-23) | UI listing regions should be sorted by address and show additional region state |  Minor | . | stack | Jean-Daniel Cryans |
| [HBASE-593](https://issues.apache.org/jira/browse/HBASE-593) | build on hudson failing compiling jsp |  Major | build | stack | stack |
| [HBASE-629](https://issues.apache.org/jira/browse/HBASE-629) | Split reports incorrect elapsed time |  Major | regionserver | Jim Kellerman | Jim Kellerman |
| [HBASE-623](https://issues.apache.org/jira/browse/HBASE-623) | migration script for hbase-82 |  Blocker | . | stack | stack |
| [HBASE-630](https://issues.apache.org/jira/browse/HBASE-630) | Default hbase.rootdir is garbage |  Major | . | stack | stack |
| [HBASE-589](https://issues.apache.org/jira/browse/HBASE-589) | Remove references to deprecated methods in Hadoop once hadoop-0.17.0 is released |  Blocker | . | Jim Kellerman | Jim Kellerman |
| [HBASE-638](https://issues.apache.org/jira/browse/HBASE-638) | Purge \r from src |  Major | . | stack |  |
| [HBASE-644](https://issues.apache.org/jira/browse/HBASE-644) | DroppedSnapshotException but RegionServer doesn't restart |  Blocker | . | stack | stack |
| [HBASE-645](https://issues.apache.org/jira/browse/HBASE-645) | EOFException opening region (HBASE-550 redux) |  Major | . | stack | stack |
| [HBASE-642](https://issues.apache.org/jira/browse/HBASE-642) | Splitting log in a hostile environment -- bad hdfs -- we drop write-ahead-log edits |  Major | . | stack | stack |
| [HBASE-646](https://issues.apache.org/jira/browse/HBASE-646) | EOFException opening HStoreFile info file (spin on HBASE-645 and 550) |  Major | . | stack | stack |
| [HBASE-651](https://issues.apache.org/jira/browse/HBASE-651) | table.commit should throw NoSuchColumnFamilyException if column family doesn't exist |  Major | . | Michael Bieniosek | stack |
| [HBASE-656](https://issues.apache.org/jira/browse/HBASE-656) | Do not retry exceptions such as unknown scanner or illegal argument |  Major | . | stack | stack |
| [HBASE-649](https://issues.apache.org/jira/browse/HBASE-649) | API polluted with default and protected access data members and methods |  Major | . | stack | stack |
| [HBASE-659](https://issues.apache.org/jira/browse/HBASE-659) | HLog#cacheFlushLock not cleared; hangs a region |  Blocker | . | stack | stack |
| [HBASE-640](https://issues.apache.org/jira/browse/HBASE-640) | TestMigrate failing on hudson |  Major | . | stack | stack |
| [HBASE-663](https://issues.apache.org/jira/browse/HBASE-663) | Incorrect sequence number for cache flush |  Blocker | regionserver | Ning Li | Jim Kellerman |
| [HBASE-655](https://issues.apache.org/jira/browse/HBASE-655) | need programmatic way to add column family: need programmatic way to enable/disable table |  Major | . | Michael Bieniosek | Jim Kellerman |
| [HBASE-654](https://issues.apache.org/jira/browse/HBASE-654) | API HTable.getMetadata().addFamily shouldn't be exposed to user |  Blocker | . | Michael Bieniosek | Jim Kellerman |
| [HBASE-666](https://issues.apache.org/jira/browse/HBASE-666) | UnmodifyableHRegionInfo gives the wrong encoded name |  Blocker | . | Jean-Daniel Cryans | Jim Kellerman |
| [HBASE-670](https://issues.apache.org/jira/browse/HBASE-670) | Historian deadlocks if regionserver is at global memory boundary and is hosting .META. |  Major | . | stack | stack |
| [HBASE-668](https://issues.apache.org/jira/browse/HBASE-668) | HBASE-533 broke build |  Blocker | . | stack | stack |
| [HBASE-665](https://issues.apache.org/jira/browse/HBASE-665) | server side scanner doesn't honor stop row |  Major | . | Michael Bieniosek | stack |
| [HBASE-662](https://issues.apache.org/jira/browse/HBASE-662) | UI in table.jsp gives META locations, not the table's regions location |  Minor | Client | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-676](https://issues.apache.org/jira/browse/HBASE-676) | Bytes.getInt returns a long |  Major | . | stack | Clint Morgan |
| [HBASE-680](https://issues.apache.org/jira/browse/HBASE-680) | config parameter hbase.io.index.interval  should be hbase.index.interval, accroding to HBaseMapFile.HbaseWriter |  Minor | regionserver | Luo Ning |  |
| [HBASE-681](https://issues.apache.org/jira/browse/HBASE-681) | NPE in Memcache |  Major | regionserver | Clint Morgan | Jim Kellerman |
| [HBASE-686](https://issues.apache.org/jira/browse/HBASE-686) | MemcacheScanner didn't return the first row(if it exists), cause HScannerInterface's output incorrect |  Major | . | Luo Ning | Jim Kellerman |
| [HBASE-691](https://issues.apache.org/jira/browse/HBASE-691) | get\* and getScanner are different in how they treat column parameter |  Major | . | stack | stack |
| [HBASE-694](https://issues.apache.org/jira/browse/HBASE-694) | HStore.rowAtOrBeforeFromMapFile() fails to locate the row if # of mapfiles \>= 2 |  Critical | regionserver | Rong-En Fan | Bryan Duxbury |
| [HBASE-652](https://issues.apache.org/jira/browse/HBASE-652) | dropping table fails silently if table isn't disabled |  Blocker | . | Michael Bieniosek | Jean-Daniel Cryans |
| [HBASE-683](https://issues.apache.org/jira/browse/HBASE-683) | can not get svn revision # at build time if locale is not english |  Minor | build | Rong-En Fan | Rong-En Fan |
| [HBASE-699](https://issues.apache.org/jira/browse/HBASE-699) | Fix TestMigrate up on Hudson |  Major | . | stack | stack |
| [HBASE-615](https://issues.apache.org/jira/browse/HBASE-615) | Region balancer oscillates during cluster startup |  Blocker | master | Jim Kellerman | Bryan Duxbury |
| [HBASE-701](https://issues.apache.org/jira/browse/HBASE-701) | Showing bytes in log when should be String |  Major | . | stack | stack |
| [HBASE-702](https://issues.apache.org/jira/browse/HBASE-702) | deleteall doesn't |  Major | . | stack | stack |
| [HBASE-704](https://issues.apache.org/jira/browse/HBASE-704) | update new shell docs and commands on help menu |  Blocker | . | Billy Pearson | stack |
| [HBASE-709](https://issues.apache.org/jira/browse/HBASE-709) | Deadlock while rolling WAL-log while finishing flush |  Blocker | . | stack | stack |
| [HBASE-613](https://issues.apache.org/jira/browse/HBASE-613) | Timestamp-anchored scanning fails to find all records |  Blocker | Client | stack | Jim Kellerman |
| [HBASE-716](https://issues.apache.org/jira/browse/HBASE-716) | TestGet2.testGetClosestBefore fails with hadoop-0.17.1 |  Major | regionserver | Jim Kellerman | Jim Kellerman |
| [HBASE-627](https://issues.apache.org/jira/browse/HBASE-627) | Disable table doesn't work reliably |  Critical | . | Michaela Buergle | Jim Kellerman |
| [HBASE-717](https://issues.apache.org/jira/browse/HBASE-717) | alter table broke with new shell returns InvalidColumnNameException |  Critical | . | Billy Pearson | stack |
| [HBASE-712](https://issues.apache.org/jira/browse/HBASE-712) | midKey found compacting is the first, not necessarily the optimal |  Minor | . | stack | Jim Kellerman |
| [HBASE-703](https://issues.apache.org/jira/browse/HBASE-703) | Invalid regions listed by regionserver.jsp |  Minor | . | Michaela Buergle | Izaak Rubin |
| [HBASE-674](https://issues.apache.org/jira/browse/HBASE-674) | memcache size unreliable |  Major | . | stack | Jim Kellerman |
| [HBASE-726](https://issues.apache.org/jira/browse/HBASE-726) | Unit tests won't run because of a typo |  Trivial | test | Sebastien Rainville | stack |
| [HBASE-706](https://issues.apache.org/jira/browse/HBASE-706) | On OOME, regionserver sticks around and doesn't go down with cluster |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-727](https://issues.apache.org/jira/browse/HBASE-727) | Client caught in an infinite loop when trying to connect to cached server locations |  Minor | Client, IPC/RPC | Izaak Rubin | Izaak Rubin |
| [HBASE-732](https://issues.apache.org/jira/browse/HBASE-732) | shell formatting error with the describe command |  Minor | documentation, scripts | Izaak Rubin | Izaak Rubin |
| [HBASE-731](https://issues.apache.org/jira/browse/HBASE-731) | delete, deletefc in HBase shell do not work correctly. |  Minor | documentation, scripts | Izaak Rubin | Izaak Rubin |
| [HBASE-734](https://issues.apache.org/jira/browse/HBASE-734) | scan '.META.', {LIMIT =\> 10} crashes |  Minor | util | Sebastien Rainville | Izaak Rubin |
| [HBASE-735](https://issues.apache.org/jira/browse/HBASE-735) | hbase shell doesn't trap CTRL-C signal |  Minor | util | Sebastien Rainville | Jean-Daniel Cryans |
| [HBASE-740](https://issues.apache.org/jira/browse/HBASE-740) | ThriftServer getting table names incorrectly |  Trivial | Thrift | Tim Sell |  |
| [HBASE-744](https://issues.apache.org/jira/browse/HBASE-744) | BloomFilter serialization/deserialization broken |  Blocker | . | Jim Kellerman | Jim Kellerman |
| [HBASE-739](https://issues.apache.org/jira/browse/HBASE-739) | HBaseAdmin.createTable() using old HTableDescription doesn't work |  Minor | Client | Sebastien Rainville | Izaak Rubin |
| [HBASE-742](https://issues.apache.org/jira/browse/HBASE-742) | Column length limit is not enforced |  Major | Client | Jim Kellerman | Jean-Daniel Cryans |
| [HBASE-737](https://issues.apache.org/jira/browse/HBASE-737) | Scanner: every cell in a row has the same timestamp |  Blocker | Client | Izaak Rubin | Jim Kellerman |
| [HBASE-679](https://issues.apache.org/jira/browse/HBASE-679) | Regionserver addresses are still not right in the new tables page |  Major | . | stack | Jim Kellerman |
| [HBASE-754](https://issues.apache.org/jira/browse/HBASE-754) | The JRuby shell documentation is wrong in "get" and "put" |  Minor | scripts | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-756](https://issues.apache.org/jira/browse/HBASE-756) | In HBase shell, the put command doesn't process the timestamp |  Minor | scripts | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-720](https://issues.apache.org/jira/browse/HBASE-720) | clean up inconsistencies around deletes |  Major | . | stack | Izaak Rubin |
| [HBASE-758](https://issues.apache.org/jira/browse/HBASE-758) | Throwing IOE read-only when should be throwing NSRE |  Major | . | stack | stack |
| [HBASE-743](https://issues.apache.org/jira/browse/HBASE-743) | bin/hbase migrate upgrade fails when redo logs exists |  Minor | . | Sebastien Rainville | Izaak Rubin |
| [HBASE-757](https://issues.apache.org/jira/browse/HBASE-757) | REST mangles table names |  Major | . | stack | stack |
| [HBASE-761](https://issues.apache.org/jira/browse/HBASE-761) | IOE: Stream closed exception all over logs |  Major | . | stack | stack |
| [HBASE-763](https://issues.apache.org/jira/browse/HBASE-763) | ClassCastException from RowResult.get(String) |  Major | . | Andrew Purtell |  |
| [HBASE-764](https://issues.apache.org/jira/browse/HBASE-764) | The name of column request has padding zero using REST interface |  Major | REST | sishen.freecity |  |
| [HBASE-750](https://issues.apache.org/jira/browse/HBASE-750) | NPE caused by StoreFileScanner.updateReaders |  Major | regionserver | Andrew Purtell | stack |
| [HBASE-770](https://issues.apache.org/jira/browse/HBASE-770) | Update HBaseRPC to match hadoop 0.17 RPC |  Major | . | stack | stack |
| [HBASE-769](https://issues.apache.org/jira/browse/HBASE-769) | TestMasterAdmin fails throwing RegionOfflineException when we're expecting IllegalStateException |  Major | . | stack | stack |
| [HBASE-780](https://issues.apache.org/jira/browse/HBASE-780) | Can't scan '.META.' from new shell |  Blocker | . | stack | stack |
| [HBASE-424](https://issues.apache.org/jira/browse/HBASE-424) | Should be able to enable/disable .META. table |  Major | . | stack | Jim Kellerman |
| [HBASE-771](https://issues.apache.org/jira/browse/HBASE-771) | Names legal in 0.1 are not in 0.2; breaks migration |  Blocker | . | stack | Jim Kellerman |
| [HBASE-766](https://issues.apache.org/jira/browse/HBASE-766) | FileNotFoundException trying to load HStoreFile 'data' |  Critical | . | stack | stack |
| [HBASE-791](https://issues.apache.org/jira/browse/HBASE-791) | RowCount doesn't work |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-751](https://issues.apache.org/jira/browse/HBASE-751) | dfs exception and regionserver stuck during heavy write load |  Blocker | regionserver | Rong-En Fan | stack |
| [HBASE-793](https://issues.apache.org/jira/browse/HBASE-793) | HTable.getStartKeys() ignores table names when matching columns |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-790](https://issues.apache.org/jira/browse/HBASE-790) | During import, single region blocks requests for \>10 minutes, thread dumps, throws out pending requests, and continues |  Blocker | regionserver | Jonathan Gray | Andrew Purtell |
| [HBASE-776](https://issues.apache.org/jira/browse/HBASE-776) | Master not reassigning .META. from failed/failing regionserver |  Major | master | Andrew Purtell |  |
| [HBASE-788](https://issues.apache.org/jira/browse/HBASE-788) | Div by zero in Master.jsp |  Major | . | Clint Morgan |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-607](https://issues.apache.org/jira/browse/HBASE-607) | MultiRegionTable.makeMultiRegionTable is not deterministic enough for regression tests |  Major | test | Jim Kellerman | Jim Kellerman |
| [HBASE-570](https://issues.apache.org/jira/browse/HBASE-570) | Remove HQL unit test |  Minor | . | Bryan Duxbury | stack |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-418](https://issues.apache.org/jira/browse/HBASE-418) | Move HMaster and related classes into master package |  Minor | . | Bryan Duxbury | Bryan Duxbury |
| [HBASE-417](https://issues.apache.org/jira/browse/HBASE-417) | Factor TableOperation and subclasses into separate files from HMaster |  Minor | . | Bryan Duxbury | Bryan Duxbury |
| [HBASE-414](https://issues.apache.org/jira/browse/HBASE-414) | Move client classes into client package |  Minor | Client | Bryan Duxbury | Bryan Duxbury |
| [HBASE-457](https://issues.apache.org/jira/browse/HBASE-457) | Factor Master into Master, RegionManager, and ServerManager |  Minor | master | Bryan Duxbury | Bryan Duxbury |
| [HBASE-419](https://issues.apache.org/jira/browse/HBASE-419) | Move RegionServer and related classes into regionserver package |  Minor | . | Bryan Duxbury | Bryan Duxbury |
| [HBASE-468](https://issues.apache.org/jira/browse/HBASE-468) | Move HStoreKey back to o.a.h.h |  Major | . | Bryan Duxbury | Jim Kellerman |
| [HBASE-442](https://issues.apache.org/jira/browse/HBASE-442) | Move internal classes out of HRegionServer |  Minor | . | Bryan Duxbury | Bryan Duxbury |
| [HBASE-466](https://issues.apache.org/jira/browse/HBASE-466) | Move HMasterInterface, HRegionInterface, and HMasterRegionInterface into o.a.h.h.ipc |  Major | . | Bryan Duxbury | Bryan Duxbury |
| [HBASE-479](https://issues.apache.org/jira/browse/HBASE-479) | Speed up TestLogRolling |  Major | . | Bryan Duxbury | Jim Kellerman |
| [HBASE-443](https://issues.apache.org/jira/browse/HBASE-443) | Move internal classes out of HStore |  Minor | . | Bryan Duxbury | Bryan Duxbury |
| [HBASE-512](https://issues.apache.org/jira/browse/HBASE-512) | Add configuration for global aggregate memcache size |  Major | regionserver | Bryan Duxbury | Bryan Duxbury |
| [HBASE-571](https://issues.apache.org/jira/browse/HBASE-571) | Scanners store copy of memcache state |  Major | . | Bryan Duxbury |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-409](https://issues.apache.org/jira/browse/HBASE-409) | Add build path to svn:ignore list |  Trivial | . | Edward J. Yoon |  |
| [HBASE-439](https://issues.apache.org/jira/browse/HBASE-439) | Add hbase logs path to svn:ignore list |  Major | . | Edward J. Yoon |  |
| [HBASE-523](https://issues.apache.org/jira/browse/HBASE-523) | package-level javadoc should have example client |  Blocker | documentation | Bryan Duxbury | Bryan Duxbury |
| [HBASE-82](https://issues.apache.org/jira/browse/HBASE-82) | row keys should be array of bytes |  Major | . | Jim Kellerman | stack |
| [HBASE-533](https://issues.apache.org/jira/browse/HBASE-533) | Region Historian |  Minor | . | Bryan Duxbury | Jean-Daniel Cryans |
| [HBASE-664](https://issues.apache.org/jira/browse/HBASE-664) | Have a new page in the wiki that helps with network debugging |  Trivial | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-487](https://issues.apache.org/jira/browse/HBASE-487) | Replace hql w/ a hbase-friendly jirb or jython shell |  Minor | . | stack | stack |
| [HBASE-531](https://issues.apache.org/jira/browse/HBASE-531) | Port HBASE-483 to trunk |  Major | util | Jim Kellerman | Jim Kellerman |
| [HBASE-566](https://issues.apache.org/jira/browse/HBASE-566) | Hadoop has deprecated FileSystem.delete(Path) in favor of FileSystem.delete(Path, boolean) |  Blocker | . | Jim Kellerman | Jim Kellerman |


