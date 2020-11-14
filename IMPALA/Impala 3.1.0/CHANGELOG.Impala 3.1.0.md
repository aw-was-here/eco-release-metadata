
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

## Release Impala 3.1.0 - 2018-12-06



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-6644](https://issues.apache.org/jira/browse/IMPALA-6644) | Add last heartbeat timestamp into Statestore metric |  Minor | Backend | Mala Chikka Kempanna | Pooja Nilangekar |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5717](https://issues.apache.org/jira/browse/IMPALA-5717) | Support reading primitive types from ORC format files |  Major | Backend, Frontend | Quanlong Huang | Quanlong Huang |
| [IMPALA-5842](https://issues.apache.org/jira/browse/IMPALA-5842) | Write page index in Parquet files |  Critical | Backend | Lars Volker | Zoltán Borók-Nagy |
| [IMPALA-4848](https://issues.apache.org/jira/browse/IMPALA-4848) | add WIDTH\_BUCKET() function |  Major | Backend, Frontend | Greg Rahn | Anuj Phadke |
| [IMPALA-6373](https://issues.apache.org/jira/browse/IMPALA-6373) | Allow type widening primitive conversion on parquet tables |  Major | Backend | Patrick Bayne | Fredy Wijaya |
| [IMPALA-1760](https://issues.apache.org/jira/browse/IMPALA-1760) | Add Impala SQL command to gracefully shut down an Impala daemon |  Critical | Distributed Exec | Henry Robinson | Tim Armstrong |
| [IMPALA-110](https://issues.apache.org/jira/browse/IMPALA-110) | Add support for multiple distinct operators in the same query block |  Major | Backend, Frontend | Greg Rahn | Thomas Tauber-Marshall |
| [IMPALA-589](https://issues.apache.org/jira/browse/IMPALA-589) | add sql function to return the impalad coordinator hostname |  Minor | Frontend | Greg Rahn | Andrew Sherman |
| [IMPALA-5614](https://issues.apache.org/jira/browse/IMPALA-5614) | Add COMMENT ON syntax to support comments on all objects |  Minor | Frontend | Greg Rahn | Fredy Wijaya |
| [IMPALA-376](https://issues.apache.org/jira/browse/IMPALA-376) | Built-in functions for parsing JSON |  Minor | Backend | Zoltan Toth-Czifra | Quanlong Huang |
| [IMPALA-8679](https://issues.apache.org/jira/browse/IMPALA-8679) | Make the query options set in the dynamic resource pool/admission control un-overridable in the user session |  Major | Frontend | Adriano |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-6847](https://issues.apache.org/jira/browse/IMPALA-6847) | Consider adding workaround for high memory estimates in admission control |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6837](https://issues.apache.org/jira/browse/IMPALA-6837) | Allow setting multiple allowed networks in distcc server script |  Minor | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6904](https://issues.apache.org/jira/browse/IMPALA-6904) | Allow configuration of stress test binary search cutoff point |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6905](https://issues.apache.org/jira/browse/IMPALA-6905) | Allow use of row\_regex with VERIFY\_IS\_SUBSET and VERIFY\_IS\_SUPERSET |  Minor | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-4835](https://issues.apache.org/jira/browse/IMPALA-4835) | HDFS scans should operate with a constrained number of I/O buffers |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5690](https://issues.apache.org/jira/browse/IMPALA-5690) | Upgrade Thrift version to 0.9.3 |  Critical | Backend | Henry Robinson | Tianyi Wang |
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
| [IMPALA-5662](https://issues.apache.org/jira/browse/IMPALA-5662) | Log all information relevant to admission control decision making |  Major | Backend | Balazs Jeszenszky | Bikramjeet Vig |
| [IMPALA-3134](https://issues.apache.org/jira/browse/IMPALA-3134) | Admission controller should not assume all backends have same proc mem limit |  Minor | Backend | Matthew Jacobs | Bikramjeet Vig |
| [IMPALA-5642](https://issues.apache.org/jira/browse/IMPALA-5642) | [DOCS] Impala restrictions on using Hive UDFs |  Minor | Docs | Bharath Vissapragada | Alexandra Rodoni |
| [IMPALA-7011](https://issues.apache.org/jira/browse/IMPALA-7011) | Cleanups around PlanRootSink::CloseConsumer() |  Minor | Backend | Daniel Hecht | Daniel Hecht |
| [IMPALA-7146](https://issues.apache.org/jira/browse/IMPALA-7146) | log session ID in Impala daemon log |  Major | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-7071](https://issues.apache.org/jira/browse/IMPALA-7071) | Make get\_fs\_path() idempotent |  Minor | Infrastructure | Daniel Hecht | Daniel Hecht |
| [IMPALA-6953](https://issues.apache.org/jira/browse/IMPALA-6953) | Improve encapsulation within DiskIoMgr |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5931](https://issues.apache.org/jira/browse/IMPALA-5931) | Don't synthesize block metadata in the catalog for S3/ADLS |  Major | Catalog | Daniel Hecht | Vuk Ercegovac |
| [IMPALA-7078](https://issues.apache.org/jira/browse/IMPALA-7078) | Selective Avro scans of wide tables use more memory than necessary |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-2346](https://issues.apache.org/jira/browse/IMPALA-2346) | Create unit test that exposes (now fixed) disk IO mgr race |  Minor | Backend | Skye Wanderman-Milne |  |
| [IMPALA-5552](https://issues.apache.org/jira/browse/IMPALA-5552) | Proxy user list should support groups |  Critical | Frontend | Tristan Stevens | Fredy Wijaya |
| [IMPALA-5168](https://issues.apache.org/jira/browse/IMPALA-5168) | Codegen hash computation in DataStreamSender::Send for partition exchange. |  Major | Backend | Mostafa Mokhtar | Michael Ho |
| [IMPALA-6942](https://issues.apache.org/jira/browse/IMPALA-6942) | "Cancelled due to unreachable impalad(s)" error message is misleading |  Major | Backend | Daniel Hecht | Daniel Hecht |
| [IMPALA-7157](https://issues.apache.org/jira/browse/IMPALA-7157) | Avoid unnecessarily pretty printing profiles per fragment instance |  Minor | Distributed Exec | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-6835](https://issues.apache.org/jira/browse/IMPALA-6835) | Improve Kudu scanner error messages to include the table name and the plan node id |  Major | Backend | yyzzjj | Pooja Nilangekar |
| [IMPALA-7171](https://issues.apache.org/jira/browse/IMPALA-7171) | Add docs for Kudu insert partitioning/sorting |  Major | Docs | Thomas Tauber-Marshall | Alexandra Rodoni |
| [IMPALA-6969](https://issues.apache.org/jira/browse/IMPALA-6969) | Profile doesn't include the reason that a query couldn't be dequeued from admission controller |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4970](https://issues.apache.org/jira/browse/IMPALA-4970) | Record identity of largest latency ExecQueryFInstances() RPC per query |  Major | Distributed Exec | Henry Robinson | Rahul Shivu Mahadev |
| [IMPALA-7115](https://issues.apache.org/jira/browse/IMPALA-7115) | Set a default THREAD\_RESERVATION\_LIMIT value |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3307](https://issues.apache.org/jira/browse/IMPALA-3307) | add support for IANA time zone database |  Major | Backend | Marcell Szabo | Attila Jeges |
| [IMPALA-7121](https://issues.apache.org/jira/browse/IMPALA-7121) | Clean up partitionIds\_ member from HdfsTable |  Major | Catalog | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-7180](https://issues.apache.org/jira/browse/IMPALA-7180) | Pin Impala CDH dependencies |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7191](https://issues.apache.org/jira/browse/IMPALA-7191) | Daemons should call srand() early in main rather than at random locations |  Major | Backend | Daniel Hecht | Daniel Hecht |
| [IMPALA-7082](https://issues.apache.org/jira/browse/IMPALA-7082) | Show Human Readable Size in Query Backend Page |  Minor | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-6425](https://issues.apache.org/jira/browse/IMPALA-6425) | Change Mempool memory allocation size to be \<1MB to avoid allocating from CentralFreeList |  Major | Backend | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-6305](https://issues.apache.org/jira/browse/IMPALA-6305) | Allow column definitions in ALTER VIEW |  Major | Frontend | Alexander Behm | Pooja Nilangekar |
| [IMPALA-7215](https://issues.apache.org/jira/browse/IMPALA-7215) | Implement a templatized CountingBarrier |  Major | . | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-6802](https://issues.apache.org/jira/browse/IMPALA-6802) | Clean up tests in AuthorizationTest |  Critical | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7185](https://issues.apache.org/jira/browse/IMPALA-7185) | Reduce statestore frequency for custom cluster tests by default |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6883](https://issues.apache.org/jira/browse/IMPALA-6883) | [DOCS] Clean up Impala authorization doc for 3.x |  Major | Docs | Fredy Wijaya | Alexandra Rodoni |
| [IMPALA-6625](https://issues.apache.org/jira/browse/IMPALA-6625) | Skip dictionary and collection conjunct assignment for non-Parquet scans. |  Critical | Frontend | Alexander Behm | Pooja Nilangekar |
| [IMPALA-7006](https://issues.apache.org/jira/browse/IMPALA-7006) | Rebase KRPC onto Kudu upstream repository |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-7295](https://issues.apache.org/jira/browse/IMPALA-7295) | Remove IMPALA\_MINICLUSTER\_PROFILE=2 |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7014](https://issues.apache.org/jira/browse/IMPALA-7014) | Disable stacktrace symbolisation by default |  Critical | Backend | Tim Armstrong | Zoram Thanga |
| [IMPALA-7314](https://issues.apache.org/jira/browse/IMPALA-7314) | Impala doc generation should fail when there is an error |  Minor | Docs, Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7252](https://issues.apache.org/jira/browse/IMPALA-7252) | Backport rate limiting of fadvise calls into toolchain glog |  Major | Backend | Todd Lipcon | Tianyi Wang |
| [IMPALA-6299](https://issues.apache.org/jira/browse/IMPALA-6299) | IRBuilder codegen should using LLVMCodeGen::cpu\_attrs instead of CpuInfo to determine valid instructions |  Major | Backend | Tim Armstrong | Pooja Nilangekar |
| [IMPALA-7291](https://issues.apache.org/jira/browse/IMPALA-7291) | [DOCS] Document recommendation to use VARCHAR or STRING instead of CHAR(N) |  Major | Docs | Balazs Jeszenszky | Alexandra Rodoni |
| [IMPALA-7330](https://issues.apache.org/jira/browse/IMPALA-7330) | Make the table metadata refresh after "LOAD" commands incremental |  Major | Catalog | Bharath Vissapragada | Todd Lipcon |
| [IMPALA-7340](https://issues.apache.org/jira/browse/IMPALA-7340) | Clarify which fields belong in "descriptor" vs "full" catalog thrift objects |  Minor | Catalog | Todd Lipcon | Todd Lipcon |
| [IMPALA-7296](https://issues.apache.org/jira/browse/IMPALA-7296) | Soft limit for memory queue in scan node row batch queue |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-1624](https://issues.apache.org/jira/browse/IMPALA-1624) | Allow toggling --quiet and -B settings interactively in impala-shell |  Minor | Clients | John Russell | Nghia Le |
| [IMPALA-7297](https://issues.apache.org/jira/browse/IMPALA-7297) | Reject reservation increase if it would exceed soft limit |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7381](https://issues.apache.org/jira/browse/IMPALA-7381) | Prevent build failure after switching to a new CDH\_BUILD\_NUMBER |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7393](https://issues.apache.org/jira/browse/IMPALA-7393) | Test infra should log query IDs |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6335](https://issues.apache.org/jira/browse/IMPALA-6335) | Remove the unnecessary decorator "pytest.mark.execute\_serially" from tests which can be run in parallel |  Minor | Infrastructure | Jin Chul Kim | Todd Lipcon |
| [IMPALA-7394](https://issues.apache.org/jira/browse/IMPALA-7394) | Don't print stack trace in ImpalaServer::ExpireSessions() |  Minor | Backend | Michael Ho | Michael Ho |
| [IMPALA-6857](https://issues.apache.org/jira/browse/IMPALA-6857) | Add JVM Pause Monitor to Impala Processes |  Major | Catalog, Frontend | Philip Martin |  |
| [IMPALA-7410](https://issues.apache.org/jira/browse/IMPALA-7410) | HDFS Datanodes unable to start |  Blocker | Infrastructure | Vuk Ercegovac |  |
| [IMPALA-7398](https://issues.apache.org/jira/browse/IMPALA-7398) | Add logged\_in\_user alias for effective\_user |  Major | Backend | Peter Ebert | Adam Holley |
| [IMPALA-7383](https://issues.apache.org/jira/browse/IMPALA-7383) | Make METASTORE\_DB configurable and default to escaped $IMPALA\_HOME |  Trivial | . | Tianyi Wang | Tianyi Wang |
| [IMPALA-7408](https://issues.apache.org/jira/browse/IMPALA-7408) | Add a flag to selectively disable fs operations used by catalogd |  Major | Frontend | Vuk Ercegovac | Vuk Ercegovac |
| [IMPALA-7406](https://issues.apache.org/jira/browse/IMPALA-7406) | Flatbuffer wrappers use almost as much memory as underlying data |  Major | Catalog | Todd Lipcon | Todd Lipcon |
| [IMPALA-7444](https://issues.apache.org/jira/browse/IMPALA-7444) | Improve debug logging of session opening and expiry |  Minor | Backend | Zoram Thanga | Zoram Thanga |
| [IMPALA-7364](https://issues.apache.org/jira/browse/IMPALA-7364) | Upgrade RapidJson to the latest version |  Major | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-7466](https://issues.apache.org/jira/browse/IMPALA-7466) | Improve readability/usability of describe authorization tests |  Trivial | Frontend | Adam Holley | Adam Holley |
| [IMPALA-7457](https://issues.apache.org/jira/browse/IMPALA-7457) | Allow StateStore subscribers to filter keys by a prefix |  Major | Backend, Catalog | Todd Lipcon | Todd Lipcon |
| [IMPALA-6709](https://issues.apache.org/jira/browse/IMPALA-6709) | Simplify tests that copy local files to tables |  Minor | Infrastructure | Csaba Ringhofer | Zoltán Borók-Nagy |
| [IMPALA-7453](https://issues.apache.org/jira/browse/IMPALA-7453) | Intern HdfsStorageDescriptors |  Major | Catalog | Todd Lipcon |  |
| [IMPALA-7499](https://issues.apache.org/jira/browse/IMPALA-7499) | Build against CDH Kudu |  Major | Infrastructure | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-6568](https://issues.apache.org/jira/browse/IMPALA-6568) | The profile of all statements should contain the Query Compilation timeline |  Major | Frontend | Alexander Behm | Andrew Sherman |
| [IMPALA-7576](https://issues.apache.org/jira/browse/IMPALA-7576) | Add e default timeout for all e2e tests |  Major | Infrastructure | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-7573](https://issues.apache.org/jira/browse/IMPALA-7573) | Fix GroupingAggregator::Reset's handling of output\_partition\_ |  Critical | Backend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-7420](https://issues.apache.org/jira/browse/IMPALA-7420) | Alternative cancellation messages with "internal" cancellation |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7519](https://issues.apache.org/jira/browse/IMPALA-7519) | Support elliptic curve ssl ciphers |  Major | Backend, Clients | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-7599](https://issues.apache.org/jira/browse/IMPALA-7599) | Make num retries for InconsistentMetadataFetchException configurable |  Major | Frontend | Bharath Vissapragada | Vuk Ercegovac |
| [IMPALA-6271](https://issues.apache.org/jira/browse/IMPALA-6271) | Impala daemon should log a message when it's being shut down |  Major | Backend | Zoram Thanga | Pranay Singh |
| [IMPALA-4308](https://issues.apache.org/jira/browse/IMPALA-4308) | Make the minidumps archived in our Jenkins jobs usable |  Major | Infrastructure | Taras Bobrovytsky | Thomas Tauber-Marshall |
| [IMPALA-7349](https://issues.apache.org/jira/browse/IMPALA-7349) | Automatically choose mem\_limit based on estimate, clamped to range |  Major | Backend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-7680](https://issues.apache.org/jira/browse/IMPALA-7680) | Impala Doc: Document how to set default query options for a resource pool |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7554](https://issues.apache.org/jira/browse/IMPALA-7554) | Update custom cluster tests to have sentry create new log on each start |  Trivial | Frontend | Adam Holley | Adam Holley |
| [IMPALA-7622](https://issues.apache.org/jira/browse/IMPALA-7622) | Add query profile metrics for RPC's used when pulling incremental stats. |  Major | Frontend | Vuk Ercegovac | Vuk Ercegovac |
| [IMPALA-7703](https://issues.apache.org/jira/browse/IMPALA-7703) | Upgrade to Sentry 2.1.0 |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7673](https://issues.apache.org/jira/browse/IMPALA-7673) | Parse --var variable values to replace variables within the value |  Minor | Clients | Aaron Baff | Fredy Wijaya |
| [IMPALA-7709](https://issues.apache.org/jira/browse/IMPALA-7709) | Add options to restart catalogd and statestored in start-impala-cluster.py |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7713](https://issues.apache.org/jira/browse/IMPALA-7713) | Add test coverage for catalogd restart when authorization is enabled |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7660](https://issues.apache.org/jira/browse/IMPALA-7660) | Support ECDH ciphers for debug webserver |  Major | Infrastructure | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-7702](https://issues.apache.org/jira/browse/IMPALA-7702) | Enable pull incremental stats a default |  Major | Frontend | Vuk Ercegovac | Vuk Ercegovac |
| [IMPALA-7715](https://issues.apache.org/jira/browse/IMPALA-7715) | "Impala Conditional Functions" documentation errata |  Minor | Docs | Paul Rogers | Alexandra Rodoni |
| [IMPALA-7639](https://issues.apache.org/jira/browse/IMPALA-7639) | impala-shell stuck at "Starting Impala Shell without Kerberos authentication" in test\_multiline\_queries\_in\_history |  Critical | Infrastructure | Tianyi Wang | Joe McDonnell |
| [IMPALA-7644](https://issues.apache.org/jira/browse/IMPALA-7644) | Hide Parquet page index writing with feature flag |  Major | Backend | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-7689](https://issues.apache.org/jira/browse/IMPALA-7689) | Improve size estimate for incremental stats |  Major | Catalog | Vuk Ercegovac | Bharath Vissapragada |
| [IMPALA-7708](https://issues.apache.org/jira/browse/IMPALA-7708) | Switch to faster compression strategy for incremental stats |  Major | Catalog | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-7739](https://issues.apache.org/jira/browse/IMPALA-7739) | Errata in documentation of decode() method |  Minor | Docs | Paul Rogers | Alexandra Rodoni |
| [IMPALA-7735](https://issues.apache.org/jira/browse/IMPALA-7735) | Expose admission control status in impala-shell |  Critical | Clients | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-7786](https://issues.apache.org/jira/browse/IMPALA-7786) | Start Hive and HMS in debug mode in the mini cluster |  Minor | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-402](https://issues.apache.org/jira/browse/IMPALA-402) | Add test for dynamic partition expr involving rand() |  Major | Infrastructure | Benyi Wang | Tim Armstrong |
| [IMPALA-6249](https://issues.apache.org/jira/browse/IMPALA-6249) | Expose several build flags via web UI |  Minor | Infrastructure | Tim Armstrong | Sahil Takiar |
| [IMPALA-7691](https://issues.apache.org/jira/browse/IMPALA-7691) | test\_web\_pages not being run |  Blocker | Infrastructure | Thomas Tauber-Marshall | Sahil Takiar |
| [IMPALA-5004](https://issues.apache.org/jira/browse/IMPALA-5004) | Switch to sorting node for large TopN queries |  Major | Frontend | Lars Volker | Sahil Takiar |
| [IMPALA-7448](https://issues.apache.org/jira/browse/IMPALA-7448) | Periodically evict recently unused table from catalogd |  Major | Catalog | Tianyi Wang | Tianyi Wang |
| [IMPALA-6658](https://issues.apache.org/jira/browse/IMPALA-6658) | Parquet RLE encoding can waste space with small repeated runs |  Minor | Backend | Csaba Ringhofer | Andrew Sherman |
| [IMPALA-5821](https://issues.apache.org/jira/browse/IMPALA-5821) | Distinguish numeric types and show implicit cast in EXTENDED explain plans |  Minor | Frontend | Matthew Jacobs | Andrew Sherman |
| [IMPALA-6248](https://issues.apache.org/jira/browse/IMPALA-6248) | Allow cancelling queries while starting fragments |  Major | . | Balazs Jeszenszky |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-6711](https://issues.apache.org/jira/browse/IMPALA-6711) | Flaky test: TestImpalaShellInteractive.test\_multiline\_queries\_in\_history |  Critical | Infrastructure | Taras Bobrovytsky | Tim Armstrong |
| [IMPALA-2717](https://issues.apache.org/jira/browse/IMPALA-2717) | impala-shell breaks on non-ascii characters in the resultset |  Minor | Clients | Marcell Szabo | Tim Armstrong |
| [IMPALA-6906](https://issues.apache.org/jira/browse/IMPALA-6906) | test\_admission\_controller.TestAdmissionController.test\_memory\_rejection on S3 |  Critical | Frontend | David Knupp | Tim Armstrong |
| [IMPALA-6892](https://issues.apache.org/jira/browse/IMPALA-6892) | CheckHashAndDecrypt doesn't report disk and host where the verification failed |  Major | Backend | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-6902](https://issues.apache.org/jira/browse/IMPALA-6902) | query\_test.test\_udfs.TestUdfExecution.test\_native\_functions\_race failed during core/thrift build |  Blocker | Backend | David Knupp | Vuk Ercegovac |
| [IMPALA-6882](https://issues.apache.org/jira/browse/IMPALA-6882) | Inline assembly instructions hoisted out of if(CpuInfo::IsSupported()) checks |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6920](https://issues.apache.org/jira/browse/IMPALA-6920) | Multithreaded scans are not guaranteed to get a thread token immediately |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6931](https://issues.apache.org/jira/browse/IMPALA-6931) | TestQueryExpiration.test\_query\_expiration fails on ASAN with unexpected number of expired queries |  Blocker | Backend | David Knupp | Vuk Ercegovac |
| [IMPALA-6968](https://issues.apache.org/jira/browse/IMPALA-6968) | TestBlockVerificationGcmDisabled failure in exhaustive |  Critical | Infrastructure | Sailesh Mukil | Tim Armstrong |
| [IMPALA-6946](https://issues.apache.org/jira/browse/IMPALA-6946) | Hit DCHECK in impala::RleBatchDecoder\<unsigned int\>::GetRepeatedValue |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6970](https://issues.apache.org/jira/browse/IMPALA-6970) | DiskMgr::AllocateBuffersForRange crashes on failed DCHECK |  Blocker | Backend | Sailesh Mukil | Tim Armstrong |
| [IMPALA-6866](https://issues.apache.org/jira/browse/IMPALA-6866) | S3 and Isilon tests fail test\_exchange\_delay::test\_exchange\_large\_delay |  Critical | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-4850](https://issues.apache.org/jira/browse/IMPALA-4850) | Create table "comment" comes after "partitioned by" |  Minor | Docs | Joe McDonnell | Alexandra Rodoni |
| [IMPALA-6227](https://issues.apache.org/jira/browse/IMPALA-6227) | TestAdmissionControllerStress can be flaky |  Critical | Backend | Csaba Ringhofer | Tim Armstrong |
| [IMPALA-6975](https://issues.apache.org/jira/browse/IMPALA-6975) | TestRuntimeRowFilters.test\_row\_filters failing with Memory limit exceeded |  Critical | Infrastructure | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-6781](https://issues.apache.org/jira/browse/IMPALA-6781) | Stress tests should take into account of non-deterministic results of queries |  Critical | Infrastructure | Michael Ho | Michael Brown |
| [IMPALA-6980](https://issues.apache.org/jira/browse/IMPALA-6980) | Impala Doc: Impala can add comment with alter table |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-6966](https://issues.apache.org/jira/browse/IMPALA-6966) | Estimated Memory in Catalogd webpage is not sorted correctly |  Major | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-7010](https://issues.apache.org/jira/browse/IMPALA-7010) | Multiple flaky tests failing with MemLimitExceeded on S3 |  Blocker | Infrastructure | Sailesh Mukil | Tim Armstrong |
| [IMPALA-6337](https://issues.apache.org/jira/browse/IMPALA-6337) | Infinite loop in impala\_shell.py |  Major | Clients | Jin Chul Kim | Fredy Wijaya |
| [IMPALA-6907](https://issues.apache.org/jira/browse/IMPALA-6907) | ImpalaServer::MembershipCallback() may not remove all stale connections to disconnected Impalad nodes |  Major | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-6221](https://issues.apache.org/jira/browse/IMPALA-6221) | Kudu partition clause doc is wrong |  Major | Docs | Thomas Tauber-Marshall | Alexandra Rodoni |
| [IMPALA-7033](https://issues.apache.org/jira/browse/IMPALA-7033) | Impala crashes on exhaustive release tests |  Blocker | Backend | Joe McDonnell | Daniel Hecht |
| [IMPALA-7022](https://issues.apache.org/jira/browse/IMPALA-7022) | TestQueries.test\_subquery: Subquery must not return more than one row |  Blocker | Frontend | Joe McDonnell | Zoltán Borók-Nagy |
| [IMPALA-6983](https://issues.apache.org/jira/browse/IMPALA-6983) | stress test binary search exits if process mem\_limit is too low |  Major | Infrastructure | Daniel Hecht | Michael Brown |
| [IMPALA-6995](https://issues.apache.org/jira/browse/IMPALA-6995) | False-positive DCHECK when converting whitespace-only strings to timestamp |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7025](https://issues.apache.org/jira/browse/IMPALA-7025) | PlannerTest.testTableSample has wrong mem-reservation |  Critical | Frontend | Joe McDonnell | Tim Armstrong |
| [IMPALA-7017](https://issues.apache.org/jira/browse/IMPALA-7017) | TestMetadataReplicas.test\_catalog\_restart fails with exception |  Blocker | Frontend | Joe McDonnell | Vuk Ercegovac |
| [IMPALA-7000](https://issues.apache.org/jira/browse/IMPALA-7000) | Wrong info about Impala dedicated executors |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-6827](https://issues.apache.org/jira/browse/IMPALA-6827) | airlines\_parquet data not available in dropbox |  Major | Docs | sathishkumar paramasivam | Alexandra Rodoni |
| [IMPALA-7032](https://issues.apache.org/jira/browse/IMPALA-7032) | Codegen crash when UNIONing NULL and CHAR(N) |  Blocker | Backend | Balazs Jeszenszky | Lars Volker |
| [IMPALA-7039](https://issues.apache.org/jira/browse/IMPALA-7039) | Frontend HBase tests cannot tolerate HBase running on a different port |  Blocker | Frontend | Joe McDonnell | Taras Bobrovytsky |
| [IMPALA-7058](https://issues.apache.org/jira/browse/IMPALA-7058) | RC and Seq fuzz tests cause crash |  Blocker | Backend | Dimitris Tsirogiannis | Tim Armstrong |
| [IMPALA-3833](https://issues.apache.org/jira/browse/IMPALA-3833) | Fix invalid data handling in Sequence and RCFile scanners |  Critical | Backend | Tim Armstrong | Pranay Singh |
| [IMPALA-7048](https://issues.apache.org/jira/browse/IMPALA-7048) | Failed test: query\_test.test\_parquet\_page\_index.TestHdfsParquetTableIndexWriter.test\_write\_index\_many\_columns\_tables |  Blocker | Backend | Dimitris Tsirogiannis | Zoltán Borók-Nagy |
| [IMPALA-6813](https://issues.apache.org/jira/browse/IMPALA-6813) | Hedged reads metrics broken when scanning non-HDFS based table |  Blocker | Backend | Mostafa Mokhtar | Sailesh Mukil |
| [IMPALA-7023](https://issues.apache.org/jira/browse/IMPALA-7023) | TestInsertQueries.test\_insert\_overwrite fails by hitting memory limit |  Blocker | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-7055](https://issues.apache.org/jira/browse/IMPALA-7055) | test\_avro\_writer failing on upstream Jenkins (Expected exception: "Writing to table format AVRO is not supported") |  Blocker | Backend | David Knupp | Tim Armstrong |
| [IMPALA-7043](https://issues.apache.org/jira/browse/IMPALA-7043) | Failure in HBase splitting should not fail dataload |  Blocker | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-7067](https://issues.apache.org/jira/browse/IMPALA-7067) | sleep(100000) command from test\_shell\_commandline.py can hang around and cause test\_metrics\_are\_zero to fail |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7068](https://issues.apache.org/jira/browse/IMPALA-7068) | Failed test: metadata.test\_partition\_metadata.TestPartitionMetadataUncompressedTextOnly.test\_unsupported\_text\_compression on S3 |  Blocker | Catalog, Infrastructure | Dimitris Tsirogiannis | Daniel Hecht |
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
| [IMPALA-7012](https://issues.apache.org/jira/browse/IMPALA-7012) | NullPointerException with CTAS query |  Critical | Frontend | Tim Armstrong | Tianyi Wang |
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
| [IMPALA-7144](https://issues.apache.org/jira/browse/IMPALA-7144) | Reenable tests disabled by IMPALA-7143 |  Blocker | Frontend | Tim Armstrong | Fredy Wijaya |
| [IMPALA-7145](https://issues.apache.org/jira/browse/IMPALA-7145) | Leak of memory from OpenSSL when spill-to-disk encryption is enabled |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7158](https://issues.apache.org/jira/browse/IMPALA-7158) | Incorrect init of HdfsScanNodeBase::progress\_ |  Minor | Backend | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-2751](https://issues.apache.org/jira/browse/IMPALA-2751) | quote in WITH block's comment breaks shell |  Minor | Clients | Marcell Szabo | Fredy Wijaya |
| [IMPALA-6929](https://issues.apache.org/jira/browse/IMPALA-6929) | Create Kudu table syntax does not allow multi-column range partitions |  Major | Frontend | Dan Burkert | Thomas Tauber-Marshall |
| [IMPALA-7147](https://issues.apache.org/jira/browse/IMPALA-7147) | Hit DCHECK in Parquet fuzz test |  Critical | Backend | Tim Armstrong | Csaba Ringhofer |
| [IMPALA-7165](https://issues.apache.org/jira/browse/IMPALA-7165) | Impala Doc: Example for Dynamic Partition Pruning need to be improved |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-2195](https://issues.apache.org/jira/browse/IMPALA-2195) | Improper handling of comments in queries |  Minor | Clients | Bharath Vissapragada | Fredy Wijaya |
| [IMPALA-7174](https://issues.apache.org/jira/browse/IMPALA-7174) | TestAdmissionController.test\_cancellation failed with incorrect total-admitted metric |  Blocker | Backend | Tianyi Wang | Tim Armstrong |
| [IMPALA-7111](https://issues.apache.org/jira/browse/IMPALA-7111) | ASAN heap-use-after-free in impala::HdfsPluginTextScanner::CheckPluginEnabled |  Blocker | Backend | Lars Volker | Tim Armstrong |
| [IMPALA-7130](https://issues.apache.org/jira/browse/IMPALA-7130) | impala-shell -b / --kerberos\_host\_fqdn flag overrides value passed in via -i |  Critical | Clients | Vincent Tran | Vincent Tran |
| [IMPALA-4908](https://issues.apache.org/jira/browse/IMPALA-4908) | NULL floats don't compare equal to other NULL floats |  Trivial | Backend | Zachary | Pooja Nilangekar |
| [IMPALA-6036](https://issues.apache.org/jira/browse/IMPALA-6036) | Queries in admission control pool queue stay in the queue even after end client had already disconnected. |  Major | Frontend | Sudarshan | Bikramjeet Vig |
| [IMPALA-7056](https://issues.apache.org/jira/browse/IMPALA-7056) | Changing Text Delimiter Does Not Work |  Major | Catalog, Docs | Alan Jackoway | Alexandra Rodoni |
| [IMPALA-6812](https://issues.apache.org/jira/browse/IMPALA-6812) | Kudu scans not returning all rows |  Critical | . | Tianyi Wang | Thomas Tauber-Marshall |
| [IMPALA-7181](https://issues.apache.org/jira/browse/IMPALA-7181) | Fix flaky test shell/test\_shell\_commandline.py::TestImpalaShell::test\_socket\_opening |  Blocker | . | Vincent Tran | Vincent Tran |
| [IMPALA-7151](https://issues.apache.org/jira/browse/IMPALA-7151) | session-expiry-test failed - unable to open ThriftServer port |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7150](https://issues.apache.org/jira/browse/IMPALA-7150) | Crash in Reflection::invoke\_method() |  Critical | Backend, Frontend | Lars Volker | Vuk Ercegovac |
| [IMPALA-7169](https://issues.apache.org/jira/browse/IMPALA-7169) | TestHdfsEncryption::()::test\_drop\_partition\_encrypt fails to find file |  Critical | Infrastructure | Lars Volker | Tianyi Wang |
| [IMPALA-5202](https://issues.apache.org/jira/browse/IMPALA-5202) | Debug action WAIT in PREPARE leads to hung query that cannot be cancelled. |  Trivial | Backend, Infrastructure | Alexander Behm | Daniel Hecht |
| [IMPALA-7187](https://issues.apache.org/jira/browse/IMPALA-7187) | Fix test\_group\_impersonation when running inside Docker |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7119](https://issues.apache.org/jira/browse/IMPALA-7119) | HBase tests failing with RetriesExhausted and "RuntimeException: couldn't retrieve HBase table" |  Major | . | Tim Armstrong | Joe McDonnell |
| [IMPALA-7193](https://issues.apache.org/jira/browse/IMPALA-7193) | Local filesystem failes with fs.defaultFS (file:/tmp) is not supported |  Critical | Infrastructure | Tianyi Wang | Joe McDonnell |
| [IMPALA-7161](https://issues.apache.org/jira/browse/IMPALA-7161) | Bootstrap's handling of JAVA\_HOME needs improvement |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-7198](https://issues.apache.org/jira/browse/IMPALA-7198) | Impala hints in docs are wrong |  Major | Docs | Lars Volker | Alexandra Rodoni |
| [IMPALA-7175](https://issues.apache.org/jira/browse/IMPALA-7175) | In a local FS build, test\_native\_functions\_race thinks there are 2 impalads where there should be 1 |  Critical | Infrastructure | Tianyi Wang | Vuk Ercegovac |
| [IMPALA-7200](https://issues.apache.org/jira/browse/IMPALA-7200) | Local filesystem dataload fails due to missing FILESYSTEM\_PREFIX |  Blocker | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-6816](https://issues.apache.org/jira/browse/IMPALA-6816) | Statestore spends a lot of time in GetMinSubscriberTopicVersion() |  Minor | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-7210](https://issues.apache.org/jira/browse/IMPALA-7210) | Global debug\_action should use case insensitive comparisons |  Major | Backend | Daniel Hecht | Daniel Hecht |
| [IMPALA-5981](https://issues.apache.org/jira/browse/IMPALA-5981) | Update documentation for 'SET key=""' changes in IMPALA-5908 |  Major | Docs | Philip Martin | Alexandra Rodoni |
| [IMPALA-7237](https://issues.apache.org/jira/browse/IMPALA-7237) | Parsing bug in ParseSMaps() |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7236](https://issues.apache.org/jira/browse/IMPALA-7236) | Erasure coding dataload broken by IMPALA-7102 |  Blocker | Infrastructure | Joe McDonnell | Tianyi Wang |
| [IMPALA-7240](https://issues.apache.org/jira/browse/IMPALA-7240) | TestSpillingDebugActionDimensions.test\_spilling\_regression\_exhaustive hits memory limit on exhaustive tests |  Blocker | Backend | Joe McDonnell | Thomas Tauber-Marshall |
| [IMPALA-7224](https://issues.apache.org/jira/browse/IMPALA-7224) | UpdateCatalogMetrics very slow when there are many tables |  Major | Catalog | Todd Lipcon | Todd Lipcon |
| [IMPALA-3956](https://issues.apache.org/jira/browse/IMPALA-3956) | Impala shell variable substitution should ignore comments embedded in query. |  Minor | Clients, Docs | Huaisi Xu | Alexandra Rodoni |
| [IMPALA-6031](https://issues.apache.org/jira/browse/IMPALA-6031) | Distributed plan describes coordinator-only nodes as scanning |  Major | Frontend | Jim Apple | Pooja Nilangekar |
| [IMPALA-6223](https://issues.apache.org/jira/browse/IMPALA-6223) | Gracefully handle malformed 'with' queries in impala-shell |  Minor | Clients | Bharath Vissapragada | Pooja Nilangekar |
| [IMPALA-7254](https://issues.apache.org/jira/browse/IMPALA-7254) | Inconsistent decimal behavior for the IN predicate |  Major | Frontend | Taras Bobrovytsky | Fredy Wijaya |
| [IMPALA-7216](https://issues.apache.org/jira/browse/IMPALA-7216) | Invalid SQL generated by toSql functions in CreateViewStmt & AlterViewStmt |  Major | . | Pooja Nilangekar | Pooja Nilangekar |
| [IMPALA-7239](https://issues.apache.org/jira/browse/IMPALA-7239) | Mitigate ParseSmaps() overhead |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7095](https://issues.apache.org/jira/browse/IMPALA-7095) | Improve scanner thread counters in HDFS and Kudu scans |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7260](https://issues.apache.org/jira/browse/IMPALA-7260) | Query with decimal binary predicate needlessly fails |  Major | Frontend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-7211](https://issues.apache.org/jira/browse/IMPALA-7211) | Query with a decimal between predicate needlessly fails |  Critical | Frontend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-7275](https://issues.apache.org/jira/browse/IMPALA-7275) | Create table with insufficient privileges should not show table |  Major | Frontend | Adam Holley | Adam Holley |
| [IMPALA-7069](https://issues.apache.org/jira/browse/IMPALA-7069) | Java UDF tests can trigger a crash in Java ClassLoader |  Blocker | Backend | Tim Armstrong | Taras Bobrovytsky |
| [IMPALA-7271](https://issues.apache.org/jira/browse/IMPALA-7271) | KRPC: cross-port caching of GetLoggedInUser |  Major | Backend | Todd Lipcon | Lars Volker |
| [IMPALA-7279](https://issues.apache.org/jira/browse/IMPALA-7279) | test\_rows\_availability failing: incompatible regex |  Major | Infrastructure | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-6810](https://issues.apache.org/jira/browse/IMPALA-6810) | query\_test::test\_runtime\_filters.py::test\_row\_filters fails when run against an external cluster |  Critical | Infrastructure | David Knupp | Michael Brown |
| [IMPALA-7288](https://issues.apache.org/jira/browse/IMPALA-7288) | Codegen crash in FinalizeModule() |  Blocker | Backend | Balazs Jeszenszky | Bikramjeet Vig |
| [IMPALA-6086](https://issues.apache.org/jira/browse/IMPALA-6086) | Use of permanent function should require SELECT privilege on DB |  Minor | Catalog, Security | Zoram Thanga | Zoram Thanga |
| [IMPALA-7305](https://issues.apache.org/jira/browse/IMPALA-7305) | membership entry for failed impalad gets stuck in statestore due to race between failure detection and update processing |  Critical | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-7106](https://issues.apache.org/jira/browse/IMPALA-7106) | Log the original and rewritten SQL when SQL rewrite fails |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7132](https://issues.apache.org/jira/browse/IMPALA-7132) | run\_clang\_tidy.sh produces unrelated output |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-7199](https://issues.apache.org/jira/browse/IMPALA-7199) | Need to have scripts to generate coverage |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-7238](https://issues.apache.org/jira/browse/IMPALA-7238) | test\_kudu.TestCreateExternalTable sees unique database already exists |  Critical | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-7251](https://issues.apache.org/jira/browse/IMPALA-7251) | Fix QueryMaintenance calls in Aggregators |  Blocker | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-7294](https://issues.apache.org/jira/browse/IMPALA-7294) | TABLESAMPLE clause allocates arrays based on total file count instead of selected partitions |  Minor | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7059](https://issues.apache.org/jira/browse/IMPALA-7059) | Inconsistent privilege model between DESCRIBE and DESCRIBE DATABASE |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-6881](https://issues.apache.org/jira/browse/IMPALA-6881) | COMPUTE STATS should check for SELECT privilege at analysis |  Minor | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7316](https://issues.apache.org/jira/browse/IMPALA-7316) | Fix broken build due to Hadoop JAR mismatch |  Blocker | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7304](https://issues.apache.org/jira/browse/IMPALA-7304) | Impala shouldn't write column indexes for float columns until PARQUET-1222 is resolved |  Blocker | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-7315](https://issues.apache.org/jira/browse/IMPALA-7315) |  tests\_statestore.py fails at assert len(args.topic\_deltas[topic\_name].topic\_entries) == 1 |  Critical | Distributed Exec | Michael Ho | Tim Armstrong |
| [IMPALA-7259](https://issues.apache.org/jira/browse/IMPALA-7259) | impala-shell is weirdly slow with some large queries |  Major | Clients | Tim Armstrong | Fredy Wijaya |
| [IMPALA-7302](https://issues.apache.org/jira/browse/IMPALA-7302) | Build fails on Centos6 |  Blocker | Distributed Exec | Michael Ho | Sailesh Mukil |
| [IMPALA-7298](https://issues.apache.org/jira/browse/IMPALA-7298) | Don't pass resolved IP address as hostname when creating proxy |  Critical | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-7256](https://issues.apache.org/jira/browse/IMPALA-7256) | Aggregator mem usage isn't reflected in summary |  Blocker | Backend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-3316](https://issues.apache.org/jira/browse/IMPALA-3316) | convert\_legacy\_hive\_parquet\_utc\_timestamps=true makes reading parquet tables 30x slower |  Minor | Backend | Ruslan Dautkhanov | Attila Jeges |
| [IMPALA-6174](https://issues.apache.org/jira/browse/IMPALA-6174) | Mismatched size of input seed of rand/random between docs and backend |  Minor | Backend, Docs | Jin Chul Kim | Alexandra Rodoni |
| [IMPALA-5826](https://issues.apache.org/jira/browse/IMPALA-5826) | Document IMPALA-2248 |  Major | Docs | Balazs Jeszenszky | Alexandra Rodoni |
| [IMPALA-7225](https://issues.apache.org/jira/browse/IMPALA-7225) | Refresh on single partition resets partition's row count to -1 |  Critical | Catalog | Mala Chikka Kempanna | Bharath Vissapragada |
| [IMPALA-3082](https://issues.apache.org/jira/browse/IMPALA-3082) | BST between 1972 and 1995 |  Minor | Backend | Marcell Szabo | Attila Jeges |
| [IMPALA-7360](https://issues.apache.org/jira/browse/IMPALA-7360) | Avro scanner sometimes skips blocks when skip marker is on HDFS block boundary |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7170](https://issues.apache.org/jira/browse/IMPALA-7170) | "tests/comparison/data\_generator.py populate" is broken |  Major | Infrastructure | Tianyi Wang | Thomas Tauber-Marshall |
| [IMPALA-7329](https://issues.apache.org/jira/browse/IMPALA-7329) | Blacklist CDH Maven snapshots repository |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7209](https://issues.apache.org/jira/browse/IMPALA-7209) | Disallow self referencing ALTER VIEW statments |  Major | Frontend | Pooja Nilangekar | Pooja Nilangekar |
| [IMPALA-7222](https://issues.apache.org/jira/browse/IMPALA-7222) | [DOCS] authorization\_proxy\_user\_config needs clarification |  Minor | Docs | Zsombor Fedor | Alexandra Rodoni |
| [IMPALA-7234](https://issues.apache.org/jira/browse/IMPALA-7234) | Non-deterministic majority format for a table with equal partition instances |  Major | . | Pooja Nilangekar | Pooja Nilangekar |
| [IMPALA-7395](https://issues.apache.org/jira/browse/IMPALA-7395) | TRUNCATE \<table\> syntax not documented |  Major | Docs | Tim Armstrong | Alexandra Rodoni |
| [IMPALA-7387](https://issues.apache.org/jira/browse/IMPALA-7387) | Set appropriate MIME type for JSON web pages |  Minor | Backend | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-4690](https://issues.apache.org/jira/browse/IMPALA-4690) | conv() needs substantially more documentation |  Major | Docs | Jim Apple | Alexandra Rodoni |
| [IMPALA-7396](https://issues.apache.org/jira/browse/IMPALA-7396) | Fix crashes when thread\_creation\_fault\_injection is enabled |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7397](https://issues.apache.org/jira/browse/IMPALA-7397) | dcheck in impala::AggregationNode::Close |  Blocker | Backend | Michael Brown | Thomas Tauber-Marshall |
| [IMPALA-5839](https://issues.apache.org/jira/browse/IMPALA-5839) | nullifzero and zeroifnull documentation about return type doesn't match implementation |  Major | Docs | Philip Martin | Alexandra Rodoni |
| [IMPALA-7325](https://issues.apache.org/jira/browse/IMPALA-7325) | SHOW CREATE VIEW on a view that references built-in functions requires access to the built-in database |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7242](https://issues.apache.org/jira/browse/IMPALA-7242) | Dcheck fails in width\_bucket() function |  Critical | Backend | Taras Bobrovytsky | Anuj Phadke |
| [IMPALA-7243](https://issues.apache.org/jira/browse/IMPALA-7243) | width\_bucket() returns an incorrect result |  Critical | Backend | Taras Bobrovytsky | Anuj Phadke |
| [IMPALA-7311](https://issues.apache.org/jira/browse/IMPALA-7311) | INSERT with specified target partition fails if any other partition is missing write permissions |  Minor | Frontend | Todd Lipcon | Todd Lipcon |
| [IMPALA-7376](https://issues.apache.org/jira/browse/IMPALA-7376) | Impala hits a DCHECK if a fragment instance fails to initialize the filter bank |  Critical | Backend | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-7400](https://issues.apache.org/jira/browse/IMPALA-7400) | "SQL Statements to Remove or Adapt" is out of date |  Major | Docs | Tim Armstrong | Alexandra Rodoni |
| [IMPALA-7403](https://issues.apache.org/jira/browse/IMPALA-7403) | AnalyticEvalNode does not manage BufferedTupleStream memory correctly |  Blocker | Backend | Michael Brown | Tim Armstrong |
| [IMPALA-7386](https://issues.apache.org/jira/browse/IMPALA-7386) | CatalogObjectVersionQueue should not be a queue |  Major | Catalog | Todd Lipcon | Todd Lipcon |
| [IMPALA-7361](https://issues.apache.org/jira/browse/IMPALA-7361) | test\_heterogeneous\_proc\_mem\_limit:  Query aborted: Not enough memory available on host (s3) |  Major | Backend | nithya | Bikramjeet Vig |
| [IMPALA-6153](https://issues.apache.org/jira/browse/IMPALA-6153) | Prevent Coordinator::UpdateFilter() running after query exec resources are released |  Major | Backend | Sailesh Mukil | Pooja Nilangekar |
| [IMPALA-7415](https://issues.apache.org/jira/browse/IMPALA-7415) | Flaky test: TestImpalaShellInteractive.test\_multiline\_queries\_in\_history |  Critical | . | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-7419](https://issues.apache.org/jira/browse/IMPALA-7419) | NullPointerException in SimplifyConditionalsRule |  Critical | Frontend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-7347](https://issues.apache.org/jira/browse/IMPALA-7347) | Assertion Failure - test\_show\_create\_table |  Blocker | . | nithya | Tianyi Wang |
| [IMPALA-7423](https://issues.apache.org/jira/browse/IMPALA-7423) | NoSuchMethodError when starting Sentry in the minicluster |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7388](https://issues.apache.org/jira/browse/IMPALA-7388) | JNI THROW\_IF\_ERROR macros use local scope variables which likely conflict |  Major | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7428](https://issues.apache.org/jira/browse/IMPALA-7428) | Flaky test: test\_shell\_commandline.py / test\_large\_sql |  Major | Infrastructure | Csaba Ringhofer | Fredy Wijaya |
| [IMPALA-7445](https://issues.apache.org/jira/browse/IMPALA-7445) | test\_resource\_limits running in unsupported envs |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-7443](https://issues.apache.org/jira/browse/IMPALA-7443) | Fix intermittent GVO failures due to stale Maven cache |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7442](https://issues.apache.org/jira/browse/IMPALA-7442) | test\_semi\_joins\_exhaustive occasionally fails |  Critical | Backend | Michael Brown | Tim Armstrong |
| [IMPALA-7452](https://issues.apache.org/jira/browse/IMPALA-7452) | test\_disable\_catalog\_data\_op s3 failiure |  Blocker | Infrastructure | Michael Brown | Vuk Ercegovac |
| [IMPALA-7096](https://issues.apache.org/jira/browse/IMPALA-7096) | Ensure no memory limit exceeded regressions from IMPALA-4835 because of non-reserved memory |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7459](https://issues.apache.org/jira/browse/IMPALA-7459) | Query with width\_bucket() crashes with Check failed: lhs \> 0 && rhs \> 0 |  Blocker | Backend | Michael Ho | Joe McDonnell |
| [IMPALA-7449](https://issues.apache.org/jira/browse/IMPALA-7449) | TotalNetworkThroughput in KrpcDataStreamSender is broken |  Critical | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-7470](https://issues.apache.org/jira/browse/IMPALA-7470) | SentryServicePinger logs a lot of error messages on success |  Minor | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7465](https://issues.apache.org/jira/browse/IMPALA-7465) | Hit memory limit in TestScanMemLimit.test\_kudu\_scan\_mem\_usage on ASAN build |  Critical | Backend | Joe McDonnell | Tim Armstrong |
| [IMPALA-7402](https://issues.apache.org/jira/browse/IMPALA-7402) | DCHECK failed min\_bytes\_to\_write \<= dirty\_unpinned\_pages\_ in buffer-pool |  Blocker | Backend | Vuk Ercegovac | Tim Armstrong |
| [IMPALA-6789](https://issues.apache.org/jira/browse/IMPALA-6789) | Failed to launch HiveServer2 in minicluster after switching to Hadoop3 |  Major | Infrastructure | Quanlong Huang | Quanlong Huang |
| [IMPALA-6532](https://issues.apache.org/jira/browse/IMPALA-6532) | NullPointerException in HiveContextAwareRecordReader.initIOContext() when executing Hive query |  Critical | . | Bikramjeet Vig | Joe McDonnell |
| [IMPALA-7433](https://issues.apache.org/jira/browse/IMPALA-7433) | Reduce volume of -v=1 logs on executors |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7460](https://issues.apache.org/jira/browse/IMPALA-7460) | update paramiko and fabric |  Critical | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-7418](https://issues.apache.org/jira/browse/IMPALA-7418) | test\_udf\_errors - returns Cancelled instead of actual error |  Blocker | Backend | Tim Armstrong | Pooja Nilangekar |
| [IMPALA-6844](https://issues.apache.org/jira/browse/IMPALA-6844) | Fix possible NULL dereference in to\_date() builtin |  Critical | Backend | Bharath Vissapragada | Vincent Tran |
| [IMPALA-7412](https://issues.apache.org/jira/browse/IMPALA-7412) | width\_bucket() function overflows too easily |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-7476](https://issues.apache.org/jira/browse/IMPALA-7476) | test\_statestore.py statestore client persists after the test is over |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-7500](https://issues.apache.org/jira/browse/IMPALA-7500) | Clarify workaround for IMPALA-635 |  Major | Docs | Tim Armstrong | Alexandra Rodoni |
| [IMPALA-7502](https://issues.apache.org/jira/browse/IMPALA-7502) | ALTER TABLE RENAME should require ALL on the source table |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-3813](https://issues.apache.org/jira/browse/IMPALA-3813) | How to handle replication factor while creating KUDU table through impala |  Major | Docs, Frontend | Ravi sharma | Alexandra Rodoni |
| [IMPALA-7421](https://issues.apache.org/jira/browse/IMPALA-7421) | Static methods called with wrong JNI function |  Major | Backend | Todd Lipcon | Todd Lipcon |
| [IMPALA-7439](https://issues.apache.org/jira/browse/IMPALA-7439) | CREATE DATABASE creates a catalog entry with empty location field |  Major | Catalog | Todd Lipcon | Todd Lipcon |
| [IMPALA-7517](https://issues.apache.org/jira/browse/IMPALA-7517) | Hung scanner when soft memory limit exceeded |  Critical | Backend | Todd Lipcon | Todd Lipcon |
| [IMPALA-7522](https://issues.apache.org/jira/browse/IMPALA-7522) | milliseconds\_add() can lead to overflow / DCHECK |  Major | Backend | Csaba Ringhofer | Csaba Ringhofer |
| [IMPALA-5337](https://issues.apache.org/jira/browse/IMPALA-5337) | DITA not including anchor for "concepts" |  Minor | Docs | Michael Brown | Alexandra Rodoni |
| [IMPALA-7542](https://issues.apache.org/jira/browse/IMPALA-7542) | find-fragment-instances in impala-gdb.py misses to find the "root threads" |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-7516](https://issues.apache.org/jira/browse/IMPALA-7516) | Rejected queries dont get removed from the list of running queries |  Critical | Backend | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-5937](https://issues.apache.org/jira/browse/IMPALA-5937) | Docs are missing some query options |  Major | Docs | Philip Martin | Alexandra Rodoni |
| [IMPALA-7426](https://issues.apache.org/jira/browse/IMPALA-7426) | T-test is an unreliable method for comparing non-normal distributions |  Major | Infrastructure | Jim Apple | Jim Apple |
| [IMPALA-6442](https://issues.apache.org/jira/browse/IMPALA-6442) | Misleading file offset reporting in error messages |  Minor | Backend | Zoltan Ivanfi | Yongjun Zhang |
| [IMPALA-7559](https://issues.apache.org/jira/browse/IMPALA-7559) | Parquet stat filtering ignores convert\_legacy\_hive\_parquet\_utc\_timestamps |  Blocker | Backend | Csaba Ringhofer | Csaba Ringhofer |
| [IMPALA-7487](https://issues.apache.org/jira/browse/IMPALA-7487) | Failures in stress test when running against minicluster: "int() argument must be a string or a number, not 'NoneType'" |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7569](https://issues.apache.org/jira/browse/IMPALA-7569) | Impala Doc: Remove "safety valves" from docs |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7464](https://issues.apache.org/jira/browse/IMPALA-7464) | DCHECK(!released\_exec\_resources\_) is triggered when ExecFInstance() RPC times out |  Critical | Distributed Exec | Michael Ho | Daniel Hecht |
| [IMPALA-7348](https://issues.apache.org/jira/browse/IMPALA-7348) | PlannerTest.testKuduSelectivity failing due to missing Cardinality information |  Blocker | Infrastructure | nithya | Thomas Tauber-Marshall |
| [IMPALA-7580](https://issues.apache.org/jira/browse/IMPALA-7580) | test\_local\_catalog fails on S3 build |  Blocker | . | Thomas Tauber-Marshall | Tianyi Wang |
| [IMPALA-7588](https://issues.apache.org/jira/browse/IMPALA-7588) | incorrect HS2 null handling introduced by IMPALA-7477 |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7422](https://issues.apache.org/jira/browse/IMPALA-7422) | Crash in QueryState::PublishFilter() fragment\_map\_.count(params.dst\_fragment\_idx) == 1 (0 vs. 1) |  Blocker | Backend | Tim Armstrong | Michael Ho |
| [IMPALA-7579](https://issues.apache.org/jira/browse/IMPALA-7579) | TestObservability.test\_query\_profile\_contains\_all\_events fails for S3 tests |  Blocker | Infrastructure | Vuk Ercegovac | Andrew Sherman |
| [IMPALA-7488](https://issues.apache.org/jira/browse/IMPALA-7488) | TestShellCommandLine::test\_cancellation hangs occasionally |  Critical | Infrastructure | Tim Armstrong | Thomas Tauber-Marshall |
| [IMPALA-7490](https://issues.apache.org/jira/browse/IMPALA-7490) | Uninitialized variable in data-load.py causes misleading error messages |  Major | Infrastructure | Quanlong Huang | Quanlong Huang |
| [IMPALA-7335](https://issues.apache.org/jira/browse/IMPALA-7335) | Assertion Failure - test\_corrupt\_files |  Blocker | . | nithya | Pooja Nilangekar |
| [IMPALA-7591](https://issues.apache.org/jira/browse/IMPALA-7591) | Use short name for setting owner. |  Minor | Frontend | Adam Holley | Adam Holley |
| [IMPALA-7306](https://issues.apache.org/jira/browse/IMPALA-7306) | Add regression test for IMPALA-7305 |  Critical | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-7537](https://issues.apache.org/jira/browse/IMPALA-7537) | REVOKE GRANT OPTION regression |  Major | Frontend | Adam Holley | Adam Holley |
| [IMPALA-7600](https://issues.apache.org/jira/browse/IMPALA-7600) | Mem limit exceeded in test\_kudu\_scan\_mem\_usage |  Blocker | Backend | Thomas Tauber-Marshall | Tim Armstrong |
| [IMPALA-7494](https://issues.apache.org/jira/browse/IMPALA-7494) | Hang in TestTpcdsDecimalV2Query::test\_tpcds\_q69 |  Critical | . | Bikramjeet Vig |  |
| [IMPALA-7593](https://issues.apache.org/jira/browse/IMPALA-7593) | test\_automatic\_invalidation failing in S3 |  Blocker | Infrastructure | Thomas Tauber-Marshall | Tianyi Wang |
| [IMPALA-7616](https://issues.apache.org/jira/browse/IMPALA-7616) | Refactor PrincipalPrivilege.buildPrivilegeName |  Minor | Frontend | Adam Holley | Fredy Wijaya |
| [IMPALA-7632](https://issues.apache.org/jira/browse/IMPALA-7632) | Erasure coding builds still failing because of default query options |  Blocker | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7520](https://issues.apache.org/jira/browse/IMPALA-7520) | NPE in SentryProxy |  Major | Frontend | Adam Holley | Fredy Wijaya |
| [IMPALA-7646](https://issues.apache.org/jira/browse/IMPALA-7646) | SHOW GRANT USER not working on kerberized clusters |  Major | Frontend | Adam Holley | Adam Holley |
| [IMPALA-7570](https://issues.apache.org/jira/browse/IMPALA-7570) | Impala Doc: Add a table of built-in functions |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7585](https://issues.apache.org/jira/browse/IMPALA-7585) | Always set user credentials after creating a KRPC proxy |  Major | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-6202](https://issues.apache.org/jira/browse/IMPALA-6202) | mod and % should be equivalent |  Major | . | Jim Apple | Yongjun Zhang |
| [IMPALA-7595](https://issues.apache.org/jira/browse/IMPALA-7595) | Check failed: IsValidTime(time\_) at timestamp-value.h:322 |  Blocker | Backend | Tim Armstrong | Csaba Ringhofer |
| [IMPALA-7581](https://issues.apache.org/jira/browse/IMPALA-7581) | Hang in buffer-pool-test |  Critical | Backend | Thomas Tauber-Marshall | Tim Armstrong |
| [IMPALA-7575](https://issues.apache.org/jira/browse/IMPALA-7575) | Fix doc for fmod, mod and % |  Major | . | Yongjun Zhang | Alexandra Rodoni |
| [IMPALA-7651](https://issues.apache.org/jira/browse/IMPALA-7651) | Add Kudu support to scheduler-related query hints and options |  Major | Docs | Lars Volker | Alexandra Rodoni |
| [IMPALA-7667](https://issues.apache.org/jira/browse/IMPALA-7667) | sentry.db.explicit.grants.permitted does not accept empty value |  Critical | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7663](https://issues.apache.org/jira/browse/IMPALA-7663) | count\_user\_privilege isn't 0 at the end of test\_owner\_privileges\_without\_grant |  Critical | Frontend | Tianyi Wang | Adam Holley |
| [IMPALA-7671](https://issues.apache.org/jira/browse/IMPALA-7671) | SHOW GRANT USER ON \<object\> is broken |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7626](https://issues.apache.org/jira/browse/IMPALA-7626) | Throttle requests in catalogd to avoid overloading catalogd |  Major | Catalog | Adrian Ng | Bharath Vissapragada |
| [IMPALA-7654](https://issues.apache.org/jira/browse/IMPALA-7654) | TRUNCATE docs appear to be inaccurate |  Major | Docs | Tim Armstrong | Alexandra Rodoni |
| [IMPALA-7676](https://issues.apache.org/jira/browse/IMPALA-7676) | DESCRIBE on table should require VIEW\_METADATA privilege |  Major | . | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7682](https://issues.apache.org/jira/browse/IMPALA-7682) | AuthorizationPolicy is not thread-safe |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7688](https://issues.apache.org/jira/browse/IMPALA-7688) | Spurious error messages when updating owner privileges |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7693](https://issues.apache.org/jira/browse/IMPALA-7693) | stress test binary search fails to set query names |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-7690](https://issues.apache.org/jira/browse/IMPALA-7690) | TestAdmissionController.test\_pool\_config\_change\_while\_queued fails on centos6 |  Blocker | Backend | Pooja Nilangekar | Bikramjeet Vig |
| [IMPALA-7701](https://issues.apache.org/jira/browse/IMPALA-7701) | Grant option always shows as NULL in SHOW GRANT ROLE/USER for any HS2 clients |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7704](https://issues.apache.org/jira/browse/IMPALA-7704) | ASAN tests failing in HdfsParquetTableWriter |  Blocker | Backend | Joe McDonnell | Zoltán Borók-Nagy |
| [IMPALA-7678](https://issues.apache.org/jira/browse/IMPALA-7678) | Revert IMPALA-7660 |  Blocker | Infrastructure | Pooja Nilangekar | Thomas Tauber-Marshall |
| [IMPALA-7545](https://issues.apache.org/jira/browse/IMPALA-7545) | Add admission control status to query log |  Critical | Backend | Tim Armstrong | Pooja Nilangekar |
| [IMPALA-7272](https://issues.apache.org/jira/browse/IMPALA-7272) | Fix potential crash when a min-max runtime filter is generated for a string value |  Blocker | Backend | yyzzjj | Thomas Tauber-Marshall |
| [IMPALA-7597](https://issues.apache.org/jira/browse/IMPALA-7597) | "show partitions" does not retry on InconsistentMetadataFetchException |  Critical | Frontend | Bharath Vissapragada | Vuk Ercegovac |
| [IMPALA-7684](https://issues.apache.org/jira/browse/IMPALA-7684) | Fix Admission result string in printed in the query profile |  Major | Backend | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-7717](https://issues.apache.org/jira/browse/IMPALA-7717) | Partition id does not exist exception - Catalog V2 |  Critical | Catalog | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-7669](https://issues.apache.org/jira/browse/IMPALA-7669) | Concurrent invalidate with compute (or drop) stats throws NPE. |  Critical | Catalog | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-7681](https://issues.apache.org/jira/browse/IMPALA-7681) | Support new URI scheme for ADLS Gen2 |  Major | . | Sean Mackrory | Sean Mackrory |
| [IMPALA-7721](https://issues.apache.org/jira/browse/IMPALA-7721) | /catalog\_object web API is broken for getting a privilege |  Major | Catalog | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7729](https://issues.apache.org/jira/browse/IMPALA-7729) | Invalidate metadata hangs when there is an upper case role name |  Blocker | Catalog | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7697](https://issues.apache.org/jira/browse/IMPALA-7697) | flakiness in test\_resource\_limits: query completes execution faster than expected |  Blocker | . | Pooja Nilangekar | Bikramjeet Vig |
| [IMPALA-7699](https://issues.apache.org/jira/browse/IMPALA-7699) | TestSpillingNoDebugActionDimensions fails earlier than expected |  Critical | . | Pooja Nilangekar | Bikramjeet Vig |
| [IMPALA-7661](https://issues.apache.org/jira/browse/IMPALA-7661) | test\_reconnect is flaky in asan |  Critical | Infrastructure | Tianyi Wang | Tianyi Wang |
| [IMPALA-7668](https://issues.apache.org/jira/browse/IMPALA-7668) | close() URLClassLoaders after usage. |  Major | Frontend | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-7740](https://issues.apache.org/jira/browse/IMPALA-7740) | Incorrect doc description for nvl2() |  Major | Docs | Paul Rogers | Alexandra Rodoni |
| [IMPALA-7628](https://issues.apache.org/jira/browse/IMPALA-7628) | test\_tls\_ecdh failing on CentOS 6/Python 2.6 |  Blocker | Infrastructure | Tim Armstrong | Thomas Tauber-Marshall |
| [IMPALA-7677](https://issues.apache.org/jira/browse/IMPALA-7677) | multiple count(distinct): Check failed: !hash\_partitions\_.empty() |  Blocker | Backend | Michael Brown | Thomas Tauber-Marshall |
| [IMPALA-2063](https://issues.apache.org/jira/browse/IMPALA-2063) | impala 'cancelled' query status now has extra characters in it |  Minor | Backend | Chris Leroy | Michal Ostrowski |
| [IMPALA-7760](https://issues.apache.org/jira/browse/IMPALA-7760) | Privilege version inconsistency causes a hang when running invalidate metadata |  Critical | Catalog | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7758](https://issues.apache.org/jira/browse/IMPALA-7758) | chars\_formats dependent tables are created using the wrong LOCATION |  Major | Infrastructure | David Knupp | David Knupp |
| [IMPALA-7742](https://issues.apache.org/jira/browse/IMPALA-7742) | User names in Sentry are now case sensitive |  Critical | Catalog | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7166](https://issues.apache.org/jira/browse/IMPALA-7166) | ExecSummary should be a first class object |  Major | Backend | sandeep akinapelli | Yongjun Zhang |
| [IMPALA-7727](https://issues.apache.org/jira/browse/IMPALA-7727) | failed compute stats child query status no longer propagates to parent query |  Blocker | Frontend | Michael Brown | Bharath Vissapragada |
| [IMPALA-5950](https://issues.apache.org/jira/browse/IMPALA-5950) | Q35a and Q48 test files don't match standard qualification queries |  Major | Infrastructure | Tim Wood | Tim Armstrong |
| [IMPALA-7792](https://issues.apache.org/jira/browse/IMPALA-7792) | Disabling ORC scanner can cause query hang |  Blocker | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7363](https://issues.apache.org/jira/browse/IMPALA-7363) | Spurious error generated by sequence file scanner with weird scan range length |  Critical | Backend | Tim Armstrong | Pooja Nilangekar |
| [IMPALA-7586](https://issues.apache.org/jira/browse/IMPALA-7586) | Incorrect results when querying primary = "\\"" in Kudu and HBase |  Blocker | Frontend | William Berkeley | Tim Armstrong |
| [IMPALA-2566](https://issues.apache.org/jira/browse/IMPALA-2566) | Result of casttochar() not handled properly in SQL operations |  Critical | Frontend | John Russell | Bikramjeet Vig |
| [IMPALA-7794](https://issues.apache.org/jira/browse/IMPALA-7794) | Rewrite ownership authorization tests |  Critical | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-6661](https://issues.apache.org/jira/browse/IMPALA-6661) | Group by float results in one group per NaN value |  Major | Backend | Tim Armstrong | Michal Ostrowski |
| [IMPALA-5956](https://issues.apache.org/jira/browse/IMPALA-5956) | Add TPC-DS q31 and q89 to test suite |  Major | Infrastructure | Tim Wood | Tim Armstrong |
| [IMPALA-2014](https://issues.apache.org/jira/browse/IMPALA-2014) | rapidjson can produce invalid json metrics if locale is changed |  Minor | Backend | Juan Yu |  |
| [IMPALA-7241](https://issues.apache.org/jira/browse/IMPALA-7241) | progress-updater.cc:43] Check failed: delta \>= 0 (-3 vs. 0) |  Blocker | Backend | Michael Brown | Michael Ho |
| [IMPALA-7710](https://issues.apache.org/jira/browse/IMPALA-7710) | test\_owner\_privileges\_with\_grant failed with AuthorizationException |  Blocker | Frontend | Michael Ho | Adam Holley |
| [IMPALA-5563](https://issues.apache.org/jira/browse/IMPALA-5563) | Timezone lookup may be ambiguous |  Major | Backend | Matthew Jacobs | Attila Jeges |
| [IMPALA-6436](https://issues.apache.org/jira/browse/IMPALA-6436) | Impala Catalog generates a core file / mini dump when the HMS is not available |  Critical | Catalog | Luis E Martinez-Poblete | Tim Armstrong |
| [IMPALA-7775](https://issues.apache.org/jira/browse/IMPALA-7775) | StatestoreSslTest and SessionExpiryTest can crash in pthread\_mutex\_lock |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7777](https://issues.apache.org/jira/browse/IMPALA-7777) | Fix crash due to arithmetic overflows in Exchange Node |  Major | Frontend | Sahil Takiar | Sahil Takiar |
| [IMPALA-6323](https://issues.apache.org/jira/browse/IMPALA-6323) | Support a constant in a window specification |  Major | Frontend | N Campbell | Michal Ostrowski |
| [IMPALA-3652](https://issues.apache.org/jira/browse/IMPALA-3652) | Fix resource transfer in subplans with limits |  Major | Backend | Tim Armstrong | Thomas Tauber-Marshall |
| [IMPALA-7822](https://issues.apache.org/jira/browse/IMPALA-7822) | Crash in repeat() constructing strings \> 1GB |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7824](https://issues.apache.org/jira/browse/IMPALA-7824) | Running INVALIDATE METADATA with authorization enabled can cause a hang if Sentry is unavailable |  Critical | Catalog | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7528](https://issues.apache.org/jira/browse/IMPALA-7528) | Division by zero when computing cardinalities of many to many joins on NULL columns |  Critical | Frontend | Balazs Jeszenszky | Bikramjeet Vig |
| [IMPALA-7835](https://issues.apache.org/jira/browse/IMPALA-7835) | Creating a role with the same name as the user name with object ownership enabled can cause INVALIDATE METADATA to hang |  Critical | Catalog | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7840](https://issues.apache.org/jira/browse/IMPALA-7840) | test\_concurrent\_schema\_change is missing a possible error message |  Critical | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-7555](https://issues.apache.org/jira/browse/IMPALA-7555) | impala-shell can hang in connect in certain cases |  Major | Clients | Anuj Phadke | Anuj Phadke |
| [IMPALA-7606](https://issues.apache.org/jira/browse/IMPALA-7606) | Time based auto invalidation not working |  Major | . | Rituparna Agrawal | Tianyi Wang |
| [IMPALA-7675](https://issues.apache.org/jira/browse/IMPALA-7675) | The result of UpdateTableUsage() RPC is not correctly handled. |  Major | Frontend | Tianyi Wang | Tianyi Wang |
| [IMPALA-3040](https://issues.apache.org/jira/browse/IMPALA-3040) | test\_caching\_ddl failed with unexpected get\_num\_cache\_requests |  Major | Catalog | Tim Armstrong | Tianyi Wang |
| [IMPALA-4250](https://issues.apache.org/jira/browse/IMPALA-4250) | from\_utc\_time function issue for CET daylight savings |  Minor | Frontend | Eric Lin |  |
| [IMPALA-7662](https://issues.apache.org/jira/browse/IMPALA-7662) | test\_parquet reads bad\_magic\_number.parquet without an error |  Blocker | Backend | Tianyi Wang | Tim Armstrong |
| [IMPALA-6754](https://issues.apache.org/jira/browse/IMPALA-6754) | Exchange node includes FirstBatchArrivalWaitTime in summary |  Minor | Backend | Balazs Jeszenszky | Michael Ho |
| [IMPALA-7861](https://issues.apache.org/jira/browse/IMPALA-7861) | ABFS docs: SSL is now enabled by default regardless of URI scheme |  Trivial | . | Sean Mackrory | Alexandra Rodoni |
| [IMPALA-8122](https://issues.apache.org/jira/browse/IMPALA-8122) | Build failure: Core S3, Hive Metastore failed to start |  Blocker | Infrastructure | Paul Rogers | Paul Rogers |
| [IMPALA-8109](https://issues.apache.org/jira/browse/IMPALA-8109) | Impala cannot read the gzip files bigger than 2 GB |  Major | Backend | hakki |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-6560](https://issues.apache.org/jira/browse/IMPALA-6560) | Come up with reliable regression test for IMPALA-2376 |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6374](https://issues.apache.org/jira/browse/IMPALA-6374) | test tpcds-q98.test has some incorrect data |  Critical | Infrastructure | Stephen Carlin | Tim Armstrong |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-6598](https://issues.apache.org/jira/browse/IMPALA-6598) | Investigate memory requirement regression from scanner buffer pool change |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6587](https://issues.apache.org/jira/browse/IMPALA-6587) | Crash in DiskMgr::AllocateBuffersForRange |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6678](https://issues.apache.org/jira/browse/IMPALA-6678) | Better estimate of per-column compressed data size for low-NDV columns. |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6679](https://issues.apache.org/jira/browse/IMPALA-6679) | Don't claim ideal reservation in scanner until actually processing scan ranges |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6676](https://issues.apache.org/jira/browse/IMPALA-6676) | Impala Doc: SHOW CREATE VIEW |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-6949](https://issues.apache.org/jira/browse/IMPALA-6949) | Make it possible to start the minicluster with HDFS erasure coding enabled |  Major | Infrastructure | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-6916](https://issues.apache.org/jira/browse/IMPALA-6916) | Implement COMMENT ON DATABASE |  Minor | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7004](https://issues.apache.org/jira/browse/IMPALA-7004) | Deflake erasure coding data loading |  Major | . | Tianyi Wang | Tianyi Wang |
| [IMPALA-7019](https://issues.apache.org/jira/browse/IMPALA-7019) | Discard block locations and schedule as remote read with erasure coding |  Major | Frontend | Tianyi Wang | Tianyi Wang |
| [IMPALA-5706](https://issues.apache.org/jira/browse/IMPALA-5706) | Parallelise read I/O in sorter |  Major | Backend | Tim Armstrong | Gabor Kaszab |
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
| [IMPALA-6988](https://issues.apache.org/jira/browse/IMPALA-6988) | Implement ALTER TABLE/VIEW SET OWNER |  Major | Frontend | Adam Holley | Fredy Wijaya |
| [IMPALA-6677](https://issues.apache.org/jira/browse/IMPALA-6677) | Impala Doc: Doc next\_day function |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7212](https://issues.apache.org/jira/browse/IMPALA-7212) | Deprecate --use\_krpc flag |  Major | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-7257](https://issues.apache.org/jira/browse/IMPALA-7257) | Support querying Kudu tables in LocalCatalog |  Major | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7276](https://issues.apache.org/jira/browse/IMPALA-7276) | Support CREATE TABLE AS SELECT with LocalCatalog |  Major | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7277](https://issues.apache.org/jira/browse/IMPALA-7277) | Support for INSERT and LOAD DATA in LocalCatalog |  Major | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7324](https://issues.apache.org/jira/browse/IMPALA-7324) | Remove MarkNeedsDeepCopy() from Sorter |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7337](https://issues.apache.org/jira/browse/IMPALA-7337) | Run docs build job on upload |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7377](https://issues.apache.org/jira/browse/IMPALA-7377) | Update Sentry for object ownership feature |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-5542](https://issues.apache.org/jira/browse/IMPALA-5542) | Impala cannot scan Parquet decimal stored as int64\_t/int32\_t |  Major | Backend | Tim Armstrong | Zoltán Borók-Nagy |
| [IMPALA-7354](https://issues.apache.org/jira/browse/IMPALA-7354) | Validate memory estimates for standard workloads in planner tests |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7307](https://issues.apache.org/jira/browse/IMPALA-7307) | Support TABLESAMPLE and stats extrapolation in LocalCatalog |  Major | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7140](https://issues.apache.org/jira/browse/IMPALA-7140) | Build out support for HDFS tables and views in LocalCatalog |  Major | Catalog, Frontend | Todd Lipcon | Todd Lipcon |
| [IMPALA-7308](https://issues.apache.org/jira/browse/IMPALA-7308) | Support Avro tables in LocalCatalog |  Major | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7258](https://issues.apache.org/jira/browse/IMPALA-7258) | Support querying HBase tables in LocalCatalog |  Major | . | Todd Lipcon | Tianyi Wang |
| [IMPALA-7201](https://issues.apache.org/jira/browse/IMPALA-7201) | Support DDL in LocalCatalog using existing catalogd |  Major | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7163](https://issues.apache.org/jira/browse/IMPALA-7163) | Implement a state machine for the QueryState class |  Major | Distributed Exec | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-6034](https://issues.apache.org/jira/browse/IMPALA-6034) | Add query option that limits scanned bytes at runtime |  Major | Distributed Exec | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-7333](https://issues.apache.org/jira/browse/IMPALA-7333) | Remove MarkNeedsDeepCopy from Aggregation and Hash Join Nodes |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7231](https://issues.apache.org/jira/browse/IMPALA-7231) | Classify plan nodes into pipelines in frontend |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7342](https://issues.apache.org/jira/browse/IMPALA-7342) | Initial refactor to support user-level privileges |  Major | Catalog | Adam Holley | Fredy Wijaya |
| [IMPALA-7345](https://issues.apache.org/jira/browse/IMPALA-7345) | Add the OWNER privilege |  Major | Frontend | Adam Holley | Adam Holley |
| [IMPALA-6989](https://issues.apache.org/jira/browse/IMPALA-6989) | Implement SHOW GRANT USER |  Major | Frontend | Adam Holley | Fredy Wijaya |
| [IMPALA-7343](https://issues.apache.org/jira/browse/IMPALA-7343) | Change Sentry proxy to use the bulk API |  Major | Frontend | Adam Holley | Fredy Wijaya |
| [IMPALA-7447](https://issues.apache.org/jira/browse/IMPALA-7447) | Size-based eviction for LocalCatalog LRU cache |  Major | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7437](https://issues.apache.org/jira/browse/IMPALA-7437) | Simple granular caching of partition metadata in impalad |  Major | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7344](https://issues.apache.org/jira/browse/IMPALA-7344) | Restrict ALTER DATABASE/TABLE SET OWNER to ALL/OWNER privilege with GRANT OPTION enabled |  Major | Frontend | Adam Holley | Fredy Wijaya |
| [IMPALA-7483](https://issues.apache.org/jira/browse/IMPALA-7483) | Abort stuck impalad if JVM deadlock is detected |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7436](https://issues.apache.org/jira/browse/IMPALA-7436) | Fetch table and partition metadata from catalogd |  Major | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7424](https://issues.apache.org/jira/browse/IMPALA-7424) | Improve in-memory representation of incremental stats |  Major | Catalog | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-7469](https://issues.apache.org/jira/browse/IMPALA-7469) | Invalidate local catalog cache based on topic updates |  Major | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7425](https://issues.apache.org/jira/browse/IMPALA-7425) | Add option to load incremental statistics from catalog |  Major | Catalog | Vuk Ercegovac | Vuk Ercegovac |
| [IMPALA-7203](https://issues.apache.org/jira/browse/IMPALA-7203) | Support functions in LocalCatalog |  Major | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7510](https://issues.apache.org/jira/browse/IMPALA-7510) | Support sentry roles/privileges with LocalCatalog |  Major | . | Todd Lipcon | Todd Lipcon |
| [IMPALA-7074](https://issues.apache.org/jira/browse/IMPALA-7074) | Update OWNER privilege on CREATE, DROP, and ALTER SET OWNER |  Major | Frontend | Fredy Wijaya | Adam Holley |
| [IMPALA-7530](https://issues.apache.org/jira/browse/IMPALA-7530) | Re-plan queries on InconsistentMetadataException |  Critical | . | Todd Lipcon | Vuk Ercegovac |
| [IMPALA-7498](https://issues.apache.org/jira/browse/IMPALA-7498) | impalad should wait for catalogd during start up |  Major | . | Todd Lipcon | Bharath Vissapragada |
| [IMPALA-7589](https://issues.apache.org/jira/browse/IMPALA-7589) | Allow setting default query options for custom cluster tests |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7352](https://issues.apache.org/jira/browse/IMPALA-7352) | HdfsTableSink doesn't take into account insert clustering |  Major | Frontend | Tim Armstrong | Pooja Nilangekar |
| [IMPALA-7631](https://issues.apache.org/jira/browse/IMPALA-7631) | Add Sentry configuration to allow specific privileges to be granted explicitly |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7531](https://issues.apache.org/jira/browse/IMPALA-7531) | Add daemon-level metrics about fetch-from-catalog cache |  Major | . | Todd Lipcon | Bharath Vissapragada |
| [IMPALA-7503](https://issues.apache.org/jira/browse/IMPALA-7503) | SHOW GRANT USER not showing all privileges |  Major | Frontend | Adam Holley | Adam Holley |
| [IMPALA-7527](https://issues.apache.org/jira/browse/IMPALA-7527) | Expose fetch-from-catalogd cache and latency metrics in profiles |  Critical | . | Todd Lipcon | Vuk Ercegovac |
| [IMPALA-7623](https://issues.apache.org/jira/browse/IMPALA-7623) | Impala Doc: Disallow set kudu.table\_name in CREATE and ALTER TABLE |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7647](https://issues.apache.org/jira/browse/IMPALA-7647) | Fix test gap - no test coverage of non-trivial HS2 result sets |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7643](https://issues.apache.org/jira/browse/IMPALA-7643) | Report the number of currently queued queries in stress test |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7532](https://issues.apache.org/jira/browse/IMPALA-7532) | Add retry/back-off to fetch-from-catalog RPCs |  Major | . | Todd Lipcon | Tianyi Wang |
| [IMPALA-7749](https://issues.apache.org/jira/browse/IMPALA-7749) | Merge aggregation node memory estimate is incorrectly influenced by limit |  Critical | Frontend | Tim Armstrong | Pooja Nilangekar |
| [IMPALA-7543](https://issues.apache.org/jira/browse/IMPALA-7543) | Enhance scan ranges to support sub-ranges |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-7791](https://issues.apache.org/jira/browse/IMPALA-7791) | Aggregation Node memory estimates don't account for number of fragment instances |  Blocker | . | Pooja Nilangekar | Pooja Nilangekar |
| [IMPALA-7908](https://issues.apache.org/jira/browse/IMPALA-7908) | Impala Doc: Doc admission control support for automatically setting  per host memory limit for a query |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7765](https://issues.apache.org/jira/browse/IMPALA-7765) | Impala 3.1 Doc: Docuement MAX\_MEM\_ESTIMATE\_FOR\_ADMISSION |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7634](https://issues.apache.org/jira/browse/IMPALA-7634) | Impala 3.1 Doc: Doc the command to gracefully shutdown Impala |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7195](https://issues.apache.org/jira/browse/IMPALA-7195) | Impala 3.1 Doc: Proxy user list should support groups |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7103](https://issues.apache.org/jira/browse/IMPALA-7103) | Impala 3.1 Doc: Query option to enable EC |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-6919](https://issues.apache.org/jira/browse/IMPALA-6919) | Impala 3.1 Doc: Doc the COMMENT ON statements |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7836](https://issues.apache.org/jira/browse/IMPALA-7836) | Impala 3.1 Doc: New query option 'topn\_bytes\_limit' for TopN to Sort conversion |  Major | Docs, Frontend | Sahil Takiar | Alexandra Rodoni |
| [IMPALA-7743](https://issues.apache.org/jira/browse/IMPALA-7743) | Impala 3.1 Doc: Document the option to load incremental statistics from catalog |  Major | . | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7218](https://issues.apache.org/jira/browse/IMPALA-7218) | Impala 3.1 Doc: Allow Column Definitions in ALTER VIEW |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7789](https://issues.apache.org/jira/browse/IMPALA-7789) | Impala 3.1 Doc: Admission Control Status in Impala Shell |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7525](https://issues.apache.org/jira/browse/IMPALA-7525) | Impala Doc: Document SHOW GRANT USER |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7434](https://issues.apache.org/jira/browse/IMPALA-7434) | Impala 2.12 Doc: Kudu's kinit does not support auth\_to\_local rules with Heimdal kerberos |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7206](https://issues.apache.org/jira/browse/IMPALA-7206) | Doc THREAD\_RESERVATION\_LIMIT |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7076](https://issues.apache.org/jira/browse/IMPALA-7076) | Impala 2.13 & 3.1 Docs: ALTER TABLE / VIEW SET OWNER |  Major | Docs | Fredy Wijaya | Alexandra Rodoni |
| [IMPALA-7687](https://issues.apache.org/jira/browse/IMPALA-7687) | Impala 3.1 Doc: Add support for multiple distinct operators in the same query block |  Major | Docs | Adam Holley | Alexandra Rodoni |
| [IMPALA-7432](https://issues.apache.org/jira/browse/IMPALA-7432) | Impala 3.1 Doc: Add logged\_in\_user alias for effective\_user |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7233](https://issues.apache.org/jira/browse/IMPALA-7233) | Impala 3.1 Doc: Doc the support for IANA timezone database |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7788](https://issues.apache.org/jira/browse/IMPALA-7788) | Impala Doc: ADLS Gen2 Support |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7705](https://issues.apache.org/jira/browse/IMPALA-7705) | Impala 2.13 & 3.1 Docs: ALTER DATABASE SET OWNER |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-6481](https://issues.apache.org/jira/browse/IMPALA-6481) | Impala Doc: WIDTH\_BUCKET function |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7392](https://issues.apache.org/jira/browse/IMPALA-7392) | Document SCAN\_BYTES\_LIMIT |  Major | Docs | Tim Armstrong | Alexandra Rodoni |
| [IMPALA-7546](https://issues.apache.org/jira/browse/IMPALA-7546) | Impala 3.1 Doc: Doc the new query option TIMEZONE |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7481](https://issues.apache.org/jira/browse/IMPALA-7481) | Impala Doc: Deprecated file-based authorization |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7244](https://issues.apache.org/jira/browse/IMPALA-7244) | Impala 3.1 Doc: Remove unsupported format write support |  Major | Docs | Bikramjeet Vig | Alexandra Rodoni |
| [IMPALA-6832](https://issues.apache.org/jira/browse/IMPALA-6832) | Impala 3.1 Doc: Add additional units to EXTRACT, DATE\_PART, TRUNC for temporal data type1 |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7509](https://issues.apache.org/jira/browse/IMPALA-7509) | Create table after drop can lead to table not found exception |  Critical | . | Rituparna Agrawal | Vuk Ercegovac |
| [IMPALA-7438](https://issues.apache.org/jira/browse/IMPALA-7438) | Automated test for concurrent DDL and metadata queries |  Major | . | Todd Lipcon |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5763](https://issues.apache.org/jira/browse/IMPALA-5763) | Setting logbufsecs to 0 causes Impala to spin on one core |  Minor | Docs | Lars Volker | Alexandra Rodoni |
| [IMPALA-7162](https://issues.apache.org/jira/browse/IMPALA-7162) | [DOCS] idle\_query\_timeout setting in Impala needs more clarification |  Minor | Docs | Laurel Hale | Alexandra Rodoni |
| [IMPALA-7456](https://issues.apache.org/jira/browse/IMPALA-7456) | Deprecated file-based authorization |  Major | Frontend | Adam Holley | Adam Holley |
| [IMPALA-7075](https://issues.apache.org/jira/browse/IMPALA-7075) | Add support for object ownership for Impala |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-5502](https://issues.apache.org/jira/browse/IMPALA-5502) | "\*DBC Connector for Impala" is without context |  Minor | Docs | Jim Apple | Alexandra Rodoni |
| [IMPALA-7079](https://issues.apache.org/jira/browse/IMPALA-7079) | test\_scanners.TestParquet.test\_multiple\_blocks fails in the erasure coding job |  Major | . | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-5604](https://issues.apache.org/jira/browse/IMPALA-5604) | Document DISABLE\_CODEGEN\_ROWS\_THRESHOLD |  Major | Docs | Tim Armstrong | Tim Armstrong |
| [IMPALA-7050](https://issues.apache.org/jira/browse/IMPALA-7050) | Impala Doc: Document inc\_stats\_size\_limit\_bytes command line option for Impalad |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7182](https://issues.apache.org/jira/browse/IMPALA-7182) | Impala does not allow the use of insecure clusters with public IPs by default |  Critical | Security | Sailesh Mukil | Alexandra Rodoni |
| [IMPALA-6982](https://issues.apache.org/jira/browse/IMPALA-6982) | Publish Impala Best Practice on Hot Spot Analysis |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7046](https://issues.apache.org/jira/browse/IMPALA-7046) | Add targeted regression test for race in IMPALA-7033 |  Major | Backend | Daniel Hecht | Daniel Hecht |
| [IMPALA-5900](https://issues.apache.org/jira/browse/IMPALA-5900) | document -fe\_service\_threads |  Major | Docs | Michael Brown | Alexandra Rodoni |
| [IMPALA-7190](https://issues.apache.org/jira/browse/IMPALA-7190) | Remove unsupported format write support |  Major | Backend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-7299](https://issues.apache.org/jira/browse/IMPALA-7299) | Impala fails to work with the krb5 config 'rdns=false' in Impala 2.12.0/3.0 |  Critical | Docs | Sailesh Mukil | Alexandra Rodoni |
| [IMPALA-7317](https://issues.apache.org/jira/browse/IMPALA-7317) | Instant validation job that runs on Gerrit upload (clang tidy, other simple checks) |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-3330](https://issues.apache.org/jira/browse/IMPALA-3330) | translate deserves more documentation |  Minor | Docs | Jim Apple | Alexandra Rodoni |
| [IMPALA-7440](https://issues.apache.org/jira/browse/IMPALA-7440) | Consider removing --nlj-filter support from stress test |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7202](https://issues.apache.org/jira/browse/IMPALA-7202) | Add WIDTH\_BUCKET() function to the decimal fuzz test |  Critical | Infrastructure | Taras Bobrovytsky | Zoltán Borók-Nagy |
| [IMPALA-7430](https://issues.apache.org/jira/browse/IMPALA-7430) | Remove the log added to HdfsScanNode::ScannerThread |  Blocker | . | Pooja Nilangekar | Pooja Nilangekar |
| [IMPALA-7624](https://issues.apache.org/jira/browse/IMPALA-7624) | test-with-docker sometimes hangs creating docker containers |  Major | . | Philip Martin |  |
| [IMPALA-7607](https://issues.apache.org/jira/browse/IMPALA-7607) | Add a reference to EXEC\_TIME\_LIMIT\_S to "Setting Timeouts" page |  Major | Docs | Vincent Tran | Alexandra Rodoni |
| [IMPALA-7102](https://issues.apache.org/jira/browse/IMPALA-7102) | Add a query option to enable/disable running queries erasure coded files |  Major | Frontend | Taras Bobrovytsky | Tianyi Wang |
| [IMPALA-6859](https://issues.apache.org/jira/browse/IMPALA-6859) | De-templatize RpcMgrTestBase |  Major | Backend | Sailesh Mukil | Michael Ho |
| [IMPALA-7806](https://issues.apache.org/jira/browse/IMPALA-7806) | Impala 3.1 Doc: Check the existing known issues against 3.1 fixes |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7815](https://issues.apache.org/jira/browse/IMPALA-7815) | Impala 3.1 Release Notes |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7706](https://issues.apache.org/jira/browse/IMPALA-7706) | Impala Doc: ALTER TABLE SET OWNER not on Sentry page for Impala |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7186](https://issues.apache.org/jira/browse/IMPALA-7186) | Docs for kudu\_read\_mode |  Major | Docs | Thomas Tauber-Marshall | Alexandra Rodoni |
| [IMPALA-7385](https://issues.apache.org/jira/browse/IMPALA-7385) | several timezone conversion tests are failing within test-with-docker context |  Major | . | Philip Martin | Philip Martin |
| [IMPALA-7614](https://issues.apache.org/jira/browse/IMPALA-7614) | Impala 3.1 Doc: Document the New Invalidate Options |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |


