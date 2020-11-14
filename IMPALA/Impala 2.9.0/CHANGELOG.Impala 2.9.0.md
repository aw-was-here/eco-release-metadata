
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

## Release Impala 2.9.0 - 2017-06-15



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-4403](https://issues.apache.org/jira/browse/IMPALA-4403) | Implement SHOW RANGE PARTITIONS for Kudu tables |  Blocker | Frontend | Dimitris Tsirogiannis | Lars Volker |
| [IMPALA-4431](https://issues.apache.org/jira/browse/IMPALA-4431) | Add a way to control the number of audit event log files |  Major | Backend | Davy Xu | Davy Xu |
| [IMPALA-3909](https://issues.apache.org/jira/browse/IMPALA-3909) | Parquet file writer should populate the min/max statistics per block per column to be used by the reader |  Major | Backend | Mostafa Mokhtar | Lars Volker |
| [IMPALA-4740](https://issues.apache.org/jira/browse/IMPALA-4740) | Add option to use hdfsPread() instead of hdfsRead() for HDFS hedged reads |  Major | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4729](https://issues.apache.org/jira/browse/IMPALA-4729) | REPLACE() function |  Major | Frontend | Greg Rahn | Zach Amsden |
| [IMPALA-4810](https://issues.apache.org/jira/browse/IMPALA-4810) | DECIMAL datatype changes for Impala 2.9 |  Critical | Backend | Daniel Hecht | Daniel Hecht |
| [IMPALA-4734](https://issues.apache.org/jira/browse/IMPALA-4734) | HdfsParquetTableWriter should populate sorting\_columns in row groups with any ordering columns |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-4616](https://issues.apache.org/jira/browse/IMPALA-4616) | Specify more options when adding new kudu columns |  Major | Frontend | Dimitris Tsirogiannis | Matthew Jacobs |
| [IMPALA-3586](https://issues.apache.org/jira/browse/IMPALA-3586) | Passthrough mode for Union ALL operator |  Minor | Backend | Mostafa Mokhtar | Taras Bobrovytsky |
| [IMPALA-4883](https://issues.apache.org/jira/browse/IMPALA-4883) | Implement Codegen for the Union operator |  Minor | Backend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-4728](https://issues.apache.org/jira/browse/IMPALA-4728) | materialize expressions for window sorts vs lazy expression evaluation |  Major | Frontend | Greg Rahn | Thomas Tauber-Marshall |
| [IMPALA-4815](https://issues.apache.org/jira/browse/IMPALA-4815) | Populate min/max statistics in Parquet files for Decimal types |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-4817](https://issues.apache.org/jira/browse/IMPALA-4817) | Populate min/max statistics in Parquet files for String values |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-4819](https://issues.apache.org/jira/browse/IMPALA-4819) | Populate min/max statistics in Parquet files for Timestamp values |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-4166](https://issues.apache.org/jira/browse/IMPALA-4166) | Introduce SORT BY clause in CREATE TABLE statement |  Major | Catalog | Alexander Behm | Lars Volker |
| [IMPALA-5137](https://issues.apache.org/jira/browse/IMPALA-5137) | Support Kudu UNIXTIME\_MICROS as Impala TIMESTAMP |  Critical | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-5259](https://issues.apache.org/jira/browse/IMPALA-5259) | Add REFRESH FUNCTIONS \<db\> statement |  Major | Catalog | Dimitris Tsirogiannis | Taras Bobrovytsky |
| [IMPALA-5333](https://issues.apache.org/jira/browse/IMPALA-5333) | Add support for Impala to work with ADLS |  Critical | Frontend | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-5030](https://issues.apache.org/jira/browse/IMPALA-5030) | add NVL2() |  Major | Backend, Frontend | Greg Rahn | Vincent Tran |
| [IMPALA-5381](https://issues.apache.org/jira/browse/IMPALA-5381) | Add query option to control join strategy when tables have no stats |  Critical | Frontend | Greg Rahn | Alexander Behm |
| [IMPALA-3807](https://issues.apache.org/jira/browse/IMPALA-3807) | Introduce support for dedicated Impalad coordinator(s) |  Major | Backend | Mostafa Mokhtar |  |
| [IMPALA-5316](https://issues.apache.org/jira/browse/IMPALA-5316) | add last\_day() function |  Major | Backend, Frontend | Greg Rahn | Vincent Tran |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-4611](https://issues.apache.org/jira/browse/IMPALA-4611) | Checking perms on S3 files is a very expensive no-op |  Major | Catalog | Sailesh Mukil |  |
| [IMPALA-4648](https://issues.apache.org/jira/browse/IMPALA-4648) | Remove build\_thirdparty.sh |  Minor | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-4649](https://issues.apache.org/jira/browse/IMPALA-4649) | Add a mechanism to pass flags into make |  Minor | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-4636](https://issues.apache.org/jira/browse/IMPALA-4636) | Add support for SLES12 for Impala/Kudu integration |  Critical | Backend | David Knupp | Matthew Jacobs |
| [IMPALA-2079](https://issues.apache.org/jira/browse/IMPALA-2079) | Don't fail when write to scratch dir results in error. |  Minor | Backend | Alan Choi | Tim Armstrong |
| [IMPALA-4653](https://issues.apache.org/jira/browse/IMPALA-4653) | Revamp impala-config.sh to avoid annoying "sticky config variables" problem |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-4676](https://issues.apache.org/jira/browse/IMPALA-4676) | Remove vestigial references to getBlockStorageLocations() API |  Minor | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4341](https://issues.apache.org/jira/browse/IMPALA-4341) | Include metadata loading time in planner timeline |  Minor | Frontend | Henry Robinson | Joe McDonnell |
| [IMPALA-4752](https://issues.apache.org/jira/browse/IMPALA-4752) | ObjectPool should not do extra dynamic memory allocation |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4617](https://issues.apache.org/jira/browse/IMPALA-4617) | Remove duplication of isConstant() and IsConstant() in frontend and backend |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4735](https://issues.apache.org/jira/browse/IMPALA-4735) | py.test needs to be upgraded in the Impala python environment |  Major | Infrastructure | David Knupp | David Knupp |
| [IMPALA-4750](https://issues.apache.org/jira/browse/IMPALA-4750) | Future proof use of pytest in Impala environment |  Minor | Infrastructure | David Knupp | David Knupp |
| [IMPALA-3989](https://issues.apache.org/jira/browse/IMPALA-3989) | Display skew warning for poorly formatted Parquet files |  Major | Backend | Sailesh Mukil | Attila Jeges |
| [IMPALA-4141](https://issues.apache.org/jira/browse/IMPALA-4141) | Error when creating a partition that already exists in HMS |  Major | Catalog | Dimitris Tsirogiannis | Attila Jeges |
| [IMPALA-1430](https://issues.apache.org/jira/browse/IMPALA-1430) | Codegen all aggregate functions, including UDAs |  Minor | Backend | Skye Wanderman-Milne | Tim Armstrong |
| [IMPALA-4282](https://issues.apache.org/jira/browse/IMPALA-4282) | Allow Impala to create columns whose type has more than 4000 characters |  Major | Frontend | Venkat Sambath | Alexander Behm |
| [IMPALA-4941](https://issues.apache.org/jira/browse/IMPALA-4941) | Bump Zookeeper version to 3.4.10 to address ZOOKEEPER-2044 |  Blocker | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-5015](https://issues.apache.org/jira/browse/IMPALA-5015) | Run parquet\_stats\_test.py with mt\_dop != 0 |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-4966](https://issues.apache.org/jira/browse/IMPALA-4966) | Add flatbuffers 1.6.0 to toolchain |  Major | Infrastructure | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-4635](https://issues.apache.org/jira/browse/IMPALA-4635) | Reduce bootstrap time for Python virtualenv |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-4822](https://issues.apache.org/jira/browse/IMPALA-4822) | Allow dynamic log4j configuration for Catalog and Impalads |  Major | Backend, Frontend | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-4711](https://issues.apache.org/jira/browse/IMPALA-4711) | Document is\_null semantics in UDF interface |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5034](https://issues.apache.org/jira/browse/IMPALA-5034) | Update breakpad to a newer version |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-4624](https://issues.apache.org/jira/browse/IMPALA-4624) | Add dictionary filtering to Parquet scanner |  Major | Backend | Alan Choi | Joe McDonnell |
| [IMPALA-4787](https://issues.apache.org/jira/browse/IMPALA-4787) | Optimize APPX\_MEDIAN() mem usage in case of many grouping keys |  Critical | Backend | Marcell Szabo | Taras Bobrovytsky |
| [IMPALA-4880](https://issues.apache.org/jira/browse/IMPALA-4880) | Clarify synchronization policy for 'done\_' in KuduScanNode |  Minor | Backend | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-4846](https://issues.apache.org/jira/browse/IMPALA-4846) | Upgrade snappy to 1.1.4 |  Major | Backend | Tim Armstrong | Laszlo Gaal |
| [IMPALA-4762](https://issues.apache.org/jira/browse/IMPALA-4762) | RECOVER PARTITIONS should send new partitions in small batches to HMS |  Major | Catalog | Juan Yu | Zach Amsden |
| [IMPALA-4673](https://issues.apache.org/jira/browse/IMPALA-4673) | Use --local\_library\_dir for timestamp db scratch space |  Minor | Backend | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-5110](https://issues.apache.org/jira/browse/IMPALA-5110) | dump\_breakpad\_symbols.py should support Debian packages |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-4859](https://issues.apache.org/jira/browse/IMPALA-4859) | Push down IS NULL / IS NOT NULL to Kudu |  Major | Backend | Todd Lipcon | Joe McDonnell |
| [IMPALA-4293](https://issues.apache.org/jira/browse/IMPALA-4293) | Query profile should include error log |  Critical | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-5140](https://issues.apache.org/jira/browse/IMPALA-5140) | clean up markdown, make slight improvements to doc building howto |  Major | Docs | Michael Brown | Michael Brown |
| [IMPALA-5181](https://issues.apache.org/jira/browse/IMPALA-5181) | Make it possible to get Python package metadata from an HTML web page in pip\_download.py |  Major | Infrastructure | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-5156](https://issues.apache.org/jira/browse/IMPALA-5156) | Drop VLOG level passed into Kudu client |  Major | Backend, Perf Investigation | Todd Lipcon |  |
| [IMPALA-1861](https://issues.apache.org/jira/browse/IMPALA-1861) | Conditional functions with constant arguments should be simplified during analysis |  Minor | Frontend | Dimitris Tsirogiannis | Thomas Tauber-Marshall |
| [IMPALA-3955](https://issues.apache.org/jira/browse/IMPALA-3955) | Remove Scheduler class and rename SimpleScheduler to Scheduler |  Minor | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-4547](https://issues.apache.org/jira/browse/IMPALA-4547) | Fix ExecEnv singleton issues in tests |  Minor | Backend | Henry Robinson |  |
| [IMPALA-5229](https://issues.apache.org/jira/browse/IMPALA-5229) | Try using TCMalloc + Huge Pages for buffers |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4943](https://issues.apache.org/jira/browse/IMPALA-4943) | Improve metadata load speed for "alter table add partition". |  Blocker | Catalog | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-5192](https://issues.apache.org/jira/browse/IMPALA-5192) | Avoid hard coding pointer to the tuple pool into generated IR of Tuple::CodegenMaterializeExprs() |  Major | Backend | Taras Bobrovytsky | Michael Ho |
| [IMPALA-5162](https://issues.apache.org/jira/browse/IMPALA-5162) | support kerberized+ssl TPC-H nested data loading |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-5163](https://issues.apache.org/jira/browse/IMPALA-5163) | support running concurrent\_select.py against Kerberized+SSL Impala |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-3742](https://issues.apache.org/jira/browse/IMPALA-3742) | INSERTs into Kudu tables should partition and sort |  Critical | Backend | Matthew Jacobs | Thomas Tauber-Marshall |
| [IMPALA-5120](https://issues.apache.org/jira/browse/IMPALA-5120) | Consider defaulting to partitioned join when no stats are available. |  Critical | Frontend | Tim Armstrong | Thomas Tauber-Marshall |
| [IMPALA-3654](https://issues.apache.org/jira/browse/IMPALA-3654) | Range based pruning for in-predicate |  Minor | Frontend | Michael Ho | Joe McDonnell |
| [IMPALA-5214](https://issues.apache.org/jira/browse/IMPALA-5214) | Distcc scripts should not require toolchain at /opt/Impala-Toolchain |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-4873](https://issues.apache.org/jira/browse/IMPALA-4873) | run\_test\_case() should find/replace arbitrary strings in /testdata/workloads/\*/queries/\*.test |  Major | Infrastructure | David Knupp | Lars Volker |
| [IMPALA-5220](https://issues.apache.org/jira/browse/IMPALA-5220) | Clean up TCMalloc memory maintenance logic |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5169](https://issues.apache.org/jira/browse/IMPALA-5169) | Parallelise read I/O of BufferPool::Pin() |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5238](https://issues.apache.org/jira/browse/IMPALA-5238) | Support transferring reservation between ReservationTrackers |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5187](https://issues.apache.org/jira/browse/IMPALA-5187) | Bump breakpad version to include the fix for Breakpad #681, re-enable the strict check that was disabled in IMPALA-3794 |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-5301](https://issues.apache.org/jira/browse/IMPALA-5301) | minicluster kudu needs mem limits set |  Major | Infrastructure | Matthew Jacobs |  |
| [IMPALA-4764](https://issues.apache.org/jira/browse/IMPALA-4764) | add hedged read metrics |  Major | Backend | Silvius Rus | Sailesh Mukil |
| [IMPALA-5003](https://issues.apache.org/jira/browse/IMPALA-5003) | Add 'constant propagation' for Views with a partition filter |  Major | Frontend | Peter Ebert | Zach Amsden |
| [IMPALA-5127](https://issues.apache.org/jira/browse/IMPALA-5127) | Impala shell history size is fixed and very small |  Trivial | . | Zach Amsden | Zach Amsden |
| [IMPALA-5304](https://issues.apache.org/jira/browse/IMPALA-5304) | Parquet scanner transfers decompression buffers when not needed |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5347](https://issues.apache.org/jira/browse/IMPALA-5347) | Parquet scanner has a lot of small CPU inefficiencies |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4988](https://issues.apache.org/jira/browse/IMPALA-4988) | Add query option to control filtering based on parquet::Statistics |  Major | Frontend | Lars Volker | Lars Volker |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-4659](https://issues.apache.org/jira/browse/IMPALA-4659) | TestScannersFuzzing should set a mem\_limit |  Critical | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-4640](https://issues.apache.org/jira/browse/IMPALA-4640) | parquet-reader always prints "Rows: 0" |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-4647](https://issues.apache.org/jira/browse/IMPALA-4647) | Cannot do full data load with ninja |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-4702](https://issues.apache.org/jira/browse/IMPALA-4702) | Webserver command line option 'webserver\_private\_key\_file' erroneously refers to 'ssl\_server\_certificate' instead of 'webserver\_certificate\_file |  Major | Backend, Docs | Lars Volker | Lars Volker |
| [IMPALA-4033](https://issues.apache.org/jira/browse/IMPALA-4033) | ALTER TABLE ADD PARTITION treats string-partition key values as case insensitive. |  Major | Frontend | Alexander Behm | Amos Bird |
| [IMPALA-4710](https://issues.apache.org/jira/browse/IMPALA-4710) | There is an error in control audit log file size number |  Major | Backend | Davy Xu | Davy Xu |
| [IMPALA-4689](https://issues.apache.org/jira/browse/IMPALA-4689) | Expiration computes last active timestamp wrong |  Minor | Backend | Lars Volker | Lars Volker |
| [IMPALA-3641](https://issues.apache.org/jira/browse/IMPALA-3641) | DROP / CREATE sequence on same table failed with "table already exists" |  Blocker | Catalog, Frontend | Lars Volker | Alexander Behm |
| [IMPALA-4742](https://issues.apache.org/jira/browse/IMPALA-4742) | run-tests.py not compatible with python 2.6 |  Blocker | Infrastructure | Jim Apple | Jim Apple |
| [IMPALA-4751](https://issues.apache.org/jira/browse/IMPALA-4751) | For unknown query IDs, /query\_profile\_encoded?query\_id=123 starts with an empty line |  Major | Backend | Lars Volker | Lars Volker |
| [IMPALA-4749](https://issues.apache.org/jira/browse/IMPALA-4749) | Hit DCHECK in sorter for spilling query with scratch limit |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4707](https://issues.apache.org/jira/browse/IMPALA-4707) | Heap use-after-free in QueryExecMgr |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4745](https://issues.apache.org/jira/browse/IMPALA-4745) | TestScratchLimit fails on S3 |  Blocker | Infrastructure | Taras Bobrovytsky | Tim Armstrong |
| [IMPALA-4757](https://issues.apache.org/jira/browse/IMPALA-4757) | Macros in testutil/gtest-util.h evaluate their arguments twice |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-4722](https://issues.apache.org/jira/browse/IMPALA-4722) | test\_scratch\_disk.py fails sporadically when asserting logfile content |  Blocker | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-4716](https://issues.apache.org/jira/browse/IMPALA-4716) | Expr rewrite causes IllegalStateException |  Critical | Frontend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-4765](https://issues.apache.org/jira/browse/IMPALA-4765) | Catalog loading threads can be wasted waiting for a large table to load |  Critical | Catalog | Alexander Behm | Alexander Behm |
| [IMPALA-4768](https://issues.apache.org/jira/browse/IMPALA-4768) | Improve logging of table loading for supportability. |  Critical | Catalog | Alexander Behm | Alexander Behm |
| [IMPALA-4036](https://issues.apache.org/jira/browse/IMPALA-4036) | show create table outputs invalid sql for partitioned tables with comments |  Major | Frontend | Andor Tóth | Joe McDonnell |
| [IMPALA-4549](https://issues.apache.org/jira/browse/IMPALA-4549) | Validation of timestamp year is inconsistent about whether upper bound is 9999 or 10000 |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4748](https://issues.apache.org/jira/browse/IMPALA-4748) | tmp-file-mgr.h:263] Check failed: !write\_in\_flight\_ |  Blocker | Backend | Michael Brown | Tim Armstrong |
| [IMPALA-4788](https://issues.apache.org/jira/browse/IMPALA-4788) | Partition recovery is very slow as it uses an ArrayList to check if a partition already exists |  Major | Catalog | Mostafa Mokhtar | Jim Apple |
| [IMPALA-4767](https://issues.apache.org/jira/browse/IMPALA-4767) | Table stats are removed after any ALTER TABLE in Impala |  Critical | Catalog | Nicholas Brenwald | Alexander Behm |
| [IMPALA-4775](https://issues.apache.org/jira/browse/IMPALA-4775) | discrepancy\_searcher.py logging overwriting itself |  Critical | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-4449](https://issues.apache.org/jira/browse/IMPALA-4449) | Revisit locking scheme in CatalogOpEx.alterTable() |  Major | Catalog | Bharath Vissapragada | Dimitris Tsirogiannis |
| [IMPALA-4801](https://issues.apache.org/jira/browse/IMPALA-4801) | Heap use-after-free in expr-test |  Blocker | Backend | Thomas Tauber-Marshall | Tim Armstrong |
| [IMPALA-4055](https://issues.apache.org/jira/browse/IMPALA-4055) | Investigate and fix to\_date() slowness |  Major | Backend | Greg Rahn | Alexander Behm |
| [IMPALA-4789](https://issues.apache.org/jira/browse/IMPALA-4789) | Slow metadata loading with many partitions that have inconsistent HDFS path qualification |  Blocker | Catalog | Alexander Behm | Alexander Behm |
| [IMPALA-4820](https://issues.apache.org/jira/browse/IMPALA-4820) | TmpFileMgr can write unencrypted data to disk even when encryption is on |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4808](https://issues.apache.org/jira/browse/IMPALA-4808) | Crash in old hash join node for full outer join |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4853](https://issues.apache.org/jira/browse/IMPALA-4853) | test\_kudu\_dml\_reporting in test\_shell\_commandline.py should not run on distros where Kudu is not supported |  Minor | Infrastructure | David Knupp | David Knupp |
| [IMPALA-4876](https://issues.apache.org/jira/browse/IMPALA-4876) | Remove \_test suffix from test names that had been introduced to make names prefix-free |  Minor | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-4705](https://issues.apache.org/jira/browse/IMPALA-4705) | Impala may miss materialization of indirectly referenced functions |  Blocker | Backend | Plamen Stoev | Michael Ho |
| [IMPALA-4779](https://issues.apache.org/jira/browse/IMPALA-4779) | Conditional functions isfalse(), istrue(), isnotfalse() and isnottrue() don't work with codegen |  Blocker | Backend | Michael Ho | Michael Ho |
| [IMPALA-4780](https://issues.apache.org/jira/browse/IMPALA-4780) | Wrong result with next\_day() when codegen is enabled. |  Blocker | Backend | Michael Ho | Michael Ho |
| [IMPALA-3785](https://issues.apache.org/jira/browse/IMPALA-3785) | "Invalid query handle" error should report which query handle is invalid. |  Minor | Distributed Exec | Tim Armstrong | Zach Amsden |
| [IMPALA-3524](https://issues.apache.org/jira/browse/IMPALA-3524) | Spilling joins unnecessarily process spilled partitions with 0 probe rows |  Minor | Backend | Tim Armstrong | Thomas Tauber-Marshall |
| [IMPALA-4738](https://issues.apache.org/jira/browse/IMPALA-4738) | stddev\_samp() returns 0 when it should return NULL |  Critical | Backend | Greg Rahn | Anuj Phadke |
| [IMPALA-4792](https://issues.apache.org/jira/browse/IMPALA-4792) | NDV estimates for case expressions with limited number of output values could be improved |  Minor | Frontend | Tim Armstrong | Joe McDonnell |
| [IMPALA-4895](https://issues.apache.org/jira/browse/IMPALA-4895) | Memory limit exceeded in TestTPCHJoinQueries.test\_outer\_joins on local filesystem and non-partitioned-aggs-and-joins |  Blocker | Backend | Jim Apple | Thomas Tauber-Marshall |
| [IMPALA-4887](https://issues.apache.org/jira/browse/IMPALA-4887) | Broken local filesystem TestHdfsParquetTableStatsWriter |  Blocker | Backend | Jim Apple | Lars Volker |
| [IMPALA-4849](https://issues.apache.org/jira/browse/IMPALA-4849) | Case expression with constant condition generates IllegalStateException |  Critical | Frontend | Joe McDonnell | Thomas Tauber-Marshall |
| [IMPALA-4842](https://issues.apache.org/jira/browse/IMPALA-4842) | BufferedBlockMgrTest.WriteError occasionally fails with error |  Blocker | Backend | Lars Volker | Daniel Hecht |
| [IMPALA-1670](https://issues.apache.org/jira/browse/IMPALA-1670) | Support multiple partition specs in ALTER TABLE ADD PARTITION |  Minor | Catalog | Henry Robinson | Attila Jeges |
| [IMPALA-4263](https://issues.apache.org/jira/browse/IMPALA-4263) | Wrong results due to missing hash exchange believed to be redundant. |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-4897](https://issues.apache.org/jira/browse/IMPALA-4897) | AnalysisException: specified cache pool does not exist |  Blocker | Frontend | Jim Apple | Sailesh Mukil |
| [IMPALA-4878](https://issues.apache.org/jira/browse/IMPALA-4878) | FunctionContext::GetIntermediateType() is not implemented |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4879](https://issues.apache.org/jira/browse/IMPALA-4879) | FunctionContext::GetArgType() returns wrong type in UDA Merge() and Finalize() |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4916](https://issues.apache.org/jira/browse/IMPALA-4916) | Missing, redundant or non-evaluable predicates due to buggy equivalence classes. |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-4920](https://issues.apache.org/jira/browse/IMPALA-4920) | pytest metadata for custom cluster tests being put in wrong path |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-4840](https://issues.apache.org/jira/browse/IMPALA-4840) | Fix REFRESH perf issues. |  Critical | Catalog | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-4913](https://issues.apache.org/jira/browse/IMPALA-4913) | Toolchain broken on centos6/ubuntu12 after Kudu added boost |  Blocker | Infrastructure | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4937](https://issues.apache.org/jira/browse/IMPALA-4937) | Remove unused kudu scanner keep alive vairable |  Minor | Backend | Mostafa Mokhtar | Matthew Jacobs |
| [IMPALA-4854](https://issues.apache.org/jira/browse/IMPALA-4854) | COMPUTE INCREMENTAL STATS should ignore missing stats on complex columns |  Critical | Frontend | Nathan Salmon | Alexander Behm |
| [IMPALA-4828](https://issues.apache.org/jira/browse/IMPALA-4828) | Altering Kudu table schema outside of Impala may result in crash on read |  Blocker | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-4904](https://issues.apache.org/jira/browse/IMPALA-4904) | test\_ddl\_stress isn't runnable through buildall.sh entry point |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-4907](https://issues.apache.org/jira/browse/IMPALA-4907) | Unable to open scanner: Timed out errors when running COMPUTE STATS on Kudu-related tables |  Critical | Frontend | David Knupp | Matthew Jacobs |
| [IMPALA-4839](https://issues.apache.org/jira/browse/IMPALA-4839) | Kudu-related tests failing on remote cluster because localhost / loopback is hard-coded in the test framework |  Major | Infrastructure | David Knupp | David Knupp |
| [IMPALA-2328](https://issues.apache.org/jira/browse/IMPALA-2328) | Parquet scan should use min/max statistics to skip blocks based on predicate |  Major | Backend | Mostafa Mokhtar | Lars Volker |
| [IMPALA-4962](https://issues.apache.org/jira/browse/IMPALA-4962) | Max Size column incorrectly has NULLs in column stats via HS2 interface |  Major | Backend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-4981](https://issues.apache.org/jira/browse/IMPALA-4981) | COMPUTE STATS with MT\_DOP=1 and tight memory limit produces spilling error |  Blocker | Frontend | Michael Brown | Alexander Behm |
| [IMPALA-4902](https://issues.apache.org/jira/browse/IMPALA-4902) | Concurrent DDL may fail with a ConcurrentModificationException |  Critical | Catalog | Michael Brown | Alexander Behm |
| [IMPALA-4955](https://issues.apache.org/jira/browse/IMPALA-4955) | Insert overwrite into partitioned table started failing with IllegalStateException: null |  Blocker | Catalog | Mostafa Mokhtar | Bharath Vissapragada |
| [IMPALA-4936](https://issues.apache.org/jira/browse/IMPALA-4936) | Cast from double to decimal doesn't always handle overflow correctly |  Major | Backend | Michael Ho | Zach Amsden |
| [IMPALA-4915](https://issues.apache.org/jira/browse/IMPALA-4915) | Unbounded DECIMAL casts from floating point to decimal trigger undefined behavior |  Major | Backend | Zachary | Zach Amsden |
| [IMPALA-4982](https://issues.apache.org/jira/browse/IMPALA-4982) | Add a test for statistics based filtering of row groups for root-level scalar columns of parquet files with nested types |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-5005](https://issues.apache.org/jira/browse/IMPALA-5005) | Don't allow server to send SASL COMPLETE message out of order |  Major | Security | Henry Robinson | Henry Robinson |
| [IMPALA-4983](https://issues.apache.org/jira/browse/IMPALA-4983) | Regression in exchange operators introduced by LZ4 1.7.5 upgrade |  Major | Distributed Exec | Mostafa Mokhtar | Henry Robinson |
| [IMPALA-4997](https://issues.apache.org/jira/browse/IMPALA-4997) | crash when using sortby hint on a very large table |  Blocker | Backend | Matthew Mulder | Lars Volker |
| [IMPALA-4995](https://issues.apache.org/jira/browse/IMPALA-4995) | crash when limit clause \> MAX\_INT |  Blocker | Backend | Matthew Mulder | Lars Volker |
| [IMPALA-4998](https://issues.apache.org/jira/browse/IMPALA-4998) | Table.toThrift() called without holding the table lock: test\_view\_compatibility\_b0595633.test\_hive org.apache.impala.catalog |  Blocker | Catalog | Michael Ho | Alexander Behm |
| [IMPALA-4546](https://issues.apache.org/jira/browse/IMPALA-4546) | Incorporate Russian/Moscow timezone changes in to the tz db |  Critical | Backend | Bharath Vissapragada | Taras Bobrovytsky |
| [IMPALA-4946](https://issues.apache.org/jira/browse/IMPALA-4946) | Rare hang in buffer-pool-test |  Critical | Backend | Henry Robinson | Tim Armstrong |
| [IMPALA-5008](https://issues.apache.org/jira/browse/IMPALA-5008) | AddressSanitizer: heap-buffer-overflow in ParquetPlainEncoder |  Blocker | Backend | Michael Ho | Lars Volker |
| [IMPALA-4899](https://issues.apache.org/jira/browse/IMPALA-4899) | Parquet table writer leaks dictionaries |  Critical | Backend | Tim Armstrong | Joe McDonnell |
| [IMPALA-4675](https://issues.apache.org/jira/browse/IMPALA-4675) | Mixed or uppercase columns are not resolved in parquet when using PARQUET\_FALLBACK\_SCHEMA\_RESOLUTION=NAME |  Blocker | Backend | Nathan Salmon | Nathan Salmon |
| [IMPALA-4593](https://issues.apache.org/jira/browse/IMPALA-4593) | kudu-python is built with the system C++ compiler, which may not be ABI-compatible with the toolchain C++ compiler |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-5021](https://issues.apache.org/jira/browse/IMPALA-5021) | COMPUTE STATS hang while RowsRead of one SCAN fragment winds down |  Critical | Backend | Matthew Mulder | Alexander Behm |
| [IMPALA-5027](https://issues.apache.org/jira/browse/IMPALA-5027) | udf headers are not longer buildable outside of Impala source tree |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5028](https://issues.apache.org/jira/browse/IMPALA-5028) | Exception in catalog web UI when trying to display loaded table |  Blocker | Catalog | Dimitris Tsirogiannis | Alexander Behm |
| [IMPALA-5038](https://issues.apache.org/jira/browse/IMPALA-5038) | File size mismatch in PlannerTest.testPredicatePropagation |  Blocker | Infrastructure | Alexander Behm | Joe McDonnell |
| [IMPALA-4725](https://issues.apache.org/jira/browse/IMPALA-4725) | Wrong field resolution of nested Parquet fields |  Blocker | Backend | Petter von Dolwitz | Alexander Behm |
| [IMPALA-5025](https://issues.apache.org/jira/browse/IMPALA-5025) | Upgrade binutils to 2.26.1 |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5044](https://issues.apache.org/jira/browse/IMPALA-5044) | backports.tempfile not supported in python 2.6 |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-4615](https://issues.apache.org/jira/browse/IMPALA-4615) | test\_avro\_schema\_resolution.py fails with wrong results |  Blocker | Backend | Alexander Behm | Lars Volker |
| [IMPALA-5055](https://issues.apache.org/jira/browse/IMPALA-5055) | Jenkins test run hit DCHECK in parquet-column-readers.cc |  Blocker | Backend | Tim Armstrong | Joe McDonnell |
| [IMPALA-5039](https://issues.apache.org/jira/browse/IMPALA-5039) | test\_mt\_dop.py fails on local filesystem build |  Blocker | Infrastructure | Alexander Behm | Joe McDonnell |
| [IMPALA-5076](https://issues.apache.org/jira/browse/IMPALA-5076) | query\_test.test\_exprs.TestExprs.test\_exprs fails on SLES12 SP2 |  Blocker | . | David Knupp |  |
| [IMPALA-5077](https://issues.apache.org/jira/browse/IMPALA-5077) | Add NUMA info and the current CPU to CpuInfo |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5042](https://issues.apache.org/jira/browse/IMPALA-5042) | Loading metadata for partitioned tables is slow due to usage of an ArrayList, potential 4x speedup |  Major | Catalog | Mostafa Mokhtar | Bharath Vissapragada |
| [IMPALA-1427](https://issues.apache.org/jira/browse/IMPALA-1427) | Improve "unknown disk id" warning messages |  Minor | Catalog | Henry Robinson | Bharath Vissapragada |
| [IMPALA-5041](https://issues.apache.org/jira/browse/IMPALA-5041) | Allow AuthManager::Init() to be called more than once |  Major | Security | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-2518](https://issues.apache.org/jira/browse/IMPALA-2518) | DROP DATABASE CASCADE does not remove cache directives of tables |  Critical | Catalog | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-4914](https://issues.apache.org/jira/browse/IMPALA-4914) | TestSpillStress makes flawed assumptions about running concurrently |  Major | Infrastructure | Michael Brown | Tim Armstrong |
| [IMPALA-4999](https://issues.apache.org/jira/browse/IMPALA-4999) | Impala.tests.custom\_cluster.test\_spilling.TestSpillStress.test\_spill\_stress failed intermittently |  Blocker | Backend | Michael Ho | Tim Armstrong |
| [IMPALA-5072](https://issues.apache.org/jira/browse/IMPALA-5072) | test\_recover\_many\_partitions fails on S3 |  Blocker | Catalog | Dimitris Tsirogiannis | Zach Amsden |
| [IMPALA-5088](https://issues.apache.org/jira/browse/IMPALA-5088) | heap-buffer-overflow in impala\_udf::StringVal::CopyFrom |  Blocker | Backend | Michael Brown | Taras Bobrovytsky |
| [IMPALA-5111](https://issues.apache.org/jira/browse/IMPALA-5111) | IllegalArgumentException when using explicit "NOT NULL" on pk column |  Critical | Catalog | Michael Brown | Matthew Jacobs |
| [IMPALA-5115](https://issues.apache.org/jira/browse/IMPALA-5115) | Occasional crash in HdfsTableSink while using mod(cast(rand(7) \* 1000000000 as int),2) as partition column |  Blocker | Backend | Mostafa Mokhtar | Lars Volker |
| [IMPALA-4701](https://issues.apache.org/jira/browse/IMPALA-4701) | ccache does not understand that distcc.sh could be clang or gcc |  Major | Infrastructure | Jim Apple | Tim Armstrong |
| [IMPALA-5171](https://issues.apache.org/jira/browse/IMPALA-5171) | fix broken RAT build |  Blocker | Docs | Michael Brown | Michael Brown |
| [IMPALA-5154](https://issues.apache.org/jira/browse/IMPALA-5154) | catalogd hangs trying to load an unpartitioned Kudu table |  Critical | Catalog | Todd Lipcon | Matthew Jacobs |
| [IMPALA-5183](https://issues.apache.org/jira/browse/IMPALA-5183) | buffered-block-mgr-test: Writes did not complete after 500ms |  Blocker | Backend | Matthew Jacobs | Tim Armstrong |
| [IMPALA-3794](https://issues.apache.org/jira/browse/IMPALA-3794) | test\_breakpad.py is flaky |  Critical | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-4088](https://issues.apache.org/jira/browse/IMPALA-4088) | HDFS data nodes pick HTTP server ports at random, sometimes stealing HBase master's port |  Critical | Infrastructure | Alexander Behm | Laszlo Gaal |
| [IMPALA-5186](https://issues.apache.org/jira/browse/IMPALA-5186) | stress test caused crash in HdfsParquetScanner::Close() |  Blocker | Backend | Michael Brown | Alexander Behm |
| [IMPALA-4684](https://issues.apache.org/jira/browse/IMPALA-4684) | check-hbase-nodes.py: Build failing on RHEL7 when trying to start HBase |  Blocker | Infrastructure | Michael Brown | David Knupp |
| [IMPALA-5173](https://issues.apache.org/jira/browse/IMPALA-5173) | Crash when NestedLoopJoin has HashJoin feeding directly into it's right side |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4858](https://issues.apache.org/jira/browse/IMPALA-4858) | Provide better explanation for obscure Memory limit exceeded failures |  Critical | Backend | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-4733](https://issues.apache.org/jira/browse/IMPALA-4733) | HBase/Zookeeper continues to be flaky when starting the minicluster on RHEL7 |  Critical | Infrastructure | David Knupp | Lars Volker |
| [IMPALA-5224](https://issues.apache.org/jira/browse/IMPALA-5224) | Remove repository.codehaus.org from Maven pom's |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-5230](https://issues.apache.org/jira/browse/IMPALA-5230) | Impala does not start under ASAN |  Blocker | Backend | Alexander Behm | Tim Armstrong |
| [IMPALA-5189](https://issues.apache.org/jira/browse/IMPALA-5189) | python env fails to install pytest-xdist |  Blocker | Infrastructure | Matthew Jacobs | Lars Volker |
| [IMPALA-5231](https://issues.apache.org/jira/browse/IMPALA-5231) | S3 build fails because memory estimates changes |  Blocker | Infrastructure | Taras Bobrovytsky | Tim Armstrong |
| [IMPALA-5198](https://issues.apache.org/jira/browse/IMPALA-5198) | Error messages are sometimes dropped before reaching client |  Blocker | Infrastructure | Matthew Jacobs | Sailesh Mukil |
| [IMPALA-5182](https://issues.apache.org/jira/browse/IMPALA-5182) | Explicitly close connection to impalad on error from shell |  Major | Clients | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-5217](https://issues.apache.org/jira/browse/IMPALA-5217) | KuduTableSink checks null constraints incorrectly |  Critical | Backend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-5145](https://issues.apache.org/jira/browse/IMPALA-5145) | CTAS failing when creating from a view with error "Unsupported type 'null\_type'" |  Critical | Frontend | Boris Gitline | Anuj Phadke |
| [IMPALA-4548](https://issues.apache.org/jira/browse/IMPALA-4548) | BlockingJoinNode::Close() should wait for completion of async build thread |  Minor | Backend | Michael Ho | Michael Ho |
| [IMPALA-5222](https://issues.apache.org/jira/browse/IMPALA-5222) | Bits::Log2Ceiling eating 1% of CPU when running targeted-perf. |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5125](https://issues.apache.org/jira/browse/IMPALA-5125) | Check failed: tuple\_desc\_map\_.back() != \_\_null |  Blocker | Frontend | Michael Brown | Thomas Tauber-Marshall |
| [IMPALA-5251](https://issues.apache.org/jira/browse/IMPALA-5251) | DecimalAvgFinalize() gets the wrong arg type |  Blocker | Frontend | Daniel Hecht | Michael Ho |
| [IMPALA-3079](https://issues.apache.org/jira/browse/IMPALA-3079) | Fix Sequence file writer (crashes or produces invalid files) |  Major | Backend | Mostafa Mokhtar | Attila Jeges |
| [IMPALA-4731](https://issues.apache.org/jira/browse/IMPALA-4731) | Sorter crash Impalad instance |  Critical | Backend | fishing | Thomas Tauber-Marshall |
| [IMPALA-397](https://issues.apache.org/jira/browse/IMPALA-397) | ORDER BY rand() does not work. |  Minor | Frontend | Alexander Behm | Thomas Tauber-Marshall |
| [IMPALA-5244](https://issues.apache.org/jira/browse/IMPALA-5244) | data\_errors/test\_data\_errors.py:56: in test\_hdfs\_file\_open\_fail on local filesystem build |  Blocker | Backend | Michael Ho | Sailesh Mukil |
| [IMPALA-5172](https://issues.apache.org/jira/browse/IMPALA-5172) | crash in tcmalloc::CentralFreeList::FetchFromOneSpans |  Blocker | Backend | Matthew Mulder | Joe McDonnell |
| [IMPALA-4818](https://issues.apache.org/jira/browse/IMPALA-4818) | TestCancellationSerial.test\_cancel\_insert is meta-flaky |  Critical | Infrastructure | Jim Apple | Jim Apple |
| [IMPALA-5257](https://issues.apache.org/jira/browse/IMPALA-5257) | TestTableWriters.test\_seq\_writer\_hive\_compatibility fails in local file system build |  Blocker | Backend | Michael Ho | Attila Jeges |
| [IMPALA-5261](https://issues.apache.org/jira/browse/IMPALA-5261) | Heap use-after-free in HdfsSequenceTableWriter::ConsumeRow() |  Blocker | Backend | Michael Ho | Attila Jeges |
| [IMPALA-5252](https://issues.apache.org/jira/browse/IMPALA-5252) | Java UDF returning string can lead to crash under memory pressure. |  Blocker | Backend | Alexander Behm | Daniel Hecht |
| [IMPALA-5188](https://issues.apache.org/jira/browse/IMPALA-5188) | DCHECK in UnionNode::GetNextPassThrough with GROUP BY, AVG |  Blocker | Backend | Michael Brown | Taras Bobrovytsky |
| [IMPALA-2716](https://issues.apache.org/jira/browse/IMPALA-2716) | Hive/Impala incompatibility for timestamp data in Parquet |  Critical | Backend | Alexander Behm | Attila Jeges |
| [IMPALA-5080](https://issues.apache.org/jira/browse/IMPALA-5080) | test\_java\_udfs: OutOfMemoryError: PermGen space |  Blocker | Frontend | Michael Brown | Thomas Tauber-Marshall |
| [IMPALA-5262](https://issues.apache.org/jira/browse/IMPALA-5262) | test\_sort.py::test\_analytic\_order\_by\_random fails with assert |  Blocker | Frontend | Joe McDonnell | Thomas Tauber-Marshall |
| [IMPALA-5235](https://issues.apache.org/jira/browse/IMPALA-5235) | Query throws a NullPointerException on starting impala cluster with logging\_level=3 |  Critical | Frontend | Anuj Phadke | Anuj Phadke |
| [IMPALA-4893](https://issues.apache.org/jira/browse/IMPALA-4893) | Sequence scanner increments RuntimeProfile rows read counter per row wasting 30% CPU |  Major | Backend | Mostafa Mokhtar | Anuj Phadke |
| [IMPALA-5193](https://issues.apache.org/jira/browse/IMPALA-5193) | Impala reads gzip compressed text as binary when skip.header.line.count \> 0 |  Blocker | Backend | Vincent Tran | Lars Volker |
| [IMPALA-5207](https://issues.apache.org/jira/browse/IMPALA-5207) | enable\_distcc doesn't reset IMPALA\_DISTCC\_ENABLED |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-5287](https://issues.apache.org/jira/browse/IMPALA-5287) | Add a test for skip.header.line.count on compressed files |  Critical | Backend | Lars Volker | Lars Volker |
| [IMPALA-5273](https://issues.apache.org/jira/browse/IMPALA-5273) | StringCompare is very slow |  Major | Backend | Jim Apple | Jim Apple |
| [IMPALA-5245](https://issues.apache.org/jira/browse/IMPALA-5245) | buffer-allocator-test failed in ASAN build |  Critical | Backend | Michael Ho | Tim Armstrong |
| [IMPALA-5079](https://issues.apache.org/jira/browse/IMPALA-5079) | Flaky tests: Kudu EE tests need longer HS2 connection timeouts |  Blocker | Catalog | Dimitris Tsirogiannis | Matthew Jacobs |
| [IMPALA-5197](https://issues.apache.org/jira/browse/IMPALA-5197) | Parquet scan may incorrectly report "Corrupt Parquet file" in the logs |  Critical | Backend | Michael Brown | Michael Ho |
| [IMPALA-5295](https://issues.apache.org/jira/browse/IMPALA-5295) | "Process: memory limit exceeded" in shell tests during asf-master-core-asan build |  Blocker | Backend | David Knupp | Michael Ho |
| [IMPALA-4499](https://issues.apache.org/jira/browse/IMPALA-4499) | Address Kudu query profile issues |  Major | Backend | Mostafa Mokhtar | Thomas Tauber-Marshall |
| [IMPALA-5258](https://issues.apache.org/jira/browse/IMPALA-5258) | Need to reenable building Impala-lzo in release mode |  Major | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-5297](https://issues.apache.org/jira/browse/IMPALA-5297) | free-pool-test may be OOM killed on jenkins.impala.io runs |  Critical | Infrastructure | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-5294](https://issues.apache.org/jira/browse/IMPALA-5294) | Kudu INSERT partitioning fails with constants |  Critical | Frontend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-5291](https://issues.apache.org/jira/browse/IMPALA-5291) | statestore-test failed during exhaustive testing of ASF RELEASE build |  Blocker | Backend | David Knupp | Tim Armstrong |
| [IMPALA-5305](https://issues.apache.org/jira/browse/IMPALA-5305) | query\_test/test\_observability.py failing on s3, localFS and Isilon after recent changes to test data |  Blocker | . | David Knupp | Thomas Tauber-Marshall |
| [IMPALA-5322](https://issues.apache.org/jira/browse/IMPALA-5322) | Potential crash in Frontend & Catalog JNI startup |  Critical | Backend | Bharath Vissapragada | Bharath Vissapragada |
| [IMPALA-5318](https://issues.apache.org/jira/browse/IMPALA-5318) | Impala does not always generated fully qualified table names in audit events |  Major | Frontend | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-5208](https://issues.apache.org/jira/browse/IMPALA-5208) | Forked breakpad process blocks indefinitely for WaitForContinueSignal and fails new Impalad process at startup |  Critical | Backend | Mostafa Mokhtar | Lars Volker |
| [IMPALA-5319](https://issues.apache.org/jira/browse/IMPALA-5319) |  data\_errors/test\_data\_errors.py::TestHdfsScanNodeErrors failing on asf-master-exhaustive |  Blocker | Infrastructure | Zach Amsden | Matthew Jacobs |
| [IMPALA-5246](https://issues.apache.org/jira/browse/IMPALA-5246) | Queries failing with "Process: memory limit exceeded" during ASAN builds |  Blocker | Backend | Michael Ho | Taras Bobrovytsky |
| [IMPALA-5180](https://issues.apache.org/jira/browse/IMPALA-5180) | Non-deterministic exprs without slot refs cause HDFS query failure |  Major | Frontend | Zach Amsden | Zach Amsden |
| [IMPALA-5339](https://issues.apache.org/jira/browse/IMPALA-5339) | IMPALA-4166 breaks queries on tables with sort.column that do a expr rewrite |  Blocker | Frontend | Lars Volker | Lars Volker |
| [IMPALA-5144](https://issues.apache.org/jira/browse/IMPALA-5144) | Remove sortby() query hint |  Major | Frontend | Lars Volker | Lars Volker |
| [IMPALA-5340](https://issues.apache.org/jira/browse/IMPALA-5340) | Query profile and debug webpage can disagree about 'Query State' |  Critical | Backend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-5349](https://issues.apache.org/jira/browse/IMPALA-5349) | BufferedBlockMgrTest.NoDirsAllocationError failed to write earlier than expected |  Critical | . | Henry Robinson | Tim Armstrong |
| [IMPALA-5331](https://issues.apache.org/jira/browse/IMPALA-5331) | Use new libHDFS API to address "Unknown Error 255" |  Critical | Backend | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-1972](https://issues.apache.org/jira/browse/IMPALA-1972) | Queries that take a long time to plan can cause webserver to block other queries |  Major | Backend | Henry Robinson | Bharath Vissapragada |
| [IMPALA-5342](https://issues.apache.org/jira/browse/IMPALA-5342) | GetTables() Thrift call does not fill up the table comments field |  Major | Frontend | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-4923](https://issues.apache.org/jira/browse/IMPALA-4923) | Operators running on top of selective Parquet scans spend a lot of time calling impala::MemPool::FreeAll on empty batches |  Major | Backend | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-5358](https://issues.apache.org/jira/browse/IMPALA-5358) | Off-by-one error in testTableSample |  Critical | Frontend | Henry Robinson | Alexander Behm |
| [IMPALA-5302](https://issues.apache.org/jira/browse/IMPALA-5302) | tcmalloc contention limits CPU utilization on machines with \>40 logical processors |  Critical | Backend | Mostafa Mokhtar | Mostafa Mokhtar |
| [IMPALA-5150](https://issues.apache.org/jira/browse/IMPALA-5150) | Uneven load distribution of work across NUMA nodes |  Major | Backend | Mostafa Mokhtar | Mostafa Mokhtar |
| [IMPALA-5354](https://issues.apache.org/jira/browse/IMPALA-5354) | nocluster/noshuffle doesn't work for DML into Kudu tables |  Critical | Frontend | Matthew Jacobs | Thomas Tauber-Marshall |
| [IMPALA-5232](https://issues.apache.org/jira/browse/IMPALA-5232) | Parquet reader error message prints memory address instead of value |  Major | Backend | Tim Armstrong | Pooja Nilangekar |
| [IMPALA-5324](https://issues.apache.org/jira/browse/IMPALA-5324) | Fix version check in EvalDictionaryFilters |  Major | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-5375](https://issues.apache.org/jira/browse/IMPALA-5375) | Builds on CentOS 6.4 failing with broken python dependencies |  Blocker | Infrastructure | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-4890](https://issues.apache.org/jira/browse/IMPALA-4890) | stress crash: Coordinator race between TearDown() and GetNext() (crash dereferencing executor\_) |  Blocker | Backend | Michael Brown | Marcel Kinard |
| [IMPALA-5143](https://issues.apache.org/jira/browse/IMPALA-5143) | Crash while running/cancelling concurrent queries QueryExecState::ExecQueryOrDmlRequest  query-exec-state.cc:469 |  Blocker | Backend | Mostafa Mokhtar | Marcel Kinard |
| [IMPALA-5157](https://issues.apache.org/jira/browse/IMPALA-5157) | Remove "SORTBY()" hint from new features in 2.8.0 |  Blocker | Docs | Lars Volker | John Russell |
| [IMPALA-5391](https://issues.apache.org/jira/browse/IMPALA-5391) | Cannot compile UDFs with older GCC versions |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5411](https://issues.apache.org/jira/browse/IMPALA-5411) | Excessive logging while queries are loading metadata from ImpalaServer::GetRuntimeProfileStr |  Major | Backend | Mostafa Mokhtar | Bharath Vissapragada |
| [IMPALA-5338](https://issues.apache.org/jira/browse/IMPALA-5338) | Fix Kudu timestamp default values |  Critical | Catalog | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-5419](https://issues.apache.org/jira/browse/IMPALA-5419) | PhjBuilder::Partition::InsertBatch () continue to make progress even after query cancellation |  Critical | Backend | Mostafa Mokhtar | Michael Ho |
| [IMPALA-5383](https://issues.apache.org/jira/browse/IMPALA-5383) | Fix PARQUET\_FILE\_SIZE option for ADLS |  Critical | Backend | Daniel Hecht | Sailesh Mukil |
| [IMPALA-5378](https://issues.apache.org/jira/browse/IMPALA-5378) | Disk IO manager needs to understand ADLS |  Critical | Backend | Joe McDonnell | Sailesh Mukil |
| [IMPALA-5379](https://issues.apache.org/jira/browse/IMPALA-5379) | parquet\_dictionary\_filtering query option is not tested |  Critical | Infrastructure | Lars Volker | Joe McDonnell |
| [IMPALA-5426](https://issues.apache.org/jira/browse/IMPALA-5426) | Metastore fails to start up |  Blocker | Catalog | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-5357](https://issues.apache.org/jira/browse/IMPALA-5357) | Reading Kudu timestamp causes severe kernel spinning due to locking in impala::TimestampValue::UnixTimeToPtime-\> \_\_tz\_convert |  Critical | Backend | Mostafa Mokhtar | Matthew Jacobs |
| [IMPALA-5164](https://issues.apache.org/jira/browse/IMPALA-5164) | BenchmarkTest.Basic test is flaky |  Critical | Infrastructure | Matthew Mulder | Zach Amsden |
| [IMPALA-5388](https://issues.apache.org/jira/browse/IMPALA-5388) | wrong results under stress with secure cluster |  Blocker | Distributed Exec | Michael Brown | Michael Ho |
| [IMPALA-4164](https://issues.apache.org/jira/browse/IMPALA-4164) | Codegen does not generate target-specific machine code for cross-compiled functions |  Minor | Backend | Tim Armstrong | Michael Ho |
| [IMPALA-5413](https://issues.apache.org/jira/browse/IMPALA-5413) | test\_seq\_writer\_hive\_compatibility fails on a real cluster because test user lacks write access |  Critical | Infrastructure | David Knupp | David Knupp |
| [IMPALA-391](https://issues.apache.org/jira/browse/IMPALA-391) | Expr-test does not actually test the codegen path |  Minor | Backend | Nong Li | Michael Ho |
| [IMPALA-1464](https://issues.apache.org/jira/browse/IMPALA-1464) | Bug in explain plan: Plan nodes in unpartitioned fragments should have hosts=1. |  Minor | Frontend | Alexander Behm | Tim Armstrong |
| [IMPALA-5123](https://issues.apache.org/jira/browse/IMPALA-5123) | ASAN failure: heap-use-after-free in timezone\_db.cc:683 |  Blocker | Backend | Lars Volker | Zach Amsden |
| [IMPALA-916](https://issues.apache.org/jira/browse/IMPALA-916) | PlanFragmentExecutor::FragmentComplete is called twice |  Minor | Backend | Henry Robinson | Matthew Jacobs |
| [IMPALA-4956](https://issues.apache.org/jira/browse/IMPALA-4956) | Page on EXPLAIN plans refers to outdated mnemonics |  Major | Docs | Lars Volker | John Russell |
| [IMPALA-4730](https://issues.apache.org/jira/browse/IMPALA-4730) | Group\_concat works with distinct |  Minor | Docs | Peter Brejcak | John Russell |
| [IMPALA-5177](https://issues.apache.org/jira/browse/IMPALA-5177) | Error making alter\_table rpc, job failure |  Critical | Catalog | Matthew Jacobs | Dimitris Tsirogiannis |
| [IMPALA-4868](https://issues.apache.org/jira/browse/IMPALA-4868) | TestRequestPoolService.testUpdatingConfigs fails: "checkModifiedConfigResults:245 expected:\<root.queueC\> but was:\<null\>" |  Blocker | Frontend | Lars Volker | Matthew Jacobs |
| [IMPALA-4227](https://issues.apache.org/jira/browse/IMPALA-4227) | Patch breakpad so it doesn't crash on dwz symbols |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-5471](https://issues.apache.org/jira/browse/IMPALA-5471) | Please delete old releases from mirroring system |  Major | . | Sebb |  |
| [IMPALA-4544](https://issues.apache.org/jira/browse/IMPALA-4544) | Data loading without snapshot fails with ASAN |  Major | Infrastructure | Jim Apple |  |
| [IMPALA-5348](https://issues.apache.org/jira/browse/IMPALA-5348) | remove mention of stringized timestamp literals with interval expressions |  Major | Docs | Michael Brown | John Russell |
| [IMPALA-5512](https://issues.apache.org/jira/browse/IMPALA-5512) | Wrong SELECT syntax documentation |  Minor | Docs | Lukas Eder | John Russell |
| [IMPALA-5298](https://issues.apache.org/jira/browse/IMPALA-5298) | Investigate and fix from\_unixtime() slowness, currently 100x slower than scanning Bigint |  Major | Backend | Mostafa Mokhtar |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-4014](https://issues.apache.org/jira/browse/IMPALA-4014) | Introduce query-wide execution state. |  Major | Backend | Sailesh Mukil | Marcel Kinard |
| [IMPALA-4650](https://issues.apache.org/jira/browse/IMPALA-4650) | Add Protobuf 2.6.1 to toolchain and as a build dependency |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-4355](https://issues.apache.org/jira/browse/IMPALA-4355) | qgen: rework query execution to handle CRUD queries |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-4652](https://issues.apache.org/jira/browse/IMPALA-4652) | Add crcutil to toolchain |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-4651](https://issues.apache.org/jira/browse/IMPALA-4651) | Add libev 4.2.0 to toolchain and as a build dependency |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-4351](https://issues.apache.org/jira/browse/IMPALA-4351) | query generator random profile options for INSERT |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-4353](https://issues.apache.org/jira/browse/IMPALA-4353) | random query generation for INSERTs |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-4678](https://issues.apache.org/jira/browse/IMPALA-4678) | Set up query mem tracker in QueryState |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3202](https://issues.apache.org/jira/browse/IMPALA-3202) | Add spilling support to new buffer pool |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4359](https://issues.apache.org/jira/browse/IMPALA-4359) | qgen: add UPSERT support |  Blocker | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-4884](https://issues.apache.org/jira/browse/IMPALA-4884) | Add JVM heap and non-heap usage in memory metrics and UI |  Major | Catalog | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-4809](https://issues.apache.org/jira/browse/IMPALA-4809) | Add codegen GetConstant() for query options |  Major | Backend | Daniel Hecht | Michael Ho |
| [IMPALA-4370](https://issues.apache.org/jira/browse/IMPALA-4370) | DECIMAL divide result type (Impala TPC-DS query 11 result lost one row) |  Critical | Frontend | Yuanhao Luo | Daniel Hecht |
| [IMPALA-4821](https://issues.apache.org/jira/browse/IMPALA-4821) | DECIMAL AVG() result type |  Major | Backend | Daniel Hecht | Michael Ho |
| [IMPALA-4926](https://issues.apache.org/jira/browse/IMPALA-4926) | Upgrade LZ4 to recent version |  Major | Infrastructure | Henry Robinson | Henry Robinson |
| [IMPALA-3406](https://issues.apache.org/jira/browse/IMPALA-3406) | Rework Impala FAQs to be generic |  Minor | Docs | John Russell | John Russell |
| [IMPALA-3411](https://issues.apache.org/jira/browse/IMPALA-3411) | Rework Impala data management / governance info to be generic |  Minor | Docs | John Russell | Ambreen Kazi |
| [IMPALA-3410](https://issues.apache.org/jira/browse/IMPALA-3410) | Rework Impala security info to be generic |  Minor | Docs | John Russell | Ambreen Kazi |
| [IMPALA-4984](https://issues.apache.org/jira/browse/IMPALA-4984) | [DOCS] Remove Cloudera copyright information from codeblocks |  Major | Docs | Ambreen Kazi | Ambreen Kazi |
| [IMPALA-4877](https://issues.apache.org/jira/browse/IMPALA-4877) | Incorrect precedence of unary minus and plus |  Major | Frontend | Daniel Hecht | Daniel Hecht |
| [IMPALA-2020](https://issues.apache.org/jira/browse/IMPALA-2020) | Rounding should be done instead of truncating when casting DECIMAL to DECIMAL, FLOAT/DOUBLE to DECIMAL, DECIMAL to INT |  Minor | Backend | casey | Zach Amsden |
| [IMPALA-4813](https://issues.apache.org/jira/browse/IMPALA-4813) | DECIMAL div/mod/multiply rounding |  Major | Backend | Daniel Hecht | Zach Amsden |
| [IMPALA-4811](https://issues.apache.org/jira/browse/IMPALA-4811) | Add strict mode tests for DECIMAL overflow of precision/scale in text file parsing |  Major | Backend | Daniel Hecht | Daniel Hecht |
| [IMPALA-5006](https://issues.apache.org/jira/browse/IMPALA-5006) | [DOCS] Remove Cloudera-specific chunks of content tagged audience=hidden from security guide |  Major | Docs | Ambreen Kazi | Ambreen Kazi |
| [IMPALA-4885](https://issues.apache.org/jira/browse/IMPALA-4885) | Add JVM thread stacktraces and synchronization info in web UI |  Major | Catalog | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-4251](https://issues.apache.org/jira/browse/IMPALA-4251) | Define gerrit process for documentation updates and reviews |  Minor | Docs | John Russell | John Russell |
| [IMPALA-3224](https://issues.apache.org/jira/browse/IMPALA-3224) | Move Impala JIRA to ASF |  Minor | Infrastructure | Henry Robinson | Bharath Vissapragada |
| [IMPALA-4831](https://issues.apache.org/jira/browse/IMPALA-4831) | Clients can violate BufferPool invariants by calling ReservationTracker methods directly. |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3402](https://issues.apache.org/jira/browse/IMPALA-3402) | Remove CDH version number dependencies from doc source |  Minor | Docs | John Russell | John Russell |
| [IMPALA-5057](https://issues.apache.org/jira/browse/IMPALA-5057) | Upgrade glog and gflags to most recent releases |  Major | Backend | Henry Robinson | Henry Robinson |
| [IMPALA-4996](https://issues.apache.org/jira/browse/IMPALA-4996) | Single-threaded KuduScanNode |  Minor | Backend | Alexander Behm | Joe McDonnell |
| [IMPALA-5106](https://issues.apache.org/jira/browse/IMPALA-5106) | KRPC DCHECK hit when closing DataStreamRecvr |  Blocker | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-5113](https://issues.apache.org/jira/browse/IMPALA-5113) | Buffer pool unpinned invariant does not take into account multiply-pinned bytes |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4041](https://issues.apache.org/jira/browse/IMPALA-4041) | Limit catalog and admission control updates to coordinator nodes only |  Major | Backend | Mostafa Mokhtar | Dimitris Tsirogiannis |
| [IMPALA-4758](https://issues.apache.org/jira/browse/IMPALA-4758) | Upgrade gutil to recent Kudu version |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-5130](https://issues.apache.org/jira/browse/IMPALA-5130) | MemTracker::EnableReservationReporting() is not thread-safe |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3401](https://issues.apache.org/jira/browse/IMPALA-3401) | Remove Cloudera Manager-related content from doc source |  Minor | Docs | John Russell | Laurel Hale |
| [IMPALA-3403](https://issues.apache.org/jira/browse/IMPALA-3403) | Rework Impala installation instructions to be generic |  Minor | Docs | John Russell | John Russell |
| [IMPALA-3405](https://issues.apache.org/jira/browse/IMPALA-3405) | Rework Impala upgrade instructions to be generic |  Minor | Docs | John Russell | John Russell |
| [IMPALA-4643](https://issues.apache.org/jira/browse/IMPALA-4643) | Consolidate links that point outside the Impala doc bundle |  Minor | Docs | John Russell | John Russell |
| [IMPALA-5124](https://issues.apache.org/jira/browse/IMPALA-5124) | Fix BufferPool handling of scratch read errors |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4114](https://issues.apache.org/jira/browse/IMPALA-4114) | Port relevant BufferedBlockMgr unit tests for BufferPool |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3203](https://issues.apache.org/jira/browse/IMPALA-3203) | Implement scalable buffer recycling in buffer pool |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-4181](https://issues.apache.org/jira/browse/IMPALA-4181) | Host rendered documentation on ASF resources |  Major | Docs | Jim Apple | Laurel Hale |
| [IMPALA-5228](https://issues.apache.org/jira/browse/IMPALA-5228) | test\_coordinators custom cluster test fails after rebase |  Major | Distributed Exec | Henry Robinson | Henry Robinson |
| [IMPALA-5147](https://issues.apache.org/jira/browse/IMPALA-5147) | Add the ability to exclude coordinators from query execution |  Major | Backend | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-4029](https://issues.apache.org/jira/browse/IMPALA-4029) | Reduce memory requirements for storing THdfsFileDesc |  Critical | Catalog | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-2550](https://issues.apache.org/jira/browse/IMPALA-2550) | Switch to per-query exec rpc |  Major | Distributed Exec | Henry Robinson | Marcel Kinard |
| [IMPALA-5166](https://issues.apache.org/jira/browse/IMPALA-5166) | Clean up BufferPool profile counters |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5309](https://issues.apache.org/jira/browse/IMPALA-5309) | Implement TABLESAMPLE for HDFS tables |  Major | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-5370](https://issues.apache.org/jira/browse/IMPALA-5370) | Document REFRESH FUNCTIONS syntax |  Major | Docs | John Russell | John Russell |
| [IMPALA-5326](https://issues.apache.org/jira/browse/IMPALA-5326) | [DOCS] Document REPLACE() function |  Major | Docs | John Russell | John Russell |
| [IMPALA-5371](https://issues.apache.org/jira/browse/IMPALA-5371) | Document TIMESTAMP support for Kudu tables |  Major | Docs | John Russell | John Russell |
| [IMPALA-5374](https://issues.apache.org/jira/browse/IMPALA-5374) | Document perf improvement from IS [NOT] NULL pushdown to Kudu |  Major | Docs | John Russell | John Russell |
| [IMPALA-5372](https://issues.apache.org/jira/browse/IMPALA-5372) | Document new ALTER TABLE ADD COLUMNS options for Kudu tables |  Major | Docs | John Russell | John Russell |
| [IMPALA-5503](https://issues.apache.org/jira/browse/IMPALA-5503) | Document changes to Impala coordinators |  Major | Docs | John Russell | John Russell |
| [IMPALA-5184](https://issues.apache.org/jira/browse/IMPALA-5184) | Get Impala working against Hive2 APIs |  Major | Catalog | Tim Armstrong | Joe McDonnell |
| [IMPALA-5359](https://issues.apache.org/jira/browse/IMPALA-5359) | Document SORT BY syntax for CREATE TABLE and ALTER TABLE |  Major | Docs | John Russell | John Russell |
| [IMPALA-5583](https://issues.apache.org/jira/browse/IMPALA-5583) | Document default\_join\_distribution\_mode query option |  Major | Docs | John Russell | John Russell |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-5253](https://issues.apache.org/jira/browse/IMPALA-5253) | Use appropriate transport for the StatestoreSubscriber |  Major | Backend | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-4686](https://issues.apache.org/jira/browse/IMPALA-4686) | parquet-reader doesn't know about INT96 columns |  Major | Infrastructure | Lars Volker | Lars Volker |
| [IMPALA-2923](https://issues.apache.org/jira/browse/IMPALA-2923) | Integration job should run full data load + exhaustive. |  Critical | Infrastructure | Alexander Behm | Michael Brown |
| [IMPALA-4829](https://issues.apache.org/jira/browse/IMPALA-4829) | Change default Kudu read behavior for "RYW" |  Critical | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-5002](https://issues.apache.org/jira/browse/IMPALA-5002) | Toolchain build flags should be associated with builds |  Major | Infrastructure | Matthew Jacobs |  |
| [IMPALA-5033](https://issues.apache.org/jira/browse/IMPALA-5033) | update external hadoop ecosystem versions |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-3398](https://issues.apache.org/jira/browse/IMPALA-3398) | Move Impala documentation development to ASF |  Minor | Infrastructure | John Russell | John Russell |
| [IMPALA-5329](https://issues.apache.org/jira/browse/IMPALA-5329) | [DOCS] Document Kudu enhancements |  Major | Docs | John Russell | John Russell |
| [IMPALA-5328](https://issues.apache.org/jira/browse/IMPALA-5328) | [DOCS] Document Parquet enhancements |  Major | Docs | John Russell | John Russell |


