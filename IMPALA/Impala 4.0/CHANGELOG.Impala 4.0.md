
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

## Release Impala 4.0 - Unreleased (as of 2020-11-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-8636](https://issues.apache.org/jira/browse/IMPALA-8636) | Implement INSERT for insert-only ACID tables |  Critical | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-3766](https://issues.apache.org/jira/browse/IMPALA-3766) | Optionally compress spilled data before writing it to disk |  Minor | Backend | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-9099](https://issues.apache.org/jira/browse/IMPALA-9099) | Allow setting mt\_dop manually for queries with joins |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-9629](https://issues.apache.org/jira/browse/IMPALA-9629) | Extend bootstrap\_system.sh to support CentOS 8 |  Major | Infrastructure | Laszlo Gaal | Laszlo Gaal |
| [IMPALA-9631](https://issues.apache.org/jira/browse/IMPALA-9631) | Import HLL functionality from DataSketches |  Major | Infrastructure | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-9633](https://issues.apache.org/jira/browse/IMPALA-9633) | Implement ds\_hll\_union() builtin function |  Major | Backend, Frontend | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-9882](https://issues.apache.org/jira/browse/IMPALA-9882) | Import KLL functionality from DataSketches |  Major | Backend | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-10017](https://issues.apache.org/jira/browse/IMPALA-10017) | Implement ds\_kll\_union() function |  Major | Backend, Frontend | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-10018](https://issues.apache.org/jira/browse/IMPALA-10018) | Implement ds\_kll\_rank() function |  Major | Backend, Frontend | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-10019](https://issues.apache.org/jira/browse/IMPALA-10019) | Implement ds\_kll\_pmf() function |  Major | . | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-10020](https://issues.apache.org/jira/browse/IMPALA-10020) | Implement ds\_kll\_cdf() function |  Major | Backend, Frontend | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-10108](https://issues.apache.org/jira/browse/IMPALA-10108) | Implement ds\_kll\_stringify function |  Major | Backend | Gabor Kaszab | Adam Tamas |
| [IMPALA-10113](https://issues.apache.org/jira/browse/IMPALA-10113) | Add feature flag for incremental metadata update |  Critical | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-9990](https://issues.apache.org/jira/browse/IMPALA-9990) | Kudu table ownership |  Major | . | Attila Bukor | Fang-Yu Rao |
| [IMPALA-10168](https://issues.apache.org/jira/browse/IMPALA-10168) | Expose JSON catalog objects in catalogd's debug page |  Major | . | Quanlong Huang | Quanlong Huang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-9226](https://issues.apache.org/jira/browse/IMPALA-9226) | Improve string allocations of the ORC scanner |  Major | . | Zoltán Borók-Nagy | Norbert Luksa |
| [IMPALA-9228](https://issues.apache.org/jira/browse/IMPALA-9228) | ORC scanner could be vectorized |  Major | . | Zoltán Borók-Nagy | Gabor Kaszab |
| [IMPALA-7686](https://issues.apache.org/jira/browse/IMPALA-7686) | Allow RANGE() clause before HASH() clause for PARTITION BY |  Minor | Frontend | Gabor Kaszab | Adam Tamas |
| [IMPALA-9156](https://issues.apache.org/jira/browse/IMPALA-9156) | Share broadcast join builds between fragments |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9530](https://issues.apache.org/jira/browse/IMPALA-9530) | Allow limiting memory consumed by preaggregation |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9546](https://issues.apache.org/jira/browse/IMPALA-9546) | Update ranger-admin-site.xml.template after RANGER-2688 |  Major | Frontend | Fang-Yu Rao | Fang-Yu Rao |
| [IMPALA-8870](https://issues.apache.org/jira/browse/IMPALA-8870) | Bump guava version when building against Hive 3 |  Blocker | Infrastructure | Tim Armstrong | Fang-Yu Rao |
| [IMPALA-2563](https://issues.apache.org/jira/browse/IMPALA-2563) | Support LDAP search bind operations |  Minor | Security | Mike Yoder | Thomas Tauber-Marshall |
| [IMPALA-6110](https://issues.apache.org/jira/browse/IMPALA-6110) | LDAP authentication improvement using multiple LDAP searches instead of only ldap\_sasl\_bind\_s |  Major | Frontend | Adriano | Thomas Tauber-Marshall |
| [IMPALA-9317](https://issues.apache.org/jira/browse/IMPALA-9317) | Improve number of instances estimate for scans in planner |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9472](https://issues.apache.org/jira/browse/IMPALA-9472) | Keep metrics about the performance of the IO device used for the data cache |  Major | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-9473](https://issues.apache.org/jira/browse/IMPALA-9473) | Add counts of the number of hits, misses, and cache entries |  Major | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-8690](https://issues.apache.org/jira/browse/IMPALA-8690) | Better eviction algorithm for data cache |  Major | Backend | Michael Ho | Joe McDonnell |
| [IMPALA-4080](https://issues.apache.org/jira/browse/IMPALA-4080) | Share codegen work between fragment instances |  Major | Backend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-9537](https://issues.apache.org/jira/browse/IMPALA-9537) | Add LDAP auth to the webui |  Major | Clients | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-9643](https://issues.apache.org/jira/browse/IMPALA-9643) | Local runtime filters can go missing when mt\_dop \> 1 |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-8980](https://issues.apache.org/jira/browse/IMPALA-8980) | Remove functional\*.alltypesinsert from EE tests |  Minor | Infrastructure | Csaba Ringhofer | Adam Tamas |
| [IMPALA-9160](https://issues.apache.org/jira/browse/IMPALA-9160) | Remove references to RangerAuthorizationConfig due to changes in Ranger |  Major | . | Fang-Yu Rao | Fang-Yu Rao |
| [IMPALA-9422](https://issues.apache.org/jira/browse/IMPALA-9422) | Improve join builder profiles |  Major | Backend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-9362](https://issues.apache.org/jira/browse/IMPALA-9362) | Update sqlparse used by impala-shell from version 0.1.19 to latest |  Major | Clients | David Knupp | David Knupp |
| [IMPALA-9501](https://issues.apache.org/jira/browse/IMPALA-9501) | Upgrade sqlparse to a version that supports python 3.0 |  Major | Infrastructure | David Knupp | David Knupp |
| [IMPALA-9489](https://issues.apache.org/jira/browse/IMPALA-9489) | Setup impala-shell.sh env separately, and use thrift-0.11.0 by default |  Major | Infrastructure | David Knupp | David Knupp |
| [IMPALA-9646](https://issues.apache.org/jira/browse/IMPALA-9646) | Clean up README |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-9683](https://issues.apache.org/jira/browse/IMPALA-9683) | Distcc server bootstrap should support Ubuntu 18.04 |  Minor | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-9176](https://issues.apache.org/jira/browse/IMPALA-9176) | Make access to null-aware partition from PartitionedHashJoinNode read-only |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9574](https://issues.apache.org/jira/browse/IMPALA-9574) | Support ubuntu 18.04 as docker base image |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-3926](https://issues.apache.org/jira/browse/IMPALA-3926) | Reconsider use of LD\_LIBRARY\_PATH for toolchain libraries |  Major | Infrastructure | Matthew Jacobs | Tim Armstrong |
| [IMPALA-9716](https://issues.apache.org/jira/browse/IMPALA-9716) | Add jitter to the exponential backoff in status reporting |  Major | Distributed Exec | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-9727](https://issues.apache.org/jira/browse/IMPALA-9727) | Explain output for Hbase Scans isn't formatted correctly |  Trivial | Frontend | Shant Hovsepian | Shant Hovsepian |
| [IMPALA-9679](https://issues.apache.org/jira/browse/IMPALA-9679) | Remove some unnecessary jars from docker images |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-2205](https://issues.apache.org/jira/browse/IMPALA-2205) | Make cancellation tests check whether all fragments finish |  Minor | Infrastructure | Henry Robinson | Henry Robinson |
| [IMPALA-9766](https://issues.apache.org/jira/browse/IMPALA-9766) | TestParquet.test\_bytes\_read\_per\_column is flaky after IMPALA-6984 |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8834](https://issues.apache.org/jira/browse/IMPALA-8834) | Investigate enabling safe version of OPTIMIZE\_PARTITION\_KEY\_SCANS by default |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9777](https://issues.apache.org/jira/browse/IMPALA-9777) | Reduce the diskspace requirements of loading the text version of tpcds.store\_sales |  Major | Infrastructure | Joe McDonnell | Sahil Takiar |
| [IMPALA-9000](https://issues.apache.org/jira/browse/IMPALA-9000) | Fix all the TODO-MT comments |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-9318](https://issues.apache.org/jira/browse/IMPALA-9318) | Guard rail for mt\_dop value |  Major | . | Tim Armstrong | Joe McDonnell |
| [IMPALA-9818](https://issues.apache.org/jira/browse/IMPALA-9818) | Add fetch size as option to impala shell |  Major | Clients | Sahil Takiar | Sahil Takiar |
| [IMPALA-9843](https://issues.apache.org/jira/browse/IMPALA-9843) | Add ability to run schematool against HMS in minicluster |  Major | . | Sahil Takiar | Vihang Karajgaonkar |
| [IMPALA-9861](https://issues.apache.org/jira/browse/IMPALA-9861) | Enable nodiscard for gcc |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9435](https://issues.apache.org/jira/browse/IMPALA-9435) | Usability enhancements for the data cache access trace |  Major | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-9778](https://issues.apache.org/jira/browse/IMPALA-9778) | Refactor HdfsPartition to be immutable |  Critical | Catalog | Quanlong Huang | Quanlong Huang |
| [IMPALA-6506](https://issues.apache.org/jira/browse/IMPALA-6506) | Codegen in ORC scanner |  Major | Backend | Quanlong Huang | Gabor Kaszab |
| [IMPALA-8013](https://issues.apache.org/jira/browse/IMPALA-8013) | Switch from boost:: to std:: locks |  Trivial | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9885](https://issues.apache.org/jira/browse/IMPALA-9885) | Add debug action to simulate slow planning |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-7020](https://issues.apache.org/jira/browse/IMPALA-7020) | Order by expressions in Analytical functions are not materialized causing slowdown |  Major | Frontend | Mostafa Mokhtar | Tim Armstrong |
| [IMPALA-2658](https://issues.apache.org/jira/browse/IMPALA-2658) | Extend the NDV function to accept a precision |  Minor | Backend | Peter Ebert | Qifan Chen |
| [IMPALA-9691](https://issues.apache.org/jira/browse/IMPALA-9691) | Support Kudu Timestamp and Date Bloom Filter |  Major | Backend, Frontend | Wenzhe Zhou | Wenzhe Zhou |
| [IMPALA-9789](https://issues.apache.org/jira/browse/IMPALA-9789) | Disable ineffective bloom filters for Kudu scan |  Major | Backend, Frontend | Wenzhe Zhou | Wenzhe Zhou |
| [IMPALA-9921](https://issues.apache.org/jira/browse/IMPALA-9921) | Parse errors in ToSqlUtils.hiveNeedsQuotes should not be printed to impalad.ERROR |  Critical | Frontend | Quanlong Huang | Quanlong Huang |
| [IMPALA-9294](https://issues.apache.org/jira/browse/IMPALA-9294) | Support DATE for min-max runtime filters |  Critical | Backend | Vladimir Verjovkin | Wenzhe Zhou |
| [IMPALA-9913](https://issues.apache.org/jira/browse/IMPALA-9913) | Use table id to detect uniqueness of table for drop table event |  Minor | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-9791](https://issues.apache.org/jira/browse/IMPALA-9791) | Support validWriteIdList in getPartialCatalogObject |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-9531](https://issues.apache.org/jira/browse/IMPALA-9531) | Drop support for "dateless timestamps" |  Minor | Backend | Csaba Ringhofer | Adam Tamas |
| [IMPALA-9946](https://issues.apache.org/jira/browse/IMPALA-9946) | Use table id when comparing the the transactional state of the table |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-9956](https://issues.apache.org/jira/browse/IMPALA-9956) | Inlining functions in Sorter::Partition() gives a significant speedup. |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9983](https://issues.apache.org/jira/browse/IMPALA-9983) | Push limit from a top level sort onto analytic sort when applicable |  Major | Frontend | Aman Sinha | Aman Sinha |
| [IMPALA-9959](https://issues.apache.org/jira/browse/IMPALA-9959) | Implement ds\_kll\_sketch() and ds\_kll\_quantile() functions |  Major | Backend, Frontend | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-9963](https://issues.apache.org/jira/browse/IMPALA-9963) | Implement ds\_kll\_n() function |  Major | Backend | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-3127](https://issues.apache.org/jira/browse/IMPALA-3127) | Decouple partitions from tables |  Major | Catalog | Dimitris Tsirogiannis | Quanlong Huang |
| [IMPALA-9962](https://issues.apache.org/jira/browse/IMPALA-9962) | Implement ds\_kll\_quantiles() function |  Major | Backend | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-9989](https://issues.apache.org/jira/browse/IMPALA-9989) | Improve admission control pool stats logging |  Major | . | Vincent Tran | Qifan Chen |
| [IMPALA-10110](https://issues.apache.org/jira/browse/IMPALA-10110) | Separate option to control fpp for bloom filter sizing |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-10121](https://issues.apache.org/jira/browse/IMPALA-10121) | bin/jenkins/finalize.sh should generate JUnitXML for TSAN failures |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-10064](https://issues.apache.org/jira/browse/IMPALA-10064) | Support constant propagation for range predicates |  Major | Frontend | Aman Sinha | Aman Sinha |
| [IMPALA-10099](https://issues.apache.org/jira/browse/IMPALA-10099) | Push down DISTINCT aggregation for EXCEPT/INTERSECT |  Major | . | Shant Hovsepian | Shant Hovsepian |
| [IMPALA-10076](https://issues.apache.org/jira/browse/IMPALA-10076) | Reduce logs about partition level catalog updates |  Critical | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-9046](https://issues.apache.org/jira/browse/IMPALA-9046) | Profile counter that indicates if a process or JVM pause occurred |  Major | Backend | Tim Armstrong | Sahil Takiar |
| [IMPALA-10112](https://issues.apache.org/jira/browse/IMPALA-10112) | Consider skipping FpRateTooHigh() check for bloom filters |  Major | Backend | Tim Armstrong | Riza Suminto |
| [IMPALA-3335](https://issues.apache.org/jira/browse/IMPALA-3335) | Allow single-node optimization with joins. |  Minor | Frontend | Alexander Behm | Sahil Takiar |
| [IMPALA-10202](https://issues.apache.org/jira/browse/IMPALA-10202) | Enable file handle cache for ABFS files |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-9107](https://issues.apache.org/jira/browse/IMPALA-9107) | Reduce time spent downloading maven artifacts for precommit tests |  Major | Frontend, Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-9191](https://issues.apache.org/jira/browse/IMPALA-9191) | Provide a way to build Impala with only one of Sentry / Ranger |  Critical | Frontend | Joe McDonnell | Fang-Yu Rao |
| [IMPALA-10205](https://issues.apache.org/jira/browse/IMPALA-10205) | Avoid MD5 hash for data file path of IcebergTable |  Major | Frontend | Wenzhe Zhou | Wenzhe Zhou |
| [IMPALA-10207](https://issues.apache.org/jira/browse/IMPALA-10207) | Replace MD5 hash for lineage graph |  Major | Frontend | Wenzhe Zhou | Wenzhe Zhou |
| [IMPALA-10028](https://issues.apache.org/jira/browse/IMPALA-10028) | Additional optimizations of Impala docker container sizes |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-10164](https://issues.apache.org/jira/browse/IMPALA-10164) | Support HadoopCatalog for Iceberg table |  Minor | . | Sheng Wang | Sheng Wang |
| [IMPALA-8304](https://issues.apache.org/jira/browse/IMPALA-8304) | Generate JUnitXML symptom for compilation/CMake failures |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-10225](https://issues.apache.org/jira/browse/IMPALA-10225) | Bump Impyla version |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-9754](https://issues.apache.org/jira/browse/IMPALA-9754) | buffer\_pool\_limit error message is confusing |  Minor | Backend | Sahil Takiar | Qifan Chen |
| [IMPALA-10218](https://issues.apache.org/jira/browse/IMPALA-10218) | Remove dependency on the CDH\_BUILD\_NUMBER and associated maven repository |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-10198](https://issues.apache.org/jira/browse/IMPALA-10198) | Unify Java components into a single maven project |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-10226](https://issues.apache.org/jira/browse/IMPALA-10226) | Change buildall.sh -notests to invoke a single Make target |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-6628](https://issues.apache.org/jira/browse/IMPALA-6628) | Use unqualified table references in .test files run from test\_queries.py |  Major | Infrastructure | Alexander Behm | Qifan Chen |
| [IMPALA-10178](https://issues.apache.org/jira/browse/IMPALA-10178) | Run-time profile shall report skews |  Minor | . | Qifan Chen | Qifan Chen |
| [IMPALA-10266](https://issues.apache.org/jira/browse/IMPALA-10266) | Replace instanceof \*FileSystem with FS scheme checks |  Major | Frontend | Tim Armstrong | Riza Suminto |
| [IMPALA-10165](https://issues.apache.org/jira/browse/IMPALA-10165) | Support all partition transforms for Iceberg in create table |  Major | . | Zoltán Borók-Nagy | Gabor Kaszab |
| [IMPALA-10075](https://issues.apache.org/jira/browse/IMPALA-10075) | Reuse existing instances of unchanged partitions in REFRESH |  Critical | Catalog | Quanlong Huang | Quanlong Huang |
| [IMPALA-10206](https://issues.apache.org/jira/browse/IMPALA-10206) | Avoid MD5 Digest Authorization for debug Web Server in FIPS mode |  Major | Backend | Wenzhe Zhou | Wenzhe Zhou |
| [IMPALA-10007](https://issues.apache.org/jira/browse/IMPALA-10007) | Impala development environment does not support Ubuntu 20.4 |  Minor | Infrastructure | Qifan Chen | Qifan Chen |
| [IMPALA-4065](https://issues.apache.org/jira/browse/IMPALA-4065) | Inline comparator calls into TopN::InsertBatch() |  Minor | Backend | Tim Armstrong | Qifan Chen |
| [IMPALA-9864](https://issues.apache.org/jira/browse/IMPALA-9864) | Produce minidump when TestValidateMetrics.test\_metrics\_are\_zero() fails |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-9903](https://issues.apache.org/jira/browse/IMPALA-9903) | Queries on a Kudu table call openTable multiple times |  Major | Frontend | Grant Henke | Grant Henke |
| [IMPALA-10305](https://issues.apache.org/jira/browse/IMPALA-10305) | Sync kudu security code changes for FIPS |  Major | Backend | Wenzhe Zhou | Wenzhe Zhou |
| [IMPALA-9180](https://issues.apache.org/jira/browse/IMPALA-9180) | Remove legacy ImpalaInternalService |  Minor | Backend | Michael Ho | Wenzhe Zhou |
| [IMPALA-3816](https://issues.apache.org/jira/browse/IMPALA-3816) | Codegen perf-critical loops in Sorter |  Minor | Backend | Tim Armstrong | Qifan Chen |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-8852](https://issues.apache.org/jira/browse/IMPALA-8852) | ImpalaD fail to start on a non-datanode with "Invalid short-circuit reads configuration" |  Major | Backend | Adriano | Tamas Mate |
| [IMPALA-6267](https://issues.apache.org/jira/browse/IMPALA-6267) | MT Scanners do not check runtime filters per-file before processing each split |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9357](https://issues.apache.org/jira/browse/IMPALA-9357) | Fix race condition in alter\_database event |  Blocker | . | Fang-Yu Rao | Vihang Karajgaonkar |
| [IMPALA-9547](https://issues.apache.org/jira/browse/IMPALA-9547) | shell.test\_shell\_commandline.TestImpalaShell.test\_socket\_opening fails with "Interrupted system call" |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-9536](https://issues.apache.org/jira/browse/IMPALA-9536) | UdfExecutorTest.HiveStringsTest fails when using newer Hive |  Blocker | Frontend | Joe McDonnell |  |
| [IMPALA-9548](https://issues.apache.org/jira/browse/IMPALA-9548) | UdfExecutorTest failures after HIVE-22893 |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-9513](https://issues.apache.org/jira/browse/IMPALA-9513) | query\_test.test\_kudu.TestKuduOperations.test\_column\_storage\_attributes fails on exhaustive tests |  Blocker | . | Norbert Luksa | Joe McDonnell |
| [IMPALA-9560](https://issues.apache.org/jira/browse/IMPALA-9560) | Changing version from 3.4.0-SNAPSHOT to 3.4.0-RELEASE breaks TestStatsExtrapolation |  Critical | Frontend | Joe McDonnell | Joe McDonnell |
| [IMPALA-8533](https://issues.apache.org/jira/browse/IMPALA-8533) | Impala daemon crash on sort |  Blocker | Backend | Jacob Evan Beard | Kurt Deschler |
| [IMPALA-9075](https://issues.apache.org/jira/browse/IMPALA-9075) | Add support for reading zstd text files |  Critical | . | Andrew Sherman | Xiaomeng Zhang |
| [IMPALA-9549](https://issues.apache.org/jira/browse/IMPALA-9549) | Impalad startup fails to wait for catalogd to startup when using local catalog |  Critical | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-7138](https://issues.apache.org/jira/browse/IMPALA-7138) | Fix detection and handling of Device Mapper volumes |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9483](https://issues.apache.org/jira/browse/IMPALA-9483) | Add logs for debugging builtin functions throw unknown exception randomly |  Major | Frontend | Xiaomeng Zhang | Xiaomeng Zhang |
| [IMPALA-9571](https://issues.apache.org/jira/browse/IMPALA-9571) | Impala fails to start up due to exception from boost::filesystem::remove\_all() |  Blocker | Backend | Yongzhi Chen | Joe McDonnell |
| [IMPALA-9120](https://issues.apache.org/jira/browse/IMPALA-9120) | Refreshing an ABFS table with a deleted directory fails |  Critical | Catalog | Sahil Takiar | Sahil Takiar |
| [IMPALA-9350](https://issues.apache.org/jira/browse/IMPALA-9350) | Ranger audits for column masking not produced |  Critical | . | Quanlong Huang | Fang-Yu Rao |
| [IMPALA-9611](https://issues.apache.org/jira/browse/IMPALA-9611) | Hang in HandoffToProbesAndWait() for multithreaded join build |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9618](https://issues.apache.org/jira/browse/IMPALA-9618) | Usability issues with dev env setup. |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-8857](https://issues.apache.org/jira/browse/IMPALA-8857) | test\_kudu\_col\_not\_null\_changed may fail because client reads older timestamp |  Critical | Infrastructure | Tim Armstrong | Thomas Tauber-Marshall |
| [IMPALA-9612](https://issues.apache.org/jira/browse/IMPALA-9612) | Runtime filter wait longer than it should be |  Major | Backend | Riza Suminto | Riza Suminto |
| [IMPALA-9602](https://issues.apache.org/jira/browse/IMPALA-9602) | Local catalog cache treats db and table names as case-sensitive |  Major | Catalog, Frontend | Aman Sinha | Aman Sinha |
| [IMPALA-9620](https://issues.apache.org/jira/browse/IMPALA-9620) | Predicates in the SELECT and GROUP-BY cause failure with CNF rewrite enabled |  Major | Frontend | Aman Sinha | Aman Sinha |
| [IMPALA-9183](https://issues.apache.org/jira/browse/IMPALA-9183) | TPC-DS query 13 - customer\_address predicates not propagated to scan |  Major | Frontend | David Rorke | Aman Sinha |
| [IMPALA-8165](https://issues.apache.org/jira/browse/IMPALA-8165) | Planner does not push through predicates when there is a disjunction |  Major | Frontend | Greg Rahn | Aman Sinha |
| [IMPALA-9650](https://issues.apache.org/jira/browse/IMPALA-9650) | RuntimeFilterTest appears to be flaky |  Major | Backend | Thomas Tauber-Marshall | Riza Suminto |
| [IMPALA-9596](https://issues.apache.org/jira/browse/IMPALA-9596) | TestNestedTypesNoMtDop.test\_tpch\_mem\_limit\_single\_node failed |  Blocker | Infrastructure | Yongzhi Chen | Tim Armstrong |
| [IMPALA-9663](https://issues.apache.org/jira/browse/IMPALA-9663) | Insert overwrites should not throw NPE. |  Critical | . | Anurag Mantripragada | Anurag Mantripragada |
| [IMPALA-9665](https://issues.apache.org/jira/browse/IMPALA-9665) | Database not found errors in query\_test.test\_insert (TestInsertQueries) |  Critical | . | Andrew Sherman | Adam Tamas |
| [IMPALA-5308](https://issues.apache.org/jira/browse/IMPALA-5308) | SHOW TABLE STATS for Kudu tables is confusing |  Major | Frontend | Matthew Jacobs | Tamas Mate |
| [IMPALA-9681](https://issues.apache.org/jira/browse/IMPALA-9681) | LdapImpalaShellTest.testShellLdapAuth failed |  Critical | . | Andrew Sherman | Thomas Tauber-Marshall |
| [IMPALA-9653](https://issues.apache.org/jira/browse/IMPALA-9653) | Impala shouldn't create/remove staging directory during transactional INSERTs |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-9677](https://issues.apache.org/jira/browse/IMPALA-9677) | FE Analysis tests using fake S3 bucket fail with AnalysisException |  Blocker | Frontend | Joe McDonnell | Joe McDonnell |
| [IMPALA-9693](https://issues.apache.org/jira/browse/IMPALA-9693) | Predicate in the ORDER BY clause causes failure with cnf rewrite enabled |  Major | Frontend | Aman Sinha | Aman Sinha |
| [IMPALA-9701](https://issues.apache.org/jira/browse/IMPALA-9701) | data race detected in ConcurrentReaders test in TSAN build |  Blocker | Backend | Bikramjeet Vig | Tim Armstrong |
| [IMPALA-9097](https://issues.apache.org/jira/browse/IMPALA-9097) | Some backend tests fail if the Hive Metastore is not running |  Major | Frontend | Joe McDonnell | Joe McDonnell |
| [IMPALA-9685](https://issues.apache.org/jira/browse/IMPALA-9685) | Full-ACID support breaks in LocalCatalog mode |  Blocker | Catalog | Quanlong Huang | Quanlong Huang |
| [IMPALA-9539](https://issues.apache.org/jira/browse/IMPALA-9539) | Enable the conjunctive normal form rewrites by default |  Major | Frontend | Aman Sinha | Aman Sinha |
| [IMPALA-9649](https://issues.apache.org/jira/browse/IMPALA-9649) | Exclude shiro-crypto-core and shiro-core jars from maven download |  Major | Frontend | David Knupp | David Knupp |
| [IMPALA-9731](https://issues.apache.org/jira/browse/IMPALA-9731) | Remove USE\_CDP\_HIVE=false and associated code |  Major | Infrastructure | Joe McDonnell |  |
| [IMPALA-9735](https://issues.apache.org/jira/browse/IMPALA-9735) | Shell tests on Centos 7 failing in get\_python\_version\_for\_shell\_env |  Blocker | Clients | Joe McDonnell | Joe McDonnell |
| [IMPALA-9729](https://issues.apache.org/jira/browse/IMPALA-9729) | TestImpalaShell.test\_summary fails with Could not execute command: summary |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9736](https://issues.apache.org/jira/browse/IMPALA-9736) | "MT\_DOP not supported for plans with base table joins or table sinks" error is out of date |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9722](https://issues.apache.org/jira/browse/IMPALA-9722) | Consolidate unused total\_width and the way avg\_width is computed in PerColumnStats |  Major | Backend | Tamas Mate | Tamas Mate |
| [IMPALA-8908](https://issues.apache.org/jira/browse/IMPALA-8908) | Bad error message when failing to connect to HTTPS endpoint with shell |  Critical | Clients | Tim Armstrong | Tamas Mate |
| [IMPALA-9680](https://issues.apache.org/jira/browse/IMPALA-9680) | Compressed inserts failing |  Blocker | . | Andrew Sherman | Adam Tamas |
| [IMPALA-9714](https://issues.apache.org/jira/browse/IMPALA-9714) | SimpleLogger does not respect limits when there are high frequency appends |  Major | Backend | Joe McDonnell |  |
| [IMPALA-7833](https://issues.apache.org/jira/browse/IMPALA-7833) | Audit and fix other string builtins for long string handling |  Major | Backend | Tim Armstrong | Akos Kovacs |
| [IMPALA-9712](https://issues.apache.org/jira/browse/IMPALA-9712) | Hit OOM on TPC-H Q19 |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9725](https://issues.apache.org/jira/browse/IMPALA-9725) | LEFT ANTI JOIN produces wrong result when PHJ build spills |  Blocker | Backend | Xiaomin Zhang | Tim Armstrong |
| [IMPALA-9608](https://issues.apache.org/jira/browse/IMPALA-9608) | Multiple query tests failure due to org.apache.hadoop.hive.ql.exec.tez.TezTask execution error |  Blocker | Infrastructure | Alice Fan |  |
| [IMPALA-9534](https://issues.apache.org/jira/browse/IMPALA-9534) | Kudu show create table tests fail due to case difference for external.table.purge |  Blocker | Frontend | Joe McDonnell | Sahil Takiar |
| [IMPALA-9755](https://issues.apache.org/jira/browse/IMPALA-9755) | Flaky test: test\_global\_exchange\_counters |  Blocker | Infrastructure | Tim Armstrong | Sahil Takiar |
| [IMPALA-9708](https://issues.apache.org/jira/browse/IMPALA-9708) | Remove Sentry support |  Major | Backend, Frontend | Joe McDonnell | Joe McDonnell |
| [IMPALA-9669](https://issues.apache.org/jira/browse/IMPALA-9669) | loaded views are still returned as tables for GET\_TABLES in LocalCatalog mode |  Critical | Catalog | Quanlong Huang | Quanlong Huang |
| [IMPALA-9707](https://issues.apache.org/jira/browse/IMPALA-9707) | Parquet stat filtering issue when min/max values are cast to NULL |  Critical | Backend, Frontend | Csaba Ringhofer | Csaba Ringhofer |
| [IMPALA-9776](https://issues.apache.org/jira/browse/IMPALA-9776) | Fix test failure in add\_test\_dimensions |  Blocker | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-9775](https://issues.apache.org/jira/browse/IMPALA-9775) | Failure in TestAcid.test\_acid\_heartbeats |  Blocker | Backend, Frontend | Wenzhe Zhou | Wenzhe Zhou |
| [IMPALA-9751](https://issues.apache.org/jira/browse/IMPALA-9751) | TestHS2.test\_get\_exec\_summary is flaky |  Major | . | Zoltán Borók-Nagy | Tim Armstrong |
| [IMPALA-9787](https://issues.apache.org/jira/browse/IMPALA-9787) | Catalog spins on one core when memory-based invalidation is enabled |  Critical | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-9761](https://issues.apache.org/jira/browse/IMPALA-9761) | Fix GCC 7 compilation issue: Ambiguous else warning with gtest macros |  Minor | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-9415](https://issues.apache.org/jira/browse/IMPALA-9415) | DCHECK in ClientRequestState::FetchRowsInternal when using GCC7 with the new ABI |  Major | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-9686](https://issues.apache.org/jira/browse/IMPALA-9686) | Toolchain Python missing readline support |  Critical | Infrastructure | Laszlo Gaal | Laszlo Gaal |
| [IMPALA-9737](https://issues.apache.org/jira/browse/IMPALA-9737) | DCHECK in buffer-pool.cc - min\_bytes\_to\_write \<= dirty\_unpinned\_pages\_.bytes() |  Blocker | Backend | Sahil Takiar | Tim Armstrong |
| [IMPALA-9800](https://issues.apache.org/jira/browse/IMPALA-9800) | BE test parquet-plain-test crashes in ubsan test |  Blocker | . | Quanlong Huang | Joe McDonnell |
| [IMPALA-9743](https://issues.apache.org/jira/browse/IMPALA-9743) | IndexOutOfBoundsException in Analyze test when touching partitions of functional.alltypes |  Blocker | . | Gabor Kaszab | Quanlong Huang |
| [IMPALA-9762](https://issues.apache.org/jira/browse/IMPALA-9762) | Fix GCC7 compilation issue: shift-count-overflow in tuple-row-compare.cc |  Major | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-9749](https://issues.apache.org/jira/browse/IMPALA-9749) | ASAN builds should not run FE Tests |  Major | . | Anurag Mantripragada | Anurag Mantripragada |
| [IMPALA-9781](https://issues.apache.org/jira/browse/IMPALA-9781) | Fix GCC 7 runtime issue: Unaligned loads and stores for int128\_t types |  Major | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-9794](https://issues.apache.org/jira/browse/IMPALA-9794) | OutOfMemoryError when loading tpcds text data via Hive |  Blocker | Infrastructure | Quanlong Huang | Sahil Takiar |
| [IMPALA-9798](https://issues.apache.org/jira/browse/IMPALA-9798) | TestScratchDir.test\_multiple\_dirs fails to start impalad |  Critical | . | Quanlong Huang | Tim Armstrong |
| [IMPALA-9756](https://issues.apache.org/jira/browse/IMPALA-9756) | Queries are not guaranteed to be cancelled before unregistration |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9753](https://issues.apache.org/jira/browse/IMPALA-9753) | Possible bug in TRUNCATE of ACID tables on S3 |  Critical | Frontend | Csaba Ringhofer | Csaba Ringhofer |
| [IMPALA-8409](https://issues.apache.org/jira/browse/IMPALA-8409) | STRINGs without stats have too low row-size in explain plan |  Minor | Frontend | Csaba Ringhofer | Csaba Ringhofer |
| [IMPALA-9809](https://issues.apache.org/jira/browse/IMPALA-9809) | A query with multi-aggregation functions on  particular dataset crashes impala daemon |  Critical | Backend | Yongzhi Chen | Yongzhi Chen |
| [IMPALA-9820](https://issues.apache.org/jira/browse/IMPALA-9820) | Pull in DataSketches HLL MurmurHash fix |  Major | Backend | Gabor Kaszab | Gabor Kaszab |
| [IMPALA-9702](https://issues.apache.org/jira/browse/IMPALA-9702) | TestDdlStatements::test\_alter\_table() and TestMixedPartitions::test\_incompatible\_avro\_partition\_in\_non\_avro\_table() consistently fail on S3 |  Critical | . | Bikramjeet Vig | Joe McDonnell |
| [IMPALA-9782](https://issues.apache.org/jira/browse/IMPALA-9782) | KuduPartitionExpr is not thread-safe |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9760](https://issues.apache.org/jira/browse/IMPALA-9760) | Use different locations for native toolchain packages built with different compilers |  Minor | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-9835](https://issues.apache.org/jira/browse/IMPALA-9835) | Log spam about kudu\_scan\_token containing non-UTF-8 values |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-9673](https://issues.apache.org/jira/browse/IMPALA-9673) | Tests expecting results to be in test-warehouse/managed but find  test-warehouse |  Critical | . | Andrew Sherman | Xiaomeng Zhang |
| [IMPALA-9802](https://issues.apache.org/jira/browse/IMPALA-9802) | TestCompressedFormats.test\_compressed\_formats fails in HDFS copy |  Critical | . | Quanlong Huang | Xiaomeng Zhang |
| [IMPALA-9192](https://issues.apache.org/jira/browse/IMPALA-9192) | When build with USE\_CDP\_HIVE=true, Impala should use CDP Avro, Parquet, etc |  Critical | Infrastructure | Joe McDonnell | Laszlo Gaal |
| [IMPALA-9814](https://issues.apache.org/jira/browse/IMPALA-9814) | Analytic planner can under-parallelise with mt\_dop |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9830](https://issues.apache.org/jira/browse/IMPALA-9830) | TestMtDopScanNode.test\_mt\_dop\_scan\_node fails BytesRead \> 0 assert |  Blocker | Backend | Joe McDonnell | Bikramjeet Vig |
| [IMPALA-9840](https://issues.apache.org/jira/browse/IMPALA-9840) | ThreadSanitizer: data race internal-queue.h in InternalQueueBase::Enqueue |  Major | . | Sahil Takiar | Bikramjeet Vig |
| [IMPALA-9709](https://issues.apache.org/jira/browse/IMPALA-9709) | Remove Impala-lzo support |  Major | Backend, Frontend | Joe McDonnell | Joe McDonnell |
| [IMPALA-9804](https://issues.apache.org/jira/browse/IMPALA-9804) | Fix up LD\_LIBRARY\_PATH for bin/impala-shell.sh |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-9838](https://issues.apache.org/jira/browse/IMPALA-9838) | Switch to GCC 7.5.0 |  Major | Backend, Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-9837](https://issues.apache.org/jira/browse/IMPALA-9837) | Switch native-toolchain to use GCC 7.5.0 |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-9831](https://issues.apache.org/jira/browse/IMPALA-9831) | TestScannersFuzzing::test\_fuzz\_alltypes() hits DCHECK in parquet-page-reader.cc |  Critical | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-9842](https://issues.apache.org/jira/browse/IMPALA-9842) | TestValidateMetrics.test\_metrics\_are\_zero fails with num-fragments-in-flight not reaching zero |  Blocker | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-9862](https://issues.apache.org/jira/browse/IMPALA-9862) | Impala fails to start up due to ClassNotFoundException: SolrException |  Critical | Frontend | Joe McDonnell | Joe McDonnell |
| [IMPALA-9341](https://issues.apache.org/jira/browse/IMPALA-9341) | A grantee gains the delegation privilege after a revoke statement |  Major | Frontend | Fang-Yu Rao | Fang-Yu Rao |
| [IMPALA-8830](https://issues.apache.org/jira/browse/IMPALA-8830) | Coordinator-only queries get queued when there are no executor groups |  Blocker | Backend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-9115](https://issues.apache.org/jira/browse/IMPALA-9115) | "Exec at coord is" log spam |  Major | Backend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-9878](https://issues.apache.org/jira/browse/IMPALA-9878) | Use-after-free in tmp-file-mgr-test.cc |  Blocker | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-9871](https://issues.apache.org/jira/browse/IMPALA-9871) | Toolchain bootstrap download fails on SLES12 sp5 |  Blocker | Infrastructure | Laszlo Gaal | Laszlo Gaal |
| [IMPALA-9845](https://issues.apache.org/jira/browse/IMPALA-9845) | Ant had a new release, so bootstrap\_system.sh can't find the old one on Centos |  Major | Infrastructure | Laszlo Gaal | Laszlo Gaal |
| [IMPALA-9790](https://issues.apache.org/jira/browse/IMPALA-9790) | Dockerized daemons should set --hostname to the resolved IP |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-9907](https://issues.apache.org/jira/browse/IMPALA-9907) | NullPointerException in ParallelFileMetadataLoader's load() method |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-9911](https://issues.apache.org/jira/browse/IMPALA-9911) | IS [NOT] NULL predicate selectivity estimate is wrong if #nulls is 0 |  Major | Frontend | Aman Sinha | Aman Sinha |
| [IMPALA-9834](https://issues.apache.org/jira/browse/IMPALA-9834) | test\_query\_retries.TestQueryRetries is flaky on erasure coding configurations |  Blocker | Backend | Joe McDonnell | Sahil Takiar |
| [IMPALA-9940](https://issues.apache.org/jira/browse/IMPALA-9940) | Kudu util build is missing dependency on generated protobuf |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-9866](https://issues.apache.org/jira/browse/IMPALA-9866) | Query Plan in Debug UI Constantly Refreshes After Completion |  Major | . | Shant Hovsepian | Shant Hovsepian |
| [IMPALA-9949](https://issues.apache.org/jira/browse/IMPALA-9949) | Subqueries in select can result in rows not being returned |  Blocker | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-5534](https://issues.apache.org/jira/browse/IMPALA-5534) | Fix and re-enable run-process-failure-tests.sh |  Major | Infrastructure | Alexander Behm | Sahil Takiar |
| [IMPALA-9941](https://issues.apache.org/jira/browse/IMPALA-9941) | ExprTest.CastExprs fails when running with ASAN |  Blocker | Backend | Joe McDonnell | Adam Tamas |
| [IMPALA-9887](https://issues.apache.org/jira/browse/IMPALA-9887) | ASAN builds timeout frequently |  Blocker | . | Vihang Karajgaonkar | Joe McDonnell |
| [IMPALA-8926](https://issues.apache.org/jira/browse/IMPALA-8926) | TestResultSpooling::\_test\_full\_queue is flaky |  Critical | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-9889](https://issues.apache.org/jira/browse/IMPALA-9889) | test\_runtime\_filters flaky on Kudu table format |  Blocker | . | Vihang Karajgaonkar | Wenzhe Zhou |
| [IMPALA-9980](https://issues.apache.org/jira/browse/IMPALA-9980) | Remove jersey\* jars from exclusions. |  Critical | Frontend | Anurag Mantripragada | Anurag Mantripragada |
| [IMPALA-9964](https://issues.apache.org/jira/browse/IMPALA-9964) | CatalogServiceCatalog.setFileMetadataFromFS() doesn't fill insert/delete file descriptors |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-9953](https://issues.apache.org/jira/browse/IMPALA-9953) | Shell does not return all rows if a fetch times out in FINISHED state |  Blocker | Clients | Tim Armstrong | Sahil Takiar |
| [IMPALA-10006](https://issues.apache.org/jira/browse/IMPALA-10006) | Better handling of non-writable /opt/impala/logs in containers |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-5746](https://issues.apache.org/jira/browse/IMPALA-5746) | Remote fragments continue to hold onto memory after stopping the coordinator daemon |  Critical | Distributed Exec | Mostafa Mokhtar | Wenzhe Zhou |
| [IMPALA-10036](https://issues.apache.org/jira/browse/IMPALA-10036) | Admission control incorrectly rejecting query based on coordinator limit |  Major | Backend | David Rorke | Tim Armstrong |
| [IMPALA-10047](https://issues.apache.org/jira/browse/IMPALA-10047) | Performance regression on short queries due to IMPALA-6984 fix |  Blocker | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-10005](https://issues.apache.org/jira/browse/IMPALA-10005) | Impala can't read Snappy compressed text files on S3 or ABFS |  Blocker | Frontend | Joe McDonnell | Joe McDonnell |
| [IMPALA-10037](https://issues.apache.org/jira/browse/IMPALA-10037) | BytesRead check in TestMtDopScanNode.test\_mt\_dop\_scan\_node is flaky |  Critical | Backend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-10044](https://issues.apache.org/jira/browse/IMPALA-10044) | bin/bootstrap\_toolchain.py error handling can delete the toolchain directory |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-9851](https://issues.apache.org/jira/browse/IMPALA-9851) | Query status can be unbounded in size |  Minor | Backend | Tim Armstrong | Riza Suminto |
| [IMPALA-10077](https://issues.apache.org/jira/browse/IMPALA-10077) | test\_concurrent\_invalidate\_metadata timed out |  Major | . | Zoltán Borók-Nagy | Quanlong Huang |
| [IMPALA-9572](https://issues.apache.org/jira/browse/IMPALA-9572) | Impalad crash when process decimal value |  Blocker | Backend | Yongzhi Chen | Csaba Ringhofer |
| [IMPALA-10039](https://issues.apache.org/jira/browse/IMPALA-10039) | Expr-test crash in ExprTest.LiteralExprs during core run |  Blocker | . | Laszlo Gaal | Wenzhe Zhou |
| [IMPALA-4364](https://issues.apache.org/jira/browse/IMPALA-4364) | REFRESH does not pick up ALTER TABLE...PARTITION...SET LOCATION changes |  Major | Catalog | Jacob Evan Beard | Vihang Karajgaonkar |
| [IMPALA-9929](https://issues.apache.org/jira/browse/IMPALA-9929) | Unsupported subquery in select list throws IllegalStateException instead of AnalysisException |  Major | Frontend | Tim Armstrong | Shant Hovsepian |
| [IMPALA-9957](https://issues.apache.org/jira/browse/IMPALA-9957) | Impalad crashes when serializing large rows in aggregation spilling |  Critical | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-9955](https://issues.apache.org/jira/browse/IMPALA-9955) | Internal error for a query with large rows and spilling |  Major | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-8547](https://issues.apache.org/jira/browse/IMPALA-8547) | get\_json\_object fails to get value for numeric key |  Minor | Backend | Eugene Zimichev | Eugene Zimichev |
| [IMPALA-7782](https://issues.apache.org/jira/browse/IMPALA-7782) | discrepancy in results with a subquery containing an agg that produces an empty set |  Blocker | Frontend | Michael Brown | Tim Armstrong |
| [IMPALA-7779](https://issues.apache.org/jira/browse/IMPALA-7779) | Parquet Scanner can write binary data into profile |  Major | Backend | Lars Volker | Qifan Chen |
| [IMPALA-10080](https://issues.apache.org/jira/browse/IMPALA-10080) | Skip loading HDFS cache pools for non-HDFS file systems |  Major | Catalog | Quanlong Huang | Quanlong Huang |
| [IMPALA-10050](https://issues.apache.org/jira/browse/IMPALA-10050) | DCHECK was hit possibly while executing TestFailpoints::test\_failpoints |  Blocker | Backend | Attila Jeges | Wenzhe Zhou |
| [IMPALA-9858](https://issues.apache.org/jira/browse/IMPALA-9858) | Wrong partition hit/request metrics in profile of LocalCatalog |  Major | Catalog | Quanlong Huang | Quanlong Huang |
| [IMPALA-9535](https://issues.apache.org/jira/browse/IMPALA-9535) | Test for conversion from non-ACID to ACID fail on newer Hive |  Blocker | Frontend | Joe McDonnell |  |
| [IMPALA-10054](https://issues.apache.org/jira/browse/IMPALA-10054) | test\_multiple\_sort\_run\_bytes\_limits fails in parallel-all-tests-nightly |  Blocker | . | Attila Jeges | Riza Suminto |
| [IMPALA-10115](https://issues.apache.org/jira/browse/IMPALA-10115) | Impala should check file schema as well to check full ACIDv2 files |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-10094](https://issues.apache.org/jira/browse/IMPALA-10094) | TestResetMetadata.test\_refresh\_updated\_partitions fails due to connection error |  Major | . | Norbert Luksa | Vihang Karajgaonkar |
| [IMPALA-10087](https://issues.apache.org/jira/browse/IMPALA-10087) |  IMPALA-6050 causes alluxio not to be supported |  Major | Frontend | abeltian | abeltian |
| [IMPALA-10119](https://issues.apache.org/jira/browse/IMPALA-10119) | TestImpalaShellInteractive.test\_history\_does\_not\_duplicate\_on\_interrupt |  Critical | Infrastructure | Tim Armstrong | Tamas Mate |
| [IMPALA-10129](https://issues.apache.org/jira/browse/IMPALA-10129) | Data race in MemTracker::GetTopNQueriesAndUpdatePoolStats |  Major | Backend | Sahil Takiar | Qifan Chen |
| [IMPALA-10124](https://issues.apache.org/jira/browse/IMPALA-10124) | admission-controller-test fails with no such file or directory error |  Major | . | Yongzhi Chen | Qifan Chen |
| [IMPALA-10140](https://issues.apache.org/jira/browse/IMPALA-10140) | Throw CatalogException for query "create database if not exist" with sync\_ddl as true |  Critical | Catalog, Frontend | Wenzhe Zhou | Wenzhe Zhou |
| [IMPALA-10154](https://issues.apache.org/jira/browse/IMPALA-10154) | Data race on coord\_backend\_id |  Major | . | Sahil Takiar | Wenzhe Zhou |
| [IMPALA-10167](https://issues.apache.org/jira/browse/IMPALA-10167) | Docs Typo with DEFAULT\_TRANSACTIONAL\_TYPE |  Major | Docs | Shant Hovsepian | Shant Hovsepian |
| [IMPALA-10157](https://issues.apache.org/jira/browse/IMPALA-10157) | IllegalStateException when using grouping() or grouping\_id() with no GROUP BY clause |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9652](https://issues.apache.org/jira/browse/IMPALA-9652) | CTAS doesn't respect transactional properties |  Major | Frontend | Csaba Ringhofer | Zoltán Borók-Nagy |
| [IMPALA-10177](https://issues.apache.org/jira/browse/IMPALA-10177) | run-hive-jdbc.sh throws ClassNotFoundException exception. |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-10179](https://issues.apache.org/jira/browse/IMPALA-10179) | After inverting a join's inputs the join's parallelism does not get reset |  Major | Frontend | Aman Sinha | Aman Sinha |
| [IMPALA-9351](https://issues.apache.org/jira/browse/IMPALA-9351) | AnalyzeDDLTest.TestCreateTableLikeFileOrc failed due to non-existing path |  Blocker | Frontend | Fang-Yu Rao | Quanlong Huang |
| [IMPALA-10051](https://issues.apache.org/jira/browse/IMPALA-10051) | impala-shell exits with ValueError with WITH clauses |  Major | Clients | Tamas Mate | Tamas Mate |
| [IMPALA-10183](https://issues.apache.org/jira/browse/IMPALA-10183) | Hit promise DCHECK while looping result spooling tests |  Major | Backend | Tim Armstrong | Quanlong Huang |
| [IMPALA-8577](https://issues.apache.org/jira/browse/IMPALA-8577) | Crash during OpenSSLSocket.read |  Major | Backend | David Rorke | Sahil Takiar |
| [IMPALA-9664](https://issues.apache.org/jira/browse/IMPALA-9664) | Support Hive replication for ACID tables |  Critical | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-10024](https://issues.apache.org/jira/browse/IMPALA-10024) | CatalogServiceCatalog.isBlacklistedDb should do a case-insensitive comparison |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-10143](https://issues.apache.org/jira/browse/IMPALA-10143) | TestAcid.test\_full\_acid\_original\_files |  Major | Backend | Tamas Mate | Zoltán Borók-Nagy |
| [IMPALA-9606](https://issues.apache.org/jira/browse/IMPALA-9606) | ABFS reads should use hdfsPreadFully |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-2794](https://issues.apache.org/jira/browse/IMPALA-2794) | Exchange Inactive time in the averaged query profile is always zero |  Minor | Backend | Juan Yu | Tim Armstrong |
| [IMPALA-6147](https://issues.apache.org/jira/browse/IMPALA-6147) | Thrift profile includes counters not directly shown in text profile |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9952](https://issues.apache.org/jira/browse/IMPALA-9952) |  Invalid offset index in Parquet file |  Major | Backend | guojingfeng | Zoltán Borók-Nagy |
| [IMPALA-10193](https://issues.apache.org/jira/browse/IMPALA-10193) | Limit the memory usage of the whole mini-cluster |  Minor | Infrastructure | Fifteen | Fifteen |
| [IMPALA-10043](https://issues.apache.org/jira/browse/IMPALA-10043) | Keep all the logs when using EE\_TEST\_SHARDS \> 1 |  Critical | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-9815](https://issues.apache.org/jira/browse/IMPALA-9815) | Intermittent failure downloading org.apache.hive:hive-exec:jar:3.1.3000.xxxx during build |  Blocker | Frontend | Laszlo Gaal | Tim Armstrong |
| [IMPALA-9232](https://issues.apache.org/jira/browse/IMPALA-9232) | Potential overflow in SerializeThriftMsg |  Major | Backend | Tim Armstrong | Qifan Chen |
| [IMPALA-10233](https://issues.apache.org/jira/browse/IMPALA-10233) | Hit DCHECK in DmlExecState::AddPartition when inserting to a partitioned table with zorder |  Blocker | Backend | Quanlong Huang | Quanlong Huang |
| [IMPALA-10248](https://issues.apache.org/jira/browse/IMPALA-10248) | TestKuduOperations.test\_column\_storage\_attributes on exhaustive tests |  Blocker | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-10127](https://issues.apache.org/jira/browse/IMPALA-10127) | LIRS enforcement of tombstone limit has pathological performance scenarios |  Blocker | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-10062](https://issues.apache.org/jira/browse/IMPALA-10062) | TestCompressedNonText.test\_insensitivity\_to\_extension can fail due to wrong filename |  Critical | Frontend | Joe McDonnell |  |
| [IMPALA-10220](https://issues.apache.org/jira/browse/IMPALA-10220) | Min value of RpcNetworkTime can be negative |  Major | Distributed Exec | Riza Suminto | Riza Suminto |
| [IMPALA-10261](https://issues.apache.org/jira/browse/IMPALA-10261) | impala-minimal-hive-exec should include org/apache/hive/com/google/\*\* |  Critical | Frontend | Joe McDonnell | Joe McDonnell |
| [IMPALA-10255](https://issues.apache.org/jira/browse/IMPALA-10255) | query\_test.test\_insert.TestInsertQueries.test\_insert fails in exhaustive builds |  Blocker | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-10257](https://issues.apache.org/jira/browse/IMPALA-10257) | Hit DCHECK in HdfsParquetScanner::CheckPageFiltering in a CORE S3 build |  Critical | . | Quanlong Huang | Zoltán Borók-Nagy |
| [IMPALA-10096](https://issues.apache.org/jira/browse/IMPALA-10096) | May throw exception after expr rewritten , if the group by ordinal reference is still a numeric literal |  Minor | Frontend | Xianqing He | Xianqing He |
| [IMPALA-10092](https://issues.apache.org/jira/browse/IMPALA-10092) | Some tests in custom\_cluster/test\_kudu.py do not run even they are not explicitly disabled. |  Minor | Infrastructure | Fang-Yu Rao | Fang-Yu Rao |
| [IMPALA-10245](https://issues.apache.org/jira/browse/IMPALA-10245) | Test fails in TestKuduReadTokenSplit.test\_kudu\_scanner |  Critical | . | Quanlong Huang | Bikramjeet Vig |
| [IMPALA-10278](https://issues.apache.org/jira/browse/IMPALA-10278) | impalad\_executor Docker container fails to find JniUtil |  Blocker | Frontend | Joe McDonnell | Joe McDonnell |
| [IMPALA-10256](https://issues.apache.org/jira/browse/IMPALA-10256) | TestDisableFeatures.test\_disable\_incremental\_metadata\_updates fails |  Blocker | Catalog | Quanlong Huang | Quanlong Huang |
| [IMPALA-10277](https://issues.apache.org/jira/browse/IMPALA-10277) | TestDebugActions.test\_catalogd\_debug\_actions hits assert on s3 test run |  Critical | Frontend | Joe McDonnell | Vihang Karajgaonkar |
| [IMPALA-10304](https://issues.apache.org/jira/browse/IMPALA-10304) | Pytest logging is not using the expected INFO log level |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-10302](https://issues.apache.org/jira/browse/IMPALA-10302) | test\_scanners\_fuzz.py does not log the random seed |  Major | Infrastructure | Joe McDonnell | Joe McDonnell |
| [IMPALA-10303](https://issues.apache.org/jira/browse/IMPALA-10303) | Fix warnings from impala-shell with --quiet |  Major | Clients | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-10294](https://issues.apache.org/jira/browse/IMPALA-10294) | Improvement to test\_skew\_reporting\_in\_runtime\_profile |  Major | Backend | Qifan Chen | Qifan Chen |
| [IMPALA-10058](https://issues.apache.org/jira/browse/IMPALA-10058) | Kudu queries hit error "Unable to deserialize scan token" |  Blocker | Backend | Joe McDonnell | Joe McDonnell |
| [IMPALA-10299](https://issues.apache.org/jira/browse/IMPALA-10299) | Impala-shell hangs in printing partial UTF-8 characters |  Critical | Clients | Quanlong Huang | Quanlong Huang |
| [IMPALA-10145](https://issues.apache.org/jira/browse/IMPALA-10145) | UnicodeDecodeError in Thrift 0.11.0 generated files |  Major | . | Adam Tamas | Quanlong Huang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-9757](https://issues.apache.org/jira/browse/IMPALA-9757) | Test failures with HiveServer2Error: Invalid session id |  Critical | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-9902](https://issues.apache.org/jira/browse/IMPALA-9902) | Add rewrite of TPC-DS q38 |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-9374](https://issues.apache.org/jira/browse/IMPALA-9374) | Possible data race in TupleDescriptor::GetLlvmStruct |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-9426](https://issues.apache.org/jira/browse/IMPALA-9426) | Download Python dependencies even skipping bootstrap toolchain |  Major | . | zhaorenhai | zhaorenhai |
| [IMPALA-9373](https://issues.apache.org/jira/browse/IMPALA-9373) | Trial run of IWYU on codebase |  Major | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-9401](https://issues.apache.org/jira/browse/IMPALA-9401) | Add initial IWYU mappings |  Minor | Infrastructure | Tim Armstrong | Tim Armstrong |
| [IMPALA-9561](https://issues.apache.org/jira/browse/IMPALA-9561) | Change hadoop-ozone-filesystem dependency to hadoop-ozone-filesystem-lib-current |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-9568](https://issues.apache.org/jira/browse/IMPALA-9568) | Template tuples are initialized multiple times |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-9484](https://issues.apache.org/jira/browse/IMPALA-9484) | Milestone 1: properly scan files that has full ACID schema |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-4192](https://issues.apache.org/jira/browse/IMPALA-4192) | Pull all expressions in a fragment into QueryState |  Major | Backend | Michael Ho | Bikramjeet Vig |
| [IMPALA-9366](https://issues.apache.org/jira/browse/IMPALA-9366) | Remove embedded pointer references in handcrafted codegen code |  Major | . | Bikramjeet Vig | Bikramjeet Vig |
| [IMPALA-9543](https://issues.apache.org/jira/browse/IMPALA-9543) | Reduce duplicate code in thrift CMakeLists.txt |  Major | . | zhaorenhai | zhaorenhai |
| [IMPALA-9545](https://issues.apache.org/jira/browse/IMPALA-9545) | Decide cacheline size of aarch64 |  Major | . | zhaorenhai | zhaorenhai |
| [IMPALA-9565](https://issues.apache.org/jira/browse/IMPALA-9565) | Remove unused included file mm\_malloc.h on ARM |  Major | . | zhaorenhai | zhaorenhai |
| [IMPALA-9590](https://issues.apache.org/jira/browse/IMPALA-9590) | Resolve error when build tsan and ubsan on arm64 |  Major | . | zhaorenhai | zhaorenhai |
| [IMPALA-8632](https://issues.apache.org/jira/browse/IMPALA-8632) | Add support for self-event detection for insert events |  Critical | . | Vihang Karajgaonkar | Xiaomeng Zhang |
| [IMPALA-9428](https://issues.apache.org/jira/browse/IMPALA-9428) | Add arm64 atomic ops |  Major | . | zhaorenhai | zhaorenhai |
| [IMPALA-9626](https://issues.apache.org/jira/browse/IMPALA-9626) | Use Python 2.7 from toolchain |  Major | Infrastructure | Tim Armstrong | Laszlo Gaal |
| [IMPALA-9668](https://issues.apache.org/jira/browse/IMPALA-9668) | OSError: Cannot call rmtree on a symbolic link when creating python virtualenv |  Major | . | huangtianhua | Laszlo Gaal |
| [IMPALA-9720](https://issues.apache.org/jira/browse/IMPALA-9720) | Upgrade bitarray from 0.9.0 to 1.2.1 in Impala/shell/ext-py |  Major | Clients | David Knupp |  |
| [IMPALA-9380](https://issues.apache.org/jira/browse/IMPALA-9380) | Serialize query profile asynchronously |  Minor | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9719](https://issues.apache.org/jira/browse/IMPALA-9719) | Upgrade sasl-0.1.1 to 0.2.1 in Impala/shell/ext-py |  Major | Clients | David Knupp |  |
| [IMPALA-9585](https://issues.apache.org/jira/browse/IMPALA-9585) | Update docs about mt\_dop for IMPALA-9099 |  Major | Docs | Tim Armstrong | Tim Armstrong |
| [IMPALA-9199](https://issues.apache.org/jira/browse/IMPALA-9199) | Add support for single query retries on cluster membership changes |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-9730](https://issues.apache.org/jira/browse/IMPALA-9730) | TSAN data race in RuntimeFilterBank::CancelLocked() |  Major | . | Sahil Takiar | Tim Armstrong |
| [IMPALA-9512](https://issues.apache.org/jira/browse/IMPALA-9512) | Milestone 2: Validate each row against the valid write id list |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-9655](https://issues.apache.org/jira/browse/IMPALA-9655) | Dynamic intra-node load balancing for HDFS scans |  Major | Backend | Tim Armstrong | Bikramjeet Vig |
| [IMPALA-9752](https://issues.apache.org/jira/browse/IMPALA-9752) | Move instance profile operations to executors |  Major | Distributed Exec | Tim Armstrong | Tim Armstrong |
| [IMPALA-9847](https://issues.apache.org/jira/browse/IMPALA-9847) | JSON profiles are mostly space characters |  Major | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9844](https://issues.apache.org/jira/browse/IMPALA-9844) | Ozone support for load data inpath |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-2515](https://issues.apache.org/jira/browse/IMPALA-2515) | Impala rejects Parquet schemas where decimal fixed\_len\_byte\_array columns have unnecessary padding bytes |  Minor | Backend | Taras Bobrovytsky | Tim Armstrong |
| [IMPALA-7533](https://issues.apache.org/jira/browse/IMPALA-7533) | Optimize fetch-from-catalog by caching partitions across table versions |  Major | . | Todd Lipcon | Quanlong Huang |
| [IMPALA-9739](https://issues.apache.org/jira/browse/IMPALA-9739) | TSAN data races during impalad shutdown |  Major | Backend | Sahil Takiar | Bikramjeet Vig |
| [IMPALA-9849](https://issues.apache.org/jira/browse/IMPALA-9849) | Set halt\_on\_error=1 for TSAN builds |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-7538](https://issues.apache.org/jira/browse/IMPALA-7538) | Support HDFS caching with LocalCatalog |  Major | . | Todd Lipcon | Quanlong Huang |
| [IMPALA-9515](https://issues.apache.org/jira/browse/IMPALA-9515) | Milestone 3: Reading “original files” |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-9569](https://issues.apache.org/jira/browse/IMPALA-9569) | Query progress bar freezes when a query is retried |  Major | . | Sahil Takiar | Quanlong Huang |
| [IMPALA-9213](https://issues.apache.org/jira/browse/IMPALA-9213) | Client logs should indicate if a query has been retried |  Major | . | Sahil Takiar | Quanlong Huang |
| [IMPALA-9897](https://issues.apache.org/jira/browse/IMPALA-9897) | Parser support for ROLLUP, CUBE and GROUPING SETS |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9692](https://issues.apache.org/jira/browse/IMPALA-9692) | Model QuerySchedule as a protobuf |  Major | Distributed Exec | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-9854](https://issues.apache.org/jira/browse/IMPALA-9854) | TSAN data race in QueryDriver::CreateRetriedClientRequestState |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-9855](https://issues.apache.org/jira/browse/IMPALA-9855) | TSAN lock-order-inversion warning in QueryDriver::RetryQueryFromThread |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-8954](https://issues.apache.org/jira/browse/IMPALA-8954) | Support uncorrelated subqueries in the select list |  Critical | Frontend | Tim Armstrong | Shant Hovsepian |
| [IMPALA-9784](https://issues.apache.org/jira/browse/IMPALA-9784) | Support uncorrelated scalar subqueries in HAVING |  Major | . | Shant Hovsepian | Shant Hovsepian |
| [IMPALA-3380](https://issues.apache.org/jira/browse/IMPALA-3380) | Add TCP timeouts to all RPCs that don't block |  Minor | Distributed Exec | Henry Robinson | Sahil Takiar |
| [IMPALA-9924](https://issues.apache.org/jira/browse/IMPALA-9924) | Add support for single IN in disjunction |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-9898](https://issues.apache.org/jira/browse/IMPALA-9898) | Plan generation and execution for ROLLUP, CUBE and GROUPING SETS |  Major | Frontend | Tim Armstrong | Aman Sinha |
| [IMPALA-9917](https://issues.apache.org/jira/browse/IMPALA-9917) | Support grouping() and grouping\_id() functions |  Major | Frontend | Tim Armstrong | Tim Armstrong |
| [IMPALA-6788](https://issues.apache.org/jira/browse/IMPALA-6788) | Abort ExecFInstance() RPC loop early after query failure |  Major | Distributed Exec | Mostafa Mokhtar | Wenzhe Zhou |
| [IMPALA-6692](https://issues.apache.org/jira/browse/IMPALA-6692) | When partition exchange is followed by sort each sort node becomes a synchronization point across the cluster |  Critical | Backend, Distributed Exec | Mostafa Mokhtar | Riza Suminto |
| [IMPALA-10029](https://issues.apache.org/jira/browse/IMPALA-10029) | Strip debug symbols from libkudu\_client and libstdc++ binaries |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-9859](https://issues.apache.org/jira/browse/IMPALA-9859) | Milestone 4: Read updated tables |  Major | . | Zoltán Borók-Nagy | Zoltán Borók-Nagy |
| [IMPALA-9744](https://issues.apache.org/jira/browse/IMPALA-9744) | Treat corrupt table stats as missing to avoid bad plans |  Major | Frontend | Tim Armstrong | Qifan Chen |
| [IMPALA-4974](https://issues.apache.org/jira/browse/IMPALA-4974) | Add INTERSECT and EXCEPT support to SetOperationStmt |  Major | Frontend | Taras Bobrovytsky | Shant Hovsepian |
| [IMPALA-9943](https://issues.apache.org/jira/browse/IMPALA-9943) | Add INTERSECT and EXCEPT with DISTINCT Qualifier |  Major | . | Shant Hovsepian | Shant Hovsepian |
| [IMPALA-9225](https://issues.apache.org/jira/browse/IMPALA-9225) | Retryable queries should spool all results before returning any to the client |  Critical | . | Sahil Takiar | Quanlong Huang |
| [IMPALA-10073](https://issues.apache.org/jira/browse/IMPALA-10073) | Create shaded dependency for S3A and aws-java-sdk-bundle |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-10030](https://issues.apache.org/jira/browse/IMPALA-10030) | Remove unneeded jars from fe/pom.xml |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-10065](https://issues.apache.org/jira/browse/IMPALA-10065) | Hit DCHECK when retrying a query in FINISHED state |  Critical | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-9740](https://issues.apache.org/jira/browse/IMPALA-9740) | TSAN data race in hdfs-bulk-ops |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-9636](https://issues.apache.org/jira/browse/IMPALA-9636) | Retried queries that blacklist nodes should ensure they don't run on the blacklisted node |  Critical | . | Sahil Takiar | Wenzhe Zhou |
| [IMPALA-9229](https://issues.apache.org/jira/browse/IMPALA-9229) | Link failed and retried runtime profiles |  Critical | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-10170](https://issues.apache.org/jira/browse/IMPALA-10170) | Data race on Webserver::UrlHandler::is\_on\_nav\_bar\_ |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-8291](https://issues.apache.org/jira/browse/IMPALA-8291) | 'DESCRIBE EXTENDED ..' does not display constraint information |  Major | Frontend | Anurag Mantripragada | Shant Hovsepian |
| [IMPALA-10016](https://issues.apache.org/jira/browse/IMPALA-10016) | Split jars for Impala executor and coordinator Docker images |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-9741](https://issues.apache.org/jira/browse/IMPALA-9741) | Support query iceberg table by impala |  Major | . | Sheng Wang | Sheng Wang |
| [IMPALA-9485](https://issues.apache.org/jira/browse/IMPALA-9485) | Enable file handle cache for EC files |  Major | Backend | Sahil Takiar | Sahil Takiar |
| [IMPALA-10189](https://issues.apache.org/jira/browse/IMPALA-10189) | Avoid unnecessarily loading metadata for drop stats DDL |  Critical | Catalog | Tim Armstrong | Tim Armstrong |
| [IMPALA-9954](https://issues.apache.org/jira/browse/IMPALA-9954) | RpcRecvrTime can be negative |  Major | Backend | Sahil Takiar | Riza Suminto |
| [IMPALA-10219](https://issues.apache.org/jira/browse/IMPALA-10219) | Add a query option to simulate catalogd HDFS listing delays |  Minor | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [IMPALA-9870](https://issues.apache.org/jira/browse/IMPALA-9870) | summary and profile command in impala-shell should show both original and retried info |  Major | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-9604](https://issues.apache.org/jira/browse/IMPALA-9604) | Add tpch\_nested tests for column masking |  Major | . | Quanlong Huang | Quanlong Huang |
| [IMPALA-7097](https://issues.apache.org/jira/browse/IMPALA-7097) | Print EC info in the query plan and profile |  Minor | Frontend | Tianyi Wang | Qifan Chen |
| [IMPALA-10132](https://issues.apache.org/jira/browse/IMPALA-10132) | Implement ds\_hll\_estimate\_bounds() |  Major | . | Adam Tamas | Fucun Chu |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-9541](https://issues.apache.org/jira/browse/IMPALA-9541) | Document for dynamic log level changes |  Major | Docs | Quanlong Huang | shajini thayasingh |
| [IMPALA-5490](https://issues.apache.org/jira/browse/IMPALA-5490) | Upgrade to GCC 7.x or greater |  Minor | Infrastructure | Tim Armstrong | Joe McDonnell |
| [IMPALA-9817](https://issues.apache.org/jira/browse/IMPALA-9817) | Document flags of Fetch-on-demand metadata coordinators |  Critical | Docs | Quanlong Huang | shajini thayasingh |
| [IMPALA-7656](https://issues.apache.org/jira/browse/IMPALA-7656) | Remove all uses of GetCodegendComputeFnWrapper() |  Major | Backend | Tim Armstrong | Daniel Becker |
| [IMPALA-9647](https://issues.apache.org/jira/browse/IMPALA-9647) | Exclude or update fluent-hc jar |  Blocker | . | Abhishek Rawat | David Knupp |
| [IMPALA-9642](https://issues.apache.org/jira/browse/IMPALA-9642) | Set USE\_CDP\_HIVE to true by default |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-3741](https://issues.apache.org/jira/browse/IMPALA-3741) | Push bloom filters to Kudu scanners |  Major | Backend | Matthew Jacobs | Wenzhe Zhou |
| [IMPALA-3695](https://issues.apache.org/jira/browse/IMPALA-3695) | Remove KUDU\_IS\_SUPPORTED |  Critical | Infrastructure | Matthew Jacobs | Tim Armstrong |
| [IMPALA-9697](https://issues.apache.org/jira/browse/IMPALA-9697) | Support priority based scratch directory selection |  Major | . | Abhishek Rawat | Abhishek Rawat |
| [IMPALA-9829](https://issues.apache.org/jira/browse/IMPALA-9829) | Add write metrics for Spilling |  Major | Backend | Abhishek Rawat | Yida Wu |
| [IMPALA-1270](https://issues.apache.org/jira/browse/IMPALA-1270) | Consider adding distinct aggregation to subqueries as perf optimization |  Minor | Frontend | Nong Li | Tim Armstrong |
| [IMPALA-9987](https://issues.apache.org/jira/browse/IMPALA-9987) | Improve logging around HTTP connections |  Major | Backend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-9988](https://issues.apache.org/jira/browse/IMPALA-9988) | Integrate ldap filters and proxy users |  Major | Security | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-10053](https://issues.apache.org/jira/browse/IMPALA-10053) | Remove uses of MonoTime::GetDeltaSince() |  Major | . | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-9478](https://issues.apache.org/jira/browse/IMPALA-9478) | Runtime profiles should indicate if custom UDFs are being used |  Major | . | Sahil Takiar | Sahil Takiar |
| [IMPALA-10103](https://issues.apache.org/jira/browse/IMPALA-10103) | Jquery upgrade to 3.5.1 |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-10060](https://issues.apache.org/jira/browse/IMPALA-10060) | Postgres JDBC driver should be upgraded to 42.2.14 |  Major | . | Kevin Risden | Kevin Risden |
| [IMPALA-10010](https://issues.apache.org/jira/browse/IMPALA-10010) | Allow unathenticated access to some webui endpoints |  Major | Clients | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-10095](https://issues.apache.org/jira/browse/IMPALA-10095) | Include query plan tests for all of TPC-DS |  Major | . | Shant Hovsepian | Shant Hovsepian |
| [IMPALA-10034](https://issues.apache.org/jira/browse/IMPALA-10034) | Include all tpc-ds queries in tpcds testdata workload |  Major | . | Shant Hovsepian | Shant Hovsepian |
| [IMPALA-10074](https://issues.apache.org/jira/browse/IMPALA-10074) | Set impala-shell's default protocol to hs2 |  Major | Clients | Thomas Tauber-Marshall | Thomas Tauber-Marshall |
| [IMPALA-6861](https://issues.apache.org/jira/browse/IMPALA-6861) | Fix OpenSSL initialization |  Major | Distributed Exec | Sailesh Mukil | Thomas Tauber-Marshall |


