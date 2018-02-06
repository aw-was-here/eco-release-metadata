
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

## Release Impala 2.7.0 - Unreleased (as of 2018-02-06)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-3632](https://issues.apache.org/jira/browse/IMPALA-3632) | Tooling for helping to clean up c++ code. |  Major | Infrastructure | Alexander Behm | Alexander Behm |
| [IMPALA-2459](https://issues.apache.org/jira/browse/IMPALA-2459) | Implement next\_day date/time UDF |  Major | Frontend | Jeff Hammerbacher | Youwei Wang |
| [IMPALA-2767](https://issues.apache.org/jira/browse/IMPALA-2767) | web UI call to force expire sessions |  Minor | Backend | Marcell Szabo | Sailesh Mukil |
| [IMPALA-3210](https://issues.apache.org/jira/browse/IMPALA-3210) | last\_value()/first\_value() support for IGNORE NULLS |  Major | Backend | Matthew Jacobs | Thomas Tauber-Marshall |
| [IMPALA-2932](https://issues.apache.org/jira/browse/IMPALA-2932) | Extend DistributedPlanner::createHashJoinFragment to account for hash table build cost |  Minor | Frontend | Mostafa Mokhtar | Thomas Tauber-Marshall |
| [IMPALA-1659](https://issues.apache.org/jira/browse/IMPALA-1659) | Netezza compatibility functions: metadata |  Minor | Backend | Henry Robinson | Zoltan Ivanfi |
| [IMPALA-1683](https://issues.apache.org/jira/browse/IMPALA-1683) | Allow REFRESH on a single partition |  Critical | Catalog | Henry Robinson | Bikramjeet Vig |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-3627](https://issues.apache.org/jira/browse/IMPALA-3627) | Clean up Rpc structures in ImpalaInternalService.thrift |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-3647](https://issues.apache.org/jira/browse/IMPALA-3647) | Report runtime filter memory consumption when memory limit is exceeded |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3682](https://issues.apache.org/jira/browse/IMPALA-3682) | Improve error handling around SSL configs |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-3736](https://issues.apache.org/jira/browse/IMPALA-3736) | Move ImpalaServer HTTP handlers to separate class |  Major | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-3587](https://issues.apache.org/jira/browse/IMPALA-3587) | Get rid of not\_default\_fs skip marker |  Major | Infrastructure | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3677](https://issues.apache.org/jira/browse/IMPALA-3677) | Write minidump on SIGUSR1 |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-3206](https://issues.apache.org/jira/browse/IMPALA-3206) | Support Decimal type in generated code of Avro scanner |  Major | Backend | Michael Ho | Michael Ho |
| [IMPALA-3715](https://issues.apache.org/jira/browse/IMPALA-3715) | Impala debug memz webpage should include more info by default |  Major | Backend | Tim Armstrong | Kathy Sun |
| [IMPALA-3852](https://issues.apache.org/jira/browse/IMPALA-3852) | Remove a couple of unnecessary FE dependencies |  Major | Frontend | Henry Robinson | Henry Robinson |
| [IMPALA-3845](https://issues.apache.org/jira/browse/IMPALA-3845) | Split up hdfs-parquet-scanner.cc into more components/files. |  Critical | Backend | Alexander Behm | Alexander Behm |
| [IMPALA-1671](https://issues.apache.org/jira/browse/IMPALA-1671) | Print time and link to coordinator web UI once query is submitted in shell |  Major | Clients | Mala Chikka Kempanna | Sailesh Mukil |
| [IMPALA-3729](https://issues.apache.org/jira/browse/IMPALA-3729) | Add batch\_size=1 coverage to test\_data\_errors.py |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-3924](https://issues.apache.org/jira/browse/IMPALA-3924) | Impala support for Ubuntu 16.04 |  Critical | Infrastructure | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-3972](https://issues.apache.org/jira/browse/IMPALA-3972) | Improve /varz by using structured gflags API |  Minor | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-3829](https://issues.apache.org/jira/browse/IMPALA-3829) | ImpalaServer::OpenSession() logs errors on valid configuration keys |  Minor | Backend | Henry Robinson | Attila Jeges |
| [IMPALA-3992](https://issues.apache.org/jira/browse/IMPALA-3992) | Bad error message when running non-existent file from impala-shell |  Minor | Clients | Tim Armstrong | Tim Armstrong |
| [IMPALA-3090](https://issues.apache.org/jira/browse/IMPALA-3090) | Report which memory limit was exceeded |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-1657](https://issues.apache.org/jira/browse/IMPALA-1657) | Improve logging incase of query failures with negative cardinalities |  Critical | Frontend | bharath v | Alexander Behm |
| [IMPALA-3538](https://issues.apache.org/jira/browse/IMPALA-3538) | Add Way to Trigger Minidump Creation |  Minor | Backend | Lars Volker | Lars Volker |
| [IMPALA-1616](https://issues.apache.org/jira/browse/IMPALA-1616) | Improve the Memory Limit Exceeded error report |  Minor | Backend | Ippokratis Pandis | Attila Jeges |
| [IMPALA-2013](https://issues.apache.org/jira/browse/IMPALA-2013) | Data loading fails when inserting into HBase table. Is HBase down? Did it start up properly? |  Major | Infrastructure | Alexander Behm | David Knupp |
| [IMPALA-3028](https://issues.apache.org/jira/browse/IMPALA-3028) | Use linker from toolchain |  Minor | Infrastructure | Tim Armstrong | Jim Apple |
| [IMPALA-3530](https://issues.apache.org/jira/browse/IMPALA-3530) | Clean and split up test\_ddl.py and related .test files |  Critical | Infrastructure | Alexander Behm | Alexander Behm |
| [IMPALA-2670](https://issues.apache.org/jira/browse/IMPALA-2670) | Add a LICENSE.txt top-level file. |  Minor | Backend | Henry Robinson | Henry Robinson |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-3501](https://issues.apache.org/jira/browse/IMPALA-3501) | code coverage: test\_failure\_detected, test\_topic\_persistence don't fire within 40s |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-3633](https://issues.apache.org/jira/browse/IMPALA-3633) | ImpalaServer::ReportExecStatus   return\_val   forget  \_\_isset.status |  Critical | Backend | fishing | Tim Armstrong |
| [IMPALA-1633](https://issues.apache.org/jira/browse/IMPALA-1633) | Impala server GetOperationStatus() should return detail sql error code and message when query fails |  Minor | Backend | Juan Yu | Thomas Tauber-Marshall |
| [IMPALA-3298](https://issues.apache.org/jira/browse/IMPALA-3298) | TGetOperationStatusResp missing error message when data is expired |  Major | Backend | Romain Rigaux | Thomas Tauber-Marshall |
| [IMPALA-1346](https://issues.apache.org/jira/browse/IMPALA-1346) | Sorter fails with out-of-memory in queries with multiple spilling operators |  Critical | Backend | Nong Li | Tim Armstrong |
| [IMPALA-1590](https://issues.apache.org/jira/browse/IMPALA-1590) | Remove workarounds for DCHECK in sorter.cc:549 (var\_len\_blocks[0]-\>Pin() fails to pin), when running parallel test |  Critical | Backend | Ippokratis Pandis | Tim Armstrong |
| [IMPALA-2344](https://issues.apache.org/jira/browse/IMPALA-2344) | Remove workaround for sorter.cc:654: Check failed: pinned |  Major | Backend | casey | Tim Armstrong |
| [IMPALA-3670](https://issues.apache.org/jira/browse/IMPALA-3670) | Block is not deleted by sorter in some cases when spilling is disabled |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3673](https://issues.apache.org/jira/browse/IMPALA-3673) | Build failed due to memory limit exceeded |  Blocker | Infrastructure | Taras Bobrovytsky | Tim Armstrong |
| [IMPALA-3614](https://issues.apache.org/jira/browse/IMPALA-3614) | most custom cluster tests not running for release builds, S3 fs |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-3646](https://issues.apache.org/jira/browse/IMPALA-3646) | stress: rle-encoding.h:260] Check failed: literal\_count\_ \> 0 (0 vs. 0) |  Critical | Backend | Michael Brown | Alexander Behm |
| [IMPALA-3507](https://issues.apache.org/jira/browse/IMPALA-3507) | Very slow linking with toolchain linker on centos and ubuntu |  Major | Infrastructure | bharath v | Tim Armstrong |
| [IMPALA-3441](https://issues.apache.org/jira/browse/IMPALA-3441) | Impala should not crash for invalid avro serialized data |  Critical | Backend | Anuj Phadke | Tim Armstrong |
| [IMPALA-3659](https://issues.apache.org/jira/browse/IMPALA-3659) | ReadWriteUtil::ReadZLong() doesn't handle invalid data |  Major | Backend | Skye Wanderman-Milne | Tim Armstrong |
| [IMPALA-3732](https://issues.apache.org/jira/browse/IMPALA-3732) | Avro scanner can break on strings \>= 2GB |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3751](https://issues.apache.org/jira/browse/IMPALA-3751) | ASAN build broken: invalid suffix 'd' on floating constant |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3745](https://issues.apache.org/jira/browse/IMPALA-3745) | Corrupt encoded values in parquet files can cause crashes |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3499](https://issues.apache.org/jira/browse/IMPALA-3499) | Backend cannot write catalog-update topic more than 2GB to jByteArray |  Major | Catalog | He Tianyi | Huaisi Xu |
| [IMPALA-3737](https://issues.apache.org/jira/browse/IMPALA-3737) | Local filesystem build failed loading custom schemas |  Major | Infrastructure | Henry Robinson | Sailesh Mukil |
| [IMPALA-3754](https://issues.apache.org/jira/browse/IMPALA-3754) | TestParquet.test\_corrupt\_rle\_counts fails |  Blocker | Backend | casey | Tim Armstrong |
| [IMPALA-3656](https://issues.apache.org/jira/browse/IMPALA-3656) | Hitting DCHECK/CHECK does not write minidumps |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-3798](https://issues.apache.org/jira/browse/IMPALA-3798) | Race condition may cause scanners to spin with runtime filters on Avro or Sequence files |  Blocker | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-3810](https://issues.apache.org/jira/browse/IMPALA-3810) | Impala packaging fails on SLES11 |  Blocker | Infrastructure | Michael Brown | Michael Ho |
| [IMPALA-3680](https://issues.apache.org/jira/browse/IMPALA-3680) | Reset the file offset after failed cache reads |  Major | Backend | bharath v | bharath v |
| [IMPALA-3664](https://issues.apache.org/jira/browse/IMPALA-3664) | S3A test\_keys\_do\_not\_work fails |  Blocker | Backend | Michael Brown | Sailesh Mukil |
| [IMPALA-3811](https://issues.apache.org/jira/browse/IMPALA-3811) | test\_sequence\_file\_filtering\_race running and failing against release builds |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-3628](https://issues.apache.org/jira/browse/IMPALA-3628) | Cancellation via shell may hang over SSL |  Critical | Clients | Matthew Jacobs | Henry Robinson |
| [IMPALA-3799](https://issues.apache.org/jira/browse/IMPALA-3799) | MAX\_SCAN\_RANGE\_LENGTH query option does not accept formatted quantities |  Major | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-3711](https://issues.apache.org/jira/browse/IMPALA-3711) | Impala should match pattern before check all privileges |  Critical | Frontend | Huaisi Xu | Huaisi Xu |
| [IMPALA-3839](https://issues.apache.org/jira/browse/IMPALA-3839) | Race condition in impala\_cluster.py:\_\_build\_impala\_process\_lists() |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-3687](https://issues.apache.org/jira/browse/IMPALA-3687) | Unable to rename string column in schema file in AVRO |  Major | Catalog | Huaisi Xu | Huaisi Xu |
| [IMPALA-1619](https://issues.apache.org/jira/browse/IMPALA-1619) | Support single allocations larger 1GB |  Critical | Backend | Martin Grund | Michael Ho |
| [IMPALA-3757](https://issues.apache.org/jira/browse/IMPALA-3757) | Crash during impala::RuntimeProfile::ComputeTimeInProfile() |  Blocker | Backend | casey | Matthew Jacobs |
| [IMPALA-3824](https://issues.apache.org/jira/browse/IMPALA-3824) | TestHBaseQueries.test\_hbase\_inserts caused crash in impala::RuntimeProfile::total\_time\_counter |  Blocker | Backend | Michael Brown | Matthew Jacobs |
| [IMPALA-3817](https://issues.apache.org/jira/browse/IMPALA-3817) | Runtime filters running on a cluster with heterogeneous HW can lead to wrong results |  Blocker | Backend | Mostafa Mokhtar | Jim Apple |
| [IMPALA-3606](https://issues.apache.org/jira/browse/IMPALA-3606) | Java npe when adding a partition which already exists |  Major | Catalog | Huaisi Xu | Bikramjeet Vig |
| [IMPALA-3018](https://issues.apache.org/jira/browse/IMPALA-3018) | min(), max(), and first\_value() will DCHECK on empty strings |  Blocker | Backend | Skye Wanderman-Milne | Michael Ho |
| [IMPALA-3678](https://issues.apache.org/jira/browse/IMPALA-3678) | Preconditions check in SortNode when planning query that has union operands with order by + limit |  Blocker | Frontend | fishing | Alexander Behm |
| [IMPALA-3780](https://issues.apache.org/jira/browse/IMPALA-3780) | Uncompressed text scanner is slow when reading strings that significantly exceed the HDFS block size |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3756](https://issues.apache.org/jira/browse/IMPALA-3756) | HiveStringsTest fails "UDF::evaluate() ran into a problem" |  Major | Frontend | casey | Michael Ho |
| [IMPALA-3575](https://issues.apache.org/jira/browse/IMPALA-3575) | Impala should retry backend connection request and apply a send timeout |  Major | Distributed Exec | Juan Yu | Juan Yu |
| [IMPALA-3521](https://issues.apache.org/jira/browse/IMPALA-3521) | Before Impala  Network monitor ports start, should not Communication with statetore |  Critical | Backend | fishing | Anuj Phadke |
| [IMPALA-3854](https://issues.apache.org/jira/browse/IMPALA-3854) | used-after-free in HdfsTextScanner::Close() |  Blocker | Backend | Michael Ho | Michael Ho |
| [IMPALA-3886](https://issues.apache.org/jira/browse/IMPALA-3886) | Improve pip\_download.py output |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-3779](https://issues.apache.org/jira/browse/IMPALA-3779) | Disable cache pool reader thread when HDFS isn't running |  Major | Catalog | Alex Leblang | Sailesh Mukil |
| [IMPALA-3864](https://issues.apache.org/jira/browse/IMPALA-3864) | qgen: QueryGenerator.create\_query() will raise exceptions |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-3084](https://issues.apache.org/jira/browse/IMPALA-3084) | Incorrect assignment of NULL checking predicate through an outer join of a nested collection. |  Critical | Frontend | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-3159](https://issues.apache.org/jira/browse/IMPALA-3159) | impala-shell does not accept wildcard or SAN certificates |  Critical | Security | Henry Robinson | Sailesh Mukil |
| [IMPALA-3914](https://issues.apache.org/jira/browse/IMPALA-3914) | SKIP\_TOOLCHAIN\_BOOTSTRAP should control Python package download |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-1240](https://issues.apache.org/jira/browse/IMPALA-1240) | TestCancellationFullSort hits mem limit of 300MB with tpch\_parquet |  Major | Backend | Henry Robinson | Tim Armstrong |
| [IMPALA-3915](https://issues.apache.org/jira/browse/IMPALA-3915) | Read access to views in the presence of WHERE-clause subqueries |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-3906](https://issues.apache.org/jira/browse/IMPALA-3906) | LLVM fails to resolve symbols in release builds of Impalad |  Blocker | Backend | Michael Ho | Michael Ho |
| [IMPALA-3861](https://issues.apache.org/jira/browse/IMPALA-3861) | Cannot resolve correlated column reference inside a BETWEEN predicate. |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-3857](https://issues.apache.org/jira/browse/IMPALA-3857) | KuduScanNode doesn't scan all ranges under load |  Blocker | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-3939](https://issues.apache.org/jira/browse/IMPALA-3939) | Data loading may fail on tpch kudu |  Critical | Infrastructure | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-2878](https://issues.apache.org/jira/browse/IMPALA-2878) | Base64 decode error |  Minor | Backend | Yuanhao Luo | Yuanhao Luo |
| [IMPALA-3376](https://issues.apache.org/jira/browse/IMPALA-3376) | Off-by-one error with RLE encoded definition levels when writing Parquet files. |  Major | Backend | Alexander Behm | Thomas Tauber-Marshall |
| [IMPALA-3958](https://issues.apache.org/jira/browse/IMPALA-3958) | impala-asf-master-core-data-load had a test failure but the build succeeded |  Blocker | Infrastructure | Michael Brown | Tim Armstrong |
| [IMPALA-3965](https://issues.apache.org/jira/browse/IMPALA-3965) | TSSLSocketWithWildcardSAN.py not exported as part of impala-shell build lib |  Blocker | Clients | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3843](https://issues.apache.org/jira/browse/IMPALA-3843) | SSSE3-missing error message is misleading |  Minor | Backend | Tomáš Gavenčiak | Tomáš Gavenčiak |
| [IMPALA-3957](https://issues.apache.org/jira/browse/IMPALA-3957) | Test failure in S3 build: TestLoadData.test\_load: wrong # of files in destination |  Blocker | Backend | Tim Armstrong | Sailesh Mukil |
| [IMPALA-3946](https://issues.apache.org/jira/browse/IMPALA-3946) | Hit DCHECK in MemPool::CheckIntegrity() |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3764](https://issues.apache.org/jira/browse/IMPALA-3764) | Fuzz-test HDFS scanners |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3940](https://issues.apache.org/jira/browse/IMPALA-3940) | Different query plans produced when accessing base tables or identical views. |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-3923](https://issues.apache.org/jira/browse/IMPALA-3923) | BufferedTupleStream::GetRows() can overflow 32-bit int |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-2700](https://issues.apache.org/jira/browse/IMPALA-2700) | ASCII NUL characters are doubled on insert into text tables |  Blocker | Backend | Anuj Phadke | Anuj Phadke |
| [IMPALA-3069](https://issues.apache.org/jira/browse/IMPALA-3069) | mem-pool.cc:254] Check failed: chunks\_[i].allocated\_bytes \> 0 (-2104452104 vs. 0) |  Critical | Backend | casey | Michael Ho |
| [IMPALA-3611](https://issues.apache.org/jira/browse/IMPALA-3611) | Impala should report unused DiskIOMgr buffer memory consumption |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3936](https://issues.apache.org/jira/browse/IMPALA-3936) | Crash in BufferedBlockMgr::WriteComplete due to null buffer\_desc\_ during large spilling query |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3953](https://issues.apache.org/jira/browse/IMPALA-3953) | kudu-scan-node-test crashed under ASAN: "boost: mutex lock failed in pthread\_mutex\_lock: Invalid argument" |  Blocker | Backend | Tim Armstrong | Matthew Jacobs |
| [IMPALA-2347](https://issues.apache.org/jira/browse/IMPALA-2347) | Fix the MetaStoreClientPool to properly reuse HMS connections |  Minor | Catalog | Dimitris Tsirogiannis | bharath v |
| [IMPALA-3952](https://issues.apache.org/jira/browse/IMPALA-3952) | Crash in HdfsParquetScanner::Close() |  Blocker | Backend | Tim Armstrong | Alexander Behm |
| [IMPALA-3964](https://issues.apache.org/jira/browse/IMPALA-3964) | DCHECK hit for query involving count over nested collection |  Blocker | Backend | Chris Channing | Chris Channing |
| [IMPALA-3470](https://issues.apache.org/jira/browse/IMPALA-3470) | DecompressorTest.BZip2 failed |  Critical | Backend | Tim Armstrong | Juan Yu |
| [IMPALA-2979](https://issues.apache.org/jira/browse/IMPALA-2979) | Simple scheduler : Reservoir sampling doesn't provide enough randomization |  Minor | Backend | Mostafa Mokhtar | Lars Volker |
| [IMPALA-3063](https://issues.apache.org/jira/browse/IMPALA-3063) | NotImplementedException: ... RIGHT OUTER JOIN ... can only be executed with a single node plan |  Blocker | Frontend | casey | Alexander Behm |
| [IMPALA-3856](https://issues.apache.org/jira/browse/IMPALA-3856) | KuduScanNode crash when pushing predicates including a cast |  Blocker | Frontend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-3871](https://issues.apache.org/jira/browse/IMPALA-3871) | Casting literals to TIMESTAMP throw when pushed to KuduScanNode |  Minor | Frontend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-3828](https://issues.apache.org/jira/browse/IMPALA-3828) | Planner : Add transformation rule that traverses the single node plan to swap the build and probe sides if necessary |  Minor | Frontend | Mostafa Mokhtar | Alexander Behm |
| [IMPALA-3954](https://issues.apache.org/jira/browse/IMPALA-3954) | TestTextScanRangeLengths::test\_text\_scanner\_with\_header failed in release build |  Blocker | Backend | Tim Armstrong | Sailesh Mukil |
| [IMPALA-3962](https://issues.apache.org/jira/browse/IMPALA-3962) | stress test core dump on two nodes with strange, possibly corrupt stack |  Blocker | Backend | Michael Brown | Michael Ho |
| [IMPALA-3927](https://issues.apache.org/jira/browse/IMPALA-3927) | If calling to hdfsCloseFile() returns -1 then just calls LogError() rather than returns an abnormal Status |  Critical | Backend | zharui | Sailesh Mukil |
| [IMPALA-3996](https://issues.apache.org/jira/browse/IMPALA-3996) | Migrate to updated Kudu insert string API |  Major | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4004](https://issues.apache.org/jira/browse/IMPALA-4004) | impala-asf-master-core-non-partitioned-joins-and-aggs failing due to select query querying nested types |  Blocker | Infrastructure | Lars Volker | Michael Ho |
| [IMPALA-3986](https://issues.apache.org/jira/browse/IMPALA-3986) | Python hive-client may fail silently while dropping partitions |  Blocker | Infrastructure | Lars Volker | Sailesh Mukil |
| [IMPALA-3893](https://issues.apache.org/jira/browse/IMPALA-3893) | Impala-shell prints incorrect address for coordinator |  Major | Clients | Mostafa Mokhtar | Sailesh Mukil |
| [IMPALA-3901](https://issues.apache.org/jira/browse/IMPALA-3901) | impala-shell output is overly verbose for simple queries |  Critical | Clients | Tim Armstrong | Sailesh Mukil |
| [IMPALA-3832](https://issues.apache.org/jira/browse/IMPALA-3832) | Fix invalid data handling in LZO text scanner |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-1731](https://issues.apache.org/jira/browse/IMPALA-1731) | StringParser::StringToFloatInternal() does not handle "inf" correctly |  Minor | Backend | Skye Wanderman-Milne | Attila Jeges |
| [IMPALA-3868](https://issues.apache.org/jira/browse/IMPALA-3868) | StringParser::StringToFloatInternal() allows multiple dots in float numbers |  Minor | Backend | Attila Jeges | Attila Jeges |
| [IMPALA-2540](https://issues.apache.org/jira/browse/IMPALA-2540) | IllegalStateException planning nested query with several joins |  Critical | Frontend | casey | Alexander Behm |
| [IMPALA-3979](https://issues.apache.org/jira/browse/IMPALA-3979) | Passing -build\_shared\_libs to buildall.sh appears to be broken |  Major | Infrastructure | David Knupp | Martin Grund |
| [IMPALA-3859](https://issues.apache.org/jira/browse/IMPALA-3859) | HdfsScanNode::LogRowParseError() will log table data |  Critical | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-3895](https://issues.apache.org/jira/browse/IMPALA-3895) | Matching for HDFS filenames in ERROR sections is broken |  Minor | Infrastructure | Henry Robinson | Henry Robinson |
| [IMPALA-3944](https://issues.apache.org/jira/browse/IMPALA-3944) | Crash in SimpleScheduler |  Major | Distributed Exec | Tim Armstrong | Lars Volker |
| [IMPALA-3776](https://issues.apache.org/jira/browse/IMPALA-3776) | 'describe formatted' broken for avro tables with mismatching column information in hive metastore |  Critical | Frontend | Lars Volker | Lars Volker |
| [IMPALA-3629](https://issues.apache.org/jira/browse/IMPALA-3629) | Simple predicate evaluation conumes 38 instructions per row with codegen enabled |  Minor | Backend | Mostafa Mokhtar | Thomas Tauber-Marshall |
| [IMPALA-3938](https://issues.apache.org/jira/browse/IMPALA-3938) | Semantically incorrect query referencing nested collections is accepted and run (with arbitrary results). |  Minor | Frontend | Alexander Behm | Chris Channing |
| [IMPALA-3911](https://issues.apache.org/jira/browse/IMPALA-3911) | custom\_cluster/test\_admission\_controller.py |  Minor | Backend | Jim Apple | Matthew Jacobs |
| [IMPALA-4027](https://issues.apache.org/jira/browse/IMPALA-4027) | Memory leak with ExprCtxs not free |  Critical | Backend | hewenting | hewenting |
| [IMPALA-3930](https://issues.apache.org/jira/browse/IMPALA-3930) | Impala throws IllegalStateException when [SHUFFLE] inserting data into a partition while select subquery group by partition columns |  Critical | Frontend | Huaisi Xu | Alexander Behm |
| [IMPALA-2570](https://issues.apache.org/jira/browse/IMPALA-2570) | Insert into/overwrite [SHUFFLE] hint is not applied unless the partition is not specified |  Critical | Frontend | Peter Ebert | Alexander Behm |
| [IMPALA-2831](https://issues.apache.org/jira/browse/IMPALA-2831) | Impala can spin up too many scanner threads |  Major | Backend | Tim Armstrong | Michael Ho |
| [IMPALA-4049](https://issues.apache.org/jira/browse/IMPALA-4049) | Incorrect results from non-grouping aggregation on nested collection when on the build side of a nested-loop join. |  Blocker | Backend | Alexander Behm | Tim Armstrong |
| [IMPALA-4058](https://issues.apache.org/jira/browse/IMPALA-4058) | Unaligned memory access issue in SIMDed byteswap |  Blocker | Backend | Youwei Wang | Jim Apple |
| [IMPALA-4019](https://issues.apache.org/jira/browse/IMPALA-4019) | Crash when HdfsTableSink::table\_desc\_-\>partition\_descriptors() is missing the default partition |  Critical | Backend | Juan Yu | Tim Armstrong |
| [IMPALA-4087](https://issues.apache.org/jira/browse/IMPALA-4087) | TestFragmentLifecycle.test\_failure\_in\_prepare is flaky |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-4116](https://issues.apache.org/jira/browse/IMPALA-4116) | VERSION variable in save-version.sh is cdh-specific |  Blocker | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-3429](https://issues.apache.org/jira/browse/IMPALA-3429) | Impala doesn't read data from hdfs cache even though the table is cached |  Minor | Backend | Juan Yu | Lars Volker |
| [IMPALA-3943](https://issues.apache.org/jira/browse/IMPALA-3943) | Queries started failing with "This file  has no row groups" against small/invalid parquet files |  Major | Backend | Mostafa Mokhtar | Alexander Behm |
| [IMPALA-3920](https://issues.apache.org/jira/browse/IMPALA-3920) | TotalStorageWaitTime counter not populated for fragments with Kudu scan node |  Major | Backend | Mostafa Mokhtar | Anuj Phadke |
| [IMPALA-3790](https://issues.apache.org/jira/browse/IMPALA-3790) | Code coverage builds TestAdmissionControllerStress.test\_admission\_controller\_with\_flags and test\_admission\_controller\_with\_configs fail with timeouts |  Blocker | Backend | Harrison Sheinblatt | Matthew Jacobs |
| [IMPALA-3121](https://issues.apache.org/jira/browse/IMPALA-3121) | stress test should differentiate client \<-\> server and server \<-\> server connection errors |  Critical | Infrastructure | Dan Hecht |  |
| [IMPALA-3610](https://issues.apache.org/jira/browse/IMPALA-3610) | Track non-RPC memory from global runtime filters on the coordinator |  Critical | Backend | Mostafa Mokhtar | Sailesh Mukil |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-3344](https://issues.apache.org/jira/browse/IMPALA-3344) | Simplify and document invariants in Sorter |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3763](https://issues.apache.org/jira/browse/IMPALA-3763) | download\_requirements downloads virtualenv and kudu-python to current directory |  Major | Infrastructure | Jim Apple | Tim Armstrong |
| [IMPALA-3806](https://issues.apache.org/jira/browse/IMPALA-3806) | portability problems on RHEL5 builds |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-3774](https://issues.apache.org/jira/browse/IMPALA-3774) | Apache git repo's download\_requirements fails on Jenkins machines |  Critical | Infrastructure | Jim Apple | Tim Armstrong |
| [IMPALA-3734](https://issues.apache.org/jira/browse/IMPALA-3734) | Replace boost::shared\_ptr with its std:: equivalent |  Major | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-3917](https://issues.apache.org/jira/browse/IMPALA-3917) | Fix invalid data handling in Parquet files |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4001](https://issues.apache.org/jira/browse/IMPALA-4001) | qgen: add proof of concept infra to build Query() objects for testing |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-3853](https://issues.apache.org/jira/browse/IMPALA-3853) | Copyright audit |  Major | Infrastructure | Jim Apple | Henry Robinson |
| [IMPALA-3918](https://issues.apache.org/jira/browse/IMPALA-3918) | Remove Cloudera copyrights and add ASF license header |  Minor | Infrastructure | Dan Hecht | Dan Hecht |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-3418](https://issues.apache.org/jira/browse/IMPALA-3418) | The Impala FE project relies on Z-tools snapshot builds |  Major | Frontend | Charlie Helin | Charlie Helin |
| [IMPALA-3892](https://issues.apache.org/jira/browse/IMPALA-3892) | qgen: make correctness triaging either by running impala with -convert\_legacy\_hive\_parquet\_utc\_timestamps=true |  Minor | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-3431](https://issues.apache.org/jira/browse/IMPALA-3431) | Run stress tests on S3 |  Critical | Backend | Henry Robinson | Sailesh Mukil |
| [IMPALA-3969](https://issues.apache.org/jira/browse/IMPALA-3969) | stress test: provide ability to disable codegen |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-3650](https://issues.apache.org/jira/browse/IMPALA-3650) | DISTRIBUTE BY is now required when creating Kudu tables |  Blocker | Infrastructure | casey | Matthew Jacobs |


