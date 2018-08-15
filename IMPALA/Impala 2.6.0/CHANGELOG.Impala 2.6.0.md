
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

## Release Impala 2.6.0 - Unreleased (as of 2018-08-15)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2835](https://issues.apache.org/jira/browse/IMPALA-2835) | Hive/Impala inconsistency with parquet.column.index.access=false |  Critical | Backend | oleksii iepishkin | Skye Wanderman-Milne |
| [IMPALA-1878](https://issues.apache.org/jira/browse/IMPALA-1878) | Support INSERT and LOAD DATA to S3 |  Critical | Backend | Dan Hecht | Sailesh Mukil |
| [IMPALA-2686](https://issues.apache.org/jira/browse/IMPALA-2686) | Implement google BreakPad based crash handler for impala. |  Major | Backend | Mala Chikka Kempanna | Lars Volker |
| [IMPALA-3490](https://issues.apache.org/jira/browse/IMPALA-3490) | Add Flag to Cap Maximum Minidump Size |  Critical | Backend | Lars Volker | Lars Volker |
| [IMPALA-3572](https://issues.apache.org/jira/browse/IMPALA-3572) | Generate code coverage report from FE unit tests. |  Major | Infrastructure | Alexander Behm | Alexander Behm |
| [IMPALA-1740](https://issues.apache.org/jira/browse/IMPALA-1740) | Impala cannot deal with skip.header.line.count |  Major | Backend | Tomoaki Yano | Lars Volker |
| [IMPALA-2107](https://issues.apache.org/jira/browse/IMPALA-2107) | Add Base64 encoder/decoder UDF to Impala distribution |  Critical | Docs, Frontend | Jeff Hammerbacher | John Russell |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-3136](https://issues.apache.org/jira/browse/IMPALA-3136) | Replace impala's SpinLock with one based on gutil spinlock |  Critical | Backend | Dan Hecht | Dan Hecht |
| [IMPALA-3114](https://issues.apache.org/jira/browse/IMPALA-3114) | Add a pause monitor for impala processes. |  Major | Backend | bharath v | bharath v |
| [IMPALA-3182](https://issues.apache.org/jira/browse/IMPALA-3182) | Reenable -Werror for kudu files |  Major | Backend | David Alves | casey |
| [IMPALA-2455](https://issues.apache.org/jira/browse/IMPALA-2455) | Enable the post-build step 'delete workspace' after a successful build. |  Major | Infrastructure | Ishaan Joshi | Michael Brown |
| [IMPALA-3270](https://issues.apache.org/jira/browse/IMPALA-3270) | Better error message when unsupported data type is encountered |  Critical | Frontend | Marcell Szabo | Taras Bobrovytsky |
| [IMPALA-3077](https://issues.apache.org/jira/browse/IMPALA-3077) | Runtime filters should be retained even when spilling |  Major | Backend | Tim Armstrong | Henry Robinson |
| [IMPALA-2784](https://issues.apache.org/jira/browse/IMPALA-2784) | Codegen HashTableCtx::Equals & EvalRow for Joins |  Critical | Backend | Mostafa Mokhtar | Skye Wanderman-Milne |
| [IMPALA-3007](https://issues.apache.org/jira/browse/IMPALA-3007) | Use planner cardinality estimates when sizing bloom filters |  Critical | Backend | Mostafa Mokhtar | Henry Robinson |
| [IMPALA-2736](https://issues.apache.org/jira/browse/IMPALA-2736) | Column-wise value materialisation in Parquet scanner |  Critical | Backend | Tim Armstrong | Alexander Behm |
| [IMPALA-3384](https://issues.apache.org/jira/browse/IMPALA-3384) | Add flags to buildall.sh to build BE and / or FE only. |  Major | Infrastructure | Henry Robinson | Misha Dmitriev |
| [IMPALA-3306](https://issues.apache.org/jira/browse/IMPALA-3306) | Add command-line flags to set S3 access configurations |  Major | Backend | Henry Robinson | Sailesh Mukil |
| [IMPALA-2198](https://issues.apache.org/jira/browse/IMPALA-2198) | Differentiate queries in exceptional states in web UI |  Major | Backend | Matthew Jacobs | Thomas Tauber-Marshall |
| [IMPALA-2345](https://issues.apache.org/jira/browse/IMPALA-2345) | Add test coverage for VARCHAR in sorter |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3460](https://issues.apache.org/jira/browse/IMPALA-3460) | test\_grant\_revoke: remove S3-specific workload |  Minor | Infrastructure | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3397](https://issues.apache.org/jira/browse/IMPALA-3397) | Support SOURCE \<file\> in shell |  Major | Clients | Henry Robinson | Henry Robinson |
| [IMPALA-1583](https://issues.apache.org/jira/browse/IMPALA-1583) | Simplify PartitionedHashJoinNode::ProcessProbeBatch |  Major | Backend | Ippokratis Pandis | Michael Ho |
| [IMPALA-3452](https://issues.apache.org/jira/browse/IMPALA-3452) | S3: Disable Impala staging for INSERTs via flag for speedup |  Major | Backend | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-2808](https://issues.apache.org/jira/browse/IMPALA-2808) | BE test output is not archived |  Major | Infrastructure | Skye Wanderman-Milne | Alexander Behm |
| [IMPALA-2660](https://issues.apache.org/jira/browse/IMPALA-2660) | Respect auth\_to\_local rules from hdfs configs (core-site.xml) |  Critical | Security | Eric Lin | bharath v |
| [IMPALA-3166](https://issues.apache.org/jira/browse/IMPALA-3166) | Perf support for codegen'd code |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3480](https://issues.apache.org/jira/browse/IMPALA-3480) | Add query options to set min / max filter sizes |  Critical | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-3469](https://issues.apache.org/jira/browse/IMPALA-3469) | Increase runtime filter minimum size to 1MB |  Major | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-3333](https://issues.apache.org/jira/browse/IMPALA-3333) | Enable global runtime filtering by default |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-3459](https://issues.apache.org/jira/browse/IMPALA-3459) | Add test for DROP TABLE PURGE for S3 |  Major | Infrastructure | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3232](https://issues.apache.org/jira/browse/IMPALA-3232) | Allow table refs in subqueries to refer to WITH-clause view in parent block. |  Major | Frontend | Jeff Tromonda | Taras Bobrovytsky |
| [IMPALA-3489](https://issues.apache.org/jira/browse/IMPALA-3489) | Write Script to Extract Breakpad Symbols From Binaries and RPMs |  Critical | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-3168](https://issues.apache.org/jira/browse/IMPALA-3168) | Inject HashTable constants into generated code |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3080](https://issues.apache.org/jira/browse/IMPALA-3080) | Slow performance on kerberos cluster - Possible inefficient implementation of TSaslTransport::write |  Major | Perf Investigation | Anuj Phadke | Mostafa Mokhtar |
| [IMPALA-3286](https://issues.apache.org/jira/browse/IMPALA-3286) | Add software prefetching to hash table build and probe |  Critical | Backend | Mostafa Mokhtar | Michael Ho |
| [IMPALA-3579](https://issues.apache.org/jira/browse/IMPALA-3579) | Add option to strictly handle numeric overflow in text parsing |  Major | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-3369](https://issues.apache.org/jira/browse/IMPALA-3369) | Add a variant of alter table to manually add column stats |  Major | Catalog, Frontend | bharath v | Alexander Behm |
| [IMPALA-3581](https://issues.apache.org/jira/browse/IMPALA-3581) | Change Default Minidump Location to /var/log/$daemon |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-2336](https://issues.apache.org/jira/browse/IMPALA-2336) | Failure to execute SQL scripts with trailing comments (including comment-only scripts) |  Major | Clients | Xiaomin Zhang |  |
| [IMPALA-3486](https://issues.apache.org/jira/browse/IMPALA-3486) | Add tests for S3\<-\>HDFS multiple filesystem use cases |  Major | Backend | Henry Robinson | Sailesh Mukil |
| [IMPALA-2918](https://issues.apache.org/jira/browse/IMPALA-2918) | Increase unit test coverage of simple-scheduler.cc |  Minor | Backend | Lars Volker | Lars Volker |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2728](https://issues.apache.org/jira/browse/IMPALA-2728) | TestTpchMemLimitError.test\_low\_mem\_limit\_q21 exceeds mem\_limit of 700M |  Critical | Backend | Michael Ho | Tim Armstrong |
| [IMPALA-2892](https://issues.apache.org/jira/browse/IMPALA-2892) | buffered-tuple-stream-ir.cc is not included in IR |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-561](https://issues.apache.org/jira/browse/IMPALA-561) | Executing some queries with NUM\_NODES=1 results in Failed DCHECK in thread-resource-mgr.cc:91] Check failed: thread\_available\_fn\_ == \_\_null \|\| fn == \_\_null |  Major | Backend | Lenni Kuff | Michael Ho |
| [IMPALA-3132](https://issues.apache.org/jira/browse/IMPALA-3132) | MemTracker DCHECK failure in BE tests |  Critical | Backend | Matthew Jacobs | Skye Wanderman-Milne |
| [IMPALA-3183](https://issues.apache.org/jira/browse/IMPALA-3183) | ASAN compile fails: dynamic\_annotations.c: error: invalid argument '-std=c++14' not allowed with 'C/ObjC' |  Blocker | Backend | Dan Hecht | Dan Hecht |
| [IMPALA-3139](https://issues.apache.org/jira/browse/IMPALA-3139) | Drop table if exists "tablename"  deletes the view with the same name |  Major | Frontend | Divya Krishnan | bharath v |
| [IMPALA-3162](https://issues.apache.org/jira/browse/IMPALA-3162) | Upgrade gperfutils |  Critical | Backend | Dan Hecht | Matthew Jacobs |
| [IMPALA-1822](https://issues.apache.org/jira/browse/IMPALA-1822) | impala should cleanup the query profile log |  Major | Backend | Chris Leroy | Thomas Tauber-Marshall |
| [IMPALA-3191](https://issues.apache.org/jira/browse/IMPALA-3191) | toolchain cmake hangs on sles12 |  Blocker | Infrastructure | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-3151](https://issues.apache.org/jira/browse/IMPALA-3151) | Impala crash for avro table when casting to char data type |  Blocker | Backend | Eric Lin | Anuj Phadke |
| [IMPALA-2738](https://issues.apache.org/jira/browse/IMPALA-2738) | Hive/Impala inconsistency in GRANT syntax |  Critical | Frontend | Mariano Dominguez | Thomas Tauber-Marshall |
| [IMPALA-3195](https://issues.apache.org/jira/browse/IMPALA-3195) | test\_annotate\_utf8\_option failure: copyToLocal: \`/test-warehouse/parquet\_annotate\_utf8\_test\_3822/\*.parq': No such file or directory |  Blocker | Infrastructure | Dan Hecht | Skye Wanderman-Milne |
| [IMPALA-3081](https://issues.apache.org/jira/browse/IMPALA-3081) | TestWideRow.test\_wide\_row fails with "Memory limit exceeded" |  Critical | Backend | Alexander Behm | Skye Wanderman-Milne |
| [IMPALA-3220](https://issues.apache.org/jira/browse/IMPALA-3220) | Hit DCHECK when logging after scanner error |  Critical | Backend | Tim Armstrong | Michael Ho |
| [IMPALA-3141](https://issues.apache.org/jira/browse/IMPALA-3141) | Scan nodes wait till RUNTIME\_FILTER\_WAIT\_TIME\_MS expires even if the filter is cancelled due to "FP Rate Too High" |  Critical | Backend | Mostafa Mokhtar | Henry Robinson |
| [IMPALA-3243](https://issues.apache.org/jira/browse/IMPALA-3243) | RHEL 5: sysinfo.cc:150] Check failed: SlurpSmallTextFile("/sys/devices/system/cpu/present" |  Blocker | Backend | casey | Dan Hecht |
| [IMPALA-3246](https://issues.apache.org/jira/browse/IMPALA-3246) | Failures loading TPC-DS in Jenkins runs on EC2 machines. |  Blocker | Infrastructure | Alexander Behm | Alexander Behm |
| [IMPALA-2069](https://issues.apache.org/jira/browse/IMPALA-2069) | Cannot write string column to parquet with UTF-8 annotation |  Critical | Backend | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-3184](https://issues.apache.org/jira/browse/IMPALA-3184) | Native toolchain fails to download gcc dependencies |  Blocker | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-3072](https://issues.apache.org/jira/browse/IMPALA-3072) | Allow frame embedding for webserver pages |  Minor | Clients | Ippolitov Igor | Ippolitov Igor |
| [IMPALA-2650](https://issues.apache.org/jira/browse/IMPALA-2650) | tests/query\_test/test\_udfs.py test\_udf\_update\_via\_create must clean up state |  Critical | Infrastructure | Harrison Sheinblatt | Michael Brown |
| [IMPALA-3251](https://issues.apache.org/jira/browse/IMPALA-3251) | query\_test.test\_runtime\_filters.TestRuntimeFilters.test\_wait\_time breaks non-partitions aggs and joins build |  Blocker | Infrastructure | Dimitris Tsirogiannis | Henry Robinson |
| [IMPALA-3194](https://issues.apache.org/jira/browse/IMPALA-3194) | Unblock queries on scalar columns in RC files with complex types |  Blocker | Frontend | bharath v | bharath v |
| [IMPALA-3258](https://issues.apache.org/jira/browse/IMPALA-3258) | Unblock queries on scalar columns in SequenceFiles with complex types |  Blocker | Frontend | David Karoly | bharath v |
| [IMPALA-3283](https://issues.apache.org/jira/browse/IMPALA-3283) | TestRuntimeFilters::test\_basic\_filters and test\_row\_filters tests fail in local-filesystem build |  Blocker | Infrastructure | Dimitris Tsirogiannis | Henry Robinson |
| [IMPALA-3301](https://issues.apache.org/jira/browse/IMPALA-3301) | test\_scanners.py::TestParquet::test\_resolution\_by\_name fails on legacy join and agg nodes |  Blocker | Infrastructure | Alexander Behm | Skye Wanderman-Milne |
| [IMPALA-2645](https://issues.apache.org/jira/browse/IMPALA-2645) | Crash: impala::ThriftClientImpl::Open |  Critical | Clients | František Dvořák | František Dvořák |
| [IMPALA-3309](https://issues.apache.org/jira/browse/IMPALA-3309) | Remove reference to Hive JDBC version from pom.xml |  Major | Infrastructure | Henry Robinson | Charlie Helin |
| [IMPALA-3269](https://issues.apache.org/jira/browse/IMPALA-3269) | CTAS with subquery throws AuthzException |  Blocker | Frontend | bharath v | bharath v |
| [IMPALA-3285](https://issues.apache.org/jira/browse/IMPALA-3285) | Debug webpage ASAN crash |  Blocker | Clients | Henry Robinson | Henry Robinson |
| [IMPALA-3328](https://issues.apache.org/jira/browse/IMPALA-3328) | ASAN failure: test\_low\_mem\_limit\_q9: memory limit exceeded |  Blocker | Backend | Michael Brown | Tim Armstrong |
| [IMPALA-2995](https://issues.apache.org/jira/browse/IMPALA-2995) | Exceptions in BE tests: expr-test |  Blocker | Backend | Alexander Behm | Henry Robinson |
| [IMPALA-3334](https://issues.apache.org/jira/browse/IMPALA-3334) | Query option optimize\_partition\_key\_scans should work with bool value |  Major | Backend | Michael Ho | Michael Ho |
| [IMPALA-3105](https://issues.apache.org/jira/browse/IMPALA-3105) | RowBatch::MaxTupleBufferSize() calculation incorrect, may lead to memory corruption |  Blocker | Backend | casey | Tim Armstrong |
| [IMPALA-3326](https://issues.apache.org/jira/browse/IMPALA-3326) | test\_show\_create\_table failed, unable to find its DB |  Blocker | Infrastructure | Jim Apple | Harrison Sheinblatt |
| [IMPALA-3038](https://issues.apache.org/jira/browse/IMPALA-3038) | Add multistream gzip test coverage |  Critical | Backend | Juan Yu | Juan Yu |
| [IMPALA-3236](https://issues.apache.org/jira/browse/IMPALA-3236) | query\_test.test\_runtime\_filters.TestRuntimeFilters.test\_basic\_filters breaks ASAN build |  Blocker | Infrastructure | Dimitris Tsirogiannis | Henry Robinson |
| [IMPALA-3367](https://issues.apache.org/jira/browse/IMPALA-3367) | test\_runtime\_filters is susceptible to IMPALA-2479 |  Blocker | Infrastructure | Henry Robinson | Henry Robinson |
| [IMPALA-3237](https://issues.apache.org/jira/browse/IMPALA-3237) | Crash on inserting into table with binary and parquet |  Blocker | Frontend | Balazs Jeszenszky | Taras Bobrovytsky |
| [IMPALA-3317](https://issues.apache.org/jira/browse/IMPALA-3317) | Stress test failure: sorter.cc:745] Check failed: i == 0 (1 vs. 0) |  Blocker | Backend | Skye Wanderman-Milne | Tim Armstrong |
| [IMPALA-2276](https://issues.apache.org/jira/browse/IMPALA-2276) | The Isilon, S3, and localFS builds should not attempt to do a full data load if presented with a stale snapshot. |  Major | Infrastructure | Ishaan Joshi | Harrison Sheinblatt |
| [IMPALA-3327](https://issues.apache.org/jira/browse/IMPALA-3327) | failure testing test\_metrics\_are\_zero failure |  Blocker | Infrastructure | Jim Apple | Lars Volker |
| [IMPALA-2076](https://issues.apache.org/jira/browse/IMPALA-2076) | ExecSummary does not report Network Transmit time |  Major | Distributed Exec | Alan Choi | Juan Yu |
| [IMPALA-3395](https://issues.apache.org/jira/browse/IMPALA-3395) | Old HJ table filters use wrong expr type |  Blocker | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-3391](https://issues.apache.org/jira/browse/IMPALA-3391) | DCHECK\_EQ(ht\_ctx\_-\>level(), 0) triggered in PartitionedHashJoinNode::ProcessBuildBatch() |  Blocker | Backend | Lars Volker | Henry Robinson |
| [IMPALA-3115](https://issues.apache.org/jira/browse/IMPALA-3115) | LLVM fails to hoist stores out of loops in codegened code |  Major | Backend | Tim Armstrong | Michael Ho |
| [IMPALA-3414](https://issues.apache.org/jira/browse/IMPALA-3414) | Build timed out after 60 minutes during functional-query data load |  Blocker | Infrastructure | Lars Volker | Michael Brown |
| [IMPALA-1920](https://issues.apache.org/jira/browse/IMPALA-1920) | parse\_url() behaves incorrectly when URL contains '@' in query portion |  Major | Backend | Charlie Flowers | Lars Volker |
| [IMPALA-3374](https://issues.apache.org/jira/browse/IMPALA-3374) | Verification failure for IR udf should not cause crash |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-1850](https://issues.apache.org/jira/browse/IMPALA-1850) | allow fs.defaultFS to be set to a non-HDFS filesystem |  Major | Frontend | Dan Hecht | Anuj Phadke |
| [IMPALA-3354](https://issues.apache.org/jira/browse/IMPALA-3354) | Sorter can overflow stack on large sorts |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3378](https://issues.apache.org/jira/browse/IMPALA-3378) | HiveUdfCall::Open() produces unsynchronized access to JniUtil::global\_refs\_ vector |  Blocker | Backend | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-3379](https://issues.apache.org/jira/browse/IMPALA-3379) | HBaseTableWriter::CreatePutList() produces unsynchronized access to JniUtil::global\_refs\_ vector |  Blocker | Backend | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-3329](https://issues.apache.org/jira/browse/IMPALA-3329) | log rotation policies can rotate out logs during test runs |  Critical | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-3427](https://issues.apache.org/jira/browse/IMPALA-3427) | test\_insert\_wide\_table fails: AlreadyExistsException: Table insert\_widetable already exists |  Blocker | Infrastructure | Lars Volker | Michael Brown |
| [IMPALA-3426](https://issues.apache.org/jira/browse/IMPALA-3426) | GVM-race broke trunk build (partitioned-hash-join-node.cc:1836:30: error: ‘class impala::LlvmCodeGen’ has no member named ‘OptimizeFunctionWithExprs’) |  Blocker | Backend | Lars Volker | Lars Volker |
| [IMPALA-3383](https://issues.apache.org/jira/browse/IMPALA-3383) | test\_redaction.test\_very\_verbose\_logging always leaves corefiles behind |  Major | Infrastructure | Henry Robinson | Tim Armstrong |
| [IMPALA-3245](https://issues.apache.org/jira/browse/IMPALA-3245) | Runtime filter DCHECK exec\_complete\_barrier\_.get() != \_\_null Filters received before fragments started! |  Critical | Backend | Mostafa Mokhtar | Henry Robinson |
| [IMPALA-3305](https://issues.apache.org/jira/browse/IMPALA-3305) | Filter locality not correctly set with NUM\_NODES=1 |  Minor | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-3412](https://issues.apache.org/jira/browse/IMPALA-3412) | Hit codegen DCHECK when ordering by CHAR(n) expression |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3433](https://issues.apache.org/jira/browse/IMPALA-3433) | TestExchangeDelays.test\_exchange\_large\_delay flaky failures during cluster startup |  Blocker | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-3420](https://issues.apache.org/jira/browse/IMPALA-3420) | Toolchain Thrift should be at -p4, not -p2 |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-3458](https://issues.apache.org/jira/browse/IMPALA-3458) | Test failing: insert not supported for compressed text |  Blocker | Infrastructure | Tim Armstrong | Lars Volker |
| [IMPALA-3463](https://issues.apache.org/jira/browse/IMPALA-3463) | TestTextScanRangeLengths::test\_text\_scanner\_with\_header failing on s3 |  Blocker | Backend | Tim Armstrong | Sailesh Mukil |
| [IMPALA-3425](https://issues.apache.org/jira/browse/IMPALA-3425) | S3 : Parquet file size not honored when inserting in S3 target |  Critical | Backend | Mostafa Mokhtar | Sailesh Mukil |
| [IMPALA-3174](https://issues.apache.org/jira/browse/IMPALA-3174) | test\_insert\_behaviour.test\_insert\_select\_with\_empty\_resultset has an incorrect test case |  Major | Infrastructure | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3468](https://issues.apache.org/jira/browse/IMPALA-3468) | DelimitedTextParser::FindFirstInstance() may not find '\\r' characters |  Major | Backend | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-3385](https://issues.apache.org/jira/browse/IMPALA-3385) | RuntimeState::error\_log\_ crashes |  Blocker | Backend | Huaisi Xu | Huaisi Xu |
| [IMPALA-3368](https://issues.apache.org/jira/browse/IMPALA-3368) | custom\_cluster/test\_scratch\_disk.py is race-prone |  Blocker | Infrastructure | Jim Apple | Taras Bobrovytsky |
| [IMPALA-3462](https://issues.apache.org/jira/browse/IMPALA-3462) | Non-partitioned aggs and joins builds broken |  Blocker | Backend | Tim Armstrong | Henry Robinson |
| [IMPALA-2991](https://issues.apache.org/jira/browse/IMPALA-2991) | Many tests in test\_spilling don't spill |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3472](https://issues.apache.org/jira/browse/IMPALA-3472) | hdfs-util-test failing on local FS |  Blocker | Backend | Tim Armstrong | Sailesh Mukil |
| [IMPALA-3337](https://issues.apache.org/jira/browse/IMPALA-3337) | Unexpected cancelled warning |  Major | Backend | Taras Bobrovytsky | Dan Hecht |
| [IMPALA-3133](https://issues.apache.org/jira/browse/IMPALA-3133) | Unexpected privileges in show output |  Major | Frontend | Thomas Tauber-Marshall | Dimitris Tsirogiannis |
| [IMPALA-3488](https://issues.apache.org/jira/browse/IMPALA-3488) | test\_ddl.py failure on LocalFS run |  Blocker | Infrastructure | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3123](https://issues.apache.org/jira/browse/IMPALA-3123) | StringToIntInternal() callers should check ParseResult for overflow |  Major | Backend | Huaisi Xu | Anuj Phadke |
| [IMPALA-3500](https://issues.apache.org/jira/browse/IMPALA-3500) | GetEffectiveUser() segfault with YARN integration enabled |  Major | Backend | Mark | Matthew Jacobs |
| [IMPALA-3517](https://issues.apache.org/jira/browse/IMPALA-3517) | S3: Get rid of hdfsDelete() warning message |  Major | Backend | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3502](https://issues.apache.org/jira/browse/IMPALA-3502) | impala-cdh5-trunk-exhaustive-rhel7 test failures and crashes |  Blocker | Backend | Skye Wanderman-Milne | Dimitris Tsirogiannis |
| [IMPALA-3527](https://issues.apache.org/jira/browse/IMPALA-3527) | Codegen'd ProcessProbeBatch in PHJ is unused |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3528](https://issues.apache.org/jira/browse/IMPALA-3528) | Memory of scratch batch should be transferred when closing a Parquet scanner thread. |  Blocker | Backend | Alexander Behm | Alexander Behm |
| [IMPALA-3311](https://issues.apache.org/jira/browse/IMPALA-3311) | String data coming out of agg can be corrupted by blocking operators |  Blocker | Backend | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-1578](https://issues.apache.org/jira/browse/IMPALA-1578) | Impala incorrectly handles text data when the new line character \\n\\r is split between different HDFS block |  Critical | Backend | Simone | Skye Wanderman-Milne |
| [IMPALA-3466](https://issues.apache.org/jira/browse/IMPALA-3466) | TPC-DS regression in several queries due bloom filters arriving late |  Major | Backend | Mostafa Mokhtar | Henry Robinson |
| [IMPALA-3019](https://issues.apache.org/jira/browse/IMPALA-3019) | next\_nonlocal\_backend\_entry\_ is reset on empty Statestore messages |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-3122](https://issues.apache.org/jira/browse/IMPALA-3122) | is\_cached and is\_remote not set correctly by scheduler |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-3534](https://issues.apache.org/jira/browse/IMPALA-3534) | ASAN should allow overriding CMAKE\_CXX\_COMPILER |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-3495](https://issues.apache.org/jira/browse/IMPALA-3495) | Stress test: codegened spilling joins return incorrect results |  Blocker | Backend | Michael Brown | Tim Armstrong |
| [IMPALA-3539](https://issues.apache.org/jira/browse/IMPALA-3539) | Stress test hit DCHECK in Parquet scanner hdfs-parquet-scanner.cc:1587] Check failed: batch\_size \<= cache\_size\_ (1024 vs. 0) |  Blocker | Backend | Tim Armstrong | Alexander Behm |
| [IMPALA-3533](https://issues.apache.org/jira/browse/IMPALA-3533) | Stack buffer overflow in CodegenMaterializeExprs |  Blocker | Backend | Tim Armstrong | Skye Wanderman-Milne |
| [IMPALA-3535](https://issues.apache.org/jira/browse/IMPALA-3535) | Parsing pool default query options should ignore invalid opts |  Major | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-1928](https://issues.apache.org/jira/browse/IMPALA-1928) | Impala ODBC bad performance with Kerberos mechanism |  Major | Perf Investigation | Jonathan L. | Mostafa Mokhtar |
| [IMPALA-3510](https://issues.apache.org/jira/browse/IMPALA-3510) | qgen: Check failed: row\_idx \< capacity\_ (0 vs. 0) |  Blocker | Backend | Michael Brown | Michael Ho |
| [IMPALA-3532](https://issues.apache.org/jira/browse/IMPALA-3532) | S3: test\_truncate\_cleans\_hdfs\_files fails because we skip INSERT staging |  Blocker | Infrastructure | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3549](https://issues.apache.org/jira/browse/IMPALA-3549) | Cleanup the output of runtime filters in the runtime profile |  Major | Backend | Dimitris Tsirogiannis | Henry Robinson |
| [IMPALA-3556](https://issues.apache.org/jira/browse/IMPALA-3556) | Stress tests RANDOM\_DB\_NAME parameter affects queries but not data generation |  Major | Infrastructure | Tim Armstrong | Michael Brown |
| [IMPALA-3332](https://issues.apache.org/jira/browse/IMPALA-3332) | Sorter does not do query maintenance correctly |  Blocker | Backend | Tim Armstrong | Michael Ho |
| [IMPALA-3546](https://issues.apache.org/jira/browse/IMPALA-3546) | impalad fails to start on rhel5 ec2: Check failed: cache\_line\_sizes\_[0] == 64 (0 vs. 64) |  Blocker | Backend | casey | Tim Armstrong |
| [IMPALA-2021](https://issues.apache.org/jira/browse/IMPALA-2021) | S3: Flaky tests: impala-s3 job sometimes encounters I/O error 255 |  Major | Infrastructure | Dimitris Tsirogiannis | Sailesh Mukil |
| [IMPALA-3569](https://issues.apache.org/jira/browse/IMPALA-3569) | TimezoneDatabase construction can silently fail |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3542](https://issues.apache.org/jira/browse/IMPALA-3542) | do\_as\_user empty check missing |  Critical | Backend | Alex Leblang | Thomas Tauber-Marshall |
| [IMPALA-3529](https://issues.apache.org/jira/browse/IMPALA-3529) | Package the minidump collection script along with Impala. |  Major | Infrastructure | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-3242](https://issues.apache.org/jira/browse/IMPALA-3242) | a single query can hit memory limit check tens of times. logs are flooded with similar but not so helpful info |  Critical | Backend | Huaisi Xu | Michael Ho |
| [IMPALA-3439](https://issues.apache.org/jira/browse/IMPALA-3439) | Error choosing function signature in ROUND() |  Major | Frontend | casey | Alexander Behm |
| [IMPALA-3537](https://issues.apache.org/jira/browse/IMPALA-3537) | Impala uses \_c# aliases for functions when a query is run against a view |  Major | Frontend | Matyas Orhidi | Alexander Behm |
| [IMPALA-3574](https://issues.apache.org/jira/browse/IMPALA-3574) | TestQueries.test\_inline\_view failure on cdh5-trunk-exhaustive |  Blocker | Infrastructure | Sailesh Mukil | Dimitris Tsirogiannis |
| [IMPALA-3143](https://issues.apache.org/jira/browse/IMPALA-3143) | False warning on Impala permission check if Impala belongs to supergroup |  Critical | Frontend | Juan Yu | Dimitris Tsirogiannis |
| [IMPALA-3554](https://issues.apache.org/jira/browse/IMPALA-3554) | Use catalog's principal to talk to sentry in kerberized Impala clusters |  Minor | Catalog | bharath v | bharath v |
| [IMPALA-3594](https://issues.apache.org/jira/browse/IMPALA-3594) | -build\_shared\_libs Switch in buildall.sh Broken |  Critical | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-3608](https://issues.apache.org/jira/browse/IMPALA-3608) | Regression test for IMPALA-2168 in test\_outer\_joins fails non-determinsitically |  Blocker | Backend | Michael Ho | Michael Ho |
| [IMPALA-3597](https://issues.apache.org/jira/browse/IMPALA-3597) | Mislabeled cache levels on Debug webpage |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3582](https://issues.apache.org/jira/browse/IMPALA-3582) | Impala appears to be leaking memory in stress test |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3577](https://issues.apache.org/jira/browse/IMPALA-3577) | Partitions on multiple filesystems breaks with S3\_SKIP\_INSERT\_STAGING |  Critical | Backend | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3619](https://issues.apache.org/jira/browse/IMPALA-3619) | Disable LLVM IR debug symbols by default |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3163](https://issues.apache.org/jira/browse/IMPALA-3163) | DECIMAL casting to a TIMESTAMP doesn't keep precision |  Critical | Frontend | Alex Breshears | Taras Bobrovytsky |
| [IMPALA-3453](https://issues.apache.org/jira/browse/IMPALA-3453) | S3 : Uneven split sizes are generated for Parquet causing execution skew |  Critical | Backend | Mostafa Mokhtar | Mostafa Mokhtar |
| [IMPALA-3595](https://issues.apache.org/jira/browse/IMPALA-3595) | Hardcoded HDFS path in test\_avro\_stale\_schema causes all other filesystems to fail |  Blocker | Infrastructure | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3634](https://issues.apache.org/jira/browse/IMPALA-3634) | TestDdlStatements.test\_alter\_set\_column\_stats fails on local filesystem |  Blocker | Catalog, Frontend | Thomas Tauber-Marshall | Alexander Behm |
| [IMPALA-3494](https://issues.apache.org/jira/browse/IMPALA-3494) | Thrift buffer overflows when serialize more than 3355443200 bytes in impala |  Blocker | Backend | Huaisi Xu | Huaisi Xu |
| [IMPALA-3092](https://issues.apache.org/jira/browse/IMPALA-3092) | Cannot query tables after add columns for AVRO table |  Critical | Backend | Huaisi Xu | Huaisi Xu |
| [IMPALA-3640](https://issues.apache.org/jira/browse/IMPALA-3640) | Understand how commit 5eb0680db52e43abbcb445faf91fee196ca0f060 propagated from cdh5-trunk to product branch |  Major | Infrastructure | Michael Ho | Harrison Sheinblatt |
| [IMPALA-3417](https://issues.apache.org/jira/browse/IMPALA-3417) | run-all.sh fails when no services should start |  Blocker | Infrastructure | Sailesh Mukil | Matthew Jacobs |
| [IMPALA-3639](https://issues.apache.org/jira/browse/IMPALA-3639) | expr-test fails on asan on cdh5-2.6.0\_5.8.0 |  Critical | Backend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-3645](https://issues.apache.org/jira/browse/IMPALA-3645) | [qgen] Check failed: !ExprContext::HasLocalAllocations(probe\_expr\_ctxs\_) |  Blocker | Backend | Michael Brown | Michael Ho |
| [IMPALA-2922](https://issues.apache.org/jira/browse/IMPALA-2922) | Builds fail to find C compiler in /tmp/impala-deps |  Critical | Infrastructure | Alexander Behm | casey |
| [IMPALA-3683](https://issues.apache.org/jira/browse/IMPALA-3683) | Build fails due to compilation issue |  Blocker | Infrastructure | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-3672](https://issues.apache.org/jira/browse/IMPALA-3672) | Build failed due to libkudu\_client.so not found |  Blocker | Infrastructure | Taras Bobrovytsky | casey |
| [IMPALA-3669](https://issues.apache.org/jira/browse/IMPALA-3669) | several test\_scratch\_disk failures when run against S3 due to different memory requirements |  Blocker | Backend | Michael Brown | Tim Armstrong |
| [IMPALA-3614](https://issues.apache.org/jira/browse/IMPALA-3614) | most custom cluster tests not running for release builds, S3 fs |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-3684](https://issues.apache.org/jira/browse/IMPALA-3684) | breakpad tests fail when enabled and run in Jenkins |  Blocker | Infrastructure | Michael Brown | Lars Volker |
| [IMPALA-3693](https://issues.apache.org/jira/browse/IMPALA-3693) | breakpad tests generate core files that get wrongly earmarked for collection |  Critical | Infrastructure | Michael Brown | Lars Volker |
| [IMPALA-3630](https://issues.apache.org/jira/browse/IMPALA-3630) | exhaustive custom cluster tests never run |  Critical | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-3798](https://issues.apache.org/jira/browse/IMPALA-3798) | Race condition may cause scanners to spin with runtime filters on Avro or Sequence files |  Blocker | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-3800](https://issues.apache.org/jira/browse/IMPALA-3800) | collect\_minidumps.py does not support python 2.6 |  Blocker | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-3811](https://issues.apache.org/jira/browse/IMPALA-3811) | test\_sequence\_file\_filtering\_race running and failing against release builds |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-3648](https://issues.apache.org/jira/browse/IMPALA-3648) | kudu-tserver failing to start on build machines |  Blocker | Infrastructure | Thomas Tauber-Marshall | Matthew Jacobs |
| [IMPALA-2097](https://issues.apache.org/jira/browse/IMPALA-2097) | Builds fail due to insufficient disk space |  Critical | Infrastructure | Dan Hecht | Alexander Behm |
| [IMPALA-4382](https://issues.apache.org/jira/browse/IMPALA-4382) | impala crash at llvm::Value::getContext() |  Major | Backend | zhangsong | fishing |
| [IMPALA-3396](https://issues.apache.org/jira/browse/IMPALA-3396) | New flaky test: TimerCounterTest.CountersTestRandom |  Blocker | Backend | Tim Armstrong | Juan Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-3222](https://issues.apache.org/jira/browse/IMPALA-3222) | Push initial code to git.apache.org |  Major | Infrastructure | Henry Robinson | Tim Armstrong |
| [IMPALA-3144](https://issues.apache.org/jira/browse/IMPALA-3144) | Support inserts to a multi-partitioned table that lives on multiple filesystems |  Major | Backend | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3443](https://issues.apache.org/jira/browse/IMPALA-3443) | Replace BOOST\_FOREACH with ranged for() loops |  Major | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-2956](https://issues.apache.org/jira/browse/IMPALA-2956) | Filters should be able to target multiple scans |  Critical | Distributed Exec | Henry Robinson | Dimitris Tsirogiannis |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2537](https://issues.apache.org/jira/browse/IMPALA-2537) | Modify EE tests to use a unique table name so they could be executed in parallel |  Critical | Infrastructure | Juan Yu | Michael Brown |
| [IMPALA-2467](https://issues.apache.org/jira/browse/IMPALA-2467) | Merge Kudu support into Impala master |  Major | Frontend | Jeff Hammerbacher | David Alves |
| [IMPALA-3199](https://issues.apache.org/jira/browse/IMPALA-3199) | Enable Admission Control by default (without limits) |  Critical | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-3355](https://issues.apache.org/jira/browse/IMPALA-3355) | get query generation running against cdh5-trunk |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-1996](https://issues.apache.org/jira/browse/IMPALA-1996) | HBase cluster sometimes fails to start |  Critical | Infrastructure | Alexander Behm | Michael Brown |
| [IMPALA-775](https://issues.apache.org/jira/browse/IMPALA-775) | Upgrade to LLVM 3.8 |  Critical | Backend | Nong Li | Tim Armstrong |
| [IMPALA-3483](https://issues.apache.org/jira/browse/IMPALA-3483) | --plugin should be an allowed option in the gold linker on the toolchain |  Major | Infrastructure | Jim Apple | casey |
| [IMPALA-3375](https://issues.apache.org/jira/browse/IMPALA-3375) | Investigate expensive calls to tc\_delete\_nothrow & tc\_new during TopN for 2x speedup. |  Critical | Backend | Mostafa Mokhtar | Mostafa Mokhtar |
| [IMPALA-2639](https://issues.apache.org/jira/browse/IMPALA-2639) | Document ALTER TABLE ... ADD IF NOT EXISTS PARTITION |  Minor | Docs | Jim Apple | John Russell |
| [IMPALA-3130](https://issues.apache.org/jira/browse/IMPALA-3130) | Document RECOVER PARTITIONS |  Minor | Docs | Jim Apple | John Russell |


