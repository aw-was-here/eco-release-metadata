
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

## Release Impala 2.11.0 - 2018-01-18



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5912](https://issues.apache.org/jira/browse/IMPALA-5912) | Impala gets SIGABRT while running expression tests |  Blocker | Backend | Tim Wood | Tim Armstrong |
| [IMPALA-6225](https://issues.apache.org/jira/browse/IMPALA-6225) | IMPALA-5599 broke a client software due to precision change in date-time string |  Major | Backend | Zoram Thanga | Zoram Thanga |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5317](https://issues.apache.org/jira/browse/IMPALA-5317) | add DATE\_TRUNC() function |  Major | Frontend | Greg Rahn | sandeep akinapelli |
| [IMPALA-1767](https://issues.apache.org/jira/browse/IMPALA-1767) | Boolean type does not include ISO-SQL is true, unknown or false predicate |  Minor | Frontend | Henry Robinson | Vuk Ercegovac |
| [IMPALA-4252](https://issues.apache.org/jira/browse/IMPALA-4252) | Add RuntimeFilters for min/max at KuduScanNode |  Major | Backend | Matthew Jacobs | Greg Rahn |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-4847](https://issues.apache.org/jira/browse/IMPALA-4847) | Simplify the code for file/block metadata loading by manually calling listLocatedStatus() for each partition. |  Critical | Catalog | Alexander Behm | bharath v |
| [IMPALA-5849](https://issues.apache.org/jira/browse/IMPALA-5849) | Don't disable TLS configuration at compile-time even with OpenSSL 1.0.0 |  Critical | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-4826](https://issues.apache.org/jira/browse/IMPALA-4826) | Impala should ignore the root schema's repetition in Parquet |  Minor | Backend | Tim Armstrong | Gabor Kaszab |
| [IMPALA-3437](https://issues.apache.org/jira/browse/IMPALA-3437) | Consider changing arithmetic conversions to produce decimal in more cases |  Minor | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3877](https://issues.apache.org/jira/browse/IMPALA-3877) | Support unpatched LLVM |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5860](https://issues.apache.org/jira/browse/IMPALA-5860) | Upgrade LLVM to 3.9.0 or later |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5211](https://issues.apache.org/jira/browse/IMPALA-5211) | Simplify remaining constant conditionals |  Major | Frontend | Thomas Tauber-Marshall | Philip Zeyliger |
| [IMPALA-5895](https://issues.apache.org/jira/browse/IMPALA-5895) | Simplify and document memory management of RuntimeProfile Counters |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5932](https://issues.apache.org/jira/browse/IMPALA-5932) | Improve the performance of transitive closure computation in value transfer graph |  Minor | Frontend | Tianyi Wang | Tianyi Wang |
| [IMPALA-5965](https://issues.apache.org/jira/browse/IMPALA-5965) | Avoid per-value switch on NeedsConversionInline() when decoding dictionary-encoded strings and timestamps |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5988](https://issues.apache.org/jira/browse/IMPALA-5988) | Improve MemPool::TryAllocate() efficiency for small strings |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5394](https://issues.apache.org/jira/browse/IMPALA-5394) | Set socket timeouts while opening TSaslTransport |  Critical | Distributed Exec | Doug Cameron | John Sherman |
| [IMPALA-5844](https://issues.apache.org/jira/browse/IMPALA-5844) | Fix management of FunctionContext "local" allocations. |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6016](https://issues.apache.org/jira/browse/IMPALA-6016) | Confusing logging in TableLoadingMgr.loadNextTable() |  Major | . | bharath v | bharath v |
| [IMPALA-5425](https://issues.apache.org/jira/browse/IMPALA-5425) | Add test for validating input when setting query options. |  Major | Infrastructure | Alexander Behm | Tianyi Wang |
| [IMPALA-5789](https://issues.apache.org/jira/browse/IMPALA-5789) | Prune all partitions if an always-false runtime filter is received |  Major | Backend | Tim Armstrong | Tianyi Wang |
| [IMPALA-6076](https://issues.apache.org/jira/browse/IMPALA-6076) | Add deprecation warning for BIT\_PACKED encoding. |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4236](https://issues.apache.org/jira/browse/IMPALA-4236) | Codegen CopyRows() for select nodes |  Minor | Backend | Michael Ho | Bikramjeet Vig |
| [IMPALA-2758](https://issues.apache.org/jira/browse/IMPALA-2758) | Remove BufferedTupleStream::GetRows() |  Minor | Backend | Tim Armstrong | Tianyi Wang |
| [IMPALA-3548](https://issues.apache.org/jira/browse/IMPALA-3548) | Prune runtime filters based on RUNTIME\_FILTER\_MODE in the frontend |  Minor | Frontend | Dimitris Tsirogiannis | Attila Jeges |
| [IMPALA-5129](https://issues.apache.org/jira/browse/IMPALA-5129) | Use Kudu's Kinit code to avoid expensive fork |  Major | Security | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-743](https://issues.apache.org/jira/browse/IMPALA-743) | Impala should use -l instead of -r with kinit |  Minor | Security | Henry Robinson | Sailesh Mukil |
| [IMPALA-5541](https://issues.apache.org/jira/browse/IMPALA-5541) | Enforce sane maximum for BATCH\_SIZE |  Minor | Backend | Tim Armstrong | Tianyi Wang |
| [IMPALA-5736](https://issues.apache.org/jira/browse/IMPALA-5736) | Add impala-shell argument to set default query options |  Minor | Clients | Brad Barker | Csaba Ringhofer |
| [IMPALA-6151](https://issues.apache.org/jira/browse/IMPALA-6151) | Add NumBackends and NumFragments counters to profile |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-2281](https://issues.apache.org/jira/browse/IMPALA-2281) | Use a better hash function than FNV for exchanges |  Minor | Backend | Tim Armstrong | Tianyi Wang |
| [IMPALA-4704](https://issues.apache.org/jira/browse/IMPALA-4704) | ImpalaD should not open 21000 and 21050 Ports till Catalog is Received |  Major | Catalog, Frontend | Manish Maheshwari | Vuk Ercegovac |
| [IMPALA-6121](https://issues.apache.org/jira/browse/IMPALA-6121) | Remove RequestContext cache in DiskIoMgr |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6084](https://issues.apache.org/jira/browse/IMPALA-6084) | Avoid "using namespace llvm" in C++ source files |  Minor | Backend | Tim Armstrong | Jinchul Kim |
| [IMPALA-4177](https://issues.apache.org/jira/browse/IMPALA-4177) | Add batch dictionary/RLE decoding in Parquet |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6080](https://issues.apache.org/jira/browse/IMPALA-6080) | Clean up descriptor table handling in coordinator |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4985](https://issues.apache.org/jira/browse/IMPALA-4985) | Evaluate parquet::Statistics to skip data in nested types |  Major | Backend, Frontend | Lars Volker | Vuk Ercegovac |
| [IMPALA-2250](https://issues.apache.org/jira/browse/IMPALA-2250) | Make multiple COUNT(DISTINCT) message state workarounds |  Minor | Frontend | John Russell | Jinchul Kim |
| [IMPALA-2181](https://issues.apache.org/jira/browse/IMPALA-2181) | Add a flag for hidden query options |  Minor | Clients | Ippokratis Pandis | Gabor Kaszab |
| [IMPALA-5243](https://issues.apache.org/jira/browse/IMPALA-5243) | Slow codegen for wide Avro tables |  Major | Backend | Alexander Behm | Philip Zeyliger |
| [IMPALA-4506](https://issues.apache.org/jira/browse/IMPALA-4506) | Make "tip of the day" message respect --quiet option |  Minor | Clients | John Russell | Jinchul Kim |
| [IMPALA-6210](https://issues.apache.org/jira/browse/IMPALA-6210) | Add query id to lineage graph logging |  Trivial | Infrastructure | Tianyi Wang | Tianyi Wang |
| [IMPALA-3804](https://issues.apache.org/jira/browse/IMPALA-3804) | Re-enable per-scan filtering for sequence-based scanners |  Minor | Backend | Henry Robinson | Zoltán Borók-Nagy |
| [IMPALA-6067](https://issues.apache.org/jira/browse/IMPALA-6067) | S3: Impala should be able to use IAM roles to access s3 storage |  Major | Infrastructure | Laszlo Gaal | Laszlo Gaal |
| [IMPALA-6461](https://issues.apache.org/jira/browse/IMPALA-6461) | \*DataStreamSender::Channel::AddRow needs some micro-optimizations to remove per row function call and data dependency |  Minor | Distributed Exec | Mostafa Mokhtar | Mostafa Mokhtar |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5846](https://issues.apache.org/jira/browse/IMPALA-5846) | Kudu libraries are written to be/src/.., not be/build/... |  Major | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-467](https://issues.apache.org/jira/browse/IMPALA-467) | Builds intermittently fail due to problems getting the volume id metadata |  Critical | Infrastructure | Lenni Kuff | Tim Armstrong |
| [IMPALA-5836](https://issues.apache.org/jira/browse/IMPALA-5836) | Eclipse frontend debugging setup requires manual steps like creating a launcher |  Minor | . | Philip Zeyliger | Philip Zeyliger |
| [IMPALA-5853](https://issues.apache.org/jira/browse/IMPALA-5853) | GetResultSetMetadata() invalid query id error message is confusing |  Major | . | Dan Hecht | Dan Hecht |
| [IMPALA-5863](https://issues.apache.org/jira/browse/IMPALA-5863) |  Include-what-you-use for Kudu client |  Major | Backend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-5617](https://issues.apache.org/jira/browse/IMPALA-5617) | Stress test not finding tpch\_nested queries |  Major | Infrastructure | Michael Brown | Tim Wood |
| [IMPALA-5816](https://issues.apache.org/jira/browse/IMPALA-5816) | ssl-related custom cluster tests failing during setup on exhaustive RHEL7 |  Critical | Security | David Knupp | Henry Robinson |
| [IMPALA-5854](https://issues.apache.org/jira/browse/IMPALA-5854) | Update external hadoop ecosystem |  Critical | . | Zach Amsden | Zach Amsden |
| [IMPALA-5873](https://issues.apache.org/jira/browse/IMPALA-5873) | Building Impala on legacy platforms is broken due to sync\_file\_range() not defined |  Blocker | Backend | Michael Ho | Michael Ho |
| [IMPALA-5871](https://issues.apache.org/jira/browse/IMPALA-5871) | KuduPartitionExpr incorrectly handles its child types |  Blocker | Frontend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-5891](https://issues.apache.org/jira/browse/IMPALA-5891) | PeriodicCounterUpdater should not rely on static initialisation and destruction order |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5885](https://issues.apache.org/jira/browse/IMPALA-5885) | Parquet scanner does not free local allocations in filter contexts |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5210](https://issues.apache.org/jira/browse/IMPALA-5210) | Nested types : Scans spend 30% of CPU in impala::RuntimeProfile::Counter::Add and 8% in apic\_timer\_interrupt |  Major | Backend | Mostafa Mokhtar | Tianyi Wang |
| [IMPALA-2810](https://issues.apache.org/jira/browse/IMPALA-2810) | Error message when moving a partitioned table from one database to another |  Minor | Catalog | Mariano Dominguez | Tianyi Wang |
| [IMPALA-5892](https://issues.apache.org/jira/browse/IMPALA-5892) | Fault injection at DescriptorTbl::Create() can lead to query hang |  Major | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-5812](https://issues.apache.org/jira/browse/IMPALA-5812) | Query hits NullPointerException in FE |  Major | Frontend | Taras Bobrovytsky | Bikramjeet Vig |
| [IMPALA-5888](https://issues.apache.org/jira/browse/IMPALA-5888) | Parquet scanner does not free local allocations for min/max and dictionary filters |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5750](https://issues.apache.org/jira/browse/IMPALA-5750) | Handle uncaught exceptions in thread creation |  Critical | Backend | Silvius Rus | Joe McDonnell |
| [IMPALA-4620](https://issues.apache.org/jira/browse/IMPALA-4620) | The eval cost of exprs should always be set in in analyze(), even if the eval cost is unknown (-1). |  Major | Frontend | Alexander Behm | Tianyi Wang |
| [IMPALA-5867](https://issues.apache.org/jira/browse/IMPALA-5867) | Out-of-range yy month format can crash Impala |  Critical | Backend | Tim Armstrong | Tianyi Wang |
| [IMPALA-4987](https://issues.apache.org/jira/browse/IMPALA-4987) | test\_rows\_availability.py is flaky |  Minor | Infrastructure | David Knupp | Tianyi Wang |
| [IMPALA-5890](https://issues.apache.org/jira/browse/IMPALA-5890) | Segmentation fault in ScannerContext::Stream::GetBytesInternal(long, unsigned char\*\*, bool, long\*) |  Blocker | Backend | Lars Volker | Lars Volker |
| [IMPALA-3516](https://issues.apache.org/jira/browse/IMPALA-3516) | Some things are still written to /tmp instead of IMPALA\_HOME/logs |  Minor | Infrastructure | Taras Bobrovytsky | Tianyi Wang |
| [IMPALA-5597](https://issues.apache.org/jira/browse/IMPALA-5597) | IllegalStateException in RuntimeFilterGenerator.computeTargetExpr() with left join |  Major | Frontend | Tim Armstrong | Tianyi Wang |
| [IMPALA-5856](https://issues.apache.org/jira/browse/IMPALA-5856) | Queries with full outer and left join miss result rows |  Blocker | Frontend | Julian Eberius | Alexander Behm |
| [IMPALA-5199](https://issues.apache.org/jira/browse/IMPALA-5199) | Impala may hang on empty row batch exchange |  Critical | Distributed Exec | Sailesh Mukil | Tim Armstrong |
| [IMPALA-2615](https://issues.apache.org/jira/browse/IMPALA-2615) | annotate Status with [[nodiscard]] |  Minor | Backend | Dan Hecht | Tim Armstrong |
| [IMPALA-5964](https://issues.apache.org/jira/browse/IMPALA-5964) | common/yarn-extras/README.txt doesn't pass Apache RAT check |  Major | . | Matthew Mulder | Matthew Jacobs |
| [IMPALA-5927](https://issues.apache.org/jira/browse/IMPALA-5927) | enable\_distcc broken for ZSH |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-4863](https://issues.apache.org/jira/browse/IMPALA-4863) | Incorrect accounting of file count and compression type when Runtime filters are applied on partition and non-partition columns |  Major | Backend | Mostafa Mokhtar | Anuj Phadke |
| [IMPALA-5311](https://issues.apache.org/jira/browse/IMPALA-5311) | Select count(\*) queries show in incorrect compression in profile |  Minor | Backend | Peter Ebert | Anuj Phadke |
| [IMPALA-3897](https://issues.apache.org/jira/browse/IMPALA-3897) | Codegen null-aware constant in PHJ::ProcessBuildBatch() |  Minor | Backend | Tim Armstrong | Anuj Phadke |
| [IMPALA-5966](https://issues.apache.org/jira/browse/IMPALA-5966) | PlannerTest result files are written to the wrong location |  Trivial | Frontend | Tianyi Wang | Tianyi Wang |
| [IMPALA-5416](https://issues.apache.org/jira/browse/IMPALA-5416) | Chaining source command in impala-shell with a SQL query runs the query twice and crashes if followed by another source |  Major | Clients | Mostafa Mokhtar | Tianyi Wang |
| [IMPALA-5250](https://issues.apache.org/jira/browse/IMPALA-5250) | Non-deterministic error reporting for compressed corrupt Parquet files |  Major | Backend | Alexander Behm | Tianyi Wang |
| [IMPALA-5954](https://issues.apache.org/jira/browse/IMPALA-5954) | Prefer StatsSetupConst.DO\_NOT\_UPDATE\_STATS over STATS\_GENERATED\_VIA\_STATS\_TASK |  Critical | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-5955](https://issues.apache.org/jira/browse/IMPALA-5955) | Use the totalSize Hive table property instead of rawDataSize |  Critical | Catalog, Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-5949](https://issues.apache.org/jira/browse/IMPALA-5949) | test\_exchange\_small\_delay failure: Expected exception: Sender timed out waiting for receiver fragment instance |  Blocker | Backend | Matthew Mulder | Tim Armstrong |
| [IMPALA-3360](https://issues.apache.org/jira/browse/IMPALA-3360) | Unroll loops / replace types in filter logic in PHJ::ProcessBuildBatch() |  Minor | Backend | Henry Robinson | Thomas Tauber-Marshall |
| [IMPALA-5870](https://issues.apache.org/jira/browse/IMPALA-5870) | Partial sort profile counters don't make sense for partial sort |  Major | Backend | Matthew Jacobs | Thomas Tauber-Marshall |
| [IMPALA-5951](https://issues.apache.org/jira/browse/IMPALA-5951) | test\_catalogd\_timeout failure: Expected exception: Error creating Kudu table |  Blocker | . | Matthew Mulder | Thomas Tauber-Marshall |
| [IMPALA-5994](https://issues.apache.org/jira/browse/IMPALA-5994) | Failure in star expansion on struct fields |  Blocker | Catalog | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-6009](https://issues.apache.org/jira/browse/IMPALA-6009) | FE compilation fails: ColumnLineageGraph.java:[593,11] no suitable method found for putString(java.lang.String) |  Blocker | Frontend | Michael Brown | Alexander Behm |
| [IMPALA-4951](https://issues.apache.org/jira/browse/IMPALA-4951) | Impala does not show database if the user only has column-level access |  Critical | Frontend | Sudarshan | Bikramjeet Vig |
| [IMPALA-6012](https://issues.apache.org/jira/browse/IMPALA-6012) | HIVE-12730 breaks Impala compilation |  Blocker | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5941](https://issues.apache.org/jira/browse/IMPALA-5941) | create-test-configuration.sh does not properly create Hive Metastore schema |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-6021](https://issues.apache.org/jira/browse/IMPALA-6021) | FE fails to compile due to incompatible Guava Hasher API |  Blocker | Frontend | Michael Brown | Michael Brown |
| [IMPALA-5920](https://issues.apache.org/jira/browse/IMPALA-5920) | Remove admission control dependency on YARN resourcemanager |  Critical | Frontend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-5448](https://issues.apache.org/jira/browse/IMPALA-5448) | Invalid number of files reported in Parquet scan node |  Minor | Backend | Mostafa Mokhtar | Quanlong Huang |
| [IMPALA-6030](https://issues.apache.org/jira/browse/IMPALA-6030) | Don't start coordinator specific thread pools if a node isn't a coordinator node |  Major | Backend | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-6040](https://issues.apache.org/jira/browse/IMPALA-6040) | test\_multi\_compression\_types uses hive in incompatible environments |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-5986](https://issues.apache.org/jira/browse/IMPALA-5986) | Impala test suite harness fails to reset some options in SQL sessions |  Major | Infrastructure | Tim Wood | Tim Wood |
| [IMPALA-5983](https://issues.apache.org/jira/browse/IMPALA-5983) | Dateless timestamps (e.g. "10:00:00") can cause crash during timezone conversion |  Major | Backend | Csaba Ringhofer | Csaba Ringhofer |
| [IMPALA-4682](https://issues.apache.org/jira/browse/IMPALA-4682) | IllegalStateException when ordering by aggregate function |  Minor | Frontend | Tim Armstrong | Zoram Thanga |
| [IMPALA-5911](https://issues.apache.org/jira/browse/IMPALA-5911) | Grouping aggregations with having conjuncts and Serialize()/Finalize() functions uses excessive expr memory |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6023](https://issues.apache.org/jira/browse/IMPALA-6023) | impalad failed to start in test\_dcheck\_writes\_minidump |  Blocker | Backend | Michael Brown | Lars Volker |
| [IMPALA-5923](https://issues.apache.org/jira/browse/IMPALA-5923) | We're printing a binary ID in ChildQuery::Cancel() |  Critical | Backend | Lars Volker | Lars Volker |
| [IMPALA-6049](https://issues.apache.org/jira/browse/IMPALA-6049) | Fix for IMPALA-6023 breaks test\_breakpad on localFs builds |  Blocker | Infrastructure | Lars Volker | Michael Brown |
| [IMPALA-5940](https://issues.apache.org/jira/browse/IMPALA-5940) | Log-spew and performance hit from Status objects that generate stack traces unnecessarily |  Major | Backend | Philip Zeyliger | Philip Zeyliger |
| [IMPALA-5668](https://issues.apache.org/jira/browse/IMPALA-5668) | Subsecond Unix times around the first supported TIMESTAMP may be wrong |  Major | Backend | Matthew Jacobs | Csaba Ringhofer |
| [IMPALA-4918](https://issues.apache.org/jira/browse/IMPALA-4918) | Support getting column comments via HS2 |  Major | Catalog | Donghui Xu | Csaba Ringhofer |
| [IMPALA-5664](https://issues.apache.org/jira/browse/IMPALA-5664) | Unix time to timestamp conversions may crash impala (boost exception) |  Major | Backend | Matthew Jacobs | Csaba Ringhofer |
| [IMPALA-5599](https://issues.apache.org/jira/browse/IMPALA-5599) | Clean up non-TIMESTAMP usages of TimestampValue |  Minor | Backend | Matthew Jacobs | Zoram Thanga |
| [IMPALA-6099](https://issues.apache.org/jira/browse/IMPALA-6099) | DCHECK in runtime filters: "Tried to increment unknown counters group" |  Blocker | Backend | Tim Armstrong | Tianyi Wang |
| [IMPALA-6060](https://issues.apache.org/jira/browse/IMPALA-6060) | Crash in JniUtfCharGuard::create() |  Blocker | Backend | Tim Armstrong | Tianyi Wang |
| [IMPALA-5018](https://issues.apache.org/jira/browse/IMPALA-5018) | DECIMAL V2: Error on decimal divide by 0 |  Major | Backend | Dan Hecht | Taras Bobrovytsky |
| [IMPALA-6106](https://issues.apache.org/jira/browse/IMPALA-6106) | test\_tpcds\_q53 extremely flaky because of decimal\_v2 not being reset |  Blocker | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6055](https://issues.apache.org/jira/browse/IMPALA-6055) | Impala doesn't work with Hadoop 2.8 and newer |  Major | Infrastructure | Zach Amsden | Zach Amsden |
| [IMPALA-5429](https://issues.apache.org/jira/browse/IMPALA-5429) | Use a thread pool to load block metadata in parallel |  Critical | Catalog | Mostafa Mokhtar | bharath v |
| [IMPALA-2294](https://issues.apache.org/jira/browse/IMPALA-2294) | Impalad unable to kinit after several days |  Critical | Security | casey | Sailesh Mukil |
| [IMPALA-6123](https://issues.apache.org/jira/browse/IMPALA-6123) | test\_inline\_view\_limit fails in exhaustive tests |  Blocker | Backend | Lars Volker | Bikramjeet Vig |
| [IMPALA-6126](https://issues.apache.org/jira/browse/IMPALA-6126) | ASAN detects heap-use-after-free in thrift-server-test |  Blocker | Backend | Lars Volker | Sailesh Mukil |
| [IMPALA-6132](https://issues.apache.org/jira/browse/IMPALA-6132) | ASAN test fails when trying to move/copy string created by kudu::EnvPosix::GetExecutablePath into InitAuth() |  Major | Backend | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-6127](https://issues.apache.org/jira/browse/IMPALA-6127) | Failure in TestRuntimeFilters.test\_wait\_time on ASAN |  Blocker | Infrastructure | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-5926](https://issues.apache.org/jira/browse/IMPALA-5926) | Avoid printing expensive stack when closing a session |  Major | Backend | Mostafa Mokhtar | Mostafa Mokhtar |
| [IMPALA-5957](https://issues.apache.org/jira/browse/IMPALA-5957) | DCHECK attempts to print non-string as a c-style string |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6093](https://issues.apache.org/jira/browse/IMPALA-6093) | TestHashJoinTimer failed on local filesystem and ASAN builds |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6124](https://issues.apache.org/jira/browse/IMPALA-6124) | test\_last\_ddl\_time\_update fails on S3 |  Blocker | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-1291](https://issues.apache.org/jira/browse/IMPALA-1291) | Parquet read fails if io buffer size is less than the footer size |  Minor | Backend | Nong Li | Zoltán Borók-Nagy |
| [IMPALA-6137](https://issues.apache.org/jira/browse/IMPALA-6137) | ASAN heap-use-after-free in HdfsTextScanner::CheckForSplitDelimiter() |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6144](https://issues.apache.org/jira/browse/IMPALA-6144) | Coordinator threads that publish RuntimeFilters continue to run after query failure/cancellation |  Major | Backend | Mostafa Mokhtar | Sailesh Mukil |
| [IMPALA-6118](https://issues.apache.org/jira/browse/IMPALA-6118) | Assertion failure in mem-tracker when releasing runtime filter memory |  Blocker | Backend | Philip Zeyliger | Tianyi Wang |
| [IMPALA-5999](https://issues.apache.org/jira/browse/IMPALA-5999) | Multiple failures in TestUdfExecution and test\_spilling |  Blocker | Backend | Sailesh Mukil | Bikramjeet Vig |
| [IMPALA-6171](https://issues.apache.org/jira/browse/IMPALA-6171) | Failure in test\_admission\_controller "assert metric\_deltas['timed-out'] == 0" |  Blocker | Infrastructure | Thomas Tauber-Marshall | Tim Armstrong |
| [IMPALA-6173](https://issues.apache.org/jira/browse/IMPALA-6173) | SHOW CREATE TABLE broken for unpartitioned Kudu tables |  Major | Infrastructure | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-6164](https://issues.apache.org/jira/browse/IMPALA-6164) | test\_always\_false\_filter failure on ASAN |  Blocker | Infrastructure | Thomas Tauber-Marshall | Tianyi Wang |
| [IMPALA-6170](https://issues.apache.org/jira/browse/IMPALA-6170) | Failure in llvm-codegen-test: Failed to get file info /test-warehouse/test-udfs.ll |  Blocker | Backend | Thomas Tauber-Marshall | Bikramjeet Vig |
| [IMPALA-6183](https://issues.apache.org/jira/browse/IMPALA-6183) | Converting Decimal to Double loses precision |  Major | Backend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-3613](https://issues.apache.org/jira/browse/IMPALA-3613) | Statestore should not update reconnected subscribers repeatedly |  Major | Distributed Exec | Huaisi Xu | bharath v |
| [IMPALA-6136](https://issues.apache.org/jira/browse/IMPALA-6136) | Duration in /queries page is shows a negative value |  Blocker | Backend | Lars Volker | Zoram Thanga |
| [IMPALA-5341](https://issues.apache.org/jira/browse/IMPALA-5341) | File size filter in planner tests also filters row-size |  Major | Infrastructure | Alexander Behm | Jinchul Kim |
| [IMPALA-6188](https://issues.apache.org/jira/browse/IMPALA-6188) | test\_top\_n\_reclaim is flaky |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6039](https://issues.apache.org/jira/browse/IMPALA-6039) | BitReader::GetAligned() doesn't zero out trailing bytes |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6184](https://issues.apache.org/jira/browse/IMPALA-6184) | Check failed: !initialized\_ \|\| closed\_ |  Blocker | Backend | Taras Bobrovytsky | Michael Ho |
| [IMPALA-6198](https://issues.apache.org/jira/browse/IMPALA-6198) | Error starting cluster for a custom cluster test on a release build |  Blocker | Infrastructure | Taras Bobrovytsky | Vuk Ercegovac |
| [IMPALA-1575](https://issues.apache.org/jira/browse/IMPALA-1575) | Cancelled queries do not yield resources until close |  Critical | Backend | Henry Robinson | Tim Armstrong |
| [IMPALA-6109](https://issues.apache.org/jira/browse/IMPALA-6109) | Hbase in minicluster appears to be flaky |  Critical | Infrastructure | Tim Armstrong | Lars Volker |
| [IMPALA-6217](https://issues.apache.org/jira/browse/IMPALA-6217) | parquet-column-readers.cc:417] Check failed: def\_levels\_.CacheHasNext() |  Blocker | Backend | Michael Ho | Tim Armstrong |
| [IMPALA-5019](https://issues.apache.org/jira/browse/IMPALA-5019) | DECIMAL V2 add/sub result type |  Major | Frontend | Dan Hecht | Taras Bobrovytsky |
| [IMPALA-4964](https://issues.apache.org/jira/browse/IMPALA-4964) | Decimal modulo operator is overflowing |  Major | Backend | Zachary | Taras Bobrovytsky |
| [IMPALA-2235](https://issues.apache.org/jira/browse/IMPALA-2235) | Impala shell automatic reconnect does not appear to maintain "use \<db\>" |  Minor | Clients | Skye Wanderman-Milne | Zoltán Borók-Nagy |
| [IMPALA-6220](https://issues.apache.org/jira/browse/IMPALA-6220) | Build broken due to ‘EVP\_aes\_256\_ctr’ not declared in openssl-uitl.cc |  Major | Backend | Michael Ho | Michael Ho |
| [IMPALA-4591](https://issues.apache.org/jira/browse/IMPALA-4591) | Kudu client error memory should be bounded |  Major | Backend | Matthew Jacobs | Thomas Tauber-Marshall |
| [IMPALA-6201](https://issues.apache.org/jira/browse/IMPALA-6201) | TestRuntimeFilters.test\_basic\_filters fails on ASAN |  Blocker | Infrastructure | Taras Bobrovytsky | Thomas Tauber-Marshall |
| [IMPALA-6239](https://issues.apache.org/jira/browse/IMPALA-6239) | Remote data load breaks with "LOAD DATA LOCAL INPATH": Invalid path |  Blocker | Infrastructure | David Knupp |  |
| [IMPALA-5146](https://issues.apache.org/jira/browse/IMPALA-5146) | from\_unixtime() given an out-of-range unix time produces inconsistent results |  Major | Backend | Dan Hecht | Jinchul Kim |
| [IMPALA-6187](https://issues.apache.org/jira/browse/IMPALA-6187) | Scan with conjuncts but no materialized slots crashes Impalad |  Critical | Backend | Michael Ho | Michael Ho |
| [IMPALA-5936](https://issues.apache.org/jira/browse/IMPALA-5936) | Difference between the % Operator and Mod function with large decimal values |  Major | Frontend | Jason Phelps | Zoltán Borók-Nagy |
| [IMPALA-1144](https://issues.apache.org/jira/browse/IMPALA-1144) | Query cancellation throws error, reports wrong query text |  Minor | Backend | John Russell | Gabor Kaszab |
| [IMPALA-6241](https://issues.apache.org/jira/browse/IMPALA-6241) | Timeout in TestAdmissionControllerStress.test\_mem\_limit under ASAN |  Blocker | . | Tianyi Wang | Tim Armstrong |
| [IMPALA-6100](https://issues.apache.org/jira/browse/IMPALA-6100) | test\_exchange\_delays flaky under ASAN |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6053](https://issues.apache.org/jira/browse/IMPALA-6053) | IllegalStateException when storageIds don't match hosts |  Major | Catalog | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-6001](https://issues.apache.org/jira/browse/IMPALA-6001) | Integration job failed in TestDdlStatements.test\_functions\_ddl - one extra function in actual output |  Blocker | Frontend | Alexander Behm | Dimitris Tsirogiannis |
| [IMPALA-6255](https://issues.apache.org/jira/browse/IMPALA-6255) | Add disk names to disk-io-mgr threads |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-1422](https://issues.apache.org/jira/browse/IMPALA-1422) | Allow constant exprs as the left-hand side of an IN subquery |  Minor | Frontend | Taras Bobrovytsky | Vuk Ercegovac |
| [IMPALA-1474](https://issues.apache.org/jira/browse/IMPALA-1474) | Add metric for running queries |  Trivial | Distributed Exec | Nong Li | Henry Robinson |
| [IMPALA-6068](https://issues.apache.org/jira/browse/IMPALA-6068) | Dataload does not populate functional\_\*.complextypes\_fileformat correctly |  Critical | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-5987](https://issues.apache.org/jira/browse/IMPALA-5987) | LZ4 Codec silently produces bogus compressed data for large inputs |  Critical | Backend | Alexander Behm | Zoltán Borók-Nagy |
| [IMPALA-6232](https://issues.apache.org/jira/browse/IMPALA-6232) | Short circuit reads disabled when using Impala HDFS file handle cache |  Blocker | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-6273](https://issues.apache.org/jira/browse/IMPALA-6273) | test\_subquery\_in\_constant\_lhs failing on exhaustive runs in hbase |  Critical | Frontend | Philip Zeyliger | Vuk Ercegovac |
| [IMPALA-6265](https://issues.apache.org/jira/browse/IMPALA-6265) | TestImpalaShell.test\_query\_cancellation\_during\_fetch breaks in ASAN builds |  Major | Clients, Frontend | Philip Zeyliger | Gabor Kaszab |
| [IMPALA-6262](https://issues.apache.org/jira/browse/IMPALA-6262) | Crash Impalad  [ DataSink::Create fail  which cause profile nullptr ] |  Critical | Backend | yyzzjj | Michael Ho |
| [IMPALA-6281](https://issues.apache.org/jira/browse/IMPALA-6281) | thrift-server-test and rpc-mgr-test failing ASAN builds |  Critical | Backend | Philip Zeyliger | Michael Ho |
| [IMPALA-6285](https://issues.apache.org/jira/browse/IMPALA-6285) | Avoid printing the stack as part of DoTransmitDataRpc as it leads to burning lots of kernel CPU |  Blocker | . | David Rorke | Michael Ho |
| [IMPALA-6292](https://issues.apache.org/jira/browse/IMPALA-6292) | Decimal v2 subtraction hits a DCHECK |  Blocker | Backend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-6069](https://issues.apache.org/jira/browse/IMPALA-6069) | Incorrect handling of Nan with join and codegen |  Critical | Backend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-6286](https://issues.apache.org/jira/browse/IMPALA-6286) | Wrong results with outer join and RUNTIME\_FILTER\_MODE=GLOBAL |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-6280](https://issues.apache.org/jira/browse/IMPALA-6280) | Invalid plan for sorted INSERT with an outer join and null checking |  Critical | Frontend | Alexander Behm | Thomas Tauber-Marshall |
| [IMPALA-6291](https://issues.apache.org/jira/browse/IMPALA-6291) | Various crashes and incorrect results on CPUs with AVX512 |  Blocker | Backend | Jim Apple | Tim Armstrong |
| [IMPALA-6061](https://issues.apache.org/jira/browse/IMPALA-6061) | Impala needs to handle deprecation of s3n in hadoop 3.0 |  Critical | Frontend | Joe McDonnell | Laszlo Gaal |
| [IMPALA-6298](https://issues.apache.org/jira/browse/IMPALA-6298) |  failure in test\_profile\_fragment\_instances |  Blocker | Infrastructure | Pranay Singh | Thomas Tauber-Marshall |
| [IMPALA-6308](https://issues.apache.org/jira/browse/IMPALA-6308) | RPC timeout message printing invalid destination name |  Blocker | Backend | Pranay Singh | Michael Ho |
| [IMPALA-6206](https://issues.apache.org/jira/browse/IMPALA-6206) | Data loading fails if tests are not built |  Minor | Infrastructure | Zach Amsden | Zach Amsden |
| [IMPALA-6114](https://issues.apache.org/jira/browse/IMPALA-6114) | Incorrect type deduction causing analysis exception to be thrown |  Major | Frontend | Zoram Thanga | Zoram Thanga |
| [IMPALA-6284](https://issues.apache.org/jira/browse/IMPALA-6284) | Exhaustive release build failing |  Critical | Backend | Philip Zeyliger | Taras Bobrovytsky |
| [IMPALA-3703](https://issues.apache.org/jira/browse/IMPALA-3703) | Store query context in thread-local variables and use in crash reports |  Minor | Backend | Tim Armstrong | Zoltán Borók-Nagy |
| [IMPALA-6155](https://issues.apache.org/jira/browse/IMPALA-6155) | TPC-DS Q77A is not deterministic |  Major | Infrastructure | Tim Armstrong | Tim Wood |
| [IMPALA-6278](https://issues.apache.org/jira/browse/IMPALA-6278) | Set up release notes for Impala 2.11 |  Major | Docs | John Russell | John Russell |
| [IMPALA-6499](https://issues.apache.org/jira/browse/IMPALA-6499) | Impala Doc: Formatting error in the String Functions doc |  Major | Docs | Alex Rodoni | Alex Rodoni |
| [IMPALA-6274](https://issues.apache.org/jira/browse/IMPALA-6274) | Impala daemon crashing in Coordinator::Wait() or some of its callees |  Blocker | Backend | Zoram Thanga |  |
| [IMPALA-6936](https://issues.apache.org/jira/browse/IMPALA-6936) |  LLVM generates toxic x86 assembly for StringFunctions::Trim() |  Critical | Backend | Zoram Thanga | Zoram Thanga |
| [IMPALA-3267](https://issues.apache.org/jira/browse/IMPALA-3267) | Docs about nan/inf are incorrect |  Trivial | Docs | Todd Lipcon | Alex Rodoni |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5827](https://issues.apache.org/jira/browse/IMPALA-5827) | Add test coverage for failure to repartition in hash join |  Major | Backend | Tim Armstrong | Tim Armstrong |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5493](https://issues.apache.org/jira/browse/IMPALA-5493) | Add Protobuf headers to Impala-lzo |  Major | Distributed Exec | Henry Robinson | Michael Ho |
| [IMPALA-4872](https://issues.apache.org/jira/browse/IMPALA-4872) | Remove per-RPC DNS lookup |  Major | Distributed Exec | Henry Robinson | Michael Ho |
| [IMPALA-5902](https://issues.apache.org/jira/browse/IMPALA-5902) | Add ThreadSanitizer build |  Minor | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-5905](https://issues.apache.org/jira/browse/IMPALA-5905) | Add ThreadSanitizer to  https://jenkins.impala.io/job/all-build-options/ |  Minor | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-5417](https://issues.apache.org/jira/browse/IMPALA-5417) | Consider limiting I/O buffer queue size to 2 buffers |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5538](https://issues.apache.org/jira/browse/IMPALA-5538) | Use explicit catalog versions for deleted objects in catalog updates |  Critical | Catalog | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-4786](https://issues.apache.org/jira/browse/IMPALA-4786) | Refactor CreateImpalaServer() to allow it to be used in tests. |  Major | Backend | Henry Robinson | Sailesh Mukil |
| [IMPALA-5174](https://issues.apache.org/jira/browse/IMPALA-5174) | Suppress kudu flags that aren't relevant to Impala |  Major | Backend | Henry Robinson | Sailesh Mukil |
| [IMPALA-4670](https://issues.apache.org/jira/browse/IMPALA-4670) | Add RpcMgr to interface between Impala and KRPC library |  Major | Distributed Exec | Henry Robinson | Michael Ho |
| [IMPALA-6058](https://issues.apache.org/jira/browse/IMPALA-6058) | Address log spew originating from InboundCall::Respond() |  Major | Distributed Exec | Mostafa Mokhtar | Sailesh Mukil |
| [IMPALA-6002](https://issues.apache.org/jira/browse/IMPALA-6002) | Impala should install an LLVM diagnostic handler |  Critical | Backend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-5596](https://issues.apache.org/jira/browse/IMPALA-5596) | Data load failed with " Failed to find any Kerberos tgt" on secure cluster |  Major | Distributed Exec | Mostafa Mokhtar | Sailesh Mukil |
| [IMPALA-4655](https://issues.apache.org/jira/browse/IMPALA-4655) | Add Kerberos minicluster test framework |  Major | Security | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-6134](https://issues.apache.org/jira/browse/IMPALA-6134) | Update code base to use impala::ConditionVariable |  Minor | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-2494](https://issues.apache.org/jira/browse/IMPALA-2494) | Impala Unable to scan a Decimal column stored as Bytes |  Major | Backend | Taras Bobrovytsky | Bikramjeet Vig |
| [IMPALA-4856](https://issues.apache.org/jira/browse/IMPALA-4856) | Port datastream portions of ImpalaInternalService to KRPC |  Major | Distributed Exec | Henry Robinson | Michael Ho |
| [IMPALA-5976](https://issues.apache.org/jira/browse/IMPALA-5976) | Remove equivalence classes |  Critical | Frontend | Alexander Behm | Tianyi Wang |
| [IMPALA-6172](https://issues.apache.org/jira/browse/IMPALA-6172) | KRPC w/ TLS doesn't work on remote clusters after rebase |  Blocker | Security | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-5307](https://issues.apache.org/jira/browse/IMPALA-5307) | Consider always copying-out Disk I/O buffers instead of attaching to RowBatches |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5053](https://issues.apache.org/jira/browse/IMPALA-5053) | Enable KRPC Kerberos support in Impala |  Major | Distributed Exec, Security | Henry Robinson | Sailesh Mukil |
| [IMPALA-6253](https://issues.apache.org/jira/browse/IMPALA-6253) | Document upper limit for BATCH\_SIZE query option |  Major | Docs | John Russell | John Russell |
| [IMPALA-6238](https://issues.apache.org/jira/browse/IMPALA-6238) | Add source and destination hosts to TErrorCode::DATASTREAM\_SENDER\_TIMEOUT |  Major | Backend | Mostafa Mokhtar | Michael Ho |
| [IMPALA-4671](https://issues.apache.org/jira/browse/IMPALA-4671) | Replace kudu::ServicePool with one that uses Impala threads |  Major | Distributed Exec | Henry Robinson | Sailesh Mukil |
| [IMPALA-6250](https://issues.apache.org/jira/browse/IMPALA-6250) | Document IS \<boolean\> |  Major | Docs | John Russell | John Russell |
| [IMPALA-6252](https://issues.apache.org/jira/browse/IMPALA-6252) | Document impala-shell argument --query\_options |  Major | Docs | John Russell | John Russell |
| [IMPALA-6251](https://issues.apache.org/jira/browse/IMPALA-6251) | Document DATE\_TRUNC() function |  Major | Docs | John Russell | John Russell |
| [IMPALA-6339](https://issues.apache.org/jira/browse/IMPALA-6339) | Document changes to SET output and new SET ALL syntax |  Major | Clients | John Russell | John Russell |
| [IMPALA-6379](https://issues.apache.org/jira/browse/IMPALA-6379) | Document Kudu filter improvements |  Major | Backend | John Russell | John Russell |
| [IMPALA-6612](https://issues.apache.org/jira/browse/IMPALA-6612) | Impala Doc: New TRIM function |  Major | Docs | Alex Rodoni | Alex Rodoni |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-6391](https://issues.apache.org/jira/browse/IMPALA-6391) | char\_length() is not an alias for length() |  Major | Docs | Tim Armstrong | John Russell |
| [IMPALA-5631](https://issues.apache.org/jira/browse/IMPALA-5631) | Document that impalad/catalogd/statestored machines must be able to get their FQDN from 'hostname' or have it passed through the hostname flag |  Major | Docs | Lars Volker | John Russell |
| [IMPALA-5653](https://issues.apache.org/jira/browse/IMPALA-5653) | Remove "unlimited" process mem\_limit option |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4082](https://issues.apache.org/jira/browse/IMPALA-4082) | Replace getRegionsInRange() in fe/src/main/java/com/cloudera/impala/catalog/HBaseTable.java with call to hBase |  Major | Frontend | Lars Volker | Tianyi Wang |
| [IMPALA-5915](https://issues.apache.org/jira/browse/IMPALA-5915) | Make all errors coming out of the IoMgr identifiable |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-6203](https://issues.apache.org/jira/browse/IMPALA-6203) | Take "incubating" out of documentation |  Major | . | John Russell | Jim Apple |


