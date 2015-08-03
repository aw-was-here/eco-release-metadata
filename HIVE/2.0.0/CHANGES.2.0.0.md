
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

## Release 2.0.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-11228](https://issues.apache.org/jira/browse/HIVE-11228) | Mutation API should use semi-shared locks. |  Major | HCatalog | Elliot West | Elliot West |
| [HIVE-11145](https://issues.apache.org/jira/browse/HIVE-11145) | Remove OFFLINE and NO\_DROP from tables and partitions |  Major | Metastore, SQL | Alan Gates | Alan Gates |
| [HIVE-9365](https://issues.apache.org/jira/browse/HIVE-9365) | The Metastore should take port configuration from hive-site.xml |  Minor | . | Nicolas Thiébaud | Reuben Kuhnert |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10761](https://issues.apache.org/jira/browse/HIVE-10761) | Create codahale-based metrics system for Hive |  Major | Diagnosability | Szehon Ho | Szehon Ho |
| [HIVE-10673](https://issues.apache.org/jira/browse/HIVE-10673) | Dynamically partitioned hash join for Tez |  Major | Query Planning, Query Processor | Jason Dere | Jason Dere |
| [HIVE-10592](https://issues.apache.org/jira/browse/HIVE-10592) | ORC file dump in JSON format |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-10591](https://issues.apache.org/jira/browse/HIVE-10591) | Support limited integer type promotion in ORC |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-3404](https://issues.apache.org/jira/browse/HIVE-3404) | Create quarter UDF |  Major | UDF | Sanam Naz | Alexander Pivovarov |
| [HIVE-686](https://issues.apache.org/jira/browse/HIVE-686) | add UDF substring\_index |  Major | UDF | Namit Jain | Alexander Pivovarov |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
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
| [HIVE-11055](https://issues.apache.org/jira/browse/HIVE-11055) | HPL/SQL - Implementing Procedural SQL in Hive (PL/HQL Contribution) |  Major | . | Dmitry Tolpeko | Dmitry Tolpeko |
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
| [HIVE-10403](https://issues.apache.org/jira/browse/HIVE-10403) | Add n-way join support for Hybrid Grace Hash Join |  Major | . | Wei Zheng | Wei Zheng |
| [HIVE-10302](https://issues.apache.org/jira/browse/HIVE-10302) | Load small tables (for map join) in executor memory only once [Spark Branch] |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10239](https://issues.apache.org/jira/browse/HIVE-10239) | Create scripts to do metastore upgrade tests on jenkins for Derby and PostgreSQL |  Major | . | Naveen Gangam | Naveen Gangam |
| [HIVE-10165](https://issues.apache.org/jira/browse/HIVE-10165) | Improve hive-hcatalog-streaming extensibility and support updates and deletes. |  Major | HCatalog | Elliot West | Elliot West |
| [HIVE-8190](https://issues.apache.org/jira/browse/HIVE-8190) | LDAP user match for authentication on hiveserver2 |  Major | Authorization, Clients | LINTE | Naveen Gangam |
| [HIVE-2327](https://issues.apache.org/jira/browse/HIVE-2327) | Optimize REGEX UDFs with constant parameter information |  Major | UDF | Adam Kramer | Alexander Pivovarov |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-11425](https://issues.apache.org/jira/browse/HIVE-11425) | submitting a query via CLI against a running cluster fails with ClassNotFoundException: org.apache.hadoop.hive.common.type.HiveDecimal |  Major | Hive | Eugene Koifman | Eugene Koifman |
| [HIVE-11401](https://issues.apache.org/jira/browse/HIVE-11401) | Predicate push down does not work with Parquet when partitions are in the expression |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-11380](https://issues.apache.org/jira/browse/HIVE-11380) | NPE when FileSinkOperator is not initialized |  Major | Query Processor | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11344](https://issues.apache.org/jira/browse/HIVE-11344) | HIVE-9845 makes HCatSplit.write modify the split so that PartInfo objects are unusable after it |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-11333](https://issues.apache.org/jira/browse/HIVE-11333) | ColumnPruner prunes columns of UnionOperator that should be kept |  Major | CBO | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11330](https://issues.apache.org/jira/browse/HIVE-11330) | Add early termination for recursion in StatsRulesProcFactory$FilterStatsRule.evaluateExpression |  Major | Hive, Physical Optimizer | Mostafa Mokhtar | Mostafa Mokhtar |
| [HIVE-11328](https://issues.apache.org/jira/browse/HIVE-11328) | Avoid String representation of expression nodes in ConstantPropagateProcFactory unless necessary |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11316](https://issues.apache.org/jira/browse/HIVE-11316) | Use datastructure that doesnt duplicate any part of string for ASTNode::toStringTree() |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11311](https://issues.apache.org/jira/browse/HIVE-11311) | Avoid dumping AST tree String in Explain unless necessary |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11310](https://issues.apache.org/jira/browse/HIVE-11310) | Avoid expensive AST tree conversion to String for expressions in WHERE clause |  Major | Parser | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11303](https://issues.apache.org/jira/browse/HIVE-11303) | Getting Tez LimitExceededException after dag execution on large query |  Major | Tez | Jason Dere | Jason Dere |
| [HIVE-11301](https://issues.apache.org/jira/browse/HIVE-11301) | thrift metastore issue when getting stats results in disconnect |  Major | Metastore | Sergey Shelukhin | Pengcheng Xiong |
| [HIVE-11288](https://issues.apache.org/jira/browse/HIVE-11288) | Avro SerDe InstanceCache returns incorrect schema |  Major | . | Greg Phillips | Greg Phillips |
| [HIVE-11285](https://issues.apache.org/jira/browse/HIVE-11285) | ObjectInspector for partition columns in FetchOperator in SMBJoin causes exception |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11284](https://issues.apache.org/jira/browse/HIVE-11284) | Fix cbo\_rp\_join0 failure on master |  Major | CBO, Query Planning | Ashutosh Chauhan | Jesus Camacho Rodriguez |
| [HIVE-11279](https://issues.apache.org/jira/browse/HIVE-11279) | Hive should emit lineage information in json compact format |  Major | Logging | Lenni Kuff | Lenni Kuff |
| [HIVE-11271](https://issues.apache.org/jira/browse/HIVE-11271) | java.lang.IndexOutOfBoundsException when union all with if function |  Major | Logical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11258](https://issues.apache.org/jira/browse/HIVE-11258) | The function drop\_database\_core() of HiveMetaStore.java may not drop all the tables |  Major | Database/Schema | Aihua Xu | Aihua Xu |
| [HIVE-11255](https://issues.apache.org/jira/browse/HIVE-11255) | get\_table\_objects\_by\_name() in HiveMetaStore.java needs to retrieve table objects in multiple batches |  Major | Database/Schema | Aihua Xu | Aihua Xu |
| [HIVE-11243](https://issues.apache.org/jira/browse/HIVE-11243) | Changing log level in Utilities.getBaseWork |  Minor | Logging | Nemon Lou | Nemon Lou |
| [HIVE-11230](https://issues.apache.org/jira/browse/HIVE-11230) | IMetaStoreClient getPartition method arguments incorrectly named |  Minor | Hive, Metastore | Elliot West | Elliot West |
| [HIVE-11229](https://issues.apache.org/jira/browse/HIVE-11229) | Mutation API: Coordinator communication with meta store should be optional |  Major | HCatalog | Elliot West | Elliot West |
| [HIVE-11224](https://issues.apache.org/jira/browse/HIVE-11224) | AggregateStatsCache triggers java.util.ConcurrentModificationException under some conditions |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11221](https://issues.apache.org/jira/browse/HIVE-11221) | In Tez mode, alter table concatenate orc files can intermittently fail with NPE |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11216](https://issues.apache.org/jira/browse/HIVE-11216) | UDF GenericUDFMapKeys throws NPE when a null map value is passed in |  Major | UDF | Yibing Shi | Yibing Shi |
| [HIVE-11215](https://issues.apache.org/jira/browse/HIVE-11215) | Vectorized grace hash-join throws FileUtil warnings |  Minor | Vectorization | Gopal V | Gopal V |
| [HIVE-11214](https://issues.apache.org/jira/browse/HIVE-11214) | Insert into ACID table switches vectorization off |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-11211](https://issues.apache.org/jira/browse/HIVE-11211) | Reset the fields in JoinStatsRule in StatsRulesProcFactory |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11203](https://issues.apache.org/jira/browse/HIVE-11203) | Beeline force option doesn't force execution when errors occurred in a script. |  Major | Beeline | Ferdinand Xu | Ferdinand Xu |
| [HIVE-11202](https://issues.apache.org/jira/browse/HIVE-11202) | Update golden files on master |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11198](https://issues.apache.org/jira/browse/HIVE-11198) | Fix load data query file format check for partitioned tables |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11197](https://issues.apache.org/jira/browse/HIVE-11197) | While extracting join conditions follow Hive rules for type conversion instead of Calcite |  Major | CBO | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11196](https://issues.apache.org/jira/browse/HIVE-11196) | Utilities.getPartitionDesc() should try to reuse TableDesc object |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11194](https://issues.apache.org/jira/browse/HIVE-11194) | Exchange partition on external tables should fail with error message when target folder already exists |  Major | Hive | Aihua Xu | Aihua Xu |
| [HIVE-11193](https://issues.apache.org/jira/browse/HIVE-11193) | ConstantPropagateProcCtx should use a Set instead of a List to hold operators to be deleted |  Major | Logical Optimizer | Wei Zheng | Wei Zheng |
| [HIVE-11190](https://issues.apache.org/jira/browse/HIVE-11190) | No prompting info or warning provided when METASTORE\_FILTER\_HOOK in authorization V2 is overridden |  Major | . | Dapeng Sun | Dapeng Sun |
| [HIVE-11184](https://issues.apache.org/jira/browse/HIVE-11184) | Lineage - ExprProcFactory#getExprString may throw NullPointerException |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-11174](https://issues.apache.org/jira/browse/HIVE-11174) | Hive does not treat floating point signed zeros as equal (-0.0 should equal 0.0 according to IEEE floating point spec) |  Critical | Query Processor | Lenni Kuff | Sergio Peña |
| [HIVE-11172](https://issues.apache.org/jira/browse/HIVE-11172) | Vectorization wrong results for aggregate query with where clause without group by |  Critical | Hive | Yi Zhang | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11171](https://issues.apache.org/jira/browse/HIVE-11171) | Join reordering algorithm might introduce projects between joins |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11170](https://issues.apache.org/jira/browse/HIVE-11170) | port parts of HIVE-11015 to master for ease of future merging |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11157](https://issues.apache.org/jira/browse/HIVE-11157) | Hive.get(HiveConf) returns same Hive object to different user sessions |  Major | Hive | Chaoyu Tang | Chaoyu Tang |
| [HIVE-11152](https://issues.apache.org/jira/browse/HIVE-11152) | Swapping join inputs in ASTConverter |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11151](https://issues.apache.org/jira/browse/HIVE-11151) | Calcite transitive predicate inference rule should not transitively add not null filter on non-nullable input |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11147](https://issues.apache.org/jira/browse/HIVE-11147) | MetaTool doesn't update FS root location for partitions with space in name |  Major | Metastore | Wei Zheng | Wei Zheng |
| [HIVE-11143](https://issues.apache.org/jira/browse/HIVE-11143) | Tests udf\_from\_utc\_timestamp.q/udf\_to\_utc\_timestamp.q do not work with updated Java timezone information |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-11141](https://issues.apache.org/jira/browse/HIVE-11141) | Improve RuleRegExp when the Expression node stack gets huge |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11135](https://issues.apache.org/jira/browse/HIVE-11135) | Fix the Beeline set and save command in order to avoid the NullPointerException |  Major | Beeline | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-11129](https://issues.apache.org/jira/browse/HIVE-11129) | Issue a warning when copied from UTF-8 to ISO 8859-1 |  Major | File Formats | Aihua Xu | Aihua Xu |
| [HIVE-11128](https://issues.apache.org/jira/browse/HIVE-11128) | Stats Annotation misses extracting stats for cols in some cases |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11122](https://issues.apache.org/jira/browse/HIVE-11122) | ORC should not record the timezone information when there are no timestamp columns |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
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
| [HIVE-11013](https://issues.apache.org/jira/browse/HIVE-11013) | MiniTez tez\_join\_hash test on the branch fails with NPE (initializeOp not called?) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11006](https://issues.apache.org/jira/browse/HIVE-11006) | improve logging wrt ACID module |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-10996](https://issues.apache.org/jira/browse/HIVE-10996) | Aggregation / Projection over Multi-Join Inner Query producing incorrect results |  Critical | Query Planning | Gautam Kowshik | Jesus Camacho Rodriguez |
| [HIVE-10994](https://issues.apache.org/jira/browse/HIVE-10994) | Hive.moveFile should not fail on a no-op move |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
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
| [HIVE-10853](https://issues.apache.org/jira/browse/HIVE-10853) | Create ExplainTask in ATS hook through ExplainWork |  Major | . | Gunther Hagleitner | Pengcheng Xiong |
| [HIVE-10841](https://issues.apache.org/jira/browse/HIVE-10841) | [WHERE col is not null] does not work sometimes for queries with many JOIN statements |  Major | Query Planning, Query Processor | Alexander Pivovarov | Laljo John Pullokkaran |
| [HIVE-10835](https://issues.apache.org/jira/browse/HIVE-10835) | Concurrency issues in JDBC driver |  Major | JDBC | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10816](https://issues.apache.org/jira/browse/HIVE-10816) | NPE in ExecDriver::handleSampling when submitted via child JVM |  Major | . | Rui Li | Rui Li |
| [HIVE-10808](https://issues.apache.org/jira/browse/HIVE-10808) | Inner join on Null throwing Cast Exception |  Critical | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-10802](https://issues.apache.org/jira/browse/HIVE-10802) | Table join query with some constant field in select fails |  Major | Logical Optimizer, Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-10793](https://issues.apache.org/jira/browse/HIVE-10793) | Hybrid Hybrid Grace Hash Join : Don't allocate all hash table memory upfront |  Major | Hive | Mostafa Mokhtar | Mostafa Mokhtar |
| [HIVE-10790](https://issues.apache.org/jira/browse/HIVE-10790) | orc write on viewFS throws exception |  Major | API | Xiaowei Wang | Xiaowei Wang |
| [HIVE-10788](https://issues.apache.org/jira/browse/HIVE-10788) | Change sort\_array to support non-primitive types |  Major | UDF | Chao Sun | Chao Sun |
| [HIVE-10787](https://issues.apache.org/jira/browse/HIVE-10787) | MatchPath misses the last matched row from the final result set |  Major | UDF | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [HIVE-10781](https://issues.apache.org/jira/browse/HIVE-10781) | HadoopJobExecHelper Leaks RunningJobs |  Major | Hive, HiveServer2 | Nemon Lou | Chinna Rao Lalam |
| [HIVE-10771](https://issues.apache.org/jira/browse/HIVE-10771) | "separatorChar" has no effect in "CREATE TABLE AS SELECT" statement |  Major | Query Planning | Yongzhi Chen | Yongzhi Chen |
| [HIVE-10757](https://issues.apache.org/jira/browse/HIVE-10757) | Explain query plan should have operation name EXPLAIN |  Trivial | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10746](https://issues.apache.org/jira/browse/HIVE-10746) |  Hive 1.2.0+Tez produces 1-byte FileSplits from mapred.TextInputFormat |  Critical | Hive, Tez | Greg Senia | Gopal V |
| [HIVE-10736](https://issues.apache.org/jira/browse/HIVE-10736) | HiveServer2 shutdown of cached tez app-masters is not clean |  Major | HiveServer2 | Gopal V | Vikram Dixit K |
| [HIVE-10734](https://issues.apache.org/jira/browse/HIVE-10734) | Remove COLUMNS\_OLD table from a schema definition file of PostgreSQL |  Major | Metastore | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-10732](https://issues.apache.org/jira/browse/HIVE-10732) | Hive JDBC driver does not close operation for metadata queries |  Major | JDBC | Mala Chikka Kempanna | Chaoyu Tang |
| [HIVE-10731](https://issues.apache.org/jira/browse/HIVE-10731) | NullPointerException in HiveParser.g |  Minor | Query Planning | Xiu | Pengcheng Xiong |
| [HIVE-10728](https://issues.apache.org/jira/browse/HIVE-10728) | deprecate unix\_timestamp(void) and make it deterministic |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-10726](https://issues.apache.org/jira/browse/HIVE-10726) | Hive JDBC setQueryTimeout should not throw exception to make it work with JMeter |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-10722](https://issues.apache.org/jira/browse/HIVE-10722) | external table creation with msck in Hive can create unusable partition |  Critical | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-10721](https://issues.apache.org/jira/browse/HIVE-10721) | SparkSessionManagerImpl leaks SparkSessions [Spark Branch] |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10714](https://issues.apache.org/jira/browse/HIVE-10714) | Bloom filter column names specification should be case insensitive |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-10707](https://issues.apache.org/jira/browse/HIVE-10707) | CBO: debug logging OOMs |  Trivial | CBO | Gopal V | Gopal V |
| [HIVE-10706](https://issues.apache.org/jira/browse/HIVE-10706) | Make vectorized\_timestamp\_funcs test more stable |  Minor | UDF, Vectorization | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10705](https://issues.apache.org/jira/browse/HIVE-10705) | Update tests for HIVE-9302 after removing binaries |  Major | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-10698](https://issues.apache.org/jira/browse/HIVE-10698) | query on view results fails with table not found error if view is created with subquery alias (CTE). |  Major | Query Planning | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-10687](https://issues.apache.org/jira/browse/HIVE-10687) | AvroDeserializer fails to deserialize evolved union fields |  Major | File Formats, Serializers/Deserializers | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-10671](https://issues.apache.org/jira/browse/HIVE-10671) | yarn-cluster mode offers a degraded performance from yarn-client [Spark Branch] |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-10670](https://issues.apache.org/jira/browse/HIVE-10670) | Duplicate declaration of curator-recipes at pom.xml |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10665](https://issues.apache.org/jira/browse/HIVE-10665) | Continue to make udaf\_percentile\_approx\_23.q test more stable |  Minor | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10660](https://issues.apache.org/jira/browse/HIVE-10660) | Fix typo in Type.getType(TTypeId) exception message |  Trivial | JDBC | Keegan Witt | Keegan Witt |
| [HIVE-10655](https://issues.apache.org/jira/browse/HIVE-10655) | [PTest2] Propagate additionalProfiles flag to the source-prep.vm |  Major | Testing Infrastructure | Szehon Ho | Szehon Ho |
| [HIVE-10651](https://issues.apache.org/jira/browse/HIVE-10651) | ORC file footer cache should be bounded |  Minor | . | Mostafa Mokhtar | Prasanth Jayachandran |
| [HIVE-10646](https://issues.apache.org/jira/browse/HIVE-10646) | ColumnValue does not handle NULL\_TYPE |  Major | Thrift API | Yongzhi Chen | Yongzhi Chen |
| [HIVE-10626](https://issues.apache.org/jira/browse/HIVE-10626) | Spark paln need to be updated [Spark Branch] |  Major | Spark | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-10620](https://issues.apache.org/jira/browse/HIVE-10620) | ZooKeeperHiveLock overrides equal() method but not hashcode() |  Major | . | Chaoyu Tang | Chaoyu Tang |
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
| [HIVE-9974](https://issues.apache.org/jira/browse/HIVE-9974) | Sensitive data redaction: data appears in name of mapreduce job |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-9880](https://issues.apache.org/jira/browse/HIVE-9880) | Support configurable username attribute for HiveServer2 LDAP authentication |  Major | HiveServer2 | Jaime Murillo | Naveen Gangam |
| [HIVE-9625](https://issues.apache.org/jira/browse/HIVE-9625) | Delegation tokens for HMS are not renewed |  Major | HiveServer2 | Brock Noland | Brock Noland |
| [HIVE-9566](https://issues.apache.org/jira/browse/HIVE-9566) | HiveServer2 fails to start with NullPointerException |  Major | HiveServer2 | Na Yang | Na Yang |
| [HIVE-9248](https://issues.apache.org/jira/browse/HIVE-9248) | Vectorization : Tez Reduce vertex not getting vectorized when GROUP BY is Hash mode |  Critical | Tez, Vectorization | Matt McCline | Matt McCline |
| [HIVE-8529](https://issues.apache.org/jira/browse/HIVE-8529) | HiveSessionImpl#fetchResults should not try to fetch operation log when hive.server2.logging.operation.enabled is false. |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Yongzhi Chen |
| [HIVE-7193](https://issues.apache.org/jira/browse/HIVE-7193) | Hive should support additional LDAP authentication parameters |  Major | . | Mala Chikka Kempanna | Naveen Gangam |
| [HIVE-7180](https://issues.apache.org/jira/browse/HIVE-7180) | BufferedReader is not closed in MetaStoreSchemaInfo ctor |  Minor | Metastore | Ted Yu | Alexander Pivovarov |
| [HIVE-7150](https://issues.apache.org/jira/browse/HIVE-7150) | FileInputStream is not closed in HiveConnection#getHttpClient() |  Major | JDBC | Ted Yu | Alexander Pivovarov |
| [HIVE-7018](https://issues.apache.org/jira/browse/HIVE-7018) | Table and Partition tables have column LINK\_TARGET\_ID in Mysql scripts but not others |  Major | . | Brock Noland | Yongzhi Chen |
| [HIVE-6991](https://issues.apache.org/jira/browse/HIVE-6991) | History not able to disable/enable after session started |  Major | . | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-6727](https://issues.apache.org/jira/browse/HIVE-6727) | Table level stats for external tables are set incorrectly |  Major | Statistics | Harish Butani | Bing Li |
| [HIVE-6026](https://issues.apache.org/jira/browse/HIVE-6026) | Ldap Authenticator should be more generic with BindDN |  Minor | Authentication | Johndee Burks | Naveen Gangam |
| [HIVE-4239](https://issues.apache.org/jira/browse/HIVE-4239) | Remove lock on compilation stage |  Major | HiveServer2, Query Processor | Carl Steinbach | Sergey Shelukhin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
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
| [HIVE-11363](https://issues.apache.org/jira/browse/HIVE-11363) | Prewarm Hive on Spark containers [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
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
| [HIVE-11210](https://issues.apache.org/jira/browse/HIVE-11210) | Remove dependency on HiveConf from Orc reader & writer |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-11209](https://issues.apache.org/jira/browse/HIVE-11209) | Clean up dependencies in HiveDecimalWritable |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-11206](https://issues.apache.org/jira/browse/HIVE-11206) | CBO (Calcite Return Path): Join translation should update all ExprNode recursively |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
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
| [HIVE-10235](https://issues.apache.org/jira/browse/HIVE-10235) | Loop optimization for SIMD in ColumnDivideColumn.txt |  Minor | Vectorization | Chengxiang Li | Chengxiang Li |
| [HIVE-10166](https://issues.apache.org/jira/browse/HIVE-10166) | Merge Spark branch to master 7/30/2015 |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-9605](https://issues.apache.org/jira/browse/HIVE-9605) | Remove parquet nested objects from wrapper writable objects |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-9152](https://issues.apache.org/jira/browse/HIVE-9152) | Dynamic Partition Pruning [Spark Branch] |  Major | Spark | Brock Noland | Chao Sun |
| [HIVE-8858](https://issues.apache.org/jira/browse/HIVE-8858) | Visualize generated Spark plan [Spark Branch] |  Major | Spark | Xuefu Zhang | Chinna Rao Lalam |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10427](https://issues.apache.org/jira/browse/HIVE-10427) | collect\_list() and collect\_set() should accept struct types as argument |  Major | UDF | Alexander Behm | Chao Sun |
| [HIVE-11158](https://issues.apache.org/jira/browse/HIVE-11158) | Add tests for HPL/SQL |  Major | hpl/sql | Alan Gates | Dmitry Tolpeko |
| [HIVE-11096](https://issues.apache.org/jira/browse/HIVE-11096) | Bump the parquet version to 1.7.0 |  Minor | . | Sergio Peña | Ferdinand Xu |
| [HIVE-11018](https://issues.apache.org/jira/browse/HIVE-11018) | Turn on cbo in more q files |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-10870](https://issues.apache.org/jira/browse/HIVE-10870) | Merge Spark branch to trunk 5/29/2015 |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-10868](https://issues.apache.org/jira/browse/HIVE-10868) | Update release note for 1.2.0 and 1.1.0 |  Major | Documentation | Xuefu Zhang | Xuefu Zhang |
| [HIVE-10667](https://issues.apache.org/jira/browse/HIVE-10667) | Upgrade Calcite dependency to newest version |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-10485](https://issues.apache.org/jira/browse/HIVE-10485) | Create md5 UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |


