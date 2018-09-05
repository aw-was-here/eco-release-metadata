
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

## Release Impala 2.5.0 - Unreleased (as of 2018-09-05)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2004](https://issues.apache.org/jira/browse/IMPALA-2004) | Implement "SHOW CREATE" for functions |  Major | . | Mala Chikka Kempanna | Michael Ho |
| [IMPALA-783](https://issues.apache.org/jira/browse/IMPALA-783) | Suggestion: SHOW CREATE VIEW to complement SHOW CREATE TABLE |  Minor | Frontend | John Russell | Tim Armstrong |
| [IMPALA-2499](https://issues.apache.org/jira/browse/IMPALA-2499) | Min/max values on partition columns |  Critical | Frontend | Justin Erickson | Michael Ho |
| [IMPALA-1477](https://issues.apache.org/jira/browse/IMPALA-1477) | Add UUID function |  Major | Backend | Jeremy Beard | Youwei Wang |
| [IMPALA-2843](https://issues.apache.org/jira/browse/IMPALA-2843) | Impala should read java udfs created from Hive |  Major | Catalog | bharath v | bharath v |
| [IMPALA-1748](https://issues.apache.org/jira/browse/IMPALA-1748) | Provide support for registering permanent udfs |  Critical | Catalog | bharath v | bharath v |
| [IMPALA-3415](https://issues.apache.org/jira/browse/IMPALA-3415) | updated llvm-3.8.0  cause   impalad compiling   error  clang fatal error  #include \<string\> |  Major | Backend | fishing |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2555](https://issues.apache.org/jira/browse/IMPALA-2555) | Allow download of thrift profile via Impala WebUI |  Critical | . | Peter Ebert | bharath v |
| [IMPALA-2631](https://issues.apache.org/jira/browse/IMPALA-2631) | Add total number of queries to /sessionz |  Minor | . | Henry Robinson | Henry Robinson |
| [IMPALA-2632](https://issues.apache.org/jira/browse/IMPALA-2632) | Link LLVM bytecode into impalad binary |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2664](https://issues.apache.org/jira/browse/IMPALA-2664) | prevent INCREMENTAL STATS to run when total size would exceed a threshold |  Major | . | Silvius Rus | bharath v |
| [IMPALA-2070](https://issues.apache.org/jira/browse/IMPALA-2070) | Include the database comment when showing databases |  Minor | . | Joe Slagel | Tim Armstrong |
| [IMPALA-1656](https://issues.apache.org/jira/browse/IMPALA-1656) | Remove block\_mgr\_client\_ != NULL checks |  Major | . | Ippokratis Pandis | Tim Armstrong |
| [IMPALA-2759](https://issues.apache.org/jira/browse/IMPALA-2759) | Use delete\_on\_read mode of BufferedTupleStream where appropriate |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2793](https://issues.apache.org/jira/browse/IMPALA-2793) | Use EXPLAIN\_LEVEL=2 for the plan printed in query profiles. |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-1687](https://issues.apache.org/jira/browse/IMPALA-1687) | Expand CTAS to allow partition clauses |  Major | Frontend | Jeremy Beard | Lars Volker |
| [IMPALA-1934](https://issues.apache.org/jira/browse/IMPALA-1934) | impala-shell to support reading password from command line when LDAP authentication is used |  Major | Security | Yibing Shi | Henry Robinson |
| [IMPALA-2790](https://issues.apache.org/jira/browse/IMPALA-2790) | Explain plan should exclude non-materialized aggregate expressions. |  Trivial | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-2547](https://issues.apache.org/jira/browse/IMPALA-2547) | Sort performance improvement : Code-gen TupleRowComparator::Compare |  Critical | Backend | Mostafa Mokhtar | Skye Wanderman-Milne |
| [IMPALA-2884](https://issues.apache.org/jira/browse/IMPALA-2884) | Add a use\_ssl option to compute\_table\_stats.py |  Major | Infrastructure | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-2757](https://issues.apache.org/jira/browse/IMPALA-2757) | Make RowBatch::AtCapacity checks simpler and more efficient |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-1480](https://issues.apache.org/jira/browse/IMPALA-1480) | Slow DDL statements for tables with large number of partitions |  Critical | Catalog | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-2681](https://issues.apache.org/jira/browse/IMPALA-2681) | Improve Decimal arithmetic performance by using a cheaper overflow check |  Major | Backend | Mostafa Mokhtar | Zuo Wang |
| [IMPALA-1787](https://issues.apache.org/jira/browse/IMPALA-1787) | Case-insensitivity modifier for regular expressions |  Major | Backend | Henry Robinson | Zuo Wang |
| [IMPALA-2891](https://issues.apache.org/jira/browse/IMPALA-2891) | Log error status for failures in backend tests |  Major | Infrastructure | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-1168](https://issues.apache.org/jira/browse/IMPALA-1168) | Finer grain Admission Control timeout control |  Major | Backend | Alan Choi | Matthew Jacobs |
| [IMPALA-2174](https://issues.apache.org/jira/browse/IMPALA-2174) | Improve the calculation of the TupleDescriptor::avgSerializedSize\_ |  Major | Frontend | Ippokratis Pandis | Alexander Behm |
| [IMPALA-1980](https://issues.apache.org/jira/browse/IMPALA-1980) | Inefficient query plans due to aggressive selectivity estimation. |  Critical | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-2663](https://issues.apache.org/jira/browse/IMPALA-2663) | Filter out tuples with empty collection slots in scan. |  Major | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-2552](https://issues.apache.org/jira/browse/IMPALA-2552) | Runtime filter forwarding between operators |  Major | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-3001](https://issues.apache.org/jira/browse/IMPALA-3001) | Improve usability of RUNTIME\_FILTER query options |  Critical | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-3008](https://issues.apache.org/jira/browse/IMPALA-3008) | Improve printing of filter routing table |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-3014](https://issues.apache.org/jira/browse/IMPALA-3014) | Hdfs scan node should wait for all filters, not just partition filters |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-2889](https://issues.apache.org/jira/browse/IMPALA-2889) | Generate one combined binary for impalad, statestored, catalogd |  Blocker | Infrastructure | Henry Robinson | Henry Robinson |
| [IMPALA-3029](https://issues.apache.org/jira/browse/IMPALA-3029) | Global filters may arrive before registration, causing crash |  Blocker | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-3026](https://issues.apache.org/jira/browse/IMPALA-3026) | Mark filters with "local only" to avoid sending to coordinator |  Critical | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-1886](https://issues.apache.org/jira/browse/IMPALA-1886) | Impala doesn't support multi-stream bz2 compressed file |  Critical | Backend | Juan Yu | Juan Yu |
| [IMPALA-3103](https://issues.apache.org/jira/browse/IMPALA-3103) | Improve efficiency of BloomFilter Thrift serialisation |  Critical | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-3102](https://issues.apache.org/jira/browse/IMPALA-3102) | Admission control supportability: update profile before scheduling/queuing |  Critical | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-2641](https://issues.apache.org/jira/browse/IMPALA-2641) | Add IF EXISTS clause to TRUNCATE TABLE statement |  Major | Frontend | John Russell | Marcell Szabo |
| [IMPALA-2087](https://issues.apache.org/jira/browse/IMPALA-2087) | Take advantage of existing data partition of the input plan fragment to an aggregation |  Major | Frontend | Marcel Kornacker | Tim Armstrong |
| [IMPALA-1625](https://issues.apache.org/jira/browse/IMPALA-1625) | Eliminate output noise from frontend tests |  Minor | Infrastructure | Dimitris Tsirogiannis | Tim Armstrong |
| [IMPALA-2548](https://issues.apache.org/jira/browse/IMPALA-2548) | Sort performance improvement : Code-gen Tuple::MaterializeExprs |  Critical | Backend | Mostafa Mokhtar | Skye Wanderman-Milne |
| [IMPALA-3593](https://issues.apache.org/jira/browse/IMPALA-3593) | updated   impala  from impala2.3 to impala 2.5 -v4709   sorternode becoming  slower |  Major | Backend | fishing |  |
| [IMPALA-2924](https://issues.apache.org/jira/browse/IMPALA-2924) | Add query hints to adjust replica selection policy |  Minor | Frontend | Lars Volker | Lars Volker |
| [IMPALA-3855](https://issues.apache.org/jira/browse/IMPALA-3855) | small table left join  big table   Can be optimized for broadcast |  Minor | Backend, Frontend | fishing |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2204](https://issues.apache.org/jira/browse/IMPALA-2204) | Underscore in where does not work for multi-line text |  Major | . | Alan Jackoway | Michael Ho |
| [IMPALA-2535](https://issues.apache.org/jira/browse/IMPALA-2535) | PAGG fails to acquire buffers despite sufficient memory limit |  Blocker | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2113](https://issues.apache.org/jira/browse/IMPALA-2113) | Uninformative error message when combining SELECT DISTINCT with aggregate function in HAVING clause |  Major | . | Charlie Flowers | Chris Channing |
| [IMPALA-2225](https://issues.apache.org/jira/browse/IMPALA-2225) | Poor error message when group by missing on select t.\* |  Major | . | Philip Zeyliger | Chris Channing |
| [IMPALA-2103](https://issues.apache.org/jira/browse/IMPALA-2103) | test\_authorization.py test\_impersonation effective\_user testcase failure |  Critical | . | Dan Hecht | Henry Robinson |
| [IMPALA-2132](https://issues.apache.org/jira/browse/IMPALA-2132) | Handle Llama expansions that are allocated after time out |  Critical | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-1852](https://issues.apache.org/jira/browse/IMPALA-1852) | Impala with RM/Llama acquires excessive thread tokens. |  Major | . | Alexander Behm | Matthew Jacobs |
| [IMPALA-2404](https://issues.apache.org/jira/browse/IMPALA-2404) | Netezza compatibility functions: regexp\_match\_count |  Major | . | Justin Erickson | Michael Ho |
| [IMPALA-2226](https://issues.apache.org/jira/browse/IMPALA-2226) | Impala should throw AnalysisError if table properties are too large |  Major | . | Martin Grund | Jim Apple |
| [IMPALA-2273](https://issues.apache.org/jira/browse/IMPALA-2273) | Make parquet scanner MAX\_PAGE\_HEADER\_SIZE configurable |  Major | . | Juan Yu | bharath v |
| [IMPALA-2591](https://issues.apache.org/jira/browse/IMPALA-2591) | DataStreamSender::Send() does not return an error status if SendBatch() failed |  Major | . | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-1714](https://issues.apache.org/jira/browse/IMPALA-1714) | Trying to cache a table which has its data in s3 results in an IllegalArgumentException |  Major | . | Ishaan Joshi | Michael Ho |
| [IMPALA-2559](https://issues.apache.org/jira/browse/IMPALA-2559) | sorter.cc:1079] Check failed: sorted\_runs\_.back()-\>is\_pinned\_ |  Critical | . | casey | Dan Hecht |
| [IMPALA-2614](https://issues.apache.org/jira/browse/IMPALA-2614) | ExchangeNode::Open() ignores DataStreamRecvr::CreateMerger() return status |  Major | . | Dan Hecht | Dan Hecht |
| [IMPALA-2646](https://issues.apache.org/jira/browse/IMPALA-2646) | Check failed: lineage.ended \> lineage.started |  Blocker | . | Tim Armstrong | bharath v |
| [IMPALA-2558](https://issues.apache.org/jira/browse/IMPALA-2558) | Hit DCHECK in parquet scanner after block read error |  Critical | . | Tim Armstrong | Skye Wanderman-Milne |
| [IMPALA-2560](https://issues.apache.org/jira/browse/IMPALA-2560) | Large memory consumption on coordinator node when handling a large number of partitions due to redundancy in TDescriptorTable |  Critical | . | Mostafa Mokhtar | Mostafa Mokhtar |
| [IMPALA-2473](https://issues.apache.org/jira/browse/IMPALA-2473) | Excessive memory usage by scan nodes |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-1459](https://issues.apache.org/jira/browse/IMPALA-1459) | Incorrect assignment of predicates through an outer join in an inline view. |  Blocker | . | Alexander Behm | Alexander Behm |
| [IMPALA-2621](https://issues.apache.org/jira/browse/IMPALA-2621) | ExprTest.TimestampFunctions failure: unix\_timestamp() between 1446367138 and 1446367148 |  Major | . | Skye Wanderman-Milne | casey |
| [IMPALA-1943](https://issues.apache.org/jira/browse/IMPALA-1943) | Incorrect number of rows inserted when when inserting text with newline characters |  Minor | . | Taras Bobrovytsky | Tim Armstrong |
| [IMPALA-2612](https://issues.apache.org/jira/browse/IMPALA-2612) | free-pool.h:75] Check failed: allocation != \_\_null |  Critical | . | casey | Michael Ho |
| [IMPALA-2731](https://issues.apache.org/jira/browse/IMPALA-2731) | Hbase scan node uses 2-4x memory after upgrade to impala 2.2.8 |  Major | . | Juan Yu | Martin Grund |
| [IMPALA-2707](https://issues.apache.org/jira/browse/IMPALA-2707) | Add FindOrInsert method to hash table to avoid unnecessary probe in aggregation |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2754](https://issues.apache.org/jira/browse/IMPALA-2754) | hash-table-test fails in ASAN build |  Blocker | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2354](https://issues.apache.org/jira/browse/IMPALA-2354) | PartitionedAggregationNode::ProcessBatch() should not continue on MEM\_LIMIT\_EXCEEDED |  Critical | . | Dan Hecht | Tim Armstrong |
| [IMPALA-2593](https://issues.apache.org/jira/browse/IMPALA-2593) | Remove 'kinit -R' workaround |  Critical | . | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-2667](https://issues.apache.org/jira/browse/IMPALA-2667) | Errors in scanner prepare are not handled |  Critical | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2683](https://issues.apache.org/jira/browse/IMPALA-2683) | Stress test hit assert in LLVM: external function could not be resolved |  Blocker | . | Tim Armstrong | Skye Wanderman-Milne |
| [IMPALA-2672](https://issues.apache.org/jira/browse/IMPALA-2672) | S3: build failing with error in test\_udf\_update\_create |  Critical | . | Henry Robinson | Henry Robinson |
| [IMPALA-2116](https://issues.apache.org/jira/browse/IMPALA-2116) | Compiling with ASAN at -O0 causes compiler errors |  Major | . | Skye Wanderman-Milne | Martin Grund |
| [IMPALA-2236](https://issues.apache.org/jira/browse/IMPALA-2236) | Cannot run full data load on EC2 machines because of missing testdata/impala-data contents. |  Critical | . | Alexander Behm | Tim Armstrong |
| [IMPALA-2778](https://issues.apache.org/jira/browse/IMPALA-2778) | ASAN build calls llvm-symbolizer with invalid arguments on build machines. |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2773](https://issues.apache.org/jira/browse/IMPALA-2773) | Build failures due to problems building readline for python virtualenv |  Blocker | . | casey |  |
| [IMPALA-2719](https://issues.apache.org/jira/browse/IMPALA-2719) | test\_parquet\_max\_page\_header.py fails with assert ['NULL'] == ['10485760'] |  Major | . | Michael Ho | bharath v |
| [IMPALA-2144](https://issues.apache.org/jira/browse/IMPALA-2144) | Wrong assignment of having clause predicate across outer join |  Critical | . | Dimitris Tsirogiannis | Alexander Behm |
| [IMPALA-2786](https://issues.apache.org/jira/browse/IMPALA-2786) | buffered-tuple-stream set\_delete\_on\_read DCHECK failure |  Critical | . | Matthew Jacobs | Tim Armstrong |
| [IMPALA-1325](https://issues.apache.org/jira/browse/IMPALA-1325) | Impala shell shows no error when an error message includes "Cancelled" |  Critical | Clients | casey | Tim Armstrong |
| [IMPALA-2620](https://issues.apache.org/jira/browse/IMPALA-2620) | FunctionContext::Allocate() doesn't check against mem\_limit |  Major | . | Dan Hecht | Michael Ho |
| [IMPALA-2765](https://issues.apache.org/jira/browse/IMPALA-2765) | AnalysisException: operands of type BOOLEAN and TIMESTAMP are not comparable when OUTER JOIN with CASE statement |  Major | Frontend | Eric Lin | bharath v |
| [IMPALA-2695](https://issues.apache.org/jira/browse/IMPALA-2695) | Catalog stores URI in lowercase and cause sentry authorization fail |  Critical | . | Juan Yu | bharath v |
| [IMPALA-2776](https://issues.apache.org/jira/browse/IMPALA-2776) | Integration build broken: hive.serde2.SerDeException \\r and \\n cannot be used as escaping characters or separators |  Blocker | . | casey | Alexander Behm |
| [IMPALA-1170](https://issues.apache.org/jira/browse/IMPALA-1170) | parse\_url("http://oascentral.stripes.com/adstream\_mjx.ads@Top2,Right1","HOST")  returns Top2,Right1 |  Critical | Backend | Kushal Mangtani | Lars Volker |
| [IMPALA-2812](https://issues.apache.org/jira/browse/IMPALA-2812) | CatalogTest.TestTableWithBadEscapeChar failing after removal of escapecharstesttable |  Blocker | . | Tim Armstrong | Alexander Behm |
| [IMPALA-2804](https://issues.apache.org/jira/browse/IMPALA-2804) | BE test session-expiry-test fails in ASAN build. |  Blocker | Backend | Alexander Behm | Skye Wanderman-Milne |
| [IMPALA-2630](https://issues.apache.org/jira/browse/IMPALA-2630) | query\_test.test\_scanners.TestParquet.test\_continue\_on\_error fails non-partititioned aggs / join |  Major | . | Martin Grund | Skye Wanderman-Milne |
| [IMPALA-2375](https://issues.apache.org/jira/browse/IMPALA-2375) | Fix issues with the legacy join and agg nodes using --enable\_partitioned\_hash\_join=false and --enable\_partitioned\_aggregation=false |  Critical | Backend | Alexander Behm | Matthew Jacobs |
| [IMPALA-2687](https://issues.apache.org/jira/browse/IMPALA-2687) | Test failed due to read-your-writes metadata failure |  Major | . | Henry Robinson | Alexander Behm |
| [IMPALA-2220](https://issues.apache.org/jira/browse/IMPALA-2220) | Flaky Test: test\_create\_drop\_data\_src failed due to class-cache miss metric |  Blocker | . | Henry Robinson | Matthew Jacobs |
| [IMPALA-2829](https://issues.apache.org/jira/browse/IMPALA-2829) | SEGV in AnalyticEvalNode touching NULL input\_stream\_ |  Blocker | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-2589](https://issues.apache.org/jira/browse/IMPALA-2589) | Turn off impala-CI-rhel7 job |  Major | Infrastructure | Jim Apple | Harrison Sheinblatt |
| [IMPALA-2654](https://issues.apache.org/jira/browse/IMPALA-2654) | Describe of nested struct does not format/indent the struct fields. |  Major | Frontend | Alexander Behm | Zuo Wang |
| [IMPALA-2732](https://issues.apache.org/jira/browse/IMPALA-2732) | Can't parse custom date formats with non-zero-padded values |  Critical | Backend | Egmont Koblinger | Lars Volker |
| [IMPALA-2847](https://issues.apache.org/jira/browse/IMPALA-2847) | CDH5-Impala-Post-Commit failing when creating Sentry Policy DB |  Blocker | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-2750](https://issues.apache.org/jira/browse/IMPALA-2750) | Wrong query results for COUNT(\*) from an external delimited table |  Blocker | Backend | Uri Laserson | Martin Grund |
| [IMPALA-2643](https://issues.apache.org/jira/browse/IMPALA-2643) | Nested inline view produces incorrect result when referencing the same column implicitly |  Blocker | Frontend | Huaisi Xu | Huaisi Xu |
| [IMPALA-2598](https://issues.apache.org/jira/browse/IMPALA-2598) | Server\<-\>Server SSL and Kerberos do not work together |  Critical | Security | Henry Robinson | Sailesh Mukil |
| [IMPALA-2853](https://issues.apache.org/jira/browse/IMPALA-2853) | full data load failure: garbage in load-functional-\*.sql file |  Major | Infrastructure | Dan Hecht | Tim Armstrong |
| [IMPALA-1986](https://issues.apache.org/jira/browse/IMPALA-1986) | Status should not have non-trivial copy constructor or destructor |  Major | Backend | Dan Hecht | Michael Ho |
| [IMPALA-2503](https://issues.apache.org/jira/browse/IMPALA-2503) | Exception thrown when trying to throw an AnalysisException |  Critical | Frontend | Uri Laserson | Alexander Behm |
| [IMPALA-2865](https://issues.apache.org/jira/browse/IMPALA-2865) | show-create-table.test has an implicit INSERT which breaks S3 build |  Blocker | Infrastructure | Henry Robinson | Lars Volker |
| [IMPALA-2781](https://issues.apache.org/jira/browse/IMPALA-2781) | New shell error reporting produces bad errors if script changes directory |  Minor | Infrastructure | Tim Armstrong | casey |
| [IMPALA-2854](https://issues.apache.org/jira/browse/IMPALA-2854) | impala-CDH5-nightly-data-load fail: TestUdfs.test\_ir\_functions: ArrayIndexOutOfBoundsException: -1 |  Blocker | Catalog | Dan Hecht | bharath v |
| [IMPALA-2819](https://issues.apache.org/jira/browse/IMPALA-2819) | Custom cluster tests fail to kill all Impalads |  Blocker | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-2846](https://issues.apache.org/jira/browse/IMPALA-2846) | impala-cdh5-integration: impalad failed to start: terminate called after throwing an instance of 'boost::filesystem::filesystem\_error' |  Critical | Backend | Dan Hecht | Michael Ho |
| [IMPALA-2867](https://issues.apache.org/jira/browse/IMPALA-2867) | Load data inpath chokes on impala staging directories |  Major | Frontend | Flume QA | Flume QA |
| [IMPALA-2539](https://issues.apache.org/jira/browse/IMPALA-2539) | tuple.h:140] Check failed: offset != -1 |  Critical | Frontend | casey | Alexander Behm |
| [IMPALA-2711](https://issues.apache.org/jira/browse/IMPALA-2711) | INSERT using RAND(): Memory leaked via FunctionContext::Allocate() |  Blocker | Backend | casey | Michael Ho |
| [IMPALA-2749](https://issues.apache.org/jira/browse/IMPALA-2749) | Impala returns NULL when decimal and double values are multiplied in a specific order |  Critical | Frontend | Yibing Shi | Lars Volker |
| [IMPALA-2838](https://issues.apache.org/jira/browse/IMPALA-2838) | Impala incorrectly reports an AuthorizationException when it is actually not ready yet to accept requests. |  Critical | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-2894](https://issues.apache.org/jira/browse/IMPALA-2894) | TestQueries.test\_empty fails with legacy partitioned/joins aggs. |  Blocker | Infrastructure | Alexander Behm | Alexander Behm |
| [IMPALA-2818](https://issues.apache.org/jira/browse/IMPALA-2818) | Query cancellation DCHECK while clearing object pool: expr-context.cc:41] Check failed: !prepared\_ \|\| closed\_ |  Blocker | Backend | Tim Armstrong | Dan Hecht |
| [IMPALA-1651](https://issues.apache.org/jira/browse/IMPALA-1651) | CREATE TABLE LIKE should not copy caching directives of the source table. |  Major | Catalog | Alexander Behm | bharath v |
| [IMPALA-2833](https://issues.apache.org/jira/browse/IMPALA-2833) | Memory limit exceeded is reported as an IO error in some rare cases |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-2221](https://issues.apache.org/jira/browse/IMPALA-2221) | Flaky test: test\_shell\_commandline.TestImpalaShell.test\_queries\_closed failures |  Critical | Infrastructure | Henry Robinson | Alexander Behm |
| [IMPALA-1800](https://issues.apache.org/jira/browse/IMPALA-1800) | PrettyPrinter::Print(double, TUnit::TIME\_NS) is buggy |  Critical | Backend | Henry Robinson | Huaisi Xu |
| [IMPALA-2131](https://issues.apache.org/jira/browse/IMPALA-2131) | Metastore snapshot load targets wrong database with some directory naming schemes |  Minor | Infrastructure | Tim Armstrong | Ishaan Joshi |
| [IMPALA-2837](https://issues.apache.org/jira/browse/IMPALA-2837) | data\_errors.test\_data\_errors.TestHdfsSeqScanNodeErrors.test\_hdfs\_seq\_scan\_node\_errors failed due to duplicate runtime warnings |  Blocker | Backend | Tim Armstrong | Skye Wanderman-Milne |
| [IMPALA-2862](https://issues.apache.org/jira/browse/IMPALA-2862) | Missing ':' in rest\_result\_verifier.py:148 breaks regex matching. |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-2696](https://issues.apache.org/jira/browse/IMPALA-2696) | Simple scheduler always uses the same replica which can create hot spots |  Major | Backend | Mostafa Mokhtar | Lars Volker |
| [IMPALA-1599](https://issues.apache.org/jira/browse/IMPALA-1599) | Improve query start-up time with many fragment instances |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-2684](https://issues.apache.org/jira/browse/IMPALA-2684) | Fragment start latencies reported in wrong unit |  Minor | Distributed Exec | Flume QA | Henry Robinson |
| [IMPALA-2606](https://issues.apache.org/jira/browse/IMPALA-2606) | exec-node.cc:190] Check failed: mem\_tracker()-\>consumption() == 0 (16777216 vs. 0) Leaked memory. |  Major | Backend | casey | Dan Hecht |
| [IMPALA-2734](https://issues.apache.org/jira/browse/IMPALA-2734) | Bad result for subquery with having |  Blocker | Frontend | Peter Brejcak | Dimitris Tsirogiannis |
| [IMPALA-2927](https://issues.apache.org/jira/browse/IMPALA-2927) | Crash: impala::BufferedBlockMgr::WriteComplete |  Blocker | Backend | casey | Tim Armstrong |
| [IMPALA-2897](https://issues.apache.org/jira/browse/IMPALA-2897) | Impalad stuck building hash table in right outer join |  Blocker | Backend | Tim Armstrong | Jim Apple |
| [IMPALA-1867](https://issues.apache.org/jira/browse/IMPALA-1867) | Crash: DCHECK: mem\_tracker()-\>consumption() == 0 (8388608 vs. 0) Leaked memory. |  Major | Backend | Taras Bobrovytsky | Dan Hecht |
| [IMPALA-2940](https://issues.apache.org/jira/browse/IMPALA-2940) | Parquet DictDecoders accumulate throughout query |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-2726](https://issues.apache.org/jira/browse/IMPALA-2726) | Templatize RawValue::GetHashValue to avoid per row PrimitiveType check for 6% Perf improvement |  Critical | Backend | Mostafa Mokhtar | Mostafa Mokhtar |
| [IMPALA-2906](https://issues.apache.org/jira/browse/IMPALA-2906) | Crash: impala::RowDescriptor::GetTupleIdx |  Blocker | Frontend | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2926](https://issues.apache.org/jira/browse/IMPALA-2926) | Incorrect results - a predicate causes the number of rows to increase |  Blocker | Backend | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2538](https://issues.apache.org/jira/browse/IMPALA-2538) | Per-pool default query memory limits |  Critical | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-2954](https://issues.apache.org/jira/browse/IMPALA-2954) | Crash in PlanFragmentExecutor::Cancel() dereferencing runtime\_state\_ |  Blocker | Backend | Dan Hecht | Henry Robinson |
| [IMPALA-2215](https://issues.apache.org/jira/browse/IMPALA-2215) | HAVING clause without aggregation not applied properly |  Blocker | Frontend | Alan Choi | Alexander Behm |
| [IMPALA-852](https://issues.apache.org/jira/browse/IMPALA-852) | Aggregate and predicate ignored on very simple query without group by clause or aggergate expressions in select clause |  Minor | Frontend | casey | Alexander Behm |
| [IMPALA-2093](https://issues.apache.org/jira/browse/IMPALA-2093) | Wrong plan of NOT IN aggregate subquery when a constant is used in subquery predicate |  Blocker | Frontend | Taras Bobrovytsky | Dimitris Tsirogiannis |
| [IMPALA-976](https://issues.apache.org/jira/browse/IMPALA-976) | Planner cardinality estimates from joins can be improved. |  Critical | Frontend | Nong Li | Alexander Behm |
| [IMPALA-2948](https://issues.apache.org/jira/browse/IMPALA-2948) | Crash: impala::UnionNode::Prepare (when optimize\_partition\_key\_scans set to true) |  Blocker | Frontend | Taras Bobrovytsky | Michael Ho |
| [IMPALA-2959](https://issues.apache.org/jira/browse/IMPALA-2959) | Failure in S3 build: test\_multiple\_filesystems.py |  Blocker | Infrastructure | Alexander Behm | Lars Volker |
| [IMPALA-2365](https://issues.apache.org/jira/browse/IMPALA-2365) | Impalad is crashing if udf jar is not available in hdfs location for first time |  Blocker | Backend | Manikandan R | bharath v |
| [IMPALA-2788](https://issues.apache.org/jira/browse/IMPALA-2788) | Impala returns wrong result for function 'conv(bigint, from\_base, to\_base)' |  Blocker | Backend | Yibing Shi | Mala Chikka Kempanna |
| [IMPALA-2816](https://issues.apache.org/jira/browse/IMPALA-2816) | BufferedTupleStream::AddRow() doesn't include null indicators when computing required page size |  Blocker | Backend | Tim Armstrong | Michael Ho |
| [IMPALA-2487](https://issues.apache.org/jira/browse/IMPALA-2487) | Impala report memory usage stats appear to get out of sync |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-2950](https://issues.apache.org/jira/browse/IMPALA-2950) | Incorrect results with deeply nested outer joined inline view. |  Blocker | Frontend | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2971](https://issues.apache.org/jira/browse/IMPALA-2971) | Groovy script keeps hitting null pointer exception |  Blocker | Infrastructure | Michael Ho | Alexander Behm |
| [IMPALA-2961](https://issues.apache.org/jira/browse/IMPALA-2961) | Overflow in parsing negative numbers |  Major | Backend | Jim Apple | Dan Hecht |
| [IMPALA-2688](https://issues.apache.org/jira/browse/IMPALA-2688) | Group by on Decimal data type doesn't get CodeGened |  Critical | Backend | Mostafa Mokhtar | Skye Wanderman-Milne |
| [IMPALA-2970](https://issues.apache.org/jira/browse/IMPALA-2970) | redactor.detail.h:59:44: warning: all paths through this function will call itself [-Winfinite-recursion] |  Critical | Backend | Dan Hecht | casey |
| [IMPALA-2960](https://issues.apache.org/jira/browse/IMPALA-2960) | ASAN fails to compile. |  Blocker | Backend | Alexander Behm | Jim Apple |
| [IMPALA-2425](https://issues.apache.org/jira/browse/IMPALA-2425) | Broadcast join hint not enforced when low memory limit is set. |  Major | Frontend | Mostafa Mokhtar | Anuj Phadke |
| [IMPALA-2931](https://issues.apache.org/jira/browse/IMPALA-2931) | Crash trying to impala::MemTracker::UnregisterFromParent |  Blocker | Backend | casey | Henry Robinson |
| [IMPALA-2824](https://issues.apache.org/jira/browse/IMPALA-2824) | Flaky test: test\_analytic\_fns fails with mem\_limit\_exceeded |  Critical | Backend | Tim Armstrong | Michael Ho |
| [IMPALA-2742](https://issues.apache.org/jira/browse/IMPALA-2742) | MemPool allocation growth behavior |  Blocker | Backend | Martin Grund | Tim Armstrong |
| [IMPALA-2994](https://issues.apache.org/jira/browse/IMPALA-2994) | Flaky test test\_spilling.py needs to be fixed and revisited for coverage. |  Blocker | Backend | Alexander Behm | Tim Armstrong |
| [IMPALA-2997](https://issues.apache.org/jira/browse/IMPALA-2997) | DCHECK with legacy joins/aggs when running test\_compute\_stats.py. |  Blocker | Backend | Alexander Behm | Alexander Behm |
| [IMPALA-2996](https://issues.apache.org/jira/browse/IMPALA-2996) | Failure in test\_analytic\_fns because memory limit was not exceeded. |  Blocker | Backend | Alexander Behm | Matthew Jacobs |
| [IMPALA-2992](https://issues.apache.org/jira/browse/IMPALA-2992) | Scan range filtering can lead to leaked memory in memtracker |  Blocker | Distributed Exec | Henry Robinson | Michael Ho |
| [IMPALA-2969](https://issues.apache.org/jira/browse/IMPALA-2969) | test\_udfs.py fails on S3 |  Blocker | Infrastructure | Alexander Behm | bharath v |
| [IMPALA-2993](https://issues.apache.org/jira/browse/IMPALA-2993) | Memory limit exceeded in test\_nested\_types.py |  Blocker | Backend | Alexander Behm | Skye Wanderman-Milne |
| [IMPALA-2986](https://issues.apache.org/jira/browse/IMPALA-2986) | Aggregation spill loop gives up too early leading to mem limit exceeded errors |  Blocker | Backend | Dan Hecht | Dan Hecht |
| [IMPALA-2989](https://issues.apache.org/jira/browse/IMPALA-2989) | Admission control crashed on unexpected topic deletion |  Critical | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-2981](https://issues.apache.org/jira/browse/IMPALA-2981) | Queries hung, stuck in reconnection loop? |  Blocker | Distributed Exec | casey | Henry Robinson |
| [IMPALA-2382](https://issues.apache.org/jira/browse/IMPALA-2382) | Impala unable to read Java based UDFs that return a standard  datatype like Float or String(This works in hive) |  Major | Frontend | Mala Chikka Kempanna | Dimitris Tsirogiannis |
| [IMPALA-2978](https://issues.apache.org/jira/browse/IMPALA-2978) | buffered-block-mgr.cc:557] Check failed: unused\_blocks\_.Contains(block) |  Blocker | Backend | casey | Tim Armstrong |
| [IMPALA-3000](https://issues.apache.org/jira/browse/IMPALA-3000) | BitReader::Reset does not initialize buffered\_values\_ |  Blocker | Backend | Wes McKinney | Tim Armstrong |
| [IMPALA-2980](https://issues.apache.org/jira/browse/IMPALA-2980) | LLVM : High spinlock contention during concurrency |  Blocker | Backend | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-2184](https://issues.apache.org/jira/browse/IMPALA-2184) | Codegen does not catch exceptions in FROM\_UNIXTIME() |  Blocker | Backend | Charlie Flowers | Skye Wanderman-Milne |
| [IMPALA-3020](https://issues.apache.org/jira/browse/IMPALA-3020) | ImpalaServer::UpdateFilter() needlessly acquires exec state lock |  Critical | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-3023](https://issues.apache.org/jira/browse/IMPALA-3023) | Crash: impala::BloomFilter::Or(impala::BloomFilter const&) |  Blocker | Backend | casey | Henry Robinson |
| [IMPALA-3004](https://issues.apache.org/jira/browse/IMPALA-3004) | Few tests not running due to wrong test file syntax |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-2841](https://issues.apache.org/jira/browse/IMPALA-2841) | admission control always estimate memory by using all available backend even for single node plan. |  Major | Backend | Juan Yu | Matthew Jacobs |
| [IMPALA-2572](https://issues.apache.org/jira/browse/IMPALA-2572) | Admission control pools w/ mem limits handle requests without query mem limits |  Critical | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-3033](https://issues.apache.org/jira/browse/IMPALA-3033) | Toolchain bootstrap prevents build on OSs without prebuild toolchain |  Blocker | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-2715](https://issues.apache.org/jira/browse/IMPALA-2715) | Probe filter are not pushed to scan for joins on partitioned column |  Critical | Perf Investigation | Mostafa Mokhtar | Henry Robinson |
| [IMPALA-2820](https://issues.apache.org/jira/browse/IMPALA-2820) | Impala does not support reserved words in complex types |  Critical | Frontend | Petter von Dolwitz | Alexander Behm |
| [IMPALA-2844](https://issues.apache.org/jira/browse/IMPALA-2844) | Select count(\*) from RCFileTable throw NotImplementedException in Impala 2.3.0 |  Critical | Frontend | Juan Yu | Alexander Behm |
| [IMPALA-2912](https://issues.apache.org/jira/browse/IMPALA-2912) | buffered-block-mgr-test BE test failed |  Blocker | Backend | Alexander Behm | Tim Armstrong |
| [IMPALA-3003](https://issues.apache.org/jira/browse/IMPALA-3003) | Query options silently overflow and cause undesired behavior |  Critical | Backend | Mostafa Mokhtar | Jim Apple |
| [IMPALA-2407](https://issues.apache.org/jira/browse/IMPALA-2407) | Nested Types : Remove calls to clock\_gettime for a 9x performance improvement on EC2 |  Critical | Backend | Mostafa Mokhtar | Jim Apple |
| [IMPALA-3035](https://issues.apache.org/jira/browse/IMPALA-3035) | Drop partition operations don't follow the catalog's locking protocol |  Blocker | Catalog | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-3034](https://issues.apache.org/jira/browse/IMPALA-3034) | MemTracker leak on PHJ failure to spill |  Blocker | Backend | Matthew Jacobs | Michael Ho |
| [IMPALA-2914](https://issues.apache.org/jira/browse/IMPALA-2914) | Hit DCHECK Check failed: HasDateOrTime() |  Blocker | Backend | Juan Yu | Juan Yu |
| [IMPALA-3044](https://issues.apache.org/jira/browse/IMPALA-3044) | Fix admission control default value for max requests |  Critical | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-3027](https://issues.apache.org/jira/browse/IMPALA-3027) | data-stream-mgr stream cache not GC'd properly |  Blocker | Backend | Matthew Jacobs | Skye Wanderman-Milne |
| [IMPALA-3056](https://issues.apache.org/jira/browse/IMPALA-3056) | Planner doesn't set the has\_local\_target field correctly |  Blocker | Frontend | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-3055](https://issues.apache.org/jira/browse/IMPALA-3055) | BufferedBlockMgrTest.WriteError test may be flaky |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3058](https://issues.apache.org/jira/browse/IMPALA-3058) | Runtime filter src and target exprs not always same type |  Blocker | Distributed Exec | Henry Robinson | Dimitris Tsirogiannis |
| [IMPALA-3047](https://issues.apache.org/jira/browse/IMPALA-3047) | impala-cdh5.7.0-non-partitioned-hash-and-aggs failing due to select query querying nested types |  Blocker | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-2832](https://issues.apache.org/jira/browse/IMPALA-2832) | CTAS with analytic results in Illegal reference to non-materialized slot |  Major | Frontend | Matthew Jacobs | Alexander Behm |
| [IMPALA-3041](https://issues.apache.org/jira/browse/IMPALA-3041) | Fix a few FindBugs bugs |  Major | Frontend | Henry Robinson | Marcell Szabo |
| [IMPALA-2532](https://issues.apache.org/jira/browse/IMPALA-2532) | "IllegalStateException: null" caused by "SELECT 1 IN (FIRST\_VALUE(CAST(int\_col AS DECIMAL))..." |  Critical | Frontend | casey | Alexander Behm |
| [IMPALA-3054](https://issues.apache.org/jira/browse/IMPALA-3054) | Runtime filters are not disabled when spilling in a rare case |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3039](https://issues.apache.org/jira/browse/IMPALA-3039) | Restrict the number of runtime filters generated |  Blocker | Frontend | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-1092](https://issues.apache.org/jira/browse/IMPALA-1092) | Trivial coordinator-only queries should have small resource estimates |  Major | Frontend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-3024](https://issues.apache.org/jira/browse/IMPALA-3024) | Limit number of nodes participating in building & sending runtime filters to coordinator |  Major | Backend | Mostafa Mokhtar | Henry Robinson |
| [IMPALA-3048](https://issues.apache.org/jira/browse/IMPALA-3048) | Address Runtime filter performance regressions |  Blocker | Backend | Mostafa Mokhtar | Henry Robinson |
| [IMPALA-3046](https://issues.apache.org/jira/browse/IMPALA-3046) | Allow per-row filters to evaluate non-SlotRef exprs |  Blocker | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-2974](https://issues.apache.org/jira/browse/IMPALA-2974) | ALTER TABLE CHANGE COLUMN fails to update column with a complex type. |  Critical | Catalog | Alexander Behm | Alexander Behm |
| [IMPALA-3078](https://issues.apache.org/jira/browse/IMPALA-3078) | Very simple query uses full RUNTIME\_FILTER\_WAIT\_TIME\_MS |  Major | Backend | casey | Henry Robinson |
| [IMPALA-3074](https://issues.apache.org/jira/browse/IMPALA-3074) | Analysis error: IllegalArgumentException: targetType=SMALLINT type=INT |  Blocker | Frontend | casey | Dimitris Tsirogiannis |
| [IMPALA-3070](https://issues.apache.org/jira/browse/IMPALA-3070) | test\_udfs.py fails in local filesystem mode |  Blocker | Infrastructure | Alexander Behm | bharath v |
| [IMPALA-3089](https://issues.apache.org/jira/browse/IMPALA-3089) | Handle between predicate in disjunctions during static partition pruning in the FE |  Major | Frontend | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-3087](https://issues.apache.org/jira/browse/IMPALA-3087) | Explain plan regression due to codegen of disjunct predicates |  Critical | Frontend | Mostafa Mokhtar | Michael Ho |
| [IMPALA-2975](https://issues.apache.org/jira/browse/IMPALA-2975) | Return error for unsupported values of REPLICA\_PREFERENCE |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-3085](https://issues.apache.org/jira/browse/IMPALA-3085) | DataSinks' MemTrackers need to unregister themselves from parent |  Blocker | Backend | Michael Ho | Michael Ho |
| [IMPALA-2154](https://issues.apache.org/jira/browse/IMPALA-2154) | Fix decompressor to allow parsing gzips with multiple streams |  Critical | Backend | bharath v | Juan Yu |
| [IMPALA-3093](https://issues.apache.org/jira/browse/IMPALA-3093) | ReopenClient() could NULL out 'client\_key' causing a crash |  Blocker | Distributed Exec | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3095](https://issues.apache.org/jira/browse/IMPALA-3095) | Allow additional Kerberos users to be authorized to access internal APIs |  Blocker | Security | Henry Robinson | Henry Robinson |
| [IMPALA-3071](https://issues.apache.org/jira/browse/IMPALA-3071) | Incorrect assignment of inner join on-clause predicate that references an outer-joined table. |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-3100](https://issues.apache.org/jira/browse/IMPALA-3100) | Runtime filter kenrel spinlock contention driven by memory allocation |  Critical | Backend | Mostafa Mokhtar | Henry Robinson |
| [IMPALA-2987](https://issues.apache.org/jira/browse/IMPALA-2987) | Incorrect results without error in stress test |  Blocker | Backend | casey | Henry Robinson |
| [IMPALA-3086](https://issues.apache.org/jira/browse/IMPALA-3086) | DataStreamMgr::FindRecvrOrWait() may access member without synchronization |  Critical | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-3106](https://issues.apache.org/jira/browse/IMPALA-3106) | Runtime filter GetNextRange lock contention with RUNTIME\_FILTER\_WAIT\_TIME\_MS \> 0 |  Major | Backend | Mostafa Mokhtar | Henry Robinson |
| [IMPALA-2592](https://issues.apache.org/jira/browse/IMPALA-2592) | DataStreamSender::Channel::CloseInternal() does not close the channel on an error. |  Blocker | Distributed Exec | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3062](https://issues.apache.org/jira/browse/IMPALA-3062) | Incorrect results: nested types with many join types |  Blocker | Frontend | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-3065](https://issues.apache.org/jira/browse/IMPALA-3065) | Incorrect placement of a !empty() predicate at an outer join. |  Blocker | Frontend | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-3142](https://issues.apache.org/jira/browse/IMPALA-3142) | High contention for spinlock in MemTracker::GcMemory() |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-2653](https://issues.apache.org/jira/browse/IMPALA-2653) | Ensure monotonic count(distinct x) performance |  Major | Backend | Jim Apple | Jim Apple |
| [IMPALA-3146](https://issues.apache.org/jira/browse/IMPALA-3146) | Runtime filters sometimes not attached to coordinator fragment |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-2599](https://issues.apache.org/jira/browse/IMPALA-2599) | Pseudo-random sleep before acquiring kerberos ticket possibly not really pseudo-random. |  Major | Security | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3107](https://issues.apache.org/jira/browse/IMPALA-3107) | Occasional very long pause in kernel |  Critical | Backend | Henry Robinson | Matthew Jacobs |
| [IMPALA-1939](https://issues.apache.org/jira/browse/IMPALA-1939) | Impalad should not require a co-located DataNode |  Major | Frontend | Dan Hecht | Anuj Phadke |
| [IMPALA-2973](https://issues.apache.org/jira/browse/IMPALA-2973) | test\_hash\_join\_timer: AssertionError: Hash join timing too high |  Blocker | Infrastructure | Michael Brown | Jim Apple |
| [IMPALA-3284](https://issues.apache.org/jira/browse/IMPALA-3284) | impala-cdh5-2.3.0\_5.5.x-core-integration job fails because of wrong hive artifacts |  Major | Infrastructure | Dimitris Tsirogiannis | Jim Apple |
| [IMPALA-2764](https://issues.apache.org/jira/browse/IMPALA-2764) | Impala should not statically link Cyrus SASL |  Major | Infrastructure | Martin Grund | Martin Grund |
| [IMPALA-2883](https://issues.apache.org/jira/browse/IMPALA-2883) | Build failure due to exception in test\_redaction.py. Failed to kill an impalad within 10 seconds. |  Blocker | Infrastructure | Alexander Behm | Tim Armstrong |
| [IMPALA-2479](https://issues.apache.org/jira/browse/IMPALA-2479) | Failure in TestParquet.test\_multiple\_blocks |  Major | Infrastructure | Alexander Behm | Sailesh Mukil |
| [IMPALA-2722](https://issues.apache.org/jira/browse/IMPALA-2722) | TestTPCHJoinQueries.test\_outer\_joins exceeds memory limit with non-partitioned hash joins |  Major | . | Michael Ho | Michael Ho |
| [IMPALA-3018](https://issues.apache.org/jira/browse/IMPALA-3018) | min(), max(), and first\_value() will DCHECK on empty strings |  Blocker | Backend | Skye Wanderman-Milne | Michael Ho |
| [IMPALA-1391](https://issues.apache.org/jira/browse/IMPALA-1391) | TPC-DS query 17 very slow |  Minor | Perf Investigation | David Rorke | Mostafa Mokhtar |
| [IMPALA-2958](https://issues.apache.org/jira/browse/IMPALA-2958) | Qgen: Char columns are not handled correctly |  Minor | Infrastructure | Taras Bobrovytsky | Taras Bobrovytsky |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2554](https://issues.apache.org/jira/browse/IMPALA-2554) | Increase Thrift default buffers size from 512 Bytes |  Blocker | . | Mostafa Mokhtar | Henry Robinson |
| [IMPALA-2747](https://issues.apache.org/jira/browse/IMPALA-2747) | Thrift-client cleans openSSL state before using it in the case of the catalog |  Blocker | Security | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-2871](https://issues.apache.org/jira/browse/IMPALA-2871) | ExprCodegenTest failed to load IR file |  Major | Infrastructure | Skye Wanderman-Milne | Tim Armstrong |
| [IMPALA-2872](https://issues.apache.org/jira/browse/IMPALA-2872) | PromiseDeathTest.RepeatedSetTest doesn't die |  Major | Backend | Skye Wanderman-Milne | Tim Armstrong |
| [IMPALA-2903](https://issues.apache.org/jira/browse/IMPALA-2903) | Impala.tests.custom\_cluster.test\_alloc\_fail.TestAllocFail.test\_alloc\_fail\_init failed in release mode |  Blocker | Backend | Tim Armstrong | Michael Ho |
| [IMPALA-2179](https://issues.apache.org/jira/browse/IMPALA-2179) | IMPALA-2179: Extend Impala shell to allow passing variables through the command line |  Major | Clients | Andre Araujo | Andre Araujo |
| [IMPALA-2180](https://issues.apache.org/jira/browse/IMPALA-2180) | IMPALA-2180: Extend SET command to allow setting variables in Impala Shell. |  Major | Clients | Andre Araujo | Andre Araujo |
| [IMPALA-2965](https://issues.apache.org/jira/browse/IMPALA-2965) | Use bloom filters instead of bitmaps |  Critical | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-2952](https://issues.apache.org/jira/browse/IMPALA-2952) | Have frontend annotate filters with partitioning metadata |  Major | Distributed Exec | Henry Robinson | Dimitris Tsirogiannis |
| [IMPALA-2464](https://issues.apache.org/jira/browse/IMPALA-2464) | Heuristic for disabling Parquet scanner bitmap filters is broken. |  Major | Backend | Tim Armstrong | Henry Robinson |
| [IMPALA-2985](https://issues.apache.org/jira/browse/IMPALA-2985) | Add query option to control waiting time for scan-range filters |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-2972](https://issues.apache.org/jira/browse/IMPALA-2972) | Re-enable intra-fragment filtering even when ENABLE\_RUNTIME\_FILTERING=0 |  Blocker | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-3049](https://issues.apache.org/jira/browse/IMPALA-3049) | Address cache misses introduced Runtime filter counters |  Critical | Backend | Mostafa Mokhtar | Henry Robinson |
| [IMPALA-2964](https://issues.apache.org/jira/browse/IMPALA-2964) | Determine if waiting Xms for scan-range filters is effective |  Major | Distributed Exec | Henry Robinson | Henry Robinson |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2526](https://issues.apache.org/jira/browse/IMPALA-2526) | Get the right 'NumColumns' in the parquet scanner |  Minor | . | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-799](https://issues.apache.org/jira/browse/IMPALA-799) | Impala code and docs all refer to binary LLVM IR files as .ll files, but they should actually be .bc files. |  Minor | . | Uri Laserson | Tim Armstrong |
| [IMPALA-2697](https://issues.apache.org/jira/browse/IMPALA-2697) | Move scheduling classes from statestore/ to scheduling/ |  Trivial | . | Henry Robinson | Henry Robinson |
| [IMPALA-2701](https://issues.apache.org/jira/browse/IMPALA-2701) | Stop exposing StringVal::Append() |  Major | . | Michael Ho | Michael Ho |
| [IMPALA-2801](https://issues.apache.org/jira/browse/IMPALA-2801) | Flaky test: PlannerTest.testHbase |  Blocker | Infrastructure | Alexander Behm | Alexander Behm |
| [IMPALA-1309](https://issues.apache.org/jira/browse/IMPALA-1309) | Add support for distinct in group\_concat function |  Major | Frontend | Kaufman Ng | Andre Calfa |
| [IMPALA-2858](https://issues.apache.org/jira/browse/IMPALA-2858) | Verify that exec nodes delete blocks |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-2857](https://issues.apache.org/jira/browse/IMPALA-2857) | Add "IS [NOT] DISTINCT FROM" to query generator |  Blocker | Infrastructure | casey | casey |
| [IMPALA-2859](https://issues.apache.org/jira/browse/IMPALA-2859) | Get Impala exhaustive tests to finish in release |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-1305](https://issues.apache.org/jira/browse/IMPALA-1305) | Improve performance of high cardinality / low reduction aggs |  Major | Backend | Nong Li | Tim Armstrong |
| [IMPALA-2197](https://issues.apache.org/jira/browse/IMPALA-2197) | Test 2.3 planner changes |  Critical | Infrastructure | Ippokratis Pandis | Harrison Sheinblatt |
| [IMPALA-2419](https://issues.apache.org/jira/browse/IMPALA-2419) | Extend Probe filter implementation |  Major | Backend | Mostafa Mokhtar | Jim Apple |
| [IMPALA-3130](https://issues.apache.org/jira/browse/IMPALA-3130) | Document RECOVER PARTITIONS |  Minor | Docs | Jim Apple | John Russell |


