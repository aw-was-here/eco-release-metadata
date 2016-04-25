
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

## Release 1.3.0 - Unreleased (as of 2016-04-25)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-9365](https://issues.apache.org/jira/browse/HIVE-9365) | The Metastore should take port configuration from hive-site.xml |  Minor | . | Nicolas Thiébaud | Reuben Kuhnert |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-3404](https://issues.apache.org/jira/browse/HIVE-3404) | Create quarter UDF |  Major | UDF | Sanam Naz | Alexander Pivovarov |
| [HIVE-10592](https://issues.apache.org/jira/browse/HIVE-10592) | ORC file dump in JSON format |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-10591](https://issues.apache.org/jira/browse/HIVE-10591) | Support limited integer type promotion in ORC |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-686](https://issues.apache.org/jira/browse/HIVE-686) | add UDF substring\_index |  Major | UDF | Namit Jain | Alexander Pivovarov |
| [HIVE-10761](https://issues.apache.org/jira/browse/HIVE-10761) | Create codahale-based metrics system for Hive |  Major | Diagnosability | Szehon Ho | Szehon Ho |
| [HIVE-10673](https://issues.apache.org/jira/browse/HIVE-10673) | Dynamically partitioned hash join for Tez |  Major | Query Planning, Query Processor | Jason Dere | Jason Dere |
| [HIVE-11103](https://issues.apache.org/jira/browse/HIVE-11103) | Add banker's rounding BROUND UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-11593](https://issues.apache.org/jira/browse/HIVE-11593) | Add aes\_encrypt and aes\_decrypt UDFs |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10302](https://issues.apache.org/jira/browse/HIVE-10302) | Load small tables (for map join) in executor memory only once [Spark Branch] |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10403](https://issues.apache.org/jira/browse/HIVE-10403) | Add n-way join support for Hybrid Grace Hash Join |  Major | . | Wei Zheng | Wei Zheng |
| [HIVE-10239](https://issues.apache.org/jira/browse/HIVE-10239) | Create scripts to do metastore upgrade tests on jenkins for Derby and PostgreSQL |  Major | . | Naveen Gangam | Naveen Gangam |
| [HIVE-10657](https://issues.apache.org/jira/browse/HIVE-10657) | Remove copyBytes operation from MD5 UDF |  Minor | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10639](https://issues.apache.org/jira/browse/HIVE-10639) | create SHA1 UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10641](https://issues.apache.org/jira/browse/HIVE-10641) | create CRC32 UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10531](https://issues.apache.org/jira/browse/HIVE-10531) | Implement isClosed() to HiveQueryResultSet |  Minor | JDBC | Yun-young LEE | Yun-young LEE |
| [HIVE-2327](https://issues.apache.org/jira/browse/HIVE-2327) | Optimize REGEX UDFs with constant parameter information |  Major | UDF | Adam Kramer | Alexander Pivovarov |
| [HIVE-10644](https://issues.apache.org/jira/browse/HIVE-10644) | create SHA2 UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10709](https://issues.apache.org/jira/browse/HIVE-10709) | Update Avro version to 1.7.7 |  Major | Serializers/Deserializers | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-10710](https://issues.apache.org/jira/browse/HIVE-10710) | Delete GenericUDF.getConstantLongValue |  Trivial | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10555](https://issues.apache.org/jira/browse/HIVE-10555) | Improve windowing spec of range based windowing to support additional range formats |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10748](https://issues.apache.org/jira/browse/HIVE-10748) | Replace StringBuffer with StringBuilder where possible |  Minor | . | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-8190](https://issues.apache.org/jira/browse/HIVE-8190) | LDAP user match for authentication on hiveserver2 |  Major | Authorization, Clients | LINTE | Naveen Gangam |
| [HIVE-11139](https://issues.apache.org/jira/browse/HIVE-11139) | Emit more lineage information |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11179](https://issues.apache.org/jira/browse/HIVE-11179) | HIVE should allow custom converting from HivePrivilegeObjectDesc to privilegeObject for different authorizers |  Major | . | Dapeng Sun | Dapeng Sun |
| [HIVE-11182](https://issues.apache.org/jira/browse/HIVE-11182) | Enable optimized hash tables for spark [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-11240](https://issues.apache.org/jira/browse/HIVE-11240) | Change value type from int to long for HiveConf.ConfVars.METASTORESERVERMAXMESSAGESIZE |  Major | Metastore | Xuefu Zhang | Ferdinand Xu |
| [HIVE-11136](https://issues.apache.org/jira/browse/HIVE-11136) | Unused Logger in org.apache.hadoop.hive.ql.udf.generic.GenericUDAFCount |  Trivial | Logging | Nishant Kelkar | Yongzhi Chen |
| [HIVE-11262](https://issues.apache.org/jira/browse/HIVE-11262) | Skip MapJoin processing if the join hash table is empty |  Major | Query Processor | Jason Dere | Jason Dere |
| [HIVE-10319](https://issues.apache.org/jira/browse/HIVE-10319) | Hive CLI startup takes a long time with a large number of databases |  Major | CLI | Nezih Yigitbasi | Nezih Yigitbasi |
| [HIVE-11496](https://issues.apache.org/jira/browse/HIVE-11496) | Better tests for evaluating ORC predicate pushdown |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11457](https://issues.apache.org/jira/browse/HIVE-11457) | Vectorization: Improve SIMD JIT in GenVectorCode StringExpr instrinsics |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-11442](https://issues.apache.org/jira/browse/HIVE-11442) | Remove commons-configuration.jar from Hive distribution |  Major | Build Infrastructure | Daniel Dai | Daniel Dai |
| [HIVE-11534](https://issues.apache.org/jira/browse/HIVE-11534) | Improve validateTableCols error message |  Minor | Hive | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8583](https://issues.apache.org/jira/browse/HIVE-8583) | HIVE-8341 Cleanup & Test for hive.script.operator.env.blacklist |  Minor | . | Lars Francke | Lars Francke |
| [HIVE-11513](https://issues.apache.org/jira/browse/HIVE-11513) | AvroLazyObjectInspector could handle empty data better |  Major | . | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-11366](https://issues.apache.org/jira/browse/HIVE-11366) | Avoid right leaning tree hashCode depth during ExprNodeDescEqualityWrapper HashMaps |  Major | Logical Optimizer | Gopal V | Gopal V |
| [HIVE-11638](https://issues.apache.org/jira/browse/HIVE-11638) | ExprNodeDesc hashMap accidentally degrades into O(N) instead of O(1) |  Major | Logical Optimizer | Gopal V | Gopal V |
| [HIVE-11627](https://issues.apache.org/jira/browse/HIVE-11627) | Reduce the number of accesses to hashmaps in PPD |  Major | Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11659](https://issues.apache.org/jira/browse/HIVE-11659) | Make Vectorization use the fast StringExpr everywhere |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-11329](https://issues.apache.org/jira/browse/HIVE-11329) | Column prefix in key of hbase column prefix map |  Minor | HBase Handler | Wojciech Indyk | Wojciech Indyk |
| [HIVE-11780](https://issues.apache.org/jira/browse/HIVE-11780) | Add "set role none" support |  Major | Authorization | Dapeng Sun | Dapeng Sun |
| [HIVE-11544](https://issues.apache.org/jira/browse/HIVE-11544) | LazyInteger should avoid throwing NumberFormatException |  Minor | Serializers/Deserializers | William Slacum | Gopal V |
| [HIVE-11814](https://issues.apache.org/jira/browse/HIVE-11814) | Emit query time in lineage info |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-6758](https://issues.apache.org/jira/browse/HIVE-6758) | Beeline doesn't work with -e option when started in background |  Major | CLI | Johndee Burks | Mohit Sabharwal |
| [HIVE-11512](https://issues.apache.org/jira/browse/HIVE-11512) | Hive LDAP Authenticator should also support full DN in Authenticate() |  Minor | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-11724](https://issues.apache.org/jira/browse/HIVE-11724) | WebHcat get jobs to order jobs on time order with latest at top |  Major | WebHCat | Kiran Kumar Kolli | Kiran Kumar Kolli |
| [HIVE-11984](https://issues.apache.org/jira/browse/HIVE-11984) | Add HS2 open operation metrics |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11720](https://issues.apache.org/jira/browse/HIVE-11720) | Allow HiveServer2 to set custom http request/response header size |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-11882](https://issues.apache.org/jira/browse/HIVE-11882) | Fetch optimizer should stop source files traversal once it exceeds the hive.fetch.task.conversion.threshold |  Major | Physical Optimizer | Illya Yalovyy | Illya Yalovyy |
| [HIVE-11807](https://issues.apache.org/jira/browse/HIVE-11807) | Set ORC buffer size in relation to set stripe size |  Major | File Formats | Owen O'Malley | Owen O'Malley |
| [HIVE-12265](https://issues.apache.org/jira/browse/HIVE-12265) | Generate lineage info only if requested |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12317](https://issues.apache.org/jira/browse/HIVE-12317) | Emit current database in lineage info |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12713](https://issues.apache.org/jira/browse/HIVE-12713) | Miscellaneous improvements in driver compile and execute logging |  Minor | Logging | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10115](https://issues.apache.org/jira/browse/HIVE-10115) | HS2 running on a Kerberized cluster should offer Kerberos(GSSAPI) and Delegation token(DIGEST) when alternate authentication is enabled |  Major | Authentication | Mubashir Kazia | Mubashir Kazia |
| [HIVE-10468](https://issues.apache.org/jira/browse/HIVE-10468) | Create scripts to do metastore upgrade tests on jenkins for Oracle DB. |  Major | Metastore | Naveen Gangam | Naveen Gangam |
| [HIVE-13063](https://issues.apache.org/jira/browse/HIVE-13063) | Create UDFs for CHR and REPLACE |  Major | HiveServer2 | Alejandro Fernandez | Alejandro Fernandez |
| [HIVE-13222](https://issues.apache.org/jira/browse/HIVE-13222) | Move rc-file-v0.rc used on TestRCFile.java to src/test/resources |  Minor | . | Sergio Peña | Sergio Peña |
| [HIVE-12439](https://issues.apache.org/jira/browse/HIVE-12439) | CompactionTxnHandler.markCleaned() and TxnHandler.openTxns() misc improvements |  Major | Metastore, Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-10249](https://issues.apache.org/jira/browse/HIVE-10249) | ACID: show locks should show who the lock is waiting for |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13429](https://issues.apache.org/jira/browse/HIVE-13429) | Tool to remove dangling scratch dir |  Major | . | Daniel Dai | Daniel Dai |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10370](https://issues.apache.org/jira/browse/HIVE-10370) | Hive does not compile with -Phadoop-1 option |  Critical | . | Hari Sankar Sivarama Subramaniyan | Prasanth Jayachandran |
| [HIVE-10431](https://issues.apache.org/jira/browse/HIVE-10431) | HIVE-9555 broke hadoop-1 build |  Major | . | Prasanth Jayachandran | Sergey Shelukhin |
| [HIVE-10443](https://issues.apache.org/jira/browse/HIVE-10443) | HIVE-9870 broke hadoop-1 build |  Major | . | Prasanth Jayachandran | Vaibhav Gumashta |
| [HIVE-10473](https://issues.apache.org/jira/browse/HIVE-10473) | Spark client is recreated even spark configuration is not changed |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10442](https://issues.apache.org/jira/browse/HIVE-10442) | HIVE-10098 broke hadoop-1 build |  Major | . | Prasanth Jayachandran | Yongzhi Chen |
| [HIVE-10509](https://issues.apache.org/jira/browse/HIVE-10509) | Bump trunk version to 1.3 as branch-1.2 has been created. |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-10450](https://issues.apache.org/jira/browse/HIVE-10450) | More than one TableScan in MapWork not supported in Vectorization -- causes  query to fail during vectorization |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-10481](https://issues.apache.org/jira/browse/HIVE-10481) | ACID table update finishes but values not really updated if column names are not all lower case |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-10483](https://issues.apache.org/jira/browse/HIVE-10483) | insert overwrite partition deadlocks on itself with DbTxnManager |  Major | Query Planning, Query Processor, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-10529](https://issues.apache.org/jira/browse/HIVE-10529) | Remove references to tez task context before storing operator plan in object cache |  Critical | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-10151](https://issues.apache.org/jira/browse/HIVE-10151) | insert into A select from B is broken when both A and B are Acid tables and bucketed the same way |  Major | Query Planning, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-10286](https://issues.apache.org/jira/browse/HIVE-10286) | SARGs: Type Safety via PredicateLeaf.type |  Major | File Formats, Serializers/Deserializers | Gopal V | Prasanth Jayachandran |
| [HIVE-10444](https://issues.apache.org/jira/browse/HIVE-10444) | HIVE-10223 breaks hadoop-1 build |  Major | . | Prasanth Jayachandran | Chris Nauroth |
| [HIVE-10456](https://issues.apache.org/jira/browse/HIVE-10456) | Grace Hash Join should not load spilled partitions on abort |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-10541](https://issues.apache.org/jira/browse/HIVE-10541) | Beeline requires newline at the end of each query in a file |  Minor | Beeline | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10452](https://issues.apache.org/jira/browse/HIVE-10452) | Followup fix for HIVE-10202 to restrict it it for script mode. |  Minor | Beeline | Naveen Gangam | Naveen Gangam |
| [HIVE-10572](https://issues.apache.org/jira/browse/HIVE-10572) | Improve Hive service test to check empty string |  Major | HiveServer2 | Chao Sun | Chao Sun |
| [HIVE-10571](https://issues.apache.org/jira/browse/HIVE-10571) | HiveMetaStoreClient should close existing thrift connection before its reconnect |  Major | Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10061](https://issues.apache.org/jira/browse/HIVE-10061) | HiveConf Should not be used as part of the HS2 client side code |  Major | HiveServer2, JDBC | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10423](https://issues.apache.org/jira/browse/HIVE-10423) | HIVE-7948 breaks deploy\_e2e\_artifacts.sh |  Major | . | Eugene Koifman | Aswathy Chellammal Sreekumar |
| [HIVE-10519](https://issues.apache.org/jira/browse/HIVE-10519) | Move TestGenericUDF classes to udf.generic package |  Trivial | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10140](https://issues.apache.org/jira/browse/HIVE-10140) | Window boundary is not compared correctly |  Minor | PTF-Windowing | Yi Zhang | Aihua Xu |
| [HIVE-10587](https://issues.apache.org/jira/browse/HIVE-10587) | ExprNodeColumnDesc should be created with isPartitionColOrVirtualCol true for DP column |  Minor | Query Processor | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10308](https://issues.apache.org/jira/browse/HIVE-10308) | Vectorization execution throws java.lang.IllegalArgumentException: Unsupported complex type: MAP |  Major | Vectorization | Selina Zhang | Matt McCline |
| [HIVE-10521](https://issues.apache.org/jira/browse/HIVE-10521) | TxnHandler.timeOutTxns only times out some of the expired transactions |  Major | Transactions | Alan Gates | Alan Gates |
| [HIVE-10542](https://issues.apache.org/jira/browse/HIVE-10542) | Full outer joins in tez produce incorrect results in certain cases |  Blocker | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-10608](https://issues.apache.org/jira/browse/HIVE-10608) | Fix useless 'if' stamement in RetryingMetaStoreClient (135) |  Minor | Metastore | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10620](https://issues.apache.org/jira/browse/HIVE-10620) | ZooKeeperHiveLock overrides equal() method but not hashcode() |  Major | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10538](https://issues.apache.org/jira/browse/HIVE-10538) | Fix NPE in FileSinkOperator from hashcode mismatch |  Critical | Query Processor | Peter Slawski | Peter Slawski |
| [HIVE-10626](https://issues.apache.org/jira/browse/HIVE-10626) | Spark paln need to be updated [Spark Branch] |  Major | Spark | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-10646](https://issues.apache.org/jira/browse/HIVE-10646) | ColumnValue does not handle NULL\_TYPE |  Major | Thrift API | Yongzhi Chen | Yongzhi Chen |
| [HIVE-10655](https://issues.apache.org/jira/browse/HIVE-10655) | [PTest2] Propagate additionalProfiles flag to the source-prep.vm |  Major | Testing Infrastructure | Szehon Ho | Szehon Ho |
| [HIVE-10651](https://issues.apache.org/jira/browse/HIVE-10651) | ORC file footer cache should be bounded |  Minor | . | Mostafa Mokhtar | Prasanth Jayachandran |
| [HIVE-10609](https://issues.apache.org/jira/browse/HIVE-10609) | Vectorization : Q64 fails with ClassCastException |  Major | Vectorization | Mostafa Mokhtar | Matt McCline |
| [HIVE-10548](https://issues.apache.org/jira/browse/HIVE-10548) | Remove dependency to s3 repository in root pom |  Major | Build Infrastructure | Szehon Ho | Chengxiang Li |
| [HIVE-10671](https://issues.apache.org/jira/browse/HIVE-10671) | yarn-cluster mode offers a degraded performance from yarn-client [Spark Branch] |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-10559](https://issues.apache.org/jira/browse/HIVE-10559) | IndexOutOfBoundsException with RemoveDynamicPruningBySize |  Major | Tez | Wei Zheng | Wei Zheng |
| [HIVE-10714](https://issues.apache.org/jira/browse/HIVE-10714) | Bloom filter column names specification should be case insensitive |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-10670](https://issues.apache.org/jira/browse/HIVE-10670) | Duplicate declaration of curator-recipes at pom.xml |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10726](https://issues.apache.org/jira/browse/HIVE-10726) | Hive JDBC setQueryTimeout should not throw exception to make it work with JMeter |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-10190](https://issues.apache.org/jira/browse/HIVE-10190) | CBO: AST mode checks for TABLESAMPLE with AST.toString().contains("TOK\_TABLESPLITSAMPLE") |  Trivial | CBO | Gopal V | Reuben Kuhnert |
| [HIVE-10721](https://issues.apache.org/jira/browse/HIVE-10721) | SparkSessionManagerImpl leaks SparkSessions [Spark Branch] |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9974](https://issues.apache.org/jira/browse/HIVE-9974) | Sensitive data redaction: data appears in name of mapreduce job |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-10569](https://issues.apache.org/jira/browse/HIVE-10569) | Hive CLI gets stuck when hive.exec.parallel=true; and some exception happens during SessionState.start |  Critical | . | Rohit Agarwal | Rohit Agarwal |
| [HIVE-10665](https://issues.apache.org/jira/browse/HIVE-10665) | Continue to make udaf\_percentile\_approx\_23.q test more stable |  Minor | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10706](https://issues.apache.org/jira/browse/HIVE-10706) | Make vectorized\_timestamp\_funcs test more stable |  Minor | UDF, Vectorization | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10734](https://issues.apache.org/jira/browse/HIVE-10734) | Remove COLUMNS\_OLD table from a schema definition file of PostgreSQL |  Major | Metastore | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-8529](https://issues.apache.org/jira/browse/HIVE-8529) | HiveSessionImpl#fetchResults should not try to fetch operation log when hive.server2.logging.operation.enabled is false. |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Yongzhi Chen |
| [HIVE-10732](https://issues.apache.org/jira/browse/HIVE-10732) | Hive JDBC driver does not close operation for metadata queries |  Major | JDBC | Mala Chikka Kempanna | Chaoyu Tang |
| [HIVE-10757](https://issues.apache.org/jira/browse/HIVE-10757) | Explain query plan should have operation name EXPLAIN |  Trivial | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10781](https://issues.apache.org/jira/browse/HIVE-10781) | HadoopJobExecHelper Leaks RunningJobs |  Major | Hive, HiveServer2 | Nemon Lou | Chinna Rao Lalam |
| [HIVE-10771](https://issues.apache.org/jira/browse/HIVE-10771) | "separatorChar" has no effect in "CREATE TABLE AS SELECT" statement |  Major | Query Planning | Yongzhi Chen | Yongzhi Chen |
| [HIVE-10731](https://issues.apache.org/jira/browse/HIVE-10731) | NullPointerException in HiveParser.g |  Minor | Query Planning | Xiu (Joe) Guo | Pengcheng Xiong |
| [HIVE-10787](https://issues.apache.org/jira/browse/HIVE-10787) | MatchPath misses the last matched row from the final result set |  Major | UDF | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [HIVE-10722](https://issues.apache.org/jira/browse/HIVE-10722) | external table creation with msck in Hive can create unusable partition |  Critical | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-10788](https://issues.apache.org/jira/browse/HIVE-10788) | Change sort\_array to support non-primitive types |  Major | UDF | Chao Sun | Chao Sun |
| [HIVE-10835](https://issues.apache.org/jira/browse/HIVE-10835) | Concurrency issues in JDBC driver |  Major | JDBC | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10802](https://issues.apache.org/jira/browse/HIVE-10802) | Table join query with some constant field in select fails |  Major | Logical Optimizer, Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-10698](https://issues.apache.org/jira/browse/HIVE-10698) | query on view results fails with table not found error if view is created with subquery alias (CTE). |  Major | Query Planning | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-10808](https://issues.apache.org/jira/browse/HIVE-10808) | Inner join on Null throwing Cast Exception |  Critical | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-10660](https://issues.apache.org/jira/browse/HIVE-10660) | Fix typo in Type.getType(TTypeId) exception message |  Trivial | JDBC | Keegan Witt | Keegan Witt |
| [HIVE-6727](https://issues.apache.org/jira/browse/HIVE-6727) | Table level stats for external tables are set incorrectly |  Major | Statistics | Harish Butani | Bing Li |
| [HIVE-10728](https://issues.apache.org/jira/browse/HIVE-10728) | deprecate unix\_timestamp(void) and make it deterministic |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-10887](https://issues.apache.org/jira/browse/HIVE-10887) | TestCliDriver tests ordering issues with Mac and CentOS |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10705](https://issues.apache.org/jira/browse/HIVE-10705) | Update tests for HIVE-9302 after removing binaries |  Major | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-10919](https://issues.apache.org/jira/browse/HIVE-10919) | Windows: create table with JsonSerDe failed via beeline unless you add hcatalog core jar to classpath |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-9069](https://issues.apache.org/jira/browse/HIVE-9069) | Simplify filter predicates for CBO |  Major | CBO | Mostafa Mokhtar | Jesus Camacho Rodriguez |
| [HIVE-10932](https://issues.apache.org/jira/browse/HIVE-10932) | Unit test udf\_nondeterministic failure due to HIVE-10728 |  Major | Tests | Aihua Xu | Aihua Xu |
| [HIVE-10736](https://issues.apache.org/jira/browse/HIVE-10736) | HiveServer2 shutdown of cached tez app-masters is not clean |  Major | HiveServer2 | Gopal V | Vikram Dixit K |
| [HIVE-10929](https://issues.apache.org/jira/browse/HIVE-10929) | In Tez mode,dynamic partitioning query with union all fails at moveTask,Invalid partition key & values |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-10816](https://issues.apache.org/jira/browse/HIVE-10816) | NPE in ExecDriver::handleSampling when submitted via child JVM |  Major | . | Rui Li | Rui Li |
| [HIVE-6991](https://issues.apache.org/jira/browse/HIVE-6991) | History not able to disable/enable after session started |  Major | . | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-10415](https://issues.apache.org/jira/browse/HIVE-10415) | hive.start.cleanup.scratchdir configuration is not taking effect |  Major | . | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-10949](https://issues.apache.org/jira/browse/HIVE-10949) | Disable hive-minikdc tests in Windows |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10956](https://issues.apache.org/jira/browse/HIVE-10956) | HS2 leaks HMS connections |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10976](https://issues.apache.org/jira/browse/HIVE-10976) | Redundant HiveMetaStore connect check in HS2 CLIService start |  Trivial | HiveServer2 | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10977](https://issues.apache.org/jira/browse/HIVE-10977) | No need to instantiate MetaStoreDirectSql when HMS DirectSql is disabled |  Minor | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10944](https://issues.apache.org/jira/browse/HIVE-10944) | Fix HS2 for Metrics |  Major | . | Szehon Ho | Szehon Ho |
| [HIVE-10968](https://issues.apache.org/jira/browse/HIVE-10968) | Windows: analyze json table via beeline failed throwing Class org.apache.hive.hcatalog.data.JsonSerDe not found |  Major | HiveServer2 | Takahiko Saito | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10841](https://issues.apache.org/jira/browse/HIVE-10841) | [WHERE col is not null] does not work sometimes for queries with many JOIN statements |  Major | Query Planning, Query Processor | Alexander Pivovarov | Laljo John Pullokkaran |
| [HIVE-7018](https://issues.apache.org/jira/browse/HIVE-7018) | Table and Partition tables have column LINK\_TARGET\_ID in Mysql scripts but not others |  Major | . | Brock Noland | Yongzhi Chen |
| [HIVE-10972](https://issues.apache.org/jira/browse/HIVE-10972) | DummyTxnManager always locks the current database in shared mode, which is incorrect. |  Major | Locking | Aihua Xu | Aihua Xu |
| [HIVE-11042](https://issues.apache.org/jira/browse/HIVE-11042) | Need fix Utilities.replaceTaskId method |  Major | Query Processor | Yongzhi Chen | Yongzhi Chen |
| [HIVE-10453](https://issues.apache.org/jira/browse/HIVE-10453) | HS2 leaking open file descriptors when using UDFs |  Major | UDF | Yongzhi Chen | Yongzhi Chen |
| [HIVE-10707](https://issues.apache.org/jira/browse/HIVE-10707) | CBO: debug logging OOMs |  Trivial | CBO | Gopal V | Gopal V |
| [HIVE-7193](https://issues.apache.org/jira/browse/HIVE-7193) | Hive should support additional LDAP authentication parameters |  Major | . | Mala Chikka Kempanna | Naveen Gangam |
| [HIVE-6026](https://issues.apache.org/jira/browse/HIVE-6026) | Ldap Authenticator should be more generic with BindDN |  Minor | Authentication | Johndee Burks | Naveen Gangam |
| [HIVE-11109](https://issues.apache.org/jira/browse/HIVE-11109) | Replication factor is not properly set in SparkHashTableSinkOperator [Spark Branch] |  Trivial | Spark | Rui Li | Rui Li |
| [HIVE-11119](https://issues.apache.org/jira/browse/HIVE-11119) | Spark reduce vectorization doesnt account for scratch columns |  Major | Spark, Vectorization | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11104](https://issues.apache.org/jira/browse/HIVE-11104) | Select operator doesn't propagate constants appearing in expressions |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11118](https://issues.apache.org/jira/browse/HIVE-11118) | Load data query should validate file formats with destination tables |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11073](https://issues.apache.org/jira/browse/HIVE-11073) | ORC FileDump utility ignores errors when writing output |  Minor | Hive | Elliot West | Elliot West |
| [HIVE-9625](https://issues.apache.org/jira/browse/HIVE-9625) | Delegation tokens for HMS are not renewed |  Major | HiveServer2 | Brock Noland | Brock Noland |
| [HIVE-7150](https://issues.apache.org/jira/browse/HIVE-7150) | FileInputStream is not closed in HiveConnection#getHttpClient() |  Major | JDBC | Ted Yu | Alexander Pivovarov |
| [HIVE-7180](https://issues.apache.org/jira/browse/HIVE-7180) | BufferedReader is not closed in MetaStoreSchemaInfo ctor |  Minor | Metastore | Ted Yu | Alexander Pivovarov |
| [HIVE-11112](https://issues.apache.org/jira/browse/HIVE-11112) | ISO-8859-1 text output has fragments of previous longer rows appended |  Major | Serializers/Deserializers | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11029](https://issues.apache.org/jira/browse/HIVE-11029) | hadoop.proxyuser.mapr.groups does not work to restrict the groups that can be impersonated |  Major | HiveServer2 | Na Yang | Na Yang |
| [HIVE-9566](https://issues.apache.org/jira/browse/HIVE-9566) | HiveServer2 fails to start with NullPointerException |  Major | HiveServer2 | Na Yang | Na Yang |
| [HIVE-11095](https://issues.apache.org/jira/browse/HIVE-11095) | SerDeUtils  another bug ,when Text is reused |  Major | API, CLI | Xiaowei Wang | Xiaowei Wang |
| [HIVE-11100](https://issues.apache.org/jira/browse/HIVE-11100) | Beeline should escape semi-colon in queries |  Minor | Beeline | Chaoyu Tang | Chaoyu Tang |
| [HIVE-11140](https://issues.apache.org/jira/browse/HIVE-11140) | auto compute PROJ\_HOME in hcatalog/src/test/e2e/templeton/deployers/env.sh |  Major | Tests, WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-11147](https://issues.apache.org/jira/browse/HIVE-11147) | MetaTool doesn't update FS root location for partitions with space in name |  Major | Metastore | Wei Zheng | Wei Zheng |
| [HIVE-11102](https://issues.apache.org/jira/browse/HIVE-11102) | ReaderImpl: getColumnIndicesFromNames does not work for some cases |  Major | File Formats | Gopal V | Sergey Shelukhin |
| [HIVE-11157](https://issues.apache.org/jira/browse/HIVE-11157) | Hive.get(HiveConf) returns same Hive object to different user sessions |  Major | Hive | Chaoyu Tang | Chaoyu Tang |
| [HIVE-11150](https://issues.apache.org/jira/browse/HIVE-11150) | Remove wrong warning message related to chgrp |  Minor | Shims | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11122](https://issues.apache.org/jira/browse/HIVE-11122) | ORC should not record the timezone information when there are no timestamp columns |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11051](https://issues.apache.org/jira/browse/HIVE-11051) | Hive 1.2.0  MapJoin w/Tez - LazyBinaryArray cannot be cast to [Ljava.lang.Object; |  Critical | Serializers/Deserializers, Tez | Greg Senia | Matt McCline |
| [HIVE-10191](https://issues.apache.org/jira/browse/HIVE-10191) | ORC: Cleanup writer per-row synchronization |  Major | File Formats | Gopal V | Gopal V |
| [HIVE-11054](https://issues.apache.org/jira/browse/HIVE-11054) | Read error : Partition Varchar column cannot be cast to string |  Major | Vectorization | Devansh Srivastava | Gopal V |
| [HIVE-11171](https://issues.apache.org/jira/browse/HIVE-11171) | Join reordering algorithm might introduce projects between joins |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11184](https://issues.apache.org/jira/browse/HIVE-11184) | Lineage - ExprProcFactory#getExprString may throw NullPointerException |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10233](https://issues.apache.org/jira/browse/HIVE-10233) | Hive on tez: memory manager for grace hash join |  Major | Tez | Vikram Dixit K | Gunther Hagleitner |
| [HIVE-11203](https://issues.apache.org/jira/browse/HIVE-11203) | Beeline force option doesn't force execution when errors occurred in a script. |  Major | Beeline | Ferdinand Xu | Ferdinand Xu |
| [HIVE-11164](https://issues.apache.org/jira/browse/HIVE-11164) | WebHCat should log contents of HiveConf on startup |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-10895](https://issues.apache.org/jira/browse/HIVE-10895) | ObjectStore does not close Query objects in some calls, causing a potential leak in some metastore db resources |  Major | Metastore | Takahiko Saito | Aihua Xu |
| [HIVE-11198](https://issues.apache.org/jira/browse/HIVE-11198) | Fix load data query file format check for partitioned tables |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11221](https://issues.apache.org/jira/browse/HIVE-11221) | In Tez mode, alter table concatenate orc files can intermittently fail with NPE |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11190](https://issues.apache.org/jira/browse/HIVE-11190) | No prompting info or warning provided when METASTORE\_FILTER\_HOOK in authorization V2 is overridden |  Major | . | Dapeng Sun | Dapeng Sun |
| [HIVE-11194](https://issues.apache.org/jira/browse/HIVE-11194) | Exchange partition on external tables should fail with error message when target folder already exists |  Major | Hive | Aihua Xu | Aihua Xu |
| [HIVE-11129](https://issues.apache.org/jira/browse/HIVE-11129) | Issue a warning when copied from UTF-8 to ISO 8859-1 |  Major | File Formats | Aihua Xu | Aihua Xu |
| [HIVE-11224](https://issues.apache.org/jira/browse/HIVE-11224) | AggregateStatsCache triggers java.util.ConcurrentModificationException under some conditions |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11215](https://issues.apache.org/jira/browse/HIVE-11215) | Vectorized grace hash-join throws FileUtil warnings |  Minor | Vectorization | Gopal V | Gopal V |
| [HIVE-11024](https://issues.apache.org/jira/browse/HIVE-11024) | Error inserting a date value via parameter marker (PreparedStatement.setDate) |  Major | Hive | Sergio Lob | Yongzhi Chen |
| [HIVE-11216](https://issues.apache.org/jira/browse/HIVE-11216) | UDF GenericUDFMapKeys throws NPE when a null map value is passed in |  Major | UDF | Yibing Shi | Yibing Shi |
| [HIVE-11255](https://issues.apache.org/jira/browse/HIVE-11255) | get\_table\_objects\_by\_name() in HiveMetaStore.java needs to retrieve table objects in multiple batches |  Major | Database/Schema | Aihua Xu | Aihua Xu |
| [HIVE-11172](https://issues.apache.org/jira/browse/HIVE-11172) | Vectorization wrong results for aggregate query with where clause without group by |  Critical | Hive | Yi Zhang | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11320](https://issues.apache.org/jira/browse/HIVE-11320) | ACID enable predicate pushdown for insert-only delta file |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-11303](https://issues.apache.org/jira/browse/HIVE-11303) | Getting Tez LimitExceededException after dag execution on large query |  Major | Tez | Jason Dere | Jason Dere |
| [HIVE-11301](https://issues.apache.org/jira/browse/HIVE-11301) | thrift metastore issue when getting stats results in disconnect |  Major | Metastore | Sergey Shelukhin | Pengcheng Xiong |
| [HIVE-11344](https://issues.apache.org/jira/browse/HIVE-11344) | HIVE-9845 makes HCatSplit.write modify the split so that PartInfo objects are unusable after it |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-11271](https://issues.apache.org/jira/browse/HIVE-11271) | java.lang.IndexOutOfBoundsException when union all with if function |  Major | Logical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11196](https://issues.apache.org/jira/browse/HIVE-11196) | Utilities.getPartitionDesc() should try to reuse TableDesc object |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11288](https://issues.apache.org/jira/browse/HIVE-11288) | Avro SerDe InstanceCache returns incorrect schema |  Major | Serializers/Deserializers | Greg Phillips | Greg Phillips |
| [HIVE-11143](https://issues.apache.org/jira/browse/HIVE-11143) | Tests udf\_from\_utc\_timestamp.q/udf\_to\_utc\_timestamp.q do not work with updated Java timezone information |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-11404](https://issues.apache.org/jira/browse/HIVE-11404) | branch-1 does not compile |  Major | . | Jason Dere | Jason Dere |
| [HIVE-11330](https://issues.apache.org/jira/browse/HIVE-11330) | Add early termination for recursion in StatsRulesProcFactory$FilterStatsRule.evaluateExpression |  Major | Hive, Physical Optimizer | Mostafa Mokhtar | Mostafa Mokhtar |
| [HIVE-11214](https://issues.apache.org/jira/browse/HIVE-11214) | Insert into ACID table switches vectorization off |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-11258](https://issues.apache.org/jira/browse/HIVE-11258) | The function drop\_database\_core() of HiveMetaStore.java may not drop all the tables |  Major | Database/Schema | Aihua Xu | Aihua Xu |
| [HIVE-11380](https://issues.apache.org/jira/browse/HIVE-11380) | NPE when FileSinkOperator is not initialized |  Major | Query Processor | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11316](https://issues.apache.org/jira/browse/HIVE-11316) | Use datastructure that doesnt duplicate any part of string for ASTNode::toStringTree() |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11426](https://issues.apache.org/jira/browse/HIVE-11426) | lineage3.q fails with -Phadoop-1 |  Minor | Test | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11185](https://issues.apache.org/jira/browse/HIVE-11185) | Fix compustat\_avro.q/load\_dyn\_part14\_win.q for Windows |  Major | Tests, Windows | Jason Dere | Jason Dere |
| [HIVE-11434](https://issues.apache.org/jira/browse/HIVE-11434) | Followup for HIVE-10166: reuse existing configurations for prewarming Spark executors |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-11430](https://issues.apache.org/jira/browse/HIVE-11430) | Followup HIVE-10166: investigate and fix the two test failures |  Major | Test | Xuefu Zhang | Xuefu Zhang |
| [HIVE-11406](https://issues.apache.org/jira/browse/HIVE-11406) | Vectorization: StringExpr::compare() == 0 is bad for performance |  Major | Vectorization | Gopal V | Matt McCline |
| [HIVE-11407](https://issues.apache.org/jira/browse/HIVE-11407) | JDBC DatabaseMetaData.getTables with large no of tables call leads to HS2 OOM |  Major | HiveServer2 | Thejas M Nair | Sushanth Sowmyan |
| [HIVE-11433](https://issues.apache.org/jira/browse/HIVE-11433) | NPE for a multiple inner join query |  Major | Query Processor | Xuefu Zhang | Xuefu Zhang |
| [HIVE-11456](https://issues.apache.org/jira/browse/HIVE-11456) | HCatStorer should honor mapreduce.output.basename |  Critical | . | Rohini Palaniswamy | Mithun Radhakrishnan |
| [HIVE-11319](https://issues.apache.org/jira/browse/HIVE-11319) | CTAS with location qualifier overwrites directories |  Major | Parser, Security | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11250](https://issues.apache.org/jira/browse/HIVE-11250) | Change in spark.executor.instances (and others) doesn't take effect after RSC is launched for HS2 [Spark Brnach] |  Major | Spark | Xuefu Zhang | Jimmy Xiang |
| [HIVE-11087](https://issues.apache.org/jira/browse/HIVE-11087) | DbTxnManager exceptions should include txnid |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-11432](https://issues.apache.org/jira/browse/HIVE-11432) | Hive macro give same result for different arguments |  Major | . | Jay Pandya | Pengcheng Xiong |
| [HIVE-11476](https://issues.apache.org/jira/browse/HIVE-11476) | TypeInfoParser cannot handle column names with spaces in them |  Minor | Types | Gopal V | Gopal V |
| [HIVE-10880](https://issues.apache.org/jira/browse/HIVE-10880) | The bucket number is not respected in insert overwrite. |  Critical | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-7476](https://issues.apache.org/jira/browse/HIVE-7476) | CTAS does not work properly for s3 |  Major | . | Jian Fang | Szehon Ho |
| [HIVE-11428](https://issues.apache.org/jira/browse/HIVE-11428) | Performance: Struct IN() clauses are extremely slow (~10x slower) |  Major | Query Processor | Gopal V | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11448](https://issues.apache.org/jira/browse/HIVE-11448) | Support vectorization of Multi-OR and Multi-AND |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-11397](https://issues.apache.org/jira/browse/HIVE-11397) | Parse Hive OR clauses as they are written into the AST |  Major | Logical Optimizer | Gopal V | Jesus Camacho Rodriguez |
| [HIVE-11405](https://issues.apache.org/jira/browse/HIVE-11405) | Add early termination for recursion in StatsRulesProcFactory$FilterStatsRule.evaluateExpression  for OR expression |  Major | . | Hari Sankar Sivarama Subramaniyan | Prasanth Jayachandran |
| [HIVE-11498](https://issues.apache.org/jira/browse/HIVE-11498) | HIVE Authorization v2 should not check permission for dummy entity |  Major | Authorization | Dapeng Sun | Dapeng Sun |
| [HIVE-11511](https://issues.apache.org/jira/browse/HIVE-11511) | Output the message of orcfiledump when ORC files are not specified |  Major | . | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-11462](https://issues.apache.org/jira/browse/HIVE-11462) | GenericUDFStruct should constant fold at compile time |  Major | UDF | Gopal V | Gopal V |
| [HIVE-11541](https://issues.apache.org/jira/browse/HIVE-11541) | ORC: Split Strategy should depend on global file count, not per-partition |  Major | File Formats | Gopal V | Gopal V |
| [HIVE-11464](https://issues.apache.org/jira/browse/HIVE-11464) | lineage info missing if there are multiple outputs |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11546](https://issues.apache.org/jira/browse/HIVE-11546) | Projected columns read size should be scaled to split size for ORC Splits |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11549](https://issues.apache.org/jira/browse/HIVE-11549) | Hide Hive configuration from spark driver launching process |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-11441](https://issues.apache.org/jira/browse/HIVE-11441) | No DDL allowed on table if user accidentally set table location wrong |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-11556](https://issues.apache.org/jira/browse/HIVE-11556) | HiveFilter.copy should take the condition given as a parameter |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11317](https://issues.apache.org/jira/browse/HIVE-11317) | ACID: Improve transaction Abort logic due to timeout |  Major | Metastore, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-11490](https://issues.apache.org/jira/browse/HIVE-11490) | Lazily call ASTNode::toStringTree() after tree modification |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11429](https://issues.apache.org/jira/browse/HIVE-11429) | Increase default JDBC result set fetch size (# rows it fetches in one RPC call) to 1000 from 50 |  Major | JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-11580](https://issues.apache.org/jira/browse/HIVE-11580) | ThriftUnionObjectInspector#toString throws NPE |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10697](https://issues.apache.org/jira/browse/HIVE-10697) | ObjectInspectorConvertors#UnionConvertor does a faulty conversion |  Major | Serializers/Deserializers | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-11592](https://issues.apache.org/jira/browse/HIVE-11592) | ORC metadata section can sometimes exceed protobuf message size limit |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11502](https://issues.apache.org/jira/browse/HIVE-11502) | Map side aggregation is extremely slow |  Major | Logical Optimizer, Physical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11594](https://issues.apache.org/jira/browse/HIVE-11594) | Analyze Table For Columns cannot handle columns with embedded spaces |  Major | Statistics | Gopal V | Gopal V |
| [HIVE-11607](https://issues.apache.org/jira/browse/HIVE-11607) | Export tables broken for data \> 32 MB |  Major | Import/Export | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-5277](https://issues.apache.org/jira/browse/HIVE-5277) | HBase handler skips rows with null valued first cells when only row key is selected |  Critical | HBase Handler | Teddy Choi | Swarnim Kulkarni |
| [HIVE-11596](https://issues.apache.org/jira/browse/HIVE-11596) | nvl(x, y) throws NPE if type x and type y doesn't match, rather than throwing the meaningful error |  Minor | Hive | Aihua Xu | Aihua Xu |
| [HIVE-11586](https://issues.apache.org/jira/browse/HIVE-11586) | ObjectInspectorFactory.getReflectionObjectInspector is not thread-safe |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10631](https://issues.apache.org/jira/browse/HIVE-10631) | create\_table\_core method has invalid update for Fast Stats |  Minor | Metastore | Dongwook Kwon | Aaron Tokhy |
| [HIVE-11581](https://issues.apache.org/jira/browse/HIVE-11581) | HiveServer2 should store connection params in ZK when using dynamic service discovery for simpler client connection string. |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-11472](https://issues.apache.org/jira/browse/HIVE-11472) | ORC StringDirectTreeReader is thrashing the GC due to byte[] allocation per row |  Minor | . | Gopal V | Gopal V |
| [HIVE-11658](https://issues.apache.org/jira/browse/HIVE-11658) | Load data file format validation does not work with directories |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11123](https://issues.apache.org/jira/browse/HIVE-11123) | Fix how to confirm the RDBMS product name at Metastore. |  Major | Metastore | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-11669](https://issues.apache.org/jira/browse/HIVE-11669) | OrcFileDump service should support directories |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11357](https://issues.apache.org/jira/browse/HIVE-11357) | ACID enable predicate pushdown for insert-only delta file 2 |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-11618](https://issues.apache.org/jira/browse/HIVE-11618) | Correct the SARG api to reunify the PredicateLeaf.Type INTEGER and LONG |  Major | Types | Owen O'Malley | Owen O'Malley |
| [HIVE-11652](https://issues.apache.org/jira/browse/HIVE-11652) | Avoid expensive call to removeAll in DefaultGraphWalker |  Major | Logical Optimizer, Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-10021](https://issues.apache.org/jira/browse/HIVE-10021) | "Alter index rebuild" statements submitted through HiveServer2 fail when Sentry is enabled |  Major | HiveServer2, Indexing | Richard Williams | Aihua Xu |
| [HIVE-11670](https://issues.apache.org/jira/browse/HIVE-11670) | Strip out password information from TezSessionState configuration |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11712](https://issues.apache.org/jira/browse/HIVE-11712) | Duplicate groupby keys cause ClassCastException |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11737](https://issues.apache.org/jira/browse/HIVE-11737) | IndexOutOfBounds compiling query with duplicated groupby keys |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11696](https://issues.apache.org/jira/browse/HIVE-11696) | Exception when table-level serde is Parquet while partition-level serde is JSON |  Major | Serializers/Deserializers | Aihua Xu | Aihua Xu |
| [HIVE-11587](https://issues.apache.org/jira/browse/HIVE-11587) | Fix memory estimates for mapjoin hashtable |  Major | Hive | Sergey Shelukhin | Wei Zheng |
| [HIVE-11510](https://issues.apache.org/jira/browse/HIVE-11510) | Metatool updateLocation warning on views |  Major | Database/Schema | Eric Czech | Wei Zheng |
| [HIVE-11727](https://issues.apache.org/jira/browse/HIVE-11727) | Hive on Tez through Oozie: Some queries fail with fnf exception |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-11606](https://issues.apache.org/jira/browse/HIVE-11606) | Bucket map joins fail at hash table construction time |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-11605](https://issues.apache.org/jira/browse/HIVE-11605) | Incorrect results with bucket map join in tez. |  Critical | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-11761](https://issues.apache.org/jira/browse/HIVE-11761) | DoubleWritable hashcode for GroupBy is not properly generated |  Major | Hive | Aihua Xu | Aihua Xu |
| [HIVE-11771](https://issues.apache.org/jira/browse/HIVE-11771) | Parquet timestamp conversion errors |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-5623](https://issues.apache.org/jira/browse/HIVE-5623) | ORC accessing array column that's empty will fail with java out of bound exception |  Critical | File Formats | Eric Chu | Prasanth Jayachandran |
| [HIVE-11817](https://issues.apache.org/jira/browse/HIVE-11817) | Window function max NullPointerException |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11745](https://issues.apache.org/jira/browse/HIVE-11745) | Alter table Exchange partition with multiple partition\_spec is not working |  Major | Metastore | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11821](https://issues.apache.org/jira/browse/HIVE-11821) | JDK8 strict build broken for master |  Major | Physical Optimizer | Gopal V | Gopal V |
| [HIVE-11824](https://issues.apache.org/jira/browse/HIVE-11824) | Insert to local directory causes staging directory to be copied |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11832](https://issues.apache.org/jira/browse/HIVE-11832) | HIVE-11802 breaks compilation in JDK 8 |  Major | . | Prasanth Jayachandran | Sergio Peña |
| [HIVE-11839](https://issues.apache.org/jira/browse/HIVE-11839) | Vectorization wrong results with filter of (CAST AS CHAR) |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-11583](https://issues.apache.org/jira/browse/HIVE-11583) | When PTF is used over a large partitions result could be corrupted |  Critical | PTF-Windowing | Illya Yalovyy | Illya Yalovyy |
| [HIVE-11836](https://issues.apache.org/jira/browse/HIVE-11836) | ORC SARG creation throws NPE for null constants with void type |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11838](https://issues.apache.org/jira/browse/HIVE-11838) | Another positive test case for HIVE-11658 |  Major | . | Deepesh Khandelwal | Prasanth Jayachandran |
| [HIVE-11834](https://issues.apache.org/jira/browse/HIVE-11834) | Lineage doesn't work with dynamic partitioning query |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11841](https://issues.apache.org/jira/browse/HIVE-11841) | KeyValuesInputMerger creates huge logs |  Major | Logging | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-11833](https://issues.apache.org/jira/browse/HIVE-11833) | TxnHandler heartbeat txn doesn't need serializable DB txn level |  Major | Transactions | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11860](https://issues.apache.org/jira/browse/HIVE-11860) | StatsNoJobTask fails to collect fast stats when table have subdirectories |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11826](https://issues.apache.org/jira/browse/HIVE-11826) | 'hadoop.proxyuser.hive.groups' configuration doesn't prevent unauthorized user to access metastore |  Major | Metastore | Aihua Xu | Aihua Xu |
| [HIVE-11889](https://issues.apache.org/jira/browse/HIVE-11889) | Add unit test for HIVE-11449 |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-11849](https://issues.apache.org/jira/browse/HIVE-11849) | NPE in HiveHBaseTableShapshotInputFormat in query with just count(\*) |  Major | HBase Handler | Jason Dere | Enis Soztutar |
| [HIVE-11875](https://issues.apache.org/jira/browse/HIVE-11875) | JDBC Driver does not honor delegation token mechanism when readings params from ZooKeeper |  Major | JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-11902](https://issues.apache.org/jira/browse/HIVE-11902) | Abort txn cleanup thread throws SyntaxErrorException |  Major | Transactions | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-11762](https://issues.apache.org/jira/browse/HIVE-11762) | TestHCatLoaderEncryption failures when using Hadoop 2.7 |  Major | Shims, Tests | Jason Dere | Jason Dere |
| [HIVE-11929](https://issues.apache.org/jira/browse/HIVE-11929) | Fix branch-1 build broke |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11217](https://issues.apache.org/jira/browse/HIVE-11217) | CTAS statements throws error, when the table is stored as ORC File format and select clause has NULL/VOID type column |  Minor | File Formats | Gaurav Kohli | Yongzhi Chen |
| [HIVE-11468](https://issues.apache.org/jira/browse/HIVE-11468) | Vectorize: Struct IN() clauses |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-11922](https://issues.apache.org/jira/browse/HIVE-11922) | Better error message when ORC split generation fails |  Trivial | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11926](https://issues.apache.org/jira/browse/HIVE-11926) | Stats annotation might not extract stats for varchar/decimal columns |  Major | Logical Optimizer, Statistics | Chaoyu Tang | Chaoyu Tang |
| [HIVE-11932](https://issues.apache.org/jira/browse/HIVE-11932) | JDBC Driver appends an extra "/" when configuring connection by reading httpPath from ZooKeeper |  Major | JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-11517](https://issues.apache.org/jira/browse/HIVE-11517) | Vectorized auto\_smb\_mapjoin\_14.q produces different results |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-11831](https://issues.apache.org/jira/browse/HIVE-11831) | TXN tables in Oracle should be created with ROWDEPENDENCIES |  Major | Transactions | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11939](https://issues.apache.org/jira/browse/HIVE-11939) | TxnDbUtil should turn off jdbc auto commit |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11827](https://issues.apache.org/jira/browse/HIVE-11827) | STORED AS AVRO fails SELECT COUNT(\*) when empty |  Minor | Serializers/Deserializers | Johndee Burks | Yongzhi Chen |
| [HIVE-11613](https://issues.apache.org/jira/browse/HIVE-11613) | schematool should return non zero exit status for info command, if state is inconsistent |  Major | Metastore | Thejas M Nair | Thejas M Nair |
| [HIVE-11950](https://issues.apache.org/jira/browse/HIVE-11950) | WebHCat status file doesn't show UTF8 character |  Major | WebHCat | Daniel Dai | Daniel Dai |
| [HIVE-11945](https://issues.apache.org/jira/browse/HIVE-11945) | ORC with non-local reads may not be reusing connection to DN |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-11964](https://issues.apache.org/jira/browse/HIVE-11964) | RelOptHiveTable.hiveColStatsMap might contain mismatched column stats |  Major | Query Planning, Statistics | Chaoyu Tang | Chaoyu Tang |
| [HIVE-11920](https://issues.apache.org/jira/browse/HIVE-11920) | ADD JAR failing with URL schemes other than file/ivy/hdfs |  Major | . | Jason Dere | Jason Dere |
| [HIVE-11910](https://issues.apache.org/jira/browse/HIVE-11910) | TestHCatLoaderEncryption should shutdown created MiniDFS instance |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-11915](https://issues.apache.org/jira/browse/HIVE-11915) | BoneCP returns closed connections from the pool |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-11934](https://issues.apache.org/jira/browse/HIVE-11934) | Transaction lock retry logic results in infinite loop |  Minor | HiveServer2, Transactions | Steve Howard | Eugene Koifman |
| [HIVE-11916](https://issues.apache.org/jira/browse/HIVE-11916) | TxnHandler.getOpenTxnsInfo() and getOpenTxns() may produce inconsistent result |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-11883](https://issues.apache.org/jira/browse/HIVE-11883) | 'transactional' table property for ACID should be case insensitive |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-11925](https://issues.apache.org/jira/browse/HIVE-11925) | Hive file format checking breaks load from named pipes |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11928](https://issues.apache.org/jira/browse/HIVE-11928) | ORC footer and metadata section can also exceed protobuf message limit |  Major | . | Jagruti Varia | Prasanth Jayachandran |
| [HIVE-11998](https://issues.apache.org/jira/browse/HIVE-11998) | Improve Compaction process logging |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-11997](https://issues.apache.org/jira/browse/HIVE-11997) | Add ability to send Compaction Jobs to specific queue |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-11990](https://issues.apache.org/jira/browse/HIVE-11990) | Loading data inpath from a temporary table dir fails on Windows |  Major | . | Takahiko Saito | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11714](https://issues.apache.org/jira/browse/HIVE-11714) | Turn off hybrid grace hash join for cross product join |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-11835](https://issues.apache.org/jira/browse/HIVE-11835) | Type decimal(1,1) reads 0.0, 0.00, etc from text file as NULL |  Major | Types | Xuefu Zhang | Xuefu Zhang |
| [HIVE-12007](https://issues.apache.org/jira/browse/HIVE-12007) | Hive LDAP Authenticator should allow just Domain without baseDN (for AD) |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-11983](https://issues.apache.org/jira/browse/HIVE-11983) | Hive streaming API uses incorrect logic to assign buckets to incoming records |  Major | HCatalog, Transactions | Roshan Naik | Roshan Naik |
| [HIVE-12035](https://issues.apache.org/jira/browse/HIVE-12035) | branch-1 build broken |  Major | . | Eugene Koifman | Eugene Koifman |
| [HIVE-11786](https://issues.apache.org/jira/browse/HIVE-11786) | Deprecate the use of redundant column in colunm stats related tables |  Major | Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-11969](https://issues.apache.org/jira/browse/HIVE-11969) | start Tez session in background when starting CLI |  Major | Tez | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12021](https://issues.apache.org/jira/browse/HIVE-12021) | HivePreFilteringRule may introduce wrong common operands |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12012](https://issues.apache.org/jira/browse/HIVE-12012) | select query on json table with map containing numeric values fails |  Major | Serializers/Deserializers | Jagruti Varia | Jason Dere |
| [HIVE-12032](https://issues.apache.org/jira/browse/HIVE-12032) | Add unit test for HIVE-9855 |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-12003](https://issues.apache.org/jira/browse/HIVE-12003) | Hive Streaming API : Add check to ensure table is transactional |  Major | HCatalog, Hive, Transactions | Roshan Naik | Roshan Naik |
| [HIVE-12025](https://issues.apache.org/jira/browse/HIVE-12025) | refactor bucketId generating code |  Major | Query Processor | Eugene Koifman | Eugene Koifman |
| [HIVE-11914](https://issues.apache.org/jira/browse/HIVE-11914) | When transactions gets a heartbeat, it doesn't update the lock heartbeat. |  Major | HCatalog, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-12046](https://issues.apache.org/jira/browse/HIVE-12046) | Re-create spark client if connection is dropped |  Minor | Spark | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12058](https://issues.apache.org/jira/browse/HIVE-12058) | Change hive script to record errors when calling hbase fails |  Major | Hive, HiveServer2 | Yongzhi Chen | Yongzhi Chen |
| [HIVE-12090](https://issues.apache.org/jira/browse/HIVE-12090) | Dead-code: Vectorized map-join murmur hash is run twice |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-11578](https://issues.apache.org/jira/browse/HIVE-11578) | ATS hook fails for ExplainWork |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-12076](https://issues.apache.org/jira/browse/HIVE-12076) | WebHCat listing jobs after the given JobId even when templeton.jobs.listorder is set to lexicographicaldesc |  Major | . | Kiran Kumar Kolli | Kiran Kumar Kolli |
| [HIVE-11499](https://issues.apache.org/jira/browse/HIVE-11499) | Datanucleus leaks classloaders when used using embedded metastore with HiveServer2 with UDFs |  Major | HiveServer2, Metastore | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-11892](https://issues.apache.org/jira/browse/HIVE-11892) | UDTF run in local fetch task does not return rows forwarded during GenericUDTF.close() |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-12053](https://issues.apache.org/jira/browse/HIVE-12053) | Stats performance regression caused by HIVE-11786 |  Major | Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-12083](https://issues.apache.org/jira/browse/HIVE-12083) | HIVE-10965 introduces thrift error if partNames or colNames are empty |  Major | Metastore | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-12188](https://issues.apache.org/jira/browse/HIVE-12188) | DoAs does not work properly in non-kerberos secured HS2 |  Major | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-12200](https://issues.apache.org/jira/browse/HIVE-12200) | INSERT INTO table using a select statement w/o a FROM clause fails |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12179](https://issues.apache.org/jira/browse/HIVE-12179) | Add option to not add spark-assembly.jar to Hive classpath |  Major | Spark | Jason Dere | Jason Dere |
| [HIVE-12218](https://issues.apache.org/jira/browse/HIVE-12218) | Unable to create a like table for an hbase backed table |  Major | Query Processor | Chaoyu Tang | Chaoyu Tang |
| [HIVE-11829](https://issues.apache.org/jira/browse/HIVE-11829) | Create test for HIVE-11216 |  Major | Tests | Vikram Dixit K | Vikram Dixit K |
| [HIVE-11473](https://issues.apache.org/jira/browse/HIVE-11473) | Upgrade Spark dependency to 1.5 [Spark Branch] |  Major | Spark | Jimmy Xiang | Rui Li |
| [HIVE-12225](https://issues.apache.org/jira/browse/HIVE-12225) | LineageCtx should release all resources at clear |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12201](https://issues.apache.org/jira/browse/HIVE-12201) | Tez settings need to be shown in set -v output when execution engine is tez. |  Minor | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-12204](https://issues.apache.org/jira/browse/HIVE-12204) | Tez queries stopped running with ApplicationNotRunningException |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-11901](https://issues.apache.org/jira/browse/HIVE-11901) | StorageBasedAuthorizationProvider requires write permission on table for SELECT statements |  Major | Authorization | Chengbing Liu | Chengbing Liu |
| [HIVE-12084](https://issues.apache.org/jira/browse/HIVE-12084) | Hive queries with ORDER BY and large LIMIT fails with OutOfMemoryError Java heap space |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11755](https://issues.apache.org/jira/browse/HIVE-11755) | Incorrect method called with Kerberos enabled in AccumuloStorageHandler |  Major | Accumulo Storage Handler | Josh Elser | Josh Elser |
| [HIVE-12262](https://issues.apache.org/jira/browse/HIVE-12262) | Session log dir cannot be created in some cases |  Major | HiveServer2 | Daniel Dai | Daniel Dai |
| [HIVE-11540](https://issues.apache.org/jira/browse/HIVE-11540) | Too many delta files during Compaction - OOM |  Major | Transactions | Nivin Mathew | Eugene Koifman |
| [HIVE-12189](https://issues.apache.org/jira/browse/HIVE-12189) | The list in pushdownPreds of ppd.ExprWalkerInfo should not be allowed to grow very large |  Major | Logical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-12261](https://issues.apache.org/jira/browse/HIVE-12261) | schematool version info exit status should depend on compatibility, not equality |  Major | Metastore | Thejas M Nair | Thejas M Nair |
| [HIVE-9013](https://issues.apache.org/jira/browse/HIVE-9013) | Hive set command exposes metastore db password |  Major | . | Binglin Chang | Binglin Chang |
| [HIVE-11523](https://issues.apache.org/jira/browse/HIVE-11523) | org.apache.hadoop.hive.ql.io.orc.FileDump should handle errors |  Major | File Formats | Eugene Koifman | Prasanth Jayachandran |
| [HIVE-11497](https://issues.apache.org/jira/browse/HIVE-11497) | Make sure --orcfiledump utility includes OrcRecordUpdate.AcidStats |  Major | Transactions | Eugene Koifman | Prasanth Jayachandran |
| [HIVE-12268](https://issues.apache.org/jira/browse/HIVE-12268) | Context leaks deleteOnExit paths |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12278](https://issues.apache.org/jira/browse/HIVE-12278) | Skip logging lineage for explain queries |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12276](https://issues.apache.org/jira/browse/HIVE-12276) | Fix messages in InvalidTable |  Major | HCatalog, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-11988](https://issues.apache.org/jira/browse/HIVE-11988) | [hive] security issue with hive & ranger for import table command |  Critical | Hive | Deepak Sharma | Sushanth Sowmyan |
| [HIVE-12277](https://issues.apache.org/jira/browse/HIVE-12277) | Hive macro results on macro\_duplicate.q different after adding ORDER BY |  Major | Macros | Jason Dere | Pengcheng Xiong |
| [HIVE-12280](https://issues.apache.org/jira/browse/HIVE-12280) | HiveConnection does not try other HS2 after failure for service discovery |  Major | Hive | Szehon Ho | Szehon Ho |
| [HIVE-11616](https://issues.apache.org/jira/browse/HIVE-11616) | DelegationTokenSecretManager reuses the same objectstore, which has concurrency issues |  Major | Metastore | wangwenli | Sergey Shelukhin |
| [HIVE-7723](https://issues.apache.org/jira/browse/HIVE-7723) | Explain plan for complex query with lots of partitions is slow due to in-efficient collection used to find a matching ReadEntity |  Major | CLI, Physical Optimizer | Mostafa Mokhtar | Hari Sankar Sivarama Subramaniyan |
| [HIVE-12215](https://issues.apache.org/jira/browse/HIVE-12215) | Exchange partition does not show outputs field for post/pre execute hooks |  Major | Query Processor | Aihua Xu | Aihua Xu |
| [HIVE-11718](https://issues.apache.org/jira/browse/HIVE-11718) | JDBC ResultSet.setFetchSize(0) returns no results |  Major | JDBC | Son Nguyen | Aleksei Statkevich |
| [HIVE-12287](https://issues.apache.org/jira/browse/HIVE-12287) | Lineage for lateral view shows wrong dependencies |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12202](https://issues.apache.org/jira/browse/HIVE-12202) | NPE thrown when reading legacy ACID delta files |  Major | Transactions | Elliot West | Elliot West |
| [HIVE-12266](https://issues.apache.org/jira/browse/HIVE-12266) | When client exists abnormally, it doesn't release ACID locks |  Major | Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-12206](https://issues.apache.org/jira/browse/HIVE-12206) | ClassNotFound Exception during query compilation with Tez and Union query and GenericUDFs |  Major | Tez, UDF | Jason Dere | Jason Dere |
| [HIVE-12327](https://issues.apache.org/jira/browse/HIVE-12327) | WebHCat e2e tests TestJob\_1 and TestJob\_2 fail |  Major | WebHCat | Daniel Dai | Daniel Dai |
| [HIVE-12223](https://issues.apache.org/jira/browse/HIVE-12223) | Filter on Grouping\_\_ID does not work properly |  Major | Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12229](https://issues.apache.org/jira/browse/HIVE-12229) | Custom script in query cannot be executed in yarn-cluster mode [Spark Branch]. |  Major | Spark | Lifeng Wang | Rui Li |
| [HIVE-12252](https://issues.apache.org/jira/browse/HIVE-12252) | Streaming API HiveEndPoint can be created w/o partitionVals for partitioned table |  Major | HCatalog, Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-12340](https://issues.apache.org/jira/browse/HIVE-12340) | ExecDriver.execute() unnecessarily sets METASTOREPWD to HIVE |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-12349](https://issues.apache.org/jira/browse/HIVE-12349) | NPE in ORC SARG for IS NULL queries on Timestamp and Date columns |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12230](https://issues.apache.org/jira/browse/HIVE-12230) | custom UDF configure() not called in Vectorization mode |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-12315](https://issues.apache.org/jira/browse/HIVE-12315) | vectorization\_short\_regress.q has a wrong result issue for a double calculation |  Critical | Vectorization | Matt McCline | Gopal V |
| [HIVE-12346](https://issues.apache.org/jira/browse/HIVE-12346) | Internally used variables in HiveConf should not be settable via command |  Major | Configuration | Chaoyu Tang | Chaoyu Tang |
| [HIVE-12344](https://issues.apache.org/jira/browse/HIVE-12344) | Wrong types inferred for SemiJoin generation in CBO |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12345](https://issues.apache.org/jira/browse/HIVE-12345) | Followup for HIVE-9013 : Hidden conf vars still visible through beeline |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-12310](https://issues.apache.org/jira/browse/HIVE-12310) | Update memory estimation login in TopNHash |  Major | Query Processor | Thejas M Nair | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11356](https://issues.apache.org/jira/browse/HIVE-11356) | SMB join on tez fails when one of the tables is empty |  Major | . | Vikram Dixit K | Vikram Dixit K |
| [HIVE-12306](https://issues.apache.org/jira/browse/HIVE-12306) | fix hbase\_queries.q failure |  Trivial | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-12364](https://issues.apache.org/jira/browse/HIVE-12364) | Distcp job fails when run under Tez |  Critical | Tez | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12363](https://issues.apache.org/jira/browse/HIVE-12363) | Incorrect results with orc ppd across ORC versions |  Major | . | Ashutosh Chauhan | Gopal V |
| [HIVE-12208](https://issues.apache.org/jira/browse/HIVE-12208) | Vectorized JOIN NPE on dynamically partitioned hash-join + map-join |  Major | Vectorization | Gopal V | Gunther Hagleitner |
| [HIVE-12365](https://issues.apache.org/jira/browse/HIVE-12365) | Added resource path is sent to cluster as an empty string when externally removed |  Major | Hive | Chaoyu Tang | Chaoyu Tang |
| [HIVE-12354](https://issues.apache.org/jira/browse/HIVE-12354) | MapJoin with double keys is slow on MR |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11825](https://issues.apache.org/jira/browse/HIVE-11825) | get\_json\_object(col,'$.a') is null in where clause didn`t work |  Critical | Hive | Feng Yuan | Cazen Lee |
| [HIVE-12391](https://issues.apache.org/jira/browse/HIVE-12391) | SkewJoinOptimizer might not kick in if columns are renamed after TableScanOperator |  Major | Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11120](https://issues.apache.org/jira/browse/HIVE-11120) | Generic interface for file format validation |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12378](https://issues.apache.org/jira/browse/HIVE-12378) | Exception on HBaseSerDe.serialize binary field |  Major | HBase Handler, Serializers/Deserializers | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11948](https://issues.apache.org/jira/browse/HIVE-11948) | Investigate TxnHandler and CompactionTxnHandler to see where we improve concurrency |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-11422](https://issues.apache.org/jira/browse/HIVE-11422) | Join a ACID table with non-ACID table fail with MR |  Major | Query Processor, Transactions | Daniel Dai | Daniel Dai |
| [HIVE-12417](https://issues.apache.org/jira/browse/HIVE-12417) | Support for exclamation mark missing in regexp |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [HIVE-12450](https://issues.apache.org/jira/browse/HIVE-12450) | OrcFileMergeOperator does not use correct compression buffer size |  Critical | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12437](https://issues.apache.org/jira/browse/HIVE-12437) | SMB join in tez fails when one of the tables is empty |  Critical | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-12472](https://issues.apache.org/jira/browse/HIVE-12472) | Add test case for HIVE-10592 |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12461](https://issues.apache.org/jira/browse/HIVE-12461) | Branch-1 -Phadoop-1 build is broken |  Major | . | Xuefu Zhang | Aleksei Statkevich |
| [HIVE-12493](https://issues.apache.org/jira/browse/HIVE-12493) | HIVE-11180 didn't merge cleanly to branch-1 |  Major | . | Rui Li |  |
| [HIVE-12409](https://issues.apache.org/jira/browse/HIVE-12409) | make sure SessionState.initTxnMgr() is thread safe |  Major | HiveServer2, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-12389](https://issues.apache.org/jira/browse/HIVE-12389) | CompactionTxnHandler.cleanEmptyAbortedTxns() should safeguard against huge IN clauses |  Major | Metastore, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-12406](https://issues.apache.org/jira/browse/HIVE-12406) | HIVE-9500 introduced incompatible change to LazySimpleSerDe public interface |  Blocker | Serializers/Deserializers | Lenni Kuff | Aihua Xu |
| [HIVE-12399](https://issues.apache.org/jira/browse/HIVE-12399) | Native Vector MapJoin can encounter  "Null key not expected in MapJoin" and "Unexpected NULL in map join small table" exceptions |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-12463](https://issues.apache.org/jira/browse/HIVE-12463) | VectorMapJoinFastKeyStore has Array OOB errors |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-12498](https://issues.apache.org/jira/browse/HIVE-12498) | ACID: Setting OrcRecordUpdater.OrcOptions.tableProperties() has no effect |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-8396](https://issues.apache.org/jira/browse/HIVE-8396) | Hive CliDriver command splitting can be broken when comments are present |  Major | Parser, Query Processor | Sergey Shelukhin | Elliot West |
| [HIVE-12476](https://issues.apache.org/jira/browse/HIVE-12476) | Metastore NPE on Oracle with Direct SQL |  Major | Metastore | Jason Dere | Jason Dere |
| [HIVE-12307](https://issues.apache.org/jira/browse/HIVE-12307) | Streaming API TransactionBatch.close() must abort any remaining transactions in the batch |  Major | HCatalog, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-12465](https://issues.apache.org/jira/browse/HIVE-12465) | Hive might produce wrong results when (outer) joins are merged |  Blocker | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12490](https://issues.apache.org/jira/browse/HIVE-12490) | Metastore: Mysql ANSI\_QUOTES is not there for some cases |  Major | . | Gopal V | Sergey Shelukhin |
| [HIVE-12522](https://issues.apache.org/jira/browse/HIVE-12522) | Wrong FS error during Tez merge files when warehouse and scratchdir are on different FS |  Major | Tez | Jason Dere | Jason Dere |
| [HIVE-12182](https://issues.apache.org/jira/browse/HIVE-12182) | ALTER TABLE PARTITION COLUMN does not set partition column comments |  Major | SQL | Lenni Kuff | Naveen Gangam |
| [HIVE-12551](https://issues.apache.org/jira/browse/HIVE-12551) | Fix several kryo exceptions in branch-1 |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12469](https://issues.apache.org/jira/browse/HIVE-12469) | Bump Commons-Collections dependency from 3.2.1 to 3.2.2. to address vulnerability |  Blocker | Build Infrastructure | Reuben Kuhnert | Ashutosh Chauhan |
| [HIVE-11975](https://issues.apache.org/jira/browse/HIVE-11975) | mssql scripts contains invalid 'GO' statement |  Minor | Metastore | Huan Huang | Sushanth Sowmyan |
| [HIVE-12517](https://issues.apache.org/jira/browse/HIVE-12517) | Beeline's use of failed connection(s) causes failures and leaks. |  Minor | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-12500](https://issues.apache.org/jira/browse/HIVE-12500) | JDBC driver not overlaying params supplied via properties object when reading params from ZK |  Major | JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-11312](https://issues.apache.org/jira/browse/HIVE-11312) | ORC format: where clause with CHAR data type not returning any rows |  Blocker | Query Processor | Thomas Friedrich | Prasanth Jayachandran |
| [HIVE-12537](https://issues.apache.org/jira/browse/HIVE-12537) | RLEv2 doesn't seem to work |  Critical | File Formats, ORC | Bogdan Raducanu | Prasanth Jayachandran |
| [HIVE-12257](https://issues.apache.org/jira/browse/HIVE-12257) | Enhance ORC FileDump utility to handle flush\_length files and recovery |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12444](https://issues.apache.org/jira/browse/HIVE-12444) | Global Limit optimization on ACID table without base directory may throw exception |  Major | Hive, Transactions | Wei Zheng | Wei Zheng |
| [HIVE-12565](https://issues.apache.org/jira/browse/HIVE-12565) | VectorUDAFCount.aggregateInputSelection does not handle isRepeated case |  Major | . | Matt McCline | Matt McCline |
| [HIVE-12567](https://issues.apache.org/jira/browse/HIVE-12567) | Enhance TxnHandler retry logic to handle ORA-08176 |  Major | Metastore, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-12529](https://issues.apache.org/jira/browse/HIVE-12529) | HiveTxnManager.acquireLocks() should not block forever |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-12506](https://issues.apache.org/jira/browse/HIVE-12506) | SHOW CREATE TABLE command creates a table that does not work for RCFile format |  Major | Serializers/Deserializers | Eric Lin | Chaoyu Tang |
| [HIVE-12505](https://issues.apache.org/jira/browse/HIVE-12505) | Insert overwrite in same encrypted zone silently fails to remove some existing files |  Major | Encryption | Chaoyu Tang | Chaoyu Tang |
| [HIVE-11372](https://issues.apache.org/jira/browse/HIVE-11372) | join with between predicate comparing integer types returns no rows when ORC format used |  Major | . | N Campbell | Matt McCline |
| [HIVE-12584](https://issues.apache.org/jira/browse/HIVE-12584) | Vectorized join with partition column of type char does not trim spaces |  Critical | Vectorization | Jagruti Varia | Prasanth Jayachandran |
| [HIVE-12563](https://issues.apache.org/jira/browse/HIVE-12563) | NullPointerException with 3-way Tez merge join |  Major | Query Processor | Jason Dere | Jason Dere |
| [HIVE-12566](https://issues.apache.org/jira/browse/HIVE-12566) | Incorrect result returns when using COALESCE in WHERE condition with LEFT JOIN |  Critical | Query Planning | Chaoyu Tang | Chaoyu Tang |
| [HIVE-12583](https://issues.apache.org/jira/browse/HIVE-12583) | HS2 ShutdownHookManager holds extra of Driver instance |  Major | Locking | Daniel Dai | Daniel Dai |
| [HIVE-12477](https://issues.apache.org/jira/browse/HIVE-12477) | Left Semijoins are incompatible with a cross-product |  Major | CBO | Gopal V | Jesus Camacho Rodriguez |
| [HIVE-11371](https://issues.apache.org/jira/browse/HIVE-11371) | Null pointer exception for nested table query when using ORC versus text |  Major | Vectorization | N Campbell | Matt McCline |
| [HIVE-12585](https://issues.apache.org/jira/browse/HIVE-12585) | fix TxnHandler connection leak |  Blocker | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-11878](https://issues.apache.org/jira/browse/HIVE-11878) | ClassNotFoundException can possibly  occur if multiple jars are registered one at a time in Hive |  Major | Hive | Ratandeep Ratti | Ratandeep Ratti |
| [HIVE-12620](https://issues.apache.org/jira/browse/HIVE-12620) | Misc improvement to Acid module |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-12473](https://issues.apache.org/jira/browse/HIVE-12473) | DPP: UDFs on the partition column side does not evaluate correctly |  Blocker | Tez | Gopal V | Sergey Shelukhin |
| [HIVE-12610](https://issues.apache.org/jira/browse/HIVE-12610) | Hybrid Grace Hash Join should fail task faster if processing first batch fails, instead of continuing processing the rest |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-12684](https://issues.apache.org/jira/browse/HIVE-12684) | NPE in stats annotation when all values in decimal column are NULLs |  Major | Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12688](https://issues.apache.org/jira/browse/HIVE-12688) | HIVE-11826 makes hive unusable in properly secured cluster |  Blocker | . | Thejas M Nair | Thejas M Nair |
| [HIVE-12435](https://issues.apache.org/jira/browse/HIVE-12435) | SELECT COUNT(CASE WHEN...) GROUPBY returns 1 for 'NULL' in a case of ORC and vectorization is enabled. |  Critical | Vectorization | Takahiko Saito | Matt McCline |
| [HIVE-11935](https://issues.apache.org/jira/browse/HIVE-11935) | Race condition in  HiveMetaStoreClient: isCompatibleWith and close |  Major | Metastore | Daniel Dai | Daniel Dai |
| [HIVE-12698](https://issues.apache.org/jira/browse/HIVE-12698) | Remove exposure to internal privilege and principal classes in HiveAuthorizer |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-12605](https://issues.apache.org/jira/browse/HIVE-12605) | Implement JDBC Connection.isValid |  Major | HiveServer2, JDBC | Thejas M Nair | Gabor Liptak |
| [HIVE-12712](https://issues.apache.org/jira/browse/HIVE-12712) | HiveInputFormat may fail to column names to read in some cases |  Major | . | Takahiko Saito | Prasanth Jayachandran |
| [HIVE-12735](https://issues.apache.org/jira/browse/HIVE-12735) | Constant folding for WHEN/CASE expression does not set return type correctly |  Major | Logical Optimizer | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12741](https://issues.apache.org/jira/browse/HIVE-12741) | HS2 ShutdownHookManager holds extra of Driver instance in master/branch-2.0 |  Major | HiveServer2 | Thejas M Nair | Thejas M Nair |
| [HIVE-12717](https://issues.apache.org/jira/browse/HIVE-12717) | Enabled to accept quoting of all character backslash qooting mechanism to json\_tuple UDTF |  Critical | Hive | Cazen Lee | Cazen Lee |
| [HIVE-12706](https://issues.apache.org/jira/browse/HIVE-12706) | Incorrect output from from\_utc\_timestamp()/to\_utc\_timestamp when local timezone has DST |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-12502](https://issues.apache.org/jira/browse/HIVE-12502) | to\_date UDF cannot accept NULLs of VOID type |  Trivial | UDF | Aaron Tokhy | Aaron Tokhy |
| [HIVE-11603](https://issues.apache.org/jira/browse/HIVE-11603) | IndexOutOfBoundsException thrown when accessing a union all subquery and filtering on a column which does not exist in all underlying tables |  Minor | . | Nicholas Brenwald | Laljo John Pullokkaran |
| [HIVE-12784](https://issues.apache.org/jira/browse/HIVE-12784) | Group by SemanticException: Invalid column reference |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-12795](https://issues.apache.org/jira/browse/HIVE-12795) | Vectorized execution causes ClassCastException |  Major | Query Processor | Yongzhi Chen | Yongzhi Chen |
| [HIVE-12660](https://issues.apache.org/jira/browse/HIVE-12660) | HS2 memory leak with .hiverc file use |  Major | HiveServer2 | Thejas M Nair | Thejas M Nair |
| [HIVE-12770](https://issues.apache.org/jira/browse/HIVE-12770) | Fix Q files on branch-1 that have minor EXPLAIN output differences |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-12625](https://issues.apache.org/jira/browse/HIVE-12625) | Backport to branch-1 HIVE-11981 ORC Schema Evolution Issues (Vectorized, ACID, and Non-Vectorized) |  Critical | ORC | Matt McCline | Matt McCline |
| [HIVE-12788](https://issues.apache.org/jira/browse/HIVE-12788) | Setting hive.optimize.union.remove to TRUE will break UNION ALL with aggregate functions |  Major | Hive | Eric Lin | Chaoyu Tang |
| [HIVE-12815](https://issues.apache.org/jira/browse/HIVE-12815) | column stats NPE for a query w/o a table |  Major | . | Sergey Shelukhin | Prasanth Jayachandran |
| [HIVE-12352](https://issues.apache.org/jira/browse/HIVE-12352) | CompactionTxnHandler.markCleaned() may delete too much |  Blocker | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-12724](https://issues.apache.org/jira/browse/HIVE-12724) | ACID: Major compaction fails to include the original bucket files into MR job |  Blocker | Hive, Transactions | Wei Zheng | Wei Zheng |
| [HIVE-12366](https://issues.apache.org/jira/browse/HIVE-12366) | Refactor Heartbeater logic for transaction |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-12875](https://issues.apache.org/jira/browse/HIVE-12875) | Verify sem.getInputs() and sem.getOutputs() |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-12682](https://issues.apache.org/jira/browse/HIVE-12682) | Reducers in dynamic partitioning job spend a lot of time running hadoop.conf.Configuration.getOverlay |  Major | Hive | Carter Shanklin | Prasanth Jayachandran |
| [HIVE-12887](https://issues.apache.org/jira/browse/HIVE-12887) | Handle ORC schema on read with fewer columns than file schema (after Schema Evolution changes) |  Critical | ORC | Matt McCline | Matt McCline |
| [HIVE-12022](https://issues.apache.org/jira/browse/HIVE-12022) | NPE in SARG with timestamp cast |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12353](https://issues.apache.org/jira/browse/HIVE-12353) | When Compactor fails it calls CompactionTxnHandler.markedCleaned().  it should not. |  Blocker | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-12906](https://issues.apache.org/jira/browse/HIVE-12906) | Backport to branch-1 -- HIVE-12894 Detect whether ORC is reading from ACID table correctly for Schema Evolution |  Critical | ORC | Matt McCline | Matt McCline |
| [HIVE-12909](https://issues.apache.org/jira/browse/HIVE-12909) | Some encryption q-tests fail because trash is disabled in encryption\_with\_trash.q |  Major | Hive | Sergio Peña | Sergio Peña |
| [HIVE-12886](https://issues.apache.org/jira/browse/HIVE-12886) | invalid column reference error on grouping by constant |  Major | . | Clemens Valiente | Yongzhi Chen |
| [HIVE-12893](https://issues.apache.org/jira/browse/HIVE-12893) | Sorted dynamic partition does not work if subset of partition columns are constant folded |  Major | Logical Optimizer | Yi Zhang | Prasanth Jayachandran |
| [HIVE-12947](https://issues.apache.org/jira/browse/HIVE-12947) | SMB join in tez has ClassCastException when container reuse is on |  Critical | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-11716](https://issues.apache.org/jira/browse/HIVE-11716) | Reading ACID table from non-acid session should raise an error |  Critical | Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-12790](https://issues.apache.org/jira/browse/HIVE-12790) | Metastore connection leaks in HiveServer2 |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-12885](https://issues.apache.org/jira/browse/HIVE-12885) | LDAP Authenticator improvements |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-11097](https://issues.apache.org/jira/browse/HIVE-11097) | HiveInputFormat uses String.startsWith to compare splitPath and PathToAliases |  Critical | File Formats | Wan Chang | Wan Chang |
| [HIVE-13018](https://issues.apache.org/jira/browse/HIVE-13018) | On branch-1 "RuntimeException: Vectorization is not supported for datatype:LIST" |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-12999](https://issues.apache.org/jira/browse/HIVE-12999) | Tez: Vertex creation reduce NN IPCs |  Major | Tez | Gopal V | Gopal V |
| [HIVE-9862](https://issues.apache.org/jira/browse/HIVE-9862) | Vectorized execution corrupts timestamp values |  Major | Vectorization | Nathan Howell | Matt McCline |
| [HIVE-13016](https://issues.apache.org/jira/browse/HIVE-13016) | ORC FileDump recovery utility fails in Windows |  Major | . | Jason Dere | Prasanth Jayachandran |
| [HIVE-12913](https://issues.apache.org/jira/browse/HIVE-12913) | Hive ptest is running tests on MR1 that must run only on MR2 |  Major | Testing Infrastructure | Sergio Peña | Sergio Peña |
| [HIVE-11866](https://issues.apache.org/jira/browse/HIVE-11866) | Add framework to enable testing using LDAPServer using LDAP protocol |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-12441](https://issues.apache.org/jira/browse/HIVE-12441) | Driver.acquireLocksAndOpenTxn() should only call recordValidTxns() when needed |  Major | CLI, Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-13020](https://issues.apache.org/jira/browse/HIVE-13020) | Hive Metastore and HiveServer2 to Zookeeper fails with IBM JDK |  Major | HiveServer2, Metastore, Shims | Greg Senia | Greg Senia |
| [HIVE-12965](https://issues.apache.org/jira/browse/HIVE-12965) | Insert overwrite local directory should perserve the overwritten directory permission |  Major | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13042](https://issues.apache.org/jira/browse/HIVE-13042) | OrcFiledump runs into an ArrayIndexOutOfBoundsException when running against old versions of ORC files |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-13039](https://issues.apache.org/jira/browse/HIVE-13039) | BETWEEN predicate is not functioning correctly with predicate pushdown on Parquet table |  Major | Physical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-12673](https://issues.apache.org/jira/browse/HIVE-12673) | Orcfiledump throws NPE when no files are available |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-13056](https://issues.apache.org/jira/browse/HIVE-13056) | delegation tokens do not work with HS2 when used with http transport and kerberos |  Critical | Authentication | Cheng Xu | Sushanth Sowmyan |
| [HIVE-12981](https://issues.apache.org/jira/browse/HIVE-12981) | ThriftCLIService uses incompatible getShortName() implementation |  Critical | Authentication, Authorization, CLI, Security | Bolke de Bruin | Bolke de Bruin |
| [HIVE-13065](https://issues.apache.org/jira/browse/HIVE-13065) | Hive throws NPE when writing map type data to a HBase backed table |  Major | HBase Handler | Yongzhi Chen | Yongzhi Chen |
| [HIVE-13021](https://issues.apache.org/jira/browse/HIVE-13021) | GenericUDAFEvaluator.isEstimable(agg) always returns false |  Critical | UDF | Sergey Zadoroshnyak | Gopal V |
| [HIVE-13092](https://issues.apache.org/jira/browse/HIVE-13092) | Vectorized java.lang.ClassCastException: org.apache.hadoop.hive.serde2.typeinfo.ListTypeInfo cannot be cast to org.apache.hadoop.hive.serde2.typeinfo.PrimitiveTypeInfo |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-13093](https://issues.apache.org/jira/browse/HIVE-13093) | hive metastore does not exit on start failure |  Major | Metastore | Thejas M Nair | Thejas M Nair |
| [HIVE-13090](https://issues.apache.org/jira/browse/HIVE-13090) | Hive metastore crashes on NPE with ZooKeeperTokenStore |  Major | Metastore, Security | Thejas M Nair | Piotr Wikieł |
| [HIVE-13082](https://issues.apache.org/jira/browse/HIVE-13082) | Enable constant propagation optimization in query with left semi join |  Major | Query Processor | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13051](https://issues.apache.org/jira/browse/HIVE-13051) | Deadline class has numerous issues |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12064](https://issues.apache.org/jira/browse/HIVE-12064) | prevent transactional=false |  Critical | Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-13013](https://issues.apache.org/jira/browse/HIVE-13013) | Further Improve concurrency in TxnHandler |  Critical | Metastore, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13146](https://issues.apache.org/jira/browse/HIVE-13146) | OrcFile table property values are case sensitive |  Minor | ORC | Andrew Sears | Yongzhi Chen |
| [HIVE-13174](https://issues.apache.org/jira/browse/HIVE-13174) | Remove Vectorizer noise in logs |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-13108](https://issues.apache.org/jira/browse/HIVE-13108) | Operators: SORT BY randomness is not safe with network partitions |  Major | Spark, Tez | Gopal V | Gopal V |
| [HIVE-13186](https://issues.apache.org/jira/browse/HIVE-13186) | ALTER TABLE RENAME should lowercase table name and hdfs location |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-13200](https://issues.apache.org/jira/browse/HIVE-13200) | Aggregation functions returning empty rows on partitioned columns |  Major | Physical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-13083](https://issues.apache.org/jira/browse/HIVE-13083) | Writing HiveDecimal to ORC can wrongly suppress present stream |  Major | . | Yi Zhang | Prasanth Jayachandran |
| [HIVE-13216](https://issues.apache.org/jira/browse/HIVE-13216) | ORC Reader will leave file open until GC when opening a malformed ORC file |  Minor | File Formats, ORC | Yuxing Yao | Sergey Shelukhin |
| [HIVE-13144](https://issues.apache.org/jira/browse/HIVE-13144) | HS2 can leak ZK ACL objects when curator retries to create the persistent ephemeral node |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-13175](https://issues.apache.org/jira/browse/HIVE-13175) | Disallow making external tables transactional |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-10632](https://issues.apache.org/jira/browse/HIVE-10632) | Make sure TXN\_COMPONENTS gets cleaned up if table is dropped before compaction. |  Critical | Metastore, Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-13263](https://issues.apache.org/jira/browse/HIVE-13263) | Vectorization: Unable to vectorize regexp\_extract/regexp\_replace " Udf: GenericUDFBridge, is not supported" |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-13232](https://issues.apache.org/jira/browse/HIVE-13232) | Aggressively drop compression buffers in ORC OutStreams |  Major | ORC | Owen O'Malley | Owen O'Malley |
| [HIVE-13285](https://issues.apache.org/jira/browse/HIVE-13285) | Orc concatenation may drop old files from moving to final path |  Critical | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13291](https://issues.apache.org/jira/browse/HIVE-13291) | ORC BI Split strategy should consider block size instead of file size |  Major | ORC | Gopal V | Prasanth Jayachandran |
| [HIVE-13298](https://issues.apache.org/jira/browse/HIVE-13298) | nested join support causes undecipherable errors in SemanticAnalyzer |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13313](https://issues.apache.org/jira/browse/HIVE-13313) | TABLESAMPLE ROWS feature broken for Vectorization |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-13302](https://issues.apache.org/jira/browse/HIVE-13302) | direct SQL: cast to date doesn't work on Oracle |  Major | . | Rajesh Balamohan | Sergey Shelukhin |
| [HIVE-13246](https://issues.apache.org/jira/browse/HIVE-13246) | Add log line to ORC writer to print out the file path |  Trivial | . | Siddharth Seth | Prasanth Jayachandran |
| [HIVE-13296](https://issues.apache.org/jira/browse/HIVE-13296) | Add vectorized Q test with complex types showing count(\*) etc work correctly |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-13325](https://issues.apache.org/jira/browse/HIVE-13325) | Excessive logging when ORC PPD fails type conversions |  Major | Logging, ORC | Siddharth Seth | Prasanth Jayachandran |
| [HIVE-13344](https://issues.apache.org/jira/browse/HIVE-13344) | port HIVE-12902 to 1.x line |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-11388](https://issues.apache.org/jira/browse/HIVE-11388) | Allow ACID Compactor components to run in multiple metastores |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13151](https://issues.apache.org/jira/browse/HIVE-13151) | Clean up UGI objects in FileSystem cache for transactions |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-13115](https://issues.apache.org/jira/browse/HIVE-13115) | MetaStore Direct SQL getPartitions call fail when the columns schemas for a partition are null |  Major | Hive | Ratandeep Ratti | Ratandeep Ratti |
| [HIVE-13111](https://issues.apache.org/jira/browse/HIVE-13111) | Fix timestamp / interval\_day\_time wrong results with HIVE-9862 |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-10729](https://issues.apache.org/jira/browse/HIVE-10729) | Query failed when select complex columns from joinned table (tez map join only) |  Major | Query Processor | Selina Zhang | Matt McCline |
| [HIVE-12937](https://issues.apache.org/jira/browse/HIVE-12937) | DbNotificationListener unable to clean up old notification events |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-13361](https://issues.apache.org/jira/browse/HIVE-13361) | Orc concatenation should enforce the compression buffer size |  Critical | . | Yi Zhang | Prasanth Jayachandran |
| [HIVE-13330](https://issues.apache.org/jira/browse/HIVE-13330) | ORC vectorized string dictionary reader does not differentiate null vs empty string dictionary |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13405](https://issues.apache.org/jira/browse/HIVE-13405) | Fix Connection Leak in OrcRawRecordMerger |  Major | ORC | Thomas Poepping | Thomas Poepping |
| [HIVE-11959](https://issues.apache.org/jira/browse/HIVE-11959) | add simple test case for TestTableIterable |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-13491](https://issues.apache.org/jira/browse/HIVE-13491) | Testing  : log thread stacks when metastore fails to start |  Major | Test, Testing Infrastructure | Thejas M Nair | Thejas M Nair |
| [HIVE-13514](https://issues.apache.org/jira/browse/HIVE-13514) | TestClearDanglingScratchDir fail on branch-1 |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-13476](https://issues.apache.org/jira/browse/HIVE-13476) | HS2 ShutdownHookManager holds extra of Driver instance in nested compile |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-13498](https://issues.apache.org/jira/browse/HIVE-13498) | cleardanglingscratchdir does not work if scratchdir is not on defaultFs |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-11427](https://issues.apache.org/jira/browse/HIVE-11427) | Location of temporary table for CREATE TABLE  SELECT broken by HIVE-7079 |  Major | . | Grisha Trubetskoy | Yongzhi Chen |
| [HIVE-13240](https://issues.apache.org/jira/browse/HIVE-13240) | GroupByOperator: Drop the hash aggregates when closing operator |  Major | Query Processor | Gopal V | Gopal V |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10583](https://issues.apache.org/jira/browse/HIVE-10583) | Switch precommit from ASF to Github repo to avoid clone failures |  Critical | . | Szehon Ho | Szehon Ho |
| [HIVE-7375](https://issues.apache.org/jira/browse/HIVE-7375) | Add option in test infra to compile in other profiles (like hadoop-1) |  Major | . | Szehon Ho | Szehon Ho |
| [HIVE-11620](https://issues.apache.org/jira/browse/HIVE-11620) | Fix several qtest output order |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11946](https://issues.apache.org/jira/browse/HIVE-11946) | TestNotificationListener is flaky |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12697](https://issues.apache.org/jira/browse/HIVE-12697) | Remove deprecated post option from webhcat test files |  Major | WebHCat | Aswathy Chellammal Sreekumar | Aswathy Chellammal Sreekumar |
| [HIVE-13055](https://issues.apache.org/jira/browse/HIVE-13055) | Add unit tests for HIVE-11512 |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-8858](https://issues.apache.org/jira/browse/HIVE-8858) | Visualize generated Spark plan [Spark Branch] |  Major | Spark | Xuefu Zhang | Chinna Rao Lalam |
| [HIVE-10434](https://issues.apache.org/jira/browse/HIVE-10434) | Cancel connection when remote Spark driver process has failed [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-10476](https://issues.apache.org/jira/browse/HIVE-10476) | Hive query should fail when it fails to initialize a session in SetSparkReducerParallelism [Spark Branch] |  Minor | Spark | Chao Sun | Chao Sun |
| [HIVE-10460](https://issues.apache.org/jira/browse/HIVE-10460) | change the key of Parquet Record to Nullwritable instead of void |  Major | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-10235](https://issues.apache.org/jira/browse/HIVE-10235) | Loop optimization for SIMD in ColumnDivideColumn.txt |  Minor | Vectorization | Chengxiang Li | Chengxiang Li |
| [HIVE-10527](https://issues.apache.org/jira/browse/HIVE-10527) | NPE in SparkUtilities::isDedicatedCluster [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-10520](https://issues.apache.org/jira/browse/HIVE-10520) | LLAP: Must reset small table result columns for Native Vectorization of Map Join |  Blocker | Vectorization | Matt McCline | Matt McCline |
| [HIVE-10643](https://issues.apache.org/jira/browse/HIVE-10643) | Refactoring Windowing for sum() to pass WindowFrameDef instead of two numbers (1 for number of preceding and 1 for number of following) |  Minor | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10565](https://issues.apache.org/jira/browse/HIVE-10565) | LLAP: Native Vector Map Join doesn't handle filtering and matching on LEFT OUTER JOIN repeated key correctly |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-10458](https://issues.apache.org/jira/browse/HIVE-10458) | Enable parallel order by for spark [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-10717](https://issues.apache.org/jira/browse/HIVE-10717) | Fix failed qtest encryption\_insert\_partition\_static test in Jenkin |  Major | . | Ferdinand Xu | Alexander Pivovarov |
| [HIVE-10800](https://issues.apache.org/jira/browse/HIVE-10800) | CBO (Calcite Return Path): Setup correct information if CBO succeeds |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-10702](https://issues.apache.org/jira/browse/HIVE-10702) | COUNT(\*) over windowing 'x preceding and y preceding' doesn't work properly |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10793](https://issues.apache.org/jira/browse/HIVE-10793) | Hybrid Hybrid Grace Hash Join : Don't allocate all hash table memory upfront |  Major | Hive | Mostafa Mokhtar | Mostafa Mokhtar |
| [HIVE-9605](https://issues.apache.org/jira/browse/HIVE-9605) | Remove parquet nested objects from wrapper writable objects |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-10825](https://issues.apache.org/jira/browse/HIVE-10825) | Add parquet branch profile to jenkins-submit-build.sh |  Minor | Testing Infrastructure | Sergio Peña | Sergio Peña |
| [HIVE-10550](https://issues.apache.org/jira/browse/HIVE-10550) | Dynamic RDD caching optimization for HoS.[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-10826](https://issues.apache.org/jira/browse/HIVE-10826) | Support min()/max() functions over x preceding and y preceding windowing |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10834](https://issues.apache.org/jira/browse/HIVE-10834) | Support First\_value()/last\_value() over x preceding and y preceding windowing |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10864](https://issues.apache.org/jira/browse/HIVE-10864) | CBO (Calcite Return Path): auto\_join2.q returning wrong results |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-10878](https://issues.apache.org/jira/browse/HIVE-10878) | Add tests to cover avg() function for 'x preceding and y preceding' windowing spec. |  Trivial | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10752](https://issues.apache.org/jira/browse/HIVE-10752) | Revert HIVE-5193 |  Major | HCatalog | Aihua Xu | Aihua Xu |
| [HIVE-10855](https://issues.apache.org/jira/browse/HIVE-10855) | Make HIVE-10568 work with Spark [Spark Branch] |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-10989](https://issues.apache.org/jira/browse/HIVE-10989) | HoS can't control number of map tasks for runtime skew join [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-10594](https://issues.apache.org/jira/browse/HIVE-10594) | Remote Spark client doesn't use Kerberos keytab to authenticate [Spark Branch] |  Major | Spark | Chao Sun | Xuefu Zhang |
| [HIVE-10999](https://issues.apache.org/jira/browse/HIVE-10999) | Upgrade Spark dependency to 1.4 [Spark Branch] |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-10844](https://issues.apache.org/jira/browse/HIVE-10844) | Combine equivalent Works for HoS[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-11099](https://issues.apache.org/jira/browse/HIVE-11099) | Add support for running negative q-tests [Spark Branch] |  Major | Spark | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-11138](https://issues.apache.org/jira/browse/HIVE-11138) | Query fails when there isn't a comparator for an operator [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-11108](https://issues.apache.org/jira/browse/HIVE-11108) | HashTableSinkOperator doesn't support vectorization [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-11053](https://issues.apache.org/jira/browse/HIVE-11053) | Add more tests for HIVE-10844[Spark Branch] |  Minor | Spark | Chengxiang Li | GaoLun |
| [HIVE-10927](https://issues.apache.org/jira/browse/HIVE-10927) | Add number of HMS/HS2 connection metrics |  Major | Diagnosability | Szehon Ho | Szehon Ho |
| [HIVE-11030](https://issues.apache.org/jira/browse/HIVE-11030) | Enhance storage layer to create one delta file per write |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-11130](https://issues.apache.org/jira/browse/HIVE-11130) | Refactoring the code so that HiveTxnManager interface will support lock/unlock table/database object |  Major | Locking | Aihua Xu | Aihua Xu |
| [HIVE-11082](https://issues.apache.org/jira/browse/HIVE-11082) | Support multi edge between nodes in SparkPlan[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-9152](https://issues.apache.org/jira/browse/HIVE-9152) | Dynamic Partition Pruning [Spark Branch] |  Major | Spark | Brock Noland | Chao Sun |
| [HIVE-11314](https://issues.apache.org/jira/browse/HIVE-11314) | Print "Execution completed successfully" as part of spark job info [Spark Branch] |  Major | Spark | Xuefu Zhang | Ferdinand Xu |
| [HIVE-11077](https://issues.apache.org/jira/browse/HIVE-11077) | Add support in parser and wire up to txn manager |  Major | SQL, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-11363](https://issues.apache.org/jira/browse/HIVE-11363) | Prewarm Hive on Spark containers [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-11409](https://issues.apache.org/jira/browse/HIVE-11409) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): add SEL before UNION |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11367](https://issues.apache.org/jira/browse/HIVE-11367) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): ExprNodeConverter should use HiveDecimal to create Decimal |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11180](https://issues.apache.org/jira/browse/HIVE-11180) | Enable native vectorized map join for spark [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-11453](https://issues.apache.org/jira/browse/HIVE-11453) | Create PostExecutionHook for ORC file dump |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11387](https://issues.apache.org/jira/browse/HIVE-11387) | CBO: Calcite Operator To Hive Operator (Calcite Return Path) : fix reduce\_deduplicate optimization |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11449](https://issues.apache.org/jira/browse/HIVE-11449) | "Capacity must be a power of two" error when HybridHashTableContainer memory threshold is too low |  Major | Query Processor | Jason Dere | Jason Dere |
| [HIVE-11348](https://issues.apache.org/jira/browse/HIVE-11348) | Support START TRANSACTION/COMMIT/ROLLBACK commands: support SQL2011 reserved keywords |  Major | SQL, Transactions | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11467](https://issues.apache.org/jira/browse/HIVE-11467) | WriteBuffers rounding wbSize to next power of 2 may cause OOM |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-9139](https://issues.apache.org/jira/browse/HIVE-9139) | Clean up GenSparkProcContext.clonedReduceSinks and related code [Spark Branch] |  Major | Spark | Xuefu Zhang | Chao Sun |
| [HIVE-11671](https://issues.apache.org/jira/browse/HIVE-11671) | Optimize RuleRegExp in DPP codepath |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-12091](https://issues.apache.org/jira/browse/HIVE-12091) | Merge file doesn't work for ORC table when running on Spark. [Spark Branch] |  Major | Spark | Xin Hao | Rui Li |
| [HIVE-12283](https://issues.apache.org/jira/browse/HIVE-12283) | Fix test failures after HIVE-11844 [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-12196](https://issues.apache.org/jira/browse/HIVE-12196) | NPE when converting bad timestamp value |  Major | Hive | Ryan Blue | Aihua Xu |
| [HIVE-12832](https://issues.apache.org/jira/browse/HIVE-12832) | RDBMS schema changes for HIVE-11388 |  Major | Metastore, Transactions | Alan Gates | Alan Gates |
| [HIVE-12890](https://issues.apache.org/jira/browse/HIVE-12890) | Disable multi-statment transaction control statements until HIVE-11078 |  Blocker | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13362](https://issues.apache.org/jira/browse/HIVE-13362) | Commit binary file required for HIVE-13361 |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10427](https://issues.apache.org/jira/browse/HIVE-10427) | collect\_list() and collect\_set() should accept struct types as argument |  Major | UDF | Alexander Behm | Chao Sun |
| [HIVE-10485](https://issues.apache.org/jira/browse/HIVE-10485) | Create md5 UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10868](https://issues.apache.org/jira/browse/HIVE-10868) | Update release note for 1.2.0 and 1.1.0 |  Major | Documentation | Xuefu Zhang | Xuefu Zhang |
| [HIVE-10870](https://issues.apache.org/jira/browse/HIVE-10870) | Merge Spark branch to trunk 5/29/2015 |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-11096](https://issues.apache.org/jira/browse/HIVE-11096) | Bump the parquet version to 1.7.0 |  Minor | . | Sergio Peña | Ferdinand Xu |


