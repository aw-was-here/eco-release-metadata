
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

## Release Impala 3.2.0 - 2019-03-28



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-7759](https://issues.apache.org/jira/browse/IMPALA-7759) | Add Levenshtein edit distance built-in function |  Major | . | Greg Rahn | Greg Rahn |
| [IMPALA-7795](https://issues.apache.org/jira/browse/IMPALA-7795) | Add a command to refresh authorization data |  Major | Catalog, Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7832](https://issues.apache.org/jira/browse/IMPALA-7832) | Support IF NOT EXISTS in alter table add columns |  Minor | Frontend | Thomas Tauber-Marshall | Fredy Wijaya |
| [IMPALA-7941](https://issues.apache.org/jira/browse/IMPALA-7941) | Determine process memory limit from cgroups limit, if set |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7645](https://issues.apache.org/jira/browse/IMPALA-7645) | Allow configuring default file format via query option |  Major | Frontend | Tim Armstrong | Fredy Wijaya |
| [IMPALA-6503](https://issues.apache.org/jira/browse/IMPALA-6503) | Support reading complex types from ORC format files |  Major | Backend, Frontend | Quanlong Huang | Quanlong Huang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-7819](https://issues.apache.org/jira/browse/IMPALA-7819) | Scanners should include "storage wait time" per scan node |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7761](https://issues.apache.org/jira/browse/IMPALA-7761) | Add multiple count distinct to targeted stress and targeted perf |  Blocker | Infrastructure | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-7764](https://issues.apache.org/jira/browse/IMPALA-7764) | Add test coverage for SentryProxy |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-4123](https://issues.apache.org/jira/browse/IMPALA-4123) | Columnar decoding in Parquet scanner |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7367](https://issues.apache.org/jira/browse/IMPALA-7367) | Pack StringValue, CollectionValue and TimestampValue slots |  Major | Backend | Tim Armstrong | Pooja Nilangekar |
| [IMPALA-7871](https://issues.apache.org/jira/browse/IMPALA-7871) | Don't load Hive builtin jars for dataload |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-7869](https://issues.apache.org/jira/browse/IMPALA-7869) | Split up parquet-column-readers.cc for readability and compile time |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7839](https://issues.apache.org/jira/browse/IMPALA-7839) | Refactor Catalog::toCatalogObjectKey and CatalogObject::getUniqueName to reduce code repetition |  Minor | Catalog | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-6656](https://issues.apache.org/jira/browse/IMPALA-6656) | Metrics for time spent in BufferAllocator |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6741](https://issues.apache.org/jira/browse/IMPALA-6741) | Profiles of running queries should tell last update time of counters |  Major | Backend | Balazs Jeszenszky | Michael Ho |
| [IMPALA-2343](https://issues.apache.org/jira/browse/IMPALA-2343) | Capture operator timing information covering open/close & first/last batch close |  Minor | Backend | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-6924](https://issues.apache.org/jira/browse/IMPALA-6924) | Compute stats profiles should include reference to child queries |  Major | Backend | Tim Armstrong | Thomas Tauber-Marshall |
| [IMPALA-7497](https://issues.apache.org/jira/browse/IMPALA-7497) | Consider reintroducing numNulls count in compute stats |  Major | Frontend | Balazs Jeszenszky | Bharath Vissapragada |
| [IMPALA-7903](https://issues.apache.org/jira/browse/IMPALA-7903) | DCHECK in RawValue::PrintValue() hit with VLOG level 3 |  Critical | Backend | Tim Armstrong | Gabor Kaszab |
| [IMPALA-6742](https://issues.apache.org/jira/browse/IMPALA-6742) | Profiles of running queries should include execution summary |  Minor | Backend | Balazs Jeszenszky | Yongjun Zhang |
| [IMPALA-7183](https://issues.apache.org/jira/browse/IMPALA-7183) | We should print the sender name when logging a report for an unknown status report on the coordinator |  Critical | Backend, Distributed Exec | Lars Volker | Andrew Sherman |
| [IMPALA-8047](https://issues.apache.org/jira/browse/IMPALA-8047) | Add support  for the .proto file extension to .clang-format |  Major | . | Andrew Sherman | Andrew Sherman |
| [IMPALA-7738](https://issues.apache.org/jira/browse/IMPALA-7738) | Implement timeouts for hdfsOpenFile() calls |  Critical | Backend | Michael Ho | Joe McDonnell |
| [IMPALA-6964](https://issues.apache.org/jira/browse/IMPALA-6964) | Track stats about column and page sizes in Parquet reader |  Major | Backend | Tim Armstrong | Sahil Takiar |
| [IMPALA-7679](https://issues.apache.org/jira/browse/IMPALA-7679) | Improve error message and add test for creating table with NULL column |  Major | Frontend | Tim Armstrong | Fredy Wijaya |
| [IMPALA-5847](https://issues.apache.org/jira/browse/IMPALA-5847) | Some query options do not work as expected in .test files |  Minor | Infrastructure | Alexander Behm | Thomas Tauber-Marshall |
| [IMPALA-7731](https://issues.apache.org/jira/browse/IMPALA-7731) | Add ratio between scanned and transmitted bytes to fragment instances |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-6664](https://issues.apache.org/jira/browse/IMPALA-6664) | Tag log statements with query-ids |  Major | Backend, Frontend | Bharath Vissapragada | Philip Martin |
| [IMPALA-8023](https://issues.apache.org/jira/browse/IMPALA-8023) | Fix PlannerTest to handle error lines consistently |  Minor | Frontend | Paul Rogers | Paul Rogers |
| [IMPALA-7919](https://issues.apache.org/jira/browse/IMPALA-7919) | Add predicates line in plan output for partition key predicates |  Major | Frontend | Greg Rahn | Paul Rogers |
| [IMPALA-8135](https://issues.apache.org/jira/browse/IMPALA-8135) | Bump maven-surefire-plugin version to at least 2.19 to support running a single parameterized test |  Major | Frontend | Quanlong Huang | Quanlong Huang |
| [IMPALA-8092](https://issues.apache.org/jira/browse/IMPALA-8092) | Add a debug page to provide better observability for admission control |  Critical | . | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-7565](https://issues.apache.org/jira/browse/IMPALA-7565) | Extends TAcceptQueueServer connection\_setup\_pool to be multi-threaded |  Blocker | Clients, Distributed Exec | Michael Ho | Bikramjeet Vig |
| [IMPALA-8162](https://issues.apache.org/jira/browse/IMPALA-8162) | Add memory reserved and memory admitted per backend to the /backends debug page |  Major | . | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-8034](https://issues.apache.org/jira/browse/IMPALA-8034) | PlannerTest cardinality tests are not realistic |  Minor | Frontend | Paul Rogers | Paul Rogers |
| [IMPALA-8021](https://issues.apache.org/jira/browse/IMPALA-8021) | Add estimated cardinality to EXPLAIN output |  Minor | Frontend | Paul Rogers | Paul Rogers |
| [IMPALA-7842](https://issues.apache.org/jira/browse/IMPALA-7842) | Refactor FrontEnd to make plan fragments available for testing |  Minor | Frontend | Paul Rogers | Paul Rogers |
| [IMPALA-7265](https://issues.apache.org/jira/browse/IMPALA-7265) | Cache remote file handles |  Critical | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-7694](https://issues.apache.org/jira/browse/IMPALA-7694) | Add CPU resource utilization (user, system, iowait) timelines to profiles |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-7657](https://issues.apache.org/jira/browse/IMPALA-7657) | Proper codegen for TupleIsNullPredicate, IsNotEmptyPredicate and ValidTupleId |  Major | Backend | Tim Armstrong | Andrew Sherman |
| [IMPALA-6533](https://issues.apache.org/jira/browse/IMPALA-6533) | Support DECIMAL for min-max runtime filters |  Critical | Backend | Thomas Tauber-Marshall | Janaki Lahorani |
| [IMPALA-8170](https://issues.apache.org/jira/browse/IMPALA-8170) | Impala Doc: Add the Special Considerations for running SSL/TLS and a proxy |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-5043](https://issues.apache.org/jira/browse/IMPALA-5043) | Admission control error messages don't hint that information is stale when disconnected from statestore |  Major | Backend | Thomas Scott | Tim Armstrong |
| [IMPALA-8187](https://issues.apache.org/jira/browse/IMPALA-8187) | UDF/UDA samples should explicitly export entry points |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8203](https://issues.apache.org/jira/browse/IMPALA-8203) | Revisit disable\_codegen docs |  Minor | Docs | Tim Armstrong | Alexandra Rodoni |
| [IMPALA-8148](https://issues.apache.org/jira/browse/IMPALA-8148) | Misc. FE code cleanup |  Minor | Frontend | Paul Rogers | Paul Rogers |
| [IMPALA-8095](https://issues.apache.org/jira/browse/IMPALA-8095) | Detailed expression cardinality tests |  Minor | Frontend | Paul Rogers | Paul Rogers |
| [IMPALA-6662](https://issues.apache.org/jira/browse/IMPALA-6662) | Make stress test resilient to hangs due to client crashes |  Major | Infrastructure | Sailesh Mukil | Tim Armstrong |
| [IMPALA-7807](https://issues.apache.org/jira/browse/IMPALA-7807) | Analysis test fixture to enable deeper testing |  Minor | Frontend | Paul Rogers | Paul Rogers |
| [IMPALA-7915](https://issues.apache.org/jira/browse/IMPALA-7915) | Wrap SQL parser to avoid redundant code |  Minor | Frontend | Paul Rogers | Paul Rogers |
| [IMPALA-7914](https://issues.apache.org/jira/browse/IMPALA-7914) | Introduce AST base class/interface for statement-like nodes |  Minor | Frontend | Paul Rogers | Paul Rogers |
| [IMPALA-7902](https://issues.apache.org/jira/browse/IMPALA-7902) | Revise NumericLiteral to avoid analysis, fix multiple issues |  Minor | Frontend | Paul Rogers | Paul Rogers |
| [IMPALA-7881](https://issues.apache.org/jira/browse/IMPALA-7881) | Visualize AST for easier debugging |  Minor | Frontend | Paul Rogers | Paul Rogers |
| [IMPALA-8261](https://issues.apache.org/jira/browse/IMPALA-8261) | create-test-configuration.sh should not fail when FE has not been built |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8223](https://issues.apache.org/jira/browse/IMPALA-8223) | Remove mem-pool.total-bytes and hash-table.total-bytes metrics |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8259](https://issues.apache.org/jira/browse/IMPALA-8259) | Rerun bin/create-test-configuration.sh automatically if files are missing |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8272](https://issues.apache.org/jira/browse/IMPALA-8272) | test\_catalog\_tablesfilesusage failing |  Critical | . | Bikramjeet Vig | Yongzhi Chen |
| [IMPALA-6897](https://issues.apache.org/jira/browse/IMPALA-6897) | Catalog server web-ui should expose top-n tables with most number of files |  Major | Catalog | Bharath Vissapragada | Yongzhi Chen |
| [IMPALA-8147](https://issues.apache.org/jira/browse/IMPALA-8147) | Merge make\_impala.sh into CMake and buildall.sh |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8177](https://issues.apache.org/jira/browse/IMPALA-8177) | Log DDL exceptions in the coordinator log [supportability] |  Major | Backend, Catalog | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-5872](https://issues.apache.org/jira/browse/IMPALA-5872) | Implement a SQL test case builder for gathering query diagnostics |  Major | Frontend | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-8181](https://issues.apache.org/jira/browse/IMPALA-8181) | Show abbreviated row counts in DESCRIBE output |  Minor | Frontend | Paul Rogers | Paul Rogers |
| [IMPALA-7540](https://issues.apache.org/jira/browse/IMPALA-7540) | Intern common strings in catalog |  Major | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7450](https://issues.apache.org/jira/browse/IMPALA-7450) | catalogd should use thread names to make jstack more readable |  Major | Catalog | Todd Lipcon | Todd Lipcon |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-7810](https://issues.apache.org/jira/browse/IMPALA-7810) | query-state.cc:295] Check failed: profile\_buf == nullptr |  Blocker | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-7809](https://issues.apache.org/jira/browse/IMPALA-7809) | test\_concurrent\_schema\_change incompatible with Kudu 1.9 |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-7828](https://issues.apache.org/jira/browse/IMPALA-7828) | test\_mem\_leak() is flaky |  Blocker | Backend | Michael Ho | Michael Ho |
| [IMPALA-7848](https://issues.apache.org/jira/browse/IMPALA-7848) | Enable ParserTest.TestAdminFns |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-941](https://issues.apache.org/jira/browse/IMPALA-941) | Impala Parser issue when using fully qualified table names that start with a number. |  Minor | Frontend | Udai Kiran Potluri | Fredy Wijaya |
| [IMPALA-341](https://issues.apache.org/jira/browse/IMPALA-341) | Remote profiles may be ignored by coordinator if query has a limit |  Major | Backend | Henry Robinson | Thomas Tauber-Marshall |
| [IMPALA-7837](https://issues.apache.org/jira/browse/IMPALA-7837) | SCAN\_BYTES\_LIMIT="100M" test failing to raise exception in release build |  Blocker | Backend | Michael Brown | Bikramjeet Vig |
| [IMPALA-7857](https://issues.apache.org/jira/browse/IMPALA-7857) | Log more information about statestore failure detector |  Major | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-7873](https://issues.apache.org/jira/browse/IMPALA-7873) | TestExchangeMemUsage.test\_exchange\_mem\_usage\_scaling doesn't hit the memory limit |  Blocker | Backend | Joe McDonnell | Pooja Nilangekar |
| [IMPALA-7851](https://issues.apache.org/jira/browse/IMPALA-7851) | TestFetchFirst::test\_query\_stmts\_v6 hang during core asan build |  Blocker | Backend | Bikramjeet Vig | Tim Armstrong |
| [IMPALA-7852](https://issues.apache.org/jira/browse/IMPALA-7852) | test\_hash\_join\_timer flakiness on s3 testing build |  Critical | . | Bikramjeet Vig | Michael Ho |
| [IMPALA-7829](https://issues.apache.org/jira/browse/IMPALA-7829) | Send the final profile only after all fragment instances have been closed |  Critical | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-7882](https://issues.apache.org/jira/browse/IMPALA-7882) | ASAN failure in llvm-codegen-test |  Blocker | Backend | Joe McDonnell | Pooja Nilangekar |
| [IMPALA-7893](https://issues.apache.org/jira/browse/IMPALA-7893) | Impala shell does not handle Ctrl+C correctly for a non-running query |  Minor | Clients | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-6293](https://issues.apache.org/jira/browse/IMPALA-6293) | Shell commands run by Impala can fail when using the Java debugger |  Major | Backend | Joe McDonnell | Fredy Wijaya |
| [IMPALA-7790](https://issues.apache.org/jira/browse/IMPALA-7790) | Kudu tests fail when with use\_hybrid\_clock=false |  Major | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-7473](https://issues.apache.org/jira/browse/IMPALA-7473) | RawValue::PrintValue() hits general protection fault with VLOG level 3 |  Critical | Backend | Anuj Phadke | Tim Armstrong |
| [IMPALA-7659](https://issues.apache.org/jira/browse/IMPALA-7659) | Collect count of nulls when collecting stats |  Major | Backend, Frontend | Piotr Findeisen | Bharath Vissapragada |
| [IMPALA-7945](https://issues.apache.org/jira/browse/IMPALA-7945) | test\_hdfs\_timeout.py fails on Centos6/python2.6 |  Blocker | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-7939](https://issues.apache.org/jira/browse/IMPALA-7939) | Impala shell not displaying results for a CTE query. |  Critical | . | Anuj Phadke | Fredy Wijaya |
| [IMPALA-1048](https://issues.apache.org/jira/browse/IMPALA-1048) | Data sinks do not show up in the exec summary |  Minor | Backend | Nong Li | Tim Armstrong |
| [IMPALA-7960](https://issues.apache.org/jira/browse/IMPALA-7960) | wrong results when comparing timestamp casted to varchar of smaller length to a string literal in a binary predicate |  Blocker | . | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-7926](https://issues.apache.org/jira/browse/IMPALA-7926) | test\_reconnect failing |  Major | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-6591](https://issues.apache.org/jira/browse/IMPALA-6591) | TestClientSsl hung for a long time |  Blocker | Distributed Exec | Tim Armstrong | Fredy Wijaya |
| [IMPALA-7978](https://issues.apache.org/jira/browse/IMPALA-7978) | Impala Doc: Clarify Impala Memory requirements |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7913](https://issues.apache.org/jira/browse/IMPALA-7913) | test-with-docker can sometimes fail with a ccache fatal error when using CentOS 6 within the containers |  Major | Infrastructure | Laszlo Gaal | Laszlo Gaal |
| [IMPALA-6955](https://issues.apache.org/jira/browse/IMPALA-6955) | Debug webpage request for unknown query ID crashes Impala in GetClientRequestState |  Critical | Backend | Vuk Ercegovac | Lars Volker |
| [IMPALA-7989](https://issues.apache.org/jira/browse/IMPALA-7989) | Impala cluster kill failing with python ImportError |  Blocker | Infrastructure | Bharath Vissapragada | Tim Armstrong |
| [IMPALA-7990](https://issues.apache.org/jira/browse/IMPALA-7990) | Failing assert in TestFailpoints .test\_lifecycle\_failures |  Blocker | Backend | Bharath Vissapragada | Thomas Tauber-Marshall |
| [IMPALA-7963](https://issues.apache.org/jira/browse/IMPALA-7963) | test\_empty\_build\_joins failed with hdfs timeout |  Blocker | Backend | Thomas Tauber-Marshall | Joe McDonnell |
| [IMPALA-7946](https://issues.apache.org/jira/browse/IMPALA-7946) | SynchronousThreadPool::SynchronousOffer() can return a timeout Status with the wrong time limit |  Blocker | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-7994](https://issues.apache.org/jira/browse/IMPALA-7994) | Queries hitting memory limit issues in release builds |  Blocker | Backend | Bharath Vissapragada | Bikramjeet Vig |
| [IMPALA-7925](https://issues.apache.org/jira/browse/IMPALA-7925) | test\_bloom\_filters and test\_hdfs\_scanner\_profile running out of memory during exhaustive tests |  Critical | Backend | Lars Volker | Bikramjeet Vig |
| [IMPALA-8008](https://issues.apache.org/jira/browse/IMPALA-8008) | InvocationTargetException when making HMS RPCs |  Major | Frontend | Bharath Vissapragada | Fredy Wijaya |
| [IMPALA-6521](https://issues.apache.org/jira/browse/IMPALA-6521) | Hidden flags should show up in /varz and should be printed in the logs during startup |  Major | Backend | Lars Volker | Fredy Wijaya |
| [IMPALA-5474](https://issues.apache.org/jira/browse/IMPALA-5474) | Adding a trivial subquery turns error into warning |  Major | Backend | Lars Volker | Yongjun Zhang |
| [IMPALA-8026](https://issues.apache.org/jira/browse/IMPALA-8026) | Actual row counts for nested loop join are way too high while the query is executing |  Major | Backend | Paul Rogers | Tim Armstrong |
| [IMPALA-7446](https://issues.apache.org/jira/browse/IMPALA-7446) | Queries can spill earlier than necessary because of accumulation of free buffers and clean pages |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8063](https://issues.apache.org/jira/browse/IMPALA-8063) | Excessive logging from BeeswaxConnection::get\_state() bloats JUnitXML output |  Blocker | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-8007](https://issues.apache.org/jira/browse/IMPALA-8007) | test\_slow\_subscriber is flaky |  Major | Backend | Bharath Vissapragada | Pooja Nilangekar |
| [IMPALA-8043](https://issues.apache.org/jira/browse/IMPALA-8043) | ExprTest fails on Ubuntu 16 when the timezone is America/Los\_Angeles |  Major | Backend | Joe McDonnell | Attila Jeges |
| [IMPALA-7931](https://issues.apache.org/jira/browse/IMPALA-7931) | test\_shutdown\_executor fails with timeout waiting for query target state |  Critical | Infrastructure | Lars Volker | Tim Armstrong |
| [IMPALA-8078](https://issues.apache.org/jira/browse/IMPALA-8078) | test\_corrupt\_stats failing on exhaustive builds |  Blocker | Backend | David Knupp | Tim Armstrong |
| [IMPALA-8061](https://issues.apache.org/jira/browse/IMPALA-8061) | S3\_ACCESS\_VALIDATED unbound variable when using TARGET\_FILESYSTEM=s3 |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7943](https://issues.apache.org/jira/browse/IMPALA-7943) | Bump up the default timeout set on impala-shell |  Major | . | Anuj Phadke | Anuj Phadke |
| [IMPALA-7870](https://issues.apache.org/jira/browse/IMPALA-7870) | TestAutomaticCatalogInvalidation.test\_v1\_catalog intermittently fails |  Critical | Catalog | Joe McDonnell |  |
| [IMPALA-8089](https://issues.apache.org/jira/browse/IMPALA-8089) | Sporadic upstream jenkins failures with "ERROR in bin/run-all-tests.sh at line 237: pkill -P $TIMEOUT\_PID" |  Critical | Infrastructure | David Knupp | Philip Martin |
| [IMPALA-3323](https://issues.apache.org/jira/browse/IMPALA-3323) | impala-shell --ldap\_password\_cmd has no config file equivalent |  Minor | Clients | John Russell | Fredy Wijaya |
| [IMPALA-8073](https://issues.apache.org/jira/browse/IMPALA-8073) | SentryProxy.testAddCatalog() failed in private build because of socket error |  Critical | Catalog | Tim Armstrong | Fredy Wijaya |
| [IMPALA-8090](https://issues.apache.org/jira/browse/IMPALA-8090) | DiskIoMgrTest.SyncReadTest hits file\_ != nullptr DCHECK in LocalFileReader::ReadFromPos() |  Critical | Backend | David Knupp | Tim Armstrong |
| [IMPALA-8113](https://issues.apache.org/jira/browse/IMPALA-8113) | test\_aggregation and test\_avro\_primitive\_in\_list fail in S3 |  Critical | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-8062](https://issues.apache.org/jira/browse/IMPALA-8062) | single\_node\_perf\_run.py doesn't re-source impala-config.sh on different branches |  Major | Infrastructure | Tim Armstrong | Jim Apple |
| [IMPALA-8114](https://issues.apache.org/jira/browse/IMPALA-8114) | Build test failure in test\_breakpad.py |  Blocker | Infrastructure | Paul Rogers | Lars Volker |
| [IMPALA-7934](https://issues.apache.org/jira/browse/IMPALA-7934) | Switch to using Java 8's Base64 impl for incremental stats encoding |  Major | Catalog | Bharath Vissapragada | Fredy Wijaya |
| [IMPALA-8129](https://issues.apache.org/jira/browse/IMPALA-8129) | Build failure: query\_test/test\_observability.py |  Blocker | Backend | Paul Rogers | Lars Volker |
| [IMPALA-8140](https://issues.apache.org/jira/browse/IMPALA-8140) | Grouping aggregation with limit breaks asan build |  Blocker | Backend | Lars Volker | Lars Volker |
| [IMPALA-7895](https://issues.apache.org/jira/browse/IMPALA-7895) | Incorrect expected results for spillable-buffer-sizing.test |  Minor | Frontend | Paul Rogers | Paul Rogers |
| [IMPALA-8137](https://issues.apache.org/jira/browse/IMPALA-8137) | Order by docs incorrectly state that order by happens on one node |  Major | Docs | Tim Armstrong | Alexandra Rodoni |
| [IMPALA-8150](https://issues.apache.org/jira/browse/IMPALA-8150) | AuditingTest.TestAccessEventsOnAuthFailure |  Blocker | Catalog | Michael Ho | Fredy Wijaya |
| [IMPALA-8103](https://issues.apache.org/jira/browse/IMPALA-8103) | Plan hints show up as "--" comments in analysed query |  Minor | Frontend | Tim Armstrong | Andrew Sherman |
| [IMPALA-8151](https://issues.apache.org/jira/browse/IMPALA-8151) | HiveUdfCall assumes StringValue is 16 bytes |  Blocker | Backend | Tim Armstrong | Pooja Nilangekar |
| [IMPALA-8091](https://issues.apache.org/jira/browse/IMPALA-8091) | minicluster kudu failure: Cannot initialize clock: failed to wait for clock sync |  Blocker | Infrastructure | David Knupp | Michael Brown |
| [IMPALA-7928](https://issues.apache.org/jira/browse/IMPALA-7928) | Investigate consistent placement of remote scan ranges |  Critical | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-8169](https://issues.apache.org/jira/browse/IMPALA-8169) | update some random query generator infra settings |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-8171](https://issues.apache.org/jira/browse/IMPALA-8171) | stress test doesn't work against minicluster |  Critical | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-7929](https://issues.apache.org/jira/browse/IMPALA-7929) | Impala query on HBASE table failing with InternalException: Required field\* |  Major | Frontend | Yongjun Zhang | Yongjun Zhang |
| [IMPALA-8173](https://issues.apache.org/jira/browse/IMPALA-8173) | run-workload.py KeyError on 'query\_id' |  Major | Infrastructure | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-5861](https://issues.apache.org/jira/browse/IMPALA-5861) | HdfsParquetScanner::GetNextInternal() IsZeroSlotTableScan() case double counts |  Major | Backend | Daniel Hecht | Tim Armstrong |
| [IMPALA-7214](https://issues.apache.org/jira/browse/IMPALA-7214) | Update Impala docs to reflect coordinator/executor separation and decoupling from DataNodes. |  Major | Docs | Tim Armstrong | Alexandra Rodoni |
| [IMPALA-8183](https://issues.apache.org/jira/browse/IMPALA-8183) | TestRPCTimeout.test\_reportexecstatus\_retry times out |  Blocker | Distributed Exec | Andrew Sherman | Thomas Tauber-Marshall |
| [IMPALA-8200](https://issues.apache.org/jira/browse/IMPALA-8200) | Builds fail using wrong branch of impala-lzo |  Critical | Infrastructure | Andrew Sherman | Andrew Sherman |
| [IMPALA-8195](https://issues.apache.org/jira/browse/IMPALA-8195) | Impala Doc: Impala does support Cartesian join |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8199](https://issues.apache.org/jira/browse/IMPALA-8199) | stress test fails: "No module named RuntimeProfile.ttypes" |  Major | Infrastructure | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-7961](https://issues.apache.org/jira/browse/IMPALA-7961) | Concurrent catalog heavy workloads can cause queries with SYNC\_DDL to fail fast |  Critical | Catalog | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-8193](https://issues.apache.org/jira/browse/IMPALA-8193) | junitxml\_prune\_notrun.py fails on Centos6 passing xml\_declaration=True to ElementTree |  Blocker | Infrastructure | Andrew Sherman | Joe McDonnell |
| [IMPALA-8191](https://issues.apache.org/jira/browse/IMPALA-8191) | TestBreakpadExhaustive.test\_minidump\_creation fails to kill cluster |  Critical | Infrastructure | Andrew Sherman | Lars Volker |
| [IMPALA-8207](https://issues.apache.org/jira/browse/IMPALA-8207) | Fix query loading in run-workload.py |  Major | Infrastructure | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-8209](https://issues.apache.org/jira/browse/IMPALA-8209) | Fragment instance ID no longer displayed on /memz |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-8222](https://issues.apache.org/jira/browse/IMPALA-8222) | Timeout calculation in stress test doesn't make sense |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8214](https://issues.apache.org/jira/browse/IMPALA-8214) | Bad plan in load\_nested.py |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8154](https://issues.apache.org/jira/browse/IMPALA-8154) | Disable auth\_to\_local by default |  Major | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-8168](https://issues.apache.org/jira/browse/IMPALA-8168) | On S3 Sentry HDFS sync should be disabled |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8235](https://issues.apache.org/jira/browse/IMPALA-8235) | AdmissionControlTimeSinceLastUpdate TIME\_MS counter breaks some profile consumers |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8178](https://issues.apache.org/jira/browse/IMPALA-8178) | Tests failing with “Could not allocate memory while trying to increase reservation” on EC filesystem |  Blocker | Backend | Andrew Sherman | Joe McDonnell |
| [IMPALA-8234](https://issues.apache.org/jira/browse/IMPALA-8234) | TUnit enum (part of profile format) was reordered |  Blocker | Backend | Tim Armstrong | Lars Volker |
| [IMPALA-8064](https://issues.apache.org/jira/browse/IMPALA-8064) | test\_min\_max\_filters is flaky |  Blocker | . | Pooja Nilangekar | Pooja Nilangekar |
| [IMPALA-8212](https://issues.apache.org/jira/browse/IMPALA-8212) | Crash during startup in kudu::security::CanonicalizeKrb5Principal() |  Blocker | Backend | Tim Armstrong | Michael Ho |
| [IMPALA-8244](https://issues.apache.org/jira/browse/IMPALA-8244) | Toolchain build fails to publish binaries even if asked to do so |  Critical | Infrastructure | Laszlo Gaal | Laszlo Gaal |
| [IMPALA-8239](https://issues.apache.org/jira/browse/IMPALA-8239) |  Check failed: deferred\_rpcs\_.empty() \|\| (num\_deserialize\_tasks\_pending\_ + num\_pending\_enqueue\_) \> 0 |  Blocker | Backend | Tim Armstrong | Michael Ho |
| [IMPALA-8163](https://issues.apache.org/jira/browse/IMPALA-8163) | Local catalog mode needs to be visible on catalogd web UI if turned on |  Major | . | Adrian Ng | Anurag Mantripragada |
| [IMPALA-8247](https://issues.apache.org/jira/browse/IMPALA-8247) | Backend tests from bit-stream-utils-test.cc and system-state-info-test.cc are not running |  Blocker | Backend, Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-8251](https://issues.apache.org/jira/browse/IMPALA-8251) | Impala fails to start for TestExchangeDeferredBatches.test\_exchange\_small\_buffer() under release build |  Blocker | Backend | Joe McDonnell | Michael Ho |
| [IMPALA-8245](https://issues.apache.org/jira/browse/IMPALA-8245) | Add hostname to timeout error message in HdfsMonitoredOps |  Major | Backend | Joe McDonnell | Pooja Nilangekar |
| [IMPALA-8188](https://issues.apache.org/jira/browse/IMPALA-8188) | Some SSDs are not properly detected as non-rotational |  Critical | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-8252](https://issues.apache.org/jira/browse/IMPALA-8252) | Impala writes malformed thrift profiles |  Blocker | Backend | Lars Volker | Lars Volker |
| [IMPALA-7107](https://issues.apache.org/jira/browse/IMPALA-7107) | [DOCS] Review docs for storage formats impala cannot insert into |  Minor | Docs | Balazs Jeszenszky | Alexandra Rodoni |
| [IMPALA-7905](https://issues.apache.org/jira/browse/IMPALA-7905) | ToSqlUtils does not correctly quote lower-case Hive keywords |  Minor | Frontend | Paul Rogers | Paul Rogers |
| [IMPALA-7907](https://issues.apache.org/jira/browse/IMPALA-7907) | Multiple toSql() bugs in ScalarFunction |  Minor | Frontend | Paul Rogers | Paul Rogers |
| [IMPALA-5397](https://issues.apache.org/jira/browse/IMPALA-5397) | Set "End Time" earlier rather than on unregistration. |  Major | Backend | Mostafa Mokhtar | Pooja Nilangekar |
| [IMPALA-8189](https://issues.apache.org/jira/browse/IMPALA-8189) | TestParquet.test\_resolution\_by\_name fails on S3 because 'hadoop fs -cp'  fails |  Critical | Backend | Andrew Sherman | Pooja Nilangekar |
| [IMPALA-7804](https://issues.apache.org/jira/browse/IMPALA-7804) | Various scanner tests intermittently failing on S3 on different runs |  Blocker | Backend | David Knupp | Joe McDonnell |
| [IMPALA-8274](https://issues.apache.org/jira/browse/IMPALA-8274) | Missing update to index into profiles vector in Coordinator::BackendState::ApplyExecStatusReport() |  Blocker | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-8249](https://issues.apache.org/jira/browse/IMPALA-8249) | End-to-end test framework doesn't read aggregated counters properly |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-8254](https://issues.apache.org/jira/browse/IMPALA-8254) | Compute stats fails if COMPRESSION\_CODEC is not default |  Minor | Backend | Csaba Ringhofer | Fredy Wijaya |
| [IMPALA-8256](https://issues.apache.org/jira/browse/IMPALA-8256) |  ImpalaServicePool::RejectTooBusy() should print more meaningful message |  Major | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-8093](https://issues.apache.org/jira/browse/IMPALA-8093) | Profiles prefix counters inconsistently |  Major | Backend | Lars Volker | Yongzhi Chen |
| [IMPALA-8300](https://issues.apache.org/jira/browse/IMPALA-8300) | Build failed on S3: test\_max\_nesting\_depth (table\_format: orc/def/block) timeouts consistently |  Blocker | . | Csaba Ringhofer |  |
| [IMPALA-8257](https://issues.apache.org/jira/browse/IMPALA-8257) | Parquet writer sometimes hits DCHECK when handling empty string |  Blocker | Backend | Tim Armstrong | Zoltán Borók-Nagy |
| [IMPALA-6900](https://issues.apache.org/jira/browse/IMPALA-6900) | Invalidate metadata operation is ignored at a coordinator if catalog is empty |  Blocker | Catalog | Dimitris Tsirogiannis |  |
| [IMPALA-8175](https://issues.apache.org/jira/browse/IMPALA-8175) | centos6: tests\_minicluster\_obj fails with pgrep usage error |  Critical | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-8243](https://issues.apache.org/jira/browse/IMPALA-8243) | ConcurrentModificationException in Catalog stress tests |  Blocker | Catalog | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-8264](https://issues.apache.org/jira/browse/IMPALA-8264) | system-state-info.cc:102] Check failed: total\_tics \> 0 (-4294962910 vs. 0) |  Critical | Backend | Michael Ho | Lars Volker |
| [IMPALA-7992](https://issues.apache.org/jira/browse/IMPALA-7992) | test\_decimal\_fuzz.py/test\_decimal\_ops failing in exhaustive runs |  Blocker | Backend | Bharath Vissapragada | Csaba Ringhofer |
| [IMPALA-8194](https://issues.apache.org/jira/browse/IMPALA-8194) | TestPauseMonitor.test\_jvm\_pause\_monitor\_logs\_entries needs to wait longer to see output |  Critical | . | Andrew Sherman | Andrew Sherman |
| [IMPALA-8069](https://issues.apache.org/jira/browse/IMPALA-8069) | crash in impala::Sorter::Run::Run |  Blocker | Backend | Michael Brown | Paul Rogers |
| [IMPALA-8058](https://issues.apache.org/jira/browse/IMPALA-8058) | HBase scan cardinality division-by-zero leads to bogus cardinality |  Major | Frontend | Paul Rogers | Paul Rogers |
| [IMPALA-8299](https://issues.apache.org/jira/browse/IMPALA-8299) | GroupingAggregator::Partition::Close() may access an uninitialized hash table |  Blocker | Backend | Michael Ho | Thomas Tauber-Marshall |
| [IMPALA-7047](https://issues.apache.org/jira/browse/IMPALA-7047) | REFRESH on unpartitioned tables calls getBlockLocations on every file |  Major | Catalog | Todd Lipcon | Todd Lipcon |
| [IMPALA-7484](https://issues.apache.org/jira/browse/IMPALA-7484) | Unrecognized hint interpreted as straight\_join |  Major | Frontend | Lars Volker | Anurag Mantripragada |
| [IMPALA-8319](https://issues.apache.org/jira/browse/IMPALA-8319) | ThreadPoolTest.SynchronousThreadPoolTest failure + SIGSEGV on Centos 6 |  Critical | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-8159](https://issues.apache.org/jira/browse/IMPALA-8159) | TAcceptQueueServer: Caught TException: invalid sasl status |  Critical | Backend | Jinjie Zhang |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-7148](https://issues.apache.org/jira/browse/IMPALA-7148) | test\_profile\_fragment\_instances is flaky |  Critical | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-7648](https://issues.apache.org/jira/browse/IMPALA-7648) | Add tests for all cases where OOM is expected |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7625](https://issues.apache.org/jira/browse/IMPALA-7625) | test\_web\_pages.py backend tests are failing |  Major | Infrastructure | Sahil Takiar | Sahil Takiar |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-7213](https://issues.apache.org/jira/browse/IMPALA-7213) | Port ReportExecStatus() RPCs to KRPC |  Major | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-4063](https://issues.apache.org/jira/browse/IMPALA-4063) | Make fragment instance reports per-query (or per-host) instead of per-fragment instance. |  Major | Distributed Exec | Sailesh Mukil | Michael Ho |
| [IMPALA-7477](https://issues.apache.org/jira/browse/IMPALA-7477) | Improve QueryResultSet interface to allow appending a batch of rows at a time |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7811](https://issues.apache.org/jira/browse/IMPALA-7811) | Add flag to count JVM memory against process limit |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4889](https://issues.apache.org/jira/browse/IMPALA-4889) | Use sidecars for Thrift-wrapped RPC payloads |  Major | Distributed Exec | Henry Robinson |  |
| [IMPALA-7353](https://issues.apache.org/jira/browse/IMPALA-7353) | Fix bogus too-high memory estimates |  Major | Frontend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-7468](https://issues.apache.org/jira/browse/IMPALA-7468) | Port CancelQueryFInstances() to KRPC |  Major | Distributed Exec | Michael Ho | Andrew Sherman |
| [IMPALA-7948](https://issues.apache.org/jira/browse/IMPALA-7948) | Create docker container for impalad/statestored/catalogd |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8066](https://issues.apache.org/jira/browse/IMPALA-8066) | Create coordinator and executor containers |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7987](https://issues.apache.org/jira/browse/IMPALA-7987) | Get start-impala-cluster.py to start up a usable minicluster |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7986](https://issues.apache.org/jira/browse/IMPALA-7986) | Extend start-impala-cluster.py to start and stop daemon docker containers |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7988](https://issues.apache.org/jira/browse/IMPALA-7988) | Support loading data into a dockerised minicluster |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7970](https://issues.apache.org/jira/browse/IMPALA-7970) | Add support for automatic invalidates by polling metastore events |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-7999](https://issues.apache.org/jira/browse/IMPALA-7999) | Sort out what to do with bin/start-\*d.sh functionality |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8096](https://issues.apache.org/jira/browse/IMPALA-8096) | Limit on #rows returned from query |  Major | Backend | Tim Armstrong | Pooja Nilangekar |
| [IMPALA-4555](https://issues.apache.org/jira/browse/IMPALA-4555) | Don't cancel query for failed ReportExecStatus (done=false) RPC |  Major | Distributed Exec | Sailesh Mukil | Thomas Tauber-Marshall |
| [IMPALA-8071](https://issues.apache.org/jira/browse/IMPALA-8071) | Change an initial set of backend tests to use a unified executable |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-7985](https://issues.apache.org/jira/browse/IMPALA-7985) | Port RemoteShutdown() to KRPC |  Major | Distributed Exec | Michael Ho | Andrew Sherman |
| [IMPALA-7976](https://issues.apache.org/jira/browse/IMPALA-7976) | Add a flag to disable sync using events at a table level |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-7979](https://issues.apache.org/jira/browse/IMPALA-7979) | Enhance decoders to support value-skipping |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-7975](https://issues.apache.org/jira/browse/IMPALA-7975) | Improve supportability of the automatic invalidate feature |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-8273](https://issues.apache.org/jira/browse/IMPALA-8273) | Change metastore configuration template so that table parameters do not exclude impala specific properties |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-8266](https://issues.apache.org/jira/browse/IMPALA-8266) | Event filtering logic may not filter all the events |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-8278](https://issues.apache.org/jira/browse/IMPALA-8278) | Fix MetastoreEventsProcessorTest flakiness |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-8240](https://issues.apache.org/jira/browse/IMPALA-8240) | Event processor should keep trying if metastore is unavailable |  Minor | . | Vihang Karajgaonkar | Anurag Mantripragada |
| [IMPALA-8186](https://issues.apache.org/jira/browse/IMPALA-8186) | Automate setup of docker bridge network for dockerised minicluster |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7972](https://issues.apache.org/jira/browse/IMPALA-7972) | Detect self-events to avoid unnecessary invalidates |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-8153](https://issues.apache.org/jira/browse/IMPALA-8153) | Impala Doc: Add a section on Admission Debug page to Web UI doc |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8104](https://issues.apache.org/jira/browse/IMPALA-8104) | Impala Doc: Doc IF NOT EXISTS in ALTER TABLE |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8067](https://issues.apache.org/jira/browse/IMPALA-8067) | Impala Doc: Doc CPU resource utilization (user, system, iowait) timelines in Profile |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8297](https://issues.apache.org/jira/browse/IMPALA-8297) | Impala Doc: Doc the flag to disable sync using events at the table level |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8172](https://issues.apache.org/jira/browse/IMPALA-8172) | Impala Doc: Doc the query option to limit on #rows returned from query |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8044](https://issues.apache.org/jira/browse/IMPALA-8044) | Impala Doc: Document the command to refresh authorization data |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8134](https://issues.apache.org/jira/browse/IMPALA-8134) | Update docs to reflect CGroups memory limit changes |  Major | Docs | Tim Armstrong | Tim Armstrong |
| [IMPALA-7920](https://issues.apache.org/jira/browse/IMPALA-7920) | Impala 3.2 Doc: Doc Levenshtein edit distance built-in function |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7725](https://issues.apache.org/jira/browse/IMPALA-7725) | Impala Doc: Add support to read TIMESTAMP\_MILLIS and TIMESTAMP\_MICROS to the parquet scanner |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8296](https://issues.apache.org/jira/browse/IMPALA-8296) | Impala Doc: Doc the supportability metrics of the automatic metadata invalidate feature |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7974](https://issues.apache.org/jira/browse/IMPALA-7974) | Impala Doc: Doc the options to enable automatic invalidates using metastore notification events |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7718](https://issues.apache.org/jira/browse/IMPALA-7718) | [DOCS] document changes to explain output from IMPALA-5821 |  Major | . | Andrew Sherman | Alexandra Rodoni |
| [IMPALA-8255](https://issues.apache.org/jira/browse/IMPALA-8255) | Impala Doc: Document the query option for default file format |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8105](https://issues.apache.org/jira/browse/IMPALA-8105) | Impala Doc: Document remote file handle cache |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5605](https://issues.apache.org/jira/browse/IMPALA-5605) | document how to increase thread resource limits |  Major | Docs | Matthew Mulder | Alexandra Rodoni |
| [IMPALA-7728](https://issues.apache.org/jira/browse/IMPALA-7728) | Impala Doc: Add the Changing Privileges section in Impala Sentry doc |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8060](https://issues.apache.org/jira/browse/IMPALA-8060) | Impala Doc: Clean up and re-org resource management and admission control docs |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7924](https://issues.apache.org/jira/browse/IMPALA-7924) | Generate Thrift 11 Python Code |  Major | Infrastructure | Sahil Takiar | Sahil Takiar |
| [IMPALA-6932](https://issues.apache.org/jira/browse/IMPALA-6932) | Simple LIMIT 1 query can be really slow on many-filed sequence datasets |  Critical | Backend | Philip Martin | Pooja Nilangekar |
| [IMPALA-8102](https://issues.apache.org/jira/browse/IMPALA-8102) | Impala/HBase recommendations need update |  Major | Docs | Tim Armstrong | Tim Armstrong |
| [IMPALA-7980](https://issues.apache.org/jira/browse/IMPALA-7980) | High system CPU time usage (and waste) when runtime filters filter out files |  Major | . | Philip Martin |  |
| [IMPALA-8308](https://issues.apache.org/jira/browse/IMPALA-8308) | Impala 3.2 Release Notes |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8298](https://issues.apache.org/jira/browse/IMPALA-8298) | Update docs of ORC about complex types support |  Major | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-8133](https://issues.apache.org/jira/browse/IMPALA-8133) | Impala Doc: Review the list of Known Issues and update for 3.2 |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8111](https://issues.apache.org/jira/browse/IMPALA-8111) | Document workaround for some authentication issues with KRPC |  Major | Docs | Michael Ho | Alexandra Rodoni |
| [IMPALA-8098](https://issues.apache.org/jira/browse/IMPALA-8098) | [Docs] Document incompatible changes to :shutdown command |  Major | . | Andrew Sherman | Alexandra Rodoni |
| [IMPALA-7232](https://issues.apache.org/jira/browse/IMPALA-7232) | Display whether fragment instances' profile is complete |  Major | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-8250](https://issues.apache.org/jira/browse/IMPALA-8250) | Impala crashes with -Xcheck:jni |  Major | . | Philip Martin |  |
| [IMPALA-7390](https://issues.apache.org/jira/browse/IMPALA-7390) | rpc-mgr-kerberized-test fails inside of test-with-docker for hostname resolution reasons |  Major | . | Philip Martin |  |


