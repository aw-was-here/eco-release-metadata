
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
# Apache Hive Changelog

## Release 1.3.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-9365](https://issues.apache.org/jira/browse/HIVE-9365) | The Metastore should take port configuration from hive-site.xml |  Minor | . | Nicolas Thiébaud | Reuben Kuhnert |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10761](https://issues.apache.org/jira/browse/HIVE-10761) | Create codahale-based metrics system for Hive |  Major | Diagnosability | Szehon Ho | Szehon Ho |
| [HIVE-3404](https://issues.apache.org/jira/browse/HIVE-3404) | Create quarter UDF |  Major | UDF | Sanam Naz | Alexander Pivovarov |
| [HIVE-686](https://issues.apache.org/jira/browse/HIVE-686) | add UDF substring\_index |  Major | UDF | Namit Jain | Alexander Pivovarov |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10710](https://issues.apache.org/jira/browse/HIVE-10710) | Delete GenericUDF.getConstantLongValue |  Trivial | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10709](https://issues.apache.org/jira/browse/HIVE-10709) | Update Avro version to 1.7.7 |  Major | Serializers/Deserializers | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-10657](https://issues.apache.org/jira/browse/HIVE-10657) | Remove copyBytes operation from MD5 UDF |  Minor | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10644](https://issues.apache.org/jira/browse/HIVE-10644) | create SHA2 UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10641](https://issues.apache.org/jira/browse/HIVE-10641) | create CRC32 UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10639](https://issues.apache.org/jira/browse/HIVE-10639) | create SHA1 UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10555](https://issues.apache.org/jira/browse/HIVE-10555) | Improve windowing spec of range based windowing to support additional range formats |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10531](https://issues.apache.org/jira/browse/HIVE-10531) | Implement isClosed() to HiveQueryResultSet |  Minor | JDBC | Yun-young LEE | Yun-young LEE |
| [HIVE-8190](https://issues.apache.org/jira/browse/HIVE-8190) | LDAP user match for authentication on hiveserver2 |  Major | Authorization, Clients | LINTE | Naveen Gangam |
| [HIVE-2327](https://issues.apache.org/jira/browse/HIVE-2327) | Optimize REGEX UDFs with constant parameter information |  Major | UDF | Adam Kramer | Alexander Pivovarov |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-11157](https://issues.apache.org/jira/browse/HIVE-11157) | Hive.get(HiveConf) returns same Hive object to different user sessions |  Major | Hive | Chaoyu Tang | Chaoyu Tang |
| [HIVE-11150](https://issues.apache.org/jira/browse/HIVE-11150) | Remove wrong warning message related to chgrp |  Minor | Shims | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11147](https://issues.apache.org/jira/browse/HIVE-11147) | MetaTool doesn't update FS root location for partitions with space in name |  Major | Metastore | Wei Zheng | Wei Zheng |
| [HIVE-11140](https://issues.apache.org/jira/browse/HIVE-11140) | auto compute PROJ\_HOME in hcatalog/src/test/e2e/templeton/deployers/env.sh |  Major | Tests, WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-11119](https://issues.apache.org/jira/browse/HIVE-11119) | Spark reduce vectorization doesnt account for scratch columns |  Major | Spark, Vectorization | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11112](https://issues.apache.org/jira/browse/HIVE-11112) | ISO-8859-1 text output has fragments of previous longer rows appended |  Major | Serializers/Deserializers | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11102](https://issues.apache.org/jira/browse/HIVE-11102) | ReaderImpl: getColumnIndicesFromNames does not work for some cases |  Major | File Formats | Gopal V | Sergey Shelukhin |
| [HIVE-11100](https://issues.apache.org/jira/browse/HIVE-11100) | Beeline should escape semi-colon in queries |  Minor | Beeline | Chaoyu Tang | Chaoyu Tang |
| [HIVE-11095](https://issues.apache.org/jira/browse/HIVE-11095) | SerDeUtils  another bug ,when Text is reused |  Major | API, CLI | xiaowei wang | xiaowei wang |
| [HIVE-11051](https://issues.apache.org/jira/browse/HIVE-11051) | Hive 1.2.0  MapJoin w/Tez - LazyBinaryArray cannot be cast to [Ljava.lang.Object; |  Critical | Serializers/Deserializers, Tez | Greg Senia | Matt McCline |
| [HIVE-11042](https://issues.apache.org/jira/browse/HIVE-11042) | Need fix Utilities.replaceTaskId method |  Major | Query Processor | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11029](https://issues.apache.org/jira/browse/HIVE-11029) | hadoop.proxyuser.mapr.groups does not work to restrict the groups that can be impersonated |  Major | HiveServer2 | Na Yang | Na Yang |
| [HIVE-10976](https://issues.apache.org/jira/browse/HIVE-10976) | Redundant HiveMetaStore connect check in HS2 CLIService start |  Trivial | HiveServer2 | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10972](https://issues.apache.org/jira/browse/HIVE-10972) | DummyTxnManager always locks the current database in shared mode, which is incorrect. |  Major | Locking | Aihua Xu | Aihua Xu |
| [HIVE-10968](https://issues.apache.org/jira/browse/HIVE-10968) | Windows: analyze json table via beeline failed throwing Class org.apache.hive.hcatalog.data.JsonSerDe not found |  Major | HiveServer2 | Takahiko Saito | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10932](https://issues.apache.org/jira/browse/HIVE-10932) | Unit test udf\_nondeterministic failure due to HIVE-10728 |  Major | Tests | Aihua Xu | Aihua Xu |
| [HIVE-10929](https://issues.apache.org/jira/browse/HIVE-10929) | In Tez mode,dynamic partitioning query with union all fails at moveTask,Invalid partition key & values |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-10841](https://issues.apache.org/jira/browse/HIVE-10841) | [WHERE col is not null] does not work sometimes for queries with many JOIN statements |  Major | Query Planning, Query Processor | Alexander Pivovarov | Laljo John Pullokkaran |
| [HIVE-10835](https://issues.apache.org/jira/browse/HIVE-10835) | Concurrency issues in JDBC driver |  Major | JDBC | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10808](https://issues.apache.org/jira/browse/HIVE-10808) | Inner join on Null throwing Cast Exception |  Critical | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-10802](https://issues.apache.org/jira/browse/HIVE-10802) | Table join query with some constant field in select fails |  Major | Logical Optimizer, Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-10793](https://issues.apache.org/jira/browse/HIVE-10793) | Hybrid Hybrid Grace Hash Join : Don't allocate all hash table memory upfront |  Major | Hive | Mostafa Mokhtar | Mostafa Mokhtar |
| [HIVE-10788](https://issues.apache.org/jira/browse/HIVE-10788) | Change sort\_array to support non-primitive types |  Major | UDF | Chao Sun | Chao Sun |
| [HIVE-10787](https://issues.apache.org/jira/browse/HIVE-10787) | MatchPath misses the last matched row from the final result set |  Major | UDF | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [HIVE-10781](https://issues.apache.org/jira/browse/HIVE-10781) | HadoopJobExecHelper Leaks RunningJobs |  Major | Hive, HiveServer2 | Nemon Lou | Chinna Rao Lalam |
| [HIVE-10771](https://issues.apache.org/jira/browse/HIVE-10771) | "separatorChar" has no effect in "CREATE TABLE AS SELECT" statement |  Major | Query Planning | Yongzhi Chen | Yongzhi Chen |
| [HIVE-10736](https://issues.apache.org/jira/browse/HIVE-10736) | HiveServer2 shutdown of cached tez app-masters is not clean |  Major | HiveServer2 | Gopal V | Vikram Dixit K |
| [HIVE-10734](https://issues.apache.org/jira/browse/HIVE-10734) | Remove COLUMNS\_OLD table from a schema definition file of PostgreSQL |  Major | Metastore | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-10732](https://issues.apache.org/jira/browse/HIVE-10732) | Hive JDBC driver does not close operation for metadata queries |  Major | JDBC | Mala Chikka Kempanna | Chaoyu Tang |
| [HIVE-10731](https://issues.apache.org/jira/browse/HIVE-10731) | NullPointerException in HiveParser.g |  Minor | Query Planning | Xiu | Pengcheng Xiong |
| [HIVE-10707](https://issues.apache.org/jira/browse/HIVE-10707) | CBO: debug logging OOMs |  Trivial | CBO | Gopal V | Gopal V |
| [HIVE-10706](https://issues.apache.org/jira/browse/HIVE-10706) | Make vectorized\_timestamp\_funcs test more stable |  Minor | UDF, Vectorization | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10698](https://issues.apache.org/jira/browse/HIVE-10698) | query on view results fails with table not found error if view is created with subquery alias (CTE). |  Major | Query Planning | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-10671](https://issues.apache.org/jira/browse/HIVE-10671) | yarn-cluster mode offers a degraded performance from yarn-client [Spark Branch] |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-10665](https://issues.apache.org/jira/browse/HIVE-10665) | Continue to make udaf\_percentile\_approx\_23.q test more stable |  Minor | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10660](https://issues.apache.org/jira/browse/HIVE-10660) | Fix typo in Type.getType(TTypeId) exception message |  Trivial | JDBC | Keegan Witt | Keegan Witt |
| [HIVE-10655](https://issues.apache.org/jira/browse/HIVE-10655) | [PTest2] Propagate additionalProfiles flag to the source-prep.vm |  Major | Testing Infrastructure | Szehon Ho | Szehon Ho |
| [HIVE-10646](https://issues.apache.org/jira/browse/HIVE-10646) | ColumnValue does not handle NULL\_TYPE |  Major | Thrift API | Yongzhi Chen | Yongzhi Chen |
| [HIVE-10626](https://issues.apache.org/jira/browse/HIVE-10626) | Spark paln need to be updated [Spark Branch] |  Major | Spark | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-10609](https://issues.apache.org/jira/browse/HIVE-10609) | Vectorization : Q64 fails with ClassCastException |  Major | Vectorization | Mostafa Mokhtar | Matt McCline |
| [HIVE-10608](https://issues.apache.org/jira/browse/HIVE-10608) | Fix useless 'if' stamement in RetryingMetaStoreClient (135) |  Minor | Metastore | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10587](https://issues.apache.org/jira/browse/HIVE-10587) | ExprNodeColumnDesc should be created with isPartitionColOrVirtualCol true for DP column |  Minor | Query Processor | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10572](https://issues.apache.org/jira/browse/HIVE-10572) | Improve Hive service test to check empty string |  Major | HiveServer2 | Chao Sun | Chao Sun |
| [HIVE-10571](https://issues.apache.org/jira/browse/HIVE-10571) | HiveMetaStoreClient should close existing thrift connection before its reconnect |  Major | Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10559](https://issues.apache.org/jira/browse/HIVE-10559) | IndexOutOfBoundsException with RemoveDynamicPruningBySize |  Major | Tez | Wei Zheng | Wei Zheng |
| [HIVE-10548](https://issues.apache.org/jira/browse/HIVE-10548) | Remove dependency to s3 repository in root pom |  Major | Build Infrastructure | Szehon Ho | Chengxiang Li |
| [HIVE-10542](https://issues.apache.org/jira/browse/HIVE-10542) | Full outer joins in tez produce incorrect results in certain cases |  Blocker | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-10541](https://issues.apache.org/jira/browse/HIVE-10541) | Beeline requires newline at the end of each query in a file |  Minor | Beeline | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10538](https://issues.apache.org/jira/browse/HIVE-10538) | Fix NPE in FileSinkOperator from hashcode mismatch |  Critical | Query Processor | Peter Slawski | Peter Slawski |
| [HIVE-10521](https://issues.apache.org/jira/browse/HIVE-10521) | TxnHandler.timeOutTxns only times out some of the expired transactions |  Major | Transactions | Alan Gates | Alan Gates |
| [HIVE-10519](https://issues.apache.org/jira/browse/HIVE-10519) | Move TestGenericUDF classes to udf.generic package |  Trivial | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10483](https://issues.apache.org/jira/browse/HIVE-10483) | insert overwrite partition deadlocks on itself with DbTxnManager |  Major | Query Planning, Query Processor, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-10481](https://issues.apache.org/jira/browse/HIVE-10481) | ACID table update finishes but values not really updated if column names are not all lower case |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-10453](https://issues.apache.org/jira/browse/HIVE-10453) | HS2 leaking open file descriptors when using UDFs |  Major | UDF | Yongzhi Chen | Yongzhi Chen |
| [HIVE-10452](https://issues.apache.org/jira/browse/HIVE-10452) | Followup fix for HIVE-10202 to restrict it it for script mode. |  Minor | Beeline | Naveen Gangam | Naveen Gangam |
| [HIVE-10286](https://issues.apache.org/jira/browse/HIVE-10286) | SARGs: Type Safety via PredicateLeaf.type |  Major | File Formats, Serializers/Deserializers | Gopal V | Prasanth Jayachandran |
| [HIVE-10191](https://issues.apache.org/jira/browse/HIVE-10191) | ORC: Cleanup writer per-row synchronization |  Major | File Formats | Gopal V | Gopal V |
| [HIVE-10190](https://issues.apache.org/jira/browse/HIVE-10190) | CBO: AST mode checks for TABLESAMPLE with AST.toString().contains("TOK\_TABLESPLITSAMPLE") |  Trivial | CBO | Gopal V | Reuben Kuhnert |
| [HIVE-10151](https://issues.apache.org/jira/browse/HIVE-10151) | insert into A select from B is broken when both A and B are Acid tables and bucketed the same way |  Major | Query Planning, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-10140](https://issues.apache.org/jira/browse/HIVE-10140) | Window boundary is not compared correctly |  Minor | PTF-Windowing | Yi Zhang | Aihua Xu |
| [HIVE-10061](https://issues.apache.org/jira/browse/HIVE-10061) | HiveConf Should not be used as part of the HS2 client side code |  Major | HiveServer2, JDBC | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-9880](https://issues.apache.org/jira/browse/HIVE-9880) | Support configurable username attribute for HiveServer2 LDAP authentication |  Major | HiveServer2 | Jaime Murillo | Naveen Gangam |
| [HIVE-9625](https://issues.apache.org/jira/browse/HIVE-9625) | Delegation tokens for HMS are not renewed |  Major | HiveServer2 | Brock Noland | Brock Noland |
| [HIVE-9566](https://issues.apache.org/jira/browse/HIVE-9566) | HiveServer2 fails to start with NullPointerException |  Major | HiveServer2 | Na Yang | Na Yang |
| [HIVE-8529](https://issues.apache.org/jira/browse/HIVE-8529) | HiveSessionImpl#fetchResults should not try to fetch operation log when hive.server2.logging.operation.enabled is false. |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Yongzhi Chen |
| [HIVE-7180](https://issues.apache.org/jira/browse/HIVE-7180) | BufferedReader is not closed in MetaStoreSchemaInfo ctor |  Minor | Metastore | Ted Yu | Alexander Pivovarov |
| [HIVE-7150](https://issues.apache.org/jira/browse/HIVE-7150) | FileInputStream is not closed in HiveConnection#getHttpClient() |  Major | JDBC | Ted Yu | Alexander Pivovarov |
| [HIVE-6727](https://issues.apache.org/jira/browse/HIVE-6727) | Table level stats for external tables are set incorrectly |  Major | Statistics | Harish Butani | Bing Li |
| [HIVE-6026](https://issues.apache.org/jira/browse/HIVE-6026) | Ldap Authenticator should be more generic with BindDN |  Minor | Authentication | Johndee Burks | Naveen Gangam |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10878](https://issues.apache.org/jira/browse/HIVE-10878) | Add tests to cover avg() function for 'x preceding and y preceding' windowing spec. |  Trivial | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10864](https://issues.apache.org/jira/browse/HIVE-10864) | CBO (Calcite Return Path): auto\_join2.q returning wrong results |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-10834](https://issues.apache.org/jira/browse/HIVE-10834) | Support First\_value()/last\_value() over x preceding and y preceding windowing |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10826](https://issues.apache.org/jira/browse/HIVE-10826) | Support min()/max() functions over x preceding and y preceding windowing |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10825](https://issues.apache.org/jira/browse/HIVE-10825) | Add parquet branch profile to jenkins-submit-build.sh |  Minor | Testing Infrastructure | Sergio Peña | Sergio Peña |
| [HIVE-10800](https://issues.apache.org/jira/browse/HIVE-10800) | CBO (Calcite Return Path): Setup correct information if CBO succeeds |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-10752](https://issues.apache.org/jira/browse/HIVE-10752) | Revert HIVE-5193 |  Major | HCatalog | Aihua Xu | Aihua Xu |
| [HIVE-10702](https://issues.apache.org/jira/browse/HIVE-10702) | COUNT(\*) over windowing 'x preceding and y preceding' doesn't work properly |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10643](https://issues.apache.org/jira/browse/HIVE-10643) | Refactoring Windowing for sum() to pass WindowFrameDef instead of two numbers (1 for number of preceding and 1 for number of following) |  Minor | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10565](https://issues.apache.org/jira/browse/HIVE-10565) | LLAP: Native Vector Map Join doesn't handle filtering and matching on LEFT OUTER JOIN repeated key correctly |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-10550](https://issues.apache.org/jira/browse/HIVE-10550) | Dynamic RDD caching optimization for HoS.[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-10527](https://issues.apache.org/jira/browse/HIVE-10527) | NPE in SparkUtilities::isDedicatedCluster [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-10520](https://issues.apache.org/jira/browse/HIVE-10520) | LLAP: Must reset small table result columns for Native Vectorization of Map Join |  Blocker | Vectorization | Matt McCline | Matt McCline |
| [HIVE-10476](https://issues.apache.org/jira/browse/HIVE-10476) | Hive query should fail when it fails to initialize a session in SetSparkReducerParallelism [Spark Branch] |  Minor | Spark | Chao Sun | Chao Sun |
| [HIVE-10458](https://issues.apache.org/jira/browse/HIVE-10458) | Enable parallel order by for spark [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-10434](https://issues.apache.org/jira/browse/HIVE-10434) | Cancel connection when remote Spark driver process has failed [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-10235](https://issues.apache.org/jira/browse/HIVE-10235) | Loop optimization for SIMD in ColumnDivideColumn.txt |  Minor | Vectorization | Chengxiang Li | Chengxiang Li |
| [HIVE-8858](https://issues.apache.org/jira/browse/HIVE-8858) | Visualize generated Spark plan [Spark Branch] |  Major | Spark | Xuefu Zhang | Chinna Rao Lalam |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10427](https://issues.apache.org/jira/browse/HIVE-10427) | collect\_list() and collect\_set() should accept struct types as argument |  Major | UDF | Alexander Behm | Chao Sun |
| [HIVE-10870](https://issues.apache.org/jira/browse/HIVE-10870) | Merge Spark branch to trunk 5/29/2015 |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-10868](https://issues.apache.org/jira/browse/HIVE-10868) | Update release note for 1.2.0 and 1.1.0 |  Major | Documentation | Xuefu Zhang | Xuefu Zhang |
| [HIVE-10485](https://issues.apache.org/jira/browse/HIVE-10485) | Create md5 UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |


