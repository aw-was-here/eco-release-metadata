
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

## Release Impala 2.1 - 2014-12-22



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-181](https://issues.apache.org/jira/browse/IMPALA-181) | ORDER BY 1 gives me a syntax error in certain cases |  Minor | . | Uri Laserson | Martin Grund |
| [IMPALA-1122](https://issues.apache.org/jira/browse/IMPALA-1122) | COMPUTE STATS for only new partitions/columns |  Major | . | Julien Lehuen | Henry Robinson |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-1300](https://issues.apache.org/jira/browse/IMPALA-1300) | Unioning queries with subqueries could be supported |  Major | . | casey | Dimitris Tsirogiannis |
| [IMPALA-1424](https://issues.apache.org/jira/browse/IMPALA-1424) | ABS(int) should return an INT instead of DOUBLE |  Major | . | casey | Martin Grund |
| [IMPALA-1154](https://issues.apache.org/jira/browse/IMPALA-1154) | Codegen: Make "select \* from very\_wide\_table limit 1" faster (now takes ~5 mins @ ~1,400 columns) |  Major | . | casey | Martin Grund |
| [IMPALA-1479](https://issues.apache.org/jira/browse/IMPALA-1479) | 'Received report for unknown query ID...' shouldn't log at INFO |  Trivial | . | Henry Robinson | Henry Robinson |
| [IMPALA-686](https://issues.apache.org/jira/browse/IMPALA-686) | Optimizer should determine whether codegen should be turned on or off |  Major | . | Alan Choi |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-1328](https://issues.apache.org/jira/browse/IMPALA-1328) | Process failure tests are flaky |  Major | . | Alex Leblang | Alex Leblang |
| [IMPALA-1354](https://issues.apache.org/jira/browse/IMPALA-1354) | Crash in analytic ordered by constant |  Major | . | casey | Matthew Jacobs |
| [IMPALA-1217](https://issues.apache.org/jira/browse/IMPALA-1217) | Error running refesh command after restarting catalogd |  Major | . | Alex Leblang | Lenni Kuff |
| [IMPALA-1189](https://issues.apache.org/jira/browse/IMPALA-1189) | Expose metrics for when a query spills to disk |  Major | . | Lenni Kuff | Nong Li |
| [IMPALA-868](https://issues.apache.org/jira/browse/IMPALA-868) | Logging of child query operation ID prints garbage |  Major | . | Lenni Kuff |  |
| [IMPALA-1384](https://issues.apache.org/jira/browse/IMPALA-1384) | Show table stats test failing |  Major | . | Nong Li | Henry Robinson |
| [IMPALA-1380](https://issues.apache.org/jira/browse/IMPALA-1380) | Select empty set with no tuples generates an invalidate thrift PlanNode |  Blocker | . | Nong Li | Matthew Jacobs |
| [IMPALA-1365](https://issues.apache.org/jira/browse/IMPALA-1365) | TPC-DS Queries (33,56,60) - FE Illegal State Exception null |  Major | . | Martin Grund | casey |
| [IMPALA-1287](https://issues.apache.org/jira/browse/IMPALA-1287) | explain\_level=0 for merging exchange is too vebose |  Major | . | Nong Li | Martin Grund |
| [IMPALA-1395](https://issues.apache.org/jira/browse/IMPALA-1395) | Pathologically slow query with codegen disabled causes exhaustive test run to fail. |  Major | . | Alexander Behm | Matthew Jacobs |
| [IMPALA-1425](https://issues.apache.org/jira/browse/IMPALA-1425) | Subqueries are not supported in a UNION query |  Major | . | Alex Finch |  |
| [IMPALA-1357](https://issues.apache.org/jira/browse/IMPALA-1357) | Failed Preconditions.checkState(literalPredicate.isConstant()) (IllegalStateException: null) |  Blocker | . | casey | Matthew Jacobs |
| [IMPALA-1444](https://issues.apache.org/jira/browse/IMPALA-1444) | When using both a ldaps:// URI and --ldap\_tls argument - ldap authentication does not work |  Minor | . | Philippe Marseille | Mike Yoder |
| [IMPALA-1412](https://issues.apache.org/jira/browse/IMPALA-1412) | CREATE VIEW AS SELECT produces incorrect results |  Major | . | Taras Bobrovytsky | Dimitris Tsirogiannis |
| [IMPALA-1433](https://issues.apache.org/jira/browse/IMPALA-1433) | Min/max analytic fns should support windows that can be rewritten to be unbounded preceding |  Minor | . | casey | Matthew Jacobs |
| [IMPALA-1451](https://issues.apache.org/jira/browse/IMPALA-1451) | Region with empty row in HBase triggers NPE in Frontend during Planning |  Major | . | Martin Grund | Martin Grund |
| [IMPALA-1441](https://issues.apache.org/jira/browse/IMPALA-1441) | Wrong results with outer joins in inline views |  Major | . | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-1134](https://issues.apache.org/jira/browse/IMPALA-1134) | Wrong copying of bytes from Text with java udf |  Major | . | Dzianis Balyka | casey |
| [IMPALA-1456](https://issues.apache.org/jira/browse/IMPALA-1456) | Hive udfs cause impalad to crash if they use String type arguments |  Major | . | casey | casey |
| [IMPALA-1390](https://issues.apache.org/jira/browse/IMPALA-1390) | Partitioned agg node returns incorrect results with ASAN build. |  Major | . | Alexander Behm | Ippokratis Pandis |
| [IMPALA-1254](https://issues.apache.org/jira/browse/IMPALA-1254) | parquet writer will incorrectly add a value twice when max dictionary size is reached |  Major | . | Daniel Hecht | Daniel Hecht |
| [IMPALA-1403](https://issues.apache.org/jira/browse/IMPALA-1403) | Doc for specifying --scratch\_dirs should mention multiple dirs can be specified |  Major | Docs | Matthew Jacobs | John Russell |
| [IMPALA-1392](https://issues.apache.org/jira/browse/IMPALA-1392) | Exceptions from HiveUDF crashes Impala Daemon |  Major | . | Tim Robertson | Nong Li |
| [IMPALA-1141](https://issues.apache.org/jira/browse/IMPALA-1141) | Planning phase takes too long when querying HBase tables |  Major | . | Dimitris Tsirogiannis | Martin Grund |
| [IMPALA-1429](https://issues.apache.org/jira/browse/IMPALA-1429) | Failed to resolve column ref in uncorrelated subquery |  Major | . | casey | casey |
| [IMPALA-1472](https://issues.apache.org/jira/browse/IMPALA-1472) | Possibly dangerous interaction between tcmalloc and spilling. |  Major | . | Alexander Behm | Nong Li |
| [IMPALA-1368](https://issues.apache.org/jira/browse/IMPALA-1368) | UDA memory not coming from block mgr memory. |  Major | . | Nong Li | Nong Li |
| [IMPALA-1468](https://issues.apache.org/jira/browse/IMPALA-1468) | Analytic query with left outer join  throws error. "CAUSED BY: AnalysisException: No matching function with signature: upper(BOOLEAN)." |  Major | . | Mala Chikka Kempanna | Alexander Behm |
| [IMPALA-1396](https://issues.apache.org/jira/browse/IMPALA-1396) | Query cancelled from Impala shell displayed as in-flight in Web UI. |  Critical | . | Alexander Behm | Alex Leblang |
| [IMPALA-1475](https://issues.apache.org/jira/browse/IMPALA-1475) | Impala cannot find unmangled symbols in UDF shared libraries |  Blocker | . | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-1378](https://issues.apache.org/jira/browse/IMPALA-1378) | FunctionContext should not track all user allocations |  Critical | . | Nong Li | Skye Wanderman-Milne |
| [IMPALA-1471](https://issues.apache.org/jira/browse/IMPALA-1471) | Anti join could produce incorrect results when spilling. |  Blocker | . | Alexander Behm | Ippokratis Pandis |
| [IMPALA-1483](https://issues.apache.org/jira/browse/IMPALA-1483) | Query causes Impala crash |  Major | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-1387](https://issues.apache.org/jira/browse/IMPALA-1387) | On-clause conjuncts of anti joins must be evaluated by the anti join. |  Critical | . | Alexander Behm | Dimitris Tsirogiannis |
| [IMPALA-1493](https://issues.apache.org/jira/browse/IMPALA-1493) | Crash due to unhandled exception in timestamp functions |  Critical | . | Taras Bobrovytsky | Skye Wanderman-Milne |
| [IMPALA-1501](https://issues.apache.org/jira/browse/IMPALA-1501) | Crash: impala::ThreadResourceMgr::ResourcePool::SetThreadAvailableCb |  Blocker | . | Taras Bobrovytsky | Martin Grund |
| [IMPALA-1371](https://issues.apache.org/jira/browse/IMPALA-1371) | Predicate applied incorrectly when FULL OUTER JOIN is present |  Critical | . | Taras Bobrovytsky | Dimitris Tsirogiannis |
| [IMPALA-1455](https://issues.apache.org/jira/browse/IMPALA-1455) | Compressed file needs to be hold on entirely in Memory |  Major | . | Joao Salcedo | Matthew Jacobs |
| [IMPALA-1453](https://issues.apache.org/jira/browse/IMPALA-1453) | GROUP BY on STRING column produces inconsistent results |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-1506](https://issues.apache.org/jira/browse/IMPALA-1506) | Gzip text compressor doesn't always set output\_length |  Major | . | Matthew Jacobs | Victor Bittorf |
| [IMPALA-1528](https://issues.apache.org/jira/browse/IMPALA-1528) | Crash: impala::TupleRow::GetTuple |  Blocker | . | Taras Bobrovytsky | Skye Wanderman-Milne |
| [IMPALA-1524](https://issues.apache.org/jira/browse/IMPALA-1524) | Crash: impala::RowDescriptor::RowDescriptor (this=0xacf62c8, desc\_tbl=..., row\_tuples=std::vector of length 4, capacity 4 = {...}, nullable\_tuples=Traceback |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-1526](https://issues.apache.org/jira/browse/IMPALA-1526) | Crash: impala::RowDescriptor::GetTupleIdx |  Blocker | . | Taras Bobrovytsky | Dimitris Tsirogiannis |
| [IMPALA-1553](https://issues.apache.org/jira/browse/IMPALA-1553) | Crash: impala::UnionNode::EvalAndMaterializeExprs |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-1556](https://issues.apache.org/jira/browse/IMPALA-1556) | Kerberos fetches 3x slower |  Critical | . | Henry Robinson | Matthew Jacobs |
| [IMPALA-1508](https://issues.apache.org/jira/browse/IMPALA-1508) | Timestamp related crash |  Major | . | Taras Bobrovytsky | Skye Wanderman-Milne |
| [IMPALA-1572](https://issues.apache.org/jira/browse/IMPALA-1572) | HS2 Test Failing |  Major | . | Alex Leblang | Daniel Hecht |
| [IMPALA-1611](https://issues.apache.org/jira/browse/IMPALA-1611) | Cannot read hbase metadata with NullPointerException: null |  Blocker | . | Ippokratis Pandis | Alexander Behm |
| [IMPALA-1507](https://issues.apache.org/jira/browse/IMPALA-1507) | Impala hits DCHECK with low but reasonable query mem\_limit. |  Major | . | Alexander Behm | Ippokratis Pandis |
| [IMPALA-1454](https://issues.apache.org/jira/browse/IMPALA-1454) | TPC-DS query 25 crashes |  Major | . | Dileep Kumar | Ippokratis Pandis |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-1349](https://issues.apache.org/jira/browse/IMPALA-1349) | Redirect stdout/stderr to impalad.INFO/impalad.ERROR |  Critical | . | Nong Li | Nong Li |
| [IMPALA-1284](https://issues.apache.org/jira/browse/IMPALA-1284) | Allow implicit cross join if there are no join predicates |  Major | . | Nong Li | Martin Grund |
| [IMPALA-165](https://issues.apache.org/jira/browse/IMPALA-165) | add optimization for - select \* from foo limit 5 |  Minor | . | Greg Rahn | Martin Grund |


