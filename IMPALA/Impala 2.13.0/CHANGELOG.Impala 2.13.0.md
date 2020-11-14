
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

## Release Impala 2.13.0 - Unreleased (as of 2020-11-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5717](https://issues.apache.org/jira/browse/IMPALA-5717) | Support reading primitive types from ORC format files |  Major | Backend, Frontend | Quanlong Huang | Quanlong Huang |
| [IMPALA-5842](https://issues.apache.org/jira/browse/IMPALA-5842) | Write page index in Parquet files |  Critical | Backend | Lars Volker | Zoltán Borók-Nagy |
| [IMPALA-4848](https://issues.apache.org/jira/browse/IMPALA-4848) | add WIDTH\_BUCKET() function |  Major | Backend, Frontend | Greg Rahn | Anuj Phadke |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-3866](https://issues.apache.org/jira/browse/IMPALA-3866) | Improve error reporting for scratch write errors |  Minor | Backend | Marcell Szabo | Gabor Kaszab |
| [IMPALA-5980](https://issues.apache.org/jira/browse/IMPALA-5980) | Upgrade to LLVM 5.0.1 |  Major | Backend | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-6621](https://issues.apache.org/jira/browse/IMPALA-6621) | Improve In-predicate performance by using an alternative data structure for checking set membership |  Major | Backend | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-6479](https://issues.apache.org/jira/browse/IMPALA-6479) | Update DESCRIBE statement to respect column level privileges |  Major | Frontend | Adam Holley | Adam Holley |
| [IMPALA-6791](https://issues.apache.org/jira/browse/IMPALA-6791) | Create scripts to automate distcc server setup and toolchain updates |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6801](https://issues.apache.org/jira/browse/IMPALA-6801) | Cleanup request\_pool fields |  Major | Backend | Daniel Hecht | Daniel Hecht |
| [IMPALA-6120](https://issues.apache.org/jira/browse/IMPALA-6120) | Report actual CPU time for codegen |  Major | Backend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-6847](https://issues.apache.org/jira/browse/IMPALA-6847) | Consider adding workaround for high memory estimates in admission control |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6837](https://issues.apache.org/jira/browse/IMPALA-6837) | Allow setting multiple allowed networks in distcc server script |  Minor | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-4744](https://issues.apache.org/jira/browse/IMPALA-4744) | Apache Impala release should include release tag or hash in version string |  Major | Infrastructure | Tim Armstrong | Sailesh Mukil |
| [IMPALA-6904](https://issues.apache.org/jira/browse/IMPALA-6904) | Allow configuration of stress test binary search cutoff point |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6905](https://issues.apache.org/jira/browse/IMPALA-6905) | Allow use of row\_regex with VERIFY\_IS\_SUBSET and VERIFY\_IS\_SUPERSET |  Minor | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-4835](https://issues.apache.org/jira/browse/IMPALA-4835) | HDFS scans should operate with a constrained number of I/O buffers |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6507](https://issues.apache.org/jira/browse/IMPALA-6507) | Consider removing --disable\_mem\_pools debugging feature |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6993](https://issues.apache.org/jira/browse/IMPALA-6993) | Don't print status stack trace when propagating thrift status in Coordinator::BackendState::Exec() |  Major | Backend | Daniel Hecht | Daniel Hecht |
| [IMPALA-6999](https://issues.apache.org/jira/browse/IMPALA-6999) | Upgrade to sqlparse 0.1.19 in Impala Shell |  Minor | Clients | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-6233](https://issues.apache.org/jira/browse/IMPALA-6233) | Document the column definitions list in CREATE VIEW |  Major | Docs | Alexander Behm | Alexandra Rodoni |
| [IMPALA-7018](https://issues.apache.org/jira/browse/IMPALA-7018) | OpenSSL pending errors not cleared when spill-to-disk encryption is enabled |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6957](https://issues.apache.org/jira/browse/IMPALA-6957) | Include number of required threads in explain plan |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6645](https://issues.apache.org/jira/browse/IMPALA-6645) | Consider enabling disk spill encryption by default |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7024](https://issues.apache.org/jira/browse/IMPALA-7024) | Convert Coordinator::wait\_lock\_ from boost::mutex to SpinLock |  Major | . | Daniel Hecht | Daniel Hecht |
| [IMPALA-6941](https://issues.apache.org/jira/browse/IMPALA-6941) | Allow loading more text scanner plugins |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5384](https://issues.apache.org/jira/browse/IMPALA-5384) | Simplify coordinator locking protocol |  Major | . | Marcel Kinard | Daniel Hecht |
| [IMPALA-3134](https://issues.apache.org/jira/browse/IMPALA-3134) | Admission controller should not assume all backends have same proc mem limit |  Minor | Backend | Matthew Jacobs | Bikramjeet Vig |
| [IMPALA-5642](https://issues.apache.org/jira/browse/IMPALA-5642) | [DOCS] Impala restrictions on using Hive UDFs |  Minor | Docs | Bharath Vissapragada | Alexandra Rodoni |
| [IMPALA-7146](https://issues.apache.org/jira/browse/IMPALA-7146) | log session ID in Impala daemon log |  Major | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-7071](https://issues.apache.org/jira/browse/IMPALA-7071) | Make get\_fs\_path() idempotent |  Minor | Infrastructure | Daniel Hecht | Daniel Hecht |
| [IMPALA-6953](https://issues.apache.org/jira/browse/IMPALA-6953) | Improve encapsulation within DiskIoMgr |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5931](https://issues.apache.org/jira/browse/IMPALA-5931) | Don't synthesize block metadata in the catalog for S3/ADLS |  Major | Catalog | Daniel Hecht | Vuk Ercegovac |
| [IMPALA-7078](https://issues.apache.org/jira/browse/IMPALA-7078) | Selective Avro scans of wide tables use more memory than necessary |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-2346](https://issues.apache.org/jira/browse/IMPALA-2346) | Create unit test that exposes (now fixed) disk IO mgr race |  Minor | Backend | Skye Wanderman-Milne |  |
| [IMPALA-5552](https://issues.apache.org/jira/browse/IMPALA-5552) | Proxy user list should support groups |  Critical | Frontend | Tristan Stevens | Fredy Wijaya |
| [IMPALA-5168](https://issues.apache.org/jira/browse/IMPALA-5168) | Codegen hash computation in DataStreamSender::Send for partition exchange. |  Major | Backend | Mostafa Mokhtar | Michael Ho |
| [IMPALA-6942](https://issues.apache.org/jira/browse/IMPALA-6942) | "Cancelled due to unreachable impalad(s)" error message is misleading |  Major | Backend | Daniel Hecht | Daniel Hecht |
| [IMPALA-7171](https://issues.apache.org/jira/browse/IMPALA-7171) | Add docs for Kudu insert partitioning/sorting |  Major | Docs | Thomas Tauber-Marshall | Alexandra Rodoni |
| [IMPALA-6969](https://issues.apache.org/jira/browse/IMPALA-6969) | Profile doesn't include the reason that a query couldn't be dequeued from admission controller |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7115](https://issues.apache.org/jira/browse/IMPALA-7115) | Set a default THREAD\_RESERVATION\_LIMIT value |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7121](https://issues.apache.org/jira/browse/IMPALA-7121) | Clean up partitionIds\_ member from HdfsTable |  Major | Catalog | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-7191](https://issues.apache.org/jira/browse/IMPALA-7191) | Daemons should call srand() early in main rather than at random locations |  Major | Backend | Daniel Hecht | Daniel Hecht |
| [IMPALA-7082](https://issues.apache.org/jira/browse/IMPALA-7082) | Show Human Readable Size in Query Backend Page |  Minor | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-6425](https://issues.apache.org/jira/browse/IMPALA-6425) | Change Mempool memory allocation size to be \<1MB to avoid allocating from CentralFreeList |  Major | Backend | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-6305](https://issues.apache.org/jira/browse/IMPALA-6305) | Allow column definitions in ALTER VIEW |  Major | Frontend | Alexander Behm | Pooja Nilangekar |
| [IMPALA-7215](https://issues.apache.org/jira/browse/IMPALA-7215) | Implement a templatized CountingBarrier |  Major | . | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-6802](https://issues.apache.org/jira/browse/IMPALA-6802) | Clean up tests in AuthorizationTest |  Critical | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7185](https://issues.apache.org/jira/browse/IMPALA-7185) | Reduce statestore frequency for custom cluster tests by default |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6625](https://issues.apache.org/jira/browse/IMPALA-6625) | Skip dictionary and collection conjunct assignment for non-Parquet scans. |  Critical | Frontend | Alexander Behm | Pooja Nilangekar |
| [IMPALA-7006](https://issues.apache.org/jira/browse/IMPALA-7006) | Rebase KRPC onto Kudu upstream repository |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-7014](https://issues.apache.org/jira/browse/IMPALA-7014) | Disable stacktrace symbolisation by default |  Critical | Backend | Tim Armstrong | Zoram Thanga |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-6615](https://issues.apache.org/jira/browse/IMPALA-6615) | An insert query using a CTE does not show the expected output when executed in Impala-shell |  Trivial | Clients | Luis E Martinez-Poblete | Fredy Wijaya |
| [IMPALA-6619](https://issues.apache.org/jira/browse/IMPALA-6619) | Alter table recover partitions creates unneeded partitions when faces percent sign |  Major | Frontend | Miklos Szurap | Fredy Wijaya |
| [IMPALA-5315](https://issues.apache.org/jira/browse/IMPALA-5315) | Cast to timestamp fails for YYYY-M-D format |  Major | Backend | Greg Rahn | Vincent Tran |
| [IMPALA-6614](https://issues.apache.org/jira/browse/IMPALA-6614) | ClientRequestState should use HS2 TOperationState states rather than Beeswax QueryState |  Minor | Backend | Daniel Hecht | Daniel Hecht |
| [IMPALA-6699](https://issues.apache.org/jira/browse/IMPALA-6699) | Impala doesn't handle Australian Daylight saving time properly |  Major | Backend | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-6739](https://issues.apache.org/jira/browse/IMPALA-6739) | Exception in ALTER TABLE SET statements |  Minor | Frontend | Adam Holley | Fredy Wijaya |
| [IMPALA-6719](https://issues.apache.org/jira/browse/IMPALA-6719) | refresh function case sensitivity |  Major | Frontend | Vuk Ercegovac | Fredy Wijaya |
| [IMPALA-6571](https://issues.apache.org/jira/browse/IMPALA-6571) | NullPointerException in SHOW CREATE TABLE for HBase tables |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-6771](https://issues.apache.org/jira/browse/IMPALA-6771) | Incorrect results introduced by IMPALA-6621 |  Blocker | Backend | Mostafa Mokhtar | Bikramjeet Vig |
| [IMPALA-6761](https://issues.apache.org/jira/browse/IMPALA-6761) | delimited-text-parser-test fails in ASAN build |  Blocker | Backend | Michael Ho | Zach Amsden |
| [IMPALA-6711](https://issues.apache.org/jira/browse/IMPALA-6711) | Flaky test: TestImpalaShellInteractive.test\_multiline\_queries\_in\_history |  Critical | Infrastructure | Taras Bobrovytsky | Tim Armstrong |
| [IMPALA-2717](https://issues.apache.org/jira/browse/IMPALA-2717) | impala-shell breaks on non-ascii characters in the resultset |  Minor | Clients | Marcell Szabo | Tim Armstrong |
| [IMPALA-6790](https://issues.apache.org/jira/browse/IMPALA-6790) | sqlparse needs to be upgraded in the Python environment |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-6884](https://issues.apache.org/jira/browse/IMPALA-6884) | test\_misaligned\_orc\_stripes fails for local fs tests |  Blocker | Backend | Vuk Ercegovac | Joe McDonnell |
| [IMPALA-6898](https://issues.apache.org/jira/browse/IMPALA-6898) | Dataload from scratch loads Kudu tables twice |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-6899](https://issues.apache.org/jira/browse/IMPALA-6899) | Dataload uses excessive HDFS commands |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-6889](https://issues.apache.org/jira/browse/IMPALA-6889) | test\_breakpad.py test\_minidump\_cleanup\_thread failing |  Critical | Infrastructure | Vuk Ercegovac | Lars Volker |
| [IMPALA-6906](https://issues.apache.org/jira/browse/IMPALA-6906) | test\_admission\_controller.TestAdmissionController.test\_memory\_rejection on S3 |  Critical | Frontend | David Knupp | Tim Armstrong |
| [IMPALA-6927](https://issues.apache.org/jira/browse/IMPALA-6927) | Crash when click Fragment Instances on web page |  Blocker | . | Quanlong Huang | Lars Volker |
| [IMPALA-6892](https://issues.apache.org/jira/browse/IMPALA-6892) | CheckHashAndDecrypt doesn't report disk and host where the verification failed |  Major | Backend | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-6885](https://issues.apache.org/jira/browse/IMPALA-6885) | test\_recover\_partitions.py test\_support\_all\_types fails |  Blocker | Frontend | Vuk Ercegovac | Vuk Ercegovac |
| [IMPALA-6902](https://issues.apache.org/jira/browse/IMPALA-6902) | query\_test.test\_udfs.TestUdfExecution.test\_native\_functions\_race failed during core/thrift build |  Blocker | Backend | David Knupp | Vuk Ercegovac |
| [IMPALA-6945](https://issues.apache.org/jira/browse/IMPALA-6945) | IMPALA-6892 doesn't clean pick to 2.x |  Blocker | Backend | Michael Brown | Tim Armstrong |
| [IMPALA-6340](https://issues.apache.org/jira/browse/IMPALA-6340) | There is no error when inserting an invalid value into a decimal column under decimal\_v2 |  Blocker | Backend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-6518](https://issues.apache.org/jira/browse/IMPALA-6518) | Fix the output type of a decimal union for decimal\_v2 |  Major | Frontend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-6882](https://issues.apache.org/jira/browse/IMPALA-6882) | Inline assembly instructions hoisted out of if(CpuInfo::IsSupported()) checks |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6934](https://issues.apache.org/jira/browse/IMPALA-6934) | Wrong results with EXISTS subquery containing ORDER BY, LIMIT, and OFFSET |  Blocker | Frontend | Alexander Behm | Zoltán Borók-Nagy |
| [IMPALA-6954](https://issues.apache.org/jira/browse/IMPALA-6954) | Kudu CTAS Loses Partitioning |  Critical | Frontend | Alan Jackoway | Thomas Tauber-Marshall |
| [IMPALA-6920](https://issues.apache.org/jira/browse/IMPALA-6920) | Multithreaded scans are not guaranteed to get a thread token immediately |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6931](https://issues.apache.org/jira/browse/IMPALA-6931) | TestQueryExpiration.test\_query\_expiration fails on ASAN with unexpected number of expired queries |  Blocker | Backend | David Knupp | Vuk Ercegovac |
| [IMPALA-6968](https://issues.apache.org/jira/browse/IMPALA-6968) | TestBlockVerificationGcmDisabled failure in exhaustive |  Critical | Infrastructure | Sailesh Mukil | Tim Armstrong |
| [IMPALA-6946](https://issues.apache.org/jira/browse/IMPALA-6946) | Hit DCHECK in impala::RleBatchDecoder\<unsigned int\>::GetRepeatedValue |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6970](https://issues.apache.org/jira/browse/IMPALA-6970) | DiskMgr::AllocateBuffersForRange crashes on failed DCHECK |  Blocker | Backend | Sailesh Mukil | Tim Armstrong |
| [IMPALA-6866](https://issues.apache.org/jira/browse/IMPALA-6866) | S3 and Isilon tests fail test\_exchange\_delay::test\_exchange\_large\_delay |  Critical | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-4850](https://issues.apache.org/jira/browse/IMPALA-4850) | Create table "comment" comes after "partitioned by" |  Minor | Docs | Joe McDonnell | Alexandra Rodoni |
| [IMPALA-6227](https://issues.apache.org/jira/browse/IMPALA-6227) | TestAdmissionControllerStress can be flaky |  Critical | Backend | Csaba Ringhofer | Tim Armstrong |
| [IMPALA-6908](https://issues.apache.org/jira/browse/IMPALA-6908) | IsConnResetTException() should include ECONNRESET |  Major | Distributed Exec | Michael Ho | Sailesh Mukil |
| [IMPALA-6980](https://issues.apache.org/jira/browse/IMPALA-6980) | Impala Doc: Impala can add comment with alter table |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-6972](https://issues.apache.org/jira/browse/IMPALA-6972) | Dataload is intermittently failing on 2.x |  Blocker | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-6974](https://issues.apache.org/jira/browse/IMPALA-6974) | Static and shared compilation don't have compatible ccache entries |  Major | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-6966](https://issues.apache.org/jira/browse/IMPALA-6966) | Estimated Memory in Catalogd webpage is not sorted correctly |  Major | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-7010](https://issues.apache.org/jira/browse/IMPALA-7010) | Multiple flaky tests failing with MemLimitExceeded on S3 |  Blocker | Infrastructure | Sailesh Mukil | Tim Armstrong |
| [IMPALA-6337](https://issues.apache.org/jira/browse/IMPALA-6337) | Infinite loop in impala\_shell.py |  Major | Clients | Jin Chul Kim | Fredy Wijaya |
| [IMPALA-6907](https://issues.apache.org/jira/browse/IMPALA-6907) | ImpalaServer::MembershipCallback() may not remove all stale connections to disconnected Impalad nodes |  Major | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-6221](https://issues.apache.org/jira/browse/IMPALA-6221) | Kudu partition clause doc is wrong |  Major | Docs | Thomas Tauber-Marshall | Alexandra Rodoni |
| [IMPALA-7022](https://issues.apache.org/jira/browse/IMPALA-7022) | TestQueries.test\_subquery: Subquery must not return more than one row |  Blocker | Frontend | Joe McDonnell | Zoltán Borók-Nagy |
| [IMPALA-6995](https://issues.apache.org/jira/browse/IMPALA-6995) | False-positive DCHECK when converting whitespace-only strings to timestamp |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7025](https://issues.apache.org/jira/browse/IMPALA-7025) | PlannerTest.testTableSample has wrong mem-reservation |  Critical | Frontend | Joe McDonnell | Tim Armstrong |
| [IMPALA-7017](https://issues.apache.org/jira/browse/IMPALA-7017) | TestMetadataReplicas.test\_catalog\_restart fails with exception |  Blocker | Frontend | Joe McDonnell | Vuk Ercegovac |
| [IMPALA-7000](https://issues.apache.org/jira/browse/IMPALA-7000) | Wrong info about Impala dedicated executors |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-6827](https://issues.apache.org/jira/browse/IMPALA-6827) | airlines\_parquet data not available in dropbox |  Major | Docs | sathishkumar paramasivam | Alexandra Rodoni |
| [IMPALA-7032](https://issues.apache.org/jira/browse/IMPALA-7032) | Codegen crash when UNIONing NULL and CHAR(N) |  Blocker | Backend | Balazs Jeszenszky | Lars Volker |
| [IMPALA-7058](https://issues.apache.org/jira/browse/IMPALA-7058) | RC and Seq fuzz tests cause crash |  Blocker | Backend | Dimitris Tsirogiannis | Tim Armstrong |
| [IMPALA-3833](https://issues.apache.org/jira/browse/IMPALA-3833) | Fix invalid data handling in Sequence and RCFile scanners |  Critical | Backend | Tim Armstrong | Pranay Singh |
| [IMPALA-7048](https://issues.apache.org/jira/browse/IMPALA-7048) | Failed test: query\_test.test\_parquet\_page\_index.TestHdfsParquetTableIndexWriter.test\_write\_index\_many\_columns\_tables |  Blocker | Backend | Dimitris Tsirogiannis | Zoltán Borók-Nagy |
| [IMPALA-6998](https://issues.apache.org/jira/browse/IMPALA-6998) | test\_bloom\_wait\_time fails due to late arrival of filters on Isilon |  Critical | Infrastructure | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-6813](https://issues.apache.org/jira/browse/IMPALA-6813) | Hedged reads metrics broken when scanning non-HDFS based table |  Blocker | Backend | Mostafa Mokhtar | Sailesh Mukil |
| [IMPALA-7023](https://issues.apache.org/jira/browse/IMPALA-7023) | TestInsertQueries.test\_insert\_overwrite fails by hitting memory limit |  Blocker | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-7055](https://issues.apache.org/jira/browse/IMPALA-7055) | test\_avro\_writer failing on upstream Jenkins (Expected exception: "Writing to table format AVRO is not supported") |  Blocker | Backend | David Knupp | Tim Armstrong |
| [IMPALA-7043](https://issues.apache.org/jira/browse/IMPALA-7043) | Failure in HBase splitting should not fail dataload |  Blocker | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-7067](https://issues.apache.org/jira/browse/IMPALA-7067) | sleep(100000) command from test\_shell\_commandline.py can hang around and cause test\_metrics\_are\_zero to fail |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6933](https://issues.apache.org/jira/browse/IMPALA-6933) | test\_kudu.TestCreateExternalTable on S3 failing with "AlreadyExistsException: Database already exists" |  Critical | Infrastructure | David Knupp | Vuk Ercegovac |
| [IMPALA-7073](https://issues.apache.org/jira/browse/IMPALA-7073) | Failed test: query\_test.test\_scanners.TestScannerReservation.test\_scanners |  Blocker | Backend | Dimitris Tsirogiannis | Tim Armstrong |
| [IMPALA-7061](https://issues.apache.org/jira/browse/IMPALA-7061) | PlannerTests should assign HBase splits as part of the test |  Blocker | Frontend, Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-6997](https://issues.apache.org/jira/browse/IMPALA-6997) | Query execution should notice UDF MemLimitExceeded errors more quickly |  Major | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-6990](https://issues.apache.org/jira/browse/IMPALA-6990) | TestClientSsl.test\_tls\_v12 failing due to Python SSL error |  Blocker | . | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-7088](https://issues.apache.org/jira/browse/IMPALA-7088) | Parallel data load breaks load-data.py if loading data on a real cluster |  Blocker | Infrastructure | David Knupp | Joe McDonnell |
| [IMPALA-7104](https://issues.apache.org/jira/browse/IMPALA-7104) | test\_bloom\_wait\_time failing with timeout on asan |  Blocker | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-6020](https://issues.apache.org/jira/browse/IMPALA-6020) | REFRESH statement cannot detect HDFS block movement |  Major | Docs | Jim Apple | Alexandra Rodoni |
| [IMPALA-6947](https://issues.apache.org/jira/browse/IMPALA-6947) | kudu: GetTableLocations RPC timing out with ASAN |  Critical | Backend | Michael Brown | Thomas Tauber-Marshall |
| [IMPALA-7008](https://issues.apache.org/jira/browse/IMPALA-7008) | TestSpillingDebugActionDimensions.test\_spilling test setup fails |  Blocker | Infrastructure | Sailesh Mukil | Lars Volker |
| [IMPALA-7100](https://issues.apache.org/jira/browse/IMPALA-7100) | [DOCS] extend hardware requirements to have consistent backend memory |  Major | Docs | Balazs Jeszenszky | Alexandra Rodoni |
| [IMPALA-7120](https://issues.apache.org/jira/browse/IMPALA-7120) | GVD failed talking to oss.sonatype.org "Bad Gateway" |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7090](https://issues.apache.org/jira/browse/IMPALA-7090) | EqualityDisjunctsToInRule should respect the limit on the number of children in an expr |  Critical | . | Tianyi Wang | Tianyi Wang |
| [IMPALA-6956](https://issues.apache.org/jira/browse/IMPALA-6956) | check\_num\_executing fails test\_query\_expiration |  Blocker | Backend | Vuk Ercegovac | Vuk Ercegovac |
| [IMPALA-7124](https://issues.apache.org/jira/browse/IMPALA-7124) | Error during data load: Can't recover key from keystore file |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7089](https://issues.apache.org/jira/browse/IMPALA-7089) | test\_kudu\_dml\_reporting failing |  Critical | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-5380](https://issues.apache.org/jira/browse/IMPALA-5380) | impala\_authorization.html should mention other filesystems in |  Major | Docs | Lars Volker | Alexandra Rodoni |
| [IMPALA-7101](https://issues.apache.org/jira/browse/IMPALA-7101) | Builds are timing out/hanging |  Blocker | . | Thomas Tauber-Marshall | Daniel Hecht |
| [IMPALA-7105](https://issues.apache.org/jira/browse/IMPALA-7105) | Some fe tests fail when run standalone |  Major | Frontend | Todd Lipcon | Todd Lipcon |
| [IMPALA-7143](https://issues.apache.org/jira/browse/IMPALA-7143) | TestDescribeTableResults started failing because of OwnerType |  Blocker | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7062](https://issues.apache.org/jira/browse/IMPALA-7062) | Fix unsafe RuntimeProfile::SortChildren() API |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5740](https://issues.apache.org/jira/browse/IMPALA-5740) | Clarify STRING size limit |  Critical | Docs | Tim Armstrong | Alexandra Rodoni |
| [IMPALA-7099](https://issues.apache.org/jira/browse/IMPALA-7099) | test\_unsupported\_text\_compression fails: Expected one file per partition dir |  Major | . | Thomas Tauber-Marshall | Daniel Hecht |
| [IMPALA-5918](https://issues.apache.org/jira/browse/IMPALA-5918) | Improve the documentation around REFRESH and INVALIDATE METADATA |  Major | Docs | Dimitris Tsirogiannis | Alexandra Rodoni |
| [IMPALA-6987](https://issues.apache.org/jira/browse/IMPALA-6987) | Impala Doc: Clear up Impala' invalidate metadata page |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7108](https://issues.apache.org/jira/browse/IMPALA-7108) |  IllegalStateException hit during CardinalityCheckNode.\<init\> |  Major | Frontend | Vincent Tran | Zoltán Borók-Nagy |
| [IMPALA-7109](https://issues.apache.org/jira/browse/IMPALA-7109) | TestPartitionMetadata::test\_multiple\_partitions\_same\_location uses incorrect paths |  Minor | Infrastructure | Daniel Hecht | Daniel Hecht |
| [IMPALA-6408](https://issues.apache.org/jira/browse/IMPALA-6408) | [DOCS] Description of "shuffle" hint does not mention changes in IMPALA-3930 |  Minor | Docs | Csaba Ringhofer | Alexandra Rodoni |
| [IMPALA-7156](https://issues.apache.org/jira/browse/IMPALA-7156) | Many authorization tests failed with "User 'jenkins' does not have privileges to access" |  Blocker | Infrastructure | Tim Armstrong | Fredy Wijaya |
| [IMPALA-7144](https://issues.apache.org/jira/browse/IMPALA-7144) | Reenable tests disabled by IMPALA-7143 |  Blocker | Frontend | Tim Armstrong | Fredy Wijaya |
| [IMPALA-7145](https://issues.apache.org/jira/browse/IMPALA-7145) | Leak of memory from OpenSSL when spill-to-disk encryption is enabled |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7158](https://issues.apache.org/jira/browse/IMPALA-7158) | Incorrect init of HdfsScanNodeBase::progress\_ |  Minor | Backend | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-2751](https://issues.apache.org/jira/browse/IMPALA-2751) | quote in WITH block's comment breaks shell |  Minor | Clients | Marcell Szabo | Fredy Wijaya |
| [IMPALA-6929](https://issues.apache.org/jira/browse/IMPALA-6929) | Create Kudu table syntax does not allow multi-column range partitions |  Major | Frontend | Dan Burkert | Thomas Tauber-Marshall |
| [IMPALA-7165](https://issues.apache.org/jira/browse/IMPALA-7165) | Impala Doc: Example for Dynamic Partition Pruning need to be improved |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-2195](https://issues.apache.org/jira/browse/IMPALA-2195) | Improper handling of comments in queries |  Minor | Clients | Bharath Vissapragada | Fredy Wijaya |
| [IMPALA-7174](https://issues.apache.org/jira/browse/IMPALA-7174) | TestAdmissionController.test\_cancellation failed with incorrect total-admitted metric |  Blocker | Backend | Tianyi Wang | Tim Armstrong |
| [IMPALA-7111](https://issues.apache.org/jira/browse/IMPALA-7111) | ASAN heap-use-after-free in impala::HdfsPluginTextScanner::CheckPluginEnabled |  Blocker | Backend | Lars Volker | Tim Armstrong |
| [IMPALA-7130](https://issues.apache.org/jira/browse/IMPALA-7130) | impala-shell -b / --kerberos\_host\_fqdn flag overrides value passed in via -i |  Critical | Clients | Vincent Tran | Vincent Tran |
| [IMPALA-6036](https://issues.apache.org/jira/browse/IMPALA-6036) | Queries in admission control pool queue stay in the queue even after end client had already disconnected. |  Major | Frontend | Sudarshan | Bikramjeet Vig |
| [IMPALA-7056](https://issues.apache.org/jira/browse/IMPALA-7056) | Changing Text Delimiter Does Not Work |  Major | Catalog, Docs | Alan Jackoway | Alexandra Rodoni |
| [IMPALA-6812](https://issues.apache.org/jira/browse/IMPALA-6812) | Kudu scans not returning all rows |  Critical | . | Tianyi Wang | Thomas Tauber-Marshall |
| [IMPALA-7181](https://issues.apache.org/jira/browse/IMPALA-7181) | Fix flaky test shell/test\_shell\_commandline.py::TestImpalaShell::test\_socket\_opening |  Blocker | . | Vincent Tran | Vincent Tran |
| [IMPALA-7150](https://issues.apache.org/jira/browse/IMPALA-7150) | Crash in Reflection::invoke\_method() |  Critical | Backend, Frontend | Lars Volker | Vuk Ercegovac |
| [IMPALA-7169](https://issues.apache.org/jira/browse/IMPALA-7169) | TestHdfsEncryption::()::test\_drop\_partition\_encrypt fails to find file |  Critical | Infrastructure | Lars Volker | Tianyi Wang |
| [IMPALA-7187](https://issues.apache.org/jira/browse/IMPALA-7187) | Fix test\_group\_impersonation when running inside Docker |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7119](https://issues.apache.org/jira/browse/IMPALA-7119) | HBase tests failing with RetriesExhausted and "RuntimeException: couldn't retrieve HBase table" |  Major | . | Tim Armstrong | Joe McDonnell |
| [IMPALA-7193](https://issues.apache.org/jira/browse/IMPALA-7193) | Local filesystem failes with fs.defaultFS (file:/tmp) is not supported |  Critical | Infrastructure | Tianyi Wang | Joe McDonnell |
| [IMPALA-7161](https://issues.apache.org/jira/browse/IMPALA-7161) | Bootstrap's handling of JAVA\_HOME needs improvement |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-7175](https://issues.apache.org/jira/browse/IMPALA-7175) | In a local FS build, test\_native\_functions\_race thinks there are 2 impalads where there should be 1 |  Critical | Infrastructure | Tianyi Wang | Vuk Ercegovac |
| [IMPALA-7044](https://issues.apache.org/jira/browse/IMPALA-7044) | int32 overflow in HdfsTableSink::CreateNewTmpFile() |  Critical | Backend | Lars Volker | Lars Volker |
| [IMPALA-6816](https://issues.apache.org/jira/browse/IMPALA-6816) | Statestore spends a lot of time in GetMinSubscriberTopicVersion() |  Minor | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-7210](https://issues.apache.org/jira/browse/IMPALA-7210) | Global debug\_action should use case insensitive comparisons |  Major | Backend | Daniel Hecht | Daniel Hecht |
| [IMPALA-7237](https://issues.apache.org/jira/browse/IMPALA-7237) | Parsing bug in ParseSMaps() |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7240](https://issues.apache.org/jira/browse/IMPALA-7240) | TestSpillingDebugActionDimensions.test\_spilling\_regression\_exhaustive hits memory limit on exhaustive tests |  Blocker | Backend | Joe McDonnell | Thomas Tauber-Marshall |
| [IMPALA-7224](https://issues.apache.org/jira/browse/IMPALA-7224) | UpdateCatalogMetrics very slow when there are many tables |  Major | Catalog | Todd Lipcon | Todd Lipcon |
| [IMPALA-6031](https://issues.apache.org/jira/browse/IMPALA-6031) | Distributed plan describes coordinator-only nodes as scanning |  Major | Frontend | Jim Apple | Pooja Nilangekar |
| [IMPALA-6223](https://issues.apache.org/jira/browse/IMPALA-6223) | Gracefully handle malformed 'with' queries in impala-shell |  Minor | Clients | Bharath Vissapragada | Pooja Nilangekar |
| [IMPALA-7254](https://issues.apache.org/jira/browse/IMPALA-7254) | Inconsistent decimal behavior for the IN predicate |  Major | Frontend | Taras Bobrovytsky | Fredy Wijaya |
| [IMPALA-7216](https://issues.apache.org/jira/browse/IMPALA-7216) | Invalid SQL generated by toSql functions in CreateViewStmt & AlterViewStmt |  Major | . | Pooja Nilangekar | Pooja Nilangekar |
| [IMPALA-7239](https://issues.apache.org/jira/browse/IMPALA-7239) | Mitigate ParseSmaps() overhead |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7095](https://issues.apache.org/jira/browse/IMPALA-7095) | Improve scanner thread counters in HDFS and Kudu scans |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7260](https://issues.apache.org/jira/browse/IMPALA-7260) | Query with decimal binary predicate needlessly fails |  Major | Frontend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-7211](https://issues.apache.org/jira/browse/IMPALA-7211) | Query with a decimal between predicate needlessly fails |  Critical | Frontend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-7275](https://issues.apache.org/jira/browse/IMPALA-7275) | Create table with insufficient privileges should not show table |  Major | Frontend | Adam Holley | Adam Holley |
| [IMPALA-7279](https://issues.apache.org/jira/browse/IMPALA-7279) | test\_rows\_availability failing: incompatible regex |  Major | Infrastructure | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-6810](https://issues.apache.org/jira/browse/IMPALA-6810) | query\_test::test\_runtime\_filters.py::test\_row\_filters fails when run against an external cluster |  Critical | Infrastructure | David Knupp | Michael Brown |
| [IMPALA-7288](https://issues.apache.org/jira/browse/IMPALA-7288) | Codegen crash in FinalizeModule() |  Blocker | Backend | Balazs Jeszenszky | Bikramjeet Vig |
| [IMPALA-6086](https://issues.apache.org/jira/browse/IMPALA-6086) | Use of permanent function should require SELECT privilege on DB |  Minor | Catalog, Security | Zoram Thanga | Zoram Thanga |
| [IMPALA-7106](https://issues.apache.org/jira/browse/IMPALA-7106) | Log the original and rewritten SQL when SQL rewrite fails |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7132](https://issues.apache.org/jira/browse/IMPALA-7132) | run\_clang\_tidy.sh produces unrelated output |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-7199](https://issues.apache.org/jira/browse/IMPALA-7199) | Need to have scripts to generate coverage |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-7238](https://issues.apache.org/jira/browse/IMPALA-7238) | test\_kudu.TestCreateExternalTable sees unique database already exists |  Critical | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-7251](https://issues.apache.org/jira/browse/IMPALA-7251) | Fix QueryMaintenance calls in Aggregators |  Blocker | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-7294](https://issues.apache.org/jira/browse/IMPALA-7294) | TABLESAMPLE clause allocates arrays based on total file count instead of selected partitions |  Minor | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7059](https://issues.apache.org/jira/browse/IMPALA-7059) | Inconsistent privilege model between DESCRIBE and DESCRIBE DATABASE |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-6881](https://issues.apache.org/jira/browse/IMPALA-6881) | COMPUTE STATS should check for SELECT privilege at analysis |  Minor | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7304](https://issues.apache.org/jira/browse/IMPALA-7304) | Impala shouldn't write column indexes for float columns until PARQUET-1222 is resolved |  Blocker | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-3813](https://issues.apache.org/jira/browse/IMPALA-3813) | How to handle replication factor while creating KUDU table through impala |  Major | Docs, Frontend | Ravi sharma | Alexandra Rodoni |
| [IMPALA-6389](https://issues.apache.org/jira/browse/IMPALA-6389) | Crash when querying table with "\\0" as a row delimiter |  Blocker | Backend | Tim Armstrong | Zach Amsden |
| [IMPALA-8408](https://issues.apache.org/jira/browse/IMPALA-8408) | Failure to load metadata for .deflate compressed text files |  Major | Catalog | Balazs Jeszenszky |  |
| [IMPALA-8446](https://issues.apache.org/jira/browse/IMPALA-8446) | Create a unit test for Admission Controller |  Major | . | Andrew Sherman | Andrew Sherman |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-6630](https://issues.apache.org/jira/browse/IMPALA-6630) | Test casting from timestamp to string with leading and trailing whitespace |  Minor | Backend | Tim Armstrong | Vincent Tran |
| [IMPALA-6560](https://issues.apache.org/jira/browse/IMPALA-6560) | Come up with reliable regression test for IMPALA-2376 |  Major | Backend | Tim Armstrong | Tim Armstrong |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-6598](https://issues.apache.org/jira/browse/IMPALA-6598) | Investigate memory requirement regression from scanner buffer pool change |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6587](https://issues.apache.org/jira/browse/IMPALA-6587) | Crash in DiskMgr::AllocateBuffersForRange |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6678](https://issues.apache.org/jira/browse/IMPALA-6678) | Better estimate of per-column compressed data size for low-NDV columns. |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6679](https://issues.apache.org/jira/browse/IMPALA-6679) | Don't claim ideal reservation in scanner until actually processing scan ranges |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6314](https://issues.apache.org/jira/browse/IMPALA-6314) | Add run time scalar subquery check for uncorrelated subqueries |  Major | Backend, Frontend | Tim Armstrong | Zoltán Borók-Nagy |
| [IMPALA-6961](https://issues.apache.org/jira/browse/IMPALA-6961) | Impala Doc: Doc --enable\_minidumps flag |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-6676](https://issues.apache.org/jira/browse/IMPALA-6676) | Impala Doc: SHOW CREATE VIEW |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-6916](https://issues.apache.org/jira/browse/IMPALA-6916) | Implement COMMENT ON DATABASE |  Minor | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-6909](https://issues.apache.org/jira/browse/IMPALA-6909) | Impala 2.13 Doc: SET ROW FORMAT in ALTER TABLE |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-5216](https://issues.apache.org/jira/browse/IMPALA-5216) | Admission control queuing should be asynchronous |  Major | Backend | Daniel Hecht | Bikramjeet Vig |
| [IMPALA-7016](https://issues.apache.org/jira/browse/IMPALA-7016) | Implement ALTER DATABASE SET OWNER |  Major | Frontend | Adam Holley | Fredy Wijaya |
| [IMPALA-6917](https://issues.apache.org/jira/browse/IMPALA-6917) | Implement COMMENT ON TABLE/VIEW |  Minor | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-6035](https://issues.apache.org/jira/browse/IMPALA-6035) | Add query option that rejects queries based on query complexity |  Major | Distributed Exec | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-7179](https://issues.apache.org/jira/browse/IMPALA-7179) | Consider changing --allow\_multiple\_scratch\_dirs\_per\_device default |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7135](https://issues.apache.org/jira/browse/IMPALA-7135) | Skeleton implementation of LocalCatalog |  Major | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7141](https://issues.apache.org/jira/browse/IMPALA-7141) | Extract interfaces for partition pruning prior to fetching partitions |  Major | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7207](https://issues.apache.org/jira/browse/IMPALA-7207) | Make Coordinator ExecState an atomic enum |  Major | Backend, Distributed Exec | Daniel Hecht | Daniel Hecht |
| [IMPALA-7205](https://issues.apache.org/jira/browse/IMPALA-7205) | Respond to ReportExecStatus() RPC with CANCELLED whenever query execution has terminated |  Major | Distributed Exec | Daniel Hecht | Daniel Hecht |
| [IMPALA-4784](https://issues.apache.org/jira/browse/IMPALA-4784) | Remove InProcessStatestore |  Major | Backend, Distributed Exec | Henry Robinson | Sailesh Mukil |
| [IMPALA-6918](https://issues.apache.org/jira/browse/IMPALA-6918) | Implement COMMENT ON COLUMN |  Minor | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7137](https://issues.apache.org/jira/browse/IMPALA-7137) | Support configuring impalad to use the LocalCatalog |  Major | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7128](https://issues.apache.org/jira/browse/IMPALA-7128) | Extract interfaces for frontend interaction with catalog objects |  Major | Catalog, Frontend | Todd Lipcon | Todd Lipcon |
| [IMPALA-5587](https://issues.apache.org/jira/browse/IMPALA-5587) | ReleaseResources() should not destroy control structures |  Major | Backend | Daniel Hecht |  |
| [IMPALA-6988](https://issues.apache.org/jira/browse/IMPALA-6988) | Implement ALTER TABLE/VIEW SET OWNER |  Major | Frontend | Adam Holley | Fredy Wijaya |
| [IMPALA-7201](https://issues.apache.org/jira/browse/IMPALA-7201) | Support DDL in LocalCatalog using existing catalogd |  Major | . | Todd Lipcon | Todd Lipcon |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5763](https://issues.apache.org/jira/browse/IMPALA-5763) | Setting logbufsecs to 0 causes Impala to spin on one core |  Minor | Docs | Lars Volker | Alexandra Rodoni |
| [IMPALA-6780](https://issues.apache.org/jira/browse/IMPALA-6780) | test\_recover\_paritions.py have always-true asserts |  Major | . | Philip Martin | Alexander Behm |
| [IMPALA-6959](https://issues.apache.org/jira/browse/IMPALA-6959) | Update HAProxy configuration sample for Impala |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-5502](https://issues.apache.org/jira/browse/IMPALA-5502) | "\*DBC Connector for Impala" is without context |  Minor | Docs | Jim Apple | Alexandra Rodoni |
| [IMPALA-5604](https://issues.apache.org/jira/browse/IMPALA-5604) | Document DISABLE\_CODEGEN\_ROWS\_THRESHOLD |  Major | Docs | Tim Armstrong | Tim Armstrong |
| [IMPALA-7050](https://issues.apache.org/jira/browse/IMPALA-7050) | Impala Doc: Document inc\_stats\_size\_limit\_bytes command line option for Impalad |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7190](https://issues.apache.org/jira/browse/IMPALA-7190) | Remove unsupported format write support |  Major | Backend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-8155](https://issues.apache.org/jira/browse/IMPALA-8155) | Switch to Impala-lzo/2.x for Impala-2.x |  Major | . | Quanlong Huang | Quanlong Huang |


