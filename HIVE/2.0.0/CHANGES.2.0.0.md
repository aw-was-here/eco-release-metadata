
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

## Release 2.0.0 - Unreleased (as of 2015-12-11)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-12443](https://issues.apache.org/jira/browse/HIVE-12443) | Hive Streaming should expose encoding and serdes for testing |  Major | Testing Infrastructure, Transactions | Alan Gates | Alan Gates |
| [HIVE-12224](https://issues.apache.org/jira/browse/HIVE-12224) | Remove HOLD\_DDLTIME |  Major | Metastore | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12184](https://issues.apache.org/jira/browse/HIVE-12184) | DESCRIBE of fully qualified table fails when db and table name match and non-default database is in use |  Major | SQL | Lenni Kuff | Naveen Gangam |
| [HIVE-12005](https://issues.apache.org/jira/browse/HIVE-12005) | Remove hbase based stats collection mechanism |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11378](https://issues.apache.org/jira/browse/HIVE-11378) | Remove hadoop-1 support from master branch |  Major | Build Infrastructure | Alan Gates | Alan Gates |
| [HIVE-11261](https://issues.apache.org/jira/browse/HIVE-11261) | DESCRIBE database qualifier does not work when calling DESCRIBE on column or nested columns. |  Minor | Parser | Jenny Kim | Naveen Gangam |
| [HIVE-11228](https://issues.apache.org/jira/browse/HIVE-11228) | Mutation API should use semi-shared locks. |  Major | HCatalog | Elliot West | Elliot West |
| [HIVE-11145](https://issues.apache.org/jira/browse/HIVE-11145) | Remove OFFLINE and NO\_DROP from tables and partitions |  Major | Metastore, SQL | Alan Gates | Alan Gates |
| [HIVE-9365](https://issues.apache.org/jira/browse/HIVE-9365) | The Metastore should take port configuration from hive-site.xml |  Minor | . | Nicolas Thiébaud | Reuben Kuhnert |
| [HIVE-7575](https://issues.apache.org/jira/browse/HIVE-7575) | GetTables thrift call is very slow |  Major | HiveServer2 | Ashu Pachauri | Navis |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-11908](https://issues.apache.org/jira/browse/HIVE-11908) | LLAP: Merge branch to hive-2.0 |  Critical | . | Gopal V | Sergey Shelukhin |
| [HIVE-10790](https://issues.apache.org/jira/browse/HIVE-10790) | orc write on viewFS throws exception |  Major | API | Xiaowei Wang | Xiaowei Wang |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-12080](https://issues.apache.org/jira/browse/HIVE-12080) | Support auto type widening (int-\>bigint & float-\>double) for Parquet table |  Major | File Formats | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [HIVE-11976](https://issues.apache.org/jira/browse/HIVE-11976) | Extend CBO rules to being able to apply rules only once on a given operator |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11785](https://issues.apache.org/jira/browse/HIVE-11785) | Support escaping carriage return and new line for LazySimpleSerDe |  Major | Query Processor | Aihua Xu | Aihua Xu |
| [HIVE-11706](https://issues.apache.org/jira/browse/HIVE-11706) | Implement "show create database" |  Trivial | Metastore | Navis | Navis |
| [HIVE-11699](https://issues.apache.org/jira/browse/HIVE-11699) | Support special characters in quoted table names |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11684](https://issues.apache.org/jira/browse/HIVE-11684) | Implement limit pushdown through outer join in CBO |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11600](https://issues.apache.org/jira/browse/HIVE-11600) | Hive Parser to Support multi col in clause (x,y..) in ((..),..., ()) |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11593](https://issues.apache.org/jira/browse/HIVE-11593) | Add aes\_encrypt and aes\_decrypt UDFs |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-11488](https://issues.apache.org/jira/browse/HIVE-11488) | Add sessionId and queryId info to HS2 log |  Major | Logging | Aihua Xu | Aihua Xu |
| [HIVE-11461](https://issues.apache.org/jira/browse/HIVE-11461) | Transform flat AND/OR into IN struct clause |  Major | Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11103](https://issues.apache.org/jira/browse/HIVE-11103) | Add banker's rounding BROUND UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10785](https://issues.apache.org/jira/browse/HIVE-10785) | Support aggregate push down through joins |  Major | CBO, Logical Optimizer | Jesus Camacho Rodriguez | Ashutosh Chauhan |
| [HIVE-10761](https://issues.apache.org/jira/browse/HIVE-10761) | Create codahale-based metrics system for Hive |  Major | Diagnosability | Szehon Ho | Szehon Ho |
| [HIVE-10673](https://issues.apache.org/jira/browse/HIVE-10673) | Dynamically partitioned hash join for Tez |  Major | Query Planning, Query Processor | Jason Dere | Jason Dere |
| [HIVE-10592](https://issues.apache.org/jira/browse/HIVE-10592) | ORC file dump in JSON format |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-10591](https://issues.apache.org/jira/browse/HIVE-10591) | Support limited integer type promotion in ORC |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7926](https://issues.apache.org/jira/browse/HIVE-7926) | long-lived daemons for query fragment execution, I/O and caching |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-3404](https://issues.apache.org/jira/browse/HIVE-3404) | Create quarter UDF |  Major | UDF | Sanam Naz | Alexander Pivovarov |
| [HIVE-686](https://issues.apache.org/jira/browse/HIVE-686) | add UDF substring\_index |  Major | UDF | Namit Jain | Alexander Pivovarov |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-12496](https://issues.apache.org/jira/browse/HIVE-12496) | Open ServerTransport After MetaStore Initialization |  Minor | Metastore | Nemon Lou | Nemon Lou |
| [HIVE-12331](https://issues.apache.org/jira/browse/HIVE-12331) | Remove hive.enforce.bucketing & hive.enforce.sorting configs |  Major | Configuration | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12329](https://issues.apache.org/jira/browse/HIVE-12329) | Turn on limit pushdown optimization by default |  Major | Configuration | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12325](https://issues.apache.org/jira/browse/HIVE-12325) | Turn hive.map.groupby.sorted on by default |  Major | Logical Optimizer | Ashutosh Chauhan | Chetna Chaudhari |
| [HIVE-12320](https://issues.apache.org/jira/browse/HIVE-12320) | hive.metastore.disallow.incompatible.col.type.changes should be true by default |  Major | Configuration, Types | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12319](https://issues.apache.org/jira/browse/HIVE-12319) | Remove HadoopShims::getHadoopConfNames() |  Major | Shims | Ashutosh Chauhan | Aleksei Statkevich |
| [HIVE-12317](https://issues.apache.org/jira/browse/HIVE-12317) | Emit current database in lineage info |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12309](https://issues.apache.org/jira/browse/HIVE-12309) | TableScan should use column stats when available for better data size estimate |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12300](https://issues.apache.org/jira/browse/HIVE-12300) | deprecate MR in Hive 2.0 |  Major | CLI, Configuration, Documentation | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12290](https://issues.apache.org/jira/browse/HIVE-12290) | Native Vector ReduceSink |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-12289](https://issues.apache.org/jira/browse/HIVE-12289) | Make sure slf4j-log4j12 jar is not in classpath |  Major | Logging | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12288](https://issues.apache.org/jira/browse/HIVE-12288) | Extend HIVE-11306 changes to apply to Native vectorized map-joins |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-12273](https://issues.apache.org/jira/browse/HIVE-12273) | Improve user level explain |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-12265](https://issues.apache.org/jira/browse/HIVE-12265) | Generate lineage info only if requested |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12236](https://issues.apache.org/jira/browse/HIVE-12236) | Enable SimpleFetchOptimizer for more query types |  Major | Logical Optimizer | Gopal V | Ashutosh Chauhan |
| [HIVE-12235](https://issues.apache.org/jira/browse/HIVE-12235) | Improve beeline logging for dynamic service discovery |  Major | . | Szehon Ho | Szehon Ho |
| [HIVE-12209](https://issues.apache.org/jira/browse/HIVE-12209) | Vectorized simple CASE expressions with nulls |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-12187](https://issues.apache.org/jira/browse/HIVE-12187) | Release plan once a query is executed |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12186](https://issues.apache.org/jira/browse/HIVE-12186) | Upgrade Hive to Calcite 1.5 |  Major | CBO, Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12175](https://issues.apache.org/jira/browse/HIVE-12175) | Upgrade Kryo version to 3.0.x |  Major | Serializers/Deserializers | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12063](https://issues.apache.org/jira/browse/HIVE-12063) | Pad Decimal numbers with trailing zeros to the scale of the column |  Major | Types | Xuefu Zhang | Xuefu Zhang |
| [HIVE-12059](https://issues.apache.org/jira/browse/HIVE-12059) | Clean up reference to deprecated constants in AvroSerdeUtils |  Minor | Serializers/Deserializers | Aaron Dossett | Aaron Dossett |
| [HIVE-12038](https://issues.apache.org/jira/browse/HIVE-12038) | Fix the 'overall' section in the HiveQA report |  Minor | Testing Infrastructure | Szehon Ho | Szehon Ho |
| [HIVE-12017](https://issues.apache.org/jira/browse/HIVE-12017) | Do not disable CBO by default when number of joins in a query is equal or less than 1 |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12002](https://issues.apache.org/jira/browse/HIVE-12002) | correct implementation typo |  Trivial | Beeline, HCatalog, Metastore | Alex Moundalexis | Alex Moundalexis |
| [HIVE-11984](https://issues.apache.org/jira/browse/HIVE-11984) | Add HS2 open operation metrics |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11972](https://issues.apache.org/jira/browse/HIVE-11972) | [Refactor] Improve determination of dynamic partitioning columns in FileSink Operator |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11955](https://issues.apache.org/jira/browse/HIVE-11955) | Add costing for join-groupby transpose rule |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11937](https://issues.apache.org/jira/browse/HIVE-11937) | Improve StatsOptimizer to deal with query with additional constant columns |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11923](https://issues.apache.org/jira/browse/HIVE-11923) | allow qtests to run via a single client session for tez and llap |  Major | Testing Infrastructure | Siddharth Seth | Siddharth Seth |
| [HIVE-11891](https://issues.apache.org/jira/browse/HIVE-11891) | Add basic performance logging to metastore calls |  Minor | Metastore | Brock Noland | Brock Noland |
| [HIVE-11882](https://issues.apache.org/jira/browse/HIVE-11882) | Fetch optimizer should stop source files traversal once it exceeds the hive.fetch.task.conversion.threshold |  Major | Physical Optimizer | Illya Yalovyy | Illya Yalovyy |
| [HIVE-11881](https://issues.apache.org/jira/browse/HIVE-11881) | Supporting HPL/SQL Packages |  Major | hpl/sql | Dmitry Tolpeko | Dmitry Tolpeko |
| [HIVE-11816](https://issues.apache.org/jira/browse/HIVE-11816) | Upgrade groovy to 2.4.4 |  Major | . | Szehon Ho | Szehon Ho |
| [HIVE-11814](https://issues.apache.org/jira/browse/HIVE-11814) | Emit query time in lineage info |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11807](https://issues.apache.org/jira/browse/HIVE-11807) | Set ORC buffer size in relation to set stripe size |  Major | File Formats | Owen O'Malley | Owen O'Malley |
| [HIVE-11789](https://issues.apache.org/jira/browse/HIVE-11789) | Better support for functions recognition in CBO |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11783](https://issues.apache.org/jira/browse/HIVE-11783) | Extending HPL/SQL parser |  Major | hpl/sql | Dmitry Tolpeko | Dmitry Tolpeko |
| [HIVE-11780](https://issues.apache.org/jira/browse/HIVE-11780) | Add "set role none" support |  Major | Authorization | Dapeng Sun | Dapeng Sun |
| [HIVE-11724](https://issues.apache.org/jira/browse/HIVE-11724) | WebHcat get jobs to order jobs on time order with latest at top |  Major | WebHCat | Kiran Kumar Kolli | Kiran Kumar Kolli |
| [HIVE-11720](https://issues.apache.org/jira/browse/HIVE-11720) | Allow HiveServer2 to set custom http request/response header size |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-11659](https://issues.apache.org/jira/browse/HIVE-11659) | Make Vectorization use the fast StringExpr everywhere |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-11645](https://issues.apache.org/jira/browse/HIVE-11645) | Add in-place updates for dynamic partitions loading |  Major | CLI | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11638](https://issues.apache.org/jira/browse/HIVE-11638) | ExprNodeDesc hashMap accidentally degrades into O(N) instead of O(1) |  Major | Logical Optimizer | Gopal V | Gopal V |
| [HIVE-11627](https://issues.apache.org/jira/browse/HIVE-11627) | Reduce the number of accesses to hashmaps in PPD |  Major | Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11617](https://issues.apache.org/jira/browse/HIVE-11617) | Explain plan for multiple lateral views is very slow |  Major | Logical Optimizer | Aihua Xu | Aihua Xu |
| [HIVE-11569](https://issues.apache.org/jira/browse/HIVE-11569) | Use PreOrderOnceWalker where feasible |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11564](https://issues.apache.org/jira/browse/HIVE-11564) | HBaseSchemaTool should be able to list objects |  Major | HBase Metastore | Alan Gates | Alan Gates |
| [HIVE-11544](https://issues.apache.org/jira/browse/HIVE-11544) | LazyInteger should avoid throwing NumberFormatException |  Minor | Serializers/Deserializers | William Slacum | Gopal V |
| [HIVE-11538](https://issues.apache.org/jira/browse/HIVE-11538) | Add an option to skip init script while running tests |  Major | Testing Infrastructure | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11536](https://issues.apache.org/jira/browse/HIVE-11536) | %TYPE and %ROWTYPE attributes in data type declaration |  Major | hpl/sql | Dmitry Tolpeko | Dmitry Tolpeko |
| [HIVE-11534](https://issues.apache.org/jira/browse/HIVE-11534) | Improve validateTableCols error message |  Minor | Hive | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-11525](https://issues.apache.org/jira/browse/HIVE-11525) | Bucket pruning |  Major | Logical Optimizer | Maciek Kocon | Gopal V |
| [HIVE-11513](https://issues.apache.org/jira/browse/HIVE-11513) | AvroLazyObjectInspector could handle empty data better |  Major | . | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-11512](https://issues.apache.org/jira/browse/HIVE-11512) | Hive LDAP Authenticator should also support full DN in Authenticate() |  Minor | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-11506](https://issues.apache.org/jira/browse/HIVE-11506) | Casting varchar/char type to string cannot be vectorized |  Trivial | Vectorization | Navis | Navis |
| [HIVE-11496](https://issues.apache.org/jira/browse/HIVE-11496) | Better tests for evaluating ORC predicate pushdown |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11482](https://issues.apache.org/jira/browse/HIVE-11482) | Add retrying thrift client for HiveServer2 |  Major | HiveServer2 | Amareshwari Sriramadasu | Akshay Goyal |
| [HIVE-11457](https://issues.apache.org/jira/browse/HIVE-11457) | Vectorization: Improve SIMD JIT in GenVectorCode StringExpr instrinsics |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-11442](https://issues.apache.org/jira/browse/HIVE-11442) | Remove commons-configuration.jar from Hive distribution |  Major | Build Infrastructure | Daniel Dai | Daniel Dai |
| [HIVE-11383](https://issues.apache.org/jira/browse/HIVE-11383) | Upgrade Hive to Calcite 1.4 |  Major | CBO, Logical Optimizer | Julian Hyde | Jesus Camacho Rodriguez |
| [HIVE-11366](https://issues.apache.org/jira/browse/HIVE-11366) | Avoid right leaning tree hashCode depth during ExprNodeDescEqualityWrapper HashMaps |  Major | Logical Optimizer | Gopal V | Gopal V |
| [HIVE-11354](https://issues.apache.org/jira/browse/HIVE-11354) | HPL/SQL extending compatibility with Transact-SQL |  Major | hpl/sql | Dmitry Tolpeko | Dmitry Tolpeko |
| [HIVE-11329](https://issues.apache.org/jira/browse/HIVE-11329) | Column prefix in key of hbase column prefix map |  Minor | HBase Handler | Wojciech Indyk | Wojciech Indyk |
| [HIVE-11306](https://issues.apache.org/jira/browse/HIVE-11306) | Add a bloom-1 filter for Hybrid MapJoin spills |  Major | Hive | Gopal V | Wei Zheng |
| [HIVE-11304](https://issues.apache.org/jira/browse/HIVE-11304) | Migrate to Log4j2 from Log4j 1.x |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11291](https://issues.apache.org/jira/browse/HIVE-11291) | Avoid allocation storm while doing rule matching on operator/expression trees |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11290](https://issues.apache.org/jira/browse/HIVE-11290) | Cursor attributes %ISOPEN, %FOUND, %NOTFOUND and SYS\_REFCURSOR variable |  Major | hpl/sql | Dmitry Tolpeko | Dmitry Tolpeko |
| [HIVE-11262](https://issues.apache.org/jira/browse/HIVE-11262) | Skip MapJoin processing if the join hash table is empty |  Major | Query Processor | Jason Dere | Jason Dere |
| [HIVE-11254](https://issues.apache.org/jira/browse/HIVE-11254) | Process result sets returned by a stored procedure |  Major | hpl/sql | Dmitry Tolpeko | Dmitry Tolpeko |
| [HIVE-11244](https://issues.apache.org/jira/browse/HIVE-11244) | Beeline prompt info improvement for cluster mode |  Minor | Beeline | Nemon Lou | Nemon Lou |
| [HIVE-11240](https://issues.apache.org/jira/browse/HIVE-11240) | Change value type from int to long for HiveConf.ConfVars.METASTORESERVERMAXMESSAGESIZE |  Major | Metastore | Xuefu Zhang | Ferdinand Xu |
| [HIVE-11182](https://issues.apache.org/jira/browse/HIVE-11182) | Enable optimized hash tables for spark [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-11179](https://issues.apache.org/jira/browse/HIVE-11179) | HIVE should allow custom converting from HivePrivilegeObjectDesc to privilegeObject for different authorizers |  Major | . | Dapeng Sun | Dapeng Sun |
| [HIVE-11139](https://issues.apache.org/jira/browse/HIVE-11139) | Emit more lineage information |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11136](https://issues.apache.org/jira/browse/HIVE-11136) | Unused Logger in org.apache.hadoop.hive.ql.udf.generic.GenericUDAFCount |  Trivial | Logging | Nishant Kelkar | Yongzhi Chen |
| [HIVE-11076](https://issues.apache.org/jira/browse/HIVE-11076) | Explicitly set hive.cbo.enable=true for some tests |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11055](https://issues.apache.org/jira/browse/HIVE-11055) | HPL/SQL - Implementing Procedural SQL in Hive (PL/HQL Contribution) |  Major | hpl/sql | Dmitry Tolpeko | Dmitry Tolpeko |
| [HIVE-11052](https://issues.apache.org/jira/browse/HIVE-11052) | Unify HiveSessionBase#getusername method |  Minor | . | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-11037](https://issues.apache.org/jira/browse/HIVE-11037) | HiveOnTez: make explain user level = true as default |  Major | Diagnosability | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-10748](https://issues.apache.org/jira/browse/HIVE-10748) | Replace StringBuffer with StringBuilder where possible |  Minor | . | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10710](https://issues.apache.org/jira/browse/HIVE-10710) | Delete GenericUDF.getConstantLongValue |  Trivial | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10709](https://issues.apache.org/jira/browse/HIVE-10709) | Update Avro version to 1.7.7 |  Major | Serializers/Deserializers | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-10657](https://issues.apache.org/jira/browse/HIVE-10657) | Remove copyBytes operation from MD5 UDF |  Minor | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10644](https://issues.apache.org/jira/browse/HIVE-10644) | create SHA2 UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10641](https://issues.apache.org/jira/browse/HIVE-10641) | create CRC32 UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10639](https://issues.apache.org/jira/browse/HIVE-10639) | create SHA1 UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10555](https://issues.apache.org/jira/browse/HIVE-10555) | Improve windowing spec of range based windowing to support additional range formats |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10531](https://issues.apache.org/jira/browse/HIVE-10531) | Implement isClosed() to HiveQueryResultSet |  Minor | JDBC | Yun-young LEE | Yun-young LEE |
| [HIVE-10435](https://issues.apache.org/jira/browse/HIVE-10435) | Make HiveSession implementation pluggable through configuration |  Major | HiveServer2 | Amareshwari Sriramadasu | Akshay Goyal |
| [HIVE-10403](https://issues.apache.org/jira/browse/HIVE-10403) | Add n-way join support for Hybrid Grace Hash Join |  Major | . | Wei Zheng | Wei Zheng |
| [HIVE-10319](https://issues.apache.org/jira/browse/HIVE-10319) | Hive CLI startup takes a long time with a large number of databases |  Major | CLI | Nezih Yigitbasi | Nezih Yigitbasi |
| [HIVE-10302](https://issues.apache.org/jira/browse/HIVE-10302) | Load small tables (for map join) in executor memory only once [Spark Branch] |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10239](https://issues.apache.org/jira/browse/HIVE-10239) | Create scripts to do metastore upgrade tests on jenkins for Derby and PostgreSQL |  Major | . | Naveen Gangam | Naveen Gangam |
| [HIVE-10165](https://issues.apache.org/jira/browse/HIVE-10165) | Improve hive-hcatalog-streaming extensibility and support updates and deletes. |  Major | HCatalog | Elliot West | Elliot West |
| [HIVE-10048](https://issues.apache.org/jira/browse/HIVE-10048) | JDBC - Support SSL encryption regardless of Authentication mechanism |  Major | JDBC | Mubashir Kazia | Mubashir Kazia |
| [HIVE-9695](https://issues.apache.org/jira/browse/HIVE-9695) | Redundant filter operator in reducer Vertex when CBO is disabled |  Major | Logical Optimizer | Mostafa Mokhtar | Jesus Camacho Rodriguez |
| [HIVE-9599](https://issues.apache.org/jira/browse/HIVE-9599) | remove derby, datanucleus and other not related to jdbc client classes from hive-jdbc-standalone.jar |  Minor | JDBC | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-8583](https://issues.apache.org/jira/browse/HIVE-8583) | HIVE-8341 Cleanup & Test for hive.script.operator.env.blacklist |  Minor | . | Lars Francke | Lars Francke |
| [HIVE-8190](https://issues.apache.org/jira/browse/HIVE-8190) | LDAP user match for authentication on hiveserver2 |  Major | Authorization, Clients | LINTE | Naveen Gangam |
| [HIVE-6758](https://issues.apache.org/jira/browse/HIVE-6758) | Beeline doesn't work with -e option when started in background |  Major | CLI | Johndee Burks | Mohit Sabharwal |
| [HIVE-2327](https://issues.apache.org/jira/browse/HIVE-2327) | Optimize REGEX UDFs with constant parameter information |  Major | UDF | Adam Kramer | Alexander Pivovarov |
| [HIVE-1841](https://issues.apache.org/jira/browse/HIVE-1841) |  datanucleus.fixedDatastore should be true in hive-default.xml |  Minor | Configuration, Metastore | Edward Capriolo | Ashutosh Chauhan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-12608](https://issues.apache.org/jira/browse/HIVE-12608) | Parquet Schema Evolution doesn't work when a column is dropped from array\<struct\<\>\> |  Major | File Formats | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [HIVE-12601](https://issues.apache.org/jira/browse/HIVE-12601) | HIVE-11985 change does not use partition deserializer |  Major | Metastore, Query Planning | Thejas M Nair | Sergey Shelukhin |
| [HIVE-12599](https://issues.apache.org/jira/browse/HIVE-12599) | Add logging to debug rare unexpected refCount error from the LLAP IO layer |  Major | . | Siddharth Seth | Sergey Shelukhin |
| [HIVE-12598](https://issues.apache.org/jira/browse/HIVE-12598) | LLAP: disable fileId when not supported |  Major | llap | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12596](https://issues.apache.org/jira/browse/HIVE-12596) | Delete timestamp row throws java.lang.IllegalArgumentException: Timestamp format must be yyyy-mm-dd hh:mm:ss[.fffffffff] |  Major | . | Takahiko Saito | Prasanth Jayachandran |
| [HIVE-12591](https://issues.apache.org/jira/browse/HIVE-12591) | LLAP cache counters displays -ve value for CacheCapacityUsed |  Major | llap | Rajesh Balamohan | Sergey Shelukhin |
| [HIVE-12589](https://issues.apache.org/jira/browse/HIVE-12589) | LLAP service gen is broken for log4j2 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12585](https://issues.apache.org/jira/browse/HIVE-12585) | fix TxnHandler connection leak |  Blocker | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-12584](https://issues.apache.org/jira/browse/HIVE-12584) | Vectorized join with partition column of type char does not trim spaces |  Critical | Vectorization | Jagruti Varia | Prasanth Jayachandran |
| [HIVE-12583](https://issues.apache.org/jira/browse/HIVE-12583) | HS2 ShutdownHookManager holds extra of Driver instance |  Major | Locking | Daniel Dai | Daniel Dai |
| [HIVE-12578](https://issues.apache.org/jira/browse/HIVE-12578) | Hive query failing with error ClassCastException org.apache.hadoop.hive.ql.plan.ExprNodeConstantDesc cannot be cast to org.apache.hadoop.hive.ql.plan.ExprNodeColumnDesc |  Major | Query Planning | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12576](https://issues.apache.org/jira/browse/HIVE-12576) | Add missing license headers in preparation for the 2.0 release |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12566](https://issues.apache.org/jira/browse/HIVE-12566) | Incorrect result returns when using COALESCE in WHERE condition with LEFT JOIN |  Critical | Query Planning | Chaoyu Tang | Chaoyu Tang |
| [HIVE-12565](https://issues.apache.org/jira/browse/HIVE-12565) | VectorUDAFCount.aggregateInputSelection does not handle isRepeated case |  Major | . | Matt McCline | Matt McCline |
| [HIVE-12563](https://issues.apache.org/jira/browse/HIVE-12563) | NullPointerException with 3-way Tez merge join |  Major | Query Processor | Jason Dere | Jason Dere |
| [HIVE-12557](https://issues.apache.org/jira/browse/HIVE-12557) | NPE while removing entry in LRFU cache |  Major | llap | Siddharth Seth | Sergey Shelukhin |
| [HIVE-12556](https://issues.apache.org/jira/browse/HIVE-12556) | Ctrl-C in beeline doesn't kill Tez query on HS2 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12537](https://issues.apache.org/jira/browse/HIVE-12537) | RLEv2 doesn't seem to work |  Critical | File Formats, ORC | Bogdan Raducanu | Prasanth Jayachandran |
| [HIVE-12532](https://issues.apache.org/jira/browse/HIVE-12532) | LLAP Cache: Uncompressed data cache has NPE |  Critical | llap | Gopal V | Sergey Shelukhin |
| [HIVE-12522](https://issues.apache.org/jira/browse/HIVE-12522) | Wrong FS error during Tez merge files when warehouse and scratchdir are on different FS |  Major | Tez | Jason Dere | Jason Dere |
| [HIVE-12517](https://issues.apache.org/jira/browse/HIVE-12517) | Beeline's use of failed connection(s) causes failures and leaks. |  Minor | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-12512](https://issues.apache.org/jira/browse/HIVE-12512) | Include driver logs in execution-level Operation logs |  Minor | Logging | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-12509](https://issues.apache.org/jira/browse/HIVE-12509) | Regenerate q files after HIVE-12017 went in |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12506](https://issues.apache.org/jira/browse/HIVE-12506) | SHOW CREATE TABLE command creates a table that does not work for RCFile format |  Major | Serializers/Deserializers | Eric Lin | Chaoyu Tang |
| [HIVE-12505](https://issues.apache.org/jira/browse/HIVE-12505) | Insert overwrite in same encrypted zone silently fails to remove some existing files |  Major | Encryption | Chaoyu Tang | Chaoyu Tang |
| [HIVE-12503](https://issues.apache.org/jira/browse/HIVE-12503) | GBY-Join transpose rule may go in infinite loop |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12501](https://issues.apache.org/jira/browse/HIVE-12501) | LLAP: don't use read(ByteBuffer) in IO |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12500](https://issues.apache.org/jira/browse/HIVE-12500) | JDBC driver not overlaying params supplied via properties object when reading params from ZK |  Major | JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-12498](https://issues.apache.org/jira/browse/HIVE-12498) | ACID: Setting OrcRecordUpdater.OrcOptions.tableProperties() has no effect |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12491](https://issues.apache.org/jira/browse/HIVE-12491) | Improve ndv heuristic for functions |  Major | Statistics | Gopal V | Ashutosh Chauhan |
| [HIVE-12490](https://issues.apache.org/jira/browse/HIVE-12490) | Metastore: Mysql ANSI\_QUOTES is not there for some cases |  Major | . | Gopal V | Sergey Shelukhin |
| [HIVE-12489](https://issues.apache.org/jira/browse/HIVE-12489) | Analyze for partition fails if partition value has special characters |  Minor | Statistics | Thomas Friedrich | Thomas Friedrich |
| [HIVE-12487](https://issues.apache.org/jira/browse/HIVE-12487) | Fix broken MiniLlap tests |  Critical | . | Aleksei Statkevich | Aleksei Statkevich |
| [HIVE-12479](https://issues.apache.org/jira/browse/HIVE-12479) | Vectorization: Vectorized Date UDFs with up-stream Joins |  Critical | Vectorization | Gopal V | Gopal V |
| [HIVE-12477](https://issues.apache.org/jira/browse/HIVE-12477) | Left Semijoins are incompatible with a cross-product |  Major | CBO | Gopal V | Jesus Camacho Rodriguez |
| [HIVE-12476](https://issues.apache.org/jira/browse/HIVE-12476) | Metastore NPE on Oracle with Direct SQL |  Major | Metastore | Jason Dere | Jason Dere |
| [HIVE-12475](https://issues.apache.org/jira/browse/HIVE-12475) | Parquet schema evolution within array\<struct\<\>\> doesn't work |  Major | File Formats | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [HIVE-12473](https://issues.apache.org/jira/browse/HIVE-12473) | DPP: UDFs on the partition column side does not evaluate correctly |  Major | Tez | Gopal V | Sergey Shelukhin |
| [HIVE-12469](https://issues.apache.org/jira/browse/HIVE-12469) | Bump Commons-Collections dependency from 3.2.1 to 3.2.2. to address vulnerability |  Blocker | Build Infrastructure | Reuben Kuhnert | Ashutosh Chauhan |
| [HIVE-12465](https://issues.apache.org/jira/browse/HIVE-12465) | Hive might produce wrong results when (outer) joins are merged |  Blocker | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12463](https://issues.apache.org/jira/browse/HIVE-12463) | VectorMapJoinFastKeyStore has Array OOB errors |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-12462](https://issues.apache.org/jira/browse/HIVE-12462) | DPP: DPP optimizers need to run on the TS predicate not FIL |  Critical | Tez | Gopal V | Gopal V |
| [HIVE-12456](https://issues.apache.org/jira/browse/HIVE-12456) | QueryId can't be stored in the configuration of the SessionState since multiple queries can run in a single session |  Major | Logging | Aihua Xu | Aihua Xu |
| [HIVE-12450](https://issues.apache.org/jira/browse/HIVE-12450) | OrcFileMergeOperator does not use correct compression buffer size |  Critical | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12444](https://issues.apache.org/jira/browse/HIVE-12444) | Global Limit optimization on ACID table without base directory may throw exception |  Major | Hive, Transactions | Wei Zheng | Wei Zheng |
| [HIVE-12437](https://issues.apache.org/jira/browse/HIVE-12437) | SMB join in tez fails when one of the tables is empty |  Critical | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-12418](https://issues.apache.org/jira/browse/HIVE-12418) | HiveHBaseTableInputFormat.getRecordReader() causes Zookeeper connection leak. |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-12417](https://issues.apache.org/jira/browse/HIVE-12417) | Support for exclamation mark missing in regexp |  Major | . | Olaf Flebbe | Olaf Flebbe |
| [HIVE-12407](https://issues.apache.org/jira/browse/HIVE-12407) | Check fetch property to determine if a SortLimit contains a limit operation |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12406](https://issues.apache.org/jira/browse/HIVE-12406) | HIVE-9500 introduced incompatible change to LazySimpleSerDe public interface |  Blocker | Serializers/Deserializers | Lenni Kuff | Aihua Xu |
| [HIVE-12399](https://issues.apache.org/jira/browse/HIVE-12399) | Native Vector MapJoin can encounter  "Null key not expected in MapJoin" and "Unexpected NULL in map join small table" exceptions |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-12396](https://issues.apache.org/jira/browse/HIVE-12396) | BucketingSortingReduceSinkOptimizer may still throw IOB exception for duplicate columns |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12391](https://issues.apache.org/jira/browse/HIVE-12391) | SkewJoinOptimizer might not kick in if columns are renamed after TableScanOperator |  Major | Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12388](https://issues.apache.org/jira/browse/HIVE-12388) | GetTables cannot get external tables when TABLE type argument is given |  Critical | JDBC | Navis | Navis |
| [HIVE-12385](https://issues.apache.org/jira/browse/HIVE-12385) | schematool failed on MySQL |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-12384](https://issues.apache.org/jira/browse/HIVE-12384) | Union Operator may produce incorrect result on TEZ |  Major | Hive | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-12378](https://issues.apache.org/jira/browse/HIVE-12378) | Exception on HBaseSerDe.serialize binary field |  Major | HBase Handler, Serializers/Deserializers | Yongzhi Chen | Yongzhi Chen |
| [HIVE-12365](https://issues.apache.org/jira/browse/HIVE-12365) | Added resource path is sent to cluster as an empty string when externally removed |  Major | Hive | Chaoyu Tang | Chaoyu Tang |
| [HIVE-12364](https://issues.apache.org/jira/browse/HIVE-12364) | Distcp job fails when run under Tez |  Critical | Tez | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12363](https://issues.apache.org/jira/browse/HIVE-12363) | Incorrect results with orc ppd across ORC versions |  Major | . | Ashutosh Chauhan | Gopal V |
| [HIVE-12354](https://issues.apache.org/jira/browse/HIVE-12354) | MapJoin with double keys is slow on MR |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12349](https://issues.apache.org/jira/browse/HIVE-12349) | NPE in ORC SARG for IS NULL queries on Timestamp and Date columns |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12346](https://issues.apache.org/jira/browse/HIVE-12346) | Internally used variables in HiveConf should not be settable via command |  Major | Configuration | Chaoyu Tang | Chaoyu Tang |
| [HIVE-12345](https://issues.apache.org/jira/browse/HIVE-12345) | Followup for HIVE-9013 : Hidden conf vars still visible through beeline |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-12344](https://issues.apache.org/jira/browse/HIVE-12344) | Wrong types inferred for SemiJoin generation in CBO |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12341](https://issues.apache.org/jira/browse/HIVE-12341) | LLAP: add security to daemon protocol endpoint (excluding shuffle) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12340](https://issues.apache.org/jira/browse/HIVE-12340) | ExecDriver.execute() unnecessarily sets METASTOREPWD to HIVE |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-12333](https://issues.apache.org/jira/browse/HIVE-12333) | tez\_union\_with\_udf.q added to wrong section in testconfiguration.properties |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-12332](https://issues.apache.org/jira/browse/HIVE-12332) | BucketingSortingReduceSinkOptimizer throws IOB exception for duplicate columns |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12330](https://issues.apache.org/jira/browse/HIVE-12330) | Fix precommit Spark test part2 |  Major | Testing Infrastructure | Szehon Ho | Sergio Peña |
| [HIVE-12327](https://issues.apache.org/jira/browse/HIVE-12327) | WebHCat e2e tests TestJob\_1 and TestJob\_2 fail |  Major | WebHCat | Daniel Dai | Daniel Dai |
| [HIVE-12318](https://issues.apache.org/jira/browse/HIVE-12318) | qtest failing due to NPE in logStats |  Blocker | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12315](https://issues.apache.org/jira/browse/HIVE-12315) | vectorization\_short\_regress.q has a wrong result issue for a double calculation |  Critical | Vectorization | Matt McCline | Gopal V |
| [HIVE-12312](https://issues.apache.org/jira/browse/HIVE-12312) | Excessive logging in PPD code |  Minor | Hive | Carter Shanklin | Carter Shanklin |
| [HIVE-12311](https://issues.apache.org/jira/browse/HIVE-12311) | explain CTAS fails if the table already exists |  Minor | Hive | Carter Shanklin | Gunther Hagleitner |
| [HIVE-12310](https://issues.apache.org/jira/browse/HIVE-12310) | Update memory estimation login in TopNHash |  Major | Query Processor | Thejas M Nair | Hari Sankar Sivarama Subramaniyan |
| [HIVE-12307](https://issues.apache.org/jira/browse/HIVE-12307) | Streaming API TransactionBatch.close() must abort any remaining transactions in the batch |  Major | HCatalog, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-12306](https://issues.apache.org/jira/browse/HIVE-12306) | fix hbase\_queries.q failure |  Trivial | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-12304](https://issues.apache.org/jira/browse/HIVE-12304) | "drop database cascade" needs to unregister functions |  Major | Query Processor | Aihua Xu | Aihua Xu |
| [HIVE-12302](https://issues.apache.org/jira/browse/HIVE-12302) | Use KryoPool instead of thread-local caching |  Major | Query Processor | Gopal V | Prasanth Jayachandran |
| [HIVE-12295](https://issues.apache.org/jira/browse/HIVE-12295) | change some logs from info to debug |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12294](https://issues.apache.org/jira/browse/HIVE-12294) | log line "Duplicate ID \<number\> in column ID list" appears in the logs |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12292](https://issues.apache.org/jira/browse/HIVE-12292) | revert the if removal from HIVE-12237 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12291](https://issues.apache.org/jira/browse/HIVE-12291) | Master: Update errata.txt for HIVE-12272 |  Trivial | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-12287](https://issues.apache.org/jira/browse/HIVE-12287) | Lineage for lateral view shows wrong dependencies |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12282](https://issues.apache.org/jira/browse/HIVE-12282) | beeline - update command printing in verbose mode |  Major | Beeline | Daniel Dai | Daniel Dai |
| [HIVE-12281](https://issues.apache.org/jira/browse/HIVE-12281) | Vectorized MapJoin - use Operator::isLogDebugEnabled |  Minor | Vectorization | Gopal V | Gopal V |
| [HIVE-12280](https://issues.apache.org/jira/browse/HIVE-12280) | HiveConnection does not try other HS2 after failure for service discovery |  Major | Hive | Szehon Ho | Szehon Ho |
| [HIVE-12278](https://issues.apache.org/jira/browse/HIVE-12278) | Skip logging lineage for explain queries |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12277](https://issues.apache.org/jira/browse/HIVE-12277) | Hive macro results on macro\_duplicate.q different after adding ORDER BY |  Major | Macros | Jason Dere | Pengcheng Xiong |
| [HIVE-12268](https://issues.apache.org/jira/browse/HIVE-12268) | Context leaks deleteOnExit paths |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12266](https://issues.apache.org/jira/browse/HIVE-12266) | When client exists abnormally, it doesn't release ACID locks |  Major | Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-12263](https://issues.apache.org/jira/browse/HIVE-12263) | Hive SchemaTool does not tolerate leading spaces in JDBC url |  Major | . | Chen Xin Yu | Chen Xin Yu |
| [HIVE-12262](https://issues.apache.org/jira/browse/HIVE-12262) | Session log dir cannot be created in some cases |  Major | HiveServer2 | Daniel Dai | Daniel Dai |
| [HIVE-12261](https://issues.apache.org/jira/browse/HIVE-12261) | schematool version info exit status should depend on compatibility, not equality |  Major | Metastore | Thejas M Nair | Thejas M Nair |
| [HIVE-12260](https://issues.apache.org/jira/browse/HIVE-12260) | Fix TestColumnStatistics and TestJsonFileDump test failures in master |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12257](https://issues.apache.org/jira/browse/HIVE-12257) | Enhance ORC FileDump utility to handle flush\_length files and recovery |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12253](https://issues.apache.org/jira/browse/HIVE-12253) | revert HIVE-12061 |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12250](https://issues.apache.org/jira/browse/HIVE-12250) | Zookeeper connection leaks in Hive's HBaseHandler. |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-12249](https://issues.apache.org/jira/browse/HIVE-12249) | Improve logging with tez |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-12246](https://issues.apache.org/jira/browse/HIVE-12246) | Orc FileDump fails with Missing CLI jar |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12238](https://issues.apache.org/jira/browse/HIVE-12238) | Vectorization: Thread-safety errors in VectorUDFDate |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-12234](https://issues.apache.org/jira/browse/HIVE-12234) | Beeline quit tries to connect again if no existing connections |  Minor | . | Szehon Ho | Ferdinand Xu |
| [HIVE-12230](https://issues.apache.org/jira/browse/HIVE-12230) | custom UDF configure() not called in Vectorization mode |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-12229](https://issues.apache.org/jira/browse/HIVE-12229) | Custom script in query cannot be executed in yarn-cluster mode [Spark Branch]. |  Major | Spark | Lifeng Wang | Rui Li |
| [HIVE-12227](https://issues.apache.org/jira/browse/HIVE-12227) | LLAP: better column vector object pools |  Major | . | Gopal V | Sergey Shelukhin |
| [HIVE-12225](https://issues.apache.org/jira/browse/HIVE-12225) | LineageCtx should release all resources at clear |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12223](https://issues.apache.org/jira/browse/HIVE-12223) | Filter on Grouping\_\_ID does not work properly |  Major | Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12218](https://issues.apache.org/jira/browse/HIVE-12218) | Unable to create a like table for an hbase backed table |  Major | Query Processor | Chaoyu Tang | Chaoyu Tang |
| [HIVE-12215](https://issues.apache.org/jira/browse/HIVE-12215) | Exchange partition does not show outputs field for post/pre execute hooks |  Major | Query Processor | Aihua Xu | Aihua Xu |
| [HIVE-12210](https://issues.apache.org/jira/browse/HIVE-12210) | Fix a few failing tests: testCliDriver\_udf\_explode and testCliDriver\_udtf\_explode |  Major | . | Aleksei Statkevich | Aleksei Statkevich |
| [HIVE-12208](https://issues.apache.org/jira/browse/HIVE-12208) | Vectorized JOIN NPE on dynamically partitioned hash-join + map-join |  Major | Vectorization | Gopal V | Gunther Hagleitner |
| [HIVE-12207](https://issues.apache.org/jira/browse/HIVE-12207) | Query fails when non-ascii characters are used in string literals |  Major | . | Aleksei Statkevich | Aleksei Statkevich |
| [HIVE-12206](https://issues.apache.org/jira/browse/HIVE-12206) | ClassNotFound Exception during query compilation with Tez and Union query and GenericUDFs |  Major | Tez, UDF | Jason Dere | Jason Dere |
| [HIVE-12204](https://issues.apache.org/jira/browse/HIVE-12204) | Tez queries stopped running with ApplicationNotRunningException |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-12201](https://issues.apache.org/jira/browse/HIVE-12201) | Tez settings need to be shown in set -v output when execution engine is tez. |  Minor | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-12200](https://issues.apache.org/jira/browse/HIVE-12200) | INSERT INTO table using a select statement w/o a FROM clause fails |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12198](https://issues.apache.org/jira/browse/HIVE-12198) | LLAP: reader failures when querying uncompressed data |  Major | . | Gopal V | Sergey Shelukhin |
| [HIVE-12189](https://issues.apache.org/jira/browse/HIVE-12189) | The list in pushdownPreds of ppd.ExprWalkerInfo should not be allowed to grow very large |  Major | Logical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-12188](https://issues.apache.org/jira/browse/HIVE-12188) | DoAs does not work properly in non-kerberos secured HS2 |  Major | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-12182](https://issues.apache.org/jira/browse/HIVE-12182) | ALTER TABLE PARTITION COLUMN does not set partition column comments |  Major | SQL | Lenni Kuff | Naveen Gangam |
| [HIVE-12179](https://issues.apache.org/jira/browse/HIVE-12179) | Add option to not add spark-assembly.jar to Hive classpath |  Major | Spark | Jason Dere | Jason Dere |
| [HIVE-12178](https://issues.apache.org/jira/browse/HIVE-12178) | LLAP: NPE in LRFU policy |  Major | . | Siddharth Seth | Sergey Shelukhin |
| [HIVE-12171](https://issues.apache.org/jira/browse/HIVE-12171) | LLAP: BuddyAllocator failures when querying uncompressed data |  Major | . | Gopal V | Sergey Shelukhin |
| [HIVE-12170](https://issues.apache.org/jira/browse/HIVE-12170) | normalize HBase metastore connection configuration |  Blocker | . | Sergey Shelukhin | Alan Gates |
| [HIVE-12166](https://issues.apache.org/jira/browse/HIVE-12166) | LLAP: Cache read error at 1000 Gb scale tests |  Major | Query Processor | Gopal V | Sergey Shelukhin |
| [HIVE-12156](https://issues.apache.org/jira/browse/HIVE-12156) | expanding view doesn't quote reserved keyword |  Major | Parser | Jay Lee | Pengcheng Xiong |
| [HIVE-12090](https://issues.apache.org/jira/browse/HIVE-12090) | Dead-code: Vectorized map-join murmur hash is run twice |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-12084](https://issues.apache.org/jira/browse/HIVE-12084) | Hive queries with ORDER BY and large LIMIT fails with OutOfMemoryError Java heap space |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-12083](https://issues.apache.org/jira/browse/HIVE-12083) | HIVE-10965 introduces thrift error if partNames or colNames are empty |  Major | Metastore | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-12082](https://issues.apache.org/jira/browse/HIVE-12082) | Null comparison for greatest and least operator |  Major | UDF | Szehon Ho | Szehon Ho |
| [HIVE-12076](https://issues.apache.org/jira/browse/HIVE-12076) | WebHCat listing jobs after the given JobId even when templeton.jobs.listorder is set to lexicographicaldesc |  Major | . | Kiran Kumar Kolli | Kiran Kumar Kolli |
| [HIVE-12065](https://issues.apache.org/jira/browse/HIVE-12065) | FS stats collection may generate incorrect stats for multi-insert query |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12062](https://issues.apache.org/jira/browse/HIVE-12062) | enable HBase metastore file metadata cache for tez tests |  Major | Tests | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12061](https://issues.apache.org/jira/browse/HIVE-12061) | add file type support to file metadata by expr call |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12060](https://issues.apache.org/jira/browse/HIVE-12060) | LLAP: create separate variable for llap tests |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12058](https://issues.apache.org/jira/browse/HIVE-12058) | Change hive script to record errors when calling hbase fails |  Major | Hive, HiveServer2 | Yongzhi Chen | Yongzhi Chen |
| [HIVE-12057](https://issues.apache.org/jira/browse/HIVE-12057) | ORC sarg is logged too much |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12053](https://issues.apache.org/jira/browse/HIVE-12053) | Stats performance regression caused by HIVE-11786 |  Major | Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-12048](https://issues.apache.org/jira/browse/HIVE-12048) | metastore file metadata cache should not be used when deltas are present |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12046](https://issues.apache.org/jira/browse/HIVE-12046) | Re-create spark client if connection is dropped |  Minor | Spark | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12032](https://issues.apache.org/jira/browse/HIVE-12032) | Add unit test for HIVE-9855 |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-12027](https://issues.apache.org/jira/browse/HIVE-12027) | simplify file metadata cache ppd api |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12026](https://issues.apache.org/jira/browse/HIVE-12026) | Add test case to check permissions when truncating partition |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-12021](https://issues.apache.org/jira/browse/HIVE-12021) | HivePreFilteringRule may introduce wrong common operands |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12018](https://issues.apache.org/jira/browse/HIVE-12018) | beeline --help doesn't return to original prompt |  Minor | Beeline | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [HIVE-12012](https://issues.apache.org/jira/browse/HIVE-12012) | select query on json table with map containing numeric values fails |  Major | Serializers/Deserializers | Jagruti Varia | Jason Dere |
| [HIVE-12011](https://issues.apache.org/jira/browse/HIVE-12011) | unable to create temporary table using CTAS if regular table with that name already exists |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-12008](https://issues.apache.org/jira/browse/HIVE-12008) | Hive queries failing when using count(\*) on column in view |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-12004](https://issues.apache.org/jira/browse/HIVE-12004) | SDPO doesnt set colExprMap correctly on new RS |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11995](https://issues.apache.org/jira/browse/HIVE-11995) | Remove repetitively setting permissions in insert/load overwrite partition |  Major | Security | Chaoyu Tang | Chaoyu Tang |
| [HIVE-11990](https://issues.apache.org/jira/browse/HIVE-11990) | Loading data inpath from a temporary table dir fails on Windows |  Major | . | Takahiko Saito | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11989](https://issues.apache.org/jira/browse/HIVE-11989) | vector\_groupby\_reduce.q is failing on CLI and MiniTez drivers on master |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11988](https://issues.apache.org/jira/browse/HIVE-11988) | [hive] security issue with hive & ranger for import table command |  Critical | Hive | Deepak Sharma | Sushanth Sowmyan |
| [HIVE-11985](https://issues.apache.org/jira/browse/HIVE-11985) | don't store type names in metastore when metastore type names are not used |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11982](https://issues.apache.org/jira/browse/HIVE-11982) | Some test cases for union all fail with recent changes |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11981](https://issues.apache.org/jira/browse/HIVE-11981) | ORC Schema Evolution Issues (Vectorized, ACID, and Non-Vectorized) |  Critical | Hive, Transactions | Matt McCline | Matt McCline |
| [HIVE-11980](https://issues.apache.org/jira/browse/HIVE-11980) | Follow up on HIVE-11696, exception is thrown from CTAS from the table with table-level serde is Parquet while partition-level serde is JSON |  Major | Serializers/Deserializers | Aihua Xu | Aihua Xu |
| [HIVE-11977](https://issues.apache.org/jira/browse/HIVE-11977) | Hive should handle an external avro table with zero length files present |  Major | Serializers/Deserializers | Aaron Dossett | Aaron Dossett |
| [HIVE-11975](https://issues.apache.org/jira/browse/HIVE-11975) | mssql scripts contains invalid 'GO' statement |  Minor | Metastore | Huan Huang | Sushanth Sowmyan |
| [HIVE-11973](https://issues.apache.org/jira/browse/HIVE-11973) | IN operator fails when the column type is DATE |  Major | Query Processor | sanjiv singh | Yongzhi Chen |
| [HIVE-11970](https://issues.apache.org/jira/browse/HIVE-11970) | COLUMNS\_V2 table in metastore should have a longer name field |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11969](https://issues.apache.org/jira/browse/HIVE-11969) | start Tez session in background when starting CLI |  Major | Tez | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11964](https://issues.apache.org/jira/browse/HIVE-11964) | RelOptHiveTable.hiveColStatsMap might contain mismatched column stats |  Major | Query Planning, Statistics | Chaoyu Tang | Chaoyu Tang |
| [HIVE-11960](https://issues.apache.org/jira/browse/HIVE-11960) | braces in join conditions are not supported |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11954](https://issues.apache.org/jira/browse/HIVE-11954) | Extend logic to choose side table in MapJoin Conversion algorithm |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11952](https://issues.apache.org/jira/browse/HIVE-11952) | disable q tests that are both slow and less relevant |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11950](https://issues.apache.org/jira/browse/HIVE-11950) | WebHCat status file doesn't show UTF8 character |  Major | WebHCat | Daniel Dai | Daniel Dai |
| [HIVE-11945](https://issues.apache.org/jira/browse/HIVE-11945) | ORC with non-local reads may not be reusing connection to DN |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-11940](https://issues.apache.org/jira/browse/HIVE-11940) | "INSERT OVERWRITE" query is very slow because it creates one "distcp" per file to copy data from staging directory to target directory |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-11939](https://issues.apache.org/jira/browse/HIVE-11939) | TxnDbUtil should turn off jdbc auto commit |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11932](https://issues.apache.org/jira/browse/HIVE-11932) | JDBC Driver appends an extra "/" when configuring connection by reading httpPath from ZooKeeper |  Major | JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-11928](https://issues.apache.org/jira/browse/HIVE-11928) | ORC footer and metadata section can also exceed protobuf message limit |  Major | . | Jagruti Varia | Prasanth Jayachandran |
| [HIVE-11926](https://issues.apache.org/jira/browse/HIVE-11926) | Stats annotation might not extract stats for varchar/decimal columns |  Major | Logical Optimizer, Statistics | Chaoyu Tang | Chaoyu Tang |
| [HIVE-11925](https://issues.apache.org/jira/browse/HIVE-11925) | Hive file format checking breaks load from named pipes |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11922](https://issues.apache.org/jira/browse/HIVE-11922) | Better error message when ORC split generation fails |  Trivial | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11920](https://issues.apache.org/jira/browse/HIVE-11920) | ADD JAR failing with URL schemes other than file/ivy/hdfs |  Major | . | Jason Dere | Jason Dere |
| [HIVE-11919](https://issues.apache.org/jira/browse/HIVE-11919) | Hive Union Type Mismatch |  Major | . | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-11915](https://issues.apache.org/jira/browse/HIVE-11915) | BoneCP returns closed connections from the pool |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-11911](https://issues.apache.org/jira/browse/HIVE-11911) | The stats table limits are too large for innodb |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11910](https://issues.apache.org/jira/browse/HIVE-11910) | TestHCatLoaderEncryption should shutdown created MiniDFS instance |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-11902](https://issues.apache.org/jira/browse/HIVE-11902) | Abort txn cleanup thread throws SyntaxErrorException |  Major | Transactions | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-11901](https://issues.apache.org/jira/browse/HIVE-11901) | StorageBasedAuthorizationProvider requires write permission on table for SELECT statements |  Major | Authorization | Chengbing Liu | Chengbing Liu |
| [HIVE-11898](https://issues.apache.org/jira/browse/HIVE-11898) | support default partition in metastoredirectsql |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11897](https://issues.apache.org/jira/browse/HIVE-11897) | JDO rollback can throw pointless exceptions |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11892](https://issues.apache.org/jira/browse/HIVE-11892) | UDTF run in local fetch task does not return rows forwarded during GenericUDTF.close() |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-11889](https://issues.apache.org/jira/browse/HIVE-11889) | Add unit test for HIVE-11449 |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-11878](https://issues.apache.org/jira/browse/HIVE-11878) | ClassNotFoundException can possibly  occur if multiple jars are registered one at a time in Hive |  Major | Hive | Ratandeep Ratti | Ratandeep Ratti |
| [HIVE-11875](https://issues.apache.org/jira/browse/HIVE-11875) | JDBC Driver does not honor delegation token mechanism when readings params from ZooKeeper |  Major | JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-11860](https://issues.apache.org/jira/browse/HIVE-11860) | StatsNoJobTask fails to collect fast stats when table have subdirectories |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11856](https://issues.apache.org/jira/browse/HIVE-11856) | allow split strategies to run on threadpool |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11849](https://issues.apache.org/jira/browse/HIVE-11849) | NPE in HiveHBaseTableShapshotInputFormat in query with just count(\*) |  Major | HBase Handler | Jason Dere | Enis Soztutar |
| [HIVE-11846](https://issues.apache.org/jira/browse/HIVE-11846) | CliDriver shutdown tries to drop index table again which was already dropped when dropping the original table |  Critical | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11843](https://issues.apache.org/jira/browse/HIVE-11843) | Add 'sort by c' to Parquet PPD q-tests to avoid different output issues with hadoop-1 |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-11842](https://issues.apache.org/jira/browse/HIVE-11842) | Improve RuleRegExp by caching some internal data structures |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11841](https://issues.apache.org/jira/browse/HIVE-11841) | KeyValuesInputMerger creates huge logs |  Major | Logging | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-11839](https://issues.apache.org/jira/browse/HIVE-11839) | Vectorization wrong results with filter of (CAST AS CHAR) |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-11838](https://issues.apache.org/jira/browse/HIVE-11838) | Another positive test case for HIVE-11658 |  Major | . | Deepesh Khandelwal | Prasanth Jayachandran |
| [HIVE-11835](https://issues.apache.org/jira/browse/HIVE-11835) | Type decimal(1,1) reads 0.0, 0.00, etc from text file as NULL |  Major | Types | Xuefu Zhang | Xuefu Zhang |
| [HIVE-11834](https://issues.apache.org/jira/browse/HIVE-11834) | Lineage doesn't work with dynamic partitioning query |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11833](https://issues.apache.org/jira/browse/HIVE-11833) | TxnHandler heartbeat txn doesn't need serializable DB txn level |  Major | Transactions | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11832](https://issues.apache.org/jira/browse/HIVE-11832) | HIVE-11802 breaks compilation in JDK 8 |  Major | . | Prasanth Jayachandran | Sergio Peña |
| [HIVE-11831](https://issues.apache.org/jira/browse/HIVE-11831) | TXN tables in Oracle should be created with ROWDEPENDENCIES |  Major | Transactions | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11829](https://issues.apache.org/jira/browse/HIVE-11829) | Create test for HIVE-11216 |  Major | Tests | Vikram Dixit K | Vikram Dixit K |
| [HIVE-11827](https://issues.apache.org/jira/browse/HIVE-11827) | STORED AS AVRO fails SELECT COUNT(\*) when empty |  Minor | Serializers/Deserializers | Johndee Burks | Yongzhi Chen |
| [HIVE-11826](https://issues.apache.org/jira/browse/HIVE-11826) | 'hadoop.proxyuser.hive.groups' configuration doesn't prevent unauthorized user to access metastore |  Major | Metastore | Aihua Xu | Aihua Xu |
| [HIVE-11825](https://issues.apache.org/jira/browse/HIVE-11825) | get\_json\_object(col,'$.a') is null in where clause didn`t work |  Critical | Hive | Feng Yuan | Cazen Lee |
| [HIVE-11824](https://issues.apache.org/jira/browse/HIVE-11824) | Insert to local directory causes staging directory to be copied |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11823](https://issues.apache.org/jira/browse/HIVE-11823) | create a self-contained translation for SARG to be used by metastore |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11822](https://issues.apache.org/jira/browse/HIVE-11822) | vectorize NVL UDF |  Major | . | Sergey Shelukhin | Takanobu Asanuma |
| [HIVE-11821](https://issues.apache.org/jira/browse/HIVE-11821) | JDK8 strict build broken for master |  Major | Physical Optimizer | Gopal V | Gopal V |
| [HIVE-11820](https://issues.apache.org/jira/browse/HIVE-11820) | export tables with size of \>32MB throws "java.lang.IllegalArgumentException: Skip CRC is valid only with update options" |  Major | Hive | Takahiko Saito | Takahiko Saito |
| [HIVE-11819](https://issues.apache.org/jira/browse/HIVE-11819) | HiveServer2 catches OOMs on request threads |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11817](https://issues.apache.org/jira/browse/HIVE-11817) | Window function max NullPointerException |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11813](https://issues.apache.org/jira/browse/HIVE-11813) | Avoid expensive AST tree conversion to String for expressions in WHERE clause in CBO |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11802](https://issues.apache.org/jira/browse/HIVE-11802) | Float-point numbers are displayed with different precision in Beeline/JDBC |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-11794](https://issues.apache.org/jira/browse/HIVE-11794) | GBY vectorization appears to process COMPLETE reduce-side GBY incorrectly |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11792](https://issues.apache.org/jira/browse/HIVE-11792) | User explain in tez does not preserve ordering |  Major | Diagnosability | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11786](https://issues.apache.org/jira/browse/HIVE-11786) | Deprecate the use of redundant column in colunm stats related tables |  Major | Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-11781](https://issues.apache.org/jira/browse/HIVE-11781) | Remove HiveLimit operator and rename HiveSort operator |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11777](https://issues.apache.org/jira/browse/HIVE-11777) | implement an option to have single ETL strategy for multiple directories |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11771](https://issues.apache.org/jira/browse/HIVE-11771) | Parquet timestamp conversion errors |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11768](https://issues.apache.org/jira/browse/HIVE-11768) | java.io.DeleteOnExitHook leaks memory on long running Hive Server2 Instances |  Minor | HiveServer2 | Nemon Lou | Navis |
| [HIVE-11762](https://issues.apache.org/jira/browse/HIVE-11762) | TestHCatLoaderEncryption failures when using Hadoop 2.7 |  Major | Shims, Tests | Jason Dere | Jason Dere |
| [HIVE-11761](https://issues.apache.org/jira/browse/HIVE-11761) | DoubleWritable hashcode for GroupBy is not properly generated |  Major | Hive | Aihua Xu | Aihua Xu |
| [HIVE-11755](https://issues.apache.org/jira/browse/HIVE-11755) | Incorrect method called with Kerberos enabled in AccumuloStorageHandler |  Major | Accumulo Storage Handler | Josh Elser | Josh Elser |
| [HIVE-11751](https://issues.apache.org/jira/browse/HIVE-11751) | hive-exec-log4j2.xml settings causes DEBUG messages to be generated and ignored |  Major | . | Rajesh Balamohan | Prasanth Jayachandran |
| [HIVE-11748](https://issues.apache.org/jira/browse/HIVE-11748) | HivePreparedStatement's setTimestamp() does not quote value as required |  Major | JDBC | Angus Smithson | Angus Smithson |
| [HIVE-11747](https://issues.apache.org/jira/browse/HIVE-11747) | Unnecessary error log is shown when executing a "INSERT OVERWRITE LOCAL DIRECTORY" cmd in the embedded mode |  Minor | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-11745](https://issues.apache.org/jira/browse/HIVE-11745) | Alter table Exchange partition with multiple partition\_spec is not working |  Major | Metastore | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11737](https://issues.apache.org/jira/browse/HIVE-11737) | IndexOutOfBounds compiling query with duplicated groupby keys |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11726](https://issues.apache.org/jira/browse/HIVE-11726) | Pushed IN predicates to the metastore |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11723](https://issues.apache.org/jira/browse/HIVE-11723) | Incorrect string literal escaping |  Major | . | Uri Laserson | Yongzhi Chen |
| [HIVE-11721](https://issues.apache.org/jira/browse/HIVE-11721) | non-ascii characters shows improper with "insert into" |  Major | Database/Schema | Jun Yin | Aleksei Statkevich |
| [HIVE-11714](https://issues.apache.org/jira/browse/HIVE-11714) | Turn off hybrid grace hash join for cross product join |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-11712](https://issues.apache.org/jira/browse/HIVE-11712) | Duplicate groupby keys cause ClassCastException |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11710](https://issues.apache.org/jira/browse/HIVE-11710) | Beeline embedded mode doesn't output query progress after setting any session property |  Major | Beeline | Aihua Xu | Aihua Xu |
| [HIVE-11705](https://issues.apache.org/jira/browse/HIVE-11705) | refactor SARG stripe filtering for ORC into a separate method |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11704](https://issues.apache.org/jira/browse/HIVE-11704) | Create errata.txt file |  Major | Documentation | Owen O'Malley | Owen O'Malley |
| [HIVE-11698](https://issues.apache.org/jira/browse/HIVE-11698) | Add additional test for PointLookupOptimizer |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11696](https://issues.apache.org/jira/browse/HIVE-11696) | Exception when table-level serde is Parquet while partition-level serde is JSON |  Major | Serializers/Deserializers | Aihua Xu | Aihua Xu |
| [HIVE-11695](https://issues.apache.org/jira/browse/HIVE-11695) | If user have no permission to  create LOCAL DIRECTORY ，the Hql does not throw any exception and fail silently. |  Major | Query Processor | WangMeng | WangMeng |
| [HIVE-11689](https://issues.apache.org/jira/browse/HIVE-11689) | minor flow changes to ORC split generation |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11688](https://issues.apache.org/jira/browse/HIVE-11688) | OrcRawRecordMerger does not close primary reader if not fully consumed |  Major | File Formats | Sudheesh Katkam | Sudheesh Katkam |
| [HIVE-11676](https://issues.apache.org/jira/browse/HIVE-11676) | implement metastore API to do file footer PPD |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11670](https://issues.apache.org/jira/browse/HIVE-11670) | Strip out password information from TezSessionState configuration |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11669](https://issues.apache.org/jira/browse/HIVE-11669) | OrcFileDump service should support directories |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11668](https://issues.apache.org/jira/browse/HIVE-11668) | make sure directsql calls pre-query init when needed |  Major | Metastore | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11658](https://issues.apache.org/jira/browse/HIVE-11658) | Load data file format validation does not work with directories |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11657](https://issues.apache.org/jira/browse/HIVE-11657) | HIVE-2573 introduces some issues during metastore init (and CLI init) |  Critical | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11652](https://issues.apache.org/jira/browse/HIVE-11652) | Avoid expensive call to removeAll in DefaultGraphWalker |  Major | Logical Optimizer, Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11616](https://issues.apache.org/jira/browse/HIVE-11616) | DelegationTokenSecretManager reuses the same objectstore, which has concurrency issues |  Major | Metastore | wangwenli | Sergey Shelukhin |
| [HIVE-11613](https://issues.apache.org/jira/browse/HIVE-11613) | schematool should return non zero exit status for info command, if state is inconsistent |  Major | Metastore | Thejas M Nair | Thejas M Nair |
| [HIVE-11607](https://issues.apache.org/jira/browse/HIVE-11607) | Export tables broken for data \> 32 MB |  Major | Import/Export | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11606](https://issues.apache.org/jira/browse/HIVE-11606) | Bucket map joins fail at hash table construction time |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-11605](https://issues.apache.org/jira/browse/HIVE-11605) | Incorrect results with bucket map join in tez. |  Critical | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-11604](https://issues.apache.org/jira/browse/HIVE-11604) | HIVE return wrong results in some queries with PTF function |  Major | Logical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11602](https://issues.apache.org/jira/browse/HIVE-11602) | Support Struct with different field types in query |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11596](https://issues.apache.org/jira/browse/HIVE-11596) | nvl(x, y) throws NPE if type x and type y doesn't match, rather than throwing the meaningful error |  Minor | Hive | Aihua Xu | Aihua Xu |
| [HIVE-11595](https://issues.apache.org/jira/browse/HIVE-11595) | refactor ORC footer reading to make it usable from outside |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11594](https://issues.apache.org/jira/browse/HIVE-11594) | Analyze Table For Columns cannot handle columns with embedded spaces |  Major | Statistics | Gopal V | Gopal V |
| [HIVE-11592](https://issues.apache.org/jira/browse/HIVE-11592) | ORC metadata section can sometimes exceed protobuf message size limit |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11591](https://issues.apache.org/jira/browse/HIVE-11591) | upgrade thrift to 0.9.3 and change generation to use undated annotations |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11590](https://issues.apache.org/jira/browse/HIVE-11590) | AvroDeserializer is very chatty |  Major | Serializers/Deserializers | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-11587](https://issues.apache.org/jira/browse/HIVE-11587) | Fix memory estimates for mapjoin hashtable |  Major | Hive | Sergey Shelukhin | Wei Zheng |
| [HIVE-11586](https://issues.apache.org/jira/browse/HIVE-11586) | ObjectInspectorFactory.getReflectionObjectInspector is not thread-safe |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11583](https://issues.apache.org/jira/browse/HIVE-11583) | When PTF is used over a large partitions result could be corrupted |  Critical | PTF-Windowing | Illya Yalovyy | Illya Yalovyy |
| [HIVE-11581](https://issues.apache.org/jira/browse/HIVE-11581) | HiveServer2 should store connection params in ZK when using dynamic service discovery for simpler client connection string. |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-11580](https://issues.apache.org/jira/browse/HIVE-11580) | ThriftUnionObjectInspector#toString throws NPE |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11578](https://issues.apache.org/jira/browse/HIVE-11578) | ATS hook fails for ExplainWork |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-11573](https://issues.apache.org/jira/browse/HIVE-11573) | PointLookupOptimizer can be pessimistic at a low nDV |  Major | . | Gopal V | Gopal V |
| [HIVE-11556](https://issues.apache.org/jira/browse/HIVE-11556) | HiveFilter.copy should take the condition given as a parameter |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11553](https://issues.apache.org/jira/browse/HIVE-11553) | use basic file metadata cache in ETLSplitStrategy-related paths |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11549](https://issues.apache.org/jira/browse/HIVE-11549) | Hide Hive configuration from spark driver launching process |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-11546](https://issues.apache.org/jira/browse/HIVE-11546) | Projected columns read size should be scaled to split size for ORC Splits |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11542](https://issues.apache.org/jira/browse/HIVE-11542) | port fileId support on shims and splits from llap branch |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11541](https://issues.apache.org/jira/browse/HIVE-11541) | ORC: Split Strategy should depend on global file count, not per-partition |  Major | File Formats | Gopal V | Gopal V |
| [HIVE-11540](https://issues.apache.org/jira/browse/HIVE-11540) | Too many delta files during Compaction - OOM |  Major | Transactions | Nivin Mathew | Eugene Koifman |
| [HIVE-11523](https://issues.apache.org/jira/browse/HIVE-11523) | org.apache.hadoop.hive.ql.io.orc.FileDump should handle errors |  Major | File Formats | Eugene Koifman | Prasanth Jayachandran |
| [HIVE-11517](https://issues.apache.org/jira/browse/HIVE-11517) | Vectorized auto\_smb\_mapjoin\_14.q produces different results |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-11511](https://issues.apache.org/jira/browse/HIVE-11511) | Output the message of orcfiledump when ORC files are not specified |  Major | . | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-11510](https://issues.apache.org/jira/browse/HIVE-11510) | Metatool updateLocation warning on views |  Major | Database/Schema | Eric Czech | Wei Zheng |
| [HIVE-11502](https://issues.apache.org/jira/browse/HIVE-11502) | Map side aggregation is extremely slow |  Major | Logical Optimizer, Physical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11501](https://issues.apache.org/jira/browse/HIVE-11501) | HiveConnection.readOnly always throws a "Method not supported" exception |  Major | . | Michał Węgrzyn | Michał Węgrzyn |
| [HIVE-11499](https://issues.apache.org/jira/browse/HIVE-11499) | Datanucleus leaks classloaders when used using embedded metastore with HiveServer2 with UDFs |  Major | HiveServer2, Metastore | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-11498](https://issues.apache.org/jira/browse/HIVE-11498) | HIVE Authorization v2 should not check permission for dummy entity |  Major | Authorization | Dapeng Sun | Dapeng Sun |
| [HIVE-11497](https://issues.apache.org/jira/browse/HIVE-11497) | Make sure --orcfiledump utility includes OrcRecordUpdate.AcidStats |  Major | Transactions | Eugene Koifman | Prasanth Jayachandran |
| [HIVE-11493](https://issues.apache.org/jira/browse/HIVE-11493) | Predicate with integer column equals double evaluates to false |  Blocker | Query Planning | Prasanth Jayachandran | Pengcheng Xiong |
| [HIVE-11490](https://issues.apache.org/jira/browse/HIVE-11490) | Lazily call ASTNode::toStringTree() after tree modification |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11476](https://issues.apache.org/jira/browse/HIVE-11476) | TypeInfoParser cannot handle column names with spaces in them |  Minor | Types | Gopal V | Gopal V |
| [HIVE-11473](https://issues.apache.org/jira/browse/HIVE-11473) | Upgrade Spark dependency to 1.5 [Spark Branch] |  Major | Spark | Jimmy Xiang | Rui Li |
| [HIVE-11472](https://issues.apache.org/jira/browse/HIVE-11472) | ORC StringDirectTreeReader is thrashing the GC due to byte[] allocation per row |  Minor | . | Gopal V | Gopal V |
| [HIVE-11469](https://issues.apache.org/jira/browse/HIVE-11469) | Update doc for InstanceCache to clearly define the contract on the SeedObject |  Major | Serializers/Deserializers | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-11468](https://issues.apache.org/jira/browse/HIVE-11468) | Vectorize: Struct IN() clauses |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-11466](https://issues.apache.org/jira/browse/HIVE-11466) | HIVE-10166 generates more data on hive.log causing Jenkins to fill all the disk. |  Major | . | Sergio Peña | Xuefu Zhang |
| [HIVE-11464](https://issues.apache.org/jira/browse/HIVE-11464) | lineage info missing if there are multiple outputs |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11462](https://issues.apache.org/jira/browse/HIVE-11462) | GenericUDFStruct should constant fold at compile time |  Major | UDF | Gopal V | Gopal V |
| [HIVE-11456](https://issues.apache.org/jira/browse/HIVE-11456) | HCatStorer should honor mapreduce.output.basename |  Critical | . | Rohini Palaniswamy | Mithun Radhakrishnan |
| [HIVE-11452](https://issues.apache.org/jira/browse/HIVE-11452) | HIVE-11321 broke ORC bloom filter index creation |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11451](https://issues.apache.org/jira/browse/HIVE-11451) | SemanticAnalyzer throws IndexOutOfBounds Exception |  Critical | . | Prasanth Jayachandran | Aihua Xu |
| [HIVE-11450](https://issues.apache.org/jira/browse/HIVE-11450) | Resources are not cleaned up properly at multiple places |  Major | JDBC | Nezih Yigitbasi | Nezih Yigitbasi |
| [HIVE-11448](https://issues.apache.org/jira/browse/HIVE-11448) | Support vectorization of Multi-OR and Multi-AND |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-11441](https://issues.apache.org/jira/browse/HIVE-11441) | No DDL allowed on table if user accidentally set table location wrong |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-11434](https://issues.apache.org/jira/browse/HIVE-11434) | Followup for HIVE-10166: reuse existing configurations for prewarming Spark executors |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-11433](https://issues.apache.org/jira/browse/HIVE-11433) | NPE for a multiple inner join query |  Major | Query Processor | Xuefu Zhang | Xuefu Zhang |
| [HIVE-11432](https://issues.apache.org/jira/browse/HIVE-11432) | Hive macro give same result for different arguments |  Major | . | Jay Pandya | Pengcheng Xiong |
| [HIVE-11430](https://issues.apache.org/jira/browse/HIVE-11430) | Followup HIVE-10166: investigate and fix the two test failures |  Major | Test | Xuefu Zhang | Xuefu Zhang |
| [HIVE-11429](https://issues.apache.org/jira/browse/HIVE-11429) | Increase default JDBC result set fetch size (# rows it fetches in one RPC call) to 1000 from 50 |  Major | JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-11428](https://issues.apache.org/jira/browse/HIVE-11428) | Performance: Struct IN() clauses are extremely slow (~10x slower) |  Major | Query Processor | Gopal V | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11426](https://issues.apache.org/jira/browse/HIVE-11426) | lineage3.q fails with -Phadoop-1 |  Minor | Test | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11425](https://issues.apache.org/jira/browse/HIVE-11425) | submitting a query via CLI against a running cluster fails with ClassNotFoundException: org.apache.hadoop.hive.common.type.HiveDecimal |  Major | Hive | Eugene Koifman | Eugene Koifman |
| [HIVE-11422](https://issues.apache.org/jira/browse/HIVE-11422) | Join a ACID table with non-ACID table fail with MR |  Major | Query Processor, Transactions | Daniel Dai | Daniel Dai |
| [HIVE-11413](https://issues.apache.org/jira/browse/HIVE-11413) | Error in detecting availability of HiveSemanticAnalyzerHooks |  Trivial | Query Processor | Raajay Viswanathan | Raajay Viswanathan |
| [HIVE-11407](https://issues.apache.org/jira/browse/HIVE-11407) | JDBC DatabaseMetaData.getTables with large no of tables call leads to HS2 OOM |  Major | HiveServer2 | Thejas M Nair | Sushanth Sowmyan |
| [HIVE-11406](https://issues.apache.org/jira/browse/HIVE-11406) | Vectorization: StringExpr::compare() == 0 is bad for performance |  Major | Vectorization | Gopal V | Matt McCline |
| [HIVE-11405](https://issues.apache.org/jira/browse/HIVE-11405) | Add early termination for recursion in StatsRulesProcFactory$FilterStatsRule.evaluateExpression  for OR expression |  Major | . | Hari Sankar Sivarama Subramaniyan | Prasanth Jayachandran |
| [HIVE-11401](https://issues.apache.org/jira/browse/HIVE-11401) | Predicate push down does not work with Parquet when partitions are in the expression |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-11397](https://issues.apache.org/jira/browse/HIVE-11397) | Parse Hive OR clauses as they are written into the AST |  Major | Logical Optimizer | Gopal V | Jesus Camacho Rodriguez |
| [HIVE-11380](https://issues.apache.org/jira/browse/HIVE-11380) | NPE when FileSinkOperator is not initialized |  Major | Query Processor | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11376](https://issues.apache.org/jira/browse/HIVE-11376) | CombineHiveInputFormat is falling back to HiveInputFormat in case codecs are found for one of the input files |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-11375](https://issues.apache.org/jira/browse/HIVE-11375) | Broken processing of queries containing NOT (x IS NOT NULL and x \<\> 0) |  Major | Logical Optimizer | Mariusz Sakowski | Aihua Xu |
| [HIVE-11372](https://issues.apache.org/jira/browse/HIVE-11372) | join with between predicate comparing integer types returns no rows when ORC format used |  Major | . | N Campbell | Matt McCline |
| [HIVE-11371](https://issues.apache.org/jira/browse/HIVE-11371) | Null pointer exception for nested table query when using ORC versus text |  Major | Vectorization | N Campbell | Matt McCline |
| [HIVE-11356](https://issues.apache.org/jira/browse/HIVE-11356) | SMB join on tez fails when one of the tables is empty |  Major | . | Vikram Dixit K | Vikram Dixit K |
| [HIVE-11344](https://issues.apache.org/jira/browse/HIVE-11344) | HIVE-9845 makes HCatSplit.write modify the split so that PartInfo objects are unusable after it |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-11340](https://issues.apache.org/jira/browse/HIVE-11340) | Create ORC based table using like clause doesn't copy compression property |  Minor | File Formats | Gaurav Kohli | Yongzhi Chen |
| [HIVE-11333](https://issues.apache.org/jira/browse/HIVE-11333) | ColumnPruner prunes columns of UnionOperator that should be kept |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11330](https://issues.apache.org/jira/browse/HIVE-11330) | Add early termination for recursion in StatsRulesProcFactory$FilterStatsRule.evaluateExpression |  Major | Hive, Physical Optimizer | Mostafa Mokhtar | Mostafa Mokhtar |
| [HIVE-11328](https://issues.apache.org/jira/browse/HIVE-11328) | Avoid String representation of expression nodes in ConstantPropagateProcFactory unless necessary |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11319](https://issues.apache.org/jira/browse/HIVE-11319) | CTAS with location qualifier overwrites directories |  Major | Parser, Security | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11316](https://issues.apache.org/jira/browse/HIVE-11316) | Use datastructure that doesnt duplicate any part of string for ASTNode::toStringTree() |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11312](https://issues.apache.org/jira/browse/HIVE-11312) | ORC format: where clause with CHAR data type not returning any rows |  Blocker | Query Processor | Thomas Friedrich | Prasanth Jayachandran |
| [HIVE-11311](https://issues.apache.org/jira/browse/HIVE-11311) | Avoid dumping AST tree String in Explain unless necessary |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11310](https://issues.apache.org/jira/browse/HIVE-11310) | Avoid expensive AST tree conversion to String for expressions in WHERE clause |  Major | Parser | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11303](https://issues.apache.org/jira/browse/HIVE-11303) | Getting Tez LimitExceededException after dag execution on large query |  Major | Tez | Jason Dere | Jason Dere |
| [HIVE-11301](https://issues.apache.org/jira/browse/HIVE-11301) | thrift metastore issue when getting stats results in disconnect |  Major | Metastore | Sergey Shelukhin | Pengcheng Xiong |
| [HIVE-11293](https://issues.apache.org/jira/browse/HIVE-11293) | HiveConnection.setAutoCommit(true) throws exception |  Minor | JDBC | Andriy Shumylo | Michał Węgrzyn |
| [HIVE-11288](https://issues.apache.org/jira/browse/HIVE-11288) | Avro SerDe InstanceCache returns incorrect schema |  Major | Serializers/Deserializers | Greg Phillips | Greg Phillips |
| [HIVE-11285](https://issues.apache.org/jira/browse/HIVE-11285) | ObjectInspector for partition columns in FetchOperator in SMBJoin causes exception |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11284](https://issues.apache.org/jira/browse/HIVE-11284) | Fix cbo\_rp\_join0 failure on master |  Major | CBO, Query Planning | Ashutosh Chauhan | Jesus Camacho Rodriguez |
| [HIVE-11279](https://issues.apache.org/jira/browse/HIVE-11279) | Hive should emit lineage information in json compact format |  Major | Logging | Lenni Kuff | Lenni Kuff |
| [HIVE-11278](https://issues.apache.org/jira/browse/HIVE-11278) | Partition.setOutputFormatClass should not do toString for Class object |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-11271](https://issues.apache.org/jira/browse/HIVE-11271) | java.lang.IndexOutOfBoundsException when union all with if function |  Major | Logical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11258](https://issues.apache.org/jira/browse/HIVE-11258) | The function drop\_database\_core() of HiveMetaStore.java may not drop all the tables |  Major | Database/Schema | Aihua Xu | Aihua Xu |
| [HIVE-11255](https://issues.apache.org/jira/browse/HIVE-11255) | get\_table\_objects\_by\_name() in HiveMetaStore.java needs to retrieve table objects in multiple batches |  Major | Database/Schema | Aihua Xu | Aihua Xu |
| [HIVE-11250](https://issues.apache.org/jira/browse/HIVE-11250) | Change in spark.executor.instances (and others) doesn't take effect after RSC is launched for HS2 [Spark Brnach] |  Major | Spark | Xuefu Zhang | Jimmy Xiang |
| [HIVE-11243](https://issues.apache.org/jira/browse/HIVE-11243) | Changing log level in Utilities.getBaseWork |  Minor | Logging | Nemon Lou | Nemon Lou |
| [HIVE-11230](https://issues.apache.org/jira/browse/HIVE-11230) | IMetaStoreClient getPartition method arguments incorrectly named |  Minor | Hive, Metastore | Elliot West | Elliot West |
| [HIVE-11229](https://issues.apache.org/jira/browse/HIVE-11229) | Mutation API: Coordinator communication with meta store should be optional |  Major | HCatalog | Elliot West | Elliot West |
| [HIVE-11224](https://issues.apache.org/jira/browse/HIVE-11224) | AggregateStatsCache triggers java.util.ConcurrentModificationException under some conditions |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11221](https://issues.apache.org/jira/browse/HIVE-11221) | In Tez mode, alter table concatenate orc files can intermittently fail with NPE |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11217](https://issues.apache.org/jira/browse/HIVE-11217) | CTAS statements throws error, when the table is stored as ORC File format and select clause has NULL/VOID type column |  Minor | File Formats | Gaurav Kohli | Yongzhi Chen |
| [HIVE-11216](https://issues.apache.org/jira/browse/HIVE-11216) | UDF GenericUDFMapKeys throws NPE when a null map value is passed in |  Major | UDF | Yibing Shi | Yibing Shi |
| [HIVE-11215](https://issues.apache.org/jira/browse/HIVE-11215) | Vectorized grace hash-join throws FileUtil warnings |  Minor | Vectorization | Gopal V | Gopal V |
| [HIVE-11214](https://issues.apache.org/jira/browse/HIVE-11214) | Insert into ACID table switches vectorization off |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-11211](https://issues.apache.org/jira/browse/HIVE-11211) | Reset the fields in JoinStatsRule in StatsRulesProcFactory |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11203](https://issues.apache.org/jira/browse/HIVE-11203) | Beeline force option doesn't force execution when errors occurred in a script. |  Major | Beeline | Ferdinand Xu | Ferdinand Xu |
| [HIVE-11202](https://issues.apache.org/jira/browse/HIVE-11202) | Update golden files on master |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11201](https://issues.apache.org/jira/browse/HIVE-11201) | HCatalog  is ignoring user specified avro schema in the table definition |  Critical | HCatalog | Bing Li | Bing Li |
| [HIVE-11198](https://issues.apache.org/jira/browse/HIVE-11198) | Fix load data query file format check for partitioned tables |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11197](https://issues.apache.org/jira/browse/HIVE-11197) | While extracting join conditions follow Hive rules for type conversion instead of Calcite |  Major | CBO | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11196](https://issues.apache.org/jira/browse/HIVE-11196) | Utilities.getPartitionDesc() should try to reuse TableDesc object |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11194](https://issues.apache.org/jira/browse/HIVE-11194) | Exchange partition on external tables should fail with error message when target folder already exists |  Major | Hive | Aihua Xu | Aihua Xu |
| [HIVE-11193](https://issues.apache.org/jira/browse/HIVE-11193) | ConstantPropagateProcCtx should use a Set instead of a List to hold operators to be deleted |  Major | Logical Optimizer | Wei Zheng | Wei Zheng |
| [HIVE-11190](https://issues.apache.org/jira/browse/HIVE-11190) | No prompting info or warning provided when METASTORE\_FILTER\_HOOK in authorization V2 is overridden |  Major | . | Dapeng Sun | Dapeng Sun |
| [HIVE-11185](https://issues.apache.org/jira/browse/HIVE-11185) | Fix compustat\_avro.q/load\_dyn\_part14\_win.q for Windows |  Major | Tests, Windows | Jason Dere | Jason Dere |
| [HIVE-11184](https://issues.apache.org/jira/browse/HIVE-11184) | Lineage - ExprProcFactory#getExprString may throw NullPointerException |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11176](https://issues.apache.org/jira/browse/HIVE-11176) | Caused by: java.lang.ClassCastException: org.apache.hadoop.hive.serde2.lazybinary.LazyBinaryStruct cannot be cast to [Ljava.lang.Object; |  Critical | Hive, Tez | Soundararajan Velu | Navis |
| [HIVE-11174](https://issues.apache.org/jira/browse/HIVE-11174) | Hive does not treat floating point signed zeros as equal (-0.0 should equal 0.0 according to IEEE floating point spec) |  Critical | Query Processor | Lenni Kuff | Sergio Peña |
| [HIVE-11172](https://issues.apache.org/jira/browse/HIVE-11172) | Vectorization wrong results for aggregate query with where clause without group by |  Critical | Hive | Yi Zhang | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11171](https://issues.apache.org/jira/browse/HIVE-11171) | Join reordering algorithm might introduce projects between joins |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11170](https://issues.apache.org/jira/browse/HIVE-11170) | port parts of HIVE-11015 to master for ease of future merging |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11157](https://issues.apache.org/jira/browse/HIVE-11157) | Hive.get(HiveConf) returns same Hive object to different user sessions |  Major | Hive | Chaoyu Tang | Chaoyu Tang |
| [HIVE-11152](https://issues.apache.org/jira/browse/HIVE-11152) | Swapping join inputs in ASTConverter |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11151](https://issues.apache.org/jira/browse/HIVE-11151) | Calcite transitive predicate inference rule should not transitively add not null filter on non-nullable input |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11149](https://issues.apache.org/jira/browse/HIVE-11149) | Fix issue with sometimes HashMap in PerfLogger.java hangs |  Major | Logging | WangMeng | WangMeng |
| [HIVE-11147](https://issues.apache.org/jira/browse/HIVE-11147) | MetaTool doesn't update FS root location for partitions with space in name |  Major | Metastore | Wei Zheng | Wei Zheng |
| [HIVE-11143](https://issues.apache.org/jira/browse/HIVE-11143) | Tests udf\_from\_utc\_timestamp.q/udf\_to\_utc\_timestamp.q do not work with updated Java timezone information |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-11141](https://issues.apache.org/jira/browse/HIVE-11141) | Improve RuleRegExp when the Expression node stack gets huge |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11135](https://issues.apache.org/jira/browse/HIVE-11135) | Fix the Beeline set and save command in order to avoid the NullPointerException |  Major | Beeline | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-11134](https://issues.apache.org/jira/browse/HIVE-11134) | HS2 should log open session failure |  Major | HiveServer2 | Thejas M Nair | Thejas M Nair |
| [HIVE-11132](https://issues.apache.org/jira/browse/HIVE-11132) | Queries using join and group by produce incorrect output when hive.auto.convert.join=false and hive.optimize.reducededuplication=true |  Major | Logical Optimizer | Rich Haase | Ashutosh Chauhan |
| [HIVE-11129](https://issues.apache.org/jira/browse/HIVE-11129) | Issue a warning when copied from UTF-8 to ISO 8859-1 |  Major | File Formats | Aihua Xu | Aihua Xu |
| [HIVE-11128](https://issues.apache.org/jira/browse/HIVE-11128) | Stats Annotation misses extracting stats for cols in some cases |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11123](https://issues.apache.org/jira/browse/HIVE-11123) | Fix how to confirm the RDBMS product name at Metastore. |  Major | Metastore | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-11122](https://issues.apache.org/jira/browse/HIVE-11122) | ORC should not record the timezone information when there are no timestamp columns |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11120](https://issues.apache.org/jira/browse/HIVE-11120) | Generic interface for file format validation |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11119](https://issues.apache.org/jira/browse/HIVE-11119) | Spark reduce vectorization doesnt account for scratch columns |  Major | Spark, Vectorization | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11118](https://issues.apache.org/jira/browse/HIVE-11118) | Load data query should validate file formats with destination tables |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11112](https://issues.apache.org/jira/browse/HIVE-11112) | ISO-8859-1 text output has fragments of previous longer rows appended |  Major | Serializers/Deserializers | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11109](https://issues.apache.org/jira/browse/HIVE-11109) | Replication factor is not properly set in SparkHashTableSinkOperator [Spark Branch] |  Trivial | Spark | Rui Li | Rui Li |
| [HIVE-11104](https://issues.apache.org/jira/browse/HIVE-11104) | Select operator doesn't propagate constants appearing in expressions |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11102](https://issues.apache.org/jira/browse/HIVE-11102) | ReaderImpl: getColumnIndicesFromNames does not work for some cases |  Major | File Formats | Gopal V | Sergey Shelukhin |
| [HIVE-11100](https://issues.apache.org/jira/browse/HIVE-11100) | Beeline should escape semi-colon in queries |  Minor | Beeline | Chaoyu Tang | Chaoyu Tang |
| [HIVE-11095](https://issues.apache.org/jira/browse/HIVE-11095) | SerDeUtils  another bug ,when Text is reused |  Major | API, CLI | Xiaowei Wang | Xiaowei Wang |
| [HIVE-11079](https://issues.apache.org/jira/browse/HIVE-11079) | Fix qfile tests that fail on Windows due to CR/character escape differences |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-11073](https://issues.apache.org/jira/browse/HIVE-11073) | ORC FileDump utility ignores errors when writing output |  Minor | Hive | Elliot West | Elliot West |
| [HIVE-11071](https://issues.apache.org/jira/browse/HIVE-11071) | FIx the output of beeline dbinfo command |  Major | Beeline | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-11062](https://issues.apache.org/jira/browse/HIVE-11062) | Remove Exception stacktrace from Log.info when ACL is not supported. |  Minor | Logging | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11060](https://issues.apache.org/jira/browse/HIVE-11060) | Make test windowing.q robust |  Major | Tests | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11054](https://issues.apache.org/jira/browse/HIVE-11054) | Read error : Partition Varchar column cannot be cast to string |  Major | Vectorization | Devansh Srivastava | Gopal V |
| [HIVE-11051](https://issues.apache.org/jira/browse/HIVE-11051) | Hive 1.2.0  MapJoin w/Tez - LazyBinaryArray cannot be cast to [Ljava.lang.Object; |  Critical | Serializers/Deserializers, Tez | Greg Senia | Matt McCline |
| [HIVE-11044](https://issues.apache.org/jira/browse/HIVE-11044) | Some optimizable predicates being missed by constant propagation |  Major | Query Planning | Jason Dere | Jason Dere |
| [HIVE-11043](https://issues.apache.org/jira/browse/HIVE-11043) | ORC split strategies should adapt based on number of files |  Major | . | Prasanth Jayachandran | Gopal V |
| [HIVE-11042](https://issues.apache.org/jira/browse/HIVE-11042) | Need fix Utilities.replaceTaskId method |  Major | Query Processor | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11040](https://issues.apache.org/jira/browse/HIVE-11040) | Change Derby dependency version to 10.10.2.0 |  Major | Metastore | Jason Dere | Jason Dere |
| [HIVE-11029](https://issues.apache.org/jira/browse/HIVE-11029) | hadoop.proxyuser.mapr.groups does not work to restrict the groups that can be impersonated |  Major | HiveServer2 | Na Yang | Na Yang |
| [HIVE-11028](https://issues.apache.org/jira/browse/HIVE-11028) | Tez: table self join and join with another table fails with IndexOutOfBoundsException |  Major | Query Planning | Jason Dere | Jason Dere |
| [HIVE-11024](https://issues.apache.org/jira/browse/HIVE-11024) | Error inserting a date value via parameter marker (PreparedStatement.setDate) |  Major | Hive | Sergio Lob | Yongzhi Chen |
| [HIVE-11013](https://issues.apache.org/jira/browse/HIVE-11013) | MiniTez tez\_join\_hash test on the branch fails with NPE (initializeOp not called?) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11006](https://issues.apache.org/jira/browse/HIVE-11006) | improve logging wrt ACID module |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-10996](https://issues.apache.org/jira/browse/HIVE-10996) | Aggregation / Projection over Multi-Join Inner Query producing incorrect results |  Critical | Query Planning | Gautam Kowshik | Jesus Camacho Rodriguez |
| [HIVE-10994](https://issues.apache.org/jira/browse/HIVE-10994) | Hive.moveFile should not fail on a no-op move |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-10980](https://issues.apache.org/jira/browse/HIVE-10980) | Merge of dynamic partitions loads all data to default partition |  Major | Hive | Illya Yalovyy | Illya Yalovyy |
| [HIVE-10979](https://issues.apache.org/jira/browse/HIVE-10979) | Fix failed tests in TestSchemaTool after the version number change in HIVE-10921 |  Major | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-10977](https://issues.apache.org/jira/browse/HIVE-10977) | No need to instantiate MetaStoreDirectSql when HMS DirectSql is disabled |  Minor | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10976](https://issues.apache.org/jira/browse/HIVE-10976) | Redundant HiveMetaStore connect check in HS2 CLIService start |  Trivial | HiveServer2 | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10974](https://issues.apache.org/jira/browse/HIVE-10974) | Use Configuration::getRaw() for the Base64 data |  Major | Hive | Gopal V | Gopal V |
| [HIVE-10972](https://issues.apache.org/jira/browse/HIVE-10972) | DummyTxnManager always locks the current database in shared mode, which is incorrect. |  Major | Locking | Aihua Xu | Aihua Xu |
| [HIVE-10968](https://issues.apache.org/jira/browse/HIVE-10968) | Windows: analyze json table via beeline failed throwing Class org.apache.hive.hcatalog.data.JsonSerDe not found |  Major | HiveServer2 | Takahiko Saito | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10963](https://issues.apache.org/jira/browse/HIVE-10963) | Hive throws NPE rather than meaningful error message when window is missing |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10958](https://issues.apache.org/jira/browse/HIVE-10958) | Centos: TestMiniTezCliDriver.testCliDriver\_mergejoin fails |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-10956](https://issues.apache.org/jira/browse/HIVE-10956) | HS2 leaks HMS connections |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10949](https://issues.apache.org/jira/browse/HIVE-10949) | Disable hive-minikdc tests in Windows |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10944](https://issues.apache.org/jira/browse/HIVE-10944) | Fix HS2 for Metrics |  Major | . | Szehon Ho | Szehon Ho |
| [HIVE-10940](https://issues.apache.org/jira/browse/HIVE-10940) | HiveInputFormat::pushFilters serializes PPD objects for each getRecordReader call |  Major | File Formats | Gopal V | Gunther Hagleitner |
| [HIVE-10932](https://issues.apache.org/jira/browse/HIVE-10932) | Unit test udf\_nondeterministic failure due to HIVE-10728 |  Major | Tests | Aihua Xu | Aihua Xu |
| [HIVE-10929](https://issues.apache.org/jira/browse/HIVE-10929) | In Tez mode,dynamic partitioning query with union all fails at moveTask,Invalid partition key & values |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-10921](https://issues.apache.org/jira/browse/HIVE-10921) | Change trunk pom version to reflect the branch-1 split |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-10919](https://issues.apache.org/jira/browse/HIVE-10919) | Windows: create table with JsonSerDe failed via beeline unless you add hcatalog core jar to classpath |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10895](https://issues.apache.org/jira/browse/HIVE-10895) | ObjectStore does not close Query objects in some calls, causing a potential leak in some metastore db resources |  Major | Metastore | Takahiko Saito | Aihua Xu |
| [HIVE-10887](https://issues.apache.org/jira/browse/HIVE-10887) | TestCliDriver tests ordering issues with Mac and CentOS |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10880](https://issues.apache.org/jira/browse/HIVE-10880) | The bucket number is not respected in insert overwrite. |  Critical | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-10853](https://issues.apache.org/jira/browse/HIVE-10853) | Create ExplainTask in ATS hook through ExplainWork |  Major | . | Gunther Hagleitner | Pengcheng Xiong |
| [HIVE-10841](https://issues.apache.org/jira/browse/HIVE-10841) | [WHERE col is not null] does not work sometimes for queries with many JOIN statements |  Major | Query Planning, Query Processor | Alexander Pivovarov | Laljo John Pullokkaran |
| [HIVE-10835](https://issues.apache.org/jira/browse/HIVE-10835) | Concurrency issues in JDBC driver |  Major | JDBC | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10816](https://issues.apache.org/jira/browse/HIVE-10816) | NPE in ExecDriver::handleSampling when submitted via child JVM |  Major | . | Rui Li | Rui Li |
| [HIVE-10808](https://issues.apache.org/jira/browse/HIVE-10808) | Inner join on Null throwing Cast Exception |  Critical | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-10807](https://issues.apache.org/jira/browse/HIVE-10807) | Invalidate basic stats for insert queries if autogather=false |  Major | Statistics | Gopal V | Ashutosh Chauhan |
| [HIVE-10802](https://issues.apache.org/jira/browse/HIVE-10802) | Table join query with some constant field in select fails |  Major | Logical Optimizer, Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-10788](https://issues.apache.org/jira/browse/HIVE-10788) | Change sort\_array to support non-primitive types |  Major | UDF | Chao Sun | Chao Sun |
| [HIVE-10787](https://issues.apache.org/jira/browse/HIVE-10787) | MatchPath misses the last matched row from the final result set |  Major | UDF | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [HIVE-10781](https://issues.apache.org/jira/browse/HIVE-10781) | HadoopJobExecHelper Leaks RunningJobs |  Major | Hive, HiveServer2 | Nemon Lou | Chinna Rao Lalam |
| [HIVE-10771](https://issues.apache.org/jira/browse/HIVE-10771) | "separatorChar" has no effect in "CREATE TABLE AS SELECT" statement |  Major | Query Planning | Yongzhi Chen | Yongzhi Chen |
| [HIVE-10757](https://issues.apache.org/jira/browse/HIVE-10757) | Explain query plan should have operation name EXPLAIN |  Trivial | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10746](https://issues.apache.org/jira/browse/HIVE-10746) |  Hive 1.2.0+Tez produces 1-byte FileSplits from mapred.TextInputFormat |  Critical | Hive, Tez | Greg Senia | Gopal V |
| [HIVE-10736](https://issues.apache.org/jira/browse/HIVE-10736) | HiveServer2 shutdown of cached tez app-masters is not clean |  Major | HiveServer2 | Gopal V | Vikram Dixit K |
| [HIVE-10734](https://issues.apache.org/jira/browse/HIVE-10734) | Remove COLUMNS\_OLD table from a schema definition file of PostgreSQL |  Major | Metastore | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-10732](https://issues.apache.org/jira/browse/HIVE-10732) | Hive JDBC driver does not close operation for metadata queries |  Major | JDBC | Mala Chikka Kempanna | Chaoyu Tang |
| [HIVE-10731](https://issues.apache.org/jira/browse/HIVE-10731) | NullPointerException in HiveParser.g |  Minor | Query Planning | Xiu(Joe) Guo | Pengcheng Xiong |
| [HIVE-10728](https://issues.apache.org/jira/browse/HIVE-10728) | deprecate unix\_timestamp(void) and make it deterministic |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-10726](https://issues.apache.org/jira/browse/HIVE-10726) | Hive JDBC setQueryTimeout should not throw exception to make it work with JMeter |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-10722](https://issues.apache.org/jira/browse/HIVE-10722) | external table creation with msck in Hive can create unusable partition |  Critical | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-10721](https://issues.apache.org/jira/browse/HIVE-10721) | SparkSessionManagerImpl leaks SparkSessions [Spark Branch] |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10714](https://issues.apache.org/jira/browse/HIVE-10714) | Bloom filter column names specification should be case insensitive |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-10707](https://issues.apache.org/jira/browse/HIVE-10707) | CBO: debug logging OOMs |  Trivial | CBO | Gopal V | Gopal V |
| [HIVE-10706](https://issues.apache.org/jira/browse/HIVE-10706) | Make vectorized\_timestamp\_funcs test more stable |  Minor | UDF, Vectorization | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10705](https://issues.apache.org/jira/browse/HIVE-10705) | Update tests for HIVE-9302 after removing binaries |  Major | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-10698](https://issues.apache.org/jira/browse/HIVE-10698) | query on view results fails with table not found error if view is created with subquery alias (CTE). |  Major | Query Planning | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-10697](https://issues.apache.org/jira/browse/HIVE-10697) | ObjectInspectorConvertors#UnionConvertor does a faulty conversion |  Major | Serializers/Deserializers | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-10687](https://issues.apache.org/jira/browse/HIVE-10687) | AvroDeserializer fails to deserialize evolved union fields |  Major | File Formats, Serializers/Deserializers | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-10671](https://issues.apache.org/jira/browse/HIVE-10671) | yarn-cluster mode offers a degraded performance from yarn-client [Spark Branch] |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-10670](https://issues.apache.org/jira/browse/HIVE-10670) | Duplicate declaration of curator-recipes at pom.xml |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10665](https://issues.apache.org/jira/browse/HIVE-10665) | Continue to make udaf\_percentile\_approx\_23.q test more stable |  Minor | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10660](https://issues.apache.org/jira/browse/HIVE-10660) | Fix typo in Type.getType(TTypeId) exception message |  Trivial | JDBC | Keegan Witt | Keegan Witt |
| [HIVE-10655](https://issues.apache.org/jira/browse/HIVE-10655) | [PTest2] Propagate additionalProfiles flag to the source-prep.vm |  Major | Testing Infrastructure | Szehon Ho | Szehon Ho |
| [HIVE-10651](https://issues.apache.org/jira/browse/HIVE-10651) | ORC file footer cache should be bounded |  Minor | . | Mostafa Mokhtar | Prasanth Jayachandran |
| [HIVE-10646](https://issues.apache.org/jira/browse/HIVE-10646) | ColumnValue does not handle NULL\_TYPE |  Major | Thrift API | Yongzhi Chen | Yongzhi Chen |
| [HIVE-10631](https://issues.apache.org/jira/browse/HIVE-10631) | create\_table\_core method has invalid update for Fast Stats |  Minor | Metastore | Dongwook Kwon | Aaron Tokhy |
| [HIVE-10626](https://issues.apache.org/jira/browse/HIVE-10626) | Spark paln need to be updated [Spark Branch] |  Major | Spark | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-10620](https://issues.apache.org/jira/browse/HIVE-10620) | ZooKeeperHiveLock overrides equal() method but not hashcode() |  Major | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10613](https://issues.apache.org/jira/browse/HIVE-10613) | HCatSchemaUtils getHCatFieldSchema should include field comment |  Minor | HCatalog | Thomas Friedrich | Thomas Friedrich |
| [HIVE-10609](https://issues.apache.org/jira/browse/HIVE-10609) | Vectorization : Q64 fails with ClassCastException |  Major | Vectorization | Mostafa Mokhtar | Matt McCline |
| [HIVE-10608](https://issues.apache.org/jira/browse/HIVE-10608) | Fix useless 'if' stamement in RetryingMetaStoreClient (135) |  Minor | Metastore | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10587](https://issues.apache.org/jira/browse/HIVE-10587) | ExprNodeColumnDesc should be created with isPartitionColOrVirtualCol true for DP column |  Minor | Query Processor | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10572](https://issues.apache.org/jira/browse/HIVE-10572) | Improve Hive service test to check empty string |  Major | HiveServer2 | Chao Sun | Chao Sun |
| [HIVE-10571](https://issues.apache.org/jira/browse/HIVE-10571) | HiveMetaStoreClient should close existing thrift connection before its reconnect |  Major | Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10569](https://issues.apache.org/jira/browse/HIVE-10569) | Hive CLI gets stuck when hive.exec.parallel=true; and some exception happens during SessionState.start |  Critical | . | Rohit Agarwal | Rohit Agarwal |
| [HIVE-10559](https://issues.apache.org/jira/browse/HIVE-10559) | IndexOutOfBoundsException with RemoveDynamicPruningBySize |  Major | Tez | Wei Zheng | Wei Zheng |
| [HIVE-10548](https://issues.apache.org/jira/browse/HIVE-10548) | Remove dependency to s3 repository in root pom |  Major | Build Infrastructure | Szehon Ho | Chengxiang Li |
| [HIVE-10542](https://issues.apache.org/jira/browse/HIVE-10542) | Full outer joins in tez produce incorrect results in certain cases |  Blocker | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-10541](https://issues.apache.org/jira/browse/HIVE-10541) | Beeline requires newline at the end of each query in a file |  Minor | Beeline | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10538](https://issues.apache.org/jira/browse/HIVE-10538) | Fix NPE in FileSinkOperator from hashcode mismatch |  Critical | Query Processor | Peter Slawski | Peter Slawski |
| [HIVE-10529](https://issues.apache.org/jira/browse/HIVE-10529) | Remove references to tez task context before storing operator plan in object cache |  Critical | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-10521](https://issues.apache.org/jira/browse/HIVE-10521) | TxnHandler.timeOutTxns only times out some of the expired transactions |  Major | Transactions | Alan Gates | Alan Gates |
| [HIVE-10519](https://issues.apache.org/jira/browse/HIVE-10519) | Move TestGenericUDF classes to udf.generic package |  Trivial | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10509](https://issues.apache.org/jira/browse/HIVE-10509) | Bump trunk version to 1.3 as branch-1.2 has been created. |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-10483](https://issues.apache.org/jira/browse/HIVE-10483) | insert overwrite partition deadlocks on itself with DbTxnManager |  Major | Query Planning, Query Processor, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-10481](https://issues.apache.org/jira/browse/HIVE-10481) | ACID table update finishes but values not really updated if column names are not all lower case |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-10473](https://issues.apache.org/jira/browse/HIVE-10473) | Spark client is recreated even spark configuration is not changed |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10456](https://issues.apache.org/jira/browse/HIVE-10456) | Grace Hash Join should not load spilled partitions on abort |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-10453](https://issues.apache.org/jira/browse/HIVE-10453) | HS2 leaking open file descriptors when using UDFs |  Major | UDF | Yongzhi Chen | Yongzhi Chen |
| [HIVE-10452](https://issues.apache.org/jira/browse/HIVE-10452) | Followup fix for HIVE-10202 to restrict it it for script mode. |  Minor | Beeline | Naveen Gangam | Naveen Gangam |
| [HIVE-10450](https://issues.apache.org/jira/browse/HIVE-10450) | More than one TableScan in MapWork not supported in Vectorization -- causes  query to fail during vectorization |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-10444](https://issues.apache.org/jira/browse/HIVE-10444) | HIVE-10223 breaks hadoop-1 build |  Major | . | Prasanth Jayachandran | Chris Nauroth |
| [HIVE-10443](https://issues.apache.org/jira/browse/HIVE-10443) | HIVE-9870 broke hadoop-1 build |  Major | . | Prasanth Jayachandran | Vaibhav Gumashta |
| [HIVE-10442](https://issues.apache.org/jira/browse/HIVE-10442) | HIVE-10098 broke hadoop-1 build |  Major | . | Prasanth Jayachandran | Yongzhi Chen |
| [HIVE-10431](https://issues.apache.org/jira/browse/HIVE-10431) | HIVE-9555 broke hadoop-1 build |  Major | . | Prasanth Jayachandran | Sergey Shelukhin |
| [HIVE-10423](https://issues.apache.org/jira/browse/HIVE-10423) | HIVE-7948 breaks deploy\_e2e\_artifacts.sh |  Major | . | Eugene Koifman | Aswathy Chellammal Sreekumar |
| [HIVE-10415](https://issues.apache.org/jira/browse/HIVE-10415) | hive.start.cleanup.scratchdir configuration is not taking effect |  Major | . | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-10370](https://issues.apache.org/jira/browse/HIVE-10370) | Hive does not compile with -Phadoop-1 option |  Critical | . | Hari Sankar Sivarama Subramaniyan | Prasanth Jayachandran |
| [HIVE-10286](https://issues.apache.org/jira/browse/HIVE-10286) | SARGs: Type Safety via PredicateLeaf.type |  Major | File Formats, Serializers/Deserializers | Gopal V | Prasanth Jayachandran |
| [HIVE-10191](https://issues.apache.org/jira/browse/HIVE-10191) | ORC: Cleanup writer per-row synchronization |  Major | File Formats | Gopal V | Gopal V |
| [HIVE-10190](https://issues.apache.org/jira/browse/HIVE-10190) | CBO: AST mode checks for TABLESAMPLE with AST.toString().contains("TOK\_TABLESPLITSAMPLE") |  Trivial | CBO | Gopal V | Reuben Kuhnert |
| [HIVE-10173](https://issues.apache.org/jira/browse/HIVE-10173) | ThreadLocal synchronized initialvalue() is irrelevant in JDK7 |  Minor | Query Processor | Gopal V | Ferdinand Xu |
| [HIVE-10151](https://issues.apache.org/jira/browse/HIVE-10151) | insert into A select from B is broken when both A and B are Acid tables and bucketed the same way |  Major | Query Planning, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-10140](https://issues.apache.org/jira/browse/HIVE-10140) | Window boundary is not compared correctly |  Minor | PTF-Windowing | Yi Zhang | Aihua Xu |
| [HIVE-10061](https://issues.apache.org/jira/browse/HIVE-10061) | HiveConf Should not be used as part of the HS2 client side code |  Major | HiveServer2, JDBC | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10021](https://issues.apache.org/jira/browse/HIVE-10021) | "Alter index rebuild" statements submitted through HiveServer2 fail when Sentry is enabled |  Major | HiveServer2, Indexing | Richard Williams | Aihua Xu |
| [HIVE-9974](https://issues.apache.org/jira/browse/HIVE-9974) | Sensitive data redaction: data appears in name of mapreduce job |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-9811](https://issues.apache.org/jira/browse/HIVE-9811) | Hive on Tez leaks WorkMap objects |  Major | Tez | Oleg Danilov | Oleg Danilov |
| [HIVE-9625](https://issues.apache.org/jira/browse/HIVE-9625) | Delegation tokens for HMS are not renewed |  Major | HiveServer2 | Brock Noland | Brock Noland |
| [HIVE-9566](https://issues.apache.org/jira/browse/HIVE-9566) | HiveServer2 fails to start with NullPointerException |  Major | HiveServer2 | Na Yang | Na Yang |
| [HIVE-9248](https://issues.apache.org/jira/browse/HIVE-9248) | Vectorization : Tez Reduce vertex not getting vectorized when GROUP BY is Hash mode |  Critical | Tez, Vectorization | Matt McCline | Matt McCline |
| [HIVE-9069](https://issues.apache.org/jira/browse/HIVE-9069) | Simplify filter predicates for CBO |  Major | CBO | Mostafa Mokhtar | Jesus Camacho Rodriguez |
| [HIVE-9013](https://issues.apache.org/jira/browse/HIVE-9013) | Hive set command exposes metastore db password |  Major | . | Binglin Chang | Binglin Chang |
| [HIVE-8529](https://issues.apache.org/jira/browse/HIVE-8529) | HiveSessionImpl#fetchResults should not try to fetch operation log when hive.server2.logging.operation.enabled is false. |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Yongzhi Chen |
| [HIVE-8396](https://issues.apache.org/jira/browse/HIVE-8396) | Hive CliDriver command splitting can be broken when comments are present |  Major | Parser, Query Processor | Sergey Shelukhin | Elliot West |
| [HIVE-7723](https://issues.apache.org/jira/browse/HIVE-7723) | Explain plan for complex query with lots of partitions is slow due to in-efficient collection used to find a matching ReadEntity |  Major | CLI, Physical Optimizer | Mostafa Mokhtar | Hari Sankar Sivarama Subramaniyan |
| [HIVE-7476](https://issues.apache.org/jira/browse/HIVE-7476) | CTAS does not work properly for s3 |  Major | . | Jian Fang | Szehon Ho |
| [HIVE-7193](https://issues.apache.org/jira/browse/HIVE-7193) | Hive should support additional LDAP authentication parameters |  Major | . | Mala Chikka Kempanna | Naveen Gangam |
| [HIVE-7180](https://issues.apache.org/jira/browse/HIVE-7180) | BufferedReader is not closed in MetaStoreSchemaInfo ctor |  Minor | Metastore | Ted Yu | Alexander Pivovarov |
| [HIVE-7150](https://issues.apache.org/jira/browse/HIVE-7150) | FileInputStream is not closed in HiveConnection#getHttpClient() |  Major | JDBC | Ted Yu | Alexander Pivovarov |
| [HIVE-7018](https://issues.apache.org/jira/browse/HIVE-7018) | Table and Partition tables have column LINK\_TARGET\_ID in Mysql scripts but not others |  Major | . | Brock Noland | Yongzhi Chen |
| [HIVE-6991](https://issues.apache.org/jira/browse/HIVE-6991) | History not able to disable/enable after session started |  Major | . | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-6727](https://issues.apache.org/jira/browse/HIVE-6727) | Table level stats for external tables are set incorrectly |  Major | Statistics | Harish Butani | Bing Li |
| [HIVE-6091](https://issues.apache.org/jira/browse/HIVE-6091) | Empty pipeout files are created for connection create/close |  Minor | HiveServer2 | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HIVE-6026](https://issues.apache.org/jira/browse/HIVE-6026) | Ldap Authenticator should be more generic with BindDN |  Minor | Authentication | Johndee Burks | Naveen Gangam |
| [HIVE-5623](https://issues.apache.org/jira/browse/HIVE-5623) | ORC accessing array column that's empty will fail with java out of bound exception |  Critical | File Formats | Eric Chu | Prasanth Jayachandran |
| [HIVE-5277](https://issues.apache.org/jira/browse/HIVE-5277) | HBase handler skips rows with null valued first cells when only row key is selected |  Critical | HBase Handler | Teddy Choi | Swarnim Kulkarni |
| [HIVE-4243](https://issues.apache.org/jira/browse/HIVE-4243) | Fix column names in FileSinkOperator |  Major | File Formats | Owen O'Malley | Owen O'Malley |
| [HIVE-4239](https://issues.apache.org/jira/browse/HIVE-4239) | Remove lock on compilation stage |  Major | HiveServer2, Query Processor | Carl Steinbach | Sergey Shelukhin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-12560](https://issues.apache.org/jira/browse/HIVE-12560) | Few tests hang forever |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12213](https://issues.apache.org/jira/browse/HIVE-12213) | Investigating the test failure TestHCatClient.testTableSchemaPropagation |  Minor | Test | Aihua Xu | Aleksei Statkevich |
| [HIVE-11962](https://issues.apache.org/jira/browse/HIVE-11962) | Improve windowing\_windowspec2.q tests to return consistent results |  Trivial | Test | Aihua Xu | Aihua Xu |
| [HIVE-11946](https://issues.apache.org/jira/browse/HIVE-11946) | TestNotificationListener is flaky |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11791](https://issues.apache.org/jira/browse/HIVE-11791) | Add unit test for HIVE-10122 |  Minor | Metastore | Illya Yalovyy | Illya Yalovyy |
| [HIVE-11620](https://issues.apache.org/jira/browse/HIVE-11620) | Fix several qtest output order |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11384](https://issues.apache.org/jira/browse/HIVE-11384) | Add Test case which cover both HIVE-11271 and HIVE-11333 |  Major | Logical Optimizer, Parser | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11083](https://issues.apache.org/jira/browse/HIVE-11083) | Make test cbo\_windowing robust |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11026](https://issues.apache.org/jira/browse/HIVE-11026) | Make vector\_outer\_join\* test more robust |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-10969](https://issues.apache.org/jira/browse/HIVE-10969) | Test autogen\_colalias failing on trunk |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-10903](https://issues.apache.org/jira/browse/HIVE-10903) | Add hive.in.test for HoS tests |  Major | Spark | Rui Li | Rui Li |
| [HIVE-10583](https://issues.apache.org/jira/browse/HIVE-10583) | Switch precommit from ASF to Github repo to avoid clone failures |  Critical | . | Szehon Ho | Szehon Ho |
| [HIVE-7375](https://issues.apache.org/jira/browse/HIVE-7375) | Add option in test infra to compile in other profiles (like hadoop-1) |  Major | . | Szehon Ho | Szehon Ho |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-12574](https://issues.apache.org/jira/browse/HIVE-12574) | windowing function returns incorrect result when the window size is larger than the partition size |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-12525](https://issues.apache.org/jira/browse/HIVE-12525) | Cleanup unused metrics in HMS |  Major | . | Szehon Ho | Szehon Ho |
| [HIVE-12497](https://issues.apache.org/jira/browse/HIVE-12497) | Remove HADOOP\_CLIENT\_OPTS from hive script |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12485](https://issues.apache.org/jira/browse/HIVE-12485) | Secure HS2 web UI with kerberos |  Major | HiveServer2 | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12471](https://issues.apache.org/jira/browse/HIVE-12471) | Secure HS2 web UI with SSL |  Major | HiveServer2 | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12402](https://issues.apache.org/jira/browse/HIVE-12402) | Split hive.root.logger separately to make it compatible with log4j1.x |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12358](https://issues.apache.org/jira/browse/HIVE-12358) | Categorize vectorization benchmarks into arithmetic, comparison, logic |  Major | . | Teddy Choi | Teddy Choi |
| [HIVE-12305](https://issues.apache.org/jira/browse/HIVE-12305) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): UDAF can not pull up constant expressions |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-12297](https://issues.apache.org/jira/browse/HIVE-12297) | CBO: Calcite Operator To Hive Operator (Calcite Return Path) : dealing with '$' in typeInfo |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-12284](https://issues.apache.org/jira/browse/HIVE-12284) | Merge master to Spark branch 10/28/2015 [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-12283](https://issues.apache.org/jira/browse/HIVE-12283) | Fix test failures after HIVE-11844 [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-12272](https://issues.apache.org/jira/browse/HIVE-12272) | CBO: Calcite Operator To Hive Operator (Calcite Return Path) : columnPruner prunes everything when union is the last operator before FS |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-12271](https://issues.apache.org/jira/browse/HIVE-12271) | Add metrics around HS2 query execution and job submission for Hive |  Major | HiveServer2 | Lenni Kuff | Szehon Ho |
| [HIVE-12196](https://issues.apache.org/jira/browse/HIVE-12196) | NPE when converting bad timestamp value |  Major | Hive | Ryan Blue | Aihua Xu |
| [HIVE-12091](https://issues.apache.org/jira/browse/HIVE-12091) | Merge file doesn't work for ORC table when running on Spark. [Spark Branch] |  Major | Spark | Xin Hao | Rui Li |
| [HIVE-12054](https://issues.apache.org/jira/browse/HIVE-12054) | Create vectorized write method |  Major | File Formats | Owen O'Malley | Owen O'Malley |
| [HIVE-12020](https://issues.apache.org/jira/browse/HIVE-12020) | Revert log4j2 xml configuration to properties based configuration |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12016](https://issues.apache.org/jira/browse/HIVE-12016) | Update log4j2 version to 2.4 |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11903](https://issues.apache.org/jira/browse/HIVE-11903) | Add lock metrics to HS2 |  Major | Diagnosability | Szehon Ho | Yongzhi Chen |
| [HIVE-11896](https://issues.apache.org/jira/browse/HIVE-11896) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): deal with hive default partition when inserting data |  Major | CBO | Pengcheng Xiong | Ashutosh Chauhan |
| [HIVE-11895](https://issues.apache.org/jira/browse/HIVE-11895) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): fix udaf\_percentile\_approx\_23.q |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11815](https://issues.apache.org/jira/browse/HIVE-11815) | Correct the column/table names in subquery expression when creating a view |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11778](https://issues.apache.org/jira/browse/HIVE-11778) | Merge beeline-cli branch to trunk |  Major | CLI | Ferdinand Xu | Ferdinand Xu |
| [HIVE-11763](https://issues.apache.org/jira/browse/HIVE-11763) | Use \* instead of sum(hash(\*)) on Parquet predicate (PPD) integration tests |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-11711](https://issues.apache.org/jira/browse/HIVE-11711) | Merge hbase-metastore branch to trunk |  Major | HBase Metastore | Daniel Dai | Daniel Dai |
| [HIVE-11703](https://issues.apache.org/jira/browse/HIVE-11703) | Make RegExp and RLike reserved keywords |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11701](https://issues.apache.org/jira/browse/HIVE-11701) | Make tez tests AM logs work with new log4j2 changes |  Major | Logging, Tests | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11700](https://issues.apache.org/jira/browse/HIVE-11700) | exception in logs in Tez test with new logger |  Major | . | Sergey Shelukhin | Prasanth Jayachandran |
| [HIVE-11671](https://issues.apache.org/jira/browse/HIVE-11671) | Optimize RuleRegExp in DPP codepath |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-11664](https://issues.apache.org/jira/browse/HIVE-11664) | Make tez container logs work with new log4j2 changes |  Major | Logging, Tests | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11646](https://issues.apache.org/jira/browse/HIVE-11646) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): fix multiple window spec for PTF operator |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11597](https://issues.apache.org/jira/browse/HIVE-11597) | [CBO new return path] Handling of strings of zero-length |  Major | CBO | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11575](https://issues.apache.org/jira/browse/HIVE-11575) | Fix test failures in master due to log4j changes |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11572](https://issues.apache.org/jira/browse/HIVE-11572) | Datanucleus loads Log4j1.x Logger from AppClassLoader |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11571](https://issues.apache.org/jira/browse/HIVE-11571) | Fix Hive PTest2 logging configuration |  Trivial | Testing Infrastructure | Gopal V | Gopal V |
| [HIVE-11570](https://issues.apache.org/jira/browse/HIVE-11570) | Fix PTest2 log4j2.version |  Major | Testing Infrastructure | Gopal V | Gopal V |
| [HIVE-11567](https://issues.apache.org/jira/browse/HIVE-11567) | Some trace logs seeped through with new log4j2 changes |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11565](https://issues.apache.org/jira/browse/HIVE-11565) | LLAP: Some counters are incorrect |  Major | . | Sergey Shelukhin | Siddharth Seth |
| [HIVE-11563](https://issues.apache.org/jira/browse/HIVE-11563) | Perflogger loglines are repeated |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11562](https://issues.apache.org/jira/browse/HIVE-11562) | Typo in hive-log4j2.xml throws unknown level exception |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11557](https://issues.apache.org/jira/browse/HIVE-11557) | CBO (Calcite Return Path): Convert to flat AND/OR |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11533](https://issues.apache.org/jira/browse/HIVE-11533) | Loop optimization for SIMD in integer comparisons |  Minor | Vectorization | Teddy Choi | Teddy Choi |
| [HIVE-11521](https://issues.apache.org/jira/browse/HIVE-11521) | Loop optimization for SIMD in logical operators |  Minor | . | Teddy Choi | Teddy Choi |
| [HIVE-11504](https://issues.apache.org/jira/browse/HIVE-11504) | Predicate pushing down doesn't work for float type for Parquet |  Major | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-11467](https://issues.apache.org/jira/browse/HIVE-11467) | WriteBuffers rounding wbSize to next power of 2 may cause OOM |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-11453](https://issues.apache.org/jira/browse/HIVE-11453) | Create PostExecutionHook for ORC file dump |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11449](https://issues.apache.org/jira/browse/HIVE-11449) | "Capacity must be a power of two" error when HybridHashTableContainer memory threshold is too low |  Major | Query Processor | Jason Dere | Jason Dere |
| [HIVE-11445](https://issues.apache.org/jira/browse/HIVE-11445) | CBO: Calcite Operator To Hive Operator (Calcite Return Path) : groupby distinct does not work |  Major | CBO | Pengcheng Xiong | Jesus Camacho Rodriguez |
| [HIVE-11437](https://issues.apache.org/jira/browse/HIVE-11437) | CBO: Calcite Operator To Hive Operator (Calcite Return Path) : dealing with insert into |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11436](https://issues.apache.org/jira/browse/HIVE-11436) | CBO: Calcite Operator To Hive Operator (Calcite Return Path) : dealing with empty char |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11416](https://issues.apache.org/jira/browse/HIVE-11416) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): Groupby Optimizer assumes the schema can match after removing RS and GBY |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11409](https://issues.apache.org/jira/browse/HIVE-11409) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): add SEL before UNION |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11391](https://issues.apache.org/jira/browse/HIVE-11391) | CBO (Calcite Return Path): Add CBO tests with return path on |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11387](https://issues.apache.org/jira/browse/HIVE-11387) | CBO: Calcite Operator To Hive Operator (Calcite Return Path) : fix reduce\_deduplicate optimization |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11367](https://issues.apache.org/jira/browse/HIVE-11367) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): ExprNodeConverter should use HiveDecimal to create Decimal |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11363](https://issues.apache.org/jira/browse/HIVE-11363) | Prewarm Hive on Spark containers [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-11358](https://issues.apache.org/jira/browse/HIVE-11358) | LLAP: move LlapConfiguration into HiveConf and document the settings |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11347](https://issues.apache.org/jira/browse/HIVE-11347) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): fix CTAS |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11321](https://issues.apache.org/jira/browse/HIVE-11321) | Move OrcFile.OrcTableProperties from OrcFile into OrcConf. |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-11314](https://issues.apache.org/jira/browse/HIVE-11314) | Print "Execution completed successfully" as part of spark job info [Spark Branch] |  Major | Spark | Xuefu Zhang | Ferdinand Xu |
| [HIVE-11307](https://issues.apache.org/jira/browse/HIVE-11307) | Remove getWritableObject from ColumnVectorBatch |  Major | Vectorization | Owen O'Malley | Owen O'Malley |
| [HIVE-11282](https://issues.apache.org/jira/browse/HIVE-11282) | CBO (Calcite Return Path): Inferring Hive type char/varchar of length zero which is not allowed |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11257](https://issues.apache.org/jira/browse/HIVE-11257) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): Method isCombinablePredicate in HiveJoinToMultiJoinRule should be extended to support MultiJoin operators merge |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11253](https://issues.apache.org/jira/browse/HIVE-11253) | Move SearchArgument and VectorizedRowBatch classes to storage-api. |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-11252](https://issues.apache.org/jira/browse/HIVE-11252) | CBO (Calcite Return Path): DUMMY project in plan |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11251](https://issues.apache.org/jira/browse/HIVE-11251) | CBO (Calcite Return Path): Extending ExprNodeConverter to consider additional types |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11239](https://issues.apache.org/jira/browse/HIVE-11239) | Test encryption\_insert\_partition\_static.q fails with different output results on other environments |  Major | Tests | Sergio Peña | Sergio Peña |
| [HIVE-11232](https://issues.apache.org/jira/browse/HIVE-11232) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): fix the output of select\_same\_col.q |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11231](https://issues.apache.org/jira/browse/HIVE-11231) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): make the output of ba\_table\_union.q more stable |  Minor | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11223](https://issues.apache.org/jira/browse/HIVE-11223) | CBO (Calcite Return Path): MapJoin and SMBJoin conversion not triggered |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11212](https://issues.apache.org/jira/browse/HIVE-11212) | Create vectorized types for complex types |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-11210](https://issues.apache.org/jira/browse/HIVE-11210) | Remove dependency on HiveConf from Orc reader & writer |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-11209](https://issues.apache.org/jira/browse/HIVE-11209) | Clean up dependencies in HiveDecimalWritable |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-11206](https://issues.apache.org/jira/browse/HIVE-11206) | CBO (Calcite Return Path): Join translation should update all ExprNode recursively |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11180](https://issues.apache.org/jira/browse/HIVE-11180) | Enable native vectorized map join for spark [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-11161](https://issues.apache.org/jira/browse/HIVE-11161) | create patch for branch-1 for HiveOnTez: make explain user level = true as default |  Major | Diagnosability | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11138](https://issues.apache.org/jira/browse/HIVE-11138) | Query fails when there isn't a comparator for an operator [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-11137](https://issues.apache.org/jira/browse/HIVE-11137) | In DateWritable remove the use of LazyBinaryUtils |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-11131](https://issues.apache.org/jira/browse/HIVE-11131) | Get row information on DataWritableWriter once for better writing performance |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-11130](https://issues.apache.org/jira/browse/HIVE-11130) | Refactoring the code so that HiveTxnManager interface will support lock/unlock table/database object |  Major | Locking | Aihua Xu | Aihua Xu |
| [HIVE-11124](https://issues.apache.org/jira/browse/HIVE-11124) | Move OrcRecordUpdater.getAcidEventFields to RecordReaderFactory |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-11108](https://issues.apache.org/jira/browse/HIVE-11108) | HashTableSinkOperator doesn't support vectorization [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-11099](https://issues.apache.org/jira/browse/HIVE-11099) | Add support for running negative q-tests [Spark Branch] |  Major | Spark | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-11086](https://issues.apache.org/jira/browse/HIVE-11086) | Remove use of ErrorMsg in Orc's RunLengthIntegerReaderV2 |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-11082](https://issues.apache.org/jira/browse/HIVE-11082) | Support multi edge between nodes in SparkPlan[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-11080](https://issues.apache.org/jira/browse/HIVE-11080) | Modify VectorizedRowBatch.toString() to not depend on VectorExpressionWriter |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-11053](https://issues.apache.org/jira/browse/HIVE-11053) | Add more tests for HIVE-10844[Spark Branch] |  Minor | Spark | Chengxiang Li | GaoLun |
| [HIVE-11025](https://issues.apache.org/jira/browse/HIVE-11025) | In windowing spec, when the datatype is decimal, it's comparing the value against NULL value incorrectly |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-11016](https://issues.apache.org/jira/browse/HIVE-11016) | MiniTez mergejoin test fails with Tez input error (issue in merge join under certain conditions) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11007](https://issues.apache.org/jira/browse/HIVE-11007) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): dpCtx's mapInputToDP should depends on the last SEL |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-10999](https://issues.apache.org/jira/browse/HIVE-10999) | Upgrade Spark dependency to 1.4 [Spark Branch] |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-10991](https://issues.apache.org/jira/browse/HIVE-10991) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): NonBlockingOpDeDupProc did not kick in rcfile\_merge2.q |  Major | CBO | Pengcheng Xiong | Jesus Camacho Rodriguez |
| [HIVE-10989](https://issues.apache.org/jira/browse/HIVE-10989) | HoS can't control number of map tasks for runtime skew join [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-10985](https://issues.apache.org/jira/browse/HIVE-10985) | Value based windowing on timestamp and double can't handle NULL value |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10975](https://issues.apache.org/jira/browse/HIVE-10975) | Parquet: Bump the parquet version up to 1.8.1 |  Minor | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-10927](https://issues.apache.org/jira/browse/HIVE-10927) | Add number of HMS/HS2 connection metrics |  Major | Diagnosability | Szehon Ho | Szehon Ho |
| [HIVE-10911](https://issues.apache.org/jira/browse/HIVE-10911) | Add support for date datatype in the value based windowing function |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10906](https://issues.apache.org/jira/browse/HIVE-10906) | Value based UDAF function without orderby expression throws NPE |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10882](https://issues.apache.org/jira/browse/HIVE-10882) | CBO: Calcite Operator To Hive Operator (Calcite Return Path) empty filtersMap of join operator causes wrong results |  Major | CBO | Pengcheng Xiong | Jesus Camacho Rodriguez |
| [HIVE-10878](https://issues.apache.org/jira/browse/HIVE-10878) | Add tests to cover avg() function for 'x preceding and y preceding' windowing spec. |  Trivial | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10864](https://issues.apache.org/jira/browse/HIVE-10864) | CBO (Calcite Return Path): auto\_join2.q returning wrong results |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-10855](https://issues.apache.org/jira/browse/HIVE-10855) | Make HIVE-10568 work with Spark [Spark Branch] |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-10844](https://issues.apache.org/jira/browse/HIVE-10844) | Combine equivalent Works for HoS[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-10834](https://issues.apache.org/jira/browse/HIVE-10834) | Support First\_value()/last\_value() over x preceding and y preceding windowing |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10826](https://issues.apache.org/jira/browse/HIVE-10826) | Support min()/max() functions over x preceding and y preceding windowing |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10825](https://issues.apache.org/jira/browse/HIVE-10825) | Add parquet branch profile to jenkins-submit-build.sh |  Minor | Testing Infrastructure | Sergio Peña | Sergio Peña |
| [HIVE-10800](https://issues.apache.org/jira/browse/HIVE-10800) | CBO (Calcite Return Path): Setup correct information if CBO succeeds |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-10799](https://issues.apache.org/jira/browse/HIVE-10799) | Refactor the SearchArgumentFactory to remove the dependence on ExprNodeGenericFuncDesc |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-10796](https://issues.apache.org/jira/browse/HIVE-10796) | Remove dependencies on NumericHistogram and NumDistinctValueEstimator from JavaDataModel |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-10795](https://issues.apache.org/jira/browse/HIVE-10795) | Remove use of PerfLogger from Orc |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-10794](https://issues.apache.org/jira/browse/HIVE-10794) | Remove the dependence from ErrorMsg to HiveUtils |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-10793](https://issues.apache.org/jira/browse/HIVE-10793) | Hybrid Hybrid Grace Hash Join : Don't allocate all hash table memory upfront |  Major | Hive | Mostafa Mokhtar | Mostafa Mokhtar |
| [HIVE-10755](https://issues.apache.org/jira/browse/HIVE-10755) | Rework on HIVE-5193 to enhance the column oriented table access |  Major | HCatalog | Aihua Xu | Aihua Xu |
| [HIVE-10752](https://issues.apache.org/jira/browse/HIVE-10752) | Revert HIVE-5193 |  Major | HCatalog | Aihua Xu | Aihua Xu |
| [HIVE-10717](https://issues.apache.org/jira/browse/HIVE-10717) | Fix failed qtest encryption\_insert\_partition\_static test in Jenkin |  Major | . | Ferdinand Xu | Alexander Pivovarov |
| [HIVE-10702](https://issues.apache.org/jira/browse/HIVE-10702) | COUNT(\*) over windowing 'x preceding and y preceding' doesn't work properly |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10643](https://issues.apache.org/jira/browse/HIVE-10643) | Refactoring Windowing for sum() to pass WindowFrameDef instead of two numbers (1 for number of preceding and 1 for number of following) |  Minor | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-10594](https://issues.apache.org/jira/browse/HIVE-10594) | Remote Spark client doesn't use Kerberos keytab to authenticate [Spark Branch] |  Major | Spark | Chao Sun | Xuefu Zhang |
| [HIVE-10565](https://issues.apache.org/jira/browse/HIVE-10565) | LLAP: Native Vector Map Join doesn't handle filtering and matching on LEFT OUTER JOIN repeated key correctly |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-10553](https://issues.apache.org/jira/browse/HIVE-10553) | Remove hardcoded Parquet references from SearchArgumentImpl |  Major | . | Gopal V | Owen O'Malley |
| [HIVE-10550](https://issues.apache.org/jira/browse/HIVE-10550) | Dynamic RDD caching optimization for HoS.[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-10533](https://issues.apache.org/jira/browse/HIVE-10533) | CBO (Calcite Return Path): Join to MultiJoin support for outer joins |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-10527](https://issues.apache.org/jira/browse/HIVE-10527) | NPE in SparkUtilities::isDedicatedCluster [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-10520](https://issues.apache.org/jira/browse/HIVE-10520) | LLAP: Must reset small table result columns for Native Vectorization of Map Join |  Blocker | Vectorization | Matt McCline | Matt McCline |
| [HIVE-10479](https://issues.apache.org/jira/browse/HIVE-10479) | CBO: Calcite Operator To Hive Operator (Calcite Return Path) Empty tabAlias in columnInfo which triggers PPD |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-10476](https://issues.apache.org/jira/browse/HIVE-10476) | Hive query should fail when it fails to initialize a session in SetSparkReducerParallelism [Spark Branch] |  Minor | Spark | Chao Sun | Chao Sun |
| [HIVE-10460](https://issues.apache.org/jira/browse/HIVE-10460) | change the key of Parquet Record to Nullwritable instead of void |  Major | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-10458](https://issues.apache.org/jira/browse/HIVE-10458) | Enable parallel order by for spark [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-10434](https://issues.apache.org/jira/browse/HIVE-10434) | Cancel connection when remote Spark driver process has failed [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-10238](https://issues.apache.org/jira/browse/HIVE-10238) | Loop optimization for SIMD in IfExprColumnColumn.txt |  Minor | Vectorization | Chengxiang Li | Teddy Choi |
| [HIVE-10235](https://issues.apache.org/jira/browse/HIVE-10235) | Loop optimization for SIMD in ColumnDivideColumn.txt |  Minor | Vectorization | Chengxiang Li | Chengxiang Li |
| [HIVE-10166](https://issues.apache.org/jira/browse/HIVE-10166) | Merge Spark branch to master 7/30/2015 |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-9605](https://issues.apache.org/jira/browse/HIVE-9605) | Remove parquet nested objects from wrapper writable objects |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-9152](https://issues.apache.org/jira/browse/HIVE-9152) | Dynamic Partition Pruning [Spark Branch] |  Major | Spark | Brock Noland | Chao Sun |
| [HIVE-9139](https://issues.apache.org/jira/browse/HIVE-9139) | Clean up GenSparkProcContext.clonedReduceSinks and related code [Spark Branch] |  Major | Spark | Xuefu Zhang | Chao Sun |
| [HIVE-8858](https://issues.apache.org/jira/browse/HIVE-8858) | Visualize generated Spark plan [Spark Branch] |  Major | Spark | Xuefu Zhang | Chinna Rao Lalam |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10427](https://issues.apache.org/jira/browse/HIVE-10427) | collect\_list() and collect\_set() should accept struct types as argument |  Major | UDF | Alexander Behm | Chao Sun |
| [HIVE-12520](https://issues.apache.org/jira/browse/HIVE-12520) | Fix schema\_evol\* tests on master |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12436](https://issues.apache.org/jira/browse/HIVE-12436) | Default hive.metastore.schema.verification to true |  Major | Metastore | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12434](https://issues.apache.org/jira/browse/HIVE-12434) | Merge spark into master 11/17/1015 |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-12430](https://issues.apache.org/jira/browse/HIVE-12430) | Remove remaining reference to the hadoop-2 profile |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-12413](https://issues.apache.org/jira/browse/HIVE-12413) | Default mode for hive.mapred.mode should be strict |  Major | Configuration | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12411](https://issues.apache.org/jira/browse/HIVE-12411) | Remove counter based stats collection mechanism |  Major | Statistics | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-12383](https://issues.apache.org/jira/browse/HIVE-12383) | Update golden file for cbo\_rp\_annotate\_stats\_groupby test |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12256](https://issues.apache.org/jira/browse/HIVE-12256) | Move LLAP registry into llap-client module |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-12239](https://issues.apache.org/jira/browse/HIVE-12239) | Constants in hive.common.metrics.common.MetricsConstant are not final |  Trivial | . | Aleksei Statkevich | Aleksei Statkevich |
| [HIVE-12237](https://issues.apache.org/jira/browse/HIVE-12237) | Use slf4j as logging facade |  Major | Logging | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12164](https://issues.apache.org/jira/browse/HIVE-12164) | Remove jdbc stats collection mechanism |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12010](https://issues.apache.org/jira/browse/HIVE-12010) | Tests should use FileSystem based stats collection mechanism |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11754](https://issues.apache.org/jira/browse/HIVE-11754) | Not reachable code parts in StatsUtils |  Trivial | . | Navis | Navis |
| [HIVE-11582](https://issues.apache.org/jira/browse/HIVE-11582) | Remove conf variable hive.mapred.supports.subdirectories |  Major | Configuration | Ashutosh Chauhan | Chetna Chaudhari |
| [HIVE-11489](https://issues.apache.org/jira/browse/HIVE-11489) | Jenkins PreCommit-HIVE-SPARK-Build fails with TestCliDriver.initializationError |  Major | Testing Infrastructure | Sergio Peña | Szehon Ho |
| [HIVE-11158](https://issues.apache.org/jira/browse/HIVE-11158) | Add tests for HPL/SQL |  Major | hpl/sql | Alan Gates | Dmitry Tolpeko |
| [HIVE-11096](https://issues.apache.org/jira/browse/HIVE-11096) | Bump the parquet version to 1.7.0 |  Minor | . | Sergio Peña | Ferdinand Xu |
| [HIVE-11018](https://issues.apache.org/jira/browse/HIVE-11018) | Turn on cbo in more q files |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-10870](https://issues.apache.org/jira/browse/HIVE-10870) | Merge Spark branch to trunk 5/29/2015 |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-10868](https://issues.apache.org/jira/browse/HIVE-10868) | Update release note for 1.2.0 and 1.1.0 |  Major | Documentation | Xuefu Zhang | Xuefu Zhang |
| [HIVE-10667](https://issues.apache.org/jira/browse/HIVE-10667) | Upgrade Calcite dependency to newest version |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-10485](https://issues.apache.org/jira/browse/HIVE-10485) | Create md5 UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |


