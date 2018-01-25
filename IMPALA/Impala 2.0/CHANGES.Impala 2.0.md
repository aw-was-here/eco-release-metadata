
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

## Release Impala 2.0 - 2014-10-14



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-700](https://issues.apache.org/jira/browse/IMPALA-700) | Show functions should also list built-in functions |  Major | . | Alan Choi | Srinath |
| [IMPALA-1080](https://issues.apache.org/jira/browse/IMPALA-1080) | Implement "SET \<query\_option\>" as SQL statement |  Major | . | Alan Choi | Dan Hecht |
| [IMPALA-1162](https://issues.apache.org/jira/browse/IMPALA-1162) | Add profile and summary support to HS2 interface |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-731](https://issues.apache.org/jira/browse/IMPALA-731) | DECODE function |  Blocker | . | Justin Erickson | casey |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-514](https://issues.apache.org/jira/browse/IMPALA-514) | add time-series for HDFS and HBase IO |  Minor | . | Chris Leroy | Matthew Jacobs |
| [IMPALA-672](https://issues.apache.org/jira/browse/IMPALA-672) | Add time series for network IO |  Minor | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-968](https://issues.apache.org/jira/browse/IMPALA-968) | Impalad, Catalogd and Statestored should show Java memory consumption as a metric |  Major | . | Alan Choi | Lenni Kuff |
| [IMPALA-1053](https://issues.apache.org/jira/browse/IMPALA-1053) | Reduce repetition of Parquet+DECIMAL message on CDH 4 |  Minor | . | John Russell | Skye Wanderman-Milne |
| [IMPALA-1059](https://issues.apache.org/jira/browse/IMPALA-1059) | Quote the argument passed to USE by impala-shell -d |  Minor | . | John Russell | Abdullah Yousufi |
| [IMPALA-603](https://issues.apache.org/jira/browse/IMPALA-603) | Impala should be more robust against metastore connection failures and issue user-friendly error message if Hive metastore connection fails |  Minor | . | John Russell | Lenni Kuff |
| [IMPALA-601](https://issues.apache.org/jira/browse/IMPALA-601) | Shell should optionally read its configuration from a file |  Major | . | Henry Robinson | Abdullah Yousufi |
| [IMPALA-491](https://issues.apache.org/jira/browse/IMPALA-491) | Improve error message when queries fail due to  BE nodes dying |  Major | . | Alan Choi | Alexander Behm |
| [IMPALA-526](https://issues.apache.org/jira/browse/IMPALA-526) | Impala should report expression evaluation error instead of always returning null |  Major | . | Alan Choi | Skye Wanderman-Milne |
| [IMPALA-1058](https://issues.apache.org/jira/browse/IMPALA-1058) | Don't throw away SUMMARY until next successful statement |  Minor | . | John Russell | Alex Leblang |
| [IMPALA-1153](https://issues.apache.org/jira/browse/IMPALA-1153) | Avoid reprinting shell's welcome message after exceptions |  Minor | Clients | Ippokratis Pandis | Abdullah Yousufi |
| [IMPALA-1098](https://issues.apache.org/jira/browse/IMPALA-1098) | Show timing info for shell / ! commands |  Minor | . | John Russell | Alex Leblang |
| [IMPALA-1104](https://issues.apache.org/jira/browse/IMPALA-1104) | Allow creating Avro tables without column definitions. Allow COMPUTE STATS to always work on Impala-created Avro tables. |  Major | . | Julien Lehuen | Alexander Behm |
| [IMPALA-893](https://issues.apache.org/jira/browse/IMPALA-893) | Add debug logging for secure connections. |  Major | . | Ishaan Joshi | Mike Yoder |
| [IMPALA-1012](https://issues.apache.org/jira/browse/IMPALA-1012) | Change heuristic for rolling over a new parquet file on insert |  Major | . | Nong Li | Dan Hecht |
| [IMPALA-1323](https://issues.apache.org/jira/browse/IMPALA-1323) | Issue distinct error messages for unsupported subquery syntax |  Minor | . | John Russell | Dimitris Tsirogiannis |
| [IMPALA-407](https://issues.apache.org/jira/browse/IMPALA-407) | Subqueries not supported for "IN" clauses |  Major | . | Gwen Shapira |  |
| [IMPALA-1074](https://issues.apache.org/jira/browse/IMPALA-1074) | Improve handling of units for PARQUET\_BLOCK\_SIZE query option |  Major | . | John Russell |  |
| [IMPALA-706](https://issues.apache.org/jira/browse/IMPALA-706) | Impala-HBase performance parameter passing not clear in JDBC |  Minor | . | Doug Meil |  |
| [IMPALA-4222](https://issues.apache.org/jira/browse/IMPALA-4222) | Make --quiet flag suppress warning messages in impala-shell |  Major | Infrastructure | Lars Volker |  |
| [IMPALA-4538](https://issues.apache.org/jira/browse/IMPALA-4538) | Catalog web UI should tell whether the daemon is in recovery mode or not |  Minor | Catalog | Balazs Jeszenszky |  |
| [IMPALA-3117](https://issues.apache.org/jira/browse/IMPALA-3117) | Incorrect TRUNC documentation |  Minor | Docs | Matthew Isanuk | John Russell |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-688](https://issues.apache.org/jira/browse/IMPALA-688) | HBase show stats/compute stats tests are unstable |  Critical | . | Nong Li | Alexander Behm |
| [IMPALA-648](https://issues.apache.org/jira/browse/IMPALA-648) | Timestamp Parser Does Not like "T" |  Minor | . | David E. Wheeler | Chris Channing |
| [IMPALA-640](https://issues.apache.org/jira/browse/IMPALA-640) | ExecNode's should close their children as early as possible. |  Major | . | Alexander Behm | Matthew Jacobs |
| [IMPALA-630](https://issues.apache.org/jira/browse/IMPALA-630) | All Impala services should log process ID on start up and impala should include a builtin function for getting the impalad PID |  Major | . | Lenni Kuff | Matthew Jacobs |
| [IMPALA-713](https://issues.apache.org/jira/browse/IMPALA-713) | test\_scanners\_all\_table\_formats failing on HBase with wrong results in exhaustive test runs (possibly due to varying batch sizes) |  Major | . | Lenni Kuff | Matthew Jacobs |
| [IMPALA-655](https://issues.apache.org/jira/browse/IMPALA-655) | Impalad crashed when the Beeswax connection was disconnected |  Major | . | Mitsunori Komatsu | Nong Li |
| [IMPALA-674](https://issues.apache.org/jira/browse/IMPALA-674) | TestInsertBehaviour.test\_insert\_removes\_staging\_files occasionally fails on CDH4.5 |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-698](https://issues.apache.org/jira/browse/IMPALA-698) | LibCache should more gracefully handle the case where the user externally deletes the local cached file |  Minor | . | Nong Li | Nong Li |
| [IMPALA-642](https://issues.apache.org/jira/browse/IMPALA-642) | Conjunctive predicates on HBase table not working in some scenarios. |  Major | . | Alexander Behm | Dimitris Tsirogiannis |
| [IMPALA-959](https://issues.apache.org/jira/browse/IMPALA-959) | Impalad ASAN crash @ impala::AggFnEvaluator::SetOutputSlot(impala\_udf::AnyVal const\*, impala::Tuple\*) |  Blocker | . | Lenni Kuff | Nong Li |
| [IMPALA-884](https://issues.apache.org/jira/browse/IMPALA-884) | Some expressions are not analysed before serialisation to Thrift request |  Major | . | Henry Robinson | Alexander Behm |
| [IMPALA-921](https://issues.apache.org/jira/browse/IMPALA-921) | SET thinks default for EXPLAIN\_LEVEL is 0 but is really 1 |  Minor | . | John Russell | Abdullah Yousufi |
| [IMPALA-1079](https://issues.apache.org/jira/browse/IMPALA-1079) | Impalad crashes while trying to run tpcds-q34 |  Major | . | Ishaan Joshi | Nong Li |
| [IMPALA-1103](https://issues.apache.org/jira/browse/IMPALA-1103) | test\_cancellation.py causes coredump during COMPUTE STATS execution |  Major | . | Lenni Kuff | Alexander Behm |
| [IMPALA-1078](https://issues.apache.org/jira/browse/IMPALA-1078) | Report better error with empty literals |  Major | . | Nong Li | Dan Hecht |
| [IMPALA-599](https://issues.apache.org/jira/browse/IMPALA-599) | Confusing parsing error when when final token in statement is a string literal and that token is not included in the statement |  Major | . | Lenni Kuff |  |
| [IMPALA-246](https://issues.apache.org/jira/browse/IMPALA-246) | IMPALA\_HOME incorrect default path when installed via parcels |  Minor | Infrastructure | Hari Sekhon | Mark Grover |
| [IMPALA-766](https://issues.apache.org/jira/browse/IMPALA-766) | Improve performance of ALTER TABLE ADD PARTITION (and other DDL statements) at scale |  Major | . | Lenni Kuff | Anusha Dasarakothapalli |
| [IMPALA-1123](https://issues.apache.org/jira/browse/IMPALA-1123) | Combining fragments with compatible data partitions can lead to incorrect results due to type incompatibilities (missing casts). |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-1110](https://issues.apache.org/jira/browse/IMPALA-1110) | group\_concat agg function does not work with optional separator |  Major | . | David Ross | Dan Hecht |
| [IMPALA-1117](https://issues.apache.org/jira/browse/IMPALA-1117) | The policyReader\_ thread will simply die when an exception occurs |  Major | . | Jordan Lee | Lenni Kuff |
| [IMPALA-1069](https://issues.apache.org/jira/browse/IMPALA-1069) | Periodically GC IoBuffers |  Major | . | Nong Li | Nong Li |
| [IMPALA-1121](https://issues.apache.org/jira/browse/IMPALA-1121) | IllegalStateException upon JOIN of DECIMAL columns with different precision |  Major | . | casey | Nong Li |
| [IMPALA-1128](https://issues.apache.org/jira/browse/IMPALA-1128) | IllegalArgumentException with UNION and BIGINT and DECIMAL(19, 0) |  Major | . | casey | Nong Li |
| [IMPALA-639](https://issues.apache.org/jira/browse/IMPALA-639) | Report of per-node peak memory comsumption is incorrect. |  Major | . | Alexander Behm | Nong Li |
| [IMPALA-548](https://issues.apache.org/jira/browse/IMPALA-548) | Allow lzo index files to end with .INDEX |  Minor | . | Skye Wanderman-Milne | Henry Robinson |
| [IMPALA-1106](https://issues.apache.org/jira/browse/IMPALA-1106) | AnalysisException: Table does not exist, when using deeply nested WITH clauses |  Major | . | casey | Dimitris Tsirogiannis |
| [IMPALA-1101](https://issues.apache.org/jira/browse/IMPALA-1101) | WHERE condition ignored in simple query with RIGHT JOIN |  Major | . | casey | Alexander Behm |
| [IMPALA-89](https://issues.apache.org/jira/browse/IMPALA-89) | OVERWRITE behaviour is different from Hive for statically partitioned inserts |  Minor | . | Henry Robinson | Henry Robinson |
| [IMPALA-757](https://issues.apache.org/jira/browse/IMPALA-757) | Like predicate with "%%" pattern returns empty result set. |  Major | . | Alexander Behm | Ippokratis Pandis |
| [IMPALA-1116](https://issues.apache.org/jira/browse/IMPALA-1116) | The current codec interface does not support large files/buffers |  Major | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-1021](https://issues.apache.org/jira/browse/IMPALA-1021) | Load view validates the types are compatible with hive instead of when we create the view |  Major | . | Nong Li | Alexander Behm |
| [IMPALA-1129](https://issues.apache.org/jira/browse/IMPALA-1129) | Queries with NOT IN predicates do not handle nulls correctly and return wrong results when codegen is enabled. |  Major | . | Dimitris Tsirogiannis | Skye Wanderman-Milne |
| [IMPALA-1095](https://issues.apache.org/jira/browse/IMPALA-1095) | strleft/strright() with negative value for num\_chars causes Impala to crash |  Major | . | Lenni Kuff | Skye Wanderman-Milne |
| [IMPALA-755](https://issues.apache.org/jira/browse/IMPALA-755) | Escaped quote within quotes hangs the shell |  Critical | . | John Russell | Abdullah Yousufi |
| [IMPALA-1146](https://issues.apache.org/jira/browse/IMPALA-1146) | Fix JDBC tests to use Hive .12 JDBC driver instead of Hive .13 |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-677](https://issues.apache.org/jira/browse/IMPALA-677) | The columns of the rhs or a LEFT SEMI JOIN should not be visible outside the ON clause. |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-1157](https://issues.apache.org/jira/browse/IMPALA-1157) | Crash in HdfsParquetWriter when value size larger than page size |  Major | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-1130](https://issues.apache.org/jira/browse/IMPALA-1130) | Multi-line query with non UTF-8 compatible input throws UnicodeEncodeError |  Major | Clients | Abdullah Yousufi | Abdullah Yousufi |
| [IMPALA-1133](https://issues.apache.org/jira/browse/IMPALA-1133) | Ensure all webserver output is escaped |  Major | . | charles | Henry Robinson |
| [IMPALA-1091](https://issues.apache.org/jira/browse/IMPALA-1091) | Improve TScanRangeLocation struct and associated code |  Major | . | Nong Li | Dan Hecht |
| [IMPALA-958](https://issues.apache.org/jira/browse/IMPALA-958) | Excessively long query plan serialization time in FE when querying huge tables |  Major | . | Marcel Kornacker | Dan Hecht |
| [IMPALA-1160](https://issues.apache.org/jira/browse/IMPALA-1160) | Anti join produces wrong results in the presence of nulls |  Major | . | Dimitris Tsirogiannis | Ippokratis Pandis |
| [IMPALA-1126](https://issues.apache.org/jira/browse/IMPALA-1126) | Unable to disable strict unicode mode in the shell |  Blocker | . | Lenni Kuff | Abdullah Yousufi |
| [IMPALA-883](https://issues.apache.org/jira/browse/IMPALA-883) | COMPUTE STATS always returns "-1" for the number of rows in empty partitions (should return 0) |  Major | . | Lenni Kuff | Dan Hecht |
| [IMPALA-840](https://issues.apache.org/jira/browse/IMPALA-840) | Apparent parser bug with self join |  Minor | . | Jonathan Seidman |  |
| [IMPALA-1147](https://issues.apache.org/jira/browse/IMPALA-1147) | View compatibility tests need to be updated to run against Hive .13 |  Major | . | Lenni Kuff | Alex Leblang |
| [IMPALA-1191](https://issues.apache.org/jira/browse/IMPALA-1191) | TPCH Query 16 causes an Exception |  Major | . | Taras Bobrovytsky | Dimitris Tsirogiannis |
| [IMPALA-1196](https://issues.apache.org/jira/browse/IMPALA-1196) | Incorrect results with ANTI JOIN on INT col |  Major | . | casey | Nong Li |
| [IMPALA-1176](https://issues.apache.org/jira/browse/IMPALA-1176) | ANTI JOIN crash: Check failed: current\_probe\_row\_ != \_\_null |  Major | . | casey | Nong Li |
| [IMPALA-1182](https://issues.apache.org/jira/browse/IMPALA-1182) | Crash: Analytic with nested aggregate function |  Major | . | casey | Alexander Behm |
| [IMPALA-1183](https://issues.apache.org/jira/browse/IMPALA-1183) | Crash: Analytic with GROUP BY |  Major | . | casey | Alexander Behm |
| [IMPALA-1199](https://issues.apache.org/jira/browse/IMPALA-1199) | Wrong results returned with partitioned\_hash\_join turned on. |  Critical | . | Ishaan Joshi | Ippokratis Pandis |
| [IMPALA-1148](https://issues.apache.org/jira/browse/IMPALA-1148) | Imapa crashes running "select 1 from alltypes order by 1" |  Major | . | casey | Alexander Behm |
| [IMPALA-1200](https://issues.apache.org/jira/browse/IMPALA-1200) | Incorrect results in simple analytic query |  Major | . | casey | Matthew Jacobs |
| [IMPALA-1206](https://issues.apache.org/jira/browse/IMPALA-1206) | Crash when running query selecting 2 analytic exprs |  Major | . | casey | Matthew Jacobs |
| [IMPALA-1177](https://issues.apache.org/jira/browse/IMPALA-1177) | Incorrect results in query with ANTI JOIN on tinyint column with nulls |  Major | . | casey | Ippokratis Pandis |
| [IMPALA-1214](https://issues.apache.org/jira/browse/IMPALA-1214) | impala crashes on TPCH-Q5 with partitioned\_hash\_joins enabled. |  Major | . | Ishaan Joshi | Nong Li |
| [IMPALA-1124](https://issues.apache.org/jira/browse/IMPALA-1124) | Issue with Group By on a timestamp field |  Critical | . | Nicolas PHUNG | Alexander Behm |
| [IMPALA-1195](https://issues.apache.org/jira/browse/IMPALA-1195) | IllegalStateException in query with agg scalar subquery |  Major | . | casey | Dimitris Tsirogiannis |
| [IMPALA-1216](https://issues.apache.org/jira/browse/IMPALA-1216) | "IllegalStateExpection: null" when running query with "foo IN (bar, baz, (scalar subquery), ...)" |  Major | . | casey | Dimitris Tsirogiannis |
| [IMPALA-1213](https://issues.apache.org/jira/browse/IMPALA-1213) | DCHECK failed: tuple size \<= 2 \* batch size |  Major | . | casey | Matthew Jacobs |
| [IMPALA-1211](https://issues.apache.org/jira/browse/IMPALA-1211) | Query should be unregistered if QueryExecState::SetResultCache returns error status |  Major | . | Dan Hecht | Dan Hecht |
| [IMPALA-1203](https://issues.apache.org/jira/browse/IMPALA-1203) | Correlated scalar agg subquery may be incorrectly rewritten if it has a LIMIT 1 |  Major | . | casey | Dimitris Tsirogiannis |
| [IMPALA-1186](https://issues.apache.org/jira/browse/IMPALA-1186) | Impala Profile and Summary should use Explain Level 3 |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-1220](https://issues.apache.org/jira/browse/IMPALA-1220) | NPE in AnalyticWindow during cloning and thrift serialization (default right boundary incorrect?) |  Major | . | casey | Marcel Kornacker |
| [IMPALA-1201](https://issues.apache.org/jira/browse/IMPALA-1201) | IllegalStateException in query with inline view including simple analytic query |  Major | . | casey | Alexander Behm |
| [IMPALA-1212](https://issues.apache.org/jira/browse/IMPALA-1212) | Accept subquery as LHS or RHS of BETWEEN operator |  Major | . | John Russell | Dimitris Tsirogiannis |
| [IMPALA-1233](https://issues.apache.org/jira/browse/IMPALA-1233) | Crash running query with analytic in WITH clause |  Major | . | casey | Matthew Jacobs |
| [IMPALA-1232](https://issues.apache.org/jira/browse/IMPALA-1232) | Crash cancelling long running analytic query |  Major | . | casey | Matthew Jacobs |
| [IMPALA-1239](https://issues.apache.org/jira/browse/IMPALA-1239) | NDV() with OVER() clause crashes impalad |  Major | . | John Russell | Alexander Behm |
| [IMPALA-1231](https://issues.apache.org/jira/browse/IMPALA-1231) | Analytic query with HAVING: IllegalStateException: Failed analysis after expr substitution |  Major | . | casey | Marcel Kornacker |
| [IMPALA-1241](https://issues.apache.org/jira/browse/IMPALA-1241) | AVG() returns only NULL |  Major | . | John Russell | Skye Wanderman-Milne |
| [IMPALA-995](https://issues.apache.org/jira/browse/IMPALA-995) | Join Hint is dropped when used inside a view |  Major | . | Alan Choi | Alexander Behm |
| [IMPALA-1257](https://issues.apache.org/jira/browse/IMPALA-1257) | expr-test fails with ASAN enabled |  Blocker | . | Lenni Kuff | Skye Wanderman-Milne |
| [IMPALA-1259](https://issues.apache.org/jira/browse/IMPALA-1259) | impalad crashes during cancellation in partitioned aggregation node |  Critical | . | Ishaan Joshi | Nong Li |
| [IMPALA-1228](https://issues.apache.org/jira/browse/IMPALA-1228) | Incorrect rewrite of scalar agg subquery (zeroifnull wrong column?) |  Major | . | casey | Dimitris Tsirogiannis |
| [IMPALA-1247](https://issues.apache.org/jira/browse/IMPALA-1247) | Distinct + non-distinct Avg aggregation crashes impalad. |  Blocker | . | Alexander Behm | Alexander Behm |
| [IMPALA-1219](https://issues.apache.org/jira/browse/IMPALA-1219) | Multiple impalad crashes while running the tpch 100gb dataset with partitioned\_hash\_join enabled. |  Blocker | . | Ishaan Joshi | Nong Li |
| [IMPALA-1163](https://issues.apache.org/jira/browse/IMPALA-1163) | Codegen: "... WHERE (bool\_col\_1 and bool\_col\_2) IS NULL" is always false |  Blocker | . | casey | Skye Wanderman-Milne |
| [IMPALA-1164](https://issues.apache.org/jira/browse/IMPALA-1164) | NDV Aggregate Function returns a STRING not a BIGINT |  Minor | . | David Ross | Alexander Behm |
| [IMPALA-1187](https://issues.apache.org/jira/browse/IMPALA-1187) | Optionally auto transform multiple count distincts as NDV |  Critical | . | Lenni Kuff | Alexander Behm |
| [IMPALA-1072](https://issues.apache.org/jira/browse/IMPALA-1072) | Parquet writer is miscounting the byte estimate of the current file. |  Major | . | Nong Li | Dan Hecht |
| [IMPALA-1105](https://issues.apache.org/jira/browse/IMPALA-1105) | Usage of TRUNC with string timestamp reliably crashes node |  Major | . | Colin Marc | Victor Bittorf |
| [IMPALA-1260](https://issues.apache.org/jira/browse/IMPALA-1260) | Can't select from view - perplexing metadata error |  Blocker | . | John Russell | Alexander Behm |
| [IMPALA-1109](https://issues.apache.org/jira/browse/IMPALA-1109) | Timestamp Cast Returns invalid TIMESTAMP |  Major | . | Victor Bittorf | Victor Bittorf |
| [IMPALA-1253](https://issues.apache.org/jira/browse/IMPALA-1253) | LAST\_VALUE function returns incorrect results |  Major | . | Taras Bobrovytsky | Matthew Jacobs |
| [IMPALA-1269](https://issues.apache.org/jira/browse/IMPALA-1269) | Analytic fns w/ start offset to CURRENT ROW may not maintain window correctly |  Major | . | casey | Matthew Jacobs |
| [IMPALA-1273](https://issues.apache.org/jira/browse/IMPALA-1273) | Incorrect results of analytic over large window |  Major | . | casey | Matthew Jacobs |
| [IMPALA-1279](https://issues.apache.org/jira/browse/IMPALA-1279) | Impala does not employ ACLs when checking path permissions for LOAD and INSERT |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-1266](https://issues.apache.org/jira/browse/IMPALA-1266) | tpcds-q6 500gb gets aborted with an out of memory error even with partitioned\_aggregation enabled. |  Blocker | . | Ishaan Joshi | Nong Li |
| [IMPALA-1222](https://issues.apache.org/jira/browse/IMPALA-1222) | DecimalValue.h Mod should not ignore overflow result from AdjustToSameScale |  Major | . | Dan Hecht | Nong Li |
| [IMPALA-1282](https://issues.apache.org/jira/browse/IMPALA-1282) | When same column is selected multiple times it is incorrectly detected as ambiguous when used in a GROUP BY/ORDER BY |  Blocker | . | Lenni Kuff | Alexander Behm |
| [IMPALA-1274](https://issues.apache.org/jira/browse/IMPALA-1274) | Null-aware anti-join crashes impalad |  Major | . | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-1281](https://issues.apache.org/jira/browse/IMPALA-1281) | Subquery: NotImplementedException: Join with '$a$1' requires at least one conjunctive |  Major | . | casey | Alexander Behm |
| [IMPALA-1249](https://issues.apache.org/jira/browse/IMPALA-1249) | Left anti join returns wrong results on empty table |  Major | . | Dimitris Tsirogiannis | Alexander Behm |
| [IMPALA-1235](https://issues.apache.org/jira/browse/IMPALA-1235) | impala-shell prompt gets out of synch with connected host |  Blocker | Clients | John Russell | Ishaan Joshi |
| [IMPALA-1283](https://issues.apache.org/jira/browse/IMPALA-1283) | Update HS2 API to support CHAR |  Blocker | . | Lenni Kuff | Victor Bittorf |
| [IMPALA-1248](https://issues.apache.org/jira/browse/IMPALA-1248) | Cast to short CHAR() value, insert into long CHAR() column, crashes impalad |  Blocker | . | John Russell | Victor Bittorf |
| [IMPALA-1180](https://issues.apache.org/jira/browse/IMPALA-1180) | Relax Impala to Impala-lzo version checks and move more code into the main Impala repo |  Blocker | . | Lenni Kuff | Skye Wanderman-Milne |
| [IMPALA-1268](https://issues.apache.org/jira/browse/IMPALA-1268) | UDAs crash in Close() if agg\_fn\_ctxs are not properly initialized |  Blocker | . | Matthew Jacobs | Skye Wanderman-Milne |
| [IMPALA-1215](https://issues.apache.org/jira/browse/IMPALA-1215) | Results of "foo NOT IN (subquery)" incorrect wrt foo being NULL |  Major | . | casey | Nong Li |
| [IMPALA-1272](https://issues.apache.org/jira/browse/IMPALA-1272) | setting compression codec that parquet can't handle crashes impalad |  Major | . | Dan Hecht | Dan Hecht |
| [IMPALA-1295](https://issues.apache.org/jira/browse/IMPALA-1295) | create view does not support decimal column? |  Blocker | . | Jiachangxin | Lenni Kuff |
| [IMPALA-1292](https://issues.apache.org/jira/browse/IMPALA-1292) | Incorrect result in analytic SUM when ORDER BY column is null |  Blocker | . | casey | Matthew Jacobs |
| [IMPALA-1111](https://issues.apache.org/jira/browse/IMPALA-1111) | UDF memory allocation returns un-aligned memory, may cause problems with clang |  Blocker | . | Matthew Jacobs | Skye Wanderman-Milne |
| [IMPALA-1245](https://issues.apache.org/jira/browse/IMPALA-1245) | Fix log spew (mainly from FE) |  Blocker | . | Lenni Kuff | Marcel Kornacker |
| [IMPALA-1289](https://issues.apache.org/jira/browse/IMPALA-1289) | Predicate dropped from complicated query with multiple subqueries |  Major | . | casey | Alexander Behm |
| [IMPALA-1256](https://issues.apache.org/jira/browse/IMPALA-1256) | Nested analytic: AnalysisException: select list expression not produced by aggregation output |  Major | . | casey | Marcel Kornacker |
| [IMPALA-1280](https://issues.apache.org/jira/browse/IMPALA-1280) | Crash running analytic with LEFT SEMI JOIN |  Blocker | . | casey | Marcel Kornacker |
| [IMPALA-1118](https://issues.apache.org/jira/browse/IMPALA-1118) | Incorrect plan after reordering predicates (inner join following outer join) |  Blocker | . | casey | Alexander Behm |
| [IMPALA-1165](https://issues.apache.org/jira/browse/IMPALA-1165) | Predicate dropped: Inline view + DISTINCT aggregate in outer query |  Major | . | casey | Dimitris Tsirogiannis |
| [IMPALA-1208](https://issues.apache.org/jira/browse/IMPALA-1208) | Impala should encrypt data spilled to disk when HDFS data is encrypted |  Major | . | Lenni Kuff | Mike Yoder |
| [IMPALA-1297](https://issues.apache.org/jira/browse/IMPALA-1297) | Results of NOT IN (subquery) may not be correct if subquery results in NULLs |  Major | . | casey | Dimitris Tsirogiannis |
| [IMPALA-1178](https://issues.apache.org/jira/browse/IMPALA-1178) | Impalad crashes on query cancellation |  Blocker | . | Abdullah Yousufi | Dan Hecht |
| [IMPALA-1296](https://issues.apache.org/jira/browse/IMPALA-1296) | Failed DCHECK(partition\_by\_eq\_expr\_ctx\_ != NULL \|\| order\_by\_eq\_expr\_ctx\_ != NULL) |  Major | . | casey | Matthew Jacobs |
| [IMPALA-1293](https://issues.apache.org/jira/browse/IMPALA-1293) | Crash running analytic with window ROWS BETWEEN UNBOUNDED PRECEDING AND \<large\> PRECEDING |  Major | . | casey | Matthew Jacobs |
| [IMPALA-1246](https://issues.apache.org/jira/browse/IMPALA-1246) | Failed Preconditions check in isEquivSlots() for TPCDS-Q47 |  Major | . | Alexander Behm | Marcel Kornacker |
| [IMPALA-1301](https://issues.apache.org/jira/browse/IMPALA-1301) | Invalid rewrite of uncorrelated scalar subquery when outer expr is on both sides of binary predicate |  Major | . | casey | Dimitris Tsirogiannis |
| [IMPALA-1185](https://issues.apache.org/jira/browse/IMPALA-1185) | Disable writing to Avro/Seq by default |  Blocker | . | Lenni Kuff | Victor Bittorf |
| [IMPALA-1308](https://issues.apache.org/jira/browse/IMPALA-1308) | compressed text read can OOM the query in the scanner threads |  Blocker | . | Nong Li | Skye Wanderman-Milne |
| [IMPALA-1152](https://issues.apache.org/jira/browse/IMPALA-1152) | Incorrect perms on /var/tmp (drwxrwxr-t instead of drwxrwxrwt) causes Kerberos problems |  Major | . | Henry Robinson | Mike Yoder |
| [IMPALA-1310](https://issues.apache.org/jira/browse/IMPALA-1310) | hdfs-parquet-table-writer.cc:818] Check failed: file\_size\_limit\_ \> DATA\_PAGE\_SIZE \* columns\_.size() (6291456 vs. 131072000) |  Major | . | Dan Hecht | Dan Hecht |
| [IMPALA-1271](https://issues.apache.org/jira/browse/IMPALA-1271) | Query with LAG(...) analytic fn hits DCHECK: ctx-\>IsArgConstant(2) @ aggregate-functions.cc:1275 |  Blocker | . | Lenni Kuff | Marcel Kornacker |
| [IMPALA-1100](https://issues.apache.org/jira/browse/IMPALA-1100) | AnalysisException: duplicated inline view column alias, when definition has "with" and inline view |  Major | . | casey | Dimitris Tsirogiannis |
| [IMPALA-1119](https://issues.apache.org/jira/browse/IMPALA-1119) | Analysis Exception: CTAS, query runs fine on its own |  Major | . | casey | Dimitris Tsirogiannis |
| [IMPALA-1311](https://issues.apache.org/jira/browse/IMPALA-1311) | Memory Layout for non 4/8 bytes datatypes |  Major | . | Martin Grund | Victor Bittorf |
| [IMPALA-1304](https://issues.apache.org/jira/browse/IMPALA-1304) | spilling under stress can cause a failed dcheck |  Blocker | . | Nong Li | Nong Li |
| [IMPALA-1312](https://issues.apache.org/jira/browse/IMPALA-1312) | Failed DCHECK\_EQ(num\_pinned\_, NumPinned(blocks\_)) |  Major | . | casey | Nong Li |
| [IMPALA-1299](https://issues.apache.org/jira/browse/IMPALA-1299) | Analytic should be allowed in correlated EXISTS subquery |  Major | . | casey | Dimitris Tsirogiannis |
| [IMPALA-1243](https://issues.apache.org/jira/browse/IMPALA-1243) | Incorrect plan in analytic using inline view |  Blocker | . | casey | Marcel Kornacker |
| [IMPALA-1303](https://issues.apache.org/jira/browse/IMPALA-1303) | Agg tuple descs not right with num\_nodes=1 and distinct |  Major | . | Nong Li | Alexander Behm |
| [IMPALA-1204](https://issues.apache.org/jira/browse/IMPALA-1204) | ANTI JOIN crash running complicated query with right joins |  Blocker | . | casey | Ippokratis Pandis |
| [IMPALA-1278](https://issues.apache.org/jira/browse/IMPALA-1278) | Very bad cardinality estimate with left/right anti join |  Critical | . | Nong Li | Alexander Behm |
| [IMPALA-1320](https://issues.apache.org/jira/browse/IMPALA-1320) | 'a' should be equal to CAST('a' AS CHAR(2)) |  Blocker | . | casey | Victor Bittorf |
| [IMPALA-1316](https://issues.apache.org/jira/browse/IMPALA-1316) | impalad crash on VARCHAR query |  Blocker | . | John Russell | Victor Bittorf |
| [IMPALA-1087](https://issues.apache.org/jira/browse/IMPALA-1087) | Loading UDF/UDA should return with the correct message. |  Major | . | Nong Li | Matthew Jacobs |
| [IMPALA-1210](https://issues.apache.org/jira/browse/IMPALA-1210) | Log Java version at impalad/catalogd startup |  Minor | . | Lenni Kuff | Juan Yu |
| [IMPALA-1236](https://issues.apache.org/jira/browse/IMPALA-1236) | Queries with union in inline view have empty resource requests |  Critical | . | Henry Robinson | Henry Robinson |
| [IMPALA-1302](https://issues.apache.org/jira/browse/IMPALA-1302) | Incorrect result of FIRST\_VALUE query |  Major | . | casey | Matthew Jacobs |
| [IMPALA-1298](https://issues.apache.org/jira/browse/IMPALA-1298) | Add var\_pop and var\_samp as aliases for variance \_pop and variance\_samp |  Major | . | Justin Erickson | Henry Robinson |
| [IMPALA-1326](https://issues.apache.org/jira/browse/IMPALA-1326) | Codegen: Crash running agg with LEFT JOINS (incorrect result w/out codegen) |  Blocker | . | casey | Skye Wanderman-Milne |
| [IMPALA-1290](https://issues.apache.org/jira/browse/IMPALA-1290) | AnalyticEvalNode should have results ready after Open() |  Major | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-1319](https://issues.apache.org/jira/browse/IMPALA-1319) | After casting INT to CHAR, there may be a lot of trailing junk chars |  Blocker | . | casey | Victor Bittorf |
| [IMPALA-1336](https://issues.apache.org/jira/browse/IMPALA-1336) | Set the shell's unix environment's locale settings to allow for UTF-8 compatibility. |  Major | Clients | Ishaan Joshi | Ishaan Joshi |
| [IMPALA-1314](https://issues.apache.org/jira/browse/IMPALA-1314) | Impalad crashes during cancellation on the insert path. |  Blocker | . | Ishaan Joshi | Skye Wanderman-Milne |
| [IMPALA-1317](https://issues.apache.org/jira/browse/IMPALA-1317) | Shell doesn't close DDL queries |  Blocker | . | Henry Robinson | Ishaan Joshi |
| [IMPALA-1335](https://issues.apache.org/jira/browse/IMPALA-1335) | Wrong subquery rewrite for correlated scalar subqueries with complex exprs |  Major | . | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-1322](https://issues.apache.org/jira/browse/IMPALA-1322) | Impalad may crash when JOIN predicates contain a mix of CHAR/VARCHAR columns |  Blocker | . | casey | Victor Bittorf |
| [IMPALA-1337](https://issues.apache.org/jira/browse/IMPALA-1337) | Incorrect results in aggregate query grouping by CHAR/VARCHAR |  Blocker | . | casey | Victor Bittorf |
| [IMPALA-1261](https://issues.apache.org/jira/browse/IMPALA-1261) | Impala shell should support new commented hint style. |  Blocker | . | Alexander Behm | Ishaan Joshi |
| [IMPALA-1334](https://issues.apache.org/jira/browse/IMPALA-1334) | Impala does not map principals to lowercase, affecting Sentry authorisation |  Blocker | . | Henry Robinson | Henry Robinson |
| [IMPALA-1338](https://issues.apache.org/jira/browse/IMPALA-1338) | HDFS does not return all ACLs in getAclStatus() |  Blocker | . | Henry Robinson | Juan Yu |
| [IMPALA-1324](https://issues.apache.org/jira/browse/IMPALA-1324) | AnalysisException: Incompatible return types (appartently cols were reordered internally) |  Blocker | . | casey | Alexander Behm |
| [IMPALA-1307](https://issues.apache.org/jira/browse/IMPALA-1307) | IllegalStateException while planning scalar subquery with complex correlated predicate |  Major | . | Dimitris Tsirogiannis | Alexander Behm |
| [IMPALA-1288](https://issues.apache.org/jira/browse/IMPALA-1288) | Precondition failed: "partExprs.size() == dataPartition\_.getPartitionExprs().size()" |  Blocker | . | casey | Alexander Behm |
| [IMPALA-1315](https://issues.apache.org/jira/browse/IMPALA-1315) | Impala crashes for text/gzip on cluster run |  Blocker | . | Nong Li | Nong Li |
| [IMPALA-1339](https://issues.apache.org/jira/browse/IMPALA-1339) | Incorrect results in agg query grouping by CHAR (duplicate NULLs) |  Blocker | . | casey | Victor Bittorf |
| [IMPALA-1344](https://issues.apache.org/jira/browse/IMPALA-1344) | Crash running simple analytic with VARCHAR |  Blocker | . | casey | Victor Bittorf |
| [IMPALA-1330](https://issues.apache.org/jira/browse/IMPALA-1330) | SHOW PARTITIONS doesn't return information on partition ids from HiveServer2 |  Major | . | Uri Laserson | Henry Robinson |
| [IMPALA-1318](https://issues.apache.org/jira/browse/IMPALA-1318) | Analyzer does not mark tuple as nullable after NAAJ |  Blocker | . | Ippokratis Pandis | Alexander Behm |
| [IMPALA-1340](https://issues.apache.org/jira/browse/IMPALA-1340) | Crash running UNION of CHAR and STRING cols |  Blocker | . | casey | Skye Wanderman-Milne |
| [IMPALA-1345](https://issues.apache.org/jira/browse/IMPALA-1345) | Impala's sql scanner does not accept a comment starting with /\*\* with another non-star character before \*/ |  Major | . | Ishaan Joshi | Dan Hecht |
| [IMPALA-1342](https://issues.apache.org/jira/browse/IMPALA-1342) | Incorrect plan when WHERE and outer JOIN predicates share a column |  Blocker | . | casey | Alexander Behm |
| [IMPALA-1348](https://issues.apache.org/jira/browse/IMPALA-1348) | Failde DCHECK(eos) running query with NOT IN subquery |  Blocker | . | casey | Nong Li |
| [IMPALA-1343](https://issues.apache.org/jira/browse/IMPALA-1343) | "ERROR: invalid tuple\_idx" running query with multiple subqueries |  Major | . | casey | Alexander Behm |
| [IMPALA-1350](https://issues.apache.org/jira/browse/IMPALA-1350) | symbol lookup for IR UDFs is broken |  Major | . | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-1332](https://issues.apache.org/jira/browse/IMPALA-1332) | Check failed: mem\_tracker()-\>consumption() == 0 (17039360 vs. 0) Leaked memory. |  Major | . | casey | Nong Li |
| [IMPALA-1234](https://issues.apache.org/jira/browse/IMPALA-1234) | Empty result set from a view in union fails planning or produces wrong results |  Blocker | . | casey | Matthew Jacobs |
| [IMPALA-1355](https://issues.apache.org/jira/browse/IMPALA-1355) | Spilling queries fail with "Could not spill row" |  Blocker | . | Nong Li |  |
| [IMPALA-1353](https://issues.apache.org/jira/browse/IMPALA-1353) | Reuse of a column in JOIN predicate may lead to incorrect results |  Blocker | . | casey | Alexander Behm |
| [IMPALA-1351](https://issues.apache.org/jira/browse/IMPALA-1351) | Failed DCHECK(!status\_.ok()) in complicated query |  Major | . | casey | Nong Li |
| [IMPALA-1358](https://issues.apache.org/jira/browse/IMPALA-1358) | IoMgr is accumulating io buffers |  Blocker | . | Nong Li | Skye Wanderman-Milne |
| [IMPALA-1102](https://issues.apache.org/jira/browse/IMPALA-1102) | Query with self joined table may produce incorrect results |  Blocker | . | casey | Alexander Behm |
| [IMPALA-1189](https://issues.apache.org/jira/browse/IMPALA-1189) | Expose metrics for when a query spills to disk |  Major | . | Lenni Kuff | Nong Li |
| [IMPALA-1377](https://issues.apache.org/jira/browse/IMPALA-1377) | Partitioned Agg is leaking |  Blocker | . | Nong Li | Skye Wanderman-Milne |
| [IMPALA-1398](https://issues.apache.org/jira/browse/IMPALA-1398) | Impala does not properly handle closed catalogd connections. |  Major | . | Alexander Behm |  |
| [IMPALA-1741](https://issues.apache.org/jira/browse/IMPALA-1741) | Error when decimal value in WHERE clause is longer than 19 digits |  Major | Clients | Andrey Dmitriev |  |
| [IMPALA-1613](https://issues.apache.org/jira/browse/IMPALA-1613) | Impala Driver Struggles with Tables with Decimals |  Major | . | David Ross |  |
| [IMPALA-1447](https://issues.apache.org/jira/browse/IMPALA-1447) | Document workaround for Hive issue to manually set table stats |  Major | Docs | Matthew Jacobs | John Russell |
| [IMPALA-1151](https://issues.apache.org/jira/browse/IMPALA-1151) | Debug webpage asan use after free |  Blocker | Clients | Nong Li | Henry Robinson |
| [IMPALA-4210](https://issues.apache.org/jira/browse/IMPALA-4210) | Impala uses an older version of httpcore which breaks KMS integration |  Blocker | Infrastructure | Lars Volker |  |
| [IMPALA-5785](https://issues.apache.org/jira/browse/IMPALA-5785) | Purge local connection pool if node statestore marks node offline |  Critical | Backend | Lars Volker |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-717](https://issues.apache.org/jira/browse/IMPALA-717) | Investigate performance variability on 10-node |  Major | . | Nong Li | Nong Li |
| [IMPALA-52](https://issues.apache.org/jira/browse/IMPALA-52) | Add support for compressed text |  Major | . | Nong Li | Nong Li |
| [IMPALA-1237](https://issues.apache.org/jira/browse/IMPALA-1237) | Reconsider allowing uncorrelated EXISTS subqueries |  Major | . | casey | Dimitris Tsirogiannis |
| [IMPALA-1263](https://issues.apache.org/jira/browse/IMPALA-1263) | Fix the jdbc client in the CDH4 branch. |  Major | . | Ishaan Joshi | Henry Robinson |


