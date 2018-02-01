
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
# Apache Impala Changelog

## Release Impala 2.2 - 2015-04-23



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-1587](https://issues.apache.org/jira/browse/IMPALA-1587) | SQL Support for Cached Replicas |  Major | . | Martin Grund | Martin Grund |
| [IMPALA-1689](https://issues.apache.org/jira/browse/IMPALA-1689) | Support profiling the planning process |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-1662](https://issues.apache.org/jira/browse/IMPALA-1662) | Netezza compatibility functions: Logic |  Major | . | Henry Robinson | Zuo Wang |
| [IMPALA-1754](https://issues.apache.org/jira/browse/IMPALA-1754) | Testing Catalog Upgrade Path |  Blocker | . | Martin Grund | Alex Leblang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-758](https://issues.apache.org/jira/browse/IMPALA-758) | Improve error reporting for malformed timestamp formats. |  Major | . | Alexander Behm | casey |
| [IMPALA-377](https://issues.apache.org/jira/browse/IMPALA-377) | impala processes should cleanup their own old log files |  Major | . | Chris Leroy | Martin Grund |
| [IMPALA-1684](https://issues.apache.org/jira/browse/IMPALA-1684) | De-duplicate audit events |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-1664](https://issues.apache.org/jira/browse/IMPALA-1664) | Rename 'keep-alive' to 'heartbeat' in statestore |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-1530](https://issues.apache.org/jira/browse/IMPALA-1530) | Add the number of partitions missing #rows stats to the explain plan. |  Major | . | Alexander Behm | Henry Robinson |
| [IMPALA-899](https://issues.apache.org/jira/browse/IMPALA-899) | Add support for mod() function |  Minor | . | Jonathan Seidman | Zuo Wang |
| [IMPALA-97](https://issues.apache.org/jira/browse/IMPALA-97) | Impala returns "1970-01-01 00:00:00" in from\_unixtime(0) , Hive returns "1970-01-01 09:00:00" in Japan |  Major | . | Yuki Yoi | casey |
| [IMPALA-1672](https://issues.apache.org/jira/browse/IMPALA-1672) | Do not build PHJ's probe filters with a second HT scan |  Major | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-1598](https://issues.apache.org/jira/browse/IMPALA-1598) | Add error codes to user-facing msgs and use them to de-duplicate high-volume output |  Major | . | Henry Robinson | Martin Grund |
| [IMPALA-1663](https://issues.apache.org/jira/browse/IMPALA-1663) | Default catalog to --load\_catalog\_in\_background=false |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-1846](https://issues.apache.org/jira/browse/IMPALA-1846) | Add subscriber total to statestore's subscriber web page |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-1849](https://issues.apache.org/jira/browse/IMPALA-1849) | Add last event to queries page |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-1636](https://issues.apache.org/jira/browse/IMPALA-1636) | Generalize index-based partition pruning to allow constant expressions in IN predicates. |  Critical | . | Alexander Behm | Dimitris Tsirogiannis |
| [IMPALA-1774](https://issues.apache.org/jira/browse/IMPALA-1774) | Allow querying Parquet tables with complex-typed columns as long as those columns are not selected. |  Critical | . | Alexander Behm | Skye Wanderman-Milne |
| [IMPALA-1885](https://issues.apache.org/jira/browse/IMPALA-1885) | Automated statestore tests |  Major | . | Henry Robinson | Henry Robinson |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-1520](https://issues.apache.org/jira/browse/IMPALA-1520) | Crash: impala::AnalyticEvalNode::Close |  Major | . | Taras Bobrovytsky | Matthew Jacobs |
| [IMPALA-1513](https://issues.apache.org/jira/browse/IMPALA-1513) | Fix lock contention in Periodic Couter update |  Major | . | Alan Choi | Ippokratis Pandis |
| [IMPALA-1434](https://issues.apache.org/jira/browse/IMPALA-1434) | SQL (contain  group by  case ifnull(cky2,oprator) )  cause impalad   crash |  Major | Clients | fishing | Skye Wanderman-Milne |
| [IMPALA-1531](https://issues.apache.org/jira/browse/IMPALA-1531) | Crash: impala::ExprContext::FreeLocalAllocations |  Blocker | . | Taras Bobrovytsky | Matthew Jacobs |
| [IMPALA-1419](https://issues.apache.org/jira/browse/IMPALA-1419) | COUNT(NULL \* foo) fails: Unknown expr node type: 14 |  Major | . | casey | Matthew Jacobs |
| [IMPALA-1565](https://issues.apache.org/jira/browse/IMPALA-1565) | Python sasl client transport perf issue |  Major | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-1600](https://issues.apache.org/jira/browse/IMPALA-1600) | Weirdness with multiple rand() values |  Minor | . | Colin Marc | Skye Wanderman-Milne |
| [IMPALA-1566](https://issues.apache.org/jira/browse/IMPALA-1566) | impala-server crashes with cast on a empty regexp\_replace result |  Blocker | . | gpolaert | Victor Bittorf |
| [IMPALA-1438](https://issues.apache.org/jira/browse/IMPALA-1438) | Zero-row insert creates empty data file |  Major | . | Juan Yu | Juan Yu |
| [IMPALA-1589](https://issues.apache.org/jira/browse/IMPALA-1589) | Unable to disable codegen with UDFs or vararg (such as IN-clause) |  Major | . | Alan Choi | Skye Wanderman-Milne |
| [IMPALA-1584](https://issues.apache.org/jira/browse/IMPALA-1584) | TPCH-Q1 crashes impala when mem\_limit is 125m |  Blocker | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-1585](https://issues.apache.org/jira/browse/IMPALA-1585) | Sorter constructor ignores returned status from function it calls |  Major | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-1375](https://issues.apache.org/jira/browse/IMPALA-1375) | typo in tests getting hdfs client |  Major | . | Erick Tryzelaar | Henry Robinson |
| [IMPALA-1617](https://issues.apache.org/jira/browse/IMPALA-1617) | DCHECK(using\_small\_buffers()) when running TPC-H Q4 with mem\_limit=100m |  Major | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-1120](https://issues.apache.org/jira/browse/IMPALA-1120) | Fetch column stats in bulk using new (Hive .13) HMS APIs |  Major | . | Lenni Kuff | Henry Robinson |
| [IMPALA-1668](https://issues.apache.org/jira/browse/IMPALA-1668) | TSaslServerTransport::Factory::getTransport() leaks transport map entries |  Blocker | . | Henry Robinson | Henry Robinson |
| [IMPALA-1674](https://issues.apache.org/jira/browse/IMPALA-1674) | IMPALA-1556 causes memory leak with secure connections |  Blocker | . | Henry Robinson | Henry Robinson |
| [IMPALA-1667](https://issues.apache.org/jira/browse/IMPALA-1667) | Impala JDBC Driver 2.5.14.1016 doesn't work with Impala 2.1 |  Major | . | David Ross | Henry Robinson |
| [IMPALA-1727](https://issues.apache.org/jira/browse/IMPALA-1727) | "unknown disk ids" message printed out for every file in table |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-1708](https://issues.apache.org/jira/browse/IMPALA-1708) | Partitions with 0 rows but \> 0 files are considered not to have stats in EXPLAIN |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-1597](https://issues.apache.org/jira/browse/IMPALA-1597) | Implement typeOf() builtin functions |  Major | . | Skye Wanderman-Milne | arthurpeng |
| [IMPALA-1622](https://issues.apache.org/jira/browse/IMPALA-1622) | Impala incorrectly handles double numbers with more than 19 significant decimal digits |  Major | . | Simone | Skye Wanderman-Milne |
| [IMPALA-1623](https://issues.apache.org/jira/browse/IMPALA-1623) | unix\_timestamp() does not return correct time |  Blocker | . | Sujit Chaubal | casey |
| [IMPALA-1467](https://issues.apache.org/jira/browse/IMPALA-1467) | Query option parsing should support "gb" in addition to "g" |  Major | . | Nong Li | casey |
| [IMPALA-1722](https://issues.apache.org/jira/browse/IMPALA-1722) | Clients that don't Fetch can cause Impala to busy spin in ScannerThreads |  Major | . | Nong Li | Ippokratis Pandis |
| [IMPALA-1630](https://issues.apache.org/jira/browse/IMPALA-1630) | query can fail but returns status ok due to race with scanner thread |  Major | . | Dan Hecht | Dan Hecht |
| [IMPALA-1614](https://issues.apache.org/jira/browse/IMPALA-1614) | COMPUTE STATS should quote all identifiers, including table names |  Major | . | Ruowen | Juan Yu |
| [IMPALA-1645](https://issues.apache.org/jira/browse/IMPALA-1645) | Impala should check if cache directive ID is still valid on table load |  Major | . | Martin Grund | Martin Grund |
| [IMPALA-1632](https://issues.apache.org/jira/browse/IMPALA-1632) | Warning when inserting into a cached table |  Critical | . | Alan Choi | Martin Grund |
| [IMPALA-1579](https://issues.apache.org/jira/browse/IMPALA-1579) | unix\_timestamp() builtins return INT |  Major | . | Henry Robinson | casey |
| [IMPALA-1676](https://issues.apache.org/jira/browse/IMPALA-1676) | Unix times have "y2k38" problem |  Blocker | . | casey | casey |
| [IMPALA-1750](https://issues.apache.org/jira/browse/IMPALA-1750) | Validate Cache Params fails on Upgrade from old Meta Store |  Critical | . | Martin Grund | Martin Grund |
| [IMPALA-1799](https://issues.apache.org/jira/browse/IMPALA-1799) | VARCHAR result type metadata has incorrect max size with HiveServer2. |  Blocker | . | Alexander Behm | Alexander Behm |
| [IMPALA-1629](https://issues.apache.org/jira/browse/IMPALA-1629) | Column stats for CHAR and VARCHAR not populated by COMPUTE STATS. |  Blocker | . | Alexander Behm | Alexander Behm |
| [IMPALA-1752](https://issues.apache.org/jira/browse/IMPALA-1752) | Setting -enable\_partitioned\_hash\_join=false will make the NULL AWARE LEFT ANTI JOIN produce incorrect results. |  Blocker | . | Alexander Behm | Alexander Behm |
| [IMPALA-1194](https://issues.apache.org/jira/browse/IMPALA-1194) | Memory leak using zlib on CentOS6 (and possibly other platforms) |  Blocker | . | Lenni Kuff | Matthew Jacobs |
| [IMPALA-1711](https://issues.apache.org/jira/browse/IMPALA-1711) | DROP TABLE fails after COMPUTE STATS and ALTER TABLE RENAME to a different database. |  Blocker | . | Alexander Behm | Alexander Behm |
| [IMPALA-1801](https://issues.apache.org/jira/browse/IMPALA-1801) | external-data-source-executor leaking global jni refs |  Critical | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-1567](https://issues.apache.org/jira/browse/IMPALA-1567) | Impala should ignore temporary files that are created copy operations of external tools |  Critical | . | Martin Grund | Alexander Behm |
| [IMPALA-1209](https://issues.apache.org/jira/browse/IMPALA-1209) | LOAD DATA command may fail in Impala if HDFS encryption is enabled |  Major | . | Lenni Kuff | Matthew Jacobs |
| [IMPALA-1655](https://issues.apache.org/jira/browse/IMPALA-1655) | Wrong results when running TPC-H Q9 in low memory |  Blocker | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-1666](https://issues.apache.org/jira/browse/IMPALA-1666) | GetColumns thrift request does not handle new types,  varchar maybe others |  Critical | . | Chip Sands | Alexander Behm |
| [IMPALA-1794](https://issues.apache.org/jira/browse/IMPALA-1794) | IoMgr infinite loop opening/closing file when shorter than cached metadata size |  Critical | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-1435](https://issues.apache.org/jira/browse/IMPALA-1435) | unix\_timestamp() default timezone different from Hive or MySQL |  Major | . | Julien Lehuen | casey |
| [IMPALA-1805](https://issues.apache.org/jira/browse/IMPALA-1805) | Impala's ACLs check do not consider all group ACLs, only checked first one. |  Critical | . | Juan Yu | Juan Yu |
| [IMPALA-1815](https://issues.apache.org/jira/browse/IMPALA-1815) | Crash in BufferedBlockMgr during CI run. |  Blocker | . | Alexander Behm | Ippokratis Pandis |
| [IMPALA-1646](https://issues.apache.org/jira/browse/IMPALA-1646) | Impala Will Not Run on Certain Intel CPUs |  Critical | . | Tom Wheeler | Dan Hecht |
| [IMPALA-1399](https://issues.apache.org/jira/browse/IMPALA-1399) | Impala crashing on startup on AMD based Servers |  Major | Infrastructure | Bruce Nelson | Dan Hecht |
| [IMPALA-1174](https://issues.apache.org/jira/browse/IMPALA-1174) | compiler options/pragmas to allow SSE 4.2 intrinsics without allowing compiler to auto generate sse instructions |  Minor | . | Dan Hecht | Dan Hecht |
| [IMPALA-1562](https://issues.apache.org/jira/browse/IMPALA-1562) | AnalyticEvalNode not properly handling nullable tuples |  Major | . | Taras Bobrovytsky | Matthew Jacobs |
| [IMPALA-1820](https://issues.apache.org/jira/browse/IMPALA-1820) | TPCH-Q20 memory requirement drastically increased after the partition patch |  Blocker | . | Taras Bobrovytsky | Ippokratis Pandis |
| [IMPALA-1690](https://issues.apache.org/jira/browse/IMPALA-1690) | When memory estimates are very high Impalad crashes without useful error messages |  Critical | . | Dileep Kumar | Martin Grund |
| [IMPALA-1691](https://issues.apache.org/jira/browse/IMPALA-1691) | Excessive Memory Usage in Catalogd (without stats) |  Major | . | Alan Choi | Henry Robinson |
| [IMPALA-1699](https://issues.apache.org/jira/browse/IMPALA-1699) | HdfsPartition's compareTo() method breaks contract |  Critical | . | Henry Robinson | Juan Yu |
| [IMPALA-1705](https://issues.apache.org/jira/browse/IMPALA-1705) | Cannot write Parquet files when values are larger than 64KB |  Critical | . | Ippokratis Pandis | Matthew Jacobs |
| [IMPALA-1836](https://issues.apache.org/jira/browse/IMPALA-1836) | Crash at PAGG::Partition::Close() in low mem situation |  Blocker | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-1559](https://issues.apache.org/jira/browse/IMPALA-1559) | DCHECK failure: FE produces tuple with decimal slot but agg fn returns double |  Blocker | . | Taras Bobrovytsky | Matthew Jacobs |
| [IMPALA-1437](https://issues.apache.org/jira/browse/IMPALA-1437) | Implement SHOW FILES for a table |  Major | . | Nong Li | Zuo Wang |
| [IMPALA-1615](https://issues.apache.org/jira/browse/IMPALA-1615) | DROP INCREMENTAL STATS shouldn't clear the row count for a partition |  Blocker | . | Henry Robinson | Henry Robinson |
| [IMPALA-1775](https://issues.apache.org/jira/browse/IMPALA-1775) | Query 14 from TPC-DS crashes due to high cardinality JOINS |  Major | . | Dileep Kumar | Dimitris Tsirogiannis |
| [IMPALA-1854](https://issues.apache.org/jira/browse/IMPALA-1854) | Impala may leak or use too many file descriptors |  Blocker | . | Silvius Rus | Nong Li |
| [IMPALA-1835](https://issues.apache.org/jira/browse/IMPALA-1835) | Crash on ScopedTimer::UpdateCounter at a DataStreamMgr::AddData call |  Blocker | . | Ippokratis Pandis | casey |
| [IMPALA-1808](https://issues.apache.org/jira/browse/IMPALA-1808) | Analytic function evaluation cannot handle partition/order by exprs with NaN |  Major | . | Taras Bobrovytsky | Matthew Jacobs |
| [IMPALA-1642](https://issues.apache.org/jira/browse/IMPALA-1642) | HiveUdfExecutor crashes on cleanup if the UDF doesn't exist. |  Blocker | . | Nong Li | Matthew Jacobs |
| [IMPALA-1860](https://issues.apache.org/jira/browse/IMPALA-1860) | INSERT OVERWRITE does not apply constant predicates |  Blocker | . | Henry Robinson | Alexander Behm |
| [IMPALA-1806](https://issues.apache.org/jira/browse/IMPALA-1806) | Impala is unable to read hive created parquet field: interpreting INT8 as BYTE\_ARRAY |  Blocker | . | Syed A. Hashmi | Skye Wanderman-Milne |
| [IMPALA-1802](https://issues.apache.org/jira/browse/IMPALA-1802) | Impala produces incorrect count(distinct xxx) result with limit clause |  Blocker | . | Huifang Qin | Dimitris Tsirogiannis |
| [IMPALA-1797](https://issues.apache.org/jira/browse/IMPALA-1797) | Alter view with sub-query fails with AnalysisException |  Critical | . | Alex Finch | Dimitris Tsirogiannis |
| [IMPALA-1502](https://issues.apache.org/jira/browse/IMPALA-1502) | Fix broken data errors tests |  Critical | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-1847](https://issues.apache.org/jira/browse/IMPALA-1847) | Redact sensitive information from graphical representation of plan tree in Web UI. |  Blocker | . | Alexander Behm | casey |
| [IMPALA-1712](https://issues.apache.org/jira/browse/IMPALA-1712) | Spurious stale block locality messages |  Blocker | . | Henry Robinson | Skye Wanderman-Milne |
| [IMPALA-1837](https://issues.apache.org/jira/browse/IMPALA-1837) | Failed DCHECK about literal decimal size when using COALESCE() |  Blocker | . | casey | Alexander Behm |
| [IMPALA-1851](https://issues.apache.org/jira/browse/IMPALA-1851) | Crash: Race condition trying to destruct DataStreamRecvr triggered by TransmitData() |  Blocker | . | casey | casey |
| [IMPALA-1865](https://issues.apache.org/jira/browse/IMPALA-1865) | Crash: impala::AggregateFunctions::StringValGetValue |  Blocker | . | Taras Bobrovytsky | Matthew Jacobs |
| [IMPALA-1841](https://issues.apache.org/jira/browse/IMPALA-1841) | Stress job causes Impala crash (impala::ExecNode::Close) (impala::BufferedBlockMgr::DeleteBlock) |  Blocker | . | Taras Bobrovytsky | Ippokratis Pandis |
| [IMPALA-1726](https://issues.apache.org/jira/browse/IMPALA-1726) | Statestore should garbage collect hung connections |  Critical | . | Henry Robinson | Henry Robinson |
| [IMPALA-1899](https://issues.apache.org/jira/browse/IMPALA-1899) | Partition fields sent to HMS incorrectly include partition columns during alter\* operations |  Blocker | . | Henry Robinson | Henry Robinson |
| [IMPALA-1895](https://issues.apache.org/jira/browse/IMPALA-1895) | DCHECK(non\_local\_outstanding\_writes \> 0) in FindBuffer |  Blocker | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-1890](https://issues.apache.org/jira/browse/IMPALA-1890) | Race between ~BufferedBlockMgr() destructor and WriteComplete() |  Blocker | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-1873](https://issues.apache.org/jira/browse/IMPALA-1873) | DCHECK: Validate() in impala::BufferedBlockMgr::WriteComplete |  Blocker | . | Taras Bobrovytsky | Ippokratis Pandis |
| [IMPALA-1810](https://issues.apache.org/jira/browse/IMPALA-1810) | Incorrect number of rows returned when this type of predicate is present: int IN (decimal, int) |  Blocker | . | Taras Bobrovytsky | Skye Wanderman-Milne |
| [IMPALA-1888](https://issues.apache.org/jira/browse/IMPALA-1888) | FIRST\_VALUE produces incorrect results with some strange windows |  Blocker | . | Taras Bobrovytsky | Matthew Jacobs |
| [IMPALA-1864](https://issues.apache.org/jira/browse/IMPALA-1864) | DCHECK: Could not find list for ptr. Allocation could have already been freed. |  Blocker | . | Taras Bobrovytsky | Ippokratis Pandis |
| [IMPALA-1476](https://issues.apache.org/jira/browse/IMPALA-1476) | Impala incorrectly handles text data missing a newline on the last line |  Blocker | . | Paul Wilkinson | Juan Yu |
| [IMPALA-1894](https://issues.apache.org/jira/browse/IMPALA-1894) | Old (non-partitioned) hash join and aggregation do not work |  Blocker | . | Dan Hecht | Matthew Jacobs |
| [IMPALA-1915](https://issues.apache.org/jira/browse/IMPALA-1915) | query hung in buffered block mgr and cannot be cancelled |  Blocker | . | Dan Hecht | Dan Hecht |
| [IMPALA-1863](https://issues.apache.org/jira/browse/IMPALA-1863) | q21 hangs when run with mem\_limit=780MB |  Blocker | . | Dan Hecht | Dan Hecht |
| [IMPALA-1680](https://issues.apache.org/jira/browse/IMPALA-1680) | COMPUTE STATS query itself throws missing stats warning |  Critical | . | Mala Chikka Kempanna | Juan Yu |
| [IMPALA-1385](https://issues.apache.org/jira/browse/IMPALA-1385) | Memory Limit Exceeded Error when running with multiple clients |  Major | . | Taras Bobrovytsky |  |
| [IMPALA-1488](https://issues.apache.org/jira/browse/IMPALA-1488) | Spilling hash table loses the matched flag info in case of right joins |  Critical | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-1910](https://issues.apache.org/jira/browse/IMPALA-1910) | Significant memory leak in HashJoin Node |  Major | . | Alan Choi | Dan Hecht |
| [IMPALA-1738](https://issues.apache.org/jira/browse/IMPALA-1738) | Remove usage of lexical\_cast in exprs (and elsewhere?) |  Major | . | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-625](https://issues.apache.org/jira/browse/IMPALA-625) | Fail to start impala state store when debug is disable |  Major | Backend | Antoine Amend | Henry Robinson |
| [IMPALA-2911](https://issues.apache.org/jira/browse/IMPALA-2911) | rand() is not a constant expr |  Critical | Backend | Juan Yu |  |
| [IMPALA-4219](https://issues.apache.org/jira/browse/IMPALA-4219) | No navigator lineage for CREATE/ALTER VIEW statements |  Major | Frontend | Lars Volker |  |
| [IMPALA-4221](https://issues.apache.org/jira/browse/IMPALA-4221) | test\_insert\_inherit\_permission fails with isilon |  Major | Infrastructure | Lars Volker |  |
| [IMPALA-2451](https://issues.apache.org/jira/browse/IMPALA-2451) | Conditional function 'notnullvalue' doesn't work |  Minor | Docs | Murshid Chalaev | John Russell |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-1376](https://issues.apache.org/jira/browse/IMPALA-1376) | Break up Planner.java |  Major | . | Marcel Kornacker | Alexander Behm |
| [IMPALA-1658](https://issues.apache.org/jira/browse/IMPALA-1658) | Add a compatibility option for reading parquet timestamps written by Hive |  Blocker | . | casey | casey |
| [IMPALA-1264](https://issues.apache.org/jira/browse/IMPALA-1264) | Fix and reenable test\_fetch\_first |  Blocker | . | Ishaan Joshi | Henry Robinson |


