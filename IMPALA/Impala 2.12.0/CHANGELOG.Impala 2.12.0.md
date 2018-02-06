
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

## Release Impala 2.12.0 - Unreleased (as of 2018-02-06)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2248](https://issues.apache.org/jira/browse/IMPALA-2248) | Make idle\_session\_timeout a query option |  Major | . | Matthew Jacobs | Zoltán Borók-Nagy |
| [IMPALA-3282](https://issues.apache.org/jira/browse/IMPALA-3282) | Add build-in regex\_escape() |  Minor | Backend | Huaisi Xu | Jinchul Kim |
| [IMPALA-5300](https://issues.apache.org/jira/browse/IMPALA-5300) | Implement TABLESAMPLE |  Critical | Frontend | Alexander Behm | Alexander Behm |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5848](https://issues.apache.org/jira/browse/IMPALA-5848) | Account for TCMalloc overhead and client cache buffers in MemTracker |  Major | Backend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-6222](https://issues.apache.org/jira/browse/IMPALA-6222) | Make it easier to root-cause "failed to get minimum memory reservation" error |  Major | Backend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-6177](https://issues.apache.org/jira/browse/IMPALA-6177) | Clean up handcrafted IRs if they encounter error during creation |  Major | Backend | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-4168](https://issues.apache.org/jira/browse/IMPALA-4168) | Adopt Oracle-style hint placement for INSERT statements |  Major | Frontend | Alexander Behm | Jinchul Kim |
| [IMPALA-3651](https://issues.apache.org/jira/browse/IMPALA-3651) | Implement murmur\_hash() UDF |  Minor | Backend | Tim Armstrong | Jinchul Kim |
| [IMPALA-6387](https://issues.apache.org/jira/browse/IMPALA-6387) | test\_breakpad.py::test\_sigusr1\_writes\_minidump fails on exhaustive build |  Blocker | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-5058](https://issues.apache.org/jira/browse/IMPALA-5058) | Improve concurrency of DDL/DML operations during catalog updates |  Critical | Catalog | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-5478](https://issues.apache.org/jira/browse/IMPALA-5478) | run test\_tpcds\_queries with DECIMAL\_V2=true |  Major | Infrastructure | Dan Hecht | Taras Bobrovytsky |
| [IMPALA-4993](https://issues.apache.org/jira/browse/IMPALA-4993) | Add support for dictionary filtering on nested fields |  Major | Backend | Joe McDonnell | Vuk Ercegovac |
| [IMPALA-5052](https://issues.apache.org/jira/browse/IMPALA-5052) | Read and write signed integer logical type metadata in Parquet |  Minor | Frontend | Ian Buss | Anuj Phadke |
| [IMPALA-3998](https://issues.apache.org/jira/browse/IMPALA-3998) | Remove refresh\_after\_connect option from impala-shell |  Critical | Clients | Tim Armstrong | Tim Armstrong |
| [IMPALA-5654](https://issues.apache.org/jira/browse/IMPALA-5654) | Disallow managed Kudu table to explicitly set Kudu tbl name in CREATE TABLE |  Major | Frontend | Matthew Jacobs | Gabor Kaszab |
| [IMPALA-6128](https://issues.apache.org/jira/browse/IMPALA-6128) | Spill-to-disk Encryption(AES-CFB + SHA256) can be a performance bottleneck while IO is getting faster |  Major | Backend | Xianda Ke |  |
| [IMPALA-5990](https://issues.apache.org/jira/browse/IMPALA-5990) | End-to-end compression of metadata |  Critical | Catalog, Frontend | Alexander Behm | Tianyi Wang |
| [IMPALA-6113](https://issues.apache.org/jira/browse/IMPALA-6113) | Skip row groups with predicates on NULL columns |  Major | Backend | Lars Volker | Gabor Kaszab |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5017](https://issues.apache.org/jira/browse/IMPALA-5017) | Error on decimal overflow (rather than warn) |  Major | Backend | Dan Hecht | Taras Bobrovytsky |
| [IMPALA-6319](https://issues.apache.org/jira/browse/IMPALA-6319) | Allocation/Dealloc mismatch unique\_ptr param seems to be overwritten (mem-leak) |  Blocker | Backend | Pranay Singh | Alexander Behm |
| [IMPALA-4664](https://issues.apache.org/jira/browse/IMPALA-4664) | Impala shell can accidentally convert certain literal strings to lowercase |  Major | Clients, Infrastructure | Andre Araujo | Jinchul Kim |
| [IMPALA-6297](https://issues.apache.org/jira/browse/IMPALA-6297) | Remove partition/sort from Kudu INSERT for unpartitioned tables |  Major | Frontend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-5754](https://issues.apache.org/jira/browse/IMPALA-5754) | rand() algorithm is very non-random |  Major | Backend | Jim Apple | Jinchul Kim |
| [IMPALA-5929](https://issues.apache.org/jira/browse/IMPALA-5929) | Remove useless explicit casts to string |  Major | Frontend | Alexander Behm | Bikramjeet Vig |
| [IMPALA-6295](https://issues.apache.org/jira/browse/IMPALA-6295) | Inconsistent handling of 'nan' and 'inf' with min/max analytic fns |  Critical | Backend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-6296](https://issues.apache.org/jira/browse/IMPALA-6296) | DCheck in CodegenSymbolEmitter when --asm\_module\_dir is set on debug build |  Major | Backend | Tim Armstrong | Manaswini |
| [IMPALA-6370](https://issues.apache.org/jira/browse/IMPALA-6370) | Crash when querying nested data in partitioned Parquet table |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6300](https://issues.apache.org/jira/browse/IMPALA-6300) | Decimal modulo sometimes returns incorrect results |  Critical | Backend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-6364](https://issues.apache.org/jira/browse/IMPALA-6364) | Lock contention in FileHandleCache results in \>2x slowdown for remote HDFS reads |  Blocker | . | Mostafa Mokhtar | Joe McDonnell |
| [IMPALA-6362](https://issues.apache.org/jira/browse/IMPALA-6362) | Queries don't make progress due to what seems like a memory reservation deadlock while running the stress tests |  Critical | Backend | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-6355](https://issues.apache.org/jira/browse/IMPALA-6355) | dcheck failure for decimal asan tests |  Blocker | Backend | Vuk Ercegovac | Tim Armstrong |
| [IMPALA-6348](https://issues.apache.org/jira/browse/IMPALA-6348) | Redact only sensitive fields in runtime profile |  Major | . | bharath v | bharath v |
| [IMPALA-6231](https://issues.apache.org/jira/browse/IMPALA-6231) | Do some fuzz testing of decimal v2 operations |  Major | Backend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-5014](https://issues.apache.org/jira/browse/IMPALA-5014) | DECIMAL V2 round when casting to/from DECIMAL, part 2 |  Major | Backend | Dan Hecht | Taras Bobrovytsky |
| [IMPALA-6381](https://issues.apache.org/jira/browse/IMPALA-6381) | test\_exchange\_delays.py failed on isilon build due to sender timeout |  Major | Infrastructure | Zoram Thanga | Tim Armstrong |
| [IMPALA-6384](https://issues.apache.org/jira/browse/IMPALA-6384) | RequestPoolService doesn't honor custom user -\> group mapping overrides in HDFS config |  Major | Frontend | bharath v | bharath v |
| [IMPALA-3887](https://issues.apache.org/jira/browse/IMPALA-3887) | Planner tests failing due to metadata loading race with HDFS, fewer #hosts than expected |  Blocker | Infrastructure | Jim Apple | Tianyi Wang |
| [IMPALA-6363](https://issues.apache.org/jira/browse/IMPALA-6363) | cscope build step seems racy, breaks compilation |  Critical | Infrastructure | Michael Brown | Tim Armstrong |
| [IMPALA-6307](https://issues.apache.org/jira/browse/IMPALA-6307) | A CTAS query fails with error: AnalysisException: Duplicate column name: \<columnName\> |  Critical | Frontend | Zoram Thanga | Zoram Thanga |
| [IMPALA-6388](https://issues.apache.org/jira/browse/IMPALA-6388) | UnionNode sets the number of nodes incorrectly |  Critical | Frontend | Alexander Behm | Taras Bobrovytsky |
| [IMPALA-6353](https://issues.apache.org/jira/browse/IMPALA-6353) | Crash in snappy decompressor |  Blocker | Backend | Vuk Ercegovac | Tianyi Wang |
| [IMPALA-4315](https://issues.apache.org/jira/browse/IMPALA-4315) | USE \<db\> statement throws auth error if user only has column privileges |  Major | Frontend | Dimitris Tsirogiannis | Csaba Ringhofer |
| [IMPALA-6081](https://issues.apache.org/jira/browse/IMPALA-6081) | TestRuntimeFilters fails due to runtime profile missing portions |  Blocker | Backend | Jim Apple | Thomas Tauber-Marshall |
| [IMPALA-6386](https://issues.apache.org/jira/browse/IMPALA-6386) | Dataload can fail due to "invalidate metadata" concurrent with DDLs |  Critical | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-6419](https://issues.apache.org/jira/browse/IMPALA-6419) | hdfs-parquet-scanner.cc:624] Check failed: 0 == context\_-\>NumStreams() (0 vs. 11) |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6414](https://issues.apache.org/jira/browse/IMPALA-6414) | Impalad binary failed to start with SIGSEGV with GPerfTools 2.6.3 on certain platforms |  Critical | Backend | Michael Ho | Michael Ho |
| [IMPALA-6368](https://issues.apache.org/jira/browse/IMPALA-6368) | test\_chars.py races with itself when run in parallel |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6382](https://issues.apache.org/jira/browse/IMPALA-6382) | Impalad crashes on SELECT query when spill buffer is set on certain values |  Critical | Backend | Xinran Tinney | Bikramjeet Vig |
| [IMPALA-6427](https://issues.apache.org/jira/browse/IMPALA-6427) | Planner test expected output drops QUERYOPTIONS sections |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6399](https://issues.apache.org/jira/browse/IMPALA-6399) | test\_query\_profile\_thrift\_timestamps failure on exhaustive runs |  Blocker | Infrastructure | Sailesh Mukil | Lars Volker |
| [IMPALA-6418](https://issues.apache.org/jira/browse/IMPALA-6418) | Find a reliable way to detect supported TLS versions |  Blocker | Security | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3942](https://issues.apache.org/jira/browse/IMPALA-3942) | After creating a view that uses regexp\_replace we are getting the following error:  ERROR: AnalysisException: Failed to load metadata for table: |  Minor | Frontend | Jeff Lord | Jinchul Kim |
| [IMPALA-6435](https://issues.apache.org/jira/browse/IMPALA-6435) | Codegen crash when UNIONing CHAR(n) literals |  Blocker | Backend | Balazs Jeszenszky | Anuj Phadke |
| [IMPALA-6377](https://issues.apache.org/jira/browse/IMPALA-6377) | Bump breakpad version to include the fix for Breakpad #752 |  Critical | Backend | Lars Volker | Lars Volker |
| [IMPALA-6334](https://issues.apache.org/jira/browse/IMPALA-6334) | test\_compute\_stats\_tablesample failing on Isilon builds |  Critical | . | David Knupp | Alexander Behm |
| [IMPALA-6455](https://issues.apache.org/jira/browse/IMPALA-6455) | test\_partition\_metadata\_compatibility flaky failures |  Blocker | Infrastructure | Sailesh Mukil | Tim Armstrong |
| [IMPALA-6450](https://issues.apache.org/jira/browse/IMPALA-6450) | Hit DCHECK in RuntimeProfile::EventSequence::Start() |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6383](https://issues.apache.org/jira/browse/IMPALA-6383) | Memory from previous row groups can accumulate in Parquet scanner |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6242](https://issues.apache.org/jira/browse/IMPALA-6242) | Flaky test: TimerCounterTest.CountersTestOneThread |  Critical | Backend | Tianyi Wang | Tianyi Wang |
| [IMPALA-6476](https://issues.apache.org/jira/browse/IMPALA-6476) | TestKrpcMemUsage.test\_krpc\_deferred\_memory\_usage fails on release build |  Blocker | Infrastructure | Alexander Behm | Lars Volker |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5310](https://issues.apache.org/jira/browse/IMPALA-5310) | Implement TABLESAMPLE for COMPUTE STATS |  Major | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-5948](https://issues.apache.org/jira/browse/IMPALA-5948) | Conflicting port 29000 with Sentry |  Major | . | Dan Hecht | Joe McDonnell |
| [IMPALA-5557](https://issues.apache.org/jira/browse/IMPALA-5557) | Disable rpc\_default\_keepalive\_time\_ms |  Major | Distributed Exec | Mostafa Mokhtar | Michael Ho |
| [IMPALA-6290](https://issues.apache.org/jira/browse/IMPALA-6290) | Simplify ScannerContext buffer management to only use one I/O buffer at a time. |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-2397](https://issues.apache.org/jira/browse/IMPALA-2397) | Use atomic operations for simple numeric metrics |  Minor | Backend | Tim Armstrong | Michael Ho |
| [IMPALA-6268](https://issues.apache.org/jira/browse/IMPALA-6268) | KerberosOnAndOff/RpcMgrKerberizedTest.MultipleServices failing |  Critical | Backend | Philip Zeyliger | Sailesh Mukil |
| [IMPALA-6190](https://issues.apache.org/jira/browse/IMPALA-6190) | Add a debug webpage to show fragment instances of a query |  Major | Backend, Distributed Exec | Lars Volker | Lars Volker |
| [IMPALA-6246](https://issues.apache.org/jira/browse/IMPALA-6246) | Add timeline information to fragment instances in profile |  Major | Backend, Distributed Exec | Lars Volker | Lars Volker |
| [IMPALA-6356](https://issues.apache.org/jira/browse/IMPALA-6356) | Excessive synchronous logging in RpczStore::LogTrace causes severe slowdown for exchange operators spanning 2-3 minutes |  Critical | Distributed Exec | Mostafa Mokhtar | Michael Ho |
| [IMPALA-5054](https://issues.apache.org/jira/browse/IMPALA-5054) | Enable KRPC TLS in Impala |  Major | Distributed Exec, Security | Henry Robinson | Sailesh Mukil |
| [IMPALA-6024](https://issues.apache.org/jira/browse/IMPALA-6024) | Add minimum sample size for COMPUTE STATS TABLESAMPLE |  Major | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-6193](https://issues.apache.org/jira/browse/IMPALA-6193) | Track RPC allocated memory in a memtracker |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-6430](https://issues.apache.org/jira/browse/IMPALA-6430) | Log a detailed error message on failure of MetricVerifier |  Major | Backend | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-3562](https://issues.apache.org/jira/browse/IMPALA-3562) | Extend "compute stats" syntax to support a list of columns |  Minor | Frontend | Mostafa Mokhtar | Vuk Ercegovac |
| [IMPALA-6346](https://issues.apache.org/jira/browse/IMPALA-6346) | Potential deadlock in KrpcDataStreamMgr |  Major | Distributed Exec | Lars Volker | Sailesh Mukil |
| [IMPALA-6228](https://issues.apache.org/jira/browse/IMPALA-6228) | More flexible configuration of stats extrapolation |  Major | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-6448](https://issues.apache.org/jira/browse/IMPALA-6448) | Re-enable kerberized testing with KRPC |  Critical | . | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-6219](https://issues.apache.org/jira/browse/IMPALA-6219) | Use AES-GCM for spill-to-disk encryption when CLMUL instruction is present and performant |  Major | Backend | Jim Apple |  |


