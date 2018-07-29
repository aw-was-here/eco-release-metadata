
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

## Release Impala 2.3.0 - Unreleased (as of 2018-07-29)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-1771](https://issues.apache.org/jira/browse/IMPALA-1771) | Hyperbolic trig fns etc. |  Major | . | Henry Robinson | Feni Chawla |
| [IMPALA-2081](https://issues.apache.org/jira/browse/IMPALA-2081) | Add PERCENT\_RANK, NTILE, CUME\_DIST analytic window functions |  Critical | . | Matthew Jacobs | Sailesh Mukil |
| [IMPALA-2084](https://issues.apache.org/jira/browse/IMPALA-2084) | SPLIT\_PART and REGEXP\_LIKE functions for Tableau pushdown |  Critical | . | Justin Erickson | Sailesh Mukil |
| [IMPALA-1660](https://issues.apache.org/jira/browse/IMPALA-1660) | Netezza compatibility functions: math |  Major | . | Henry Robinson | Tim Armstrong |
| [IMPALA-2190](https://issues.apache.org/jira/browse/IMPALA-2190) | Complete conversion functions between timestamp, unixtime/epoch, and string dates |  Major | . | Justin Erickson | Andre Calfa |
| [IMPALA-2310](https://issues.apache.org/jira/browse/IMPALA-2310) | Add PURGE option to DROP TABLE |  Major | . | Martin Nash | bharath v |
| [IMPALA-2196](https://issues.apache.org/jira/browse/IMPALA-2196) | Add support for DESCRIBE DATABASE similar to Hive |  Major | . | Jenny Kim | Amos Bird |
| [IMPALA-2679](https://issues.apache.org/jira/browse/IMPALA-2679) | Lateral View functionality in Impala, just like Hive |  Major | . | Pavas Garg |  |
| [IMPALA-2147](https://issues.apache.org/jira/browse/IMPALA-2147) | Support for null-safe equal/IS [NOT] DISTINCT FROM |  Major | Backend | Marcel Kornacker | Jim Apple |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-1848](https://issues.apache.org/jira/browse/IMPALA-1848) | Allow reset of metrics in /rpcz |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-1595](https://issues.apache.org/jira/browse/IMPALA-1595) | Add location to SHOW PARTITIONS and/or SHOW TABLE STATS. |  Major | . | Alexander Behm | Henry Robinson |
| [IMPALA-1945](https://issues.apache.org/jira/browse/IMPALA-1945) | Add a "query duration" column on the impalad debug web page |  Minor | . | Uri Laserson | Henry Robinson |
| [IMPALA-1647](https://issues.apache.org/jira/browse/IMPALA-1647) | Spinlock should be lock compatible with Boost / STD |  Minor | . | Martin Grund | arthurpeng |
| [IMPALA-1730](https://issues.apache.org/jira/browse/IMPALA-1730) | Reduce the window of spinning for Parquet and base-sequence scanners |  Major | . | Ippokratis Pandis | Dan Hecht |
| [IMPALA-1139](https://issues.apache.org/jira/browse/IMPALA-1139) | Implement TRUNCATE TABLE statement |  Minor | . | John Russell | Zuo Wang |
| [IMPALA-1568](https://issues.apache.org/jira/browse/IMPALA-1568) | Find / repair missing partitions command |  Major | . | Henry Robinson | arthurpeng |
| [IMPALA-1968](https://issues.apache.org/jira/browse/IMPALA-1968) | Bad plan choices due to incorrect number of estimated hosts. |  Critical | . | Alexander Behm | Dan Hecht |
| [IMPALA-2064](https://issues.apache.org/jira/browse/IMPALA-2064) | Add effective\_user() builtin |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-2068](https://issues.apache.org/jira/browse/IMPALA-2068) | TOpenSessionResp should contain coordinator host |  Major | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-1870](https://issues.apache.org/jira/browse/IMPALA-1870) | Support users containing commas in --authorized\_proxy\_user\_config |  Major | . | Henry Robinson | Sailesh Mukil |
| [IMPALA-1998](https://issues.apache.org/jira/browse/IMPALA-1998) | Include BE test results in Jenkins Test Result. |  Blocker | . | Alexander Behm | Martin Grund |
| [IMPALA-1999](https://issues.apache.org/jira/browse/IMPALA-1999) | Enable "Test Result" in all nightly and CI Jenkins runs. |  Critical | . | Alexander Behm | Ishaan Joshi |
| [IMPALA-2143](https://issues.apache.org/jira/browse/IMPALA-2143) | Avoid impala-shell sending password in plain text with ssl enabled |  Minor | Clients | bharath v | Henry Robinson |
| [IMPALA-1982](https://issues.apache.org/jira/browse/IMPALA-1982) | parquet.hive.serde.ParquetHiveSerDe is deprecated |  Critical | . | Goun Na | Skye Wanderman-Milne |
| [IMPALA-1588](https://issues.apache.org/jira/browse/IMPALA-1588) | Cache HDFS file handle to avoid repeated hdfs fopen call |  Major | . | Alan Choi | Martin Grund |
| [IMPALA-1975](https://issues.apache.org/jira/browse/IMPALA-1975) | Automatically reconnect to Impala in the shell if the connection is lost |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-2034](https://issues.apache.org/jira/browse/IMPALA-2034) | Netezza compatibility functions: Char |  Major | . | Henry Robinson | Feni Chawla |
| [IMPALA-1829](https://issues.apache.org/jira/browse/IMPALA-1829) | Enable and test creating UDAs with an intermediate type different from the result type. |  Major | . | Alexander Behm | Tim Armstrong |
| [IMPALA-2015](https://issues.apache.org/jira/browse/IMPALA-2015) | Add support for nested loop joins |  Major | . | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-595](https://issues.apache.org/jira/browse/IMPALA-595) | add cascade to drop database |  Major | . | Greg Rahn | Vlad Berindei |
| [IMPALA-1795](https://issues.apache.org/jira/browse/IMPALA-1795) | Add support for SSL private key passwords |  Blocker | . | Wellington Ramos Chevreuil | Henry Robinson |
| [IMPALA-1983](https://issues.apache.org/jira/browse/IMPALA-1983) | Impala should handle corrupted table stats better |  Critical | . | Juan Yu | Martin Grund |
| [IMPALA-2051](https://issues.apache.org/jira/browse/IMPALA-2051) | Allow Squeasel to accept certificates and private keys from separate files |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-1136](https://issues.apache.org/jira/browse/IMPALA-1136) | Impala is unable to read hive tables created with the "STORED AS AVRO" clause |  Blocker | . | Tom White | Martin Grund |
| [IMPALA-898](https://issues.apache.org/jira/browse/IMPALA-898) | Add support for ISO-SQL common table functions |  Minor | . | Jonathan Seidman | Vlad Berindei |
| [IMPALA-2316](https://issues.apache.org/jira/browse/IMPALA-2316) | Add RESTRICT to DROP DATABASE |  Major | . | Vlad Berindei | Vlad Berindei |
| [IMPALA-1621](https://issues.apache.org/jira/browse/IMPALA-1621) | Reduce minimum memory requirement for TPC-H Q9 (1.29GB) |  Major | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-2249](https://issues.apache.org/jira/browse/IMPALA-2249) | Avoid allocating stringbuffer larger than 1GB in HdfsTextScanner::FillByteBufferCompressedFile() |  Major | . | Juan Yu | Juan Yu |
| [IMPALA-1881](https://issues.apache.org/jira/browse/IMPALA-1881) | Maximize data locality when scanning Parquet files with multiple row groups. |  Blocker | . | Alexander Behm | Sailesh Mukil |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-1868](https://issues.apache.org/jira/browse/IMPALA-1868) | Crash: DCHECK failed: pinned in impala::Sorter::Run::PrepareRead |  Major | . | Taras Bobrovytsky | Matthew Jacobs |
| [IMPALA-1913](https://issues.apache.org/jira/browse/IMPALA-1913) | Intel compiler cannot build impala logging.c because constant folding issues with \_\_builtin\_prefetch etc |  Minor | . | Melanie Blower | Zuo Wang |
| [IMPALA-1896](https://issues.apache.org/jira/browse/IMPALA-1896) | LLVM IR module dependencies don't work |  Major | . | Dan Hecht | Martin Grund |
| [IMPALA-1900](https://issues.apache.org/jira/browse/IMPALA-1900) | Assign predicates below analytic functions with a compatible partition by clause. |  Major | . | Alexander Behm | Dimitris Tsirogiannis |
| [IMPALA-1949](https://issues.apache.org/jira/browse/IMPALA-1949) | Analysis exception when a binary predicate contains an IN operator with values. |  Major | . | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-1669](https://issues.apache.org/jira/browse/IMPALA-1669) | Add partitions in bulk after dynamic INSERT |  Major | . | Henry Robinson | Zuo Wang |
| [IMPALA-1946](https://issues.apache.org/jira/browse/IMPALA-1946) | Outer joins on a view that have ON-clause predicates only referencing the view can cause a crash. |  Blocker | . | Alexander Behm | Alexander Behm |
| [IMPALA-1519](https://issues.apache.org/jira/browse/IMPALA-1519) | Crash: impala::TupleIsNullPredicate::Prepare |  Critical | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-1960](https://issues.apache.org/jira/browse/IMPALA-1960) | Illegal reference to non-materialized tuple: tid=1 when a query with an inline view has an empty SPJ block |  Major | . | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-1919](https://issues.apache.org/jira/browse/IMPALA-1919) | partitioned-hash-join-node-ir.cc:46: Check failed: !out\_batch-\>AtCapacity() |  Blocker | . | Dan Hecht | Ippokratis Pandis |
| [IMPALA-1973](https://issues.apache.org/jira/browse/IMPALA-1973) | Query a partitioned table cause Impala crash when data file doesn't have newline at the end. |  Blocker | . | Juan Yu | Juan Yu |
| [IMPALA-1969](https://issues.apache.org/jira/browse/IMPALA-1969) | Initializing SSL in BufferedBlockMgr must be made thread-safe |  Blocker | . | Matthew Jacobs |  |
| [IMPALA-1596](https://issues.apache.org/jira/browse/IMPALA-1596) | Builtin decimal UDFs should switch on byte size |  Major | . | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-1952](https://issues.apache.org/jira/browse/IMPALA-1952) | Support CASTing a string literal representing a number in scientific notation to a DECIMAL. |  Blocker | . | Alexander Behm | casey |
| [IMPALA-1967](https://issues.apache.org/jira/browse/IMPALA-1967) | On Sentry enabled impala 2.1.3, one join order throws ERROR: AuthorizationException: User 'xx' does not have privileges to access: databse\_yy |  Blocker | . | Mala Chikka Kempanna | Dimitris Tsirogiannis |
| [IMPALA-2008](https://issues.apache.org/jira/browse/IMPALA-2008) | Wrong warning when insert overwrite empty dataset to an empty table |  Blocker | . | Juan Yu | Juan Yu |
| [IMPALA-1916](https://issues.apache.org/jira/browse/IMPALA-1916) | Status::OK shouldn't be a global variable |  Major | . | Dan Hecht | Martin Grund |
| [IMPALA-2002](https://issues.apache.org/jira/browse/IMPALA-2002) | Allow external data source classes to be cached |  Major | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-2043](https://issues.apache.org/jira/browse/IMPALA-2043) | Failing s3 test: metadata.test\_ddl.TestDdlStatements.test\_create\_alter\_bulk\_partition |  Major | . | casey | Dan Hecht |
| [IMPALA-859](https://issues.apache.org/jira/browse/IMPALA-859) | Allow SSL between backend services |  Major | . | Alan Choi | Zuo Wang |
| [IMPALA-2048](https://issues.apache.org/jira/browse/IMPALA-2048) | Class not found: com.cloudera.impala.hive.serde.ParquetInputFormat error |  Blocker | . | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-1987](https://issues.apache.org/jira/browse/IMPALA-1987) | Wrong results when query has an outer join, inline views and null-generating functions like coalesce |  Blocker | . | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-2096](https://issues.apache.org/jira/browse/IMPALA-2096) | ImportError: No module named query |  Blocker | . | Dan Hecht | Ishaan Joshi |
| [IMPALA-2101](https://issues.apache.org/jira/browse/IMPALA-2101) | buffered-block-mgr-test NULL pointer dereference in BufferedBlockMgr::PinBlock |  Critical | . | Dan Hecht | Dan Hecht |
| [IMPALA-2018](https://issues.apache.org/jira/browse/IMPALA-2018) | Where clause does not propagate to joins inside nested views |  Blocker | . | Alan Jackoway | Dimitris Tsirogiannis |
| [IMPALA-1735](https://issues.apache.org/jira/browse/IMPALA-1735) | Failed to expand memory when running llama on yarn because of bug in MemTracker::ExpandLimit |  Major | . | yunfeiliu | Matthew Jacobs |
| [IMPALA-1408](https://issues.apache.org/jira/browse/IMPALA-1408) | Impala pprof profiling partially broken |  Major | . | David Rorke | Henry Robinson |
| [IMPALA-2130](https://issues.apache.org/jira/browse/IMPALA-2130) | hdfs-parquet-scanner's verification of file version is not correct |  Critical | . | Nong Li | Ippokratis Pandis |
| [IMPALA-2133](https://issues.apache.org/jira/browse/IMPALA-2133) | HBase filter doesn't unescape string values correctly |  Major | . | Martin Grund | Martin Grund |
| [IMPALA-1720](https://issues.apache.org/jira/browse/IMPALA-1720) | Inconsistent error messaging related to stats of table in query and analyze |  Major | . | Mala Chikka Kempanna |  |
| [IMPALA-2136](https://issues.apache.org/jira/browse/IMPALA-2136) | Partitions with TINYINT partition columns will always have 0 estimated rows after compute stats |  Critical | . | Henry Robinson | Henry Robinson |
| [IMPALA-2001](https://issues.apache.org/jira/browse/IMPALA-2001) | create-load-data.sh hangs in cache-test-tables |  Blocker | . | Alexander Behm | Martin Grund |
| [IMPALA-1929](https://issues.apache.org/jira/browse/IMPALA-1929) | Crash because PHJ::NextSpilledProbeRowBatch() tries to use a NULL hash\_tbl |  Critical | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-1898](https://issues.apache.org/jira/browse/IMPALA-1898) | Substituting the agg output in analysis has issues with explicit select-list aliases. |  Critical | . | Alexander Behm | Tim Armstrong |
| [IMPALA-1859](https://issues.apache.org/jira/browse/IMPALA-1859) | INSERT OVERWRITE with empty result set leaves existing records in partitioned table |  Critical | . | Steven | Juan Yu |
| [IMPALA-1756](https://issues.apache.org/jira/browse/IMPALA-1756) | Constant expressions not checked for errors, no state cleanup on exception. |  Major | . | Grant Henke | Sailesh Mukil |
| [IMPALA-1955](https://issues.apache.org/jira/browse/IMPALA-1955) | HdfsScanNode does not check return status of Expr::Open |  Major | . | Nong Li | Ippokratis Pandis |
| [IMPALA-2088](https://issues.apache.org/jira/browse/IMPALA-2088) | Incorrect result (Analytic Functions) |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2155](https://issues.apache.org/jira/browse/IMPALA-2155) | Error in Bitmap Get/Set |  Major | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-2141](https://issues.apache.org/jira/browse/IMPALA-2141) | UnionNode::GetNext() doesn't check for query errors |  Major | . | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-2044](https://issues.apache.org/jira/browse/IMPALA-2044) | Database in connection URL ignored using Apache Hive JDBC driver + Impala |  Major | . | casey | Henry Robinson |
| [IMPALA-2016](https://issues.apache.org/jira/browse/IMPALA-2016) | Cancelling query with group\_concat causes crash |  Blocker | . | casey | casey |
| [IMPALA-2086](https://issues.apache.org/jira/browse/IMPALA-2086) | Incorrect handling of leap years when adding 1 year interval to date |  Blocker | . | Taras Bobrovytsky | casey |
| [IMPALA-2090](https://issues.apache.org/jira/browse/IMPALA-2090) | Incorrect handling of leap years when adding 1 month interval to date |  Critical | . | Taras Bobrovytsky | casey |
| [IMPALA-2160](https://issues.apache.org/jira/browse/IMPALA-2160) | Temp file overallocated by up to write\_size bytes. |  Minor | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2166](https://issues.apache.org/jira/browse/IMPALA-2166) | Build times out because split-hbase.sh hangs. Looks like the region servers have been killed due to OOM. |  Blocker | . | Alexander Behm | Skye Wanderman-Milne |
| [IMPALA-1737](https://issues.apache.org/jira/browse/IMPALA-1737) | invalid tuple\_idx when combining INSERT INTO with analytic subquery |  Blocker | . | Tristan Stevens | Alexander Behm |
| [IMPALA-2183](https://issues.apache.org/jira/browse/IMPALA-2183) | Impala shell cannot find sasl module in perf runs. |  Blocker | . | Alexander Behm | casey |
| [IMPALA-1576](https://issues.apache.org/jira/browse/IMPALA-1576) | Queries that hit their RM limit neither expand nor spill to disk |  Major | . | Henry Robinson | Matthew Jacobs |
| [IMPALA-2146](https://issues.apache.org/jira/browse/IMPALA-2146) | Race consuming memory while consuming a mem expansion request to Llama |  Critical | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-2187](https://issues.apache.org/jira/browse/IMPALA-2187) | ASAN build fails in test\_authorization.py with "ValueError: bad marshal data" |  Blocker | . | Alexander Behm | Skye Wanderman-Milne |
| [IMPALA-2194](https://issues.apache.org/jira/browse/IMPALA-2194) | test\_grant\_revoke.py failing on nightly runs with "Required field 'action' is unset!" |  Blocker | . | Alexander Behm | Alexander Behm |
| [IMPALA-2137](https://issues.apache.org/jira/browse/IMPALA-2137) | Flaky test: test\_file\_partitions on text/lzo/block |  Major | Infrastructure | Ippokratis Pandis | Martin Grund |
| [IMPALA-2199](https://issues.apache.org/jira/browse/IMPALA-2199) | Row count not updated when compute incremental stats is used with a partition spec that contains no data |  Minor | . | Chris Channing | Chris Channing |
| [IMPALA-2201](https://issues.apache.org/jira/browse/IMPALA-2201) | Compute [incremental] stats may not persist the stats if the data was loaded from Hive with hive.stats.autogather=true. |  Blocker | . | Alexander Behm | Alexander Behm |
| [IMPALA-2203](https://issues.apache.org/jira/browse/IMPALA-2203) | CTAS and IAS produce different results vs SELECT when using FULL JOIN |  Blocker | . | Juan Yu | Alexander Behm |
| [IMPALA-2188](https://issues.apache.org/jira/browse/IMPALA-2188) | expr-test fails on TestError() for built-ins/UDFs without Prepare() functions |  Major | . | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-2216](https://issues.apache.org/jira/browse/IMPALA-2216) | TestLastDdlTimeUpdate fails with "Illegal reference to unmaterialized slot" |  Blocker | . | Henry Robinson | Alexander Behm |
| [IMPALA-2191](https://issues.apache.org/jira/browse/IMPALA-2191) | heap-use-after-free Sorter::AddBatch() detected by ASAN |  Blocker | . | Alexander Behm | Dimitris Tsirogiannis |
| [IMPALA-2192](https://issues.apache.org/jira/browse/IMPALA-2192) | Wrong results on TPCH-Q11 during nightly data load |  Blocker | . | Alexander Behm | Dimitris Tsirogiannis |
| [IMPALA-2089](https://issues.apache.org/jira/browse/IMPALA-2089) | Predicate from the ON clause of an inner join is dropped during planning |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2239](https://issues.apache.org/jira/browse/IMPALA-2239) | Failed test: query\_test.test\_queries.TestQueries.test\_misc in impala-master-cdh5-exhaustive |  Blocker | . | Dimitris Tsirogiannis | Taras Bobrovytsky |
| [IMPALA-1813](https://issues.apache.org/jira/browse/IMPALA-1813) | CREATE TABLE LIKE ... STORED AS AVRO does not work. |  Major | . | Nong Li | Alexander Behm |
| [IMPALA-1947](https://issues.apache.org/jira/browse/IMPALA-1947) | Avro cols may load incorrectly if schema inconsistent with StorageDescriptor |  Major | . | Matthew Jacobs | Alexander Behm |
| [IMPALA-1906](https://issues.apache.org/jira/browse/IMPALA-1906) | PARQUET\_FILE\_SIZE query option not always honored due to an internal miscalculation. |  Critical | . | Alexander Behm | Vlad Berindei |
| [IMPALA-2251](https://issues.apache.org/jira/browse/IMPALA-2251) | Impala allows creation of text tables with same row and field delimiter |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2253](https://issues.apache.org/jira/browse/IMPALA-2253) | setting request\_pool query option should not override query to pool rules |  Major | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-1675](https://issues.apache.org/jira/browse/IMPALA-1675) | Timestamp: Adding/subtracting very large time intervals to timestamps produces incorrect result |  Major | . | casey | casey |
| [IMPALA-2178](https://issues.apache.org/jira/browse/IMPALA-2178) | Impala returns incorrect value when group by multiple CHAR column |  Blocker | . | Juan Yu | Skye Wanderman-Milne |
| [IMPALA-2257](https://issues.apache.org/jira/browse/IMPALA-2257) | Text delimiter breaks data loading build |  Blocker | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2266](https://issues.apache.org/jira/browse/IMPALA-2266) | IllegalStateException: Illegal reference to non-materialized tuple: tid=3 |  Blocker | . | casey | Alexander Behm |
| [IMPALA-2264](https://issues.apache.org/jira/browse/IMPALA-2264) | Implicit casts to integers from decimals with higher precision sometimes allowed |  Blocker | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2227](https://issues.apache.org/jira/browse/IMPALA-2227) | S3:query\_test.test\_queries.TestQueries.test\_exprs failure |  Blocker | . | Dimitris Tsirogiannis | Juan Yu |
| [IMPALA-2161](https://issues.apache.org/jira/browse/IMPALA-2161) | Avro schema's generated by avro-tools can fail silently |  Major | . | Peter Ebert | Martin Grund |
| [IMPALA-2270](https://issues.apache.org/jira/browse/IMPALA-2270) | FNV hash does not handle empty strings correctly |  Blocker | . | Nong Li | Tim Armstrong |
| [IMPALA-2275](https://issues.apache.org/jira/browse/IMPALA-2275) | S3: authorization.test\_grant\_revoke failure due to stale grant\_revoke\_no\_insert.test |  Blocker | . | Dan Hecht | Dimitris Tsirogiannis |
| [IMPALA-2042](https://issues.apache.org/jira/browse/IMPALA-2042) | Impala should check avro.schema.literal/url before allowing modification |  Major | . | Jeremy Beard | Huaisi Xu |
| [IMPALA-2292](https://issues.apache.org/jira/browse/IMPALA-2292) | The no\_avro\_schema table can no longer be created by Hive since it disabled timestamps in Avro. |  Blocker | Infrastructure | Ishaan Joshi | Alexander Behm |
| [IMPALA-2283](https://issues.apache.org/jira/browse/IMPALA-2283) | thrift-server-test caused the full data load build to fail |  Blocker | . | Ishaan Joshi | Henry Robinson |
| [IMPALA-2291](https://issues.apache.org/jira/browse/IMPALA-2291) | impalad crash while running low\_mem\_limit |  Blocker | . | Dan Hecht | Tim Armstrong |
| [IMPALA-2280](https://issues.apache.org/jira/browse/IMPALA-2280) | webserver-test be test ASAN failure: heap-use-after-free |  Blocker | . | Dan Hecht | Henry Robinson |
| [IMPALA-2110](https://issues.apache.org/jira/browse/IMPALA-2110) | readline bug in centos 7 causes the Impala shell to produce garbled output when used in non-interactive mode. |  Critical | Clients | Ishaan Joshi | Ishaan Joshi |
| [IMPALA-2304](https://issues.apache.org/jira/browse/IMPALA-2304) | test\_statestore.py: KillableThreadedServer instance has no attribute 'port' |  Blocker | . | Dan Hecht | Henry Robinson |
| [IMPALA-2289](https://issues.apache.org/jira/browse/IMPALA-2289) | Wrong results for nested TPCH Q13 and Q22. |  Blocker | . | Alexander Behm | Dimitris Tsirogiannis |
| [IMPALA-2278](https://issues.apache.org/jira/browse/IMPALA-2278) | test\_file\_partitions failure for text/lzo format of alltypesaggmultifiles |  Critical | . | Dan Hecht | Dan Hecht |
| [IMPALA-2305](https://issues.apache.org/jira/browse/IMPALA-2305) | exhaustive: test\_sort: Query did not have enough memory to get the minimum required buffers in the block manager |  Blocker | . | Dan Hecht | Tim Armstrong |
| [IMPALA-2100](https://issues.apache.org/jira/browse/IMPALA-2100) | test\_partitioning.py failure: Estimated Per-Host Requirements changed |  Major | . | Dan Hecht | Alexander Behm |
| [IMPALA-2296](https://issues.apache.org/jira/browse/IMPALA-2296) | Crash: impala::Tuple::DeepCopy (Nested Types) |  Blocker | . | Taras Bobrovytsky | Tim Armstrong |
| [IMPALA-2295](https://issues.apache.org/jira/browse/IMPALA-2295) | BufferedTupleStream::DeepCopyInternal ignores collection slots |  Blocker | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2290](https://issues.apache.org/jira/browse/IMPALA-2290) | BTrim() with non constant second argument is not thread safe. |  Critical | . | Nong Li | Henry Robinson |
| [IMPALA-2288](https://issues.apache.org/jira/browse/IMPALA-2288) | IllegalStateException when ordering by struct field |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-1917](https://issues.apache.org/jira/browse/IMPALA-1917) | Query return empty result if it contains NullLiteral in inlineview |  Blocker | . | Juan Yu | Alexander Behm |
| [IMPALA-2286](https://issues.apache.org/jira/browse/IMPALA-2286) | Check failed: query\_to\_block\_mgrs\_.find(query\_id\_) != query\_to\_block\_mgrs\_.end() |  Blocker | . | casey | Dan Hecht |
| [IMPALA-2297](https://issues.apache.org/jira/browse/IMPALA-2297) | Crash: impala::ExprContext::GetValue (Nested Types) |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2318](https://issues.apache.org/jira/browse/IMPALA-2318) | Subplan with limit hits DCHECK in coordinator. |  Blocker | . | Alexander Behm | Alexander Behm |
| [IMPALA-2319](https://issues.apache.org/jira/browse/IMPALA-2319) | Crash with nested loop join + limit |  Blocker | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2256](https://issues.apache.org/jira/browse/IMPALA-2256) | Failed DCHECK(idx \<= IDX\_MASK \>\> IDX\_SHIFT) in RowIdx::set |  Blocker | . | Taras Bobrovytsky | Ippokratis Pandis |
| [IMPALA-2325](https://issues.apache.org/jira/browse/IMPALA-2325) | Crash: impala::Tuple::IsNull |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2326](https://issues.apache.org/jira/browse/IMPALA-2326) | Crash: impala::MemTracker::consumption |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2331](https://issues.apache.org/jira/browse/IMPALA-2331) | RowBatchSerializeTest.DedupPathologicalFull failure |  Blocker | . | Ippokratis Pandis | Tim Armstrong |
| [IMPALA-2302](https://issues.apache.org/jira/browse/IMPALA-2302) | The value for parquet.block.size used for loading nested data doesn't work with the latest Hive/MR |  Blocker | Infrastructure | Ishaan Joshi | Ishaan Joshi |
| [IMPALA-2335](https://issues.apache.org/jira/browse/IMPALA-2335) | Crash: impala::BufferedTupleStream::ComputeRowSize |  Blocker | . | Taras Bobrovytsky | Tim Armstrong |
| [IMPALA-2307](https://issues.apache.org/jira/browse/IMPALA-2307) | Integer type overflow in the  bool Get(int64\_t bit\_index) const function of bitmap.h  file |  Trivial | . | Youwei Wang | Ippokratis Pandis |
| [IMPALA-2339](https://issues.apache.org/jira/browse/IMPALA-2339) | Check failed: slot\_desc-\>type().type == TYPE\_STRING (15 vs. 10) |  Major | . | casey | Tim Armstrong |
| [IMPALA-2299](https://issues.apache.org/jira/browse/IMPALA-2299) | Crash: impala::RowBatch::SerializeInternal (Nested Types) |  Blocker | . | Taras Bobrovytsky | Tim Armstrong |
| [IMPALA-2341](https://issues.apache.org/jira/browse/IMPALA-2341) | NPE with a left-outer-joined correlated inline view without an On clause. |  Critical | . | Alexander Behm | Alexander Behm |
| [IMPALA-2322](https://issues.apache.org/jira/browse/IMPALA-2322) | Incorrect results with sending a collection-typed slot through a hash exchange. |  Blocker | . | Alexander Behm | Alexander Behm |
| [IMPALA-2320](https://issues.apache.org/jira/browse/IMPALA-2320) | Query with analytic functions inside subplan hit DCHECK in free-pool.h |  Blocker | . | Alexander Behm | Alexander Behm |
| [IMPALA-2244](https://issues.apache.org/jira/browse/IMPALA-2244) | HdfsScanNode.java computeNumNodes() can be slow |  Critical | . | Nong Li | Dan Hecht |
| [IMPALA-2207](https://issues.apache.org/jira/browse/IMPALA-2207) | MarkNeedToReturn() and nested loop join build side can lead to memory corruption |  Blocker | . | Dan Hecht | Tim Armstrong |
| [IMPALA-2340](https://issues.apache.org/jira/browse/IMPALA-2340) | NOT IN subquery with a relative table ref does not work. |  Critical | . | Alexander Behm | Alexander Behm |
| [IMPALA-2314](https://issues.apache.org/jira/browse/IMPALA-2314) | Crash in PHJ::PrepareNextPartition() in call to LargestSpilledPartition() |  Blocker | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-2165](https://issues.apache.org/jira/browse/IMPALA-2165) | Avoid estimating cardinality 0 in SCAN node |  Major | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-1746](https://issues.apache.org/jira/browse/IMPALA-1746) | QueryExecState doesn't check for query cancellation or errors |  Critical | . | Skye Wanderman-Milne | Sailesh Mukil |
| [IMPALA-2350](https://issues.apache.org/jira/browse/IMPALA-2350) | buffered-tuple-stream test is consistently failing in the ASAN build. |  Blocker | . | Ishaan Joshi | Tim Armstrong |
| [IMPALA-2366](https://issues.apache.org/jira/browse/IMPALA-2366) | DiskIoMgr error handling with fread() |  Critical | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2358](https://issues.apache.org/jira/browse/IMPALA-2358) | Crash: impala::Tuple::GetSlot |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2364](https://issues.apache.org/jira/browse/IMPALA-2364) | PHJ DCHECK "state\_ == PROCESSING\_PROBE (3 vs. 1) " |  Blocker | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-2158](https://issues.apache.org/jira/browse/IMPALA-2158) | DCHECK failure in AnalyticEvalNode::GetNext() expects memory to already be transferred. |  Critical | . | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-2330](https://issues.apache.org/jira/browse/IMPALA-2330) | SwitchToIoBuffers may leave stream to wrong state |  Critical | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-2241](https://issues.apache.org/jira/browse/IMPALA-2241) | Check failed: !process\_batch\_status\_.ok() 0 |  Blocker | . | casey | Ippokratis Pandis |
| [IMPALA-2271](https://issues.apache.org/jira/browse/IMPALA-2271) | Check failed: hash\_partitions\_[i]-\>aggregated\_row\_stream-\>using\_small\_buffers() |  Critical | . | casey | Ippokratis Pandis |
| [IMPALA-2352](https://issues.apache.org/jira/browse/IMPALA-2352) | PAGG::ConstructIntermediateTuple() does not handle correctly small buffers getting full |  Major | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-2380](https://issues.apache.org/jira/browse/IMPALA-2380) | Nested Loop Join should check mem limit when deep copying |  Critical | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2381](https://issues.apache.org/jira/browse/IMPALA-2381) | Row batches should count their tuple pointers towards memory limit |  Critical | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2284](https://issues.apache.org/jira/browse/IMPALA-2284) | Handle large string allocations (\>1GB) in built-in UDFs gracefully |  Critical | . | Martin Grund | Martin Grund |
| [IMPALA-2245](https://issues.apache.org/jira/browse/IMPALA-2245) | Check failed: client-\>num\_tmp\_reserved\_buffers\_ == 0 (1 vs. 0) |  Critical | . | casey | Matthew Jacobs |
| [IMPALA-2383](https://issues.apache.org/jira/browse/IMPALA-2383) | Incorrect results due to incorrect plan (Nested Types) |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2401](https://issues.apache.org/jira/browse/IMPALA-2401) | Frontend Crash: NullPointerException: null |  Critical | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2406](https://issues.apache.org/jira/browse/IMPALA-2406) | Check failed: tuple\_ptrs\_size\_ \> 0 (0 vs. 0) in exhaustive build |  Blocker | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2357](https://issues.apache.org/jira/browse/IMPALA-2357) | Crash: impala::BufferedBlockMgr::Block::BytesRemaining |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2368](https://issues.apache.org/jira/browse/IMPALA-2368) | Crash: impala::Sorter::Reset |  Critical | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2252](https://issues.apache.org/jira/browse/IMPALA-2252) | Crash (likely race) tearing down BufferedBlockMgr on query failure |  Blocker | . | Matthew Jacobs | Sailesh Mukil |
| [IMPALA-2411](https://issues.apache.org/jira/browse/IMPALA-2411) | Crash: impala::AnalyticEvalNode::Reset |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2410](https://issues.apache.org/jira/browse/IMPALA-2410) | Crash: impala::SelectNode::Reset |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2046](https://issues.apache.org/jira/browse/IMPALA-2046) | Along with backend number, please print the hostname in logs |  Critical | . | Mala Chikka Kempanna | Matthew Jacobs |
| [IMPALA-2348](https://issues.apache.org/jira/browse/IMPALA-2348) | The Catalog does not close the connection to the HMS after table invalidation |  Major | . | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-2315](https://issues.apache.org/jira/browse/IMPALA-2315) | Planner tests are failing on the full data load build because the nested tables have different file sizes. |  Blocker | . | Ishaan Joshi | Ishaan Joshi |
| [IMPALA-2414](https://issues.apache.org/jira/browse/IMPALA-2414) | Crash: impala::TupleDescriptor::ContainsStringData |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2434](https://issues.apache.org/jira/browse/IMPALA-2434) | Incorrect Result: Union All clause causes fewer rows to be returned |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2417](https://issues.apache.org/jira/browse/IMPALA-2417) | Crash trying to update runtime profile counter |  Blocker | . | casey | Tim Armstrong |
| [IMPALA-2369](https://issues.apache.org/jira/browse/IMPALA-2369) | Crash: impala::Sorter::Run::Init |  Blocker | . | Taras Bobrovytsky | Dimitris Tsirogiannis |
| [IMPALA-2282](https://issues.apache.org/jira/browse/IMPALA-2282) | Impala should use krb5 defaults for kerberos client properties. |  Blocker | . | Ishaan Joshi | Alexander Behm |
| [IMPALA-2440](https://issues.apache.org/jira/browse/IMPALA-2440) | Full outer join using non-partitioned HJ can incorrectly produce extra row of nulls |  Blocker | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-2377](https://issues.apache.org/jira/browse/IMPALA-2377) | Scan of array value with 200m elements causes crash. |  Critical | . | Alexander Behm | Skye Wanderman-Milne |
| [IMPALA-2233](https://issues.apache.org/jira/browse/IMPALA-2233) | Impala should not choose a function signature that results in loss of precision |  Critical | . | casey | Tim Armstrong |
| [IMPALA-2430](https://issues.apache.org/jira/browse/IMPALA-2430) | Crash: impala::Coordinator::ValidateCollectionSlots |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2309](https://issues.apache.org/jira/browse/IMPALA-2309) | Compute stats query fail if set query option LIVE\_PROGRESS=true |  Critical | . | Juan Yu | Juan Yu |
| [IMPALA-2444](https://issues.apache.org/jira/browse/IMPALA-2444) | parquet scanner performance regression |  Blocker | . | Dan Hecht | Tim Armstrong |
| [IMPALA-2469](https://issues.apache.org/jira/browse/IMPALA-2469) | exhaustive builds: AnalysisException: Could not resolve table reference: 'decimal\_tiny' |  Major | . | Dan Hecht | Tim Armstrong |
| [IMPALA-2468](https://issues.apache.org/jira/browse/IMPALA-2468) | 5.5.x full dataload crashed while querying lineitem\_multiblock |  Blocker | . | Dan Hecht | Tim Armstrong |
| [IMPALA-2465](https://issues.apache.org/jira/browse/IMPALA-2465) | Check failed: parse\_status\_.ok() Don't overwrite parse\_status\_ |  Blocker | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2460](https://issues.apache.org/jira/browse/IMPALA-2460) | exhaustive failures: TestParquetArrayEncodings: AnalysisException: Table already exists |  Blocker | . | Dan Hecht | Skye Wanderman-Milne |
| [IMPALA-2475](https://issues.apache.org/jira/browse/IMPALA-2475) | 5.5.x exhaustive build: test\_nested\_types: incorrect number of results |  Blocker | . | Dan Hecht | Dan Hecht |
| [IMPALA-2349](https://issues.apache.org/jira/browse/IMPALA-2349) | IllegalStateException when planning query |  Critical | . | Tim Armstrong | Alexander Behm |
| [IMPALA-2412](https://issues.apache.org/jira/browse/IMPALA-2412) | Crash: impala::Tuple::GetSlot |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2213](https://issues.apache.org/jira/browse/IMPALA-2213) | Parquet read can fail if file metadata is stale |  Critical | . | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-2461](https://issues.apache.org/jira/browse/IMPALA-2461) | ASAN build failing on cdh5\_2.3.0\_5.5.x in the be MemPoolTest MaxAllocation |  Critical | . | Ishaan Joshi | Skye Wanderman-Milne |
| [IMPALA-2456](https://issues.apache.org/jira/browse/IMPALA-2456) | Crash: impala::Coordinator::ValidateCollectionSlots() |  Blocker | . | Sailesh Mukil | Alexander Behm |
| [IMPALA-2446](https://issues.apache.org/jira/browse/IMPALA-2446) | Incorrect result (left join) |  Blocker | . | Taras Bobrovytsky | Dimitris Tsirogiannis |
| [IMPALA-2457](https://issues.apache.org/jira/browse/IMPALA-2457) | PERCENT\_RANK() returns NaN for row group with 1 row |  Major | . | John Russell | Sailesh Mukil |
| [IMPALA-2478](https://issues.apache.org/jira/browse/IMPALA-2478) | Incorrect predicate assignment with outer-joined correlated inline view. |  Blocker | . | Alexander Behm | Dimitris Tsirogiannis |
| [IMPALA-2497](https://issues.apache.org/jira/browse/IMPALA-2497) | Flaky test in analytic\_fns.test |  Critical | . | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-2477](https://issues.apache.org/jira/browse/IMPALA-2477) | Parquet metadata randomly "appears stale" |  Major | . | casey | Juan Yu |
| [IMPALA-2488](https://issues.apache.org/jira/browse/IMPALA-2488) | metadata.test\_stale\_metadata |  Critical | . | Dan Hecht | Juan Yu |
| [IMPALA-2474](https://issues.apache.org/jira/browse/IMPALA-2474) | 5.5.x: full data load failure: planner tests failing due to file size change |  Major | . | Dan Hecht | Dan Hecht |
| [IMPALA-2496](https://issues.apache.org/jira/browse/IMPALA-2496) | flaky test in test\_insert\_behaviour.py |  Minor | . | Juan Yu | Juan Yu |
| [IMPALA-2168](https://issues.apache.org/jira/browse/IMPALA-2168) | SEGV in BufferedTupleStream::num\_rows() in a query with very large, spilling ROJ |  Critical | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-2504](https://issues.apache.org/jira/browse/IMPALA-2504) | impala-cdh5.5.x-isilon: Error in acquiring locks |  Major | . | Taras Bobrovytsky | Jim Apple |
| [IMPALA-2378](https://issues.apache.org/jira/browse/IMPALA-2378) | Impalad exceeded its mem limit |  Blocker | . | casey | Tim Armstrong |
| [IMPALA-2265](https://issues.apache.org/jira/browse/IMPALA-2265) | Check failed: buffer\_desc\_ != \_\_null |  Blocker | . | casey | Ippokratis Pandis |
| [IMPALA-2517](https://issues.apache.org/jira/browse/IMPALA-2517) | buffered-block-mgr.cc:891] Check failed: Validate() |  Blocker | . | casey | Tim Armstrong |
| [IMPALA-2260](https://issues.apache.org/jira/browse/IMPALA-2260) | Crash: timestamp-functions.cc:641 - Check failed: result\_value \> input\_value |  Critical | . | Taras Bobrovytsky | casey |
| [IMPALA-2445](https://issues.apache.org/jira/browse/IMPALA-2445) | Incorrect result (join ordering) |  Blocker | . | Taras Bobrovytsky | Dimitris Tsirogiannis |
| [IMPALA-2495](https://issues.apache.org/jira/browse/IMPALA-2495) | Crash: impala::InPredicate::SetLookupPrepare |  Blocker | . | Taras Bobrovytsky | Skye Wanderman-Milne |
| [IMPALA-2512](https://issues.apache.org/jira/browse/IMPALA-2512) | impala-cdh5.5.x-s3: Failed test\_stale\_metadata.TestRewrittenFile.test\_new\_file\_shorter |  Major | . | Taras Bobrovytsky | Skye Wanderman-Milne |
| [IMPALA-2510](https://issues.apache.org/jira/browse/IMPALA-2510) | impala-cdh5.5.x-repeated-runs: Failed TestHdfsCachingDdl |  Major | . | Taras Bobrovytsky | Dimitris Tsirogiannis |
| [IMPALA-2514](https://issues.apache.org/jira/browse/IMPALA-2514) | DCHECK on destroying an ExprContext |  Critical | . | Juan Yu | Sailesh Mukil |
| [IMPALA-2529](https://issues.apache.org/jira/browse/IMPALA-2529) | old agg/join failure: test\_exprs incorrect results |  Blocker | . | Dan Hecht | Matthew Jacobs |
| [IMPALA-2528](https://issues.apache.org/jira/browse/IMPALA-2528) | 5.5.x-ASAN failure: expr\_test TimestampFunctions: nanoseconds\_add(cast('1400-01-01 00:00:00' as timestamp), -8446744073709551616) reesult NULL |  Critical | . | Dan Hecht | casey |
| [IMPALA-2470](https://issues.apache.org/jira/browse/IMPALA-2470) | TPC-H Q13 performance regression for Impala 2.3 Vs. 2.2 |  Blocker | . | Mostafa Mokhtar | Mostafa Mokhtar |
| [IMPALA-2480](https://issues.apache.org/jira/browse/IMPALA-2480) | test\_spilling.py: Memory limit exceeded: Not enough memory to switch to IO-sized buffers for a partition of join 3. |  Blocker | . | Dan Hecht | Dan Hecht |
| [IMPALA-2519](https://issues.apache.org/jira/browse/IMPALA-2519) | TPC-H Q18 mem usage regression 2.3 vs. 2.2 |  Blocker | . | Dan Hecht | Tim Armstrong |
| [IMPALA-2531](https://issues.apache.org/jira/browse/IMPALA-2531) | partitioned-hash-join-node.cc:233] Check failed: null\_probe\_rows\_ != \_\_null |  Critical | . | casey | Tim Armstrong |
| [IMPALA-2189](https://issues.apache.org/jira/browse/IMPALA-2189) | Retry logic for Llama RPC may throw exception |  Critical | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-2534](https://issues.apache.org/jira/browse/IMPALA-2534) | Update Impala's hive thirdparty bits to include latest HMS api changes |  Major | . | bharath v | Harrison Sheinblatt |
| [IMPALA-2491](https://issues.apache.org/jira/browse/IMPALA-2491) | TPC-H Q1 20% performance regression |  Blocker | . | Mostafa Mokhtar | Skye Wanderman-Milne |
| [IMPALA-2527](https://issues.apache.org/jira/browse/IMPALA-2527) | Simple nested query takes an extremely long time |  Blocker | . | Taras Bobrovytsky | Martin Grund |
| [IMPALA-2374](https://issues.apache.org/jira/browse/IMPALA-2374) | Infinite loop/recursion when scanning deeply nested Avro file. |  Critical | . | Alexander Behm | Skye Wanderman-Milne |
| [IMPALA-2075](https://issues.apache.org/jira/browse/IMPALA-2075) | Query profile reported incorrect time spent in HashJoin node |  Critical | . | Alan Choi | Alan Choi |
| [IMPALA-1612](https://issues.apache.org/jira/browse/IMPALA-1612) | After typo with single quote in impala-shell, it is impossible to get out of it and have to kill -9 it |  Major | Clients | Ippokratis Pandis | casey |
| [IMPALA-1812](https://issues.apache.org/jira/browse/IMPALA-1812) | Timestamp: Incorrect result (leap year calculation) |  Major | . | Taras Bobrovytsky | casey |
| [IMPALA-2562](https://issues.apache.org/jira/browse/IMPALA-2562) | CTAS now requires client to explicitly close operation |  Critical | . | casey | Juan Yu |
| [IMPALA-1989](https://issues.apache.org/jira/browse/IMPALA-1989) | Analysis exception when inline view has case statement with IN predicates |  Major | . | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-2139](https://issues.apache.org/jira/browse/IMPALA-2139) | IMPALA\_AUX\_TEST\_HOME default doesn't match repo name |  Minor | . | Dan Hecht | Harrison Sheinblatt |
| [IMPALA-2484](https://issues.apache.org/jira/browse/IMPALA-2484) | test\_nested\_types.py: test case for IMPALA-2376 sometimes fails |  Major | . | Dan Hecht | Skye Wanderman-Milne |
| [IMPALA-3219](https://issues.apache.org/jira/browse/IMPALA-3219) | Concurrency problems using prepared statements on JDBC driver |  Major | Clients | Jacobo Sánchez López |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-457](https://issues.apache.org/jira/browse/IMPALA-457) | Add more process stats to debug webpage |  Minor | . | Nong Li | Zuo Wang |
| [IMPALA-1001](https://issues.apache.org/jira/browse/IMPALA-1001) | Byte and Bit manipulation functions |  Minor | . | Justin Erickson | Tim Armstrong |
| [IMPALA-1389](https://issues.apache.org/jira/browse/IMPALA-1389) | Reconsider placing SASL build artifacts in /tmp. |  Major | . | Alexander Behm | Tim Armstrong |
| [IMPALA-2007](https://issues.apache.org/jira/browse/IMPALA-2007) | Flaky test: TestStatestore.test\_topic\_persistence |  Critical | . | Alexander Behm | Henry Robinson |
| [IMPALA-1992](https://issues.apache.org/jira/browse/IMPALA-1992) | Flaky test: TestStatestore::()::test\_receive\_updates. Fails with address already in use. |  Critical | . | Alexander Behm | Henry Robinson |
| [IMPALA-2438](https://issues.apache.org/jira/browse/IMPALA-2438) | Get s3 tests running and succeeding on 2.3 release |  Blocker | . | Harrison Sheinblatt | Ishaan Joshi |
| [IMPALA-2388](https://issues.apache.org/jira/browse/IMPALA-2388) | Fix, Improve, and enable impala-cdh5.5.x-integration |  Blocker | . | Harrison Sheinblatt | Ishaan Joshi |
| [IMPALA-3130](https://issues.apache.org/jira/browse/IMPALA-3130) | Document RECOVER PARTITIONS |  Minor | Docs | Jim Apple | John Russell |


