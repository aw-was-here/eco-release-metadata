
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

## Release Impala 3.3.0 - 2019-08-22



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-9391](https://issues.apache.org/jira/browse/IMPALA-9391) | Impala 3.3.0  can't support Transactional (ACID) tables |  Critical | Backend | liu |  |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-7982](https://issues.apache.org/jira/browse/IMPALA-7982) | Add network I/O throughput to query profiles |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-5051](https://issues.apache.org/jira/browse/IMPALA-5051) | Add support to write INT64 timestamps to the parquet writer |  Major | Backend | Lars Volker | Csaba Ringhofer |
| [IMPALA-7981](https://issues.apache.org/jira/browse/IMPALA-7981) | Add system disk I/O throughput to query profiles |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-5843](https://issues.apache.org/jira/browse/IMPALA-5843) | Use page index in Parquet files to skip pages |  Critical | Backend | Lars Volker | Zoltán Borók-Nagy |
| [IMPALA-8438](https://issues.apache.org/jira/browse/IMPALA-8438) | List valid writeIds for a ACID table |  Critical | Frontend | Yongzhi Chen | Yongzhi Chen |
| [IMPALA-1653](https://issues.apache.org/jira/browse/IMPALA-1653) | Impala should not close a session when a HiveServer2 connection is closed |  Minor | Clients | Erick Tryzelaar | Thomas Tauber-Marshall |
| [IMPALA-8420](https://issues.apache.org/jira/browse/IMPALA-8420) | Support HTTP based HS2/beeswax endpoints on coordinators |  Major | Backend, Clients | Bharath Vissapragada | Thomas Tauber-Marshall |
| [IMPALA-8502](https://issues.apache.org/jira/browse/IMPALA-8502) | Improve Kudu/Impala integration based on Kudu/HMS/Sentry integration |  Major | Catalog, Frontend | Hao Hao | Hao Hao |
| [IMPALA-8484](https://issues.apache.org/jira/browse/IMPALA-8484) | Add support to run queries on disjoint executor groups |  Major | . | Lars Volker | Lars Volker |
| [IMPALA-8158](https://issues.apache.org/jira/browse/IMPALA-8158) | Bump Impyla version, use HS2 service to retrieve thrift profiles |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-8636](https://issues.apache.org/jira/browse/IMPALA-8636) | Implement INSERT for insert-only ACID tables |  Critical | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-8593](https://issues.apache.org/jira/browse/IMPALA-8593) | Prohibit write to bucketed table |  Critical | Frontend | Yongzhi Chen | Yongzhi Chen |
| [IMPALA-8752](https://issues.apache.org/jira/browse/IMPALA-8752) | Add Jaro-winkler edit distance and similarity built-in function |  Major | . | Norbert Luksa | Norbert Luksa |
| [IMPALA-7947](https://issues.apache.org/jira/browse/IMPALA-7947) | Run impalad minicluster processes inside docker containers |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-8284](https://issues.apache.org/jira/browse/IMPALA-8284) | KuduTableSink spends a lot of CPU copying KuduColumnSchemas |  Major | Backend | William Berkeley | Todd Lipcon |
| [IMPALA-8303](https://issues.apache.org/jira/browse/IMPALA-8303) | Generate JUnitXML symptom for ASAN failures |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-8271](https://issues.apache.org/jira/browse/IMPALA-8271) | Refactor the use of Thrift enums in query-options.cc |  Minor | Backend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8305](https://issues.apache.org/jira/browse/IMPALA-8305) | Generate JUnitXML symptom to detect crashes due to a DCHECK |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-5393](https://issues.apache.org/jira/browse/IMPALA-5393) | Regexp should use THREAD\_LOCAL context rather than FRAGMENT\_LOCAL |  Minor | Backend | Doug Cameron | Todd Lipcon |
| [IMPALA-8316](https://issues.apache.org/jira/browse/IMPALA-8316) | Update re2 to avoid lock contention |  Major | Backend | Todd Lipcon | Todd Lipcon |
| [IMPALA-8328](https://issues.apache.org/jira/browse/IMPALA-8328) | Add missing ToSql test cases for authorization statements |  Major | Infrastructure | Austin Nobis | Austin Nobis |
| [IMPALA-8362](https://issues.apache.org/jira/browse/IMPALA-8362) | Add authorization tests running with local catalog |  Minor | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8345](https://issues.apache.org/jira/browse/IMPALA-8345) | Add option to set up minicluster to use Hive 3 |  Major | Infrastructure | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-7800](https://issues.apache.org/jira/browse/IMPALA-7800) | Reject or timeout new incoming connections once --fe\_service\_threads limit is reached |  Major | Clients | Michael Ho | Zoram Thanga |
| [IMPALA-7640](https://issues.apache.org/jira/browse/IMPALA-7640) | ALTER TABLE RENAME on managed Kudu table should rename underlying Kudu table |  Major | Catalog | Mike Percy | Sahil Takiar |
| [IMPALA-6050](https://issues.apache.org/jira/browse/IMPALA-6050) | Query profiles should clearly indicate storage layer(s) used |  Major | Backend | Sailesh Mukil | Sahil Takiar |
| [IMPALA-8410](https://issues.apache.org/jira/browse/IMPALA-8410) | TestTpcdsInsert doesn't run in core or exhaustive builds, and test\_tpcds\_partitioned\_insert is broken |  Minor | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8454](https://issues.apache.org/jira/browse/IMPALA-8454) | Recursively list files within transactional tables |  Critical | Catalog | Todd Lipcon | Todd Lipcon |
| [IMPALA-8269](https://issues.apache.org/jira/browse/IMPALA-8269) | Clean up authorization test package structure |  Minor | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-5351](https://issues.apache.org/jira/browse/IMPALA-5351) | Handle column comments for Kudu tables |  Major | Catalog | Thomas Tauber-Marshall | LiFu He |
| [IMPALA-8341](https://issues.apache.org/jira/browse/IMPALA-8341) | Data cache for remote reads |  Critical | Backend | Michael Ho | Michael Ho |
| [IMPALA-8512](https://issues.apache.org/jira/browse/IMPALA-8512) | Data cache tests failing on older CentOS 6 versions |  Blocker | Infrastructure | Tim Armstrong | Michael Ho |
| [IMPALA-8428](https://issues.apache.org/jira/browse/IMPALA-8428) | Add support for caching file handles on s3 |  Critical | Backend | Joe McDonnell | Sahil Takiar |
| [IMPALA-4356](https://issues.apache.org/jira/browse/IMPALA-4356) | Automatically codegen expressions with any root Expr node |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8116](https://issues.apache.org/jira/browse/IMPALA-8116) | Impala Doc: Create Impala Usage Limits doc |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7936](https://issues.apache.org/jira/browse/IMPALA-7936) | Enable better control over Parquet writing |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-8344](https://issues.apache.org/jira/browse/IMPALA-8344) | Add support for running S3 tests with S3Guard |  Critical | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-6903](https://issues.apache.org/jira/browse/IMPALA-6903) | Allow download of text profile via Impala WebUI |  Minor | . | Gabor Kaszab | Yongzhi Chen |
| [IMPALA-8604](https://issues.apache.org/jira/browse/IMPALA-8604) | Improve authorization test coverage for update/upsert/delete statements |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8545](https://issues.apache.org/jira/browse/IMPALA-8545) | Test ldap authentication |  Major | Infrastructure | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-8460](https://issues.apache.org/jira/browse/IMPALA-8460) | Unify cluster membership management in the backend |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-8578](https://issues.apache.org/jira/browse/IMPALA-8578) | Reduce code in metric headers |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8450](https://issues.apache.org/jira/browse/IMPALA-8450) | Add support for zstd in parquet |  Major | Backend | Tim Armstrong | Abhishek Rawat |
| [IMPALA-8605](https://issues.apache.org/jira/browse/IMPALA-8605) | Clean up connection/session management |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8659](https://issues.apache.org/jira/browse/IMPALA-8659) | Allow self-RPCs for KRPC to go via loopback |  Major | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-8542](https://issues.apache.org/jira/browse/IMPALA-8542) | Access trace collection for data cache |  Major | Backend | Todd Lipcon | Todd Lipcon |
| [IMPALA-8617](https://issues.apache.org/jira/browse/IMPALA-8617) | Add support for lz4 in parquet |  Major | Backend | Abhishek Rawat | Abhishek Rawat |
| [IMPALA-8443](https://issues.apache.org/jira/browse/IMPALA-8443) | Record time spent in authorization in the runtime profile |  Major | Frontend | Bharath Vissapragada | Tamas Mate |
| [IMPALA-8667](https://issues.apache.org/jira/browse/IMPALA-8667) | Remove --pull\_incremental\_statistics flag (on by default) |  Minor | Catalog | Todd Lipcon | Todd Lipcon |
| [IMPALA-7290](https://issues.apache.org/jira/browse/IMPALA-7290) | Move impala-shell to use HS2 |  Major | Clients | Tim Armstrong | Tim Armstrong |
| [IMPALA-8682](https://issues.apache.org/jira/browse/IMPALA-8682) | Add test coverage for testing authorized proxy user/group with Ranger |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7802](https://issues.apache.org/jira/browse/IMPALA-7802) | Implement support for closing idle sessions |  Critical | Clients | Michael Ho | Michael Ho |
| [IMPALA-8476](https://issues.apache.org/jira/browse/IMPALA-8476) | Replace Sentry admin check workaround with proper Sentry API |  Minor | Catalog | Fredy Wijaya | Fang-Yu Rao |
| [IMPALA-8665](https://issues.apache.org/jira/browse/IMPALA-8665) | Include extra info in error message when date cast fails |  Major | Backend | Gabor Kaszab | Jiawei Wang |
| [IMPALA-8734](https://issues.apache.org/jira/browse/IMPALA-8734) | ALTER TABLE ... SET TBLPROPERTIES doesn't propagate until Invalidate Metadata |  Major | . | Vincent Tran | Fredy Wijaya |
| [IMPALA-8673](https://issues.apache.org/jira/browse/IMPALA-8673) | Add query option to force plan hints for insert queries |  Major | Backend, Frontend | Lars Volker | Abhishek Rawat |
| [IMPALA-8543](https://issues.apache.org/jira/browse/IMPALA-8543) | Log more diagnostics information in TAcceptQueueServer |  Major | Backend | Michael Ho | Michael Ho |
| [IMPALA-8486](https://issues.apache.org/jira/browse/IMPALA-8486) | test\_udf\_update\_via\_drop and test\_udf\_update\_via\_create fail on local catalog |  Critical | Catalog | Tim Armstrong | Quanlong Huang |
| [IMPALA-8776](https://issues.apache.org/jira/browse/IMPALA-8776) | test\_event\_processing.TestEventProcessing.test\_insert\_events is flaky |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-5278](https://issues.apache.org/jira/browse/IMPALA-5278) | Add Kerberos HTTP SPNEGO authentication support to Impala web consoles |  Major | Catalog, Clients | Chris A |  |
| [IMPALA-8766](https://issues.apache.org/jira/browse/IMPALA-8766) | Change hadoop cloud dependencies to use hadoop-cloud-storage |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-8799](https://issues.apache.org/jira/browse/IMPALA-8799) | Prometheus metrics should be prefixed with "impala\_" |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8785](https://issues.apache.org/jira/browse/IMPALA-8785) | DEBUG build images should be tagged differently from release build |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8828](https://issues.apache.org/jira/browse/IMPALA-8828) | Support impersonation via http paths |  Major | Clients | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-8806](https://issues.apache.org/jira/browse/IMPALA-8806) | Add metrics to improve observability of executor groups |  Major | . | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-7486](https://issues.apache.org/jira/browse/IMPALA-7486) | Admit less memory on dedicated coordinator for admission control purposes |  Major | Backend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-8771](https://issues.apache.org/jira/browse/IMPALA-8771) | Missing stats warning for complex type columns |  Minor | Frontend | Bharath Vissapragada | Tamas Mate |
| [IMPALA-8637](https://issues.apache.org/jira/browse/IMPALA-8637) | Implement transaction handling and locking for ACID queries |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-8823](https://issues.apache.org/jira/browse/IMPALA-8823) | Implement DROP TABLE for insert-only ACID tables |  Major | . | Zoltán Borók-Nagy | Gabor Kaszab |
| [IMPALA-8549](https://issues.apache.org/jira/browse/IMPALA-8549) | Add support for scanning DEFLATE text files |  Minor | Backend | Sahil Takiar | Ethan |
| [IMPALA-5149](https://issues.apache.org/jira/browse/IMPALA-5149) | Provide query profile in JSON format |  Major | Frontend | Greg Rahn | Jiawei Wang |
| [IMPALA-8856](https://issues.apache.org/jira/browse/IMPALA-8856) | TestKuduHMSIntegration.test\_drop\_managed\_kudu\_table failed with "the table does not exist" |  Blocker | Catalog | Tim Armstrong | Hao Hao |
| [IMPALA-8374](https://issues.apache.org/jira/browse/IMPALA-8374) | Add high water mark metrics and limits for spill disk usage |  Major | Backend | David Rorke |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-8279](https://issues.apache.org/jira/browse/IMPALA-8279) | Revert IMPALA-6658 to avoid ETL performance regression |  Major | . | Andrew Sherman | Andrew Sherman |
| [IMPALA-8288](https://issues.apache.org/jira/browse/IMPALA-8288) | Setting EXEC\_TIME\_LIMIT\_S to very high value triggers DCHECK in pretty printer |  Critical | Backend | Tim Armstrong | Andrew Sherman |
| [IMPALA-8277](https://issues.apache.org/jira/browse/IMPALA-8277) | CHECK can be hit when there are gaps in present CPU numbers (KUDU-2721) |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8283](https://issues.apache.org/jira/browse/IMPALA-8283) | Creating a Kudu table doesn't take the primary key order specified |  Major | . | Brian Hausmann | Todd Lipcon |
| [IMPALA-8286](https://issues.apache.org/jira/browse/IMPALA-8286) | Accounting error in stress test on client failure |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8320](https://issues.apache.org/jira/browse/IMPALA-8320) | TestBreakpadExhaustive.test\_minidump\_cleanup\_thread hits NoSuchProcess exception |  Critical | Infrastructure | Joe McDonnell | Lars Volker |
| [IMPALA-8317](https://issues.apache.org/jira/browse/IMPALA-8317) | impala-shell's config\_file should be parsed correctly for 'keyval' |  Minor | Clients | Vincent Tran | Fredy Wijaya |
| [IMPALA-8326](https://issues.apache.org/jira/browse/IMPALA-8326) | Incorrect toSql for CreateDropRoleStmt |  Major | Frontend | Austin Nobis | Austin Nobis |
| [IMPALA-8325](https://issues.apache.org/jira/browse/IMPALA-8325) | Leading Unicode comments cause Impala Shell failure. |  Critical | . | Andrew Sherman | Andrew Sherman |
| [IMPALA-8337](https://issues.apache.org/jira/browse/IMPALA-8337) | Dataload fails due to ImportError: cannot import name OrderedDict from impala-shell |  Blocker | Clients | Joe McDonnell | Fredy Wijaya |
| [IMPALA-8332](https://issues.apache.org/jira/browse/IMPALA-8332) | Remove Impala Shell warnings part 1 |  Major | . | Andrew Sherman | Andrew Sherman |
| [IMPALA-8340](https://issues.apache.org/jira/browse/IMPALA-8340) | IMPALA-8337 adds configparser dependency which isn't always available where impala-shell is installed |  Blocker | Clients | Tim Armstrong | Fredy Wijaya |
| [IMPALA-6326](https://issues.apache.org/jira/browse/IMPALA-6326) | segfault during impyla HiveServer2Cursor.cancel\_operation() over SSL |  Major | Clients | Matthew Mulder | Tim Armstrong |
| [IMPALA-8330](https://issues.apache.org/jira/browse/IMPALA-8330) | Impala shell --config\_file should use flag names and not dest variable names |  Major | Clients | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8372](https://issues.apache.org/jira/browse/IMPALA-8372) | Impala Doc: Consistent uses of hyphens with global flags |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8377](https://issues.apache.org/jira/browse/IMPALA-8377) | Recent toolchain bump breaks Ubuntu 14.04 builds |  Critical | Infrastructure | Lars Volker | Thomas Tauber-Marshall |
| [IMPALA-8360](https://issues.apache.org/jira/browse/IMPALA-8360) | SynchronousThreadPoolTest ASSERT\_TRUE(\*no\_sleep\_destroyed) failed |  Major | Backend | Sahil Takiar | Joe McDonnell |
| [IMPALA-8393](https://issues.apache.org/jira/browse/IMPALA-8393) | setup-ranger step in create-load-data.sh breaks data load to real clusters |  Critical | Infrastructure | David Knupp | Austin Nobis |
| [IMPALA-8312](https://issues.apache.org/jira/browse/IMPALA-8312) | Alter database operations have race condition |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-8395](https://issues.apache.org/jira/browse/IMPALA-8395) | SystemStateInfoTest.ReadProcNetDev failing on Centos 6 |  Blocker | Backend | Joe McDonnell | Lars Volker |
| [IMPALA-8224](https://issues.apache.org/jira/browse/IMPALA-8224) | Impala Doc: Update the Web UI doc with missing contents |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8322](https://issues.apache.org/jira/browse/IMPALA-8322) | Cancelling an in-progress IO can cause delays and/or RPC timeouts due to tangle of locks |  Blocker | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-8336](https://issues.apache.org/jira/browse/IMPALA-8336) | TestNestedTypes.test\_tpch\_mem\_limit\_single\_node failed on centos6 |  Critical | Backend | Joe McDonnell | Tim Armstrong |
| [IMPALA-8413](https://issues.apache.org/jira/browse/IMPALA-8413) | SystemStateInfoTest.ReadProcNetDev fails inside a Docker container |  Major | Backend | Laszlo Gaal | Lars Volker |
| [IMPALA-8412](https://issues.apache.org/jira/browse/IMPALA-8412) | Bump ORC library version |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-8426](https://issues.apache.org/jira/browse/IMPALA-8426) | Logging error in DROP\_TABLE event processing. |  Minor | . | Bharath Krishna | Bharath Krishna |
| [IMPALA-8430](https://issues.apache.org/jira/browse/IMPALA-8430) | testCreateDropCreateDatabaseFromImpala failed |  Blocker | Catalog | Attila Jeges | Bharath Krishna |
| [IMPALA-8390](https://issues.apache.org/jira/browse/IMPALA-8390) | test\_cancel\_insert and test\_cancel\_sort broken |  Critical | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-8270](https://issues.apache.org/jira/browse/IMPALA-8270) | ASAN issue with MemTracker::LogUsage() called via webserver's /memz page |  Blocker | Backend | Joe McDonnell | Tim Armstrong |
| [IMPALA-8401](https://issues.apache.org/jira/browse/IMPALA-8401) | Initiate graceful shutdown of impala daemon by sending a signal to the process |  Major | . | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-8295](https://issues.apache.org/jira/browse/IMPALA-8295) | test\_mem\_limit in test\_admission\_controller timed out waiting for query to end |  Major | . | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-8444](https://issues.apache.org/jira/browse/IMPALA-8444) | Analysis perf regression after IMPALA-7616 |  Critical | Frontend | Bharath Vissapragada | Fredy Wijaya |
| [IMPALA-8380](https://issues.apache.org/jira/browse/IMPALA-8380) | The minicluster metastore doesn't start on systems with postgres 10 |  Major | Infrastructure | Lars Volker | Laszlo Gaal |
| [IMPALA-8465](https://issues.apache.org/jira/browse/IMPALA-8465) | hs2.test\_json\_endpoints.TestJsonEndpoints fails on deployed clusters |  Major | Infrastructure | David Knupp | Tim Armstrong |
| [IMPALA-8463](https://issues.apache.org/jira/browse/IMPALA-8463) | skip.header.line.count ignored on local catalog |  Critical | Catalog | Tim Armstrong | Tim Armstrong |
| [IMPALA-8466](https://issues.apache.org/jira/browse/IMPALA-8466) | TestHdfsCachingDdl.test\_caching\_ddl fails under docker |  Critical | Catalog, Infrastructure | Fang-Yu Rao | Tim Armstrong |
| [IMPALA-2990](https://issues.apache.org/jira/browse/IMPALA-2990) | Coordinator should timeout and cancel queries with unresponsive / stuck executors |  Critical | Distributed Exec | Sailesh Mukil | Thomas Tauber-Marshall |
| [IMPALA-8327](https://issues.apache.org/jira/browse/IMPALA-8327) | TestRPCTimeout::test\_reportexecstatus\_retry() times out on exhaustive build |  Critical | Backend | Joe McDonnell | Thomas Tauber-Marshall |
| [IMPALA-8469](https://issues.apache.org/jira/browse/IMPALA-8469) | Admit memory not set in backend descriptor for coordinator-only nodes |  Critical | Backend | Ian Buss | Tim Armstrong |
| [IMPALA-8475](https://issues.apache.org/jira/browse/IMPALA-8475) | buildall.sh fails with undefined CMAKE\_BUILD\_TYPE\_LIST on Centos |  Blocker | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-8481](https://issues.apache.org/jira/browse/IMPALA-8481) | test\_hbase\_col\_filter failing on deployed clusters due to permissions error |  Critical | Infrastructure | David Knupp | David Knupp |
| [IMPALA-8478](https://issues.apache.org/jira/browse/IMPALA-8478) | tests/authorization/test\_provider.py breaks on CentOS 6 with Python 2.7-ism |  Blocker | . | Laszlo Gaal | Fredy Wijaya |
| [IMPALA-8468](https://issues.apache.org/jira/browse/IMPALA-8468) | buildall.sh should warn that asan/ubsan/... are exclusive |  Minor | Backend, Infrastructure | Csaba Ringhofer |  |
| [IMPALA-8467](https://issues.apache.org/jira/browse/IMPALA-8467) | ParquetPlainEncoder::Decode leads to multiple test failures in ASAN builds |  Blocker | . | Laszlo Gaal | Daniel Becker |
| [IMPALA-8485](https://issues.apache.org/jira/browse/IMPALA-8485) | References to deprecated feature authorization policy file need to be removed |  Trivial | Infrastructure | Austin Nobis | Austin Nobis |
| [IMPALA-8359](https://issues.apache.org/jira/browse/IMPALA-8359) | Coverage measurement is not working for Impala daemons |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-8496](https://issues.apache.org/jira/browse/IMPALA-8496) | test\_data\_cache.py is flaky |  Critical | Backend | Michael Ho | Michael Ho |
| [IMPALA-8499](https://issues.apache.org/jira/browse/IMPALA-8499) | test\_insert\_events datetime.total\_seconds(), which is not supported in Python 2.6 |  Blocker | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6216](https://issues.apache.org/jira/browse/IMPALA-6216) | PYTHON\_EGG\_CACHE used in impala-shell code should be made configurable |  Major | . | Mala Chikka Kempanna | Yongzhi Chen |
| [IMPALA-8488](https://issues.apache.org/jira/browse/IMPALA-8488) | Authorization tests for Ranger breaks on S3 in test\_show\_grant |  Blocker | . | Laszlo Gaal | Austin Nobis |
| [IMPALA-4658](https://issues.apache.org/jira/browse/IMPALA-4658) | Potential race if compiler reorders ReachedLimit() usage |  Major | Backend | Matthew Jacobs | Abhishek Rawat |
| [IMPALA-8524](https://issues.apache.org/jira/browse/IMPALA-8524) | Avoid calling "hive" via command line in EE tests |  Major | Infrastructure | Csaba Ringhofer |  |
| [IMPALA-2029](https://issues.apache.org/jira/browse/IMPALA-2029) | Impala in CDH 5.2.0 fails to compile with hadoop 2.7 |  Major | Backend | Varun Saxena | Todd Lipcon |
| [IMPALA-7176](https://issues.apache.org/jira/browse/IMPALA-7176) | Impala fails to cancel a fragment in test\_insert\_mem\_limit |  Critical | Backend | Tianyi Wang | Michael Ho |
| [IMPALA-8527](https://issues.apache.org/jira/browse/IMPALA-8527) | Maven hangs on jenkins.impala.io talking to repository.apache.org |  Blocker | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8414](https://issues.apache.org/jira/browse/IMPALA-8414) | Warning caused by not skipping header of /proc/net/dev |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-8371](https://issues.apache.org/jira/browse/IMPALA-8371) | Unified backend tests need to return appropriate return code |  Blocker | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-966](https://issues.apache.org/jira/browse/IMPALA-966) | Type errors are attributed to wrong expression with insert |  Minor | Frontend | Henry Robinson | Alice Fan |
| [IMPALA-8464](https://issues.apache.org/jira/browse/IMPALA-8464) | JdbcTest.testMetaDataGetColumnComments() fails with local catalog |  Major | Catalog | Tim Armstrong | Tim Armstrong |
| [IMPALA-8563](https://issues.apache.org/jira/browse/IMPALA-8563) | BE tests specifying their own SSL cipher sets fail on Ubuntu 18 |  Critical | Infrastructure | Laszlo Gaal | Laszlo Gaal |
| [IMPALA-8497](https://issues.apache.org/jira/browse/IMPALA-8497) | SQL return ArrayIndexOutOfBoundsException when ends with '\\n' |  Minor | Frontend | Sheng Wang | Sheng Wang |
| [IMPALA-8566](https://issues.apache.org/jira/browse/IMPALA-8566) | COMPUTE INCREMENTAL STATS sets num\_nulls off-by-one |  Major | Backend | Todd Lipcon | Todd Lipcon |
| [IMPALA-8537](https://issues.apache.org/jira/browse/IMPALA-8537) | Negative values reported for tmp-file-mgr.scratch-space-bytes-used under heavy spilling load |  Major | Backend | David Rorke | Abhishek Rawat |
| [IMPALA-8540](https://issues.apache.org/jira/browse/IMPALA-8540) | Statestore address already in use error causing occasional test failures |  Critical | Infrastructure | David Rorke | Tim Armstrong |
| [IMPALA-8458](https://issues.apache.org/jira/browse/IMPALA-8458) | Can't set numNull/maxSize/avgSize column stats with local catalog without also setting NDV |  Critical | Catalog | Tim Armstrong | Todd Lipcon |
| [IMPALA-4304](https://issues.apache.org/jira/browse/IMPALA-4304) | Refactor cmake\_modules to not use thirdparty/ |  Major | Infrastructure | Sailesh Mukil |  |
| [IMPALA-7665](https://issues.apache.org/jira/browse/IMPALA-7665) | Bringing up stopped statestore causes queries to fail |  Critical | Distributed Exec | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-8382](https://issues.apache.org/jira/browse/IMPALA-8382) | Add support for SLES 12 SP3 |  Major | . | Hector Acosta | Hector Acosta |
| [IMPALA-8314](https://issues.apache.org/jira/browse/IMPALA-8314) | bootstrap\_system.sh does not set correct permissions for files in ~/.ssh |  Major | . | Hector Acosta | Hector Acosta |
| [IMPALA-8333](https://issues.apache.org/jira/browse/IMPALA-8333) | Remove Impala Shell warnings part 2 |  Critical | . | Andrew Sherman | Andrew Sherman |
| [IMPALA-8307](https://issues.apache.org/jira/browse/IMPALA-8307) | ntp-wait --help does not always return 0 |  Major | . | Hector Acosta | Hector Acosta |
| [IMPALA-8595](https://issues.apache.org/jira/browse/IMPALA-8595) | THRIFT-3505 breaks IMPALA-5775 |  Major | . | Robbie Zhang | Robbie Zhang |
| [IMPALA-8613](https://issues.apache.org/jira/browse/IMPALA-8613) | AnalyzeKuduDDLTest broken in S3 environment |  Critical | Frontend, Infrastructure | Csaba Ringhofer |  |
| [IMPALA-8560](https://issues.apache.org/jira/browse/IMPALA-8560) | Prometheus metrics support in Impala |  Major | Backend | Harshil Shah | Harshil Shah |
| [IMPALA-8562](https://issues.apache.org/jira/browse/IMPALA-8562) | Data cache should skip scan range with mtime == -1 |  Blocker | Backend | Michael Ho | Michael Ho |
| [IMPALA-8603](https://issues.apache.org/jira/browse/IMPALA-8603) | Some custom cluster tests print error messages after IMPALA-1653 was fixed |  Major | Infrastructure | Lars Volker | Thomas Tauber-Marshall |
| [IMPALA-8638](https://issues.apache.org/jira/browse/IMPALA-8638) | Test failure: test\_create\_table\_timestamp |  Blocker | . | Csaba Ringhofer | Fredy Wijaya |
| [IMPALA-8635](https://issues.apache.org/jira/browse/IMPALA-8635) | Kudu HMS integration check should not fetch metastore URIs configuration from metastore |  Blocker | Catalog | Todd Lipcon | Todd Lipcon |
| [IMPALA-8570](https://issues.apache.org/jira/browse/IMPALA-8570) | test\_restart\_statestore\_query\_resilience AssertionError: Query expected to fail |  Blocker | . | Thomas Tauber-Marshall | Bikramjeet Vig |
| [IMPALA-8386](https://issues.apache.org/jira/browse/IMPALA-8386) | Incorrect predicate in a left outer join query |  Critical | Frontend | Quanlong Huang | Quanlong Huang |
| [IMPALA-7957](https://issues.apache.org/jira/browse/IMPALA-7957) | UNION ALL query returns incorrect results |  Blocker | Frontend | Luis E Martinez-Poblete | Quanlong Huang |
| [IMPALA-7154](https://issues.apache.org/jira/browse/IMPALA-7154) | Error making 'dropDatabase' RPC to Hive Metastore. NoSuchObjectException thrown |  Blocker | Catalog | Tim Armstrong | Vihang Karajgaonkar |
| [IMPALA-8561](https://issues.apache.org/jira/browse/IMPALA-8561) | ScanRanges with mtime=-1 can lead to inconsistent reads when using the file handle cache |  Blocker | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-8459](https://issues.apache.org/jira/browse/IMPALA-8459) | Cannot delete impala/kudu table if backing kudu table dropped with local catalog |  Critical | Catalog | Tim Armstrong | Todd Lipcon |
| [IMPALA-8455](https://issues.apache.org/jira/browse/IMPALA-8455) | GET\_TABLE failed with InvalidStorageDescriptorException |  Critical | Catalog | Xiaomin Zhang | Bharath Vissapragada |
| [IMPALA-8553](https://issues.apache.org/jira/browse/IMPALA-8553) | Several tests failing with connection errors on deployed clusters |  Critical | Infrastructure | David Knupp | Tim Armstrong |
| [IMPALA-8552](https://issues.apache.org/jira/browse/IMPALA-8552) | impala-shell tests break on deployed clusters if IMPALA\_LOCAL\_BUILD\_VERSION is None |  Critical | Infrastructure | David Knupp | Tim Armstrong |
| [IMPALA-1789](https://issues.apache.org/jira/browse/IMPALA-1789) | Return row count in HS2, possibly by having INSERT return a result set |  Minor | Clients | Henry Robinson |  |
| [IMPALA-8567](https://issues.apache.org/jira/browse/IMPALA-8567) | Many random catalog consistency issues with catalog v2/event processor |  Critical | Frontend | Tim Armstrong | Todd Lipcon |
| [IMPALA-4865](https://issues.apache.org/jira/browse/IMPALA-4865) | Limit size of literal values from constant folding |  Major | Frontend | Henry Robinson | Fang-Yu Rao |
| [IMPALA-8700](https://issues.apache.org/jira/browse/IMPALA-8700) | test\_hdfs\_scan\_node\_errors DCHECK-failing on invalid mtime |  Blocker | Backend | Jim Apple | Joe McDonnell |
| [IMPALA-8565](https://issues.apache.org/jira/browse/IMPALA-8565) | Test failure in TestAdmissionControllerStress.test\_mem\_limit |  Critical | Infrastructure | David Rorke | Tim Armstrong |
| [IMPALA-8315](https://issues.apache.org/jira/browse/IMPALA-8315) | Error from shutil.rmtree in ImpalaTestSuite::run\_stmt\_in\_hive() |  Critical | Infrastructure | Joe McDonnell | Tim Armstrong |
| [IMPALA-8697](https://issues.apache.org/jira/browse/IMPALA-8697) | test\_query\_options fails on EC(Erasure coding turned on) builds |  Critical | . | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-8630](https://issues.apache.org/jira/browse/IMPALA-8630) | Consistent remote placement should include partition information when calculating placement |  Blocker | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-8713](https://issues.apache.org/jira/browse/IMPALA-8713) | MathFunctions::Unhex() can overflow stack |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7734](https://issues.apache.org/jira/browse/IMPALA-7734) | Catalog and Statestore memz page shows useless memory breakdown |  Minor | . | Tim Armstrong | Tamas Mate |
| [IMPALA-8743](https://issues.apache.org/jira/browse/IMPALA-8743) | ASAN failure with BatchedBitReader::UnpackBatch |  Blocker | Backend | Joe McDonnell |  |
| [IMPALA-8689](https://issues.apache.org/jira/browse/IMPALA-8689) | test\_hive\_impala\_interop failing with "Timeout \>7200s" |  Critical | . | Andrew Sherman | Abhishek Rawat |
| [IMPALA-8681](https://issues.apache.org/jira/browse/IMPALA-8681) | null ValidWriteIdLists written into profile |  Major | Frontend | Todd Lipcon | Yongzhi Chen |
| [IMPALA-8745](https://issues.apache.org/jira/browse/IMPALA-8745) | Impala Doc: Fix description of Impala function initcap() in docs |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8748](https://issues.apache.org/jira/browse/IMPALA-8748) | Must pass hostname to RpcMgr::GetProxy() |  Blocker | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-8663](https://issues.apache.org/jira/browse/IMPALA-8663) | FileMetadataLoader should skip listing files in hidden and tmp directories |  Critical | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-8744](https://issues.apache.org/jira/browse/IMPALA-8744) | TestSessionExpiration.test\_closing\_idle\_connection fails on Centos 6 due to Python 2.6 incompatibility |  Blocker | Infrastructure | Joe McDonnell | Michael Ho |
| [IMPALA-8747](https://issues.apache.org/jira/browse/IMPALA-8747) | ImpalaTestSuite::setup\_class() can hit TypeError on HS2 connection setup failure |  Critical | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-8702](https://issues.apache.org/jira/browse/IMPALA-8702) | PlannerTest.testJoins flakiness due to reliance on an exact cardinality estimate |  Critical | Frontend | Bikramjeet Vig | Fang-Yu Rao |
| [IMPALA-8732](https://issues.apache.org/jira/browse/IMPALA-8732) | tcmalloc contention in Coordinator::BackendState::Exec() |  Critical | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-8758](https://issues.apache.org/jira/browse/IMPALA-8758) | Misleading error message "Unknown executor group" during cluster startup with dedicated coordinator |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-8750](https://issues.apache.org/jira/browse/IMPALA-8750) | TestObservability.test\_query\_profile\_contains\_query\_compilation\_events failing when compilation events appear dynamically |  Major | Infrastructure | Tamas Mate | Tamas Mate |
| [IMPALA-8606](https://issues.apache.org/jira/browse/IMPALA-8606) | GET\_TABLES performance in local catalog mode |  Blocker | Catalog | Balazs Jeszenszky | Quanlong Huang |
| [IMPALA-8434](https://issues.apache.org/jira/browse/IMPALA-8434) | Alter Db leads to functions missing unless run "refresh functions" |  Critical | . | Xiaomeng Zhang | Quanlong Huang |
| [IMPALA-8783](https://issues.apache.org/jira/browse/IMPALA-8783) | Add Kerberos SPNEGO support to the http hs2 server |  Major | Clients | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-8807](https://issues.apache.org/jira/browse/IMPALA-8807) | OPTIMIZE\_PARTITION\_KEY\_SCANS works in more cases than documented |  Major | Docs | Tim Armstrong | Tim Armstrong |
| [IMPALA-8798](https://issues.apache.org/jira/browse/IMPALA-8798) | TestAutoScaling does not work on erasure-coded files |  Critical | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-8820](https://issues.apache.org/jira/browse/IMPALA-8820) | start-impala-cluster can't find catalogd on recent Ubuntu 16.04 |  Blocker | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8600](https://issues.apache.org/jira/browse/IMPALA-8600) | Reload partition does not work for transactional tables |  Major | . | Vihang Karajgaonkar | Gabor Kaszab |
| [IMPALA-8817](https://issues.apache.org/jira/browse/IMPALA-8817) | TestTestcaseBuilder broken on S3 |  Major | Infrastructure | Csaba Ringhofer | Csaba Ringhofer |
| [IMPALA-8832](https://issues.apache.org/jira/browse/IMPALA-8832) | Queries fail to run when connecting to Impala over Knox |  Blocker | Clients | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-8833](https://issues.apache.org/jira/browse/IMPALA-8833) | Check failed: bit\_width \<= sizeof(T) \* 8 (40 vs. 32)  in BatchedBitReader::UnpackBatch() |  Blocker | Backend | Tim Armstrong | Daniel Becker |
| [IMPALA-8850](https://issues.apache.org/jira/browse/IMPALA-8850) | TmpFileMgrTest.TestDirectoryLimitParsing failed in asf-master build with error "Value of: dirs3.size()   Actual: 3 Expected: 4" |  Blocker | Backend | Xiaomeng Zhang | Tim Armstrong |
| [IMPALA-8848](https://issues.apache.org/jira/browse/IMPALA-8848) | Cardinality of UnionNode does not handle missing input cardinality correctly |  Critical | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4551](https://issues.apache.org/jira/browse/IMPALA-4551) | Set limits on size of expression trees |  Major | Backend | Tim Armstrong | Joe McDonnell |
| [IMPALA-8677](https://issues.apache.org/jira/browse/IMPALA-8677) | Removing an unused node does not leave consistent remote scheduling unchanged |  Major | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-8849](https://issues.apache.org/jira/browse/IMPALA-8849) | IllegalStateException in HashJoinNode because of missing memory estimate |  Blocker | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8854](https://issues.apache.org/jira/browse/IMPALA-8854) | test\_acid\_insert is failing with "Processor has no capabilities" |  Blocker | Frontend | Tim Armstrong | Zoltán Borók-Nagy |
| [IMPALA-8847](https://issues.apache.org/jira/browse/IMPALA-8847) | Add partition events may contain empty partition object list |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-8862](https://issues.apache.org/jira/browse/IMPALA-8862) | Don't ship jetty and ant in Impala containers |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8790](https://issues.apache.org/jira/browse/IMPALA-8790) | IllegalStateException: Illegal reference to non-materialized slot |  Major | Frontend | Quanlong Huang | Quanlong Huang |
| [IMPALA-8872](https://issues.apache.org/jira/browse/IMPALA-8872) | SPNEGO auth failures using httpcore v4.4.1 |  Major | Frontend | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-8864](https://issues.apache.org/jira/browse/IMPALA-8864) | Shell tests in http mode fail on CentOS 6 |  Major | Clients | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-8859](https://issues.apache.org/jira/browse/IMPALA-8859) | test\_shell\_commandline.test\_global\_config\_file fails in remote cluster test |  Blocker | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7070](https://issues.apache.org/jira/browse/IMPALA-7070) | Failed test: query\_test.test\_nested\_types.TestParquetArrayEncodings.test\_thrift\_array\_of\_arrays on S3 |  Critical | Backend | Dimitris Tsirogiannis |  |
| [IMPALA-8874](https://issues.apache.org/jira/browse/IMPALA-8874) | TestEventProcessing.test\_empty\_partition\_events\_transactional seems flaky |  Blocker | Infrastructure | Fang-Yu Rao | Vihang Karajgaonkar |
| [IMPALA-8841](https://issues.apache.org/jira/browse/IMPALA-8841) | Dataload flakiness: hive-exec-\*.jar changed on src filesystem |  Critical | Infrastructure | Csaba Ringhofer | Csaba Ringhofer |
| [IMPALA-8816](https://issues.apache.org/jira/browse/IMPALA-8816) | custom cluster tests in precommit are taking close to 2 hours |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8868](https://issues.apache.org/jira/browse/IMPALA-8868) | HTTP 401 response is wrong when both kerberos and ldap are enabled |  Blocker | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-8612](https://issues.apache.org/jira/browse/IMPALA-8612) | NPE when DropTableOrViewStmt analysis leaves serverName\_ NULL |  Critical | Frontend | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-8839](https://issues.apache.org/jira/browse/IMPALA-8839) | Impala writing data to tables should not lead to incorrect results in Hive |  Critical | . | Yongzhi Chen | Yongzhi Chen |
| [IMPALA-8802](https://issues.apache.org/jira/browse/IMPALA-8802) | Switch to pgrep for graceful\_shutdown\_backends.sh |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-8346](https://issues.apache.org/jira/browse/IMPALA-8346) | Testcase builder for query planner introduced a data load regression on remote clusters |  Blocker | . | David Knupp | Bharath Vissapragada |
| [IMPALA-7404](https://issues.apache.org/jira/browse/IMPALA-7404) | query\_test.test\_delimited\_text.TestDelimitedText.test\_delimited\_text\_newlines fails to return any rows |  Blocker | Backend | Vuk Ercegovac | Csaba Ringhofer |
| [IMPALA-7733](https://issues.apache.org/jira/browse/IMPALA-7733) | TestInsertParquetQueries.test\_insert\_parquet is flaky in S3 due to rename |  Blocker | Infrastructure | Vuk Ercegovac | Lenisha Gandhi |
| [IMPALA-8500](https://issues.apache.org/jira/browse/IMPALA-8500) | test\_timestamp\_out\_of\_range fails with NoSuchObjectException: test\_timestamp\_out\_of\_range\_dc37915d on S3 |  Critical | Infrastructure | Tim Armstrong | Joe McDonnell |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-8415](https://issues.apache.org/jira/browse/IMPALA-8415) | test\_corrupt\_stats exhaustive test failed |  Blocker | Backend | Attila Jeges | Joe McDonnell |
| [IMPALA-8619](https://issues.apache.org/jira/browse/IMPALA-8619) | Add interoperability tests for parquet/zstd |  Major | Backend | Abhishek Rawat | Abhishek Rawat |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-8099](https://issues.apache.org/jira/browse/IMPALA-8099) | Update Impala build infrastructure to support Apache Ranger |  Critical | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8233](https://issues.apache.org/jira/browse/IMPALA-8233) | Do not re-download Ranger if it is already downloaded |  Critical | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8097](https://issues.apache.org/jira/browse/IMPALA-8097) | Experimental flag for running all queries with mt\_dop |  Major | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-8100](https://issues.apache.org/jira/browse/IMPALA-8100) | Add support for Apache Ranger as an alternative authorization provider |  Critical | Catalog | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7917](https://issues.apache.org/jira/browse/IMPALA-7917) | Decouple Sentry from Impala |  Critical | Catalog, Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7918](https://issues.apache.org/jira/browse/IMPALA-7918) | Remove support for authorization policy file |  Critical | Catalog, Frontend | Fredy Wijaya | Austin Nobis |
| [IMPALA-8225](https://issues.apache.org/jira/browse/IMPALA-8225) | Implement GRANT/REVOKE privilege to USER |  Critical | Catalog, Frontend | Fredy Wijaya | Austin Nobis |
| [IMPALA-8368](https://issues.apache.org/jira/browse/IMPALA-8368) | Create database/table with Ranger throws UnsupportedOperationException |  Critical | Catalog, Frontend | Austin Nobis | Austin Nobis |
| [IMPALA-8226](https://issues.apache.org/jira/browse/IMPALA-8226) | Implement GRANT/REVOKE privilege to GROUP |  Critical | Catalog, Frontend | Fredy Wijaya | Austin Nobis |
| [IMPALA-8385](https://issues.apache.org/jira/browse/IMPALA-8385) | Refactor Sentry admin user check |  Critical | Catalog, Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8227](https://issues.apache.org/jira/browse/IMPALA-8227) | Support WITH GRANT OPTION with Ranger authorization provider |  Critical | Catalog, Frontend | Fredy Wijaya | Austin Nobis |
| [IMPALA-8365](https://issues.apache.org/jira/browse/IMPALA-8365) | Add test coverage for Ranger with catalog v2 (local catalog) mode |  Critical | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7995](https://issues.apache.org/jira/browse/IMPALA-7995) | Run end-to-end tests against docker in minicluster |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-6718](https://issues.apache.org/jira/browse/IMPALA-6718) | Add support column-level permissions on views |  Critical | Frontend | Adam Holley | Fredy Wijaya |
| [IMPALA-8363](https://issues.apache.org/jira/browse/IMPALA-8363) | Disable column masking and row filtering |  Critical | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8338](https://issues.apache.org/jira/browse/IMPALA-8338) | Check CREATION\_TIME of databases in event processor to avoid incorrect/redundant invalidates |  Major | . | Bharath Krishna | Bharath Krishna |
| [IMPALA-8329](https://issues.apache.org/jira/browse/IMPALA-8329) | Update the Ranger minicluster with various fixes |  Critical | Catalog, Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8375](https://issues.apache.org/jira/browse/IMPALA-8375) | Add metrics for spill disk usage |  Major | Backend | Tim Armstrong | Abhishek Rawat |
| [IMPALA-8392](https://issues.apache.org/jira/browse/IMPALA-8392) | make -j $IMPALA\_BUILD\_THREADS docker\_images fails with OSError: [Errno 17] File exists: '/home/ubuntu/Impala/docker/build\_context' |  Minor | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8072](https://issues.apache.org/jira/browse/IMPALA-8072) | Clean up config files in docker containers |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8119](https://issues.apache.org/jira/browse/IMPALA-8119) | Improve experience for configuring JVM heap size in docker container. |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8309](https://issues.apache.org/jira/browse/IMPALA-8309) | Use a more human-readable flag to switch to a different authorization provider |  Critical | Backend | Fredy Wijaya | radford nguyen |
| [IMPALA-7492](https://issues.apache.org/jira/browse/IMPALA-7492) | Add support for DATE text parser/formatter |  Major | . | Attila Jeges | Attila Jeges |
| [IMPALA-7368](https://issues.apache.org/jira/browse/IMPALA-7368) | Add initial support for DATE type |  Major | . | Attila Jeges | Attila Jeges |
| [IMPALA-8149](https://issues.apache.org/jira/browse/IMPALA-8149) | Add support for alter\_database events |  Major | . | Vihang Karajgaonkar | Xiaomeng Zhang |
| [IMPALA-8280](https://issues.apache.org/jira/browse/IMPALA-8280) | Implement SHOW GRANT USER \<user\> |  Critical | Catalog, Frontend | Fredy Wijaya | Austin Nobis |
| [IMPALA-8281](https://issues.apache.org/jira/browse/IMPALA-8281) | Implement SHOW GRANT GROUP \<group\> |  Critical | Catalog, Frontend | Fredy Wijaya | Austin Nobis |
| [IMPALA-8293](https://issues.apache.org/jira/browse/IMPALA-8293) | Support for Ranger cache invalidation with INVALIDATE METADATA or REFRESH AUTHORIZATION |  Critical | Catalog, Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8419](https://issues.apache.org/jira/browse/IMPALA-8419) | Fetch metastore configuration values to detect misconfigured setups |  Major | . | Bharath Krishna | Bharath Krishna |
| [IMPALA-7971](https://issues.apache.org/jira/browse/IMPALA-7971) | Add support to detect insert events from Impala |  Major | . | Vihang Karajgaonkar | Anurag Mantripragada |
| [IMPALA-7973](https://issues.apache.org/jira/browse/IMPALA-7973) | Add support for fine-grained updates at partition level |  Major | . | Vihang Karajgaonkar | Anurag Mantripragada |
| [IMPALA-8482](https://issues.apache.org/jira/browse/IMPALA-8482) | Include all ranger-audit-plugins runtime dependencies |  Critical | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8472](https://issues.apache.org/jira/browse/IMPALA-8472) | Update Ranger minicluster with the one that supports "refresh" access type |  Critical | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8492](https://issues.apache.org/jira/browse/IMPALA-8492) | Re-enable large\_string tests disabled for JVM OOM |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-7370](https://issues.apache.org/jira/browse/IMPALA-7370) | Add DATE type support to Parquet scanner/writer |  Major | . | Attila Jeges | Attila Jeges |
| [IMPALA-8292](https://issues.apache.org/jira/browse/IMPALA-8292) | Misc clean-up after Sentry decoupling |  Critical | Catalog, Frontend | Fredy Wijaya | Austin Nobis |
| [IMPALA-8530](https://issues.apache.org/jira/browse/IMPALA-8530) | Make some unsupported SQL error messages to be more user friendly |  Critical | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8515](https://issues.apache.org/jira/browse/IMPALA-8515) | Test impala-shell distribution instead of special dev environment version |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8528](https://issues.apache.org/jira/browse/IMPALA-8528) | Refactor authorization code from AnalysisContext to AuthorizationChecker |  Critical | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7331](https://issues.apache.org/jira/browse/IMPALA-7331) | Add Char codegen support to helpers |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8121](https://issues.apache.org/jira/browse/IMPALA-8121) | Pick better default flags in containers |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8215](https://issues.apache.org/jira/browse/IMPALA-8215) | Don't set numTrue = 1 |  Major | Frontend | Tim Armstrong | Todd Lipcon |
| [IMPALA-8400](https://issues.apache.org/jira/browse/IMPALA-8400) | Implement Ranger audit event handler |  Critical | Catalog, Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8559](https://issues.apache.org/jira/browse/IMPALA-8559) | Support config validation for event processor on HMS-3 |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-8248](https://issues.apache.org/jira/browse/IMPALA-8248) | Improve Ranger test coverage |  Critical | Infrastructure | Fredy Wijaya | Austin Nobis |
| [IMPALA-8546](https://issues.apache.org/jira/browse/IMPALA-8546) | Collect logs from docker containers in tests |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8473](https://issues.apache.org/jira/browse/IMPALA-8473) | Refactor lineage publication mechanism to allow for different consumers |  Critical | Backend, Frontend | radford nguyen | radford nguyen |
| [IMPALA-8491](https://issues.apache.org/jira/browse/IMPALA-8491) | Run container as non-root user |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8564](https://issues.apache.org/jira/browse/IMPALA-8564) | Add table's createTime information in the column lineage information |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8503](https://issues.apache.org/jira/browse/IMPALA-8503) | Add option to allow Kudu cluster to start with HMS integration |  Major | . | Hao Hao | Hao Hao |
| [IMPALA-8504](https://issues.apache.org/jira/browse/IMPALA-8504) | Support CreateTable DDL with Kudu/HMS integration in Catalogd mode |  Major | . | Hao Hao | Hao Hao |
| [IMPALA-8505](https://issues.apache.org/jira/browse/IMPALA-8505) | Support AlterTable DDL with Kudu/HMS integration in Catalogd mode |  Major | . | Hao Hao | Hao Hao |
| [IMPALA-8506](https://issues.apache.org/jira/browse/IMPALA-8506) | Support RenameTable DDL with Kudu/HMS integration in Catalogd mode |  Major | . | Hao Hao | Hao Hao |
| [IMPALA-8507](https://issues.apache.org/jira/browse/IMPALA-8507) | Support DropTable DDL with Kudu/HMS integration in Catalogd mode |  Major | . | Hao Hao | Hao Hao |
| [IMPALA-8623](https://issues.apache.org/jira/browse/IMPALA-8623) | Expose HS2 HTTP port in containers |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-8551](https://issues.apache.org/jira/browse/IMPALA-8551) | GRANT gives confusing error message |  Critical | Security | Todd Lipcon | Fredy Wijaya |
| [IMPALA-8649](https://issues.apache.org/jira/browse/IMPALA-8649) | Confusing error messages in SHOW GRANT statements |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8588](https://issues.apache.org/jira/browse/IMPALA-8588) | FIx revoke grant option behavior |  Critical | Catalog, Frontend | Austin Nobis | Austin Nobis |
| [IMPALA-8654](https://issues.apache.org/jira/browse/IMPALA-8654) | Log the SQL statement in Ranger audit log |  Critical | Catalog, Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8650](https://issues.apache.org/jira/browse/IMPALA-8650) | Docker build should not depend on test config |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8633](https://issues.apache.org/jira/browse/IMPALA-8633) | Insert event should not error when table does not exists |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-8671](https://issues.apache.org/jira/browse/IMPALA-8671) | Do not re-create a new instance of AuthorizationChecker with Ranger authorization |  Critical | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8599](https://issues.apache.org/jira/browse/IMPALA-8599) | Create a separate Maven module for query event hook API |  Critical | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8658](https://issues.apache.org/jira/browse/IMPALA-8658) | Populate required Ranger audit fields to be consistent with Hive |  Critical | Catalog, Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7467](https://issues.apache.org/jira/browse/IMPALA-7467) | Port ExecQueryFInstances() to KPRC |  Major | Distributed Exec | Michael Ho | Thomas Tauber-Marshall |
| [IMPALA-8688](https://issues.apache.org/jira/browse/IMPALA-8688) | Script to automate pushing images to docker repo, e.g. dockerhub |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8589](https://issues.apache.org/jira/browse/IMPALA-8589) | Fix flaky query event hook tests |  Major | Infrastructure | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-7369](https://issues.apache.org/jira/browse/IMPALA-7369) | Implement DATE builtin functions |  Major | . | Attila Jeges | Attila Jeges |
| [IMPALA-8629](https://issues.apache.org/jira/browse/IMPALA-8629) | Adjust new KuduStorageHandler package |  Major | Catalog, Frontend | Grant Henke | Grant Henke |
| [IMPALA-8716](https://issues.apache.org/jira/browse/IMPALA-8716) | Log a a group of privileges into a single audit event |  Major | Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8686](https://issues.apache.org/jira/browse/IMPALA-8686) | container entrypoint should exec binary |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8176](https://issues.apache.org/jira/browse/IMPALA-8176) | Convert tests with trivial main() functions to use a unified executable |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-8622](https://issues.apache.org/jira/browse/IMPALA-8622) | Generate list of docker images generated by the build |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8696](https://issues.apache.org/jira/browse/IMPALA-8696) | Cmake dependencies for container build do not work correctly |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8717](https://issues.apache.org/jira/browse/IMPALA-8717) | impala-shell support for HiveServer2 HTTP endpoint |  Critical | Clients | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-8339](https://issues.apache.org/jira/browse/IMPALA-8339) | Coordinator should be more resilient to fragment instances startup failure |  Critical | Distributed Exec | Michael Ho | Thomas Tauber-Marshall |
| [IMPALA-8780](https://issues.apache.org/jira/browse/IMPALA-8780) | Implementation of BufferedPlanRootSink where FlushFinal blocks until all rows are fetched |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-8781](https://issues.apache.org/jira/browse/IMPALA-8781) | Add additional tests in test\_result\_spooling.py and validate cancellation logic |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-8534](https://issues.apache.org/jira/browse/IMPALA-8534) | Enable data cache by default for end-to-end containerised tests |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-8376](https://issues.apache.org/jira/browse/IMPALA-8376) | Add per-directory limits for scratch disk usage |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8627](https://issues.apache.org/jira/browse/IMPALA-8627) | Re-enable catalog v2 in containers |  Major | Infrastructure | Tim Armstrong | Vihang Karajgaonkar |
| [IMPALA-8334](https://issues.apache.org/jira/browse/IMPALA-8334) | Impala Doc: Document impala-shell config\_file format |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8615](https://issues.apache.org/jira/browse/IMPALA-8615) | Impala Doc: Doc admission control support for scalable config params |  Major | . | Bikramjeet Vig | Alexandra Rodoni |
| [IMPALA-8448](https://issues.apache.org/jira/browse/IMPALA-8448) | Impala Doc: Doc the feature for alter\_database events |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8837](https://issues.apache.org/jira/browse/IMPALA-8837) | Impala Doc: Document impersonalization via HTTP and Knox authentication |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7374](https://issues.apache.org/jira/browse/IMPALA-7374) | Impala Doc: Doc DATE type |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8668](https://issues.apache.org/jira/browse/IMPALA-8668) | Document impala-shell HS2 support |  Major | Docs | Tim Armstrong | Alexandra Rodoni |
| [IMPALA-8424](https://issues.apache.org/jira/browse/IMPALA-8424) | Impala Doc: Doc the column level permission on views |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8364](https://issues.apache.org/jira/browse/IMPALA-8364) | Impala Doc: Remove support for authorization policy file |  Critical | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8049](https://issues.apache.org/jira/browse/IMPALA-8049) | Impala Doc: Document Apache Ranger authorization provider |  Critical | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8493](https://issues.apache.org/jira/browse/IMPALA-8493) | Impala Doc: Document GRANT/REVOKE privilege to USER |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8387](https://issues.apache.org/jira/browse/IMPALA-8387) | Impala Doc: Network I/O throughput to Query Profile output |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7977](https://issues.apache.org/jira/browse/IMPALA-7977) | Impala Doc: Doc the support for fine-grained updates at partition level |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8160](https://issues.apache.org/jira/browse/IMPALA-8160) | Impala Doc: Doc CAST(... AS ... FORMAT \<template\>) |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8494](https://issues.apache.org/jira/browse/IMPALA-8494) | Impala Doc: Document GRANT/REVOKE privilege to GROUP |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8447](https://issues.apache.org/jira/browse/IMPALA-8447) | Impala Doc: Document the feature to detect insert events from Impala |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8727](https://issues.apache.org/jira/browse/IMPALA-8727) | Impala Doc: DDL Docs Update for Kudu / HMS Integration |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8616](https://issues.apache.org/jira/browse/IMPALA-8616) | Document --disconnected\_session\_timeout |  Major | Docs | Thomas Tauber-Marshall | Alexandra Rodoni |
| [IMPALA-8477](https://issues.apache.org/jira/browse/IMPALA-8477) | Impala Doc: Doc SHOW GRANT GROUP |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8812](https://issues.apache.org/jira/browse/IMPALA-8812) | Impala Doc: SPLIT\_PART to support negative indexes |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8811](https://issues.apache.org/jira/browse/IMPALA-8811) | Impala Doc: query option to change default ACID type of new tables |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8490](https://issues.apache.org/jira/browse/IMPALA-8490) | Impala Doc: the file handle cache now supports S3 |  Major | Docs | Sahil Takiar | Alexandra Rodoni |
| [IMPALA-8765](https://issues.apache.org/jira/browse/IMPALA-8765) | Document JSON Udfs |  Major | Docs | Tim Armstrong | Alexandra Rodoni |
| [IMPALA-8456](https://issues.apache.org/jira/browse/IMPALA-8456) | Impala Doc: Document HTTP based HS2/beeswax endpoints on coordinators |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8391](https://issues.apache.org/jira/browse/IMPALA-8391) | Impala Doc: ALTER TABLE RENAME on managed Kudu table renames underlying Kudu table |  Major | Docs | Sahil Takiar | Alexandra Rodoni |
| [IMPALA-7991](https://issues.apache.org/jira/browse/IMPALA-7991) | Impala 3.3 Doc: Doc Parquet page index |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-7375](https://issues.apache.org/jira/browse/IMPALA-7375) | Impala Doc: Doc DATE functions |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8575](https://issues.apache.org/jira/browse/IMPALA-8575) | Impala Doc: New query options for Parquet writing |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8519](https://issues.apache.org/jira/browse/IMPALA-8519) | Impala Doc: Doc the limitation in insert events from SparkSQL |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8813](https://issues.apache.org/jira/browse/IMPALA-8813) | Impala Doc: Support Hive ACID Insert-only Tables |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8416](https://issues.apache.org/jira/browse/IMPALA-8416) | Impala Doc: Document the system disk I/O throughput added to query profiles |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8824](https://issues.apache.org/jira/browse/IMPALA-8824) | Impala Doc: Document DROP TABLE for Insert-only ACID Tables |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-6159](https://issues.apache.org/jira/browse/IMPALA-6159) | DataStreamSender should transparently handle some connection reset by peer |  Critical | Distributed Exec | Michael Ho | Michael Ho |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-8439](https://issues.apache.org/jira/browse/IMPALA-8439) | Add Hive ACID tables during dataload if Hive 3.1 is enabled |  Critical | Infrastructure | Csaba Ringhofer | Yongzhi Chen |
| [IMPALA-7916](https://issues.apache.org/jira/browse/IMPALA-7916) | Support for Apache Ranger authorization provider |  Critical | Catalog, Frontend | Fredy Wijaya | Fredy Wijaya |
| [IMPALA-8683](https://issues.apache.org/jira/browse/IMPALA-8683) | Document parquet/lz4 compression codec |  Major | Docs | Abhishek Rawat | Abhishek Rawat |
| [IMPALA-337](https://issues.apache.org/jira/browse/IMPALA-337) | Update Impala debug webserver to accept HTTP POST requests |  Minor | Distributed Exec | Lenni Kuff | Joe McDonnell |
| [IMPALA-8101](https://issues.apache.org/jira/browse/IMPALA-8101) | Thrift 11 compilation and Thrift ext-data-source compilation are always run |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-6826](https://issues.apache.org/jira/browse/IMPALA-6826) | Add support for Ubuntu 18.04 |  Major | Infrastructure | Jim Apple | Laszlo Gaal |
| [IMPALA-8516](https://issues.apache.org/jira/browse/IMPALA-8516) | Update maven on Jenkins Ubuntu build slaves |  Major | Infrastructure | Todd Lipcon | Todd Lipcon |
| [IMPALA-8529](https://issues.apache.org/jira/browse/IMPALA-8529) | ccache is ignored when using ninja generator |  Major | . | Todd Lipcon |  |
| [IMPALA-8143](https://issues.apache.org/jira/browse/IMPALA-8143) | Add features to DoRpcWithRetry() |  Major | . | Andrew Sherman | Andrew Sherman |
| [IMPALA-8829](https://issues.apache.org/jira/browse/IMPALA-8829) | Document limitation of parsing memory string |  Major | Docs | Michael Ho | Alexandra Rodoni |
| [IMPALA-8746](https://issues.apache.org/jira/browse/IMPALA-8746) | Document the new query option DEFAULT\_HINTS\_INSERT\_STATEMENT |  Major | Docs | Abhishek Rawat | Alexandra Rodoni |
| [IMPALA-8161](https://issues.apache.org/jira/browse/IMPALA-8161) | Impala Doc: Document the supported Date and Time patterns |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8723](https://issues.apache.org/jira/browse/IMPALA-8723) | Impala Doc: Upgrading to 3.3 |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8729](https://issues.apache.org/jira/browse/IMPALA-8729) | Impala Doc: Describe how to enable Catalog V2 |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8701](https://issues.apache.org/jira/browse/IMPALA-8701) | Document idle session management after IMPALA-7802 |  Major | Docs | Michael Ho | Alexandra Rodoni |
| [IMPALA-8511](https://issues.apache.org/jira/browse/IMPALA-8511) | Impala Doc: Incompatible changes in Impala 3.3 |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8474](https://issues.apache.org/jira/browse/IMPALA-8474) | Impala Doc: 3.3 Release Notes |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8470](https://issues.apache.org/jira/browse/IMPALA-8470) | Impala Doc: Use a more human-readable flag to switch to a different authorization provider |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8641](https://issues.apache.org/jira/browse/IMPALA-8641) | Document compression codec zstd in Parquet |  Minor | Docs | Abhishek Rawat | Abhishek Rawat |
| [IMPALA-8814](https://issues.apache.org/jira/browse/IMPALA-8814) | Impala Doc: Webui and SPNEGO |  Major | Docs | Alexandra Rodoni | Alexandra Rodoni |
| [IMPALA-8427](https://issues.apache.org/jira/browse/IMPALA-8427) | Document the behavior change in IMPALA-7800 |  Major | Clients | Michael Ho | Alexandra Rodoni |
| [IMPALA-8495](https://issues.apache.org/jira/browse/IMPALA-8495) | Impala Doc: Document Data Read Cache |  Major | Docs | Michael Ho | Alexandra Rodoni |


