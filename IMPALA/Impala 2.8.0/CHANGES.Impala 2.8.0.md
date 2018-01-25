
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

## Release Impala 2.8.0 - 2017-01-23



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-3973](https://issues.apache.org/jira/browse/IMPALA-3973) | add position and occurrence to instr() |  Major | Backend, Frontend | Scott Sappenfield | John Russell |
| [IMPALA-2521](https://issues.apache.org/jira/browse/IMPALA-2521) | Introduce CLUSTERED plan hint for insert statements |  Critical | Frontend | Mostafa Mokhtar | Lars Volker |
| [IMPALA-3725](https://issues.apache.org/jira/browse/IMPALA-3725) | Support Kudu UPSERT in Impala |  Critical | Frontend | Dimitris Tsirogiannis | Thomas Tauber-Marshall |
| [IMPALA-1286](https://issues.apache.org/jira/browse/IMPALA-1286) | Pull out common conjuncts from disjunctions |  Minor | Frontend | Nong Li | Alexander Behm |
| [IMPALA-1654](https://issues.apache.org/jira/browse/IMPALA-1654) | Impala needs to support all operators in drop partitions (\<, \>, \<\>, !=, \<=, \>=) like hive does |  Minor | Catalog | Mala Chikka Kempanna | John Russell |
| [IMPALA-2523](https://issues.apache.org/jira/browse/IMPALA-2523) | Make HdfsTableSink aware of clustered input |  Critical | Backend | Mostafa Mokhtar | Lars Volker |
| [IMPALA-1788](https://issues.apache.org/jira/browse/IMPALA-1788) | Consider replacing constant exprs with literal equivalents |  Major | Frontend | Henry Robinson | Alexander Behm |
| [IMPALA-2890](https://issues.apache.org/jira/browse/IMPALA-2890) | Complete 'ALTER' DDL command support for Kudu |  Blocker | Catalog | Jeff Hammerbacher | Dimitris Tsirogiannis |
| [IMPALA-4000](https://issues.apache.org/jira/browse/IMPALA-4000) | Restricted Sentry authorization for Kudu Tables |  Critical | Security | Matthew Jacobs | Taras Bobrovytsky |
| [IMPALA-4531](https://issues.apache.org/jira/browse/IMPALA-4531) | In-predicate not pushed to Kudu scan node |  Major | Backend | Mostafa Mokhtar | Matthew Jacobs |
| [IMPALA-4619](https://issues.apache.org/jira/browse/IMPALA-4619) | Error when specifying NULL default values in Kudu tables |  Major | Frontend | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-4932](https://issues.apache.org/jira/browse/IMPALA-4932) | Support Kudu authentication |  Blocker | Backend | Matthew Jacobs | Matthew Jacobs |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-4054](https://issues.apache.org/jira/browse/IMPALA-4054) | Remove serial test workarounds for IMPALA-2479. |  Major | Infrastructure | Alexander Behm | Alexander Behm |
| [IMPALA-3481](https://issues.apache.org/jira/browse/IMPALA-3481) | Kudu Connector: use new Scan Token API |  Minor | Backend, Frontend | Dan Burkert | Matthew Jacobs |
| [IMPALA-4099](https://issues.apache.org/jira/browse/IMPALA-4099) | Improve error message while loading UDFs with a missing jar |  Minor | Catalog | bharath v | bharath v |
| [IMPALA-3949](https://issues.apache.org/jira/browse/IMPALA-3949) | CatalogServiceCatalog.extractFunctions should log the underlying exception when failing to load a function |  Minor | Catalog | Balazs Jeszenszky | bharath v |
| [IMPALA-3988](https://issues.apache.org/jira/browse/IMPALA-3988) | Only use first 96 bits of query ID |  Major | Backend | Henry Robinson | Marcel Kornacker |
| [IMPALA-4160](https://issues.apache.org/jira/browse/IMPALA-4160) | Remove Llama code from Impala |  Major | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-4011](https://issues.apache.org/jira/browse/IMPALA-4011) | "Missed topic update deadline consider increasing statestore\_update\_frequency\_ms" log is misleading |  Major | Catalog | Juan Yu | Henry Robinson |
| [IMPALA-4187](https://issues.apache.org/jira/browse/IMPALA-4187) | Switch RPC latency metrics to histograms |  Major | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-3718](https://issues.apache.org/jira/browse/IMPALA-3718) | Improve functional testing on Impala Kudu |  Blocker | Infrastructure | Dimitris Tsirogiannis | Matthew Jacobs |
| [IMPALA-4289](https://issues.apache.org/jira/browse/IMPALA-4289) | Mark slots produced by NDV() and NDV\_NO\_FINALIZE() as non-nullable. |  Major | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-4259](https://issues.apache.org/jira/browse/IMPALA-4259) | Allow building Impala without thirdparty/ test dependencies |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-2905](https://issues.apache.org/jira/browse/IMPALA-2905) | Use FragmentMgr to manage coordinator fragments |  Minor | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-2789](https://issues.apache.org/jira/browse/IMPALA-2789) | Investigate packed mem layout. |  Critical | Perf Investigation | Alexander Behm | Alexander Behm |
| [IMPALA-2916](https://issues.apache.org/jira/browse/IMPALA-2916) | Add warning to query profile if debug build |  Minor | Backend | Lars Volker | Lars Volker |
| [IMPALA-4291](https://issues.apache.org/jira/browse/IMPALA-4291) | Lazy creation of IRFunction::Type to Function\* mapping |  Minor | Backend | Michael Ho | Michael Ho |
| [IMPALA-4269](https://issues.apache.org/jira/browse/IMPALA-4269) | Codegen for Merging-Exchange node |  Minor | Backend | Michael Ho | Michael Ho |
| [IMPALA-4320](https://issues.apache.org/jira/browse/IMPALA-4320) | Use gold linker by default |  Minor | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-4134](https://issues.apache.org/jira/browse/IMPALA-4134) | Use Kudu AUTO\_FLUSH\_BACKGROUND mode |  Major | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-3704](https://issues.apache.org/jira/browse/IMPALA-3704) | Fix error message when violating key constraint in Kudu insert |  Critical | Backend | Dimitris Tsirogiannis | Matthew Jacobs |
| [IMPALA-3211](https://issues.apache.org/jira/browse/IMPALA-3211) | Toolchain binary publishing improvements |  Minor | Infrastructure | Matthew Jacobs | Tim Armstrong |
| [IMPALA-3823](https://issues.apache.org/jira/browse/IMPALA-3823) | Add timer to measure Parquet footer reads |  Minor | Backend | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-4309](https://issues.apache.org/jira/browse/IMPALA-4309) | Introduce expr rewrite phase. |  Major | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-3983](https://issues.apache.org/jira/browse/IMPALA-3983) | Clean up UDF jars after reloading functions |  Major | Catalog | Balazs Jeszenszky | bharath v |
| [IMPALA-4048](https://issues.apache.org/jira/browse/IMPALA-4048) | Impala daemon web UI counts EXPIRED sessions in ACTIVE sessions |  Minor | Backend | Sudarshan | Henry Robinson |
| [IMPALA-1169](https://issues.apache.org/jira/browse/IMPALA-1169) | Impala debug webpage should identify query in Admission Control queue |  Minor | Backend | Alan Choi | Thomas Tauber-Marshall |
| [IMPALA-2379](https://issues.apache.org/jira/browse/IMPALA-2379) | Constant argument for UDAF is not accessible in Init function. |  Minor | Frontend | Tim Armstrong | Chris Channing |
| [IMPALA-3884](https://issues.apache.org/jira/browse/IMPALA-3884) | Enable codegen for TIMESTAMP in hash table. |  Major | Backend | Alexander Behm | Michael Ho |
| [IMPALA-4258](https://issues.apache.org/jira/browse/IMPALA-4258) | Clean up duplicated test macros |  Major | Infrastructure | Tim Armstrong | Anuj Phadke |
| [IMPALA-4465](https://issues.apache.org/jira/browse/IMPALA-4465) | Don't hold process wide lock while serializing Runtime Profile in GetRuntimeProfileStr() |  Major | Backend | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-1570](https://issues.apache.org/jira/browse/IMPALA-1570) | DROP / COMPUTE incremental stats with dynamic partition specs |  Minor | Frontend | Henry Robinson | Amos Bird |
| [IMPALA-4439](https://issues.apache.org/jira/browse/IMPALA-4439) | Kudu DML should report the number of rows that could not be modified |  Critical | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4278](https://issues.apache.org/jira/browse/IMPALA-4278) | Don't abort Catalog startup quickly if HMS is not present |  Critical | Catalog | Henry Robinson | Attila Jeges |
| [IMPALA-3812](https://issues.apache.org/jira/browse/IMPALA-3812) | IllegalStateException: null, better error message needed when unsupported data type is encountered |  Critical | Frontend | Miklos Szurap | Taras Bobrovytsky |
| [IMPALA-4516](https://issues.apache.org/jira/browse/IMPALA-4516) | Don't hold process wide lock connection\_to\_sessions\_map\_lock\_ while cancelling query |  Critical | Backend | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-4529](https://issues.apache.org/jira/browse/IMPALA-4529) | Inefficient use of try/catch in parser |  Minor | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4488](https://issues.apache.org/jira/browse/IMPALA-4488) | Impala session times out prematurely - even if there is a running query |  Critical | Backend, Clients | Miklos Szurap | Henry Robinson |
| [IMPALA-4450](https://issues.apache.org/jira/browse/IMPALA-4450) | random query generator: prefer \|\| for postgres string concatenation |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-3788](https://issues.apache.org/jira/browse/IMPALA-3788) | Add Kudu support for read-your-writes scan consistency |  Critical | Backend, Frontend | Mike Percy | Matthew Jacobs |
| [IMPALA-641](https://issues.apache.org/jira/browse/IMPALA-641) | Allow queries to be cancelled while waiting for a resource reservation (RM). |  Minor | Backend | Alexander Behm | Matthew Jacobs |
| [IMPALA-2057](https://issues.apache.org/jira/browse/IMPALA-2057) | Improve error message for incorrect avro decimal column declaration |  Minor | Frontend | casey | Anuj Phadke |
| [IMPALA-3491](https://issues.apache.org/jira/browse/IMPALA-3491) | Reduce number of serial tests with unique database fixture |  Minor | Infrastructure | Alexander Behm | Alexander Behm |
| [IMPALA-4639](https://issues.apache.org/jira/browse/IMPALA-4639) | Add a pytest skip marker for tests that can't pass if run on remote clusters |  Critical | Infrastructure | David Knupp |  |
| [IMPALA-4161](https://issues.apache.org/jira/browse/IMPALA-4161) | API returns a huge error message with duplicates when keys are already present in CTAS for Kudu |  Major | Backend | Romain Rigaux |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-4006](https://issues.apache.org/jira/browse/IMPALA-4006) | bin/impala-config.sh contains dangerous rm -rf statements, which can delete everything it has access to |  Critical | Infrastructure | Zoltan Ivanfi | Zoltan Ivanfi |
| [IMPALA-4056](https://issues.apache.org/jira/browse/IMPALA-4056) | toSql() of DistributeParam doesn't work as expected |  Major | Frontend | Yuanhao Luo | Yuanhao Luo |
| [IMPALA-4020](https://issues.apache.org/jira/browse/IMPALA-4020) | Catalog update can fail due to database creation/deletion in Hive. |  Major | Catalog | Anuj Phadke | bharath v |
| [IMPALA-4016](https://issues.apache.org/jira/browse/IMPALA-4016) | Avoid materializing slots only referenced by Kudu conjuncts |  Major | Frontend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-3874](https://issues.apache.org/jira/browse/IMPALA-3874) | Predicates are not always pushed to Kudu |  Blocker | Frontend | Dimitris Tsirogiannis | Matthew Jacobs |
| [IMPALA-3815](https://issues.apache.org/jira/browse/IMPALA-3815) | Clean up TopN node codegen'd code |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4098](https://issues.apache.org/jira/browse/IMPALA-4098) | DCHECK in ExprContext::Clone() because the context has not been opened. |  Blocker | Backend | Alexander Behm | Alexander Behm |
| [IMPALA-4097](https://issues.apache.org/jira/browse/IMPALA-4097) | Crash in kudu-scan-node-test |  Blocker | Backend | Alexander Behm | Matthew Jacobs |
| [IMPALA-4122](https://issues.apache.org/jira/browse/IMPALA-4122) | qgen: cluster unit tests are bitrotted |  Minor | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-4091](https://issues.apache.org/jira/browse/IMPALA-4091) | Misconfigured backend unit tests do not generate logs. |  Major | Infrastructure | Alexander Behm | Alexander Behm |
| [IMPALA-4136](https://issues.apache.org/jira/browse/IMPALA-4136) | testKudu planner test hangs if Kudu is not supported |  Critical | Infrastructure | Alexander Behm | Matthew Jacobs |
| [IMPALA-4074](https://issues.apache.org/jira/browse/IMPALA-4074) | Configuration items duplicate in template of YARN |  Trivial | Infrastructure | Yuanhao Luo | Yuanhao Luo |
| [IMPALA-4111](https://issues.apache.org/jira/browse/IMPALA-4111) | Backend death tests should not produce minidumps |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4170](https://issues.apache.org/jira/browse/IMPALA-4170) | Incorrect double quoting of identifier in SQL generated by COMPUTE INCREMENTAL STATS. |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-4138](https://issues.apache.org/jira/browse/IMPALA-4138) | RowBatch::AcquireState() cannot be used if the initial capacity of a RowBatch is not known |  Major | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-4028](https://issues.apache.org/jira/browse/IMPALA-4028) | When the path to sentry-site.xml contains spaces, impalad and catalogd start up failed |  Major | Frontend | Donghui Xu | Donghui Xu |
| [IMPALA-4037](https://issues.apache.org/jira/browse/IMPALA-4037) | ChildQuery::Cancel() appears to violate lock ordering |  Critical | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-4038](https://issues.apache.org/jira/browse/IMPALA-4038) | RPC delays for single query can lead to ImpalaServer not making progress on any queries |  Critical | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-4117](https://issues.apache.org/jira/browse/IMPALA-4117) | Factor out test utility classes from simple-scheduler-test.cc |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-4194](https://issues.apache.org/jira/browse/IMPALA-4194) | Bump version to 2.8.0 |  Blocker | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-3671](https://issues.apache.org/jira/browse/IMPALA-3671) | Add query option to limit scratch space usage |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4193](https://issues.apache.org/jira/browse/IMPALA-4193) | Improve detection of maximum cpu clock frequency in cpu-info |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-4104](https://issues.apache.org/jira/browse/IMPALA-4104) | Fix TestEnv and reenable DCHECK in MemTracker::ConsumeLocal() |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4205](https://issues.apache.org/jira/browse/IMPALA-4205) | tmp-file-mgr-test: AddressSanitizer: heap-use-after-free |  Blocker | Infrastructure | Michael Brown | Tim Armstrong |
| [IMPALA-4199](https://issues.apache.org/jira/browse/IMPALA-4199) | Add 'SNAPSHOT' to unreleased versions in save-version.sh |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-3899](https://issues.apache.org/jira/browse/IMPALA-3899) | Certain join types fail to spill after they start probing if there are matches stored in the hash table |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4207](https://issues.apache.org/jira/browse/IMPALA-4207) | data load failure: load\_nested.py: AttributeError: 'Namespace' object has no attribute 'use\_hive' |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-4180](https://issues.apache.org/jira/browse/IMPALA-4180) | Crash: impala::DiskIoRequestContext::Cancel |  Blocker | Backend | Taras Bobrovytsky | Michael Ho |
| [IMPALA-4026](https://issues.apache.org/jira/browse/IMPALA-4026) | Investigate regression introduced by "IMPALA-3629: Codegen TransferScratchTuples" |  Critical | Backend | Mostafa Mokhtar | Michael Ho |
| [IMPALA-4196](https://issues.apache.org/jira/browse/IMPALA-4196) | Certain builtin functions throw symbol does not exist error when used inside aggregate function |  Major | Backend | Mala Chikka Kempanna | bharath v |
| [IMPALA-4234](https://issues.apache.org/jira/browse/IMPALA-4234) | Remove astylerc in be/ |  Minor | Backend | Lars Volker | Lars Volker |
| [IMPALA-4042](https://issues.apache.org/jira/browse/IMPALA-4042) | count(distinct NULL) fails on a view |  Major | Frontend | Matthew Jacobs | Yonghyun Hwang |
| [IMPALA-4239](https://issues.apache.org/jira/browse/IMPALA-4239) | BufferPoolTest.PinWithoutReservation and BufferPoolTest.CapacityExhausted fail on release build |  Blocker | Backend | Harrison Sheinblatt | Tim Armstrong |
| [IMPALA-4213](https://issues.apache.org/jira/browse/IMPALA-4213) | Planner not pushing some predicates with constant exprs to Kudu |  Major | Frontend | Todd Lipcon | Matthew Jacobs |
| [IMPALA-4204](https://issues.apache.org/jira/browse/IMPALA-4204) | be test failure: KuduScanNodeTest: TestLimitsAreEnforced: row mismatch |  Blocker | Backend | Michael Brown | Matthew Jacobs |
| [IMPALA-4237](https://issues.apache.org/jira/browse/IMPALA-4237) | Incorrect results when materializing a decimal in a data source scan node. |  Blocker | Backend | Alexander Behm | Alexander Behm |
| [IMPALA-4254](https://issues.apache.org/jira/browse/IMPALA-4254) | impala-kudu unable to open lzo compressed tables |  Major | Frontend | Ashim Shrestha |  |
| [IMPALA-4076](https://issues.apache.org/jira/browse/IMPALA-4076) | Table with missing stats causes exception in RuntimeFilterGenerator.generateRuntimeFilters(RuntimeFilterGenerator.java:412) |  Critical | Frontend | Mostafa Mokhtar | Laszlo Gaal |
| [IMPALA-4135](https://issues.apache.org/jira/browse/IMPALA-4135) | Thrift threaded server times-out waiting connections during high load |  Critical | Distributed Exec | Henry Robinson | Thomas Tauber-Marshall |
| [IMPALA-4274](https://issues.apache.org/jira/browse/IMPALA-4274) | Jenkins builds can hang at the BE test "buffered-block-mgr-test" |  Major | Backend | David Knupp | Tim Armstrong |
| [IMPALA-4296](https://issues.apache.org/jira/browse/IMPALA-4296) | hadoop-next in gerrit has broken push\_to\_asf.py |  Blocker | Infrastructure | Jim Apple | Tim Armstrong |
| [IMPALA-4102](https://issues.apache.org/jira/browse/IMPALA-4102) | Remote Kudu reads should be reported |  Major | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4231](https://issues.apache.org/jira/browse/IMPALA-4231) | Performance regression in TPC-H Q2 due to delay in filter arrival |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3002](https://issues.apache.org/jira/browse/IMPALA-3002) | Inconsistent accounting of exchange rows between impala-shell and profile summary |  Minor | Clients | Mostafa Mokhtar | Thomas Tauber-Marshall |
| [IMPALA-1473](https://issues.apache.org/jira/browse/IMPALA-1473) | Incorrect cardinality displayed in exec summary for merging exchange on coordinator. |  Minor | Backend | Alexander Behm | Thomas Tauber-Marshall |
| [IMPALA-3348](https://issues.apache.org/jira/browse/IMPALA-3348) | Kudu scanner : Avoid per slot check of Vector size in KuduScanner::RelocateValuesFromKudu |  Major | Backend | Mostafa Mokhtar | Matthew Jacobs |
| [IMPALA-4299](https://issues.apache.org/jira/browse/IMPALA-4299) | run-all.sh command fails because HiveServer2 service failed to start |  Major | Infrastructure | Taras Bobrovytsky | Tim Armstrong |
| [IMPALA-4206](https://issues.apache.org/jira/browse/IMPALA-4206) | Complex view creation with subquery hits Preconditions check when computing column lineage. |  Major | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-3638](https://issues.apache.org/jira/browse/IMPALA-3638) | Remove lazy creation of LLVM codegen module |  Major | Backend | Mostafa Mokhtar | Michael Ho |
| [IMPALA-4301](https://issues.apache.org/jira/browse/IMPALA-4301) | IGNORE NULLS clause in analytic function fails with WHERE-clause subqueries. |  Major | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-4246](https://issues.apache.org/jira/browse/IMPALA-4246) | SleepForMs() utility function has undefined behavior for \> 1s |  Critical | Backend | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-4262](https://issues.apache.org/jira/browse/IMPALA-4262) | LZO-scanner fails when reading large index files from S3 |  Critical | Backend | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-4329](https://issues.apache.org/jira/browse/IMPALA-4329) | Crash in scheduler when no backends are registered |  Blocker | Backend | Lars Volker | Lars Volker |
| [IMPALA-4325](https://issues.apache.org/jira/browse/IMPALA-4325) | StmtRewrite lost parentheses of CompoundPredicate in pushNegationToOperands() |  Minor | Frontend | Yuanhao Luo | Yuanhao Luo |
| [IMPALA-3719](https://issues.apache.org/jira/browse/IMPALA-3719) | Simplify CREATE table statements with Kudu tables |  Blocker | Frontend | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-3178](https://issues.apache.org/jira/browse/IMPALA-3178) | DROP DATABASE ... CASCADE is broken in Kudu |  Blocker | Frontend | David Alves | Dimitris Tsirogiannis |
| [IMPALA-3388](https://issues.apache.org/jira/browse/IMPALA-3388) | Kudu should not throw table loading exceptions for fixable errors |  Blocker | Frontend | casey | Dimitris Tsirogiannis |
| [IMPALA-4241](https://issues.apache.org/jira/browse/IMPALA-4241) | "Child queries finished" message appears even when no child queries are present. |  Critical | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-4335](https://issues.apache.org/jira/browse/IMPALA-4335) | fetch calls may now produce empty row batches |  Critical | Distributed Exec | Matthew Jacobs | Henry Robinson |
| [IMPALA-4285](https://issues.apache.org/jira/browse/IMPALA-4285) | Parquet scanner with MT\_DOP \> 0 crashes when materializing no slots. |  Blocker | Backend | Alexander Behm | Alexander Behm |
| [IMPALA-4286](https://issues.apache.org/jira/browse/IMPALA-4286) | DCHECK with MT\_DOP=4 and query with nested types. |  Blocker | Backend | Alexander Behm | Alexander Behm |
| [IMPALA-4120](https://issues.apache.org/jira/browse/IMPALA-4120) | Incorrect results with LEAD() analytic function |  Blocker | Backend | Clemens Valiente | Michael Ho |
| [IMPALA-4339](https://issues.apache.org/jira/browse/IMPALA-4339) | Coredumps don't end up in IMPALA\_HOME if buildall.sh run from a different directory |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-4322](https://issues.apache.org/jira/browse/IMPALA-4322) | test\_scanners\_fuzz.py hits a DCHECK |  Blocker | Backend | Taras Bobrovytsky | Sailesh Mukil |
| [IMPALA-4310](https://issues.apache.org/jira/browse/IMPALA-4310) | push\_to\_asf.py doesn't respect --apache\_remote |  Minor | Infrastructure | Henry Robinson | Henry Robinson |
| [IMPALA-4350](https://issues.apache.org/jira/browse/IMPALA-4350) | Crash in PartitionedHashJoinNode::NodeDebugString() at log level 2 |  Major | Backend | Marcel Kornacker | Tim Armstrong |
| [IMPALA-4362](https://issues.apache.org/jira/browse/IMPALA-4362) | PFE ExecTime counter is always 0 |  Minor | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-1702](https://issues.apache.org/jira/browse/IMPALA-1702) | "invalidate metadata" can cause duplicate TableIds |  Critical | Catalog | Skye Wanderman-Milne | Huaisi Xu |
| [IMPALA-4369](https://issues.apache.org/jira/browse/IMPALA-4369) | DCHECK in Parquet scanner with MT\_DOP \> 1 when reading file with bad metadata. |  Major | Backend | Alexander Behm | Alexander Behm |
| [IMPALA-4388](https://issues.apache.org/jira/browse/IMPALA-4388) | OOM in test\_insert where none was before |  Blocker | Backend | Jim Apple | Lars Volker |
| [IMPALA-4348](https://issues.apache.org/jira/browse/IMPALA-4348) | TestRPCTimeout.test\_execplanfragment\_timeout fails in exhaustive |  Blocker | Distributed Exec | Jim Apple | Henry Robinson |
| [IMPALA-4333](https://issues.apache.org/jira/browse/IMPALA-4333) | Crash in PlanRootSink::GetNext() |  Blocker | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-4383](https://issues.apache.org/jira/browse/IMPALA-4383) | Plan fragments may never send reports to coordinator |  Critical | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-3389](https://issues.apache.org/jira/browse/IMPALA-3389) | Test hs2.test\_hs2.TestHS2.test\_get\_log fails |  Critical | Infrastructure | Lars Volker | Sailesh Mukil |
| [IMPALA-4377](https://issues.apache.org/jira/browse/IMPALA-4377) | Failure in UdfExecutorTest.HiveStringsTest |  Critical | Frontend | Jim Apple | Alexander Behm |
| [IMPALA-4387](https://issues.apache.org/jira/browse/IMPALA-4387) | Avro scanner crashes if the file schema has invalid decimal precision or scale |  Blocker | Backend | Jim Apple | Tim Armstrong |
| [IMPALA-4408](https://issues.apache.org/jira/browse/IMPALA-4408) | ASAN detected heap-buffer-overflow in Kudu scanner. |  Blocker | Backend | Alexander Behm | Alexander Behm |
| [IMPALA-3346](https://issues.apache.org/jira/browse/IMPALA-3346) | Kudu scanner : Improve perf of DecodeRowsIntoRowBatch |  Major | Backend | Mostafa Mokhtar | Alexander Behm |
| [IMPALA-4415](https://issues.apache.org/jira/browse/IMPALA-4415) | DCHECK failure in SimpleScheduler::CreateScanInstances() |  Blocker | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-4374](https://issues.apache.org/jira/browse/IMPALA-4374) | Change the stress test DDL statements for TPC-H and TPC-DS to using the new syntax for CREATE TABLE for Kudu |  Major | Infrastructure | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-4223](https://issues.apache.org/jira/browse/IMPALA-4223) | Avro scanner can crash when HDFS seek fails |  Blocker | Backend | Tim Armstrong | Lars Volker |
| [IMPALA-4330](https://issues.apache.org/jira/browse/IMPALA-4330) | Python failure in our builds |  Major | Infrastructure | Taras Bobrovytsky | Lars Volker |
| [IMPALA-4336](https://issues.apache.org/jira/browse/IMPALA-4336) | Wrong results with nested union operands due to missing casts. |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-4409](https://issues.apache.org/jira/browse/IMPALA-4409) | ImpalaServer::CancelInternal() can deadlock |  Blocker | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-4411](https://issues.apache.org/jira/browse/IMPALA-4411) | Kudu inserts violate lock ordering and could deadlock |  Blocker | Distributed Exec | Tim Armstrong | Matthew Jacobs |
| [IMPALA-4384](https://issues.apache.org/jira/browse/IMPALA-4384) | NPE in creating external Kudu table |  Major | Frontend | Mostafa Mokhtar | Matthew Jacobs |
| [IMPALA-4412](https://issues.apache.org/jira/browse/IMPALA-4412) | Per operator timing in profile summary is incorrect when mt\_dop \> 0 |  Major | Backend | Mostafa Mokhtar | Sailesh Mukil |
| [IMPALA-3974](https://issues.apache.org/jira/browse/IMPALA-3974) | IMPALA-2843 should consider using local\_library\_dir instead of java.io.tmpdir |  Major | Catalog | Huaisi Xu | bharath v |
| [IMPALA-4423](https://issues.apache.org/jira/browse/IMPALA-4423) | Wrong results with several conjunctive EXISTS subqueries that can be evaluated at query-compile time. |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-4153](https://issues.apache.org/jira/browse/IMPALA-4153) | count(\*) is not working properly on all blank('') columns in RCFile stored tables |  Major | Backend | Matyas Orhidi | Laszlo Gaal |
| [IMPALA-4421](https://issues.apache.org/jira/browse/IMPALA-4421) | Rogue variable expansion creates "${RESULTS\_DIR" directory inside tests/, which confuses run\_tests.py |  Major | Infrastructure | David Knupp | David Knupp |
| [IMPALA-3724](https://issues.apache.org/jira/browse/IMPALA-3724) | Support Kudu non-covering range partitions |  Blocker | Frontend | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-4379](https://issues.apache.org/jira/browse/IMPALA-4379) | Fix Kudu table type checking |  Critical | Frontend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-3662](https://issues.apache.org/jira/browse/IMPALA-3662) | Reduce parquet scanner memory usage |  Critical | Backend | Mostafa Mokhtar | Michael Ho |
| [IMPALA-2967](https://issues.apache.org/jira/browse/IMPALA-2967) | "Last Accessed Time" in Impalad's debug page is inconsistent with "Start Time" |  Minor | Clients | Michael Ho | Henry Robinson |
| [IMPALA-4332](https://issues.apache.org/jira/browse/IMPALA-4332) | DCHECK in scheduler when querying Kudu or HBase table with MT\_DOP \> 0. |  Blocker | Backend | Alexander Behm | Marcel Kornacker |
| [IMPALA-4260](https://issues.apache.org/jira/browse/IMPALA-4260) | Alter table add column drops all the column stats |  Critical | Catalog | Mostafa Mokhtar | Thomas Tauber-Marshall |
| [IMPALA-4441](https://issues.apache.org/jira/browse/IMPALA-4441) | Divide-by-zero in RuntimeProfile::SummaryStatsCounter::SetStats |  Blocker | Backend | Henry Robinson | Sailesh Mukil |
| [IMPALA-4442](https://issues.apache.org/jira/browse/IMPALA-4442) | FE ParserTests may report UnsatisfiedLinkError |  Critical | Infrastructure | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4266](https://issues.apache.org/jira/browse/IMPALA-4266) | Java udf expression returning string in group by can give incorrect results. |  Blocker | Backend | bharath v | Tim Armstrong |
| [IMPALA-4302](https://issues.apache.org/jira/browse/IMPALA-4302) | In-predicate filters do not scale as expected with # of elements constant IN-list |  Major | Backend | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-4437](https://issues.apache.org/jira/browse/IMPALA-4437) | Occasional crash in buffered-block-mgr-test |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3872](https://issues.apache.org/jira/browse/IMPALA-3872) | Add support for caching PyPi packages |  Minor | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-4368](https://issues.apache.org/jira/browse/IMPALA-4368) | SELECT NULL fails with MT\_DOP \> 0 |  Major | Backend | Alexander Behm | Marcel Kornacker |
| [IMPALA-4446](https://issues.apache.org/jira/browse/IMPALA-4446) | expr-test fails under ASAN |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4455](https://issues.apache.org/jira/browse/IMPALA-4455) | MemPoolTest.TryAllocateAligned failed |  Blocker | Backend | Henry Robinson | Jim Apple |
| [IMPALA-4342](https://issues.apache.org/jira/browse/IMPALA-4342) | "Cannot drop non-empty database: udf\_test\_errors" when using local filesystem |  Minor | Infrastructure | Jim Apple | Michael Ho |
| [IMPALA-4454](https://issues.apache.org/jira/browse/IMPALA-4454) | test\_kudu.TestShowCreateTable fails on S3 |  Blocker | Backend | Henry Robinson | Thomas Tauber-Marshall |
| [IMPALA-3710](https://issues.apache.org/jira/browse/IMPALA-3710) | INSERT, UPDATE, DELETE should ignore conflicts by default |  Blocker | Frontend | Dimitris Tsirogiannis | Matthew Jacobs |
| [IMPALA-4452](https://issues.apache.org/jira/browse/IMPALA-4452) | DCHECK in AggFnEvaluator::Init() |  Blocker | Backend | Henry Robinson | Michael Ho |
| [IMPALA-3552](https://issues.apache.org/jira/browse/IMPALA-3552) | Make incremental stats max serialized size configurable or dramatically increase limit. |  Blocker | Catalog | Alexander Behm | bharath v |
| [IMPALA-4479](https://issues.apache.org/jira/browse/IMPALA-4479) | Evaluation of a constant boolean expr results in a NULL instead of FALSE. |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-4372](https://issues.apache.org/jira/browse/IMPALA-4372) | 'Describe formatted' returns types in upper case |  Major | Frontend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-4436](https://issues.apache.org/jira/browse/IMPALA-4436) | StringValue::StringCompare bug for non-ascii string |  Critical | Backend | Fu Lili | Dan Hecht |
| [IMPALA-4108](https://issues.apache.org/jira/browse/IMPALA-4108) | Move cached set\_is\_null/is\_null/etc functions from SlotDescriptor to LlvmCodeGen |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4470](https://issues.apache.org/jira/browse/IMPALA-4470) | Predicate hits NumberFormatException due to constant folding. |  Major | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-4493](https://issues.apache.org/jira/browse/IMPALA-4493) | StringCompareTest fails under ASAN |  Blocker | Backend | Tim Armstrong | Dan Hecht |
| [IMPALA-4444](https://issues.apache.org/jira/browse/IMPALA-4444) | Use-after-free in memory returned from parquet scanner. |  Blocker | Backend | Tim Armstrong | Michael Ho |
| [IMPALA-4392](https://issues.apache.org/jira/browse/IMPALA-4392) | Add HdfsTableSink memory consumption to the query profile |  Major | Backend | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-3713](https://issues.apache.org/jira/browse/IMPALA-3713) | CRUD operations against Kudu tables should report the number of modified rows |  Critical | Backend | Dimitris Tsirogiannis | Matthew Jacobs |
| [IMPALA-4453](https://issues.apache.org/jira/browse/IMPALA-4453) | test\_kudu\_crud fails with wrong number of results |  Blocker | Backend | Henry Robinson | Matthew Jacobs |
| [IMPALA-4490](https://issues.apache.org/jira/browse/IMPALA-4490) | Check failed: false Unexpected plan node with runtime filters |  Blocker | Frontend | Michael Brown | Alexander Behm |
| [IMPALA-4391](https://issues.apache.org/jira/browse/IMPALA-4391) | HdfsScanners drops Status on the floor in multiple places |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3726](https://issues.apache.org/jira/browse/IMPALA-3726) | Handle nullability and column encodings and compression for columns |  Blocker | Frontend | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-4509](https://issues.apache.org/jira/browse/IMPALA-4509) | Impala should provide SASL a mutex |  Critical | Security | Matthew Jacobs | Henry Robinson |
| [IMPALA-4497](https://issues.apache.org/jira/browse/IMPALA-4497) | Kudu client usage on secure clusters results in crash |  Blocker | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4440](https://issues.apache.org/jira/browse/IMPALA-4440) | dcheck failure: lineage-util.h:91] Check failed: lineage.ended \>= lineage.started |  Blocker | Backend | Michael Brown | Dan Hecht |
| [IMPALA-4514](https://issues.apache.org/jira/browse/IMPALA-4514) | test\_null\_data failures in exhaustive runs |  Blocker | Backend | bharath v | Dimitris Tsirogiannis |
| [IMPALA-4502](https://issues.apache.org/jira/browse/IMPALA-4502) | test\_partition\_ddl\_predicates breaks on non-HDFS filesystems |  Blocker | Infrastructure | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-4432](https://issues.apache.org/jira/browse/IMPALA-4432) | Cannot execute IR UDF when single node execution is enabled |  Major | Backend | Tim Armstrong | Michael Ho |
| [IMPALA-4397](https://issues.apache.org/jira/browse/IMPALA-4397) | Codegen for compute stats query on 1K column table takes 4 minutes |  Critical | Backend | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-4410](https://issues.apache.org/jira/browse/IMPALA-4410) | PlanFragmentExecutor::Close() may crash if Prepare() fails |  Critical | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-4518](https://issues.apache.org/jira/browse/IMPALA-4518) | behavior with LEAD/LAG on string column/expression where offset goes beyond row bounds differs from postgres |  Blocker | Backend | Michael Brown | Michael Ho |
| [IMPALA-4495](https://issues.apache.org/jira/browse/IMPALA-4495) | Runtime filters are disabled based on stats before they even arrive, contributing to performance cliff on TPC-H Q2 |  Critical | Backend | Tim Armstrong | Michael Ho |
| [IMPALA-4525](https://issues.apache.org/jira/browse/IMPALA-4525) | Codegen failure leads to query crash |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4494](https://issues.apache.org/jira/browse/IMPALA-4494) | Crash in SimpleScheduler when restarting under load |  Blocker | Backend | Lars Volker | Lars Volker |
| [IMPALA-4540](https://issues.apache.org/jira/browse/IMPALA-4540) | Scheduler calls function in DCHECK, leading to crash |  Blocker | Backend | Lars Volker | Lars Volker |
| [IMPALA-4541](https://issues.apache.org/jira/browse/IMPALA-4541) | test\_codegen\_mem\_limit  is flaky |  Blocker | Backend | Michael Ho | Tim Armstrong |
| [IMPALA-4535](https://issues.apache.org/jira/browse/IMPALA-4535) | ASAN build fails to compile |  Blocker | Backend | Michael Ho | Henry Robinson |
| [IMPALA-4523](https://issues.apache.org/jira/browse/IMPALA-4523) | fix max varchar length |  Major | Frontend | Greg Rahn | Alexander Behm |
| [IMPALA-4522](https://issues.apache.org/jira/browse/IMPALA-4522) | Impalad crash under stress due to too many Kudu client threads |  Blocker | Frontend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-3342](https://issues.apache.org/jira/browse/IMPALA-3342) | Runtime profile TotalCpuTime are often wrong |  Minor | Backend | Juan Yu | Anuj Phadke |
| [IMPALA-4532](https://issues.apache.org/jira/browse/IMPALA-4532) | Crashes in impala::ThreadCounterMeasurement::Stop() |  Blocker | Backend | Michael Ho | Michael Ho |
| [IMPALA-4478](https://issues.apache.org/jira/browse/IMPALA-4478) | Account for Kudu client memory in MemTracker |  Blocker | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4550](https://issues.apache.org/jira/browse/IMPALA-4550) | Mismatching types in JOIN crash Impala |  Blocker | Frontend | Lars Volker | Lars Volker |
| [IMPALA-4554](https://issues.apache.org/jira/browse/IMPALA-4554) | Memory corruption of nested collection with MT\_DOP \> 0. |  Critical | Backend | Alexander Behm | Tim Armstrong |
| [IMPALA-4542](https://issues.apache.org/jira/browse/IMPALA-4542) | Use-after-free in various backend tests |  Blocker | Backend | Michael Ho | Henry Robinson |
| [IMPALA-4458](https://issues.apache.org/jira/browse/IMPALA-4458) | DCHECK when running test\_cancellation.py with MT\_DOP \> 0 |  Blocker | Backend | Alexander Behm | Alexander Behm |
| [IMPALA-4557](https://issues.apache.org/jira/browse/IMPALA-4557) | test\_alloc\_fail.py is flaky |  Blocker | Backend | Michael Ho | Michael Ho |
| [IMPALA-4562](https://issues.apache.org/jira/browse/IMPALA-4562) | impala crashes starting up on kerberized clusters where kudu is not supported |  Blocker | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4504](https://issues.apache.org/jira/browse/IMPALA-4504) | fragment-exec-state.cc:70] Check failed: status.ok() \|\| done |  Blocker | Backend | Michael Brown | Dan Hecht |
| [IMPALA-4527](https://issues.apache.org/jira/browse/IMPALA-4527) | Columns in Kudu tables created from Impala default to "NOT NULL" |  Critical | Frontend | Mostafa Mokhtar | Dimitris Tsirogiannis |
| [IMPALA-4567](https://issues.apache.org/jira/browse/IMPALA-4567) | TestKuduOperations.test\_kudu\_alter\_table fails |  Blocker | Backend | Michael Ho | Matthew Jacobs |
| [IMPALA-4564](https://issues.apache.org/jira/browse/IMPALA-4564) | TestMtDopParquet.test\_parquet should be skipped in legacy AGG/JOIN builds |  Blocker | Backend | Michael Ho | Tim Armstrong |
| [IMPALA-4565](https://issues.apache.org/jira/browse/IMPALA-4565) | Incorrect results under ASAN with mt\_dop \> 0 and old aggs/joins |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4357](https://issues.apache.org/jira/browse/IMPALA-4357) | Fix DROP TABLE to pass analysis if the table fails to load |  Critical | Catalog | Matthew Jacobs | Thomas Tauber-Marshall |
| [IMPALA-4363](https://issues.apache.org/jira/browse/IMPALA-4363) | SELECTing invalid timestamp value from Parquet file crashes impalad |  Blocker | Backend | Laszlo Gaal | Taras Bobrovytsky |
| [IMPALA-4303](https://issues.apache.org/jira/browse/IMPALA-4303) | Incorrect change from UNION ALL to UNION DISTINCT after subquery rewriting. |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-4580](https://issues.apache.org/jira/browse/IMPALA-4580) | Crash when FETCH\_FIRST exhausts result set cache |  Blocker | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-3125](https://issues.apache.org/jira/browse/IMPALA-3125) | Incorrect assignment of outer join On-clause that only references one side of the join. |  Critical | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-3875](https://issues.apache.org/jira/browse/IMPALA-3875) | Thrift threaded server hang in some cases |  Blocker | Distributed Exec | Huaisi Xu | Sailesh Mukil |
| [IMPALA-4498](https://issues.apache.org/jira/browse/IMPALA-4498) | Timestamp timezone conversion causes a crash |  Blocker | Backend | Taras Bobrovytsky | Tim Armstrong |
| [IMPALA-4571](https://issues.apache.org/jira/browse/IMPALA-4571) | InList predicates not being pushed to Kudu scans |  Major | Frontend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4578](https://issues.apache.org/jira/browse/IMPALA-4578) | Inferred predicates not assigned to Kudu scan nodes. |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-3167](https://issues.apache.org/jira/browse/IMPALA-3167) | Incorrect assignment of WHERE clause predicate through a grouping aggregation + outer join. |  Critical | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-4561](https://issues.apache.org/jira/browse/IMPALA-4561) | Kudu syntax DISTRIBUTE BY should be PARTITIONED BY |  Critical | Frontend | Matthew Jacobs |  |
| [IMPALA-4584](https://issues.apache.org/jira/browse/IMPALA-4584) | test\_kudu\_alter\_table fails on exhaustive |  Blocker | Catalog, Infrastructure | Alexander Behm | Dimitris Tsirogiannis |
| [IMPALA-4574](https://issues.apache.org/jira/browse/IMPALA-4574) | The uuid() function should not be treated as a constant expr. |  Blocker | Backend, Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-4511](https://issues.apache.org/jira/browse/IMPALA-4511) | Regression : Reported Fragment total time is incorrect |  Blocker | Backend | Mostafa Mokhtar | Henry Robinson |
| [IMPALA-2864](https://issues.apache.org/jira/browse/IMPALA-2864) | Ensure that client connections are closed after a failed RPC and a failed Open() |  Minor | Distributed Exec | Henry Robinson | Sailesh Mukil |
| [IMPALA-4592](https://issues.apache.org/jira/browse/IMPALA-4592) | IllegalStateException when using nondeterministic functions in partition filter |  Critical | Frontend | Tim Armstrong | Alexander Behm |
| [IMPALA-4613](https://issues.apache.org/jira/browse/IMPALA-4613) | Fragment total time regressed after IMPALA-4504 |  Blocker | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-3314](https://issues.apache.org/jira/browse/IMPALA-3314) | Altering table partition's storage format is not working and crashing the daemon |  Major | Frontend | Anuj Phadke | bharath v |
| [IMPALA-4589](https://issues.apache.org/jira/browse/IMPALA-4589) | Kudu now requires replication factor must be odd; tests broken |  Blocker | Frontend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4590](https://issues.apache.org/jira/browse/IMPALA-4590) | Kudu test failure; several error messages changed |  Blocker | Infrastructure | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4595](https://issues.apache.org/jira/browse/IMPALA-4595) | Linking IR UDF module to main module crashes Impala |  Blocker | Backend | Michael Ho | Michael Ho |
| [IMPALA-4585](https://issues.apache.org/jira/browse/IMPALA-4585) | test\_udfs.py fails on S3 and local filesystem builds |  Blocker | Infrastructure | Alexander Behm | Taras Bobrovytsky |
| [IMPALA-4586](https://issues.apache.org/jira/browse/IMPALA-4586) | Values of non-deterministic UDFs are cached in backend |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4539](https://issues.apache.org/jira/browse/IMPALA-4539) | Parquet scanner memory bug: I/O buffer is attached to output batch while scratch batch rows still reference it |  Blocker | Backend | Fu Lili | Tim Armstrong |
| [IMPALA-4614](https://issues.apache.org/jira/browse/IMPALA-4614) | test\_aggregation.py fails with IllegalStateException on Kudu table |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-4594](https://issues.apache.org/jira/browse/IMPALA-4594) | WriteSlot and CodegenWriteSlot handle escaped NULL slots differently |  Major | Backend | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-4608](https://issues.apache.org/jira/browse/IMPALA-4608) | Fragment instance completion times can be very wrong |  Critical | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-4609](https://issues.apache.org/jira/browse/IMPALA-4609) | Make it clear that fragment thread counters are totals across all threads |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3126](https://issues.apache.org/jira/browse/IMPALA-3126) | Incorrect assignment of an inner join On-clause predicate through an outer join. |  Critical | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-4628](https://issues.apache.org/jira/browse/IMPALA-4628) | test\_kudu\_alter\_table fails with "Invalid alter step type" |  Blocker | Backend | Alexander Behm | Lars Volker |
| [IMPALA-4566](https://issues.apache.org/jira/browse/IMPALA-4566) | Kudu client glog contention can cause timeouts |  Critical | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4638](https://issues.apache.org/jira/browse/IMPALA-4638) | Queries with mt\_dop \> 0 skip admission control |  Blocker | Backend | Mostafa Mokhtar | Alexander Behm |
| [IMPALA-4519](https://issues.apache.org/jira/browse/IMPALA-4519) | TestFragmentLifecycle is flaky |  Critical | Infrastructure | Thomas Tauber-Marshall | Tim Armstrong |
| [IMPALA-4642](https://issues.apache.org/jira/browse/IMPALA-4642) | TestFragmentLifecycle broken; blocking gvos |  Blocker | Infrastructure | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4654](https://issues.apache.org/jira/browse/IMPALA-4654) | Kudu scanner threads take a long time to close |  Critical | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4633](https://issues.apache.org/jira/browse/IMPALA-4633) | change broken kudu client default |  Critical | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4662](https://issues.apache.org/jira/browse/IMPALA-4662) | with Kudu tables, ClassCastException with NULL literal in IN list |  Critical | Frontend | Michael Brown | Alexander Behm |
| [IMPALA-3347](https://issues.apache.org/jira/browse/IMPALA-3347) | Kudu scanner : Expensive per row per column IsNull check |  Major | Backend | Mostafa Mokhtar | Matthew Jacobs |
| [IMPALA-3349](https://issues.apache.org/jira/browse/IMPALA-3349) | Kudu scanner : KuduScanBatch::RowPtr::Get\* has very expensive checks in the hot path |  Minor | Backend | Mostafa Mokhtar | Matthew Jacobs |
| [IMPALA-4570](https://issues.apache.org/jira/browse/IMPALA-4570) | Impala shell tarball is not usable on systems with setuptools versions where '0.7' is a substring of the full version string |  Critical | Clients | Tim Armstrong | Tim Armstrong |
| [IMPALA-4630](https://issues.apache.org/jira/browse/IMPALA-4630) | Remove suspicious (but harmless) base64-encoded javascript in common-footer.tmpl |  Major | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-4739](https://issues.apache.org/jira/browse/IMPALA-4739) | ExprRewriter fails on HAVING clauses |  Critical | Frontend | Henry Robinson | Marcel Kornacker |
| [IMPALA-4579](https://issues.apache.org/jira/browse/IMPALA-4579) | SHOW CREATE VIEW fails for view containing WHERE clause on an unsecure cluster |  Major | Frontend | Mala Chikka Kempanna | Dimitris Tsirogiannis |
| [IMPALA-4517](https://issues.apache.org/jira/browse/IMPALA-4517) | Stress test crash: impala::LlvmCodeGen::FinalizeModule |  Blocker | Backend | Taras Bobrovytsky | Michael Ho |
| [IMPALA-4929](https://issues.apache.org/jira/browse/IMPALA-4929) | Unsafe concurrent access to LlvmCodeGen::fn\_refs\_map\_ can lead to unresolved symbols in LLVM |  Blocker | Backend | fishing | Michael Ho |
| [IMPALA-4778](https://issues.apache.org/jira/browse/IMPALA-4778) | Document web page non-responsivness while planning |  Major | Docs | Jim Apple | John Russell |
| [IMPALA-4390](https://issues.apache.org/jira/browse/IMPALA-4390) | Syntax for ALTER TABLE ADD PARTITION is not complete |  Major | Docs | Dimitris Tsirogiannis | John Russell |
| [IMPALA-5325](https://issues.apache.org/jira/browse/IMPALA-5325) | Inconsistent updates to HdfsTable#totalHdfsBytes\_ and HdfsTable#numHdfsFiles\_ on Catalog server |  Major | Catalog | bharath v | bharath v |
| [IMPALA-4587](https://issues.apache.org/jira/browse/IMPALA-4587) | RowsProduced showing always 0 for Coordinator in profile |  Major | Backend | Andre Araujo |  |
| [IMPALA-2634](https://issues.apache.org/jira/browse/IMPALA-2634) | show create table does not include partitioning info for kudu tables |  Major | Frontend | Mike Percy |  |
| [IMPALA-5334](https://issues.apache.org/jira/browse/IMPALA-5334) | Kudu docs should note DML stmts currently ignore errors |  Major | Docs | Matthew Jacobs | John Russell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-4009](https://issues.apache.org/jira/browse/IMPALA-4009) | document setting up oracle for use as qgen reference database |  Major | Docs | Michael Brown | Michael Brown |
| [IMPALA-3204](https://issues.apache.org/jira/browse/IMPALA-3204) | Integrate buffer pool reservations with memtrackers |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4146](https://issues.apache.org/jira/browse/IMPALA-4146) | Basic load gen script for admission control |  Major | Infrastructure | Harrison Sheinblatt | Harrison Sheinblatt |
| [IMPALA-4171](https://issues.apache.org/jira/browse/IMPALA-4171) | Remove testdata/udfs/impala-hive-udfs.jar |  Blocker | Infrastructure | Jim Apple | Jim Apple |
| [IMPALA-3567](https://issues.apache.org/jira/browse/IMPALA-3567) | Factor out join build-side |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4008](https://issues.apache.org/jira/browse/IMPALA-4008) | Generate codegen module without operator/query-specific constants |  Major | Backend | Tim Armstrong | Michael Ho |
| [IMPALA-3201](https://issues.apache.org/jira/browse/IMPALA-3201) | Implement basic in-memory buffer pool |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3786](https://issues.apache.org/jira/browse/IMPALA-3786) | Replace "cloudera"  in code and package names with "impala" |  Minor | Infrastructure | Jim Apple | Thomas Tauber-Marshall |
| [IMPALA-4270](https://issues.apache.org/jira/browse/IMPALA-4270) | Planner should disallow queries with mt\_dop \> 0 that are not executable. |  Major | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-4176](https://issues.apache.org/jira/browse/IMPALA-4176) | Add batched bit-unpacking utility functions |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3720](https://issues.apache.org/jira/browse/IMPALA-3720) | Refactor CREATE TABLE grammar rules in prep for PRIMARY KEY |  Blocker | Frontend | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-3721](https://issues.apache.org/jira/browse/IMPALA-3721) | Simplify creating external Kudu tables and add DROP DATABASE CASCADE |  Blocker | Frontend | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-3723](https://issues.apache.org/jira/browse/IMPALA-3723) | Remove DDL delegate from the catalog for processing DDL statements on Kudu tables |  Blocker | Catalog | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-2848](https://issues.apache.org/jira/browse/IMPALA-2848) | Simplify creation of a new Kudu table |  Blocker | Frontend | casey | Dimitris Tsirogiannis |
| [IMPALA-3156](https://issues.apache.org/jira/browse/IMPALA-3156) | Analyze the passed columns in DistributeComponent.java |  Critical | Frontend | David Alves | Dimitris Tsirogiannis |
| [IMPALA-4023](https://issues.apache.org/jira/browse/IMPALA-4023) | Don't attach BufferedTupleStreams to row batches |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4340](https://issues.apache.org/jira/browse/IMPALA-4340) | validate postgres 9.5 for random query generator reference database |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-4352](https://issues.apache.org/jira/browse/IMPALA-4352) | random query generator: add attributes to Table, Column for tracking of primary keys |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-4338](https://issues.apache.org/jira/browse/IMPALA-4338) | create kudu tables in postgres with primary keys |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-4343](https://issues.apache.org/jira/browse/IMPALA-4343) | qgen: model INSERT query |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-4354](https://issues.apache.org/jira/browse/IMPALA-4354) | qgen: implement SqlWriter methods for INSERT statements |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-4577](https://issues.apache.org/jira/browse/IMPALA-4577) | Adjust maximum size of row batch queue for non-Parquet scans with MT\_DOP\>0. |  Critical | Backend | Alexander Behm | Alexander Behm |
| [IMPALA-4572](https://issues.apache.org/jira/browse/IMPALA-4572) | COMPUTE STATS on Parquet tables uses MT\_DOP=4 by default |  Critical | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-3583](https://issues.apache.org/jira/browse/IMPALA-3583) | Optimize HdfsTable::perPartitionFileDescMap\_ to reduce memory usage |  Minor | Catalog | Juan Yu |  |
| [IMPALA-3229](https://issues.apache.org/jira/browse/IMPALA-3229) | Allow all contributors (or at least committers?) to run GVM |  Minor | Infrastructure | Henry Robinson | Taras Bobrovytsky |
| [IMPALA-3653](https://issues.apache.org/jira/browse/IMPALA-3653) | Consider using listLocatedStatus() API to get filestatus and blocklocations in one RPC call |  Minor | Catalog | Juan Yu | bharath v |
| [IMPALA-4931](https://issues.apache.org/jira/browse/IMPALA-4931) | Update squeasel to include patch to disable SSL init |  Major | Infrastructure | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4933](https://issues.apache.org/jira/browse/IMPALA-4933) | Force thrift to initialize SSL on process startup |  Critical | Security | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4934](https://issues.apache.org/jira/browse/IMPALA-4934) | Disable Kudu and Squeasel OpenSSL initialization |  Critical | Security | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4406](https://issues.apache.org/jira/browse/IMPALA-4406) | Ensure Impala follows ASF crypto regulations |  Critical | Infrastructure | Jim Apple | Sailesh Mukil |
| [IMPALA-4971](https://issues.apache.org/jira/browse/IMPALA-4971) | Cluster testing for Kudu auth |  Blocker | Infrastructure | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-5373](https://issues.apache.org/jira/browse/IMPALA-5373) | Document SHOW RANGE PARTITIONS syntax |  Major | Docs | John Russell | John Russell |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2755](https://issues.apache.org/jira/browse/IMPALA-2755) | Clean up memory management in backend |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4112](https://issues.apache.org/jira/browse/IMPALA-4112) | RQG-on-HIve: Remove IS [NOT] DISTINCT FROM clauses from Hive generated queries |  Major | Infrastructure | Sahil Takiar | Sahil Takiar |
| [IMPALA-3705](https://issues.apache.org/jira/browse/IMPALA-3705) | Data loading for Kudu tables |  Blocker | Infrastructure | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4109](https://issues.apache.org/jira/browse/IMPALA-4109) | "Support" for Kudu in Impala on all platforms supported by Kudu |  Blocker | Infrastructure | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4188](https://issues.apache.org/jira/browse/IMPALA-4188) | run query generator with KUDU\_IS\_SUPPORTED=true |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-3739](https://issues.apache.org/jira/browse/IMPALA-3739) | Initial stress tests on Kudu |  Blocker | Infrastructure | Matthew Jacobs | Dimitris Tsirogiannis |
| [IMPALA-4380](https://issues.apache.org/jira/browse/IMPALA-4380) | Remove "cloudera" from bin/generate\_minidump\_collection\_testdata.py |  Minor | Infrastructure | Jim Apple | Lars Volker |
| [IMPALA-4427](https://issues.apache.org/jira/browse/IMPALA-4427) | remove mention of cloudera/impala docker image from code base |  Minor | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-3771](https://issues.apache.org/jira/browse/IMPALA-3771) | Expose kudu client timeouts or set to more conservative values |  Critical | Frontend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4466](https://issues.apache.org/jira/browse/IMPALA-4466) | Kudu DML functional tests |  Critical | Infrastructure | Matthew Jacobs | Thomas Tauber-Marshall |
| [IMPALA-4283](https://issues.apache.org/jira/browse/IMPALA-4283) | Ensure Kudu-specific DML audit & lineage behavior |  Blocker | Catalog | Matthew Jacobs | Dimitris Tsirogiannis |
| [IMPALA-4477](https://issues.apache.org/jira/browse/IMPALA-4477) | Update Kudu toolchain build and bump client version |  Critical | Infrastructure | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4467](https://issues.apache.org/jira/browse/IMPALA-4467) | Kudu stress testing |  Blocker | Infrastructure | Matthew Jacobs | Taras Bobrovytsky |
| [IMPALA-4328](https://issues.apache.org/jira/browse/IMPALA-4328) | Remove "cloudera" from bin/generate\_minidump\_collection\_testdata.py |  Major | Infrastructure | Jim Apple | Lars Volker |


