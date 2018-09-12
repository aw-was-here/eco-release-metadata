
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

## Release Impala 3.0 - 2018-05-07



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-4167](https://issues.apache.org/jira/browse/IMPALA-4167) | Support insert plan hints for CREATE TABLE AS SELECT |  Major | Frontend | Alexander Behm | Csaba Ringhofer |
| [IMPALA-6537](https://issues.apache.org/jira/browse/IMPALA-6537) | Add missing ODBC scalar functions |  Major | . | Greg Rahn | Greg Rahn |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-6395](https://issues.apache.org/jira/browse/IMPALA-6395) | Allow the accumulated row batch size of a data sink to be tunable |  Minor | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-2963](https://issues.apache.org/jira/browse/IMPALA-2963) | Deprecate query option: disable\_cached\_reads |  Minor | Backend | Lars Volker | Tim Armstrong |
| [IMPALA-6113](https://issues.apache.org/jira/browse/IMPALA-6113) | Skip row groups with predicates on NULL columns |  Major | Backend | Lars Volker | Gabor Kaszab |
| [IMPALA-5037](https://issues.apache.org/jira/browse/IMPALA-5037) | Change default Parquet array resolution according to Parquet standard. |  Major | Backend | Alexander Behm | Alexander Behm |
| [IMPALA-6075](https://issues.apache.org/jira/browse/IMPALA-6075) | Add Impala daemon metric for catalog version |  Major | Catalog | Tim Armstrong | Pranay Singh |
| [IMPALA-6077](https://issues.apache.org/jira/browse/IMPALA-6077) | remove  BIT\_PACKED encoding for Parquet levels |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4132](https://issues.apache.org/jira/browse/IMPALA-4132) | Consider using -fno-omit-frame-pointer in release builds |  Major | Infrastructure | Silvius Rus | Gabor Kaszab |
| [IMPALA-6437](https://issues.apache.org/jira/browse/IMPALA-6437) | increase frequency of admission control topic updates |  Major | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-4953](https://issues.apache.org/jira/browse/IMPALA-4953) | Prevent large statestore updates from head-of-line blocking subsequent updates to different topics |  Major | Distributed Exec | Henry Robinson | Tim Armstrong |
| [IMPALA-6519](https://issues.apache.org/jira/browse/IMPALA-6519) | Allow atomic allocation of an unreserved buffer |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6497](https://issues.apache.org/jira/browse/IMPALA-6497) | Impala should expose when the last row is fetched |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6059](https://issues.apache.org/jira/browse/IMPALA-6059) | Enhance ltrim() and rtrim() functions to trim any set of characters |  Minor | Backend | Zoram Thanga | Zoram Thanga |
| [IMPALA-6629](https://issues.apache.org/jira/browse/IMPALA-6629) | Clearer and more concise logging during catalog topic updates |  Critical | Catalog | Alexander Behm | Tianyi Wang |
| [IMPALA-6675](https://issues.apache.org/jira/browse/IMPALA-6675) | Change default configuration to --compact\_catalog\_topic=true |  Major | Backend | Alexander Behm | Alexander Behm |
| [IMPALA-2782](https://issues.apache.org/jira/browse/IMPALA-2782) | Allow Impala Shell to connect directly to impalad when config with proxy load balancer and kerberos |  Minor | Clients | Alan Choi | Vincent Tran |
| [IMPALA-6682](https://issues.apache.org/jira/browse/IMPALA-6682) | Support hash function other than md5 in pypi download script |  Major | Infrastructure | Tianyi Wang | Tianyi Wang |
| [IMPALA-6641](https://issues.apache.org/jira/browse/IMPALA-6641) | Support more separators between date and time in default timestamp format |  Major | Backend | Tim Armstrong | Vincent Tran |
| [IMPALA-4277](https://issues.apache.org/jira/browse/IMPALA-4277) | Impala should build against latest Hadoop components |  Major | Infrastructure | Tim Armstrong | Thomas Tauber-Marshall |
| [IMPALA-5721](https://issues.apache.org/jira/browse/IMPALA-5721) | stress test: save profiles during binary search |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-6779](https://issues.apache.org/jira/browse/IMPALA-6779) | Impala Doc: Improve REPLICA\_PREFERENCE doc |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6479](https://issues.apache.org/jira/browse/IMPALA-6479) | Update DESCRIBE statement to respect column level privileges |  Major | Frontend | Adam Holley | Adam Holley |
| [IMPALA-6791](https://issues.apache.org/jira/browse/IMPALA-6791) | Create scripts to automate distcc server setup and toolchain updates |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6820](https://issues.apache.org/jira/browse/IMPALA-6820) | Remove builtins db from catalogd |  Minor | Catalog | Tianyi Wang | Tianyi Wang |
| [IMPALA-5814](https://issues.apache.org/jira/browse/IMPALA-5814) | Remove flag to disable admission control |  Major | Backend | Matthew Jacobs | Bikramjeet Vig |
| [IMPALA-6822](https://issues.apache.org/jira/browse/IMPALA-6822) | Provide a query option to not shuffle on distinct exprs |  Critical | Frontend | Tianyi Wang | Tianyi Wang |
| [IMPALA-4744](https://issues.apache.org/jira/browse/IMPALA-4744) | Apache Impala release should include release tag or hash in version string |  Major | Infrastructure | Tim Armstrong | Sailesh Mukil |
| [IMPALA-1803](https://issues.apache.org/jira/browse/IMPALA-1803) | Avoid hitting OOM in HdfsTableSink when inserting to Parquet |  Major | Backend | Ippokratis Pandis |  |
| [IMPALA-6551](https://issues.apache.org/jira/browse/IMPALA-6551) | Update TPCDS columns from DOUBLE to DECIMAL for Kudu |  Major | . | Grant Henke | Grant Henke |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-4371](https://issues.apache.org/jira/browse/IMPALA-4371) | Incorrect DCHECK-s in hdfs-parquet-table-writer |  Major | Backend | Zoltan Ivanfi | Zoltan Ivanfi |
| [IMPALA-5191](https://issues.apache.org/jira/browse/IMPALA-5191) | Behavior of GROUP BY, HAVING, ORDER BY with column aliases should be more standard conforming |  Major | Frontend | Adriano | Zoltán Borók-Nagy |
| [IMPALA-6322](https://issues.apache.org/jira/browse/IMPALA-6322) | Group by expression fails when expression includes a CAST |  Major | Frontend | N Campbell | Zoltán Borók-Nagy |
| [IMPALA-6447](https://issues.apache.org/jira/browse/IMPALA-6447) | Failure in tests.stress.concurrent\_select |  Blocker | Infrastructure | Dimitris Tsirogiannis | Michael Brown |
| [IMPALA-6303](https://issues.apache.org/jira/browse/IMPALA-6303) | [DOCS] Incorrect mention of DataNodes in Impala docs |  Minor | Docs | Balazs Jeszenszky |  |
| [IMPALA-4319](https://issues.apache.org/jira/browse/IMPALA-4319) | Remove unused query options in compat-breaking version |  Minor | Backend | Michael Ho | Tim Armstrong |
| [IMPALA-6441](https://issues.apache.org/jira/browse/IMPALA-6441) | concurrent select binary search explain string pattern match is wrong |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-6429](https://issues.apache.org/jira/browse/IMPALA-6429) | Decimal division returns an incorrect result |  Blocker | Backend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-6472](https://issues.apache.org/jira/browse/IMPALA-6472) | Builds broken because test\_exprs uses a reserved word |  Blocker | Infrastructure | Tim Armstrong | Tianyi Wang |
| [IMPALA-5293](https://issues.apache.org/jira/browse/IMPALA-5293) | Turn insert clustering on by default |  Major | Frontend | Lars Volker | Lars Volker |
| [IMPALA-4924](https://issues.apache.org/jira/browse/IMPALA-4924) | Remove DECIMAL V1 code at next compatibility breaking version |  Major | Frontend | Dan Hecht | Taras Bobrovytsky |
| [IMPALA-6471](https://issues.apache.org/jira/browse/IMPALA-6471) | Incorrect Impala ALTER TABLE statement documentation |  Minor | Docs | Jeremy Beard | Alex Rodoni |
| [IMPALA-6473](https://issues.apache.org/jira/browse/IMPALA-6473) | Error in analytic sort with same expr in 'partition by' and 'order by' |  Critical | Frontend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-6495](https://issues.apache.org/jira/browse/IMPALA-6495) | targeted-perf tests broken by column alias change |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6454](https://issues.apache.org/jira/browse/IMPALA-6454) | CTAS into Kudu fails with mixed-case partition and/pr primary key column names |  Critical | Frontend | Alexander Behm | Pranay Singh |
| [IMPALA-6489](https://issues.apache.org/jira/browse/IMPALA-6489) | ASAN use-after-poison in impala::HdfsScanner::InitTupleFromTemplate |  Blocker | Backend | Alexander Behm | Tim Armstrong |
| [IMPALA-6511](https://issues.apache.org/jira/browse/IMPALA-6511) | Fix event "Open Finished" in state machine in FragmentInstanceState::UpdateState() |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-6392](https://issues.apache.org/jira/browse/IMPALA-6392) | Explain format for parquet predicate statistics should be consistent with predicates |  Minor | Frontend | Vuk Ercegovac | Fredy Wijaya |
| [IMPALA-5269](https://issues.apache.org/jira/browse/IMPALA-5269) | Comment on Final Line of Query Breaks Parsing |  Major | Clients | Alan Jackoway | Fredy Wijaya |
| [IMPALA-6516](https://issues.apache.org/jira/browse/IMPALA-6516) | Avoid logging during catalog update if the catalog version didn't change |  Minor | Catalog | Michael Ho | Tianyi Wang |
| [IMPALA-6526](https://issues.apache.org/jira/browse/IMPALA-6526) | Regression: query\_test.test\_spilling.TestSpillingDebugActionDimensions.test\_spilling |  Blocker | Backend | Zach Amsden | Bikramjeet Vig |
| [IMPALA-6275](https://issues.apache.org/jira/browse/IMPALA-6275) | Successful CTAS logs warning |  Major | Frontend | Tim Armstrong | Fredy Wijaya |
| [IMPALA-6008](https://issues.apache.org/jira/browse/IMPALA-6008) | Creating a UDF from a shared library with a .ll extension crashes Impala |  Critical | Backend | Tim Armstrong | Anuj Phadke |
| [IMPALA-6577](https://issues.apache.org/jira/browse/IMPALA-6577) | TestQueryExpiration::test\_concurrent\_query\_expiration failing |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6586](https://issues.apache.org/jira/browse/IMPALA-6586) | FrontendTest.TestGetTablesTypeTable failing on some builds |  Blocker | Frontend | Tim Armstrong | Alexander Behm |
| [IMPALA-6584](https://issues.apache.org/jira/browse/IMPALA-6584) | TestKuduOperations::test\_column\_storage\_attributes broken on exhaustive build |  Blocker | Infrastructure | Tim Armstrong | Grant Henke |
| [IMPALA-6588](https://issues.apache.org/jira/browse/IMPALA-6588) | test\_compute\_stats\_tablesample failing with "Cancelled" |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5139](https://issues.apache.org/jira/browse/IMPALA-5139) | Make mvn-quiet.sh write its output to a logfile |  Major | Infrastructure | Lars Volker | nithya |
| [IMPALA-6585](https://issues.apache.org/jira/browse/IMPALA-6585) | test\_low\_mem\_limit\_q21 flaky under ASAN |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6583](https://issues.apache.org/jira/browse/IMPALA-6583) | Various tests fail with missing database or table from catalog |  Blocker | Catalog | Tim Armstrong | Tianyi Wang |
| [IMPALA-6599](https://issues.apache.org/jira/browse/IMPALA-6599) | Log spam: ImpaladCatalog.java:525] NativeLibCacheSetNeedsRefresh(hdfs://localhost:20500/test-warehouse/test-udfs.ll) failed. |  Critical | Backend | Tim Armstrong | Vuk Ercegovac |
| [IMPALA-6405](https://issues.apache.org/jira/browse/IMPALA-6405) | There is no error under Decimal v2 when there is an overflow when casting String to Decimal |  Blocker | Backend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-6595](https://issues.apache.org/jira/browse/IMPALA-6595) | Hit crash freeing buffer in NljBuilder::Close() |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6602](https://issues.apache.org/jira/browse/IMPALA-6602) | TestQueryExpiration.test\_query\_expiration fails on Isilon with FINISHED rather than EXCEPTION state |  Blocker | Backend | Lars Volker | Vuk Ercegovac |
| [IMPALA-6615](https://issues.apache.org/jira/browse/IMPALA-6615) | An insert query using a CTE does not show the expected output when executed in Impala-shell |  Trivial | Clients | Luis E Martinez-Poblete | Fredy Wijaya |
| [IMPALA-6527](https://issues.apache.org/jira/browse/IMPALA-6527) | NaN values lead to incorrect statistics filtering under certain circumstances |  Blocker | Backend | Zoltan Ivanfi | Zoltán Borók-Nagy |
| [IMPALA-6500](https://issues.apache.org/jira/browse/IMPALA-6500) | Impala crashes under certain hypervisors that return out-of-range CPU IDs |  Critical | Backend | Osama Suleiman | Tim Armstrong |
| [IMPALA-6449](https://issues.apache.org/jira/browse/IMPALA-6449) | Use CLOCK\_MONOTONIC in ConditonVariable |  Minor | Backend | Michael Ho | Michael Ho |
| [IMPALA-6619](https://issues.apache.org/jira/browse/IMPALA-6619) | Alter table recover partitions creates unneeded partitions when faces percent sign |  Major | Frontend | Miklos Szurap | Fredy Wijaya |
| [IMPALA-6488](https://issues.apache.org/jira/browse/IMPALA-6488) | Crash in LibCache::GetCacheEntryInternal() |  Blocker | Backend | Vuk Ercegovac | Vuk Ercegovac |
| [IMPALA-6498](https://issues.apache.org/jira/browse/IMPALA-6498) | test\_query\_profile\_thrift\_timestamps causes following tests to fail |  Major | Infrastructure | Thomas Tauber-Marshall | Zoram Thanga |
| [IMPALA-6683](https://issues.apache.org/jira/browse/IMPALA-6683) | Restarting the Catalog without restarting Impalad and SS can block topic updates |  Blocker | Catalog | Mostafa Mokhtar | Tianyi Wang |
| [IMPALA-6697](https://issues.apache.org/jira/browse/IMPALA-6697) | Setuptools 39.0.0 does not work with Python 2.6 |  Blocker | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-6695](https://issues.apache.org/jira/browse/IMPALA-6695) | Builds fail with pkg\_resources.VersionConflict |  Blocker | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-6690](https://issues.apache.org/jira/browse/IMPALA-6690) | Invalid syntax in pip\_download.py due to a recent patch |  Blocker | Infrastructure | Taras Bobrovytsky | Tianyi Wang |
| [IMPALA-6582](https://issues.apache.org/jira/browse/IMPALA-6582) | Flaky test: TestImpalaShellInteractive::test\_multiline\_queries\_in\_history |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6589](https://issues.apache.org/jira/browse/IMPALA-6589) | Fuzz test on parquet table crashes impala |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6716](https://issues.apache.org/jira/browse/IMPALA-6716) | ImpalaShell should not rely on global access to parsed command line options |  Major | Clients | David Knupp | David Knupp |
| [IMPALA-6670](https://issues.apache.org/jira/browse/IMPALA-6670) | Executor-only impalads do not refresh their lib-cache entries |  Blocker | Backend, Frontend | Vuk Ercegovac | Vuk Ercegovac |
| [IMPALA-6722](https://issues.apache.org/jira/browse/IMPALA-6722) | Local build failing due to missing libTestUdfs.so |  Blocker | Infrastructure | Taras Bobrovytsky | Vuk Ercegovac |
| [IMPALA-6230](https://issues.apache.org/jira/browse/IMPALA-6230) | The output type of a round() function should match the input type |  Major | Backend, Frontend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-6468](https://issues.apache.org/jira/browse/IMPALA-6468) | Round() is inconsistent for Decimal and Double |  Major | Backend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-6715](https://issues.apache.org/jira/browse/IMPALA-6715) | stress test is double-counting TPCDS queries |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-6752](https://issues.apache.org/jira/browse/IMPALA-6752) | import kudu fails in python on Ubuntu 16.04 |  Blocker | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6759](https://issues.apache.org/jira/browse/IMPALA-6759) | stress test can't parse explain string with petabyte memory estimates (really) |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-6717](https://issues.apache.org/jira/browse/IMPALA-6717) | common\_query\_options are not used in binary search phase of stress test |  Major | Infrastructure | Tim Armstrong | Michael Brown |
| [IMPALA-6731](https://issues.apache.org/jira/browse/IMPALA-6731) | Build failed with distutils.errors.DistutilsError: Could not find suitable distribution |  Blocker | Infrastructure | Michael Ho | Lars Volker |
| [IMPALA-2567](https://issues.apache.org/jira/browse/IMPALA-2567) | KRPC milestone 1 |  Critical | Distributed Exec | Henry Robinson | Michael Ho |
| [IMPALA-6694](https://issues.apache.org/jira/browse/IMPALA-6694) | BufferPool appears misaligned in query profile |  Critical | Backend | Michael Ho | Tim Armstrong |
| [IMPALA-6739](https://issues.apache.org/jira/browse/IMPALA-6739) | Exception in ALTER TABLE SET statements |  Minor | Frontend | Adam Holley | Fredy Wijaya |
| [IMPALA-6719](https://issues.apache.org/jira/browse/IMPALA-6719) | refresh function case sensitivity |  Major | Frontend | Vuk Ercegovac | Fredy Wijaya |
| [IMPALA-6724](https://issues.apache.org/jira/browse/IMPALA-6724) | Allow creating/dropping functions with the same name as built-ins |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-6571](https://issues.apache.org/jira/browse/IMPALA-6571) | NullPointerException in SHOW CREATE TABLE for HBase tables |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-6785](https://issues.apache.org/jira/browse/IMPALA-6785) | Starting an Impalad on an already running cluster may result in inconsistent cluster subscription |  Critical | Distributed Exec | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-3464](https://issues.apache.org/jira/browse/IMPALA-3464) | Show Create Table with Unusual Delimiters Incorrect |  Minor | Frontend | Alan Jackoway | Adam Holley |
| [IMPALA-6824](https://issues.apache.org/jira/browse/IMPALA-6824) | Crash in RuntimeProfile::EventSequence::AddNewerEvents() when events\_ is empty |  Blocker | Backend | Lars Volker | Lars Volker |
| [IMPALA-6825](https://issues.apache.org/jira/browse/IMPALA-6825) | /share/hadoop/tools/lib/ missing from HADOOP\_CLASSPATH when using Hadoop 3, breaking S3 dev support |  Blocker | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-5903](https://issues.apache.org/jira/browse/IMPALA-5903) | Inconsistent specification of result set and result set metadata |  Critical | Catalog, Frontend | Lars Volker | Zoltán Borók-Nagy |
| [IMPALA-6215](https://issues.apache.org/jira/browse/IMPALA-6215) | Race between lib\_cache and java udf class loading |  Major | Backend, Frontend | Vuk Ercegovac | Vuk Ercegovac |
| [IMPALA-6092](https://issues.apache.org/jira/browse/IMPALA-6092) | Flaky test: query\_test/test\_udfs.py still happening |  Blocker | Infrastructure | Tim Armstrong | Vuk Ercegovac |
| [IMPALA-6451](https://issues.apache.org/jira/browse/IMPALA-6451) | Creating a Kudu table with CTAS fails with AuthorizationException: User 'username' does not have privileges to access: server1 |  Critical | Frontend, Security | Tomas Farkas | Fredy Wijaya |
| [IMPALA-6774](https://issues.apache.org/jira/browse/IMPALA-6774) | SyntaxError: invalid syntax diagnostics/collect\_diagnostics.py |  Blocker | Infrastructure | Michael Ho | bharath v |
| [IMPALA-6372](https://issues.apache.org/jira/browse/IMPALA-6372) | Dataload should execute Hive loads in parallel |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-6862](https://issues.apache.org/jira/browse/IMPALA-6862) | Privilege.java needs to support Sentry 1.5.1 and Sentry 2.0.0 API |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-6793](https://issues.apache.org/jira/browse/IMPALA-6793) | Metadata doesn't recover after restarting statestore |  Blocker | Catalog | Tianyi Wang | Tianyi Wang |
| [IMPALA-6887](https://issues.apache.org/jira/browse/IMPALA-6887) | Typo in authz-policy.ini.template |  Minor | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-6790](https://issues.apache.org/jira/browse/IMPALA-6790) | sqlparse needs to be upgraded in the Python environment |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-5930](https://issues.apache.org/jira/browse/IMPALA-5930) | Document that SCAN\_NODE\_CODEGEN\_THRESHOLD has had no effect since 2.7 |  Minor | Docs | Tim Armstrong | Alex Rodoni |
| [IMPALA-6896](https://issues.apache.org/jira/browse/IMPALA-6896) | NullPointerException in DESCRIBE FORMATTED on views |  Blocker | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-6884](https://issues.apache.org/jira/browse/IMPALA-6884) | test\_misaligned\_orc\_stripes fails for local fs tests |  Blocker | Backend | Vuk Ercegovac | Joe McDonnell |
| [IMPALA-6898](https://issues.apache.org/jira/browse/IMPALA-6898) | Dataload from scratch loads Kudu tables twice |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-6899](https://issues.apache.org/jira/browse/IMPALA-6899) | Dataload uses excessive HDFS commands |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-6889](https://issues.apache.org/jira/browse/IMPALA-6889) | test\_breakpad.py test\_minidump\_cleanup\_thread failing |  Critical | Infrastructure | Vuk Ercegovac | Lars Volker |
| [IMPALA-6927](https://issues.apache.org/jira/browse/IMPALA-6927) | Crash when click Fragment Instances on web page |  Blocker | . | Quanlong Huang | Lars Volker |
| [IMPALA-6340](https://issues.apache.org/jira/browse/IMPALA-6340) | There is no error when inserting an invalid value into a decimal column under decimal\_v2 |  Blocker | Backend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-6518](https://issues.apache.org/jira/browse/IMPALA-6518) | Fix the output type of a decimal union for decimal\_v2 |  Major | Frontend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-6934](https://issues.apache.org/jira/browse/IMPALA-6934) | Wrong results with EXISTS subquery containing ORDER BY, LIMIT, and OFFSET |  Blocker | Frontend | Alexander Behm | Zoltán Borók-Nagy |
| [IMPALA-7005](https://issues.apache.org/jira/browse/IMPALA-7005) | The 3.0 changelog page should mention the previous version |  Major | Docs | Lars Volker | Alex Rodoni |
| [IMPALA-5747](https://issues.apache.org/jira/browse/IMPALA-5747) | Crash with --asm\_module\_dir set |  Minor | Backend | Tim Armstrong | Manaswini |
| [IMPALA-7044](https://issues.apache.org/jira/browse/IMPALA-7044) | int32 overflow in HdfsTableSink::CreateNewTmpFile() |  Critical | Backend | Lars Volker | Lars Volker |
| [IMPALA-484](https://issues.apache.org/jira/browse/IMPALA-484) | Some functions always return same data type while, according to MSDN, they should return same data type as input data |  Minor | Backend | James Deng | Taras Bobrovytsky |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-4886](https://issues.apache.org/jira/browse/IMPALA-4886) | Expose per table partition/files/blocks count in web UI |  Major | Catalog | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-6356](https://issues.apache.org/jira/browse/IMPALA-6356) | Excessive synchronous logging in RpczStore::LogTrace causes severe slowdown for exchange operators spanning 2-3 minutes |  Critical | Distributed Exec | Mostafa Mokhtar | Michael Ho |
| [IMPALA-3562](https://issues.apache.org/jira/browse/IMPALA-3562) | Extend "compute stats" syntax to support a list of columns |  Minor | Frontend | Mostafa Mokhtar | Vuk Ercegovac |
| [IMPALA-6396](https://issues.apache.org/jira/browse/IMPALA-6396) | Exchange node should correctly report peak memory in query profile and summary |  Major | Distributed Exec | Mostafa Mokhtar | Michael Ho |
| [IMPALA-6508](https://issues.apache.org/jira/browse/IMPALA-6508) | Allow tests to run with Krpc |  Blocker | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-6116](https://issues.apache.org/jira/browse/IMPALA-6116) | Bound memory usage of KRPC service queue |  Major | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-5518](https://issues.apache.org/jira/browse/IMPALA-5518) | Allocate KrpcDataStreamRecvr RowBatch tuples from BufferPool |  Major | . | Henry Robinson | Michael Ho |
| [IMPALA-5528](https://issues.apache.org/jira/browse/IMPALA-5528) | tcmalloc contention much higher with concurrency after KRPC patch |  Critical | Distributed Exec | Henry Robinson | Mostafa Mokhtar |
| [IMPALA-6538](https://issues.apache.org/jira/browse/IMPALA-6538) | Fix read path when Parquet min(\_value)/max(\_value) statistics contain NaN |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-6219](https://issues.apache.org/jira/browse/IMPALA-6219) | Use AES-GCM for spill-to-disk encryption when CLMUL instruction is present and performant |  Major | Backend | Jim Apple | Xianda Ke |
| [IMPALA-6482](https://issues.apache.org/jira/browse/IMPALA-6482) | Add query option for query time limit |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6512](https://issues.apache.org/jira/browse/IMPALA-6512) | test\_exchange\_delays does not work with KRPC enabled |  Major | Infrastructure | Lars Volker | Michael Ho |
| [IMPALA-6554](https://issues.apache.org/jira/browse/IMPALA-6554) | Check failed: consumption\_-\>current\_value() == 0 (126 vs. 0) KrpcDataStreamRecvr |  Blocker | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-6565](https://issues.apache.org/jira/browse/IMPALA-6565) | Stress test with KRPC enabled shows inconsistent results for some queries |  Blocker | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-6470](https://issues.apache.org/jira/browse/IMPALA-6470) | Impala 3 Doc: Remove all user-facing Llama configuration options |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6542](https://issues.apache.org/jira/browse/IMPALA-6542) | Fix inconsistent write path of Parquet min/max statistics |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-6592](https://issues.apache.org/jira/browse/IMPALA-6592) | Fix test gap - no test of handling for invalid/unsupported Parquet codec |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6609](https://issues.apache.org/jira/browse/IMPALA-6609) | Some COUNTER\_ADD() in KrpcDataStreamRecvr may lead to use-after-free |  Blocker | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-6576](https://issues.apache.org/jira/browse/IMPALA-6576) | Add metric for Data Stream Service Queue memory consumption |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-6624](https://issues.apache.org/jira/browse/IMPALA-6624) | Network error: failed to write to TLS socket: error:1409F07F:SSL routines:SSL3\_WRITE\_PENDING:bad write retry:s3\_pkt.c |  Blocker | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-6669](https://issues.apache.org/jira/browse/IMPALA-6669) | Remove NeedsSeedingForBatchedReading() |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6462](https://issues.apache.org/jira/browse/IMPALA-6462) | Impala 3 Doc: Update for reserved keywords |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6510](https://issues.apache.org/jira/browse/IMPALA-6510) | Impala 2.12 Doc: Remove the refresh\_after\_connect option from INVALIDATE METADATA statemement |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6728](https://issues.apache.org/jira/browse/IMPALA-6728) | The combination use\_kudu\_kinit=false and use\_krpc=true crashes Impalad |  Blocker | Security | Michael Ho | Michael Ho |
| [IMPALA-6685](https://issues.apache.org/jira/browse/IMPALA-6685) | Improve profile in KrpcDataStreamRecvr and KrpcDataStreamSender |  Major | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-6546](https://issues.apache.org/jira/browse/IMPALA-6546) | Impala 2.12 & 3.0 Docs: Document the new ODBC scalar functions |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6688](https://issues.apache.org/jira/browse/IMPALA-6688) | Impala 2.12 & 3.0 Docs: Change default configuration to --compact\_catalog\_topic=true |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6480](https://issues.apache.org/jira/browse/IMPALA-6480) | Impala 3.0 Doc: Update DESCRIBE statement to respect column level privileges |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6842](https://issues.apache.org/jira/browse/IMPALA-6842) | Impala 3 Doc: Remove  'disable\_admission\_control' as a startup flag |  Major | . | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-6483](https://issues.apache.org/jira/browse/IMPALA-6483) | Impala 3.0 & 2.12 Docs: Describe the query option for query time limit |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6514](https://issues.apache.org/jira/browse/IMPALA-6514) | Impala 2.12 & 3.0 Docs: Allow Impala Shell to connect directly to impalad when config with proxy load balancer and kerberos |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6723](https://issues.apache.org/jira/browse/IMPALA-6723) | Impala 2.12 & 3.0 Docs: Support insert plan hints for CREATE TABLE AS SELECT |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6464](https://issues.apache.org/jira/browse/IMPALA-6464) | Impala 2.12 & 3.0 Docs: Extend "compute stats" syntax to support a list of columnss |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6463](https://issues.apache.org/jira/browse/IMPALA-6463) | Impala 3 Doc: Remove the unused query options from docs |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6748](https://issues.apache.org/jira/browse/IMPALA-6748) | Impala 2.12 & 3.0 Docs: Support more separators between date and time in default timestamp format |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6459](https://issues.apache.org/jira/browse/IMPALA-6459) | Doc: TABLESAMPLE for COMPUTE STATS |  Critical | Docs | John Russell | Alexander Behm |
| [IMPALA-6867](https://issues.apache.org/jira/browse/IMPALA-6867) | Impala 2.12 & 3.0 Docs: Provide a query option to not shuffle on distinct exprs |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6651](https://issues.apache.org/jira/browse/IMPALA-6651) | Impala 2.13 & 3.0 Docs: Fine-grained privileges |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6868](https://issues.apache.org/jira/browse/IMPALA-6868) | Impala 3.0 Doc: Remove old kinit code for Impala 3 |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6529](https://issues.apache.org/jira/browse/IMPALA-6529) | Impala 3 Doc: ROUND function output type change |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6314](https://issues.apache.org/jira/browse/IMPALA-6314) | Add run time scalar subquery check for uncorrelated subqueries |  Major | Backend, Frontend | Tim Armstrong | Zoltán Borók-Nagy |
| [IMPALA-6961](https://issues.apache.org/jira/browse/IMPALA-6961) | Impala Doc: Doc --enable\_minidumps flag |  Major | Docs | Alex Rodoni | Alex Rodoni |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-6415](https://issues.apache.org/jira/browse/IMPALA-6415) | Impala 3 Doc: Document breaking change of alias and ordinal substitution |  Blocker | Docs | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-6176](https://issues.apache.org/jira/browse/IMPALA-6176) | Document that SCAN\_NODE\_CODEGEN\_THRESHOLD has no effect |  Major | Docs | Tim Armstrong | Alex Rodoni |
| [IMPALA-6648](https://issues.apache.org/jira/browse/IMPALA-6648) | Add fine-grained privileges to role for Impala |  Major | Frontend | Fredy Wijaya |  |
| [IMPALA-3916](https://issues.apache.org/jira/browse/IMPALA-3916) | Reserve SQL:2016 keywords |  Minor | Frontend | Justin Erickson | Tianyi Wang |
| [IMPALA-3271](https://issues.apache.org/jira/browse/IMPALA-3271) | Remove deprecated command-line options (including Llama) |  Minor | Backend | Matthew Jacobs | Tim Armstrong |
| [IMPALA-6736](https://issues.apache.org/jira/browse/IMPALA-6736) | stress test --filter-query-mem-ratio doesn't work |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-6780](https://issues.apache.org/jira/browse/IMPALA-6780) | test\_recover\_paritions.py have always-true asserts |  Major | . | Philip Zeyliger | Alexander Behm |
| [IMPALA-6886](https://issues.apache.org/jira/browse/IMPALA-6886) | Impala Doc: Remove Impala Cluster Sizing doc |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6860](https://issues.apache.org/jira/browse/IMPALA-6860) | Impala 3.0 Doc: Upgrade Considerations |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-5893](https://issues.apache.org/jira/browse/IMPALA-5893) | Remove old kinit code for Impala 3 |  Major | . | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-6733](https://issues.apache.org/jira/browse/IMPALA-6733) | Impala 3.0 Doc: Release Nots |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6872](https://issues.apache.org/jira/browse/IMPALA-6872) | Impala 3.0 Doc: Update Known Issues |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6959](https://issues.apache.org/jira/browse/IMPALA-6959) | Update HAProxy configuration sample for Impala |  Major | Docs | Alex Rodoni | Alex Rodoni |


