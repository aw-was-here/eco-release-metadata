
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

## Release 1.1.0 - 2015-03-07



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-8435](https://issues.apache.org/jira/browse/HIVE-8435) | Add identity project remover optimization |  Major | Logical Optimizer | Ashutosh Chauhan | Jesus Camacho Rodriguez |
| [HIVE-7122](https://issues.apache.org/jira/browse/HIVE-7122) | Storage format for create like table |  Major | Query Processor | Vasanth kumar RJ | Vasanth kumar RJ |
| [HIVE-3405](https://issues.apache.org/jira/browse/HIVE-3405) | UDF initcap to obtain a string with the first letter of each word in uppercase other letters in lowercase |  Major | UDF | Archana Nair | Alexander Pivovarov |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-7564](https://issues.apache.org/jira/browse/HIVE-7564) | Remove some redundant code plus a bit of cleanup in SparkClient [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-7707](https://issues.apache.org/jira/browse/HIVE-7707) | Optimize SparkMapRecordHandler implementation |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-7659](https://issues.apache.org/jira/browse/HIVE-7659) | Unnecessary sort in query plan [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-8029](https://issues.apache.org/jira/browse/HIVE-8029) | Remove reducers number configure in SparkTask [Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8249](https://issues.apache.org/jira/browse/HIVE-8249) | Refactoring SparkPlan and SparkPlanGenerator [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-7605](https://issues.apache.org/jira/browse/HIVE-7605) | add more javadoc to HivePrivilegeObject |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-6148](https://issues.apache.org/jira/browse/HIVE-6148) | Support arbitrary structs stored in HBase |  Major | HBase Handler | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-8337](https://issues.apache.org/jira/browse/HIVE-8337) | Change default of hive.warehouse.subdir.inherit.perms to true |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8347](https://issues.apache.org/jira/browse/HIVE-8347) | Use base-64 encoding instead of custom encoding for serialized objects |  Major | HCatalog | Mariappan Asokan | Mariappan Asokan |
| [HIVE-8094](https://issues.apache.org/jira/browse/HIVE-8094) | add LIKE keyword support for SHOW FUNCTIONS |  Major | . | peter liu | peter liu |
| [HIVE-7868](https://issues.apache.org/jira/browse/HIVE-7868) | AvroSerDe error handling could be improved |  Major | . | Brock Noland | Ferdinand Xu |
| [HIVE-8463](https://issues.apache.org/jira/browse/HIVE-8463) | Add numPartitions info to SparkEdgeProperty [Spark Branch] |  Minor | Spark | Chao Sun | Chao Sun |
| [HIVE-7858](https://issues.apache.org/jira/browse/HIVE-7858) | Parquet compression should be configurable via table property |  Major | . | Brock Noland | Ferdinand Xu |
| [HIVE-8449](https://issues.apache.org/jira/browse/HIVE-8449) | webhcat startup does not create the log directory |  Major | WebHCat | Na Yang | Na Yang |
| [HIVE-2828](https://issues.apache.org/jira/browse/HIVE-2828) | make timestamp accessible in the hbase KeyValue |  Trivial | HBase Handler | Navis | Navis |
| [HIVE-8552](https://issues.apache.org/jira/browse/HIVE-8552) | Remove hard code of offline and make addHost api public |  Major | . | Brock Noland | Brock Noland |
| [HIVE-7408](https://issues.apache.org/jira/browse/HIVE-7408) | HCatPartition needs getPartCols method |  Minor | HCatalog | JongWon Park | Navis |
| [HIVE-8535](https://issues.apache.org/jira/browse/HIVE-8535) | Enable compile time skew join optimization for spark [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-8424](https://issues.apache.org/jira/browse/HIVE-8424) | Support fair scheduler user queue mapping in non-impersonation mode |  Major | Shims | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8661](https://issues.apache.org/jira/browse/HIVE-8661) | JDBC MinimizeJAR should be configurable in pom.xml |  Minor | Build Infrastructure | Gopal V | Gopal V |
| [HIVE-8710](https://issues.apache.org/jira/browse/HIVE-8710) | Add more tests for transactional inserts |  Major | Transactions | Alan Gates | Alan Gates |
| [HIVE-8469](https://issues.apache.org/jira/browse/HIVE-8469) | Add parquet.compression as a Serde Property |  Minor | . | Brock Noland | Ferdinand Xu |
| [HIVE-3187](https://issues.apache.org/jira/browse/HIVE-3187) | support ISO-2012 timestamp literals |  Major | . | N Campbell | Navis |
| [HIVE-8823](https://issues.apache.org/jira/browse/HIVE-8823) | Add additional serde properties for parquet |  Major | . | Brock Noland | Ferdinand Xu |
| [HIVE-8813](https://issues.apache.org/jira/browse/HIVE-8813) | Allow tests to be excluded based on pattern/regex |  Major | Testing Infrastructure | Jason Dere | Jason Dere |
| [HIVE-8839](https://issues.apache.org/jira/browse/HIVE-8839) | Support "alter table .. add/replace columns cascade" |  Major | SQL | Chaoyu Tang | Chaoyu Tang |
| [HIVE-8829](https://issues.apache.org/jira/browse/HIVE-8829) | Upgrade to Thrift 0.9.2 |  Major | . | Vaibhav Gumashta | Prasad Mujumdar |
| [HIVE-8642](https://issues.apache.org/jira/browse/HIVE-8642) | Hive stack() UDTF Doesn\'t Support NULL Insert Values |  Minor | SQL, UDF | Nishant Kelkar | Navis |
| [HIVE-8910](https://issues.apache.org/jira/browse/HIVE-8910) | Refactoring of PassThroughOutputFormat |  Minor | Query Processor, StorageHandler | Navis | Navis |
| [HIVE-4766](https://issues.apache.org/jira/browse/HIVE-4766) | Support HS2 client login timeout when the thrift thread max# is reached |  Major | HiveServer2 | Chaoyu Tang | Chaoyu Tang |
| [HIVE-8971](https://issues.apache.org/jira/browse/HIVE-8971) | HIVE-8965 exposed some classes which start with Test but are not tests |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8976](https://issues.apache.org/jira/browse/HIVE-8976) | Make nine additional tests deterministic |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8983](https://issues.apache.org/jira/browse/HIVE-8983) | PTest Backup spark.log in addition to hive.log |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8977](https://issues.apache.org/jira/browse/HIVE-8977) | TestParquetDirect should be abstract |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-8996](https://issues.apache.org/jira/browse/HIVE-8996) | Rename getUGIForConf |  Major | . | Brock Noland | Brock Noland |
| [HIVE-7032](https://issues.apache.org/jira/browse/HIVE-7032) | Remove Triple Negative in Error 10129 |  Trivial | Documentation, Query Processor | Alan Jackoway | Sergio Peña |
| [HIVE-7896](https://issues.apache.org/jira/browse/HIVE-7896) | orcfiledump should be able to dump data |  Major | File Formats | Alan Gates | Alan Gates |
| [HIVE-8536](https://issues.apache.org/jira/browse/HIVE-8536) | Enable SkewJoinResolver for spark [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-9049](https://issues.apache.org/jira/browse/HIVE-9049) | Metastore should use TCompactProtocol as opposed to TBinaryProtocol |  Minor | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9062](https://issues.apache.org/jira/browse/HIVE-9062) | Explain plan doesn\'t print join keys for Tez shuffle join |  Major | Diagnosability, Tez | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9037](https://issues.apache.org/jira/browse/HIVE-9037) | Improve explain plan to show joining keys for shuffle join |  Major | Diagnosability | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8913](https://issues.apache.org/jira/browse/HIVE-8913) | Make SparkMapJoinResolver handle runtime skew join [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-8357](https://issues.apache.org/jira/browse/HIVE-8357) | Path type entities should use qualified path rather than string |  Minor | Authorization | Navis | Navis |
| [HIVE-8395](https://issues.apache.org/jira/browse/HIVE-8395) | CBO: enable by default |  Major | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-9097](https://issues.apache.org/jira/browse/HIVE-9097) | Support runtime skew join for more queries [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-9106](https://issues.apache.org/jira/browse/HIVE-9106) | improve the performance of null scan optimizer when several table scans share a physical path |  Minor | Physical Optimizer | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-9158](https://issues.apache.org/jira/browse/HIVE-9158) | Multiple LDAP server URLs in hive.server2.authentication.ldap.url |  Minor | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-9176](https://issues.apache.org/jira/browse/HIVE-9176) | Delegation token interval should be configurable in HadoopThriftAuthBridge |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8155](https://issues.apache.org/jira/browse/HIVE-8155) |  In select statement after \* any random characters are allowed in hive but in RDBMS its not allowed |  Critical | . | Ferdinand Xu | Dong Chen |
| [HIVE-9226](https://issues.apache.org/jira/browse/HIVE-9226) | Beeline interweaves the query result and query log sometimes |  Minor | . | Dong Chen | Dong Chen |
| [HIVE-5718](https://issues.apache.org/jira/browse/HIVE-5718) | Support direct fetch for lateral views, sub queries, etc. |  Trivial | Query Processor | Navis | Navis |
| [HIVE-7977](https://issues.apache.org/jira/browse/HIVE-7977) | Avoid creating serde for partitions if possible in FetchTask |  Trivial | Query Processor | Navis | Navis |
| [HIVE-7685](https://issues.apache.org/jira/browse/HIVE-7685) | Parquet memory manager |  Major | Serializers/Deserializers | Brock Noland | Dong Chen |
| [HIVE-9140](https://issues.apache.org/jira/browse/HIVE-9140) | Add Calcite\'s ReduceExpressionRules to Hive |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9189](https://issues.apache.org/jira/browse/HIVE-9189) | Add ProjectRemove rule on CBO path |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8988](https://issues.apache.org/jira/browse/HIVE-8988) | Support advanced aggregation in Hive to Calcite path |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-9318](https://issues.apache.org/jira/browse/HIVE-9318) | Add UnionMerge rule on cbo path |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-4639](https://issues.apache.org/jira/browse/HIVE-4639) | Add has null flag to ORC internal index |  Major | File Formats | Owen O\'Malley | Prasanth Jayachandran |
| [HIVE-9314](https://issues.apache.org/jira/browse/HIVE-9314) | Writable object inspector should use Writable classes from Hadoop for get |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9119](https://issues.apache.org/jira/browse/HIVE-9119) | ZooKeeperHiveLockManager does not use zookeeper in the proper way |  Major | Locking | Na Yang | Na Yang |
| [HIVE-9244](https://issues.apache.org/jira/browse/HIVE-9244) | Upgrade 0.23 hadoop-shims to latest stable hadoop-2.6.0 |  Major | Shims | Gopal V | Gopal V |
| [HIVE-7550](https://issues.apache.org/jira/browse/HIVE-7550) | Extend cached evaluation to multiple expressions |  Trivial | Query Processor | Navis | Navis |
| [HIVE-7313](https://issues.apache.org/jira/browse/HIVE-7313) | Allow in-memory/ssd session-level temp-tables |  Major | Tez | Gopal V | Gopal V |
| [HIVE-9367](https://issues.apache.org/jira/browse/HIVE-9367) | CombineFileInputFormatShim#getDirIndices is expensive |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9383](https://issues.apache.org/jira/browse/HIVE-9383) | Improve schema verification error message |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-9372](https://issues.apache.org/jira/browse/HIVE-9372) | Parallel checking non-combinable paths in CombineHiveInputFormat |  Major | . | Rui Li | Rui Li |
| [HIVE-4809](https://issues.apache.org/jira/browse/HIVE-4809) | ReduceSinkOperator of PTFOperator can have redundant key columns |  Major | PTF-Windowing | Yin Huai | Navis |
| [HIVE-9357](https://issues.apache.org/jira/browse/HIVE-9357) | Create ADD\_MONTHS UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9358](https://issues.apache.org/jira/browse/HIVE-9358) | Create LAST\_DAY UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9378](https://issues.apache.org/jira/browse/HIVE-9378) | Spark qfile tests should reuse RSC [Spark Branch] |  Major | Spark | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9341](https://issues.apache.org/jira/browse/HIVE-9341) | Apply ColumnPrunning for noop PTFs |  Trivial | PTF-Windowing | Navis | Navis |
| [HIVE-9538](https://issues.apache.org/jira/browse/HIVE-9538) | Exclude thirdparty directory from tarballs |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-9549](https://issues.apache.org/jira/browse/HIVE-9549) | Include missing directories in source tarball |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-9586](https://issues.apache.org/jira/browse/HIVE-9586) | Too verbose log can hurt performance, we should always check log level first |  Major | . | Rui Li | Rui Li |
| [HIVE-9608](https://issues.apache.org/jira/browse/HIVE-9608) | Define SPARK\_HOME if not defined automagically |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-9691](https://issues.apache.org/jira/browse/HIVE-9691) | Include a few more files include the source tarball |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9707](https://issues.apache.org/jira/browse/HIVE-9707) | ExecDriver does not get token from environment |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9705](https://issues.apache.org/jira/browse/HIVE-9705) | All curator deps should be listed in dependency management section |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9708](https://issues.apache.org/jira/browse/HIVE-9708) | Remove testlibs directory |  Major | . | Brock Noland | Brock Noland |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-7431](https://issues.apache.org/jira/browse/HIVE-7431) | When run on spark cluster, some spark tasks may fail |  Major | . | Rui Li | Rui Li |
| [HIVE-7489](https://issues.apache.org/jira/browse/HIVE-7489) | Change ql/pom.xml to fix mvn project setup [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-7523](https://issues.apache.org/jira/browse/HIVE-7523) | Fix spark build after merge merging trunk |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-7556](https://issues.apache.org/jira/browse/HIVE-7556) | Fix code style, license header, tabs, etc. [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-7626](https://issues.apache.org/jira/browse/HIVE-7626) | Add jar through CLI did not loaded by Spark executor[Spark Branck] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-7652](https://issues.apache.org/jira/browse/HIVE-7652) | Check OutputCollector after closing ExecMapper/ExecReducer |  Major | Spark | Venki Korukanti | Venki Korukanti |
| [HIVE-7540](https://issues.apache.org/jira/browse/HIVE-7540) | NotSerializableException encountered when using sortByKey transformation |  Major | Spark | Rui Li | Rui Li |
| [HIVE-7642](https://issues.apache.org/jira/browse/HIVE-7642) | Set hive input format by configuration.[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-7591](https://issues.apache.org/jira/browse/HIVE-7591) | GenMapRedUtils::addStatsTask only assumes either MapredWork or TezWork |  Major | Spark | Chao Sun | Brock Noland |
| [HIVE-7643](https://issues.apache.org/jira/browse/HIVE-7643) | ExecMapper static states lead to unpredictable query result.[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-7624](https://issues.apache.org/jira/browse/HIVE-7624) | Reduce operator initialization failed when running multiple MR query on spark |  Major | Spark | Rui Li | Rui Li |
| [HIVE-7763](https://issues.apache.org/jira/browse/HIVE-7763) | Failed to query TABLESAMPLE on empty bucket table [Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-7745](https://issues.apache.org/jira/browse/HIVE-7745) | NullPointerException when turn on hive.optimize.union.remove, hive.merge.mapfiles and hive.merge.mapredfiles [Spark Branch] |  Major | Spark | Na Yang | Na Yang |
| [HIVE-7530](https://issues.apache.org/jira/browse/HIVE-7530) | Go thru the common code to find references to HIVE\_EXECUCTION\_ENGINE to make sure conditions works with Spark [Spark Branch] |  Major | Spark | Xuefu Zhang | Na Yang |
| [HIVE-7747](https://issues.apache.org/jira/browse/HIVE-7747) | Submitting a query to Spark from HiveServer2 fails [Spark Branch] |  Major | Spark | Venki Korukanti | Venki Korukanti |
| [HIVE-7799](https://issues.apache.org/jira/browse/HIVE-7799) | TRANSFORM failed in transform\_ppr1.q[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-7909](https://issues.apache.org/jira/browse/HIVE-7909) | Fix sample8.q automatic test failure[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8266](https://issues.apache.org/jira/browse/HIVE-8266) | create function using \<resource\> statement compilation should include resource URI entity |  Major | SQL | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-7627](https://issues.apache.org/jira/browse/HIVE-7627) | FSStatsPublisher does fit into Spark multi-thread task mode[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8257](https://issues.apache.org/jira/browse/HIVE-8257) | Accumulo introduces old hadoop-client dependency |  Critical | Build Infrastructure | Josh Elser | Josh Elser |
| [HIVE-8300](https://issues.apache.org/jira/browse/HIVE-8300) | Missing guava lib causes IllegalStateException when deserializing a task [Spark Branch] |  Major | Spark | Rui Li |  |
| [HIVE-8182](https://issues.apache.org/jira/browse/HIVE-8182) | beeline fails when executing multiple-line queries with trailing spaces |  Major | . | Yongzhi Chen | Sergio Peña |
| [HIVE-8180](https://issues.apache.org/jira/browse/HIVE-8180) | Update SparkReduceRecordHandler for processing the vectors [spark branch] |  Major | Spark | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-8317](https://issues.apache.org/jira/browse/HIVE-8317) | WebHCat pom should explicitly depend on jersey-core |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8330](https://issues.apache.org/jira/browse/HIVE-8330) | HiveResultSet.findColumn() parameters are case sensitive |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-5536](https://issues.apache.org/jira/browse/HIVE-5536) | Incorrect Operation Name is passed to hookcontext |  Major | HiveServer2 | Shreepadma Venugopalan | Brock Noland |
| [HIVE-8345](https://issues.apache.org/jira/browse/HIVE-8345) | q-test for Avro date support |  Major | Serializers/Deserializers | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-5865](https://issues.apache.org/jira/browse/HIVE-5865) | AvroDeserializer incorrectly assumes keys to Maps will always be of type \'org.apache.avro.util.Utf8\' |  Major | . | Ben Roling | Ben Roling |
| [HIVE-7932](https://issues.apache.org/jira/browse/HIVE-7932) | It may cause NP exception when add accessed columns to ReadEntity |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [HIVE-8425](https://issues.apache.org/jira/browse/HIVE-8425) | enable vectorized\_mapjoin.q,vectorized\_nested\_mapjoin.q [Sparch Branch] |  Major | . | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-8338](https://issues.apache.org/jira/browse/HIVE-8338) | Add ip and command to semantic analyzer hook context |  Major | Query Processor | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8381](https://issues.apache.org/jira/browse/HIVE-8381) | Update hive version on trunk to 0.15 |  Major | Build Infrastructure | Vikram Dixit K | Vikram Dixit K |
| [HIVE-3781](https://issues.apache.org/jira/browse/HIVE-3781) | Index related events should be delivered to metastore event listener |  Major | Metastore | Sudhanshu Arora | Navis |
| [HIVE-8448](https://issues.apache.org/jira/browse/HIVE-8448) | Union All might not work due to the type conversion issue |  Major | Query Processor | Chaoyu Tang | Yongzhi Chen |
| [HIVE-8491](https://issues.apache.org/jira/browse/HIVE-8491) | Fix build name in ptest pre-commit message |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8387](https://issues.apache.org/jira/browse/HIVE-8387) | add retry logic to ZooKeeperStorage in WebHCat |  Critical | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-8500](https://issues.apache.org/jira/browse/HIVE-8500) | beeline does not need to set hive.aux.jars.path |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8496](https://issues.apache.org/jira/browse/HIVE-8496) | Re-enable statistics [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-7951](https://issues.apache.org/jira/browse/HIVE-7951) | InputFormats implementing (Job)Configurable should not be cached |  Trivial | Query Processor | Navis | Navis |
| [HIVE-8518](https://issues.apache.org/jira/browse/HIVE-8518) | Compile time skew join optimization returns duplicated results |  Major | Logical Optimizer | Rui Li | Rui Li |
| [HIVE-8545](https://issues.apache.org/jira/browse/HIVE-8545) | Exception when casting Text to BytesWritable [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8576](https://issues.apache.org/jira/browse/HIVE-8576) | Guaranteed NPE in StatsRulesProcFactory |  Major | . | Lars Francke | Lars Francke |
| [HIVE-8426](https://issues.apache.org/jira/browse/HIVE-8426) | paralle.q assert failed.[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8457](https://issues.apache.org/jira/browse/HIVE-8457) | MapOperator initialization fails when multiple Spark threads is enabled [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8118](https://issues.apache.org/jira/browse/HIVE-8118) | Support work that have multiple child works to work around SPARK-3622  [Spark Branch] |  Major | Spark | Xuefu Zhang | Chao Sun |
| [HIVE-6165](https://issues.apache.org/jira/browse/HIVE-6165) | Unify HivePreparedStatement from jdbc:hive and jdbc:hive2 |  Minor | HiveServer2, JDBC | Helmut Zechmann |  |
| [HIVE-8600](https://issues.apache.org/jira/browse/HIVE-8600) | Add option to log explain output for query |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8627](https://issues.apache.org/jira/browse/HIVE-8627) | Compute stats on a table from impala caused the table to be corrupted |  Major | Metastore | Na Yang | Na Yang |
| [HIVE-8634](https://issues.apache.org/jira/browse/HIVE-8634) | HiveServer2 fair scheduler queue mapping doesn\'t handle the secondary groups rules correctly |  Major | HiveServer2 | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-8610](https://issues.apache.org/jira/browse/HIVE-8610) | Compile time skew join optimization doesn\'t work with auto map join |  Major | . | Rui Li | Rui Li |
| [HIVE-7930](https://issues.apache.org/jira/browse/HIVE-7930) | enable vectorization\_short\_regress.q,  vector\_string\_concat.q [Spark Branch] |  Major | . | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-8666](https://issues.apache.org/jira/browse/HIVE-8666) | hive.metastore.server.max.threads default is too high |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8680](https://issues.apache.org/jira/browse/HIVE-8680) | Set Max Message for Binary Thrift endpoints |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8693](https://issues.apache.org/jira/browse/HIVE-8693) | Separate out fair scheduler dependency from hadoop 0.23 shim |  Major | HiveServer2, Shims | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-8720](https://issues.apache.org/jira/browse/HIVE-8720) | Update orc\_merge tests to make it consistent across OS\'es |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-8728](https://issues.apache.org/jira/browse/HIVE-8728) | Fix ptf.q determinism |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8736](https://issues.apache.org/jira/browse/HIVE-8736) | add ordering to cbo\_correctness to make result consistent |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8743](https://issues.apache.org/jira/browse/HIVE-8743) | Disable MapJoin [Spark Branch] |  Minor | Spark | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8708](https://issues.apache.org/jira/browse/HIVE-8708) | Add query id to explain log option |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-7795](https://issues.apache.org/jira/browse/HIVE-7795) | Enable ptf.q and ptf\_streaming.q.[Spark Branch] |  Major | Spark | Chengxiang Li | Jimmy Xiang |
| [HIVE-8757](https://issues.apache.org/jira/browse/HIVE-8757) | YARN dep in scheduler shim should be optional |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8636](https://issues.apache.org/jira/browse/HIVE-8636) | CBO: split cbo\_correctness test |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8556](https://issues.apache.org/jira/browse/HIVE-8556) | introduce overflow control and sanity check to BytesBytesMapJoin |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8611](https://issues.apache.org/jira/browse/HIVE-8611) | grant/revoke syntax should support additional objects for authorization plugins |  Major | Authentication, SQL | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-8612](https://issues.apache.org/jira/browse/HIVE-8612) | Support metadata result filter hooks |  Major | Authorization, Metastore | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-8542](https://issues.apache.org/jira/browse/HIVE-8542) | Enable groupby\_map\_ppr.q and groupby\_map\_ppr\_multi\_distinct.q [Spark Branch] |  Major | Spark | Chao Sun | Rui Li |
| [HIVE-8796](https://issues.apache.org/jira/browse/HIVE-8796) | TestCliDriver acid tests with decimal needs benchmark to be updated |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-8847](https://issues.apache.org/jira/browse/HIVE-8847) | Fix bugs in jenkins scripts |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8791](https://issues.apache.org/jira/browse/HIVE-8791) | Hive permission inheritance throws exception S3 |  Major | Security | Szehon Ho | Szehon Ho |
| [HIVE-8284](https://issues.apache.org/jira/browse/HIVE-8284) | Equality comparison is done between two floating point variables in HiveRelMdUniqueKeys#getUniqueKeys() |  Minor | CBO | Ted Yu | JongWon Park |
| [HIVE-8762](https://issues.apache.org/jira/browse/HIVE-8762) | HiveMetaStore.BooleanPointer should be replaced with an AtomicBoolean |  Major | Transactions | Alan Gates | Alan Gates |
| [HIVE-6683](https://issues.apache.org/jira/browse/HIVE-6683) | Beeline does not accept comments at end of line |  Major | CLI | Jeremy Beard | Sergio Peña |
| [HIVE-8308](https://issues.apache.org/jira/browse/HIVE-8308) | Acid related table properties should be defined in one place and should be case insensitive |  Major | Transactions | Alan Gates | Alan Gates |
| [HIVE-8512](https://issues.apache.org/jira/browse/HIVE-8512) | queries with star and gby produce incorrect results |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8812](https://issues.apache.org/jira/browse/HIVE-8812) | TestMinimrCliDriver failure if run in the same command as TestHBaseNegativeCliDriver |  Major | Testing Infrastructure | Jason Dere | Jason Dere |
| [HIVE-7997](https://issues.apache.org/jira/browse/HIVE-7997) | Potential null pointer reference in ObjectInspectorUtils#compareTypes() |  Major | Types | Ted Yu | Navis |
| [HIVE-8869](https://issues.apache.org/jira/browse/HIVE-8869) | RowSchema not updated for some ops when columns are pruned |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-8879](https://issues.apache.org/jira/browse/HIVE-8879) | Upgrade derby version to address race candition |  Major | HCatalog, Metastore | Roshan Naik | Roshan Naik |
| [HIVE-8891](https://issues.apache.org/jira/browse/HIVE-8891) | Another possible cause to NucleusObjectNotFoundException from drops/rollback |  Major | Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-8881](https://issues.apache.org/jira/browse/HIVE-8881) | Receiving json "{"error":"Could not find job job\_1415748506143\_0002"}" when web client tries to fetch all jobs from webhcat where HDFS does not have the data. |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-8803](https://issues.apache.org/jira/browse/HIVE-8803) | DESC SCHEMA \<DATABASE-NAME\> is not working |  Trivial | Query Processor | Navis | Navis |
| [HIVE-8808](https://issues.apache.org/jira/browse/HIVE-8808) | HiveInputFormat caching cannot work with all input formats |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8874](https://issues.apache.org/jira/browse/HIVE-8874) | Error Accessing HBase from Hive via Oozie on Kerberos 5.0.1 cluster |  Major | HBase Handler | Yongzhi Chen | Yongzhi Chen |
| [HIVE-8872](https://issues.apache.org/jira/browse/HIVE-8872) | Hive view of HBase range scan intermittently returns incorrect data. |  Major | HBase Handler | Yongzhi Chen | Yongzhi Chen |
| [HIVE-8901](https://issues.apache.org/jira/browse/HIVE-8901) | increase retry attempt, interval on metastore database errors |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-8359](https://issues.apache.org/jira/browse/HIVE-8359) | Map containing null values are not correctly written in Parquet files |  Major | File Formats | Frédéric TERRAZZONI | Sergio Peña |
| [HIVE-8893](https://issues.apache.org/jira/browse/HIVE-8893) | Implement whitelist for builtin UDFs to avoid untrused code execution in multiuser mode |  Major | Authorization, HiveServer2, SQL | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-8594](https://issues.apache.org/jira/browse/HIVE-8594) | Wrong condition in SettableConfigUpdater#setHiveConfWhiteList() |  Minor | . | Ted Yu | Ted Yu |
| [HIVE-8565](https://issues.apache.org/jira/browse/HIVE-8565) | beeline may go into an infinite loop when using EOF |  Major | . | Chao Sun | Chao Sun |
| [HIVE-8863](https://issues.apache.org/jira/browse/HIVE-8863) | Cannot drop table with uppercase name after "compute statistics for columns" |  Major | Metastore, Statistics | Juan Yu | Chaoyu Tang |
| [HIVE-8877](https://issues.apache.org/jira/browse/HIVE-8877) | improve context logging during job submission via WebHCat |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-8916](https://issues.apache.org/jira/browse/HIVE-8916) | Handle user@domain username under LDAP authentication |  Major | Authentication | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8825](https://issues.apache.org/jira/browse/HIVE-8825) | SQLCompletor catches Throwable and ignores it |  Major | . | Brock Noland | Ferdinand Xu |
| [HIVE-8926](https://issues.apache.org/jira/browse/HIVE-8926) | Projections that only swap input columns are identified incorrectly as identity projections |  Major | Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-8909](https://issues.apache.org/jira/browse/HIVE-8909) | Hive doesn\'t correctly read Parquet nested types |  Major | . | Ryan Blue | Ryan Blue |
| [HIVE-8917](https://issues.apache.org/jira/browse/HIVE-8917) | HIVE-5679 adds two thread safety problems |  Major | . | Brock Noland | Sergey Shelukhin |
| [HIVE-8944](https://issues.apache.org/jira/browse/HIVE-8944) | TestCompactor fails with IncompatibleClassChangeError |  Major | . | Brock Noland | Alan Gates |
| [HIVE-6914](https://issues.apache.org/jira/browse/HIVE-6914) | parquet-hive cannot write nested map (map value is map) |  Major | File Formats | Tongjie Chen | Ryan Blue |
| [HIVE-4009](https://issues.apache.org/jira/browse/HIVE-4009) | CLI Tests fail randomly due to MapReduce LocalJobRunner race condition |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8965](https://issues.apache.org/jira/browse/HIVE-8965) | Enhance PTest to kill all processes between tests and to report when a TEST\*.xml file is not generated |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8967](https://issues.apache.org/jira/browse/HIVE-8967) | Fix bucketmapjoin7.q determinism |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8875](https://issues.apache.org/jira/browse/HIVE-8875) | hive.optimize.sort.dynamic.partition should be turned off for ACID |  Major | . | Alan Gates | Alan Gates |
| [HIVE-8978](https://issues.apache.org/jira/browse/HIVE-8978) | Fix test determinism issue for qfile: smb\_mapjoin\_1.q etc |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8986](https://issues.apache.org/jira/browse/HIVE-8986) | Add limit\_partition\_metadataonly.q in testconfiguration.properties [Spark Branch] |  Trivial | . | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-8889](https://issues.apache.org/jira/browse/HIVE-8889) | JDBC Driver ResultSet.getXXXXXX(String columnLabel) methods Broken |  Critical | . | G Lingle | Chaoyu Tang |
| [HIVE-6421](https://issues.apache.org/jira/browse/HIVE-6421) | abs() should preserve precision/scale of decimal input |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-8948](https://issues.apache.org/jira/browse/HIVE-8948) | TestStreaming is flaky |  Major | . | Alan Gates | Alan Gates |
| [HIVE-8990](https://issues.apache.org/jira/browse/HIVE-8990) | mapjoin\_mapjoin.q is failing on Tez (missed golden file update) |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-9011](https://issues.apache.org/jira/browse/HIVE-9011) | Fix parquet\_join.q determinism |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8797](https://issues.apache.org/jira/browse/HIVE-8797) | Simultaneous dynamic inserts can result in "partition already exists" error |  Major | . | Alan Gates | Alan Gates |
| [HIVE-9001](https://issues.apache.org/jira/browse/HIVE-9001) | Ship with log4j.properties file that has a reliable time based rolling policy |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-9024](https://issues.apache.org/jira/browse/HIVE-9024) | NullPointerException when starting webhcat server if templeton.hive.properties is not set |  Major | WebHCat | Na Yang | Na Yang |
| [HIVE-8975](https://issues.apache.org/jira/browse/HIVE-8975) | Possible performance regression on bucket\_map\_join\_tez2.q |  Major | Logical Optimizer, Statistics | Jesus Camacho Rodriguez | Prasanth Jayachandran |
| [HIVE-9032](https://issues.apache.org/jira/browse/HIVE-9032) | Help for orcfiledump script does not reflect new options |  Major | . | Alan Gates | Alan Gates |
| [HIVE-8326](https://issues.apache.org/jira/browse/HIVE-8326) | Using DbTxnManager with concurrency off results in run time error |  Major | Transactions | Alan Gates | Alan Gates |
| [HIVE-8850](https://issues.apache.org/jira/browse/HIVE-8850) | ObjectStore:: rollbackTransaction() needs to be looked into further. |  Major | Metastore | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-8523](https://issues.apache.org/jira/browse/HIVE-8523) | Potential null dereference in DDLSemanticAnalyzer#addInputsOutputsAlterTable() |  Minor | . | Ted Yu | Navis |
| [HIVE-9048](https://issues.apache.org/jira/browse/HIVE-9048) | Hive build failed on hadoop-1 after HIVE-8828. |  Major | . | Chengxiang Li | Chengxiang Li |
| [HIVE-8564](https://issues.apache.org/jira/browse/HIVE-8564) | DROP TABLE IF EXISTS throws exception if the table does not exist. |  Minor | HiveServer2 | Ben | Navis |
| [HIVE-9060](https://issues.apache.org/jira/browse/HIVE-9060) | Fix child operator references after NonBlockingOpDeDupProc |  Major | Logical Optimizer | Szehon Ho | Szehon Ho |
| [HIVE-6623](https://issues.apache.org/jira/browse/HIVE-6623) | Add "owner" tag to ptest2 created instances |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9077](https://issues.apache.org/jira/browse/HIVE-9077) | Set completer in CliDriver is not working |  Trivial | CLI | Navis | Navis |
| [HIVE-9129](https://issues.apache.org/jira/browse/HIVE-9129) | Migrate to newer Calcite snapshot, where ByteString is now in org.apache.calcite.avatica.util |  Major | . | Julian Hyde | Ashutosh Chauhan |
| [HIVE-9122](https://issues.apache.org/jira/browse/HIVE-9122) | Need to remove additional references to hive-shims-common-secure, hive-shims-0.20 |  Major | Build Infrastructure | Jason Dere | Jason Dere |
| [HIVE-9130](https://issues.apache.org/jira/browse/HIVE-9130) |  vector\_partition\_diff\_num\_cols result is not updated after CBO upgrade |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-9113](https://issues.apache.org/jira/browse/HIVE-9113) | Explain on query failed with NPE |  Major | Query Processor | Chao Sun | Navis |
| [HIVE-8848](https://issues.apache.org/jira/browse/HIVE-8848) | data loading from text files or text file processing doesn\'t handle nulls correctly |  Major | . | Sergey Shelukhin | Navis |
| [HIVE-9096](https://issues.apache.org/jira/browse/HIVE-9096) | GenericUDF may be left unclosed in PartitionPrune#visitCall() |  Minor | . | Ted Yu |  |
| [HIVE-9055](https://issues.apache.org/jira/browse/HIVE-9055) | Tez: union all followed by group by followed by another union all gives error |  Major | Tez | Pengcheng Xiong | Vikram Dixit K |
| [HIVE-9149](https://issues.apache.org/jira/browse/HIVE-9149) | Add unit test to test implicit conversion during dynamic partitioning/distribute by |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-9150](https://issues.apache.org/jira/browse/HIVE-9150) | Unrelated types are compared in GenTezWork#getFollowingWorkIndex() |  Minor | . | Ted Yu |  |
| [HIVE-7024](https://issues.apache.org/jira/browse/HIVE-7024) | Escape control characters for explain result |  Trivial | . | Navis | Navis |
| [HIVE-9006](https://issues.apache.org/jira/browse/HIVE-9006) | hiveserver thrift api version is still 6 |  Major | . | Binglin Chang | Binglin Chang |
| [HIVE-9177](https://issues.apache.org/jira/browse/HIVE-9177) | Fix child operator references after NonBlockingOpDeDupProc (II) |  Major | Logical Optimizer | Szehon Ho | Szehon Ho |
| [HIVE-9120](https://issues.apache.org/jira/browse/HIVE-9120) | Hive Query log does not work when hive.exec.parallel is true |  Major | HiveServer2, Logging | Dong Chen | Dong Chen |
| [HIVE-9197](https://issues.apache.org/jira/browse/HIVE-9197) | fix lvj\_mapjoin.q diff in trunk |  Trivial | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-8613](https://issues.apache.org/jira/browse/HIVE-8613) | percentile\_approx raise a comparator error |  Major | . | Nicolas Lalevée | Navis |
| [HIVE-8938](https://issues.apache.org/jira/browse/HIVE-8938) | Compiler should save the transform URI as input entity |  Major | Parser, SQL | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-9199](https://issues.apache.org/jira/browse/HIVE-9199) | Excessive exclusive lock used in some DDLs with DummyTxnManager |  Major | Locking | Chaoyu Tang | Chaoyu Tang |
| [HIVE-9215](https://issues.apache.org/jira/browse/HIVE-9215) | Some mapjoin queries broken with IdentityProjectRemover with PPD |  Major | Logical Optimizer | Szehon Ho | Navis |
| [HIVE-9195](https://issues.apache.org/jira/browse/HIVE-9195) | CBO changes constant to column type |  Major | CBO | Navis | Navis |
| [HIVE-9221](https://issues.apache.org/jira/browse/HIVE-9221) | Remove deprecation warning for hive.metastore.local |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-9154](https://issues.apache.org/jira/browse/HIVE-9154) | Cache pathToPartitionInfo in context aware record reader |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9243](https://issues.apache.org/jira/browse/HIVE-9243) | Static Map in IOContext is not thread safe |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9301](https://issues.apache.org/jira/browse/HIVE-9301) | Potential null dereference in MoveTask#createTargetPath() |  Major | . | Ted Yu | Ted Yu |
| [HIVE-9203](https://issues.apache.org/jira/browse/HIVE-9203) | CREATE TEMPORARY FUNCTION hangs trying to acquire lock |  Major | . | Johndee Burks | Chaoyu Tang |
| [HIVE-9299](https://issues.apache.org/jira/browse/HIVE-9299) | Reuse Configuration in AvroSerdeUtils |  Major | Serializers/Deserializers | Nitay Joffe | Nitay Joffe |
| [HIVE-9300](https://issues.apache.org/jira/browse/HIVE-9300) | Make TCompactProtocol configurable |  Major | Metastore | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9242](https://issues.apache.org/jira/browse/HIVE-9242) | Many places in CBO code eat exceptions |  Blocker | . | Brock Noland |  |
| [HIVE-9316](https://issues.apache.org/jira/browse/HIVE-9316) | TestSqoop tests in WebHCat testsuite hardcode libdir path to hdfs |  Minor | Tests, WebHCat | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-9309](https://issues.apache.org/jira/browse/HIVE-9309) | schematool fails on Postgres 8.1 |  Major | Database/Schema | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-9310](https://issues.apache.org/jira/browse/HIVE-9310) | CLI JLine does not flush history back to ~/.hivehistory |  Minor | CLI | Gopal V | Gopal V |
| [HIVE-9351](https://issues.apache.org/jira/browse/HIVE-9351) | Running Hive Jobs with Tez cause templeton to never report percent complete |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-8914](https://issues.apache.org/jira/browse/HIVE-8914) | HDFSCleanup thread holds reference to FileSystem |  Major | WebHCat | shanyu zhao | shanyu zhao |
| [HIVE-9353](https://issues.apache.org/jira/browse/HIVE-9353) | make TABLE keyword optional in INSERT INTO TABLE foo... |  Major | Parser | Eugene Koifman | Eugene Koifman |
| [HIVE-9344](https://issues.apache.org/jira/browse/HIVE-9344) | Fix flaky test optimize\_nullscan |  Major | Tests | Brock Noland | Navis |
| [HIVE-9331](https://issues.apache.org/jira/browse/HIVE-9331) | get rid of pre-optimized-hashtable memory optimizations |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-9377](https://issues.apache.org/jira/browse/HIVE-9377) | UDF in\_file() in WHERE predicate causes NPE. |  Major | UDF | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-9381](https://issues.apache.org/jira/browse/HIVE-9381) | HCatalog hardcodes maximum append limit to 1000. |  Major | HCatalog | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-9255](https://issues.apache.org/jira/browse/HIVE-9255) | Fastpath for limited fetches from unpartitioned tables |  Minor | Physical Optimizer | Gopal V | Gopal V |
| [HIVE-8964](https://issues.apache.org/jira/browse/HIVE-8964) | Some TestMiniTezCliDriver tests taking two hours |  Blocker | . | Brock Noland | Gunther Hagleitner |
| [HIVE-9386](https://issues.apache.org/jira/browse/HIVE-9386) | FileNotFoundException when using in\_file() |  Major | UDF | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-9393](https://issues.apache.org/jira/browse/HIVE-9393) | reduce noisy log level of ColumnarSerDe.java:116 from INFO to DEBUG |  Minor | Serializers/Deserializers | Yongzhi Chen | Yongzhi Chen |
| [HIVE-9330](https://issues.apache.org/jira/browse/HIVE-9330) | DummyTxnManager will throw NPE if WriteEntity writeType has not been set |  Minor | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-9347](https://issues.apache.org/jira/browse/HIVE-9347) | Bug with max() together with rank() and grouping sets |  Major | Query Processor | Michal Krawczyk | Navis |
| [HIVE-9366](https://issues.apache.org/jira/browse/HIVE-9366) | wrong date in description annotation in date\_add() and date\_sub() udf |  Trivial | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9369](https://issues.apache.org/jira/browse/HIVE-9369) | fix arguments length checking in Upper and Lower UDF |  Trivial | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9414](https://issues.apache.org/jira/browse/HIVE-9414) | Fixup post HIVE-9264 - Merge encryption branch to trunk |  Major | . | Brock Noland | Vikram Dixit K |
| [HIVE-1869](https://issues.apache.org/jira/browse/HIVE-1869) | TestMTQueries failing on jenkins |  Major | Query Processor, Testing Infrastructure | Carl Steinbach | Brock Noland |
| [HIVE-9289](https://issues.apache.org/jira/browse/HIVE-9289) | TODO : Store user name in session [Spark Branch] |  Major | Spark | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-9382](https://issues.apache.org/jira/browse/HIVE-9382) | Query got rerun with Global Limit optimization on and Fetch optimization off |  Major | Physical Optimizer | Wei Zheng | Wei Zheng |
| [HIVE-9440](https://issues.apache.org/jira/browse/HIVE-9440) | Folders may not be pruned for Hadoop 2 |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8730](https://issues.apache.org/jira/browse/HIVE-8730) | schemaTool failure when date partition has non-date value |  Minor | Metastore | Johndee Burks | Chaoyu Tang |
| [HIVE-9441](https://issues.apache.org/jira/browse/HIVE-9441) | Remove call to deprecated Calcite method |  Minor | . | Julian Hyde | Julian Hyde |
| [HIVE-9446](https://issues.apache.org/jira/browse/HIVE-9446) | JDBC DatabaseMetadata.getColumns() does not work for temporary tables |  Major | JDBC | Jason Dere | Jason Dere |
| [HIVE-9443](https://issues.apache.org/jira/browse/HIVE-9443) | ORC PPD - fix fuzzy case evaluation of IS\_NULL |  Major | File Formats | Gopal V | Gopal V |
| [HIVE-9445](https://issues.apache.org/jira/browse/HIVE-9445) | Revert HIVE-5700 - enforce single date format for partition column storage |  Blocker | Metastore | Brock Noland | Brock Noland |
| [HIVE-9396](https://issues.apache.org/jira/browse/HIVE-9396) | date\_add()/date\_sub() should allow tinyint/smallint/bigint arguments in addition to int |  Major | UDF | Jason Dere | Sergio Peña |
| [HIVE-9448](https://issues.apache.org/jira/browse/HIVE-9448) | Merge spark to trunk 1/23/15 |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-9475](https://issues.apache.org/jira/browse/HIVE-9475) | HiveMetastoreClient.tableExists does not work |  Blocker | . | Brock Noland | Brock Noland |
| [HIVE-9462](https://issues.apache.org/jira/browse/HIVE-9462) | HIVE-8577 - breaks type evolution |  Major | Serializers/Deserializers | Brock Noland | Brock Noland |
| [HIVE-6308](https://issues.apache.org/jira/browse/HIVE-6308) | COLUMNS\_V2 Metastore table not populated for tables created without an explicit column list. |  Major | Database/Schema | Alexander Behm | Yongzhi Chen |
| [HIVE-9515](https://issues.apache.org/jira/browse/HIVE-9515) | Check hive.vectorized.execution.reduce.enabled [Spark Branch] |  Minor | Spark | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9519](https://issues.apache.org/jira/browse/HIVE-9519) | Bump up spark client connection timeout |  Blocker | Spark | Ashish K Singh | Ashish K Singh |
| [HIVE-9502](https://issues.apache.org/jira/browse/HIVE-9502) | Parquet cannot read Map types from files written with Hive \<= 0.12 |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-7069](https://issues.apache.org/jira/browse/HIVE-7069) | Zookeeper connection leak |  Major | HiveServer2 | Z. S. |  |
| [HIVE-9610](https://issues.apache.org/jira/browse/HIVE-9610) | Continuation of HIVE-9438 - The standalone-jdbc jar missing some classes |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9611](https://issues.apache.org/jira/browse/HIVE-9611) | Allow SPARK\_HOME as well as spark.home to define sparks location |  Minor | Spark | Brock Noland | Brock Noland |
| [HIVE-9454](https://issues.apache.org/jira/browse/HIVE-9454) | Test failures due to new Calcite version |  Major | . | Brock Noland | Laljo John Pullokkaran |
| [HIVE-9646](https://issues.apache.org/jira/browse/HIVE-9646) | Beeline doesn\'t show Spark job progress info [Spark Branch] |  Blocker | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9651](https://issues.apache.org/jira/browse/HIVE-9651) | FileSinkOperator does not pass in conf to serde.initialize |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9621](https://issues.apache.org/jira/browse/HIVE-9621) | HiveServer2 http mode - embedded jetty should use SynchronousQueue |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-9593](https://issues.apache.org/jira/browse/HIVE-9593) | ORC Reader should ignore unknown metadata streams |  Major | File Formats | Gopal V | Owen O\'Malley |
| [HIVE-9437](https://issues.apache.org/jira/browse/HIVE-9437) | Beeline does not add any existing HADOOP\_CLASSPATH |  Blocker | . | Ashish K Singh | Brock Noland |
| [HIVE-9684](https://issues.apache.org/jira/browse/HIVE-9684) | Incorrect disk range computation in ORC because of optional stream kind |  Critical | File Formats | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9686](https://issues.apache.org/jira/browse/HIVE-9686) | HiveMetastore.logAuditEvent can be used before sasl server is started |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9685](https://issues.apache.org/jira/browse/HIVE-9685) | CLIService should create SessionState after logging into kerberos |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9701](https://issues.apache.org/jira/browse/HIVE-9701) | JMH module does not compile under hadoop-1 profile |  Blocker | . | Brock Noland | Brock Noland |
| [HIVE-10573](https://issues.apache.org/jira/browse/HIVE-10573) | Improve Hive service for connection |  Major | HiveServer2 | Chao Sun | Chao Sun |
| [HIVE-8527](https://issues.apache.org/jira/browse/HIVE-8527) | Incorrect TIMESTAMP result on JDBC direct read when next row has no (null) value for the TIMESTAMP |  Major | JDBC | Doug Sedlak |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-7772](https://issues.apache.org/jira/browse/HIVE-7772) | Add tests for order/sort/distribute/cluster by query [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-8207](https://issues.apache.org/jira/browse/HIVE-8207) | Add .q tests for multi-table insertion [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8256](https://issues.apache.org/jira/browse/HIVE-8256) | Add SORT\_QUERY\_RESULTS for test that doesn\'t guarantee order #2 |  Minor | . | Chao Sun | Chao Sun |
| [HIVE-8572](https://issues.apache.org/jira/browse/HIVE-8572) | Enable more vectorization tests [Spark Branch] |  Minor | Spark, Tests | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8533](https://issues.apache.org/jira/browse/HIVE-8533) | Enable all q-tests for multi-insertion [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8602](https://issues.apache.org/jira/browse/HIVE-8602) | Add SORT\_QUERY\_RESULTS for skewjoinopt2 |  Major | Tests | Rui Li | Rui Li |
| [HIVE-8601](https://issues.apache.org/jira/browse/HIVE-8601) | Fix auto\_sortmerge\_join\_16 determinism |  Major | . | Szehon Ho | Szehon Ho |
| [HIVE-8573](https://issues.apache.org/jira/browse/HIVE-8573) | Fix some non-deterministic vectorization tests |  Minor | Tests | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8617](https://issues.apache.org/jira/browse/HIVE-8617) | Turn on all join .q tests #2 [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8430](https://issues.apache.org/jira/browse/HIVE-8430) | Enable parquet\_join.q [Spark Branch] |  Major | Spark | Chao Sun |  |
| [HIVE-8686](https://issues.apache.org/jira/browse/HIVE-8686) | Enable vectorization tests with query results sort [Spark Branch] |  Trivial | Spark | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8753](https://issues.apache.org/jira/browse/HIVE-8753) | TestMiniTezCliDriver.testCliDriver\_vector\_mapjoin\_reduce failing on trunk |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8801](https://issues.apache.org/jira/browse/HIVE-8801) | Make orc\_merge\_incompat1.q deterministic across platforms |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-8929](https://issues.apache.org/jira/browse/HIVE-8929) | incorrect error message for cbo path |  Major | CBO | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7924](https://issues.apache.org/jira/browse/HIVE-7924) | auto\_sortmerge\_join\_8 sometimes fails with OOM |  Major | Tests | Szehon Ho | Szehon Ho |
| [HIVE-9091](https://issues.apache.org/jira/browse/HIVE-9091) | Add additional unit tests for HiveSQLException |  Minor | JDBC | Aihua Xu | Aihua Xu |
| [HIVE-9173](https://issues.apache.org/jira/browse/HIVE-9173) | Fix auto\_join29.q, auto\_join\_without\_localtask.q determinism |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8431](https://issues.apache.org/jira/browse/HIVE-8431) | Enable smb\_mapjoin\_11.q and smb\_mapjoin\_12.q [Spark Branch] |  Major | . | Chao Sun | Szehon Ho |
| [HIVE-8327](https://issues.apache.org/jira/browse/HIVE-8327) | mvn site -Pfindbugs |  Major | Diagnosability | Gopal V | Gopal V |
| [HIVE-9290](https://issues.apache.org/jira/browse/HIVE-9290) | Make some test results deterministic |  Major | . | Rui Li | Rui Li |
| [HIVE-9360](https://issues.apache.org/jira/browse/HIVE-9360) | TestSparkClient throws Timeoutexception |  Major | Tests | Szehon Ho | Szehon Ho |
| [HIVE-9403](https://issues.apache.org/jira/browse/HIVE-9403) | File tests determinism with multiple reducers |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9417](https://issues.apache.org/jira/browse/HIVE-9417) | Fix failing test groupby\_grouping\_window.q on trunk |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9435](https://issues.apache.org/jira/browse/HIVE-9435) | Fix auto\_join21.q for Tez |  Minor | Tests | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9627](https://issues.apache.org/jira/browse/HIVE-9627) | Add cbo\_gby\_empty.q.out for Spark [Spark Branch] |  Trivial | . | Jimmy Xiang | Jimmy Xiang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-7329](https://issues.apache.org/jira/browse/HIVE-7329) | Create SparkWork [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-7411](https://issues.apache.org/jira/browse/HIVE-7411) | Exclude hadoop 1 from spark dep [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-7331](https://issues.apache.org/jira/browse/HIVE-7331) | Create SparkCompiler [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-7436](https://issues.apache.org/jira/browse/HIVE-7436) | Load Spark configuration into Hive driver [Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-7465](https://issues.apache.org/jira/browse/HIVE-7465) | Implement pre-commit testing [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-7410](https://issues.apache.org/jira/browse/HIVE-7410) | Spark 1.0.1 is released, stop using SNAPSHOT [Spark Branch] |  Minor | Spark | Brock Noland | Brock Noland |
| [HIVE-7338](https://issues.apache.org/jira/browse/HIVE-7338) | Create SparkPlanGenerator [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-7335](https://issues.apache.org/jira/browse/HIVE-7335) | Create SparkPlan, DAG representation of a Spark job [Spark Branch] |  Major | . | Xuefu Zhang | Xuefu Zhang |
| [HIVE-7336](https://issues.apache.org/jira/browse/HIVE-7336) | Create MapFunction [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-7337](https://issues.apache.org/jira/browse/HIVE-7337) | Create ReduceFunction [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-7561](https://issues.apache.org/jira/browse/HIVE-7561) | StarterProject: Move from assert to Guava Preconditions.\* in Hive on Spark [Spark Branch] |  Major | Spark | Brock Noland | Chao Sun |
| [HIVE-7527](https://issues.apache.org/jira/browse/HIVE-7527) | Support order by and sort by on Spark [Spark Branch] |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-7597](https://issues.apache.org/jira/browse/HIVE-7597) | Support analyze table [Spark Branch] |  Major | Spark | Xuefu Zhang | Chengxiang Li |
| [HIVE-7492](https://issues.apache.org/jira/browse/HIVE-7492) | Enhance SparkCollector [Spark Branch] |  Major | Spark | Xuefu Zhang | Venki Korukanti |
| [HIVE-7560](https://issues.apache.org/jira/browse/HIVE-7560) | StarterProject: Fix exception handling in POC code [Spark Branch] |  Major | Spark | Brock Noland | Chao Sun |
| [HIVE-7665](https://issues.apache.org/jira/browse/HIVE-7665) | Create TestSparkCliDriver to run test in spark local mode [Spark Branch] |  Major | Spark, Testing Infrastructure | Szehon Ho | Szehon Ho |
| [HIVE-7708](https://issues.apache.org/jira/browse/HIVE-7708) | Fix qtest-spark pom.xml reference to test properties [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-7541](https://issues.apache.org/jira/browse/HIVE-7541) | Support union all on Spark [Spark Branch] |  Major | Spark | Xuefu Zhang | Na Yang |
| [HIVE-7677](https://issues.apache.org/jira/browse/HIVE-7677) | Implement native HiveReduceFunction [Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-7748](https://issues.apache.org/jira/browse/HIVE-7748) | Add qfile\_regex to qtest-spark pom [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-7758](https://issues.apache.org/jira/browse/HIVE-7758) | PTest2 separates test files with spaces while QTestGen uses commas [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-7749](https://issues.apache.org/jira/browse/HIVE-7749) | Enable timestamp.\* tests [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-7746](https://issues.apache.org/jira/browse/HIVE-7746) | Cleanup SparkClient and make refreshLocalResources method synchronized [Spark Branch] |  Minor | Spark | Venki Korukanti | Venki Korukanti |
| [HIVE-7766](https://issues.apache.org/jira/browse/HIVE-7766) | Cleanup Reduce operator code [Spark Branch] |  Major | Spark | Brock Noland | Rui Li |
| [HIVE-7528](https://issues.apache.org/jira/browse/HIVE-7528) | Support cluster by and distributed by [Spark Branch] |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-7755](https://issues.apache.org/jira/browse/HIVE-7755) | Enable avro\* tests [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-7334](https://issues.apache.org/jira/browse/HIVE-7334) | Create SparkShuffler, shuffling data between map-side data processing and reduce-side processing [Spark Branch] |  Major | . | Xuefu Zhang | Rui Li |
| [HIVE-7781](https://issues.apache.org/jira/browse/HIVE-7781) | Enable windowing and analytic function qtests [Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-7728](https://issues.apache.org/jira/browse/HIVE-7728) | Enable q-tests for TABLESAMPLE feature  [Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-7773](https://issues.apache.org/jira/browse/HIVE-7773) | Union all query finished with errors [Spark Branch] |  Critical | Spark | Rui Li | Rui Li |
| [HIVE-7717](https://issues.apache.org/jira/browse/HIVE-7717) | Add .q tests coverage for "union all" [Spark Branch] |  Major | Spark | Na Yang | Na Yang |
| [HIVE-7767](https://issues.apache.org/jira/browse/HIVE-7767) | hive.optimize.union.remove does not work properly [Spark Branch] |  Major | . | Na Yang | Na Yang |
| [HIVE-7815](https://issues.apache.org/jira/browse/HIVE-7815) | Reduce Side Join with single reducer [Spark Branch] |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-7702](https://issues.apache.org/jira/browse/HIVE-7702) | Start running .q file tests on spark [Spark Branch] |  Major | Spark | Brock Noland | Chinna Rao Lalam |
| [HIVE-7839](https://issues.apache.org/jira/browse/HIVE-7839) | Update union\_null results now that it\'s deterministic [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-7791](https://issues.apache.org/jira/browse/HIVE-7791) | Enable tests on Spark branch (1) [Sparch Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-7821](https://issues.apache.org/jira/browse/HIVE-7821) | StarterProject: enable groupby4.q [Spark Branch] |  Major | Spark | Brock Noland | Suhas Satish |
| [HIVE-7861](https://issues.apache.org/jira/browse/HIVE-7861) | Enable reduce-side join tests (1) [Spark Branch] |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-7866](https://issues.apache.org/jira/browse/HIVE-7866) | Merge from trunk (1) [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-7848](https://issues.apache.org/jira/browse/HIVE-7848) | Refresh SparkContext when spark configuration changes [Spark Branch] |  Major | Spark | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-7867](https://issues.apache.org/jira/browse/HIVE-7867) | Re-order spark.query.files in sorted order [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-7792](https://issues.apache.org/jira/browse/HIVE-7792) | Enable tests on Spark branch (2) [Sparch Branch] |  Major | Spark | Brock Noland | Venki Korukanti |
| [HIVE-7810](https://issues.apache.org/jira/browse/HIVE-7810) | Insert overwrite table query has strange behavior when set hive.optimize.union.remove=true [Spark Branch] |  Major | Spark | Na Yang | Na Yang |
| [HIVE-7793](https://issues.apache.org/jira/browse/HIVE-7793) | Enable tests on Spark branch (3) [Sparch Branch] |  Major | . | Brock Noland | Chengxiang Li |
| [HIVE-7844](https://issues.apache.org/jira/browse/HIVE-7844) | optimize\_nullscan.q fails due to differences in explain plan [Spark Branch] |  Major | Spark | Venki Korukanti | Venki Korukanti |
| [HIVE-7881](https://issues.apache.org/jira/browse/HIVE-7881) | enable Qtest scriptfile1.q [Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-7775](https://issues.apache.org/jira/browse/HIVE-7775) | enable sample8.q.[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-7922](https://issues.apache.org/jira/browse/HIVE-7922) | Merge from trunk (2) [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-7580](https://issues.apache.org/jira/browse/HIVE-7580) | Support dynamic partitioning [Spark Branch] |  Major | Spark | Xuefu Zhang | Chinna Rao Lalam |
| [HIVE-8015](https://issues.apache.org/jira/browse/HIVE-8015) | Merge from trunk (3) [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-8017](https://issues.apache.org/jira/browse/HIVE-8017) | Use HiveKey instead of BytesWritable as key type of the pair RDD [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-8054](https://issues.apache.org/jira/browse/HIVE-8054) | Disable hive.optimize.union.remove when hive.execution.engine=spark [Spark Branch] |  Major | Spark | Xuefu Zhang | Na Yang |
| [HIVE-7870](https://issues.apache.org/jira/browse/HIVE-7870) | Insert overwrite table query does not generate correct task plan [Spark Branch] |  Major | Spark | Na Yang | Na Yang |
| [HIVE-8074](https://issues.apache.org/jira/browse/HIVE-8074) | Merge trunk into spark 9/12/2014 |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-8055](https://issues.apache.org/jira/browse/HIVE-8055) | Code cleanup after HIVE-8054 [Spark Branch] |  Major | Spark | Xuefu Zhang | Na Yang |
| [HIVE-8140](https://issues.apache.org/jira/browse/HIVE-8140) | Remove obsolete code from SparkWork [Spark Branch] |  Major | Spark | Xuefu Zhang | Chao Sun |
| [HIVE-8141](https://issues.apache.org/jira/browse/HIVE-8141) | Refactor the GraphTran code by moving union handling logic to UnionTran [Spark Branch] |  Major | Spark | Na Yang | Na Yang |
| [HIVE-7503](https://issues.apache.org/jira/browse/HIVE-7503) | Support Hive\'s multi-table insert query with Spark [Spark Branch] |  Major | Spark | Xuefu Zhang | Chao Sun |
| [HIVE-8206](https://issues.apache.org/jira/browse/HIVE-8206) | Merge from trunk to spark 9/20/14 |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-7842](https://issues.apache.org/jira/browse/HIVE-7842) | Enable qtest load\_dyn\_part1.q [Spark Branch] |  Major | Spark | Venki Korukanti | Venki Korukanti |
| [HIVE-8106](https://issues.apache.org/jira/browse/HIVE-8106) | Enable vectorization for spark [spark branch] |  Major | Spark | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-7856](https://issues.apache.org/jira/browse/HIVE-7856) | Enable parallelism in Reduce Side Join [Spark Branch] |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-7843](https://issues.apache.org/jira/browse/HIVE-7843) | orc\_analyze.q fails due to random mapred.task.id in FileSinkOperator [Spark Branch] |  Major | Spark | Venki Korukanti | Venki Korukanti |
| [HIVE-8278](https://issues.apache.org/jira/browse/HIVE-8278) | Restoring a graph representation of SparkPlan [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8302](https://issues.apache.org/jira/browse/HIVE-8302) | GroupByShuffler.java missing apache license header [Spark Branch] |  Major | Spark | Xuefu Zhang | Chao Sun |
| [HIVE-8130](https://issues.apache.org/jira/browse/HIVE-8130) | Support Date in Avro |  Major | Serializers/Deserializers | Brock Noland | Mohit Sabharwal |
| [HIVE-8303](https://issues.apache.org/jira/browse/HIVE-8303) | Merge from trunk to spark 9/29/14 |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-8356](https://issues.apache.org/jira/browse/HIVE-8356) | Fix fs\_default\_name2.q on spark [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-8353](https://issues.apache.org/jira/browse/HIVE-8353) | Merge trunk into spark 10/4/2015 [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-8352](https://issues.apache.org/jira/browse/HIVE-8352) | Enable windowing.q for spark [Spark Branch] |  Minor | Spark | Brock Noland | Jimmy Xiang |
| [HIVE-7384](https://issues.apache.org/jira/browse/HIVE-7384) | Research into reduce-side join [Spark Branch] |  Major | Spark | Xuefu Zhang | Szehon Ho |
| [HIVE-7880](https://issues.apache.org/jira/browse/HIVE-7880) | Support subquery [Spark Branch] |  Major | Spark | Chengxiang Li | Xuefu Zhang |
| [HIVE-8412](https://issues.apache.org/jira/browse/HIVE-8412) | Make reduce side join work for all join queries [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-8275](https://issues.apache.org/jira/browse/HIVE-8275) | Introduce MapInput encapsulating a Hadoop RDD [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-7794](https://issues.apache.org/jira/browse/HIVE-7794) | Enable tests on Spark branch (4) [Sparch Branch] |  Major | . | Brock Noland | Chinna Rao Lalam |
| [HIVE-7776](https://issues.apache.org/jira/browse/HIVE-7776) | enable sample10.q.[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8276](https://issues.apache.org/jira/browse/HIVE-8276) | Separate shuffle from ReduceTran and so create ShuffleTran [Spark Branch] |  Major | Spark | Xuefu Zhang | Chao Sun |
| [HIVE-7439](https://issues.apache.org/jira/browse/HIVE-7439) | Spark job monitoring and error reporting [Spark Branch] |  Major | Spark | Xuefu Zhang | Chengxiang Li |
| [HIVE-8455](https://issues.apache.org/jira/browse/HIVE-8455) | Print Spark job progress format info on the console[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8362](https://issues.apache.org/jira/browse/HIVE-8362) | Investigate flaky test parallel.q |  Major | Testing Infrastructure | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8456](https://issues.apache.org/jira/browse/HIVE-8456) | Support Hive Counter to collect spark job metric[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8477](https://issues.apache.org/jira/browse/HIVE-8477) | Update timestamp in status console [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-7873](https://issues.apache.org/jira/browse/HIVE-7873) | Re-enable lazy HiveBaseFunctionResultList [Spark Branch] |  Major | . | Brock Noland | Jimmy Xiang |
| [HIVE-8436](https://issues.apache.org/jira/browse/HIVE-8436) | Modify SparkWork to split works with multiple child works [Spark Branch] |  Major | Spark | Xuefu Zhang | Chao Sun |
| [HIVE-8438](https://issues.apache.org/jira/browse/HIVE-8438) | Clean up code introduced by HIVE-7503 and such [Spark Plan] |  Major | Spark | Xuefu Zhang | Chao Sun |
| [HIVE-7709](https://issues.apache.org/jira/browse/HIVE-7709) | Create SparkReporter [Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8540](https://issues.apache.org/jira/browse/HIVE-8540) | HivePairFlatMapFunction.java missing license header [Spark Branch] |  Major | Documentation | Xuefu Zhang | Chao Sun |
| [HIVE-8528](https://issues.apache.org/jira/browse/HIVE-8528) | Add remote Spark client to Hive [Spark Branch] |  Major | Spark | Marcelo Vanzin | Marcelo Vanzin |
| [HIVE-8486](https://issues.apache.org/jira/browse/HIVE-8486) | TPC-DS Query 96 parallelism is not set correcly |  Major | Spark | Brock Noland | Chao Sun |
| [HIVE-7731](https://issues.apache.org/jira/browse/HIVE-7731) | Incorrect result returned when a map work has multiple downstream reduce works [Spark Branch] |  Major | Spark | Rui Li | Chao Sun |
| [HIVE-8437](https://issues.apache.org/jira/browse/HIVE-8437) | Modify SparkPlan generation to set toCache flag to SparkTrans where caching is needed [Spark Branch] |  Major | Spark | Xuefu Zhang |  |
| [HIVE-8599](https://issues.apache.org/jira/browse/HIVE-8599) | Add InterfaceAudience annotations to spark-client [Spark Branch] |  Major | Spark | Marcelo Vanzin | Marcelo Vanzin |
| [HIVE-8422](https://issues.apache.org/jira/browse/HIVE-8422) | Turn on all join .q tests [Spark Branch] |  Major | Spark | Xuefu Zhang | Chao Sun |
| [HIVE-8616](https://issues.apache.org/jira/browse/HIVE-8616) | convert joinOp to MapJoinOp and generate MapWorks only [Spark Branch] |  Major | Spark | Suhas Satish | Suhas Satish |
| [HIVE-8539](https://issues.apache.org/jira/browse/HIVE-8539) | Enable collect table statistics based on SparkCounter[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8502](https://issues.apache.org/jira/browse/HIVE-8502) | Merge trunk into spark 10/17/14 [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-8651](https://issues.apache.org/jira/browse/HIVE-8651) | CBO: sort column changed in infer\_bucket\_sort test |  Major | CBO | Sergey Shelukhin | Jesus Camacho Rodriguez |
| [HIVE-8202](https://issues.apache.org/jira/browse/HIVE-8202) | Support SMB Join for Hive on Spark [Spark Branch] |  Major | Spark | Xuefu Zhang | Szehon Ho |
| [HIVE-8682](https://issues.apache.org/jira/browse/HIVE-8682) | Enable table statistic collection on counter for CTAS query[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8725](https://issues.apache.org/jira/browse/HIVE-8725) | spark-client build failed sometimes.[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8670](https://issues.apache.org/jira/browse/HIVE-8670) | Combine Hive Operator statistic and Spark Metric to an uniformed query statistic.[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8623](https://issues.apache.org/jira/browse/HIVE-8623) | Implement HashTableLoader for Spark map-join [Spark Branch] |  Major | . | Suhas Satish | Jimmy Xiang |
| [HIVE-8718](https://issues.apache.org/jira/browse/HIVE-8718) | Refactoring: move mapLocalWork field from MapWork to BaseWork |  Minor | Query Processor | Xuefu Zhang | Xuefu Zhang |
| [HIVE-7729](https://issues.apache.org/jira/browse/HIVE-7729) | Enable q-tests for ANALYZE TABLE feature [Spark Branch] |  Major | Spark | Chengxiang Li | Na Yang |
| [HIVE-8509](https://issues.apache.org/jira/browse/HIVE-8509) | UT: fix list\_bucket\_dml\_2 test [Spark Branch] |  Minor | Spark | Thomas Friedrich | Chinna Rao Lalam |
| [HIVE-8726](https://issues.apache.org/jira/browse/HIVE-8726) | Collect Spark TaskMetrics and build job statistic[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8674](https://issues.apache.org/jira/browse/HIVE-8674) | Fix tests after merge [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-8649](https://issues.apache.org/jira/browse/HIVE-8649) | Increase level of parallelism in reduce phase [Spark Branch] |  Major | Spark | Brock Noland | Jimmy Xiang |
| [HIVE-8700](https://issues.apache.org/jira/browse/HIVE-8700) | Replace ReduceSink to HashTableSink (or equi.) for small tables [Spark Branch] |  Major | Spark | Xuefu Zhang | Suhas Satish |
| [HIVE-8777](https://issues.apache.org/jira/browse/HIVE-8777) | Should only register used counters in SparkCounters[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8758](https://issues.apache.org/jira/browse/HIVE-8758) | Fix hadoop-1 build [Spark Branch] |  Major | Spark | Xuefu Zhang | Jimmy Xiang |
| [HIVE-8622](https://issues.apache.org/jira/browse/HIVE-8622) | Split map-join plan into 2 SparkTasks in 3 stages [Spark Branch] |  Major | . | Suhas Satish | Chao Sun |
| [HIVE-8621](https://issues.apache.org/jira/browse/HIVE-8621) | Dump small table join data for map-join [Spark Branch] |  Major | . | Suhas Satish | Jimmy Xiang |
| [HIVE-8775](https://issues.apache.org/jira/browse/HIVE-8775) | Merge from trunk 11/6/14 [SPARK BRANCH] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-8793](https://issues.apache.org/jira/browse/HIVE-8793) | Refactor to make splitting SparkWork a physical resolver [Spark Branch] |  Major | Spark | Chao Sun | Rui Li |
| [HIVE-8780](https://issues.apache.org/jira/browse/HIVE-8780) | insert1.q and ppd\_join4.q hangs with hadoop-1 [Spark Branch] |  Major | Spark | Jimmy Xiang | Chengxiang Li |
| [HIVE-8842](https://issues.apache.org/jira/browse/HIVE-8842) | auto\_join2.q produces incorrect tree [Spark Branch] |  Major | Spark | Szehon Ho | Chao Sun |
| [HIVE-8810](https://issues.apache.org/jira/browse/HIVE-8810) | Make HashTableSinkOperator works for Spark Branch [Spark Branch] |  Major | Spark | Chao Sun | Jimmy Xiang |
| [HIVE-8841](https://issues.apache.org/jira/browse/HIVE-8841) | Make RDD caching work for multi-insert after HIVE-8793 when map join is involved [Spark Branch] |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-8859](https://issues.apache.org/jira/browse/HIVE-8859) | ColumnStatsTask fails because of SparkMapJoinResolver [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8776](https://issues.apache.org/jira/browse/HIVE-8776) | Generate MapredLocalWork in SparkMapJoinResolver [Spark Brach] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8865](https://issues.apache.org/jira/browse/HIVE-8865) | Needs to set hashTableMemoryUsage for MapJoinDesc [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8840](https://issues.apache.org/jira/browse/HIVE-8840) | Print prettier Spark work graph after HIVE-8793 [Spark Branch] |  Major | Spark | Xuefu Zhang | Jimmy Xiang |
| [HIVE-8860](https://issues.apache.org/jira/browse/HIVE-8860) | Populate ExecMapperContext in SparkReduceRecordHandler [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8844](https://issues.apache.org/jira/browse/HIVE-8844) | Choose a persisent policy for RDD caching [Spark Branch] |  Major | Spark | Xuefu Zhang | Jimmy Xiang |
| [HIVE-8862](https://issues.apache.org/jira/browse/HIVE-8862) | Fix ordering diferences on TestParse tests due to Java8 |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-8852](https://issues.apache.org/jira/browse/HIVE-8852) | Update new spark progress API for local submitted job monitoring [Spark Branch] |  Major | Spark | Chengxiang Li | Rui Li |
| [HIVE-8892](https://issues.apache.org/jira/browse/HIVE-8892) | Use MEMORY\_AND\_DISK for RDD caching [Spark Branch] |  Minor | Spark | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8867](https://issues.apache.org/jira/browse/HIVE-8867) | Investigate test failure on mapjoin\_filter\_on\_outerjoin.q [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8882](https://issues.apache.org/jira/browse/HIVE-8882) | Fix test TestHiveKVResultCache [Spark Branch] |  Minor | Tests | Szehon Ho | Jimmy Xiang |
| [HIVE-8899](https://issues.apache.org/jira/browse/HIVE-8899) | Merge from trunk to spark [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-8885](https://issues.apache.org/jira/browse/HIVE-8885) | Investigate test failure on auto\_join13.q [Spark Branch] |  Major | Spark | Chao Sun |  |
| [HIVE-8833](https://issues.apache.org/jira/browse/HIVE-8833) | Unify spark client API and implement remote spark client.[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8835](https://issues.apache.org/jira/browse/HIVE-8835) | identify dependency scope for Remote Spark Context.[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8122](https://issues.apache.org/jira/browse/HIVE-8122) | Make use of SearchArgument classes for Parquet SERDE |  Major | . | Brock Noland | Ferdinand Xu |
| [HIVE-8887](https://issues.apache.org/jira/browse/HIVE-8887) | Investigate test failures on auto\_join6, auto\_join7, auto\_join18, auto\_join18\_multi\_distinct [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8854](https://issues.apache.org/jira/browse/HIVE-8854) | Guava dependency conflict between hive driver and remote spark context[Spark Branch] |  Major | Spark | Chengxiang Li | Marcelo Vanzin |
| [HIVE-8883](https://issues.apache.org/jira/browse/HIVE-8883) | Investigate test failures on auto\_join30.q [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8921](https://issues.apache.org/jira/browse/HIVE-8921) | Investigate test failure on auto\_join2.q [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8908](https://issues.apache.org/jira/browse/HIVE-8908) | Investigate test failure on join34.q [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8868](https://issues.apache.org/jira/browse/HIVE-8868) | SparkSession and SparkClient mapping[Spark Branch] |  Major | Spark | Chengxiang Li | Rui Li |
| [HIVE-8756](https://issues.apache.org/jira/browse/HIVE-8756) | numRows and rawDataSize are not collected by the Spark stats [Spark Branch] |  Major | Spark | Na Yang | Na Yang |
| [HIVE-8942](https://issues.apache.org/jira/browse/HIVE-8942) | Investigate test failure on skewjoin.q [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8707](https://issues.apache.org/jira/browse/HIVE-8707) | Fix ordering differences due to Java 8 HashMap function |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8905](https://issues.apache.org/jira/browse/HIVE-8905) | Servlet classes signer information does not match [Spark branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8834](https://issues.apache.org/jira/browse/HIVE-8834) | enable job progress monitoring of Remote Spark Context [Spark Branch] |  Major | Spark | Chengxiang Li | Rui Li |
| [HIVE-8951](https://issues.apache.org/jira/browse/HIVE-8951) | Spark remote context doesn\'t work with local-cluster [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-8959](https://issues.apache.org/jira/browse/HIVE-8959) | SparkSession is not closed until JVM exit.[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8946](https://issues.apache.org/jira/browse/HIVE-8946) | Enable Map Join [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8788](https://issues.apache.org/jira/browse/HIVE-8788) | UT: fix partition test case [Spark Branch] |  Major | Tests | Thomas Friedrich | Chinna Rao Lalam |
| [HIVE-8936](https://issues.apache.org/jira/browse/HIVE-8936) | Add SORT\_QUERY\_RESULTS for join tests that do not guarantee order |  Minor | Spark | Chao Sun | Chao Sun |
| [HIVE-8855](https://issues.apache.org/jira/browse/HIVE-8855) | Automatic calculate reduce number for spark job [Spark Branch] |  Major | Spark | Chengxiang Li | Jimmy Xiang |
| [HIVE-8956](https://issues.apache.org/jira/browse/HIVE-8956) | Hive hangs while some error/exception happens beyond job execution [Spark Branch] |  Major | Spark | Chengxiang Li | Rui Li |
| [HIVE-8961](https://issues.apache.org/jira/browse/HIVE-8961) | Remove unnecessary dependency collection task [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-8962](https://issues.apache.org/jira/browse/HIVE-8962) | Add SORT\_QUERY\_RESULTS for join tests that do not guarantee order #2 |  Minor | Spark | Chao Sun | Chao Sun |
| [HIVE-8934](https://issues.apache.org/jira/browse/HIVE-8934) | Investigate test failure on bucketmapjoin10.q and bucketmapjoin11.q [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8924](https://issues.apache.org/jira/browse/HIVE-8924) | Investigate test failure for join\_empty.q [Spark Branch] |  Major | Spark | Chao Sun | Szehon Ho |
| [HIVE-8984](https://issues.apache.org/jira/browse/HIVE-8984) | Enable job metrics/statistics gathering for remote spark context [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-8836](https://issues.apache.org/jira/browse/HIVE-8836) | Enable automatic tests with remote spark client [Spark Branch] |  Major | Spark | Chengxiang Li | Rui Li |
| [HIVE-8994](https://issues.apache.org/jira/browse/HIVE-8994) | Merge from trunk Nov 28 2014 |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-8963](https://issues.apache.org/jira/browse/HIVE-8963) | Investigate test failure on bucketmapjoin7.q [Spark Branch] |  Major | Spark | Chao Sun | Jimmy Xiang |
| [HIVE-8998](https://issues.apache.org/jira/browse/HIVE-8998) | Logging is not configured in spark-submit sub-process |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-8995](https://issues.apache.org/jira/browse/HIVE-8995) | Find thread leak in RSC Tests [Spark Branch] |  Major | Spark | Brock Noland | Rui Li |
| [HIVE-8922](https://issues.apache.org/jira/browse/HIVE-8922) | CBO: assorted date and timestamp issues |  Major | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8970](https://issues.apache.org/jira/browse/HIVE-8970) | Enable map join optimization only when hive.auto.convert.join is true [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8943](https://issues.apache.org/jira/browse/HIVE-8943) | Fix memory limit check for combine nested mapjoins [Spark Branch] |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-8991](https://issues.apache.org/jira/browse/HIVE-8991) | Fix custom\_input\_output\_format [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-9027](https://issues.apache.org/jira/browse/HIVE-9027) | Enable ppd\_join4 [Spark Branch] |  Trivial | Spark | Chao Sun | Chao Sun |
| [HIVE-8783](https://issues.apache.org/jira/browse/HIVE-8783) | Create some tests that use Spark counter for stats collection [Spark Branch] |  Major | Spark | Xuefu Zhang | Chengxiang Li |
| [HIVE-9016](https://issues.apache.org/jira/browse/HIVE-9016) | SparkCounter display name is not set correctly[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8992](https://issues.apache.org/jira/browse/HIVE-8992) | Fix bucket related test failure: parquet\_join.q [Spark Branch] |  Major | spark-branch | Xuefu Zhang | Jimmy Xiang |
| [HIVE-8923](https://issues.apache.org/jira/browse/HIVE-8923) | HIVE-8512 needs to be fixed also for CBO |  Major | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-9019](https://issues.apache.org/jira/browse/HIVE-9019) | Avoid using SPARK\_JAVA\_OPTS [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-9040](https://issues.apache.org/jira/browse/HIVE-9040) | Spark Memory can be formatted string [Spark Branch] |  Major | Spark | Brock Noland | Jimmy Xiang |
| [HIVE-8638](https://issues.apache.org/jira/browse/HIVE-8638) | Implement bucket map join optimization [Spark Branch] |  Major | Spark | Na Yang | Jimmy Xiang |
| [HIVE-7073](https://issues.apache.org/jira/browse/HIVE-7073) | Implement Binary in ParquetSerDe |  Major | . | David Chen | Ferdinand Xu |
| [HIVE-9054](https://issues.apache.org/jira/browse/HIVE-9054) | Add additional logging to SetSparkReducerParallelism [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-9036](https://issues.apache.org/jira/browse/HIVE-9036) | Replace akka for remote spark client RPC [Spark Branch] |  Major | Spark | Marcelo Vanzin | Marcelo Vanzin |
| [HIVE-9042](https://issues.apache.org/jira/browse/HIVE-9042) | Support multiple mapjoin operators in one work [Spark Branch] |  Major | spark-branch | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9063](https://issues.apache.org/jira/browse/HIVE-9063) | NPE in RemoteSparkJobStatus.getSparkStatistics [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-8507](https://issues.apache.org/jira/browse/HIVE-8507) | UT: fix rcfile\_bigdata test [Spark Branch] |  Minor | Spark | Thomas Friedrich | Chinna Rao Lalam |
| [HIVE-8993](https://issues.apache.org/jira/browse/HIVE-8993) | Make sure Spark + HS2 work [Spark Branch] |  Major | Spark | Xuefu Zhang | Chengxiang Li |
| [HIVE-8508](https://issues.apache.org/jira/browse/HIVE-8508) | UT: fix bucketsort\_insert tests - related to SMBMapJoinOperator |  Major | Spark | Thomas Friedrich | Chinna Rao Lalam |
| [HIVE-8405](https://issues.apache.org/jira/browse/HIVE-8405) | Research Bucket Map Join [Spark Branch] |  Major | Spark | Na Yang | Na Yang |
| [HIVE-7382](https://issues.apache.org/jira/browse/HIVE-7382) | Create a MiniSparkCluster and set up a testing framework [Spark Branch] |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-7613](https://issues.apache.org/jira/browse/HIVE-7613) | Research optimization of auto convert join to map join [Spark branch] |  Minor | Spark | Chengxiang Li | Suhas Satish |
| [HIVE-9043](https://issues.apache.org/jira/browse/HIVE-9043) | HiveException: Conflict on row inspector for {table} |  Major | Spark | Brock Noland | Jimmy Xiang |
| [HIVE-9033](https://issues.apache.org/jira/browse/HIVE-9033) | Fix ordering differences due to Java8 (part 2) |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-9034](https://issues.apache.org/jira/browse/HIVE-9034) | CBO: type change in literal\_ints.q |  Major | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-9035](https://issues.apache.org/jira/browse/HIVE-9035) | CBO: Disable PPD when functions are non-deterministic (ppd\_random.q  - non-deterministic udf rand() pushed above join) |  Major | CBO | Sergey Shelukhin | Laljo John Pullokkaran |
| [HIVE-9085](https://issues.apache.org/jira/browse/HIVE-9085) | Spark Client RPC should have larger default max message size [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-9079](https://issues.apache.org/jira/browse/HIVE-9079) | Hive hangs while failed to get executorCount[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-9081](https://issues.apache.org/jira/browse/HIVE-9081) | Bucket mapjoin should use the new alias in posToAliasMap [Spark Branch] |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8982](https://issues.apache.org/jira/browse/HIVE-8982) | IndexOutOfBounds exception in mapjoin [Spark Branch] |  Major | Spark | Szehon Ho | Chao Sun |
| [HIVE-8911](https://issues.apache.org/jira/browse/HIVE-8911) | Enable mapjoin hints [Spark Branch] |  Major | Spark | Szehon Ho | Chao Sun |
| [HIVE-7816](https://issues.apache.org/jira/browse/HIVE-7816) | Enable map-join tests which Tez executes [Spark Branch] |  Major | Spark | Brock Noland | Rui Li |
| [HIVE-9098](https://issues.apache.org/jira/browse/HIVE-9098) | Check cross product for conditional task [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-9078](https://issues.apache.org/jira/browse/HIVE-9078) | Hive should not submit second SparkTask while previous one has failed.[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-9099](https://issues.apache.org/jira/browse/HIVE-9099) | infer\_bucket\_sort\_convert\_join.q and mapjoin\_hook.q failed.[Spark Branch] |  Major | Spark | Chengxiang Li | Xuefu Zhang |
| [HIVE-9101](https://issues.apache.org/jira/browse/HIVE-9101) | bucket\_map\_join\_spark4.q failed due to NPE.[Spark Branch] |  Major | Spark | Chengxiang Li | Jimmy Xiang |
| [HIVE-9121](https://issues.apache.org/jira/browse/HIVE-9121) | Enable beeline query progress information for Spark job[Spark Branch] |  Critical | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-9041](https://issues.apache.org/jira/browse/HIVE-9041) | Generate better plan for queries containing both union and multi-insert [Spark Branch] |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-8787](https://issues.apache.org/jira/browse/HIVE-8787) | UT: update hive-site.xml for spark UTs to add hive\_admin\_user to admin role |  Minor | Tests | Thomas Friedrich | Thomas Friedrich |
| [HIVE-9059](https://issues.apache.org/jira/browse/HIVE-9059) | Remove wrappers for SparkJobInfo and SparkStageInfo [Spark Branch] |  Major | Spark | Xuefu Zhang | Chengxiang Li |
| [HIVE-8972](https://issues.apache.org/jira/browse/HIVE-8972) | Implement more fine-grained remote client-level events [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-8843](https://issues.apache.org/jira/browse/HIVE-8843) | Release RDD cache when Hive query is done [Spark Branch] |  Major | Spark | Xuefu Zhang | Jimmy Xiang |
| [HIVE-9109](https://issues.apache.org/jira/browse/HIVE-9109) | Add support for Java 8 specific q-test out files |  Major | Testing Infrastructure | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-9116](https://issues.apache.org/jira/browse/HIVE-9116) | Add unit test for multi sessions.[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-9136](https://issues.apache.org/jira/browse/HIVE-9136) | Profile query compiler [Spark Branch] |  Major | Spark | Brock Noland | Chao Sun |
| [HIVE-9127](https://issues.apache.org/jira/browse/HIVE-9127) | Improve CombineHiveInputFormat.getSplit performance |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9094](https://issues.apache.org/jira/browse/HIVE-9094) | TimeoutException when trying get executor count from RSC [Spark Branch] |  Major | Spark | Xuefu Zhang | Chengxiang Li |
| [HIVE-8639](https://issues.apache.org/jira/browse/HIVE-8639) | Convert SMBJoin to MapJoin [Spark Branch] |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-8131](https://issues.apache.org/jira/browse/HIVE-8131) | Support timestamp in Avro |  Major | . | Brock Noland | Ferdinand Xu |
| [HIVE-7952](https://issues.apache.org/jira/browse/HIVE-7952) | Investigate query failures (1) |  Major | Spark | Brock Noland | Thomas Friedrich |
| [HIVE-7954](https://issues.apache.org/jira/browse/HIVE-7954) | Investigate query failures (3) |  Major | Spark | Brock Noland | Thomas Friedrich |
| [HIVE-9088](https://issues.apache.org/jira/browse/HIVE-9088) | Spark counter serialization error in spark.log [Spark Branch] |  Major | Spark | Xuefu Zhang | Chengxiang Li |
| [HIVE-9164](https://issues.apache.org/jira/browse/HIVE-9164) | Profile query compiler #2 [Spark Branch] |  Minor | Spark | Chao Sun | Chao Sun |
| [HIVE-8640](https://issues.apache.org/jira/browse/HIVE-8640) | Support hints of SMBJoin [Spark Branch] |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-8773](https://issues.apache.org/jira/browse/HIVE-8773) | Fix TestWebHCatE2e#getStatus for Java8 |  Major | Tests | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-9202](https://issues.apache.org/jira/browse/HIVE-9202) | Choose Kryo as the serializer for pTest [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-9207](https://issues.apache.org/jira/browse/HIVE-9207) | Add more log information for debug RSC[Spark Branch] |  Minor | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-9209](https://issues.apache.org/jira/browse/HIVE-9209) | Spark branch compile failed on hadoop-1[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-9161](https://issues.apache.org/jira/browse/HIVE-9161) | Fix ordering differences on UDF functions due to Java8 |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-9193](https://issues.apache.org/jira/browse/HIVE-9193) | Fix ordering differences due to Java 8 (Part 3) |  Major | Tests | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-9181](https://issues.apache.org/jira/browse/HIVE-9181) | Fix SkewJoinOptimizer related Java 8 ordering differences |  Major | Tests | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-9216](https://issues.apache.org/jira/browse/HIVE-9216) | Avoid redundant clone of JobConf [Spark Branch] |  Minor | Spark | Rui Li | Rui Li |
| [HIVE-9206](https://issues.apache.org/jira/browse/HIVE-9206) | Fix Desc Formatted related Java 8 ordering differences |  Major | Tests | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-9153](https://issues.apache.org/jira/browse/HIVE-9153) | Perf enhancement on CombineHiveInputFormat and HiveInputFormat |  Major | Spark | Brock Noland | Rui Li |
| [HIVE-9133](https://issues.apache.org/jira/browse/HIVE-9133) | CBO (Calcite Return Path): Refactor Semantic Analyzer to Move CBO code out |  Major | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-9218](https://issues.apache.org/jira/browse/HIVE-9218) | Remove authorization\_admin\_almighty1 from spark tests [Spark Branch] |  Major | Spark | Brock Noland | Xuefu Zhang |
| [HIVE-9157](https://issues.apache.org/jira/browse/HIVE-9157) | Merge from trunk to spark 12/26/2014 [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-9222](https://issues.apache.org/jira/browse/HIVE-9222) | Fix ordering differences due to Java 8 (Part 4) |  Major | Tests | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8920](https://issues.apache.org/jira/browse/HIVE-8920) | IOContext problem with multiple MapWorks cloned for multi-insert [Spark Branch] |  Major | Spark | Chao Sun | Xuefu Zhang |
| [HIVE-9230](https://issues.apache.org/jira/browse/HIVE-9230) | Followup for HIVE-9125, update ppd\_join4.q.out for Spark [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-9239](https://issues.apache.org/jira/browse/HIVE-9239) | Fix ordering differences due to Java 8 (Part 5) |  Major | Tests | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-9241](https://issues.apache.org/jira/browse/HIVE-9241) | Fix TestCliDriver.testCliDriver\_subquery\_multiinsert |  Major | Tests | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-9256](https://issues.apache.org/jira/browse/HIVE-9256) | Merge trunk to spark 1/5/2015 [Spark Branch] |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-9246](https://issues.apache.org/jira/browse/HIVE-9246) | Remove tabs from spark code [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-9007](https://issues.apache.org/jira/browse/HIVE-9007) | Hive may generate wrong plan for map join queries due to IdentityProjectRemover [Spark Branch] |  Major | Spark | Chao Sun | Szehon Ho |
| [HIVE-9288](https://issues.apache.org/jira/browse/HIVE-9288) | TODO cleanup task1.[Spark Branch] |  Minor | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-9174](https://issues.apache.org/jira/browse/HIVE-9174) | Enable queuing of HCatalog notification events in metastore DB |  Major | HCatalog, Metastore | Alan Gates | Alan Gates |
| [HIVE-9281](https://issues.apache.org/jira/browse/HIVE-9281) | Code cleanup [Spark Branch] |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-9305](https://issues.apache.org/jira/browse/HIVE-9305) | Set default miniClusterType back to none in QTestUtil.[Spark branch] |  Minor | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-9267](https://issues.apache.org/jira/browse/HIVE-9267) | Ensure custom UDF works with Spark [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-9306](https://issues.apache.org/jira/browse/HIVE-9306) | Let Context.isLocalOnlyExecutionMode() return false if execution engine is Spark [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-9319](https://issues.apache.org/jira/browse/HIVE-9319) | Cleanup Modified Files [Spark Branch] |  Minor | Spark | Szehon Ho | Szehon Ho |
| [HIVE-9323](https://issues.apache.org/jira/browse/HIVE-9323) | Merge from trunk to spark 1/8/2015 |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-9251](https://issues.apache.org/jira/browse/HIVE-9251) | SetSparkReducerParallelism is likely to set too small number of reducers [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-9326](https://issues.apache.org/jira/browse/HIVE-9326) | BaseProtocol.Error failed to deserialization due to NPE.[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-9296](https://issues.apache.org/jira/browse/HIVE-9296) | Need to add schema upgrade changes for queueing events in the database |  Major | Metastore | Alan Gates | Alan Gates |
| [HIVE-7674](https://issues.apache.org/jira/browse/HIVE-7674) | Update to Spark 1.2 [Spark Branch] |  Blocker | Spark | Brock Noland | Brock Noland |
| [HIVE-9104](https://issues.apache.org/jira/browse/HIVE-9104) | windowing.q failed when mapred.reduce.tasks is set to larger than one |  Major | PTF-Windowing | Chao Sun | Chao Sun |
| [HIVE-9257](https://issues.apache.org/jira/browse/HIVE-9257) | Merge from spark to trunk January 2015 |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-9335](https://issues.apache.org/jira/browse/HIVE-9335) | Address review items on HIVE-9257 [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-9135](https://issues.apache.org/jira/browse/HIVE-9135) | Cache Map and Reduce works in RSC [Spark Branch] |  Major | Spark | Brock Noland | Jimmy Xiang |
| [HIVE-9321](https://issues.apache.org/jira/browse/HIVE-9321) | Notification message size can be arbitrarily long, DbNotificationListener limits to 1024 |  Major | . | Sushanth Sowmyan | Alan Gates |
| [HIVE-9175](https://issues.apache.org/jira/browse/HIVE-9175) | Add alters to list of events handled by NotificationListener |  Major | HCatalog | Alan Gates | Alan Gates |
| [HIVE-9352](https://issues.apache.org/jira/browse/HIVE-9352) | Merge from spark to trunk (follow-up of HIVE-9257) |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-9387](https://issues.apache.org/jira/browse/HIVE-9387) | Shutting down cli takes quite some time [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-9178](https://issues.apache.org/jira/browse/HIVE-9178) | Create a separate API for remote Spark Context RPC other than job submission [Spark Branch] |  Major | Spark | Xuefu Zhang | Marcelo Vanzin |
| [HIVE-9194](https://issues.apache.org/jira/browse/HIVE-9194) | Support select distinct \* |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-9315](https://issues.apache.org/jira/browse/HIVE-9315) | CBO (Calcite Return Path): Inline FileSinkOperator, Properties |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-9224](https://issues.apache.org/jira/browse/HIVE-9224) | CBO (Calcite Return Path): Inline Table, Properties |  Major | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-9110](https://issues.apache.org/jira/browse/HIVE-9110) | Performance of SELECT COUNT(\*) FROM store\_sales WHERE ss\_item\_sk IS NOT NULL [Spark Branch] |  Major | Spark | Brock Noland | Rui Li |
| [HIVE-9264](https://issues.apache.org/jira/browse/HIVE-9264) | Merge encryption branch to trunk |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9200](https://issues.apache.org/jira/browse/HIVE-9200) | CBO (Calcite Return Path): Inline Join, Properties |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-9342](https://issues.apache.org/jira/browse/HIVE-9342) | add num-executors / executor-cores / executor-memory option support for hive on spark in Yarn mode [Spark Branch] |  Minor | Spark | Pierre Yin | Pierre Yin |
| [HIVE-9179](https://issues.apache.org/jira/browse/HIVE-9179) | Add listeners on JobHandle so job status change can be notified to the client [Spark Branch] |  Major | Spark | Xuefu Zhang | Marcelo Vanzin |
| [HIVE-9395](https://issues.apache.org/jira/browse/HIVE-9395) | Make WAIT\_SUBMISSION\_TIMEOUT configuable and check timeout in SparkJobMonitor level.[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-9184](https://issues.apache.org/jira/browse/HIVE-9184) | Modify HCatClient to support new notification methods in HiveMetaStoreClient |  Major | HCatalog | Alan Gates | Alan Gates |
| [HIVE-9337](https://issues.apache.org/jira/browse/HIVE-9337) | Move more hive.spark.\* configurations to HiveConf [Spark Branch] |  Blocker | Spark | Szehon Ho | Szehon Ho |
| [HIVE-9259](https://issues.apache.org/jira/browse/HIVE-9259) | Fix ClassCastException when CBO is enabled for HOS [Spark Branch] |  Major | Spark | Brock Noland | Chao Sun |
| [HIVE-8121](https://issues.apache.org/jira/browse/HIVE-8121) | Create micro-benchmarks for ParquetSerde and evaluate performance |  Major | . | Brock Noland | Sergio Peña |
| [HIVE-9426](https://issues.apache.org/jira/browse/HIVE-9426) | Merge trunk to spark 1/21/2015 |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-9370](https://issues.apache.org/jira/browse/HIVE-9370) | SparkJobMonitor timeout as sortByKey would launch extra Spark job before original job get submitted [Spark Branch] |  Major | Spark | yuyun.chen | Chengxiang Li |
| [HIVE-9026](https://issues.apache.org/jira/browse/HIVE-9026) | Re-enable remaining tests after HIVE-8970 [Spark Branch] |  Major | spark-branch | Chao Sun | Chao Sun |
| [HIVE-9434](https://issues.apache.org/jira/browse/HIVE-9434) | Shim the method Path.getPathWithoutSchemeAndAuthority |  Major | . | Brock Noland | Dong Chen |
| [HIVE-9409](https://issues.apache.org/jira/browse/HIVE-9409) | Avoid ser/de loggers as logging framework can be incompatible on driver and workers |  Major | Spark | Xin Hao | Rui Li |
| [HIVE-9410](https://issues.apache.org/jira/browse/HIVE-9410) | ClassNotFoundException occurs during hive query case execution with UDF defined [Spark Branch] |  Major | Spark | Xin Hao | Chengxiang Li |
| [HIVE-9428](https://issues.apache.org/jira/browse/HIVE-9428) | LocalSparkJobStatus may return failed job as successful [Spark Branch] |  Minor | Spark | Rui Li | Rui Li |
| [HIVE-9449](https://issues.apache.org/jira/browse/HIVE-9449) | Push YARN configuration to Spark while deply Spark on YARN [Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-9379](https://issues.apache.org/jira/browse/HIVE-9379) | Fix tests with some versions of Spark + Snappy [Spark Branch] |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-9493](https://issues.apache.org/jira/browse/HIVE-9493) | Failed job may not throw exceptions [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-9450](https://issues.apache.org/jira/browse/HIVE-9450) | [Parquet] Check all data types work for Parquet in Group By operator |  Major | . | Dong Chen | Dong Chen |
| [HIVE-9477](https://issues.apache.org/jira/browse/HIVE-9477) | No error thrown when global limit optimization failed to find enough number of rows [Spark Branch] |  Blocker | Spark | Rui Li | Rui Li |
| [HIVE-9487](https://issues.apache.org/jira/browse/HIVE-9487) | Make Remote Spark Context secure [Spark Branch] |  Major | Spark | Marcelo Vanzin | Marcelo Vanzin |
| [HIVE-9192](https://issues.apache.org/jira/browse/HIVE-9192) | One-pass SMB Optimizations [Spark Branch] |  Minor | . | Szehon Ho | Szehon Ho |
| [HIVE-9431](https://issues.apache.org/jira/browse/HIVE-9431) | CBO (Calcite Return Path): Removing AST from ParseContext |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-9211](https://issues.apache.org/jira/browse/HIVE-9211) | Research on build mini HoS cluster on YARN for unit test[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-8853](https://issues.apache.org/jira/browse/HIVE-8853) | Make vectorization work with Spark [Spark Branch] |  Major | Spark | Xuefu Zhang | Jimmy Xiang |
| [HIVE-9552](https://issues.apache.org/jira/browse/HIVE-9552) | Merge trunk to Spark branch 2/2/2015 [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-9568](https://issues.apache.org/jira/browse/HIVE-9568) | Revert changes in two test configuration files accidently brought in by HIVE-9552 [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-9292](https://issues.apache.org/jira/browse/HIVE-9292) | CBO (Calcite Return Path): Inline GroupBy, Properties |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-9444](https://issues.apache.org/jira/browse/HIVE-9444) | CBO (Calcite Return Path): Rewrite GlobalLimitOptimizer |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-9517](https://issues.apache.org/jira/browse/HIVE-9517) | UNION ALL query failed with ArrayIndexOutOfBoundsException [Spark Branch] |  Major | . | Chao Sun | Chao Sun |
| [HIVE-9170](https://issues.apache.org/jira/browse/HIVE-9170) | UT: udf\_in\_file fails with filenotfoundexception [Spark Branch] |  Minor | Tests | Thomas Friedrich | Chinna Rao Lalam |
| [HIVE-9574](https://issues.apache.org/jira/browse/HIVE-9574) | Lazy computing in HiveBaseFunctionResultList may hurt performance [Spark Branch] |  Major | Spark | Rui Li | Jimmy Xiang |
| [HIVE-9425](https://issues.apache.org/jira/browse/HIVE-9425) | Add jar/file doesn\'t work with yarn-cluster mode [Spark Branch] |  Major | Spark, spark-branch | Xiaomin Zhang | Rui Li |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-7371](https://issues.apache.org/jira/browse/HIVE-7371) | Identify a minimum set of JARs needed to ship to Spark cluster [Spark Branch] |  Major | Spark | Xuefu Zhang | Chengxiang Li |
| [HIVE-7526](https://issues.apache.org/jira/browse/HIVE-7526) | Research to use groupby transformation to replace Hive existing partitionByKey and SparkCollector combination |  Major | Spark | Xuefu Zhang | Chao Sun |
| [HIVE-7567](https://issues.apache.org/jira/browse/HIVE-7567) | support automatic calculating reduce task number [Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-7584](https://issues.apache.org/jira/browse/HIVE-7584) | Change SparkCompiler to generate a SparkWork that contains UnionWork from logical operator tree |  Major | Spark | Na Yang | Na Yang |
| [HIVE-7585](https://issues.apache.org/jira/browse/HIVE-7585) | Implement the graph transformation execution |  Major | Spark | Na Yang | Na Yang |
| [HIVE-7586](https://issues.apache.org/jira/browse/HIVE-7586) | Generate plan for spark work which uses spark union transformation |  Major | Spark | Na Yang | Na Yang |
| [HIVE-7606](https://issues.apache.org/jira/browse/HIVE-7606) | Design SparkSession, SparkSessionManager [Spark Branch] |  Major | Spark | Brock Noland | Venki Korukanti |
| [HIVE-8160](https://issues.apache.org/jira/browse/HIVE-8160) | Upgrade Spark dependency to 1.2.0-SNAPSHOT [Spark Branch] |  Minor | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-8043](https://issues.apache.org/jira/browse/HIVE-8043) | Support merging small files [Spark Branch] |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-8331](https://issues.apache.org/jira/browse/HIVE-8331) | HIVE-8303 followup, investigate result diff [Spark Branch] |  Major | Spark | Xuefu Zhang | Chao Sun |
| [HIVE-8370](https://issues.apache.org/jira/browse/HIVE-8370) | Fix tabs in DefaultHBaseValueFactory |  Trivial | . | Brock Noland | Brock Noland |
| [HIVE-8274](https://issues.apache.org/jira/browse/HIVE-8274) | Refactoring SparkPlan and SparkPlanGeneration [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-8351](https://issues.apache.org/jira/browse/HIVE-8351) | Allow testing of both hadoop-1 and hadoop-2 for precommits |  Major | . | Brock Noland | Mohit Sabharwal |
| [HIVE-8465](https://issues.apache.org/jira/browse/HIVE-8465) | Fix some minor test fails on trunk |  Minor | Tests | Navis | Jason Dere |
| [HIVE-8537](https://issues.apache.org/jira/browse/HIVE-8537) | Update to use the stable TaskContext API [Spark Branch] |  Major | Spark | Rui Li | Chengxiang Li |
| [HIVE-8608](https://issues.apache.org/jira/browse/HIVE-8608) | Move jenkins scripts to source control |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-7111](https://issues.apache.org/jira/browse/HIVE-7111) | Extend join transitivity PPD to non-column expressions |  Minor | Query Processor | Navis | Navis |
| [HIVE-8826](https://issues.apache.org/jira/browse/HIVE-8826) | Remove jdbm from top level license file |  Major | . | Brock Noland | Ferdinand Xu |
| [HIVE-8609](https://issues.apache.org/jira/browse/HIVE-8609) | Move beeline to jline2 |  Blocker | . | Brock Noland | Ferdinand Xu |
| [HIVE-8894](https://issues.apache.org/jira/browse/HIVE-8894) | Move calcite.version to root pom |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8935](https://issues.apache.org/jira/browse/HIVE-8935) | Add debug logging around token stores |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8828](https://issues.apache.org/jira/browse/HIVE-8828) | Remove hadoop 20 shims |  Major | Shims | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8979](https://issues.apache.org/jira/browse/HIVE-8979) | Merge shims/common-secure into shims/common |  Major | Shims | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8989](https://issues.apache.org/jira/browse/HIVE-8989) | Make groupby\_multi\_single\_reducer.q and smb\_mapjoin\_3.q deterministic |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8974](https://issues.apache.org/jira/browse/HIVE-8974) | Upgrade to Calcite 1.0.0-SNAPSHOT (with lots of renames) |  Major | . | Julian Hyde | Jesus Camacho Rodriguez |
| [HIVE-9183](https://issues.apache.org/jira/browse/HIVE-9183) | Compilation against HBase 1.0.0 fails due to missing dependency on high\_scale\_lib.Counter |  Major | . | Ted Yu | Ted Yu |
| [HIVE-9293](https://issues.apache.org/jira/browse/HIVE-9293) | Cleanup SparkTask getMapWork to skip UnionWork check [Spark Branch] |  Minor | Spark | Szehon Ho | Chao Sun |
| [HIVE-9304](https://issues.apache.org/jira/browse/HIVE-9304) | [Refactor] remove unused method in SemAly |  Trivial | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9345](https://issues.apache.org/jira/browse/HIVE-9345) | Add encryption branch to pre-commit script |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9407](https://issues.apache.org/jira/browse/HIVE-9407) | Fix spacing in pom |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-9408](https://issues.apache.org/jira/browse/HIVE-9408) | Add hook interface so queries can be redacted before being placed in job.xml |  Major | Query Processor | Brock Noland | Brock Noland |
| [HIVE-9402](https://issues.apache.org/jira/browse/HIVE-9402) | Create GREATEST and LEAST udf |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9527](https://issues.apache.org/jira/browse/HIVE-9527) | Include dot files in tarball |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-9554](https://issues.apache.org/jira/browse/HIVE-9554) | Rename 0.15 upgrade scripts to 1.1 |  Blocker | . | Brock Noland | Brock Noland |
| [HIVE-9672](https://issues.apache.org/jira/browse/HIVE-9672) | Update RELEASE\_NOTES on trunk to reflect the 1.0.0 release |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8607](https://issues.apache.org/jira/browse/HIVE-8607) | Java 8 support for Hive |  Critical | . | Brock Noland | Brock Noland |


