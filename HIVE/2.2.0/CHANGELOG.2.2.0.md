
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

## Release 2.2.0 - 2017-07-25



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-14436](https://issues.apache.org/jira/browse/HIVE-14436) | Hive 1.2.1/Hitting "ql.Driver: FAILED: IllegalArgumentException Error: , expected at the end of 'decimal(9'" after enabling hive.optimize.skewjoin and with MR engine |  Major | Hive | Ratish Maruthiyodan | Daniel Dai |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-14362](https://issues.apache.org/jira/browse/HIVE-14362) | Support explain analyze in Hive |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14217](https://issues.apache.org/jira/browse/HIVE-14217) | Druid integration |  Major | Druid integration | Julian Hyde | Jesus Camacho Rodriguez |
| [HIVE-15409](https://issues.apache.org/jira/browse/HIVE-15409) | Add support for GROUPING function with grouping sets |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15147](https://issues.apache.org/jira/browse/HIVE-15147) | LLAP: use LLAP cache for non-columnar formats in a somewhat general way |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15269](https://issues.apache.org/jira/browse/HIVE-15269) | Dynamic Min-Max/BloomFilter runtime-filtering for Tez |  Major | Tez | Jason Dere | Deepak Jaiswal |
| [HIVE-15955](https://issues.apache.org/jira/browse/HIVE-15955) | make explain formatted to include opId and etc |  Major | . | Pengcheng Xiong | Pengcheng Xiong |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-14002](https://issues.apache.org/jira/browse/HIVE-14002) | Extend limit propagation to subsequent RS operators |  Major | Physical Optimizer | Nita Dembla | Jesus Camacho Rodriguez |
| [HIVE-14018](https://issues.apache.org/jira/browse/HIVE-14018) | Make IN clause row selectivity estimation customizable |  Minor | Statistics | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14023](https://issues.apache.org/jira/browse/HIVE-14023) | LLAP: Make the Hive query id available in ContainerRunner |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14021](https://issues.apache.org/jira/browse/HIVE-14021) | When converting to CNF, fail if the expression exceeds a threshold |  Minor | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13631](https://issues.apache.org/jira/browse/HIVE-13631) | Support index in HBase Metastore |  Major | HBase Metastore | Daniel Dai | Daniel Dai |
| [HIVE-13982](https://issues.apache.org/jira/browse/HIVE-13982) | Extensions to RS dedup: execute with different column order and sorting direction if possible |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14080](https://issues.apache.org/jira/browse/HIVE-14080) | hive.metastore.schema.verification should check for schema compatiblity |  Major | Metastore | Thejas M Nair | Thejas M Nair |
| [HIVE-14228](https://issues.apache.org/jira/browse/HIVE-14228) | Better row count estimates for outer join during physical planning |  Major | Physical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-14224](https://issues.apache.org/jira/browse/HIVE-14224) | LLAP rename query specific log files once a query is complete |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14279](https://issues.apache.org/jira/browse/HIVE-14279) | fix mvn test TestHiveMetaStore.testTransactionalValidation |  Minor | Tests | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-14225](https://issues.apache.org/jira/browse/HIVE-14225) | Llap slider package should support configuring YARN rolling log aggregation |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14167](https://issues.apache.org/jira/browse/HIVE-14167) | Use work directories provided by Tez instead of directly using YARN local dirs |  Major | . | Siddharth Seth | Wei Zheng |
| [HIVE-14383](https://issues.apache.org/jira/browse/HIVE-14383) | SparkClientImpl should pass principal and keytab to spark-submit instead of calling kinit explicitely |  Major | Spark | Mubashir Kazia | Chaoyu Tang |
| [HIVE-14323](https://issues.apache.org/jira/browse/HIVE-14323) | Reduce number of FS permissions and redundant FS operations |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14392](https://issues.apache.org/jira/browse/HIVE-14392) | llap daemons should try using YARN local dirs, if available |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14204](https://issues.apache.org/jira/browse/HIVE-14204) | Optimize loading dynamic partitions |  Minor | Metastore | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14434](https://issues.apache.org/jira/browse/HIVE-14434) | Vectorization: BytesBytes lookup capped count can be =0, =1, \>=2 |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-14423](https://issues.apache.org/jira/browse/HIVE-14423) | S3: Fetching partition sizes from FS can be expensive when stats are not available in metastore |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14299](https://issues.apache.org/jira/browse/HIVE-14299) | Log serialized plan size |  Minor | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14437](https://issues.apache.org/jira/browse/HIVE-14437) | Vectorization: Optimize key misses in VectorMapJoinFastBytesHashTable |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-14290](https://issues.apache.org/jira/browse/HIVE-14290) | Refactor HIVE-14054 to use Collections#newSetFromMap |  Trivial | Metastore | Peter Slawski | Peter Slawski |
| [HIVE-14462](https://issues.apache.org/jira/browse/HIVE-14462) | Reduce number of partition check calls in add\_partitions |  Minor | Metastore | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14451](https://issues.apache.org/jira/browse/HIVE-14451) | Vectorization: Add byRef mode for borrowed Strings in VectorDeserializeRow |  Major | Vectorization | Gopal V | Matt McCline |
| [HIVE-14545](https://issues.apache.org/jira/browse/HIVE-14545) | HiveServer2 with http transport mode spends too much time just creating configs |  Minor | HiveServer2 | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14762](https://issues.apache.org/jira/browse/HIVE-14762) | Add logging while removing scratch space |  Major | Logging | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11957](https://issues.apache.org/jira/browse/HIVE-11957) | Add StartedTime and LastHeartbeatTime columns to SHOW TRANSACTIONS output |  Major | Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-13316](https://issues.apache.org/jira/browse/HIVE-13316) | Upgrade to Calcite 1.10 |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14920](https://issues.apache.org/jira/browse/HIVE-14920) | S3: Optimize SimpleFetchOptimizer::checkThreshold() |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15068](https://issues.apache.org/jira/browse/HIVE-15068) | Run ClearDanglingScratchDir periodically inside HS2 |  Major | HiveServer2 | Daniel Dai | Daniel Dai |
| [HIVE-15039](https://issues.apache.org/jira/browse/HIVE-15039) | A better job monitor console output for HoS |  Major | . | Rui Li | Rui Li |
| [HIVE-15125](https://issues.apache.org/jira/browse/HIVE-15125) | LLAP: Parallelize slider package generator |  Major | llap | Gopal V | Gopal V |
| [HIVE-15129](https://issues.apache.org/jira/browse/HIVE-15129) | LLAP : Enhance cache hits for stripe metadata across queries |  Minor | llap | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15232](https://issues.apache.org/jira/browse/HIVE-15232) | Add notification events for functions and indexes |  Major | repl | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-15217](https://issues.apache.org/jira/browse/HIVE-15217) | Add watch mode to llap status tool |  Minor | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15250](https://issues.apache.org/jira/browse/HIVE-15250) | Reuse partitions info generated in MoveTask to its subscribers (StatsTask) |  Minor | Metastore | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15370](https://issues.apache.org/jira/browse/HIVE-15370) | Include Join residual filter expressions in user level EXPLAIN |  Minor | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15322](https://issues.apache.org/jira/browse/HIVE-15322) | Skipping "hbase mapredcp" in hive script for certain services |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-15337](https://issues.apache.org/jira/browse/HIVE-15337) | Enhance Show Compactions output with JobId and start time for "attempted" state |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15149](https://issues.apache.org/jira/browse/HIVE-15149) | Add additional information to ATSHook for Tez UI |  Major | Hooks | Jason Dere | Jason Dere |
| [HIVE-15339](https://issues.apache.org/jira/browse/HIVE-15339) | Batch metastore calls to get column stats for fields needed in FilterSelectivityEstimator |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15511](https://issues.apache.org/jira/browse/HIVE-15511) | Provide an option in months\_between UDF to disable rounding-off |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-12594](https://issues.apache.org/jira/browse/HIVE-12594) | X lock on partition should not conflict with S lock on DB |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15539](https://issues.apache.org/jira/browse/HIVE-15539) | Optimize complex multi-insert queries in Calcite |  Major | Parser | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15612](https://issues.apache.org/jira/browse/HIVE-15612) | Include Calcite dependency in Druid storage handler jar |  Minor | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15613](https://issues.apache.org/jira/browse/HIVE-15613) | Include druid-handler sources in src packaging |  Minor | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15614](https://issues.apache.org/jira/browse/HIVE-15614) | Druid splitSelectQuery closes lifecycle object too early |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15550](https://issues.apache.org/jira/browse/HIVE-15550) | fix arglist logging in schematool |  Minor | Beeline | anishek | anishek |
| [HIVE-15717](https://issues.apache.org/jira/browse/HIVE-15717) | JDBC: Implement rowDeleted, rowInserted and rowUpdated to return false |  Major | . | Tao Li | Tao Li |
| [HIVE-15774](https://issues.apache.org/jira/browse/HIVE-15774) | Ensure DbLockManager backward compatibility for non-ACID resources |  Major | Hive, Transactions | Wei Zheng | Wei Zheng |
| [HIVE-13667](https://issues.apache.org/jira/browse/HIVE-13667) | Improve performance for ServiceInstanceSet.getByHost |  Major | . | Siddharth Seth | Rajesh Balamohan |
| [HIVE-15473](https://issues.apache.org/jira/browse/HIVE-15473) | Progress Bar on Beeline client |  Minor | Beeline, HiveServer2 | anishek | anishek |
| [HIVE-15802](https://issues.apache.org/jira/browse/HIVE-15802) | Changes to expected entries for dynamic bloomfilter runtime filtering |  Major | . | Jason Dere | Jason Dere |
| [HIVE-15388](https://issues.apache.org/jira/browse/HIVE-15388) | HiveParser spends lots of time in parsing queries with lots of "(" |  Major | . | Rajesh Balamohan | Pengcheng Xiong |
| [HIVE-15895](https://issues.apache.org/jira/browse/HIVE-15895) | Use HDFS for stats collection temp dir on blob storage |  Major | Configuration, Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-15894](https://issues.apache.org/jira/browse/HIVE-15894) | Add logical semijoin config in sqlstd safe list |  Major | Configuration | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12492](https://issues.apache.org/jira/browse/HIVE-12492) | MapJoin: 4 million unique integers seems to be a probe plateau |  Major | Query Planning | Gopal V | Jesus Camacho Rodriguez |
| [HIVE-15830](https://issues.apache.org/jira/browse/HIVE-15830) | Allow additional ACLs for tez jobs |  Major | . | Siddharth Seth | Siddharth Seth |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13713](https://issues.apache.org/jira/browse/HIVE-13713) | We miss vectorization in a case of count(\*) when aggregation mode is COMPLETE |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-13924](https://issues.apache.org/jira/browse/HIVE-13924) | (Vectorization) Error evaluating ((bool0 and (not bool1)) or (bool1 and (not bool0))) |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-13882](https://issues.apache.org/jira/browse/HIVE-13882) | When hive.server2.async.exec.async.compile is turned on, from JDBC we will get "The query did not generate a result set" |  Major | JDBC | Aihua Xu | Aihua Xu |
| [HIVE-13836](https://issues.apache.org/jira/browse/HIVE-13836) | DbNotifications giving an error = Invalid state. Transaction has already started |  Critical | . | Nachiket Vaidya | Nachiket Vaidya |
| [HIVE-13932](https://issues.apache.org/jira/browse/HIVE-13932) | Hive SMB Map Join with small set of LIMIT failed with NPE |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-13954](https://issues.apache.org/jira/browse/HIVE-13954) | Parquet logs should go to STDERR |  Major | . | Takahiko Saito | Prasanth Jayachandran |
| [HIVE-13391](https://issues.apache.org/jira/browse/HIVE-13391) | add an option to LLAP to use keytab to authenticate to read data |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13264](https://issues.apache.org/jira/browse/HIVE-13264) | JDBC driver makes 2 Open Session Calls for every open session |  Major | JDBC | NITHIN MAHESH | NITHIN MAHESH |
| [HIVE-13986](https://issues.apache.org/jira/browse/HIVE-13986) | LLAP: kill Tez AM on token errors from plugin |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14010](https://issues.apache.org/jira/browse/HIVE-14010) | parquet-logging.properties from HIVE\_CONF\_DIR should be used when available |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14022](https://issues.apache.org/jira/browse/HIVE-14022) | left semi join should throw SemanticException if where clause contains columnname from right table |  Major | . | Jagruti Varia | Jesus Camacho Rodriguez |
| [HIVE-14034](https://issues.apache.org/jira/browse/HIVE-14034) | Vectorization may fail with compex OR conditions |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-14031](https://issues.apache.org/jira/browse/HIVE-14031) | cleanup metadataReader in OrcEncodedDataReader |  Minor | ORC | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14015](https://issues.apache.org/jira/browse/HIVE-14015) | SMB MapJoin failed for Hive on Spark when kerberized |  Major | Logical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-14000](https://issues.apache.org/jira/browse/HIVE-14000) | (ORC) Changing a numeric type column of a partitioned table to lower type set values to something other than 'NULL' |  Critical | Hive, ORC | Matt McCline | Matt McCline |
| [HIVE-14059](https://issues.apache.org/jira/browse/HIVE-14059) | Missing license headers for two files |  Minor | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14024](https://issues.apache.org/jira/browse/HIVE-14024) | setAllColumns is called incorrectly after some changes |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-14012](https://issues.apache.org/jira/browse/HIVE-14012) | some ColumnVector-s are missing ensureSize |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-13809](https://issues.apache.org/jira/browse/HIVE-13809) | Hybrid Grace Hash Join memory usage estimation didn't take into account the bloom filter size |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-13590](https://issues.apache.org/jira/browse/HIVE-13590) | Kerberized HS2 with LDAP auth enabled fails in multi-domain LDAP case |  Major | Authentication, Security | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13985](https://issues.apache.org/jira/browse/HIVE-13985) | ORC improvements for reducing the file system calls in task side |  Major | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13648](https://issues.apache.org/jira/browse/HIVE-13648) | ORC Schema Evolution doesn't support same type conversion for VARCHAR, CHAR, or DECIMAL when maxLength or precision/scale is different |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-14060](https://issues.apache.org/jira/browse/HIVE-14060) | Hive: Remove bogus "localhost" from Hive splits |  Major | Tez | Gopal V | Gopal V |
| [HIVE-14045](https://issues.apache.org/jira/browse/HIVE-14045) | (Vectorization) Add missing case for BINARY in VectorizationContext.getNormalizedName method |  Major | Hive | Matt McCline | Matt McCline |
| [HIVE-14062](https://issues.apache.org/jira/browse/HIVE-14062) | Changes from HIVE-13502 overwritten by HIVE-13566 |  Major | Beeline | Naveen Gangam | Naveen Gangam |
| [HIVE-13744](https://issues.apache.org/jira/browse/HIVE-13744) | LLAP IO - add complex types support |  Major | . | Sergey Shelukhin | Prasanth Jayachandran |
| [HIVE-13159](https://issues.apache.org/jira/browse/HIVE-13159) | TxnHandler should support datanucleus.connectionPoolingType = None |  Major | . | Sergey Shelukhin | Alan Gates |
| [HIVE-14071](https://issues.apache.org/jira/browse/HIVE-14071) | HIVE-14014 breaks non-file outputs |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13617](https://issues.apache.org/jira/browse/HIVE-13617) | LLAP: support non-vectorized execution in IO |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14055](https://issues.apache.org/jira/browse/HIVE-14055) | directSql - getting the number of partitions is broken |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13872](https://issues.apache.org/jira/browse/HIVE-13872) | Vectorization: Fix cross-product reduce sink serialization |  Major | Vectorization | Gopal V | Matt McCline |
| [HIVE-14076](https://issues.apache.org/jira/browse/HIVE-14076) | Vectorization is not supported for datatype:VOID error while inserting data into specific columns |  Major | . | Jagruti Varia | Jesus Camacho Rodriguez |
| [HIVE-14079](https://issues.apache.org/jira/browse/HIVE-14079) | Remove file, method and line number from pattern layout |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13725](https://issues.apache.org/jira/browse/HIVE-13725) | ACID: Streaming API should synchronize calls when multiple threads use the same endpoint |  Critical | HCatalog, Metastore, Transactions | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-13991](https://issues.apache.org/jira/browse/HIVE-13991) | Union All on view fail with no valid permission on underneath table |  Major | Query Planning | Yongzhi Chen | Yongzhi Chen |
| [HIVE-13997](https://issues.apache.org/jira/browse/HIVE-13997) | Insert overwrite directory doesn't overwrite existing files |  Major | Query Processor | Rui Li | Rui Li |
| [HIVE-14092](https://issues.apache.org/jira/browse/HIVE-14092) | Kryo exception when deserializing VectorFileSinkOperator |  Major | Serializers/Deserializers | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14073](https://issues.apache.org/jira/browse/HIVE-14073) | update config whiltelist for sql std authorization |  Major | Security, SQLStandardAuthorization | Thejas M Nair | Thejas M Nair |
| [HIVE-14083](https://issues.apache.org/jira/browse/HIVE-14083) | ALTER INDEX in Tez causes NullPointerException |  Minor | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14037](https://issues.apache.org/jira/browse/HIVE-14037) | java.lang.ClassNotFoundException for the jar in hive.reloadable.aux.jars.path in mapreduce |  Major | . | Aihua Xu | Aihua Xu |
| [HIVE-14091](https://issues.apache.org/jira/browse/HIVE-14091) | some errors are not propagated to LLAP external clients |  Major | . | Jason Dere | Sergey Shelukhin |
| [HIVE-14136](https://issues.apache.org/jira/browse/HIVE-14136) | LLAP ZK SecretManager should resolve \_HOST in principal |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14153](https://issues.apache.org/jira/browse/HIVE-14153) | Beeline: beeline history doesn't work on Hive2 |  Major | Beeline | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-14072](https://issues.apache.org/jira/browse/HIVE-14072) | QueryIds reused across different queries |  Critical | . | Siddharth Seth | Sergey Shelukhin |
| [HIVE-14122](https://issues.apache.org/jira/browse/HIVE-14122) | VectorMapOperator: Missing update to AbstractMapOperator::numRows |  Critical | Tez | Gopal V | Gopal V |
| [HIVE-14140](https://issues.apache.org/jira/browse/HIVE-14140) | LLAP: package codec jars |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-14149](https://issues.apache.org/jira/browse/HIVE-14149) | Joda Time causes an AmazonS3Exception on Hadoop3.0.0 |  Major | Hive | Abdullah Yousufi | Abdullah Yousufi |
| [HIVE-14090](https://issues.apache.org/jira/browse/HIVE-14090) | JDOExceptions thrown by the Metastore have their full stack trace returned to clients |  Major | . | Sahil Takiar | Sahil Takiar |
| [HIVE-14163](https://issues.apache.org/jira/browse/HIVE-14163) | LLAP: use different kerberized/unkerberized zk paths for registry |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14182](https://issues.apache.org/jira/browse/HIVE-14182) | Revert "HIVE-13084: Vectorization add support for PROJECTION Multi-AND/OR |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-14132](https://issues.apache.org/jira/browse/HIVE-14132) | Don't fail config validation for removed configs |  Major | Configuration | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-13749](https://issues.apache.org/jira/browse/HIVE-13749) | Memory leak in Hive Metastore |  Major | Metastore | Naveen Gangam | Naveen Gangam |
| [HIVE-14038](https://issues.apache.org/jira/browse/HIVE-14038) | miscellaneous acid improvements |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14147](https://issues.apache.org/jira/browse/HIVE-14147) | Hive PPD might remove predicates when they are defined as a simple expr e.g. WHERE 'a' |  Critical | Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14197](https://issues.apache.org/jira/browse/HIVE-14197) | LLAP service driver precondition failure should include the values |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13392](https://issues.apache.org/jira/browse/HIVE-13392) | disable speculative execution for ACID Compactor |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14178](https://issues.apache.org/jira/browse/HIVE-14178) | Hive::needsToCopy should reuse FileUtils::equalsFileSystem |  Major | Hive | Gopal V | Gopal V |
| [HIVE-14114](https://issues.apache.org/jira/browse/HIVE-14114) | Ensure RecordWriter in streaming API is using the same UserGroupInformation as StreamingConnection |  Major | HCatalog, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14192](https://issues.apache.org/jira/browse/HIVE-14192) | False positive error due to thrift |  Major | Metastore, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14176](https://issues.apache.org/jira/browse/HIVE-14176) | CBO nesting windowing function within each other when merging Project operators |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14184](https://issues.apache.org/jira/browse/HIVE-14184) | Adding test for limit pushdown in presence of grouping sets |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14173](https://issues.apache.org/jira/browse/HIVE-14173) | NPE was thrown after enabling directsql in the middle of session |  Major | Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14113](https://issues.apache.org/jira/browse/HIVE-14113) | Create function failed but function in show function list |  Major | UDF | Niklaus Xiao | Niklaus Xiao |
| [HIVE-14027](https://issues.apache.org/jira/browse/HIVE-14027) | NULL values produced by left outer join do not behave as NULL |  Major | Query Processor | Vaibhav Gumashta | Jesus Camacho Rodriguez |
| [HIVE-14175](https://issues.apache.org/jira/browse/HIVE-14175) | Fix creating buckets without scheme information |  Major | Query Processor | Thomas Poepping | Thomas Poepping |
| [HIVE-13704](https://issues.apache.org/jira/browse/HIVE-13704) | Don't call DistCp.execute() instead of DistCp.run() |  Critical | Hive | Harsh J | Sergio Peña |
| [HIVE-14188](https://issues.apache.org/jira/browse/HIVE-14188) | LLAPIF: wrong user field is used from the token |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14218](https://issues.apache.org/jira/browse/HIVE-14218) | LLAP: ACL validation fails if the user name is different from principal user name |  Major | . | Shraddha Sumit | Sergey Shelukhin |
| [HIVE-14111](https://issues.apache.org/jira/browse/HIVE-14111) | better concurrency handling for TezSessionState - part I |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14210](https://issues.apache.org/jira/browse/HIVE-14210) | ExecDriver should call jobclient.close() to trigger cleanup |  Major | Hive, HiveServer2 | Thomas Friedrich | Thomas Friedrich |
| [HIVE-14195](https://issues.apache.org/jira/browse/HIVE-14195) | HiveMetaStoreClient getFunction() does not throw NoSuchObjectException |  Minor | Metastore | Peter Vary | Peter Vary |
| [HIVE-14139](https://issues.apache.org/jira/browse/HIVE-14139) | NPE dropping permanent function |  Major | . | Rui Li | Rui Li |
| [HIVE-13258](https://issues.apache.org/jira/browse/HIVE-13258) | LLAP: Add hdfs bytes read and spilled bytes to tez print summary |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14152](https://issues.apache.org/jira/browse/HIVE-14152) | datanucleus.autoStartMechanismMode should set to 'Ignored' to allow rolling downgrade |  Major | Metastore | Daniel Dai | Thejas M Nair |
| [HIVE-14223](https://issues.apache.org/jira/browse/HIVE-14223) | beeline should look for jdbc standalone jar in dist/jdbc dir instead of dist/lib |  Major | Beeline | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14172](https://issues.apache.org/jira/browse/HIVE-14172) | LLAP: force evict blocks by size to handle memory fragmentation |  Major | . | Nita Dembla | Sergey Shelukhin |
| [HIVE-14137](https://issues.apache.org/jira/browse/HIVE-14137) | Hive on Spark throws FileAlreadyExistsException for jobs with multiple empty tables |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-14215](https://issues.apache.org/jira/browse/HIVE-14215) | Displaying inconsistent CPU usage data with MR execution engine |  Minor | . | Peter Vary | Peter Vary |
| [HIVE-14074](https://issues.apache.org/jira/browse/HIVE-14074) | RELOAD FUNCTION should update dropped functions |  Major | . | Abdullah Yousufi | Abdullah Yousufi |
| [HIVE-14207](https://issues.apache.org/jira/browse/HIVE-14207) | Strip HiveConf hidden params in webui conf |  Major | Web UI | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-14222](https://issues.apache.org/jira/browse/HIVE-14222) | PTF: Operator initialization does not clean state |  Major | PTF-Windowing | Gopal V | Wei Zheng |
| [HIVE-14230](https://issues.apache.org/jira/browse/HIVE-14230) | Hadoop23Shims.cloneUgi() doesn't add credentials from original UGI |  Major | Shims | Jason Dere | Jason Dere |
| [HIVE-11402](https://issues.apache.org/jira/browse/HIVE-11402) | HS2 - add an option to disallow parallel query execution within a single Session |  Major | HiveServer2 | Thejas M Nair | Sergey Shelukhin |
| [HIVE-14144](https://issues.apache.org/jira/browse/HIVE-14144) | Permanent functions are showing up in show functions, but describe says it doesn't exist |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-14004](https://issues.apache.org/jira/browse/HIVE-14004) | Minor compaction produces ArrayIndexOutOfBoundsException: 7 in SchemaEvolution.getFileType |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14241](https://issues.apache.org/jira/browse/HIVE-14241) | Acid clashes with ConfVars.HIVEFETCHTASKCONVERSION \<\> "none" |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14187](https://issues.apache.org/jira/browse/HIVE-14187) | JDOPersistenceManager objects remain cached if MetaStoreClient#close is not called |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-14253](https://issues.apache.org/jira/browse/HIVE-14253) | Fix MinimrCliDriver test failure |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14244](https://issues.apache.org/jira/browse/HIVE-14244) | bucketmap right outer join query throws ArrayIndexOutOfBoundsException |  Major | Physical Optimizer, Tez | Jagruti Varia | Zhiyuan Yang |
| [HIVE-14226](https://issues.apache.org/jira/browse/HIVE-14226) | Invalid check on an ASTNode#toStringTree in CalcitePlanner |  Minor | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-13191](https://issues.apache.org/jira/browse/HIVE-13191) | DummyTable map joins mix up columns between tables |  Major | . | Gopal V | Jesus Camacho Rodriguez |
| [HIVE-14236](https://issues.apache.org/jira/browse/HIVE-14236) | CTAS with UNION ALL puts the wrong stats in Tez |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14265](https://issues.apache.org/jira/browse/HIVE-14265) | Partial stats in Join operator may lead to data size estimate of 0 |  Major | Statistics | Nita Dembla | Jesus Camacho Rodriguez |
| [HIVE-13369](https://issues.apache.org/jira/browse/HIVE-13369) | AcidUtils.getAcidState() is not paying attention toValidTxnList when choosing the "best" base file |  Blocker | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14262](https://issues.apache.org/jira/browse/HIVE-14262) | Inherit writetype from partition WriteEntity for table WriteEntity |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-13906](https://issues.apache.org/jira/browse/HIVE-13906) | Remove guava dependence from storage-api module |  Major | storage-api | Owen O'Malley | Owen O'Malley |
| [HIVE-14242](https://issues.apache.org/jira/browse/HIVE-14242) | Backport ORC-53 to Hive |  Major | ORC | Owen O'Malley | Owen O'Malley |
| [HIVE-14282](https://issues.apache.org/jira/browse/HIVE-14282) | HCatLoader ToDate() exception with hive partition table ,partitioned by column of DATE datatype |  Major | HCatalog | Raghavender Rao Guruvannagari | Daniel Dai |
| [HIVE-14301](https://issues.apache.org/jira/browse/HIVE-14301) | insert overwrite fails for nonpartitioned tables in s3 |  Minor | Query Processor | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14229](https://issues.apache.org/jira/browse/HIVE-14229) | the jars in hive.aux.jar.paths are not added to session classpath |  Major | Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-14292](https://issues.apache.org/jira/browse/HIVE-14292) | ACID table creation fails on mysql with MySQLIntegrityConstraintViolationException |  Major | Transactions | Deepesh Khandelwal | Eugene Koifman |
| [HIVE-14268](https://issues.apache.org/jira/browse/HIVE-14268) | INSERT-OVERWRITE is not generating an INSERT event during hive replication |  Major | Hive | Murali Ramasami | Sushanth Sowmyan |
| [HIVE-14267](https://issues.apache.org/jira/browse/HIVE-14267) | HS2 open\_operations metrics not decremented when an operation gets timed out |  Minor | HiveServer2 | David Karoly | Naveen Gangam |
| [HIVE-13934](https://issues.apache.org/jira/browse/HIVE-13934) | Configure Tez to make nocondiional task size memory available for the Processor |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-14263](https://issues.apache.org/jira/browse/HIVE-14263) | Log message when HS2 query is waiting on compile lock |  Major | HiveServer2 | Thejas M Nair | Tao Li |
| [HIVE-14214](https://issues.apache.org/jira/browse/HIVE-14214) | ORC Schema Evolution and Predicate Push Down do not work together (no rows returned) |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-14298](https://issues.apache.org/jira/browse/HIVE-14298) | NPE could be thrown in HMS when an ExpressionTree could not be made from a filter |  Major | Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14311](https://issues.apache.org/jira/browse/HIVE-14311) | No need to schedule Heartbeat task if the query doesn't require locks |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-14308](https://issues.apache.org/jira/browse/HIVE-14308) | While using column stats estimated data size may become 0 |  Major | Physical Optimizer, Statistics | Ashutosh Chauhan | Jesus Camacho Rodriguez |
| [HIVE-14297](https://issues.apache.org/jira/browse/HIVE-14297) | OrcRecordUpdater floods logs trying to create \_orc\_acid\_version file |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13422](https://issues.apache.org/jira/browse/HIVE-13422) | Analyse command not working for column having datatype as decimal(38,0) |  Major | Hive, Statistics | ashim sinha | Thomas Friedrich |
| [HIVE-14326](https://issues.apache.org/jira/browse/HIVE-14326) | Merging outer joins without conditions can lead to wrong results |  Critical | Parser | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14324](https://issues.apache.org/jira/browse/HIVE-14324) | ORC PPD for floats is broken |  Critical | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-10022](https://issues.apache.org/jira/browse/HIVE-10022) | Authorization checks for non existent file/directory should not be recursive |  Major | Authorization | Pankit Thapar | Sushanth Sowmyan |
| [HIVE-14330](https://issues.apache.org/jira/browse/HIVE-14330) | fix LockHandle TxnHandler.acquireLock(String key) retry logic |  Critical | Metastore, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14339](https://issues.apache.org/jira/browse/HIVE-14339) | Fix UT failure for acid\_globallimit.q |  Major | . | Wei Zheng | Wei Zheng |
| [HIVE-14205](https://issues.apache.org/jira/browse/HIVE-14205) | Hive doesn't support union type with AVRO file format |  Major | Serializers/Deserializers | Yibing Shi | Yibing Shi |
| [HIVE-14335](https://issues.apache.org/jira/browse/HIVE-14335) | TaskDisplay's return value is not getting deserialized properly |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-14313](https://issues.apache.org/jira/browse/HIVE-14313) | Test failure TestMetaStoreMetrics.testConnections |  Major | Tests | Naveen Gangam | Naveen Gangam |
| [HIVE-14296](https://issues.apache.org/jira/browse/HIVE-14296) | Session count is not decremented when HS2 clients do not shutdown cleanly. |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-14293](https://issues.apache.org/jira/browse/HIVE-14293) | PerfLogger.openScopes should be transient |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-14338](https://issues.apache.org/jira/browse/HIVE-14338) | Delete/Alter table calls failing with HiveAccessControlException |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14332](https://issues.apache.org/jira/browse/HIVE-14332) | Reduce logging from VectorMapOperator |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-14336](https://issues.apache.org/jira/browse/HIVE-14336) | Make usage of VectorUDFAdaptor configurable |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-14333](https://issues.apache.org/jira/browse/HIVE-14333) | ORC schema evolution from float to double changes precision and breaks filters |  Critical | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14310](https://issues.apache.org/jira/browse/HIVE-14310) | ORC schema evolution should not completely disable PPD |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14349](https://issues.apache.org/jira/browse/HIVE-14349) | Vectorization: LIKE should anchor the regexes |  Major | UDF, Vectorization | Gopal V | Gopal V |
| [HIVE-14359](https://issues.apache.org/jira/browse/HIVE-14359) | Hive on Spark might fail in HS2 with LDAP authentication in a kerberized cluster |  Major | Spark | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14355](https://issues.apache.org/jira/browse/HIVE-14355) | Schema evolution for ORC in llap is broken for int to string conversion |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14363](https://issues.apache.org/jira/browse/HIVE-14363) | bucketmap inner join query fails due to NullPointerException in some cases |  Major | . | Jagruti Varia | Hari Sankar Sivarama Subramaniyan |
| [HIVE-14381](https://issues.apache.org/jira/browse/HIVE-14381) | Handle null value in WindowingTableFunction.WindowingIterator.next() |  Major | PTF-Windowing | Wei Zheng | Wei Zheng |
| [HIVE-14367](https://issues.apache.org/jira/browse/HIVE-14367) | Estimated size for constant nulls is 0 |  Major | Physical Optimizer, Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12077](https://issues.apache.org/jira/browse/HIVE-12077) | MSCK Repair table should fix partitions in batches |  Major | Hive | Ryan P | Chinna Rao Lalam |
| [HIVE-14357](https://issues.apache.org/jira/browse/HIVE-14357) | TestDbTxnManager2#testLocksInSubquery failing in branch-2.1 |  Major | . | Rajat Khandelwal | Sergey Shelukhin |
| [HIVE-14386](https://issues.apache.org/jira/browse/HIVE-14386) | UGI clone shim also needs to clone credentials |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14322](https://issues.apache.org/jira/browse/HIVE-14322) | Postgres db issues after Datanucleus 4.x upgrade |  Major | . | Thejas M Nair | Sergey Shelukhin |
| [HIVE-14366](https://issues.apache.org/jira/browse/HIVE-14366) | Conversion of a Non-ACID table to an ACID table produces non-unique primary keys |  Blocker | Transactions | Saket Saurabh | Saket Saurabh |
| [HIVE-14350](https://issues.apache.org/jira/browse/HIVE-14350) | Aborted txns cause false positive "Not enough history available..." msgs |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14377](https://issues.apache.org/jira/browse/HIVE-14377) | LLAP IO: issue with how estimate cache removes unneeded buffers |  Major | . | Gopal V | Sergey Shelukhin |
| [HIVE-14278](https://issues.apache.org/jira/browse/HIVE-14278) | Migrate TestHadoop23SAuthBridge.java from Unit3 to Unit4 |  Minor | Hive | Balint Molnar | Balint Molnar |
| [HIVE-14395](https://issues.apache.org/jira/browse/HIVE-14395) | Add the missing data files to Avro union tests (HIVE-14205 addendum) |  Trivial | Test | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14400](https://issues.apache.org/jira/browse/HIVE-14400) | Handle concurrent insert with dynamic partition |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-14380](https://issues.apache.org/jira/browse/HIVE-14380) | Queries on tables with remote HDFS paths fail in "encryption" checks. |  Major | Encryption | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-14117](https://issues.apache.org/jira/browse/HIVE-14117) | HS2 UI: List of recent queries shows most recent query last |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-14408](https://issues.apache.org/jira/browse/HIVE-14408) | thread safety issue in fast hashtable |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-14397](https://issues.apache.org/jira/browse/HIVE-14397) | Queries ran after reopening of tez session launches additional sessions |  Critical | Tez | Takahiko Saito | Prasanth Jayachandran |
| [HIVE-14414](https://issues.apache.org/jira/browse/HIVE-14414) | Fix TestHiveMetaStoreTxns UTs |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14411](https://issues.apache.org/jira/browse/HIVE-14411) | selecting Hive on Hbase table may cause FileNotFoundException |  Major | Physical Optimizer | Rudd Chen | Niklaus Xiao |
| [HIVE-14393](https://issues.apache.org/jira/browse/HIVE-14393) | Tuple in list feature fails if there's only 1 tuple in the list |  Major | Parser | Carter Shanklin | Pengcheng Xiong |
| [HIVE-14424](https://issues.apache.org/jira/browse/HIVE-14424) | Address CLIRestoreTest failure |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-14394](https://issues.apache.org/jira/browse/HIVE-14394) | Reduce excessive INFO level logging |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-14378](https://issues.apache.org/jira/browse/HIVE-14378) | Data size may be estimated as 0 if no columns are being projected after an operator |  Major | Physical Optimizer, Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-14390](https://issues.apache.org/jira/browse/HIVE-14390) | Wrong Table alias when CBO is on |  Minor | CBO | Nemon Lou | Nemon Lou |
| [HIVE-14447](https://issues.apache.org/jira/browse/HIVE-14447) | Set HIVE\_TRANSACTIONAL\_TABLE\_SCAN to the correct job conf for FetchOperator |  Major | Hive, Transactions | Wei Zheng | Prasanth Jayachandran |
| [HIVE-14422](https://issues.apache.org/jira/browse/HIVE-14422) | LLAP IF: when using LLAP IF from multiple threads in secure cluster, tokens can get mixed up |  Major | . | Jason Dere | Sergey Shelukhin |
| [HIVE-14399](https://issues.apache.org/jira/browse/HIVE-14399) | Fix test flakiness of org.apache.hive.hcatalog.listener.TestDbNotificationListener.cleanupNotifs |  Major | HCatalog | Daniel Dai | Daniel Dai |
| [HIVE-7239](https://issues.apache.org/jira/browse/HIVE-7239) | Fix bug in HiveIndexedInputFormat implementation that causes incorrect query result when input backed by Sequence/RC files |  Major | Indexing | Sumit Kumar | Illya Yalovyy |
| [HIVE-14457](https://issues.apache.org/jira/browse/HIVE-14457) | Partitions in encryption zone are still trashed though an exception is returned |  Major | Encryption, Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13756](https://issues.apache.org/jira/browse/HIVE-13756) | Map failure attempts to delete reducer \_temporary directory on multi-query pig query |  Major | HCatalog | Chris Drome | Chris Drome |
| [HIVE-13754](https://issues.apache.org/jira/browse/HIVE-13754) | Fix resource leak in HiveClientCache |  Major | Clients | Chris Drome | Chris Drome |
| [HIVE-14513](https://issues.apache.org/jira/browse/HIVE-14513) | Enhance custom query feature in LDAP atn to support resultset of ldap groups |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-14342](https://issues.apache.org/jira/browse/HIVE-14342) | Beeline output is garbled when executed from a remote shell |  Major | Beeline | Naveen Gangam | Naveen Gangam |
| [HIVE-14433](https://issues.apache.org/jira/browse/HIVE-14433) | refactor LLAP plan cache avoidance and fix issue in merge processor |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14479](https://issues.apache.org/jira/browse/HIVE-14479) | Add some join tests for acid table |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-14432](https://issues.apache.org/jira/browse/HIVE-14432) | LLAP signing unit test may be timing-dependent |  Major | Test | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14448](https://issues.apache.org/jira/browse/HIVE-14448) | Queries with predicate fail when ETL split strategy is chosen for ACID tables |  Critical | Transactions | Saket Saurabh | Matt McCline |
| [HIVE-14519](https://issues.apache.org/jira/browse/HIVE-14519) | Multi insert query bug |  Major | Logical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-14483](https://issues.apache.org/jira/browse/HIVE-14483) |  java.lang.ArrayIndexOutOfBoundsException org.apache.orc.impl.TreeReaderFactory$BytesColumnVectorUtil.commonReadByteArrays |  Critical | ORC | Sergey Zadoroshnyak | Sergey Zadoroshnyak |
| [HIVE-14480](https://issues.apache.org/jira/browse/HIVE-14480) | ORC ETLSplitStrategy should use thread pool when computing splits |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-13936](https://issues.apache.org/jira/browse/HIVE-13936) | Add streaming support for row\_number |  Major | Query Processor | Johndee Burks | Yongzhi Chen |
| [HIVE-14566](https://issues.apache.org/jira/browse/HIVE-14566) | LLAP IO reads timestamp wrongly |  Critical | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14563](https://issues.apache.org/jira/browse/HIVE-14563) | StatsOptimizer treats NULL in a wrong way |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14435](https://issues.apache.org/jira/browse/HIVE-14435) | Vectorization: missed vectorization for const varchar() |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-13874](https://issues.apache.org/jira/browse/HIVE-13874) | Tighten up EOF checking in Fast DeserializeRead classes; display better exception information; add new Unit Tests |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-14595](https://issues.apache.org/jira/browse/HIVE-14595) | TimestampWritable::setTimestamp gives wrong result when 2nd VInt exists |  Major | . | Rui Li | Rui Li |
| [HIVE-14600](https://issues.apache.org/jira/browse/HIVE-14600) | LLAP zookeeper registry failures do not fail the daemon |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14446](https://issues.apache.org/jira/browse/HIVE-14446) | Add switch to control BloomFilter in Hybrid grace hash join and make the FPP adjustable |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-14574](https://issues.apache.org/jira/browse/HIVE-14574) | use consistent hashing for LLAP consistent splits to alleviate impact from cluster changes |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14619](https://issues.apache.org/jira/browse/HIVE-14619) | CASE folding can produce wrong expression |  Critical | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14360](https://issues.apache.org/jira/browse/HIVE-14360) | Starting BeeLine after using !save, there is an error logged: "Error setting configuration: conf" |  Minor | Beeline | Peter Vary | Peter Vary |
| [HIVE-14648](https://issues.apache.org/jira/browse/HIVE-14648) | LLAP: Avoid private pages in the SSD cache |  Blocker | llap | Gopal V | Gopal V |
| [HIVE-13930](https://issues.apache.org/jira/browse/HIVE-13930) | upgrade Hive to Hadoop 2.7.2 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14659](https://issues.apache.org/jira/browse/HIVE-14659) | OutputStream won't close if caught exception in funtion unparseExprForValuesClause in SemanticAnalyzer.java |  Major | . | Fan Yunbo | Fan Yunbo |
| [HIVE-14621](https://issues.apache.org/jira/browse/HIVE-14621) | LLAP: memory.mode = none has NPE |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14418](https://issues.apache.org/jira/browse/HIVE-14418) | Hive config validation prevents unsetting the settings |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13610](https://issues.apache.org/jira/browse/HIVE-13610) | Hive exec module won't compile with IBM JDK |  Major | . | Pan Yuxuan | Pan Yuxuan |
| [HIVE-14674](https://issues.apache.org/jira/browse/HIVE-14674) |  Incorrect syntax near the keyword 'with' using MS SQL Server |  Critical | Metastore, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14652](https://issues.apache.org/jira/browse/HIVE-14652) | incorrect results for not in on partition columns |  Blocker | . | stephen sprague | Sergey Shelukhin |
| [HIVE-14538](https://issues.apache.org/jira/browse/HIVE-14538) | beeline throws exceptions with parsing hive config when using !sh statement |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-14618](https://issues.apache.org/jira/browse/HIVE-14618) | beeline fetch logging delays before query completion |  Major | . | Tao Li | Tao Li |
| [HIVE-14530](https://issues.apache.org/jira/browse/HIVE-14530) | Union All query returns incorrect results |  Major | Query Planning | wenhe li | Jesus Camacho Rodriguez |
| [HIVE-14589](https://issues.apache.org/jira/browse/HIVE-14589) | add consistent node replacement to LLAP for splits |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14607](https://issues.apache.org/jira/browse/HIVE-14607) |  ORC split generation failed with exception: java.lang.ArrayIndexOutOfBoundsException: 1 |  Critical | Transactions | Eugene Koifman | Matt McCline |
| [HIVE-14693](https://issues.apache.org/jira/browse/HIVE-14693) | Some partitions will be left out when partition number is a multiple of the option hive.msck.repair.batch.size |  Major | Hive | Ferdinand Xu | Ferdinand Xu |
| [HIVE-13383](https://issues.apache.org/jira/browse/HIVE-13383) | RetryingMetaStoreClient retries non retriable embedded metastore client |  Major | Metastore | Thejas M Nair | Thejas M Nair |
| [HIVE-14697](https://issues.apache.org/jira/browse/HIVE-14697) | Can not access kerberized HS2 Web UI |  Major | Security, Web UI | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14608](https://issues.apache.org/jira/browse/HIVE-14608) | LLAP: slow scheduling due to LlapTaskScheduler not removing nodes on kill |  Critical | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14591](https://issues.apache.org/jira/browse/HIVE-14591) | HS2 is shut down unexpectedly during the startup time |  Major | . | Tao Li | Tao Li |
| [HIVE-14715](https://issues.apache.org/jira/browse/HIVE-14715) | Hive throws NumberFormatException with query with Null value |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-14702](https://issues.apache.org/jira/browse/HIVE-14702) | LLAPIF: after a long period of inactivity, signing key may be removed from local store |  Major | . | Jason Dere | Sergey Shelukhin |
| [HIVE-14726](https://issues.apache.org/jira/browse/HIVE-14726) | delete statement fails when spdo is on |  Major | Logical Optimizer, Transactions | Deepesh Khandelwal | Ashutosh Chauhan |
| [HIVE-14739](https://issues.apache.org/jira/browse/HIVE-14739) | Replace runnables directly added to runtime shutdown hooks to avoid deadlock |  Major | . | Deepesh Khandelwal | Prasanth Jayachandran |
| [HIVE-13878](https://issues.apache.org/jira/browse/HIVE-13878) | Vectorization: Column pruning for Text vectorization |  Major | Vectorization | Gopal V | Matt McCline |
| [HIVE-14251](https://issues.apache.org/jira/browse/HIVE-14251) | Union All of different types resolves to incorrect data |  Major | Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-14743](https://issues.apache.org/jira/browse/HIVE-14743) | ArrayIndexOutOfBoundsException - HBASE-backed views' query with JOINs |  Major | HBase Handler | Yongzhi Chen | Yongzhi Chen |
| [HIVE-14764](https://issues.apache.org/jira/browse/HIVE-14764) | Enabling "hive.metastore.metrics.enabled" throws OOM in HiveMetastore |  Minor | Metastore | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14680](https://issues.apache.org/jira/browse/HIVE-14680) | retain consistent splits /during/ (as opposed to across) LLAP failures on top of HIVE-14589 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14779](https://issues.apache.org/jira/browse/HIVE-14779) | make DbTxnManager.HeartbeaterThread a daemon |  Minor | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14624](https://issues.apache.org/jira/browse/HIVE-14624) | LLAP: Use FQDN when submitting work to LLAP |  Major | llap | Gopal V | Sergey Shelukhin |
| [HIVE-14098](https://issues.apache.org/jira/browse/HIVE-14098) | Logging task properties, and environment variables might contain passwords |  Major | HiveServer2, Logging, Spark | Peter Vary | Peter Vary |
| [HIVE-14783](https://issues.apache.org/jira/browse/HIVE-14783) | bucketing column should be part of sorting for delete/update operation when spdo is on |  Major | Logical Optimizer, Transactions | Kavan Suresh | Ashutosh Chauhan |
| [HIVE-14766](https://issues.apache.org/jira/browse/HIVE-14766) | ObjectStore.initialize() needs retry mechanisms in case of connection failures |  Major | Metastore | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-14814](https://issues.apache.org/jira/browse/HIVE-14814) | metastoreClient is used directly in Hive cause NPE |  Major | . | Dileep Kumar Chiguruvada | Prasanth Jayachandran |
| [HIVE-14774](https://issues.apache.org/jira/browse/HIVE-14774) | Canceling query using Ctrl-C in beeline might lead to stale locks |  Major | Locking | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14805](https://issues.apache.org/jira/browse/HIVE-14805) | Subquery inside a view will have the object in the subquery as the direct input |  Major | Views | Aihua Xu | Aihua Xu |
| [HIVE-14831](https://issues.apache.org/jira/browse/HIVE-14831) | Missing Druid dependencies at runtime |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14426](https://issues.apache.org/jira/browse/HIVE-14426) | Extensive logging on info level in WebHCat |  Minor | . | Peter Vary | Peter Vary |
| [HIVE-14751](https://issues.apache.org/jira/browse/HIVE-14751) | Add support for date truncation |  Major | Parser | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14843](https://issues.apache.org/jira/browse/HIVE-14843) | HIVE-14751 introduced ambiguity in grammar |  Major | Parser | Pengcheng Xiong | Jesus Camacho Rodriguez |
| [HIVE-14819](https://issues.apache.org/jira/browse/HIVE-14819) | FunctionInfo for permanent functions shows TEMPORARY FunctionType |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-14865](https://issues.apache.org/jira/browse/HIVE-14865) | Fix comments after HIVE-14350 |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-9423](https://issues.apache.org/jira/browse/HIVE-9423) | HiveServer2: Provide the user with different error messages depending on the Thrift client exception code |  Major | HiveServer2 | Vaibhav Gumashta | Peter Vary |
| [HIVE-14873](https://issues.apache.org/jira/browse/HIVE-14873) | Add UDF for extraction of 'day of week' |  Major | Parser, UDF | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14773](https://issues.apache.org/jira/browse/HIVE-14773) | NPE aggregating column statistics for date column in partitioned table |  Major | Hive | Nita Dembla | Pengcheng Xiong |
| [HIVE-14889](https://issues.apache.org/jira/browse/HIVE-14889) | Beeline leaks sensitive environment variables of HiveServer2 when you type set; |  Major | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-14690](https://issues.apache.org/jira/browse/HIVE-14690) | Query fail when hive.exec.parallel=true, with conflicting session dir |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-14928](https://issues.apache.org/jira/browse/HIVE-14928) | Analyze table no scan mess up schema |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-14942](https://issues.apache.org/jira/browse/HIVE-14942) | HS2 UI: Canceled queries show up in "Open Queries" |  Major | . | Tao Li | Tao Li |
| [HIVE-14966](https://issues.apache.org/jira/browse/HIVE-14966) | JDBC: Make cookie-auth work in HTTP mode |  Major | JDBC | Gopal V | Gopal V |
| [HIVE-14799](https://issues.apache.org/jira/browse/HIVE-14799) | Query operation are not thread safe during its cancellation |  Major | HiveServer2 | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14959](https://issues.apache.org/jira/browse/HIVE-14959) | Fix DISTINCT with windowing when CBO is enabled/disabled |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15022](https://issues.apache.org/jira/browse/HIVE-15022) | Missing hs2-connection-timed-out in BeeLine.properties |  Major | . | Peter Vary | Peter Vary |
| [HIVE-13423](https://issues.apache.org/jira/browse/HIVE-13423) | Handle the overflow case for decimal datatype for sum() |  Major | Query Processor | Aihua Xu | Aihua Xu |
| [HIVE-9941](https://issues.apache.org/jira/browse/HIVE-9941) | sql std authorization on partitioned table: truncate and insert |  Major | Authorization | Olaf Flebbe | Sushanth Sowmyan |
| [HIVE-14837](https://issues.apache.org/jira/browse/HIVE-14837) | JDBC: standalone jar is missing hadoop core dependencies |  Major | JDBC | Gopal V | Tao Li |
| [HIVE-15029](https://issues.apache.org/jira/browse/HIVE-15029) | Add logic to estimate stats for BETWEEN operator |  Major | Statistics | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15070](https://issues.apache.org/jira/browse/HIVE-15070) | HIVE-13062 causes the HMS schema upgrade tests to not work |  Major | . | Naveen Gangam | Naveen Gangam |
| [HIVE-15031](https://issues.apache.org/jira/browse/HIVE-15031) | Fix flaky LLAP unit test (TestSlotZNode) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15046](https://issues.apache.org/jira/browse/HIVE-15046) | Multiple fixes for Druid handler |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15065](https://issues.apache.org/jira/browse/HIVE-15065) | SimpleFetchOptimizer should decide based on metastore stats when available |  Major | Logical Optimizer | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15095](https://issues.apache.org/jira/browse/HIVE-15095) | TestHiveDruidQueryBasedInputFormat.testCreateSplitsIntervals fails |  Major | . | Sergey Shelukhin | Jesus Camacho Rodriguez |
| [HIVE-14933](https://issues.apache.org/jira/browse/HIVE-14933) | include argparse with LLAP scripts to support antique Python versions |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15061](https://issues.apache.org/jira/browse/HIVE-15061) | Metastore types are sometimes case sensitive |  Major | API | Thomas Tauber-Marshall | Chaoyu Tang |
| [HIVE-15099](https://issues.apache.org/jira/browse/HIVE-15099) | PTFOperator.PTFInvocation didn't properly reset the input partition |  Major | Hive, PTF-Windowing | Wei Zheng | Wei Zheng |
| [HIVE-15123](https://issues.apache.org/jira/browse/HIVE-15123) | LLAP UI: The UI should work even if the cache is disabled |  Major | llap, Web UI | Gopal V | Gopal V |
| [HIVE-15002](https://issues.apache.org/jira/browse/HIVE-15002) | HiveSessionImpl#executeStatementInternal may leave locks in an inconsistent state |  Major | HiveServer2 | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-14924](https://issues.apache.org/jira/browse/HIVE-14924) | MSCK REPAIR table with single threaded is throwing null pointer exception |  Major | CLI | Ratheesh Kamoor | Pengcheng Xiong |
| [HIVE-14984](https://issues.apache.org/jira/browse/HIVE-14984) | Hive-WebUI access results in Request is a replay (34) attack |  Major | HiveServer2 | Venkat Sambath | Barna Zsombor Klara |
| [HIVE-15060](https://issues.apache.org/jira/browse/HIVE-15060) | Remove the autoCommit warning from beeline |  Major | . | Tao Li | Tao Li |
| [HIVE-14992](https://issues.apache.org/jira/browse/HIVE-14992) | Relocate several common libraries in hive jdbc uber jar |  Major | . | Tao Li | Tao Li |
| [HIVE-15120](https://issues.apache.org/jira/browse/HIVE-15120) | Storage based auth: allow option to enforce write checks for external tables |  Major | Authorization | Thejas M Nair | Daniel Dai |
| [HIVE-15108](https://issues.apache.org/jira/browse/HIVE-15108) | allow Hive script to skip hadoop version check and HBase classpath |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15162](https://issues.apache.org/jira/browse/HIVE-15162) | NPE in ATSHook |  Major | Hooks | Jason Dere | Jason Dere |
| [HIVE-15137](https://issues.apache.org/jira/browse/HIVE-15137) | metastore add partitions background thread should use current username |  Major | Metastore | Thejas M Nair | Daniel Dai |
| [HIVE-15136](https://issues.apache.org/jira/browse/HIVE-15136) | LLAP: allow slider placement policy configuration during install |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13966](https://issues.apache.org/jira/browse/HIVE-13966) | DbNotificationListener: can loose DDL operation notifications |  Critical | HCatalog | Nachiket Vaidya | Mohit Sabharwal |
| [HIVE-13931](https://issues.apache.org/jira/browse/HIVE-13931) | Add support for HikariCP  connection pooling |  Major | Metastore | Sushanth Sowmyan | Prasanth Jayachandran |
| [HIVE-15208](https://issues.apache.org/jira/browse/HIVE-15208) | Query string should be HTML encoded for Web UI |  Minor | Web UI | Jimmy Xiang | Jimmy Xiang |
| [HIVE-15090](https://issues.apache.org/jira/browse/HIVE-15090) | Temporary DB failure can stop ExpiredTokenRemover thread |  Major | Metastore | Peter Vary | Peter Vary |
| [HIVE-14982](https://issues.apache.org/jira/browse/HIVE-14982) | Remove some reserved keywords in Hive 2.2 |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15178](https://issues.apache.org/jira/browse/HIVE-15178) | ORC stripe merge may produce many MR jobs and no merge if split size is small |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14089](https://issues.apache.org/jira/browse/HIVE-14089) | complex type support in LLAP IO is broken |  Major | . | Prasanth Jayachandran | Sergey Shelukhin |
| [HIVE-13539](https://issues.apache.org/jira/browse/HIVE-13539) | HiveHFileOutputFormat searching the wrong directory for HFiles |  Blocker | HBase Handler | Tim Robertson | Chaoyu Tang |
| [HIVE-15211](https://issues.apache.org/jira/browse/HIVE-15211) | Provide support for complex expressions in ON clauses for INNER joins |  Major | CBO, Parser | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15236](https://issues.apache.org/jira/browse/HIVE-15236) | timestamp and date comparison should happen in timestamp |  Major | Query Planning | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-15181](https://issues.apache.org/jira/browse/HIVE-15181) | buildQueryWithINClause didn't properly handle multiples of ConfVars.METASTORE\_DIRECT\_SQL\_MAX\_ELEMENTS\_IN\_CLAUSE |  Critical | Hive, Transactions | Wei Zheng | Wei Zheng |
| [HIVE-15196](https://issues.apache.org/jira/browse/HIVE-15196) | LLAP UI: HIVE-14984 broke LLAP UI |  Major | llap, Web UI | Gopal V | Barna Zsombor Klara |
| [HIVE-15234](https://issues.apache.org/jira/browse/HIVE-15234) | Semijoin cardinality estimation can be improved |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-15274](https://issues.apache.org/jira/browse/HIVE-15274) | DruidSelectQueryRecordReader uses wrong value for timestamp |  Minor | Druid integration | slim bouguerra | Jesus Camacho Rodriguez |
| [HIVE-15258](https://issues.apache.org/jira/browse/HIVE-15258) | Enable CBO on queries involving interval literals |  Major | CBO, Query Planning | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-15295](https://issues.apache.org/jira/browse/HIVE-15295) | Fix HCatalog javadoc generation with Java 8 |  Minor | Documentation, HCatalog | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15273](https://issues.apache.org/jira/browse/HIVE-15273) | Druid http client not configured correctly |  Minor | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-15306](https://issues.apache.org/jira/browse/HIVE-15306) | Change NOTICE file to account for JSON license components |  Major | . | Jesus Camacho Rodriguez | Prasanth Jayachandran |
| [HIVE-15124](https://issues.apache.org/jira/browse/HIVE-15124) | Fix OrcInputFormat to use reader's schema for include boolean array |  Major | ORC | Owen O'Malley | Owen O'Malley |
| [HIVE-15311](https://issues.apache.org/jira/browse/HIVE-15311) | Analyze column stats should skip non-primitive column types |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15227](https://issues.apache.org/jira/browse/HIVE-15227) | Optimize join + gby into semijoin |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-15202](https://issues.apache.org/jira/browse/HIVE-15202) | Concurrent compactions for the same partition may generate malformed folder structure |  Major | Transactions | Rui Li | Eugene Koifman |
| [HIVE-15308](https://issues.apache.org/jira/browse/HIVE-15308) | Create ACID table failed intermittently: due to Postgres (SQLState=25P02, ErrorCode=0) |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15309](https://issues.apache.org/jira/browse/HIVE-15309) | RemoteException(java.io.FileNotFoundException): File does not exist... \_flush\_length |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15291](https://issues.apache.org/jira/browse/HIVE-15291) | Comparison of timestamp fails if only date part is provided. |  Major | Hive, UDF | Dhiraj Kumar | Dhiraj Kumar |
| [HIVE-15327](https://issues.apache.org/jira/browse/HIVE-15327) | Outerjoin might produce wrong result depending on joinEmitInterval value |  Critical | Query Processor | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15278](https://issues.apache.org/jira/browse/HIVE-15278) | PTF+MergeJoin = NPE |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15323](https://issues.apache.org/jira/browse/HIVE-15323) | allow the user to turn off reduce-side SMB  join |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15312](https://issues.apache.org/jira/browse/HIVE-15312) | reduce logging in certain places |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15251](https://issues.apache.org/jira/browse/HIVE-15251) | Provide support for complex expressions in ON clauses for OUTER joins |  Major | CBO, Parser | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15369](https://issues.apache.org/jira/browse/HIVE-15369) | Extend column pruner to account for residual filter expression in Join operator |  Major | Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15355](https://issues.apache.org/jira/browse/HIVE-15355) | Concurrency issues during parallel moveFile due to HDFSUtils.setFullFileStatus |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-12504](https://issues.apache.org/jira/browse/HIVE-12504) | TxnHandler.abortTxn() should check if already aborted to improve message |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15296](https://issues.apache.org/jira/browse/HIVE-15296) | AM may lose task failures and not reschedule when scheduling to LLAP |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15279](https://issues.apache.org/jira/browse/HIVE-15279) | map join dummy operators are not set up correctly in certain cases with merge join |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14453](https://issues.apache.org/jira/browse/HIVE-14453) | refactor physical writing of ORC data and metadata to FS from the logical writers |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15403](https://issues.apache.org/jira/browse/HIVE-15403) | LLAP: Login with kerberos before starting the daemon |  Critical | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15417](https://issues.apache.org/jira/browse/HIVE-15417) | Glitches using ACID's row\_\_id hidden column |  Major | . | Carter Shanklin | Jesus Camacho Rodriguez |
| [HIVE-15397](https://issues.apache.org/jira/browse/HIVE-15397) | metadata-only queries may return incorrect results with empty tables |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15395](https://issues.apache.org/jira/browse/HIVE-15395) | Don't try to intern strings from empty map |  Major | Metastore | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-15048](https://issues.apache.org/jira/browse/HIVE-15048) | Update/Delete statement using wrong WriteEntity when subqueries are involved |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15347](https://issues.apache.org/jira/browse/HIVE-15347) | LLAP: Executor memory and Xmx should have some headroom for other services |  Critical | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15122](https://issues.apache.org/jira/browse/HIVE-15122) | Hive: Upcasting types should not obscure stats (min/max/ndv) |  Major | . | Siddharth Seth | Jesus Camacho Rodriguez |
| [HIVE-15420](https://issues.apache.org/jira/browse/HIVE-15420) | LLAP UI: Relativize resources to allow proxied/secured views |  Major | llap, Web UI | Gopal V | Gopal V |
| [HIVE-15459](https://issues.apache.org/jira/browse/HIVE-15459) | Fix unit test failures on master |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-15437](https://issues.apache.org/jira/browse/HIVE-15437) | avro tables join fails when - tbl join tbl\_postfix |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-14053](https://issues.apache.org/jira/browse/HIVE-14053) | Hive should report that primary keys can't be null. |  Minor | . | Carter Shanklin | Pengcheng Xiong |
| [HIVE-15331](https://issues.apache.org/jira/browse/HIVE-15331) | Decimal multiplication with high precision/scale often returns NULL |  Major | Types | Jason Dere | Jason Dere |
| [HIVE-15447](https://issues.apache.org/jira/browse/HIVE-15447) | Log session ID in ATSHook |  Major | Hooks | Jason Dere | Jason Dere |
| [HIVE-15482](https://issues.apache.org/jira/browse/HIVE-15482) | LLAP: When pre-emption is disabled task scheduler gets into loop |  Critical | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15445](https://issues.apache.org/jira/browse/HIVE-15445) | Subquery failing with ClassCastException |  Major | . | Aswathy Chellammal Sreekumar | Jesus Camacho Rodriguez |
| [HIVE-15335](https://issues.apache.org/jira/browse/HIVE-15335) | Fast Decimal |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-15113](https://issues.apache.org/jira/browse/HIVE-15113) | SHOW CREATE TABLE on skewed table returns statement without skew definition |  Major | . | Wojciech Meler | Aihua Xu |
| [HIVE-15376](https://issues.apache.org/jira/browse/HIVE-15376) | Improve heartbeater scheduling for transactions |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-15487](https://issues.apache.org/jira/browse/HIVE-15487) | LLAP: Improvements to random selection while scheduling |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15488](https://issues.apache.org/jira/browse/HIVE-15488) | Native Vector MapJoin fails when trying to serialize BigTable rows that have (unreferenced) complex types |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-15503](https://issues.apache.org/jira/browse/HIVE-15503) | LLAP: Fix use of Runtime.getRuntime.maxMemory in Hive operators |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14900](https://issues.apache.org/jira/browse/HIVE-14900) | fix entry for hive.exec.max.dynamic.partitions in config whitelist for sql std auth |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-15493](https://issues.apache.org/jira/browse/HIVE-15493) | Wrong result for LEFT outer join in Tez using MapJoinOperator |  Critical | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15529](https://issues.apache.org/jira/browse/HIVE-15529) | LLAP: TaskSchedulerService can get stuck when scheduling tasks as disabled node is not re-enabled in NodeEnablerCallable |  Critical | llap | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15542](https://issues.apache.org/jira/browse/HIVE-15542) | NPE in StatsUtils::getColStatistics when all values in DATE column are NULL |  Major | Statistics | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15474](https://issues.apache.org/jira/browse/HIVE-15474) | Extend limit propagation for chain of RS-GB-RS operators |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15557](https://issues.apache.org/jira/browse/HIVE-15557) | add a gzipped datafile to tests |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15558](https://issues.apache.org/jira/browse/HIVE-15558) | fix char whitespace handling for vectorization |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15562](https://issues.apache.org/jira/browse/HIVE-15562) | LLAP TaskExecutorService race can lead to some fragments being permanently lost |  Critical | . | Siddharth Seth | Siddharth Seth |
| [HIVE-15521](https://issues.apache.org/jira/browse/HIVE-15521) | setRightValue() code generated using FilterColumnBetween.txt is incorrect |  Major | Vectorization | Jason Dere | Jason Dere |
| [HIVE-15551](https://issues.apache.org/jira/browse/HIVE-15551) | memory leak in directsql for mysql+bonecp specific initialization |  Major | Metastore | Xiaomin Zhang | Xiaomin Zhang |
| [HIVE-15143](https://issues.apache.org/jira/browse/HIVE-15143) | add logging for HIVE-15024 |  Critical | llap | Gopal V | Sergey Shelukhin |
| [HIVE-14706](https://issues.apache.org/jira/browse/HIVE-14706) | Lineage information not set properly |  Critical | . | Vimal Sharma | Pengcheng Xiong |
| [HIVE-15590](https://issues.apache.org/jira/browse/HIVE-15590) | add separate spnego principal config for LLAP Web UI |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15583](https://issues.apache.org/jira/browse/HIVE-15583) | CTAS query removes leading underscore from column names with CBO |  Minor | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15588](https://issues.apache.org/jira/browse/HIVE-15588) | Vectorization: Fix deallocation of scratch columns in VectorUDFCoalesce, etc to prevent wrong reuse |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-15627](https://issues.apache.org/jira/browse/HIVE-15627) | Make hive.vectorized.adaptor.usage.mode=all vectorize all UDFs not just those in supportedGenericUDFs |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-15645](https://issues.apache.org/jira/browse/HIVE-15645) | Tez session pool may restart sessions in a wrong queue |  Major | . | Carter Shanklin | Sergey Shelukhin |
| [HIVE-15297](https://issues.apache.org/jira/browse/HIVE-15297) | Hive should not split semicolon within quoted string literals |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15633](https://issues.apache.org/jira/browse/HIVE-15633) | Hive/Druid integration: Exception when time filter is not in datasource range |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15569](https://issues.apache.org/jira/browse/HIVE-15569) | failures in RetryingHMSHandler.\<init\> do not get retried |  Major | . | Thejas M Nair | Vihang Karajgaonkar |
| [HIVE-15661](https://issues.apache.org/jira/browse/HIVE-15661) | Add security error logging to LLAP |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15036](https://issues.apache.org/jira/browse/HIVE-15036) | Druid code recently included in Hive pulls in GPL jar |  Blocker | Druid integration | Alan Gates | slim bouguerra |
| [HIVE-15684](https://issues.apache.org/jira/browse/HIVE-15684) | Wrong posBigTable used in VectorMapJoinOuterFilteredOperator |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-15565](https://issues.apache.org/jira/browse/HIVE-15565) | LLAP: GroupByOperator flushes hash table too frequently |  Minor | llap | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15685](https://issues.apache.org/jira/browse/HIVE-15685) | count(distinct) generates different result than expected |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15589](https://issues.apache.org/jira/browse/HIVE-15589) | Lengthen HIVE\_TXN\_TIMEOUT in TestDbTxnManager.setup to avoid unnecessary test failure |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-15646](https://issues.apache.org/jira/browse/HIVE-15646) | Column level lineage is not available for table Views |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15541](https://issues.apache.org/jira/browse/HIVE-15541) | Hive OOM when ATSHook enabled and ATS goes down |  Major | Hooks | Jason Dere | Jason Dere |
| [HIVE-15472](https://issues.apache.org/jira/browse/HIVE-15472) | JDBC: Standalone jar is missing ZK dependencies |  Major | JDBC | Gopal V | Tao Li |
| [HIVE-13014](https://issues.apache.org/jira/browse/HIVE-13014) | RetryingMetaStoreClient is retrying acid related calls too aggressievley |  Critical | Metastore, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15664](https://issues.apache.org/jira/browse/HIVE-15664) | LLAP text cache: improve first query perf I |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15647](https://issues.apache.org/jira/browse/HIVE-15647) | Combination of a boolean condition and null-safe comparison leads to NPE |  Minor | Query Processor | Carter Shanklin | Remus Rusanu |
| [HIVE-15650](https://issues.apache.org/jira/browse/HIVE-15650) | LLAP: Set perflogger to DEBUG level for llap daemons |  Major | llap, Logging | Gopal V | Prasanth Jayachandran |
| [HIVE-15655](https://issues.apache.org/jira/browse/HIVE-15655) | Optimizer: Allow config option to disable n-way JOIN merging |  Major | Physical Optimizer | Gopal V | Gopal V |
| [HIVE-15731](https://issues.apache.org/jira/browse/HIVE-15731) | sessions are not returned to the sessionPool in case of an interrupt |  Critical | . | Siddharth Seth | Siddharth Seth |
| [HIVE-15651](https://issues.apache.org/jira/browse/HIVE-15651) | LLAP: llap status tool enhancements |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15734](https://issues.apache.org/jira/browse/HIVE-15734) | LazySimpleDeserializeRead.readField needs to catch IllegalArgumentException |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-15669](https://issues.apache.org/jira/browse/HIVE-15669) | LLAP: Improve aging in shortest job first scheduler |  Major | llap | Rajesh Balamohan | Prasanth Jayachandran |
| [HIVE-15722](https://issues.apache.org/jira/browse/HIVE-15722) | LLAP: Avoid marking a query as complete if the AMReporter runs into an error |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-15693](https://issues.apache.org/jira/browse/HIVE-15693) | LLAP: cached threadpool in AMReporter creates too many threads leading to OOM |  Critical | llap | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15698](https://issues.apache.org/jira/browse/HIVE-15698) | Vectorization support for min/max/bloomfilter runtime filtering |  Major | Vectorization | Jason Dere | Jason Dere |
| [HIVE-15740](https://issues.apache.org/jira/browse/HIVE-15740) | Include hive-hcatalog-core.jar and hive-hcatalog-server-extensions.jar in binary distribution |  Major | distribution | Daniel Dai | Daniel Dai |
| [HIVE-15732](https://issues.apache.org/jira/browse/HIVE-15732) | add the ability to restrict configuration for the queries submitted to HS2 (Tez pool) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15750](https://issues.apache.org/jira/browse/HIVE-15750) | Fail schema discovery when two columns have similar names with different casing in Druid |  Major | Druid integration | Nishant Bangarwa | Jesus Camacho Rodriguez |
| [HIVE-15753](https://issues.apache.org/jira/browse/HIVE-15753) | subquery failing with  org.apache.hadoop.hive.ql.parse.SemanticException |  Major | Hive | Aswathy Chellammal Sreekumar | Vineet Garg |
| [HIVE-15752](https://issues.apache.org/jira/browse/HIVE-15752) | MSCK should add output WriteEntity for table in semantic analysis |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-15703](https://issues.apache.org/jira/browse/HIVE-15703) | HiveSubQRemoveRelBuilder should use Hive's own factories |  Major | . | Pengcheng Xiong | Vineet Garg |
| [HIVE-15649](https://issues.apache.org/jira/browse/HIVE-15649) | LLAP IO may NPE on all-column read |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15723](https://issues.apache.org/jira/browse/HIVE-15723) | Hive should report a warning about missing table/column statistics to user. |  Minor | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-15517](https://issues.apache.org/jira/browse/HIVE-15517) | NOT (x \<=\> y) returns NULL if x or y is NULL |  Major | Hive, Operators, Query Processor, SQL | Alexey Bedrintsev | Pengcheng Xiong |
| [HIVE-15748](https://issues.apache.org/jira/browse/HIVE-15748) | Remove cycles created due to semi join branch and map join Op on same operator pipeline |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-15760](https://issues.apache.org/jira/browse/HIVE-15760) | TezCompiler throws ConcurrentModificationException during cycle detection |  Critical | Tez | Prasanth Jayachandran | Deepak Jaiswal |
| [HIVE-15783](https://issues.apache.org/jira/browse/HIVE-15783) | small glitch in LlapServiceDriver on small VMs |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14420](https://issues.apache.org/jira/browse/HIVE-14420) | Fix orc\_llap\_counters.q test failure in master |  Major | Test | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15700](https://issues.apache.org/jira/browse/HIVE-15700) | BytesColumnVector can get stuck trying to resize byte buffer |  Major | Vectorization | Jason Dere | Jason Dere |
| [HIVE-15779](https://issues.apache.org/jira/browse/HIVE-15779) | LLAP: WaitQueue comparators should return 0 when tasks of the same DAG are of same priority |  Major | llap | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15777](https://issues.apache.org/jira/browse/HIVE-15777) | propagate LLAP app ID to ATS and log it |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15798](https://issues.apache.org/jira/browse/HIVE-15798) | LLAP run.sh should use stop --force |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15804](https://issues.apache.org/jira/browse/HIVE-15804) | Druid handler might not recognize correct column type when CBO fails |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15812](https://issues.apache.org/jira/browse/HIVE-15812) | Scalar subquery with having throws exception |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-15806](https://issues.apache.org/jira/browse/HIVE-15806) | Druid schema inference for Select queries might produce wrong type for metrics |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15797](https://issues.apache.org/jira/browse/HIVE-15797) | separate the configs for gby and oby position alias usage |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15810](https://issues.apache.org/jira/browse/HIVE-15810) | llapstatus should wait for ZK node to become available when in wait mode |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15827](https://issues.apache.org/jira/browse/HIVE-15827) | LLAP: status tool breaks out of watch mode when live instances is 0 |  Critical | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15755](https://issues.apache.org/jira/browse/HIVE-15755) | NullPointerException on invalid table name in ON clause of Merge statement |  Critical | Transactions | Kavan Suresh | Eugene Koifman |
| [HIVE-15808](https://issues.apache.org/jira/browse/HIVE-15808) | Remove semijoin reduction branch if it is on bigtable along with hash join |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-15803](https://issues.apache.org/jira/browse/HIVE-15803) | msck can hang when nested partitions are present |  Minor | Metastore | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15843](https://issues.apache.org/jira/browse/HIVE-15843) | disable slider YARN resource normalization for LLAP |  Major | . | Siddharth Seth | Sergey Shelukhin |
| [HIVE-15851](https://issues.apache.org/jira/browse/HIVE-15851) | CompactorMR.launchCompactionJob() should use JobClient.submitJob() not runJob |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15853](https://issues.apache.org/jira/browse/HIVE-15853) | Semijoin removed in case of dynamically partitioned hash join |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-15672](https://issues.apache.org/jira/browse/HIVE-15672) | LLAP text cache: improve first query perf II |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15850](https://issues.apache.org/jira/browse/HIVE-15850) | Proper handling of timezone in Druid storage handler |  Critical | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15866](https://issues.apache.org/jira/browse/HIVE-15866) | LazySimpleDeserializeRead doesn't recognized lower case 'true' properly |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-15872](https://issues.apache.org/jira/browse/HIVE-15872) | The PERCENTILE\_APPROX UDAF does not work with empty set |  Major | UDF | Chaozhong Yang | Chaozhong Yang |
| [HIVE-15896](https://issues.apache.org/jira/browse/HIVE-15896) | LLAP: improved failures when security is set up incorrectly |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15889](https://issues.apache.org/jira/browse/HIVE-15889) | LLAP: Some tasks still run after hive cli is shutdown |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15906](https://issues.apache.org/jira/browse/HIVE-15906) | thrift code regeneration to include new protocol version |  Critical | HiveServer2 | anishek | anishek |
| [HIVE-15901](https://issues.apache.org/jira/browse/HIVE-15901) | LLAP: incorrect usage of gap cache |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15769](https://issues.apache.org/jira/browse/HIVE-15769) | Support view creation in CBO |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15914](https://issues.apache.org/jira/browse/HIVE-15914) | Fix issues with druid-handler pom file |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15886](https://issues.apache.org/jira/browse/HIVE-15886) | LLAP: Provide logs URL for in-progress and completed task attemtps |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15892](https://issues.apache.org/jira/browse/HIVE-15892) | Vectorization: Fast Hash tables need to do bounds checking during expand |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-15921](https://issues.apache.org/jira/browse/HIVE-15921) | Re-order the slider stop command to avoid a force if possible |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-15900](https://issues.apache.org/jira/browse/HIVE-15900) | Beeline prints tez job progress in stdout instead of stderr |  Major | HiveServer2 | Aswathy Chellammal Sreekumar | Thejas M Nair |
| [HIVE-15917](https://issues.apache.org/jira/browse/HIVE-15917) | incorrect error handling from BackgroundWork can cause beeline query to hang |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15902](https://issues.apache.org/jira/browse/HIVE-15902) | Select query involving date throwing Hive 2 Internal error: unsupported conversion from type: date |  Major | HiveServer2 | Aswathy Chellammal Sreekumar | Jason Dere |
| [HIVE-15877](https://issues.apache.org/jira/browse/HIVE-15877) | Upload dependency jars for druid storage handler |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-15936](https://issues.apache.org/jira/browse/HIVE-15936) | ConcurrentModificationException in ATSHook |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-15950](https://issues.apache.org/jira/browse/HIVE-15950) | Make DbTxnManager use Metastore client consistently with callers |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15957](https://issues.apache.org/jira/browse/HIVE-15957) | Follow Hive's rules for type inference instead of Calcite |  Major | Query Planning | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-15954](https://issues.apache.org/jira/browse/HIVE-15954) | LLAP: some Tez INFO logs are too noisy |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15919](https://issues.apache.org/jira/browse/HIVE-15919) | Row count mismatch for count \* query |  Major | HiveServer2 | Aswathy Chellammal Sreekumar | Jason Dere |
| [HIVE-15846](https://issues.apache.org/jira/browse/HIVE-15846) | Relocate more dependencies (e.g. org.apache.zookeeper) for JDBC uber jar |  Major | . | Tao Li | Tao Li |
| [HIVE-15904](https://issues.apache.org/jira/browse/HIVE-15904) | select query throwing Null Pointer Exception from org.apache.hadoop.hive.ql.optimizer.DynamicPartitionPruningOptimization.generateSemiJoinOperatorPlan |  Major | HiveServer2 | Aswathy Chellammal Sreekumar | Jason Dere |
| [HIVE-15891](https://issues.apache.org/jira/browse/HIVE-15891) | Detect query rewrite scenario for UPDATE/DELETE/MERGE and fail fast |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-15972](https://issues.apache.org/jira/browse/HIVE-15972) | Runtime filtering not vectorizing for decimal/timestamp/char/varchar |  Major | Vectorization | Jason Dere | Jason Dere |
| [HIVE-15874](https://issues.apache.org/jira/browse/HIVE-15874) | Invalid position alias in Group By when CBO failed |  Major | CBO | Walter Wu | Pengcheng Xiong |
| [HIVE-15959](https://issues.apache.org/jira/browse/HIVE-15959) | LLAP: fix headroom calculation and move it to daemon |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15971](https://issues.apache.org/jira/browse/HIVE-15971) | LLAP: logs urls should use daemon container id instead of fake container id |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15938](https://issues.apache.org/jira/browse/HIVE-15938) | position alias in order by fails for union queries |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15990](https://issues.apache.org/jira/browse/HIVE-15990) | Always initialize connection properties in DruidSerDe |  Critical | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-16002](https://issues.apache.org/jira/browse/HIVE-16002) | Correlated IN subquery with aggregate asserts in sq\_count\_check UDF |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-16012](https://issues.apache.org/jira/browse/HIVE-16012) | BytesBytes hash table - better capacity exhaustion handling |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16010](https://issues.apache.org/jira/browse/HIVE-16010) | incorrect set in TezSessionPoolManager |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16020](https://issues.apache.org/jira/browse/HIVE-16020) | LLAP : Reduce IPC connection misses |  Major | llap | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15999](https://issues.apache.org/jira/browse/HIVE-15999) | Fix flakiness in TestDbTxnManager2 |  Major | Tests, Transactions | Wei Zheng | Wei Zheng |
| [HIVE-16028](https://issues.apache.org/jira/browse/HIVE-16028) | Fail UPDATE/DELETE/MERGE queries when Ranger authorization manager is used |  Major | Authorization, Transactions | Wei Zheng | Wei Zheng |
| [HIVE-16015](https://issues.apache.org/jira/browse/HIVE-16015) | LLAP: some Tez INFO logs are too noisy II |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16033](https://issues.apache.org/jira/browse/HIVE-16033) | LLAP: Use PrintGCDateStamps for gc logging |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15951](https://issues.apache.org/jira/browse/HIVE-15951) | Make sure base persist directory is unique and deleted |  Critical | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-16023](https://issues.apache.org/jira/browse/HIVE-16023) | Wrong estimation for number of rows generated by IN expression |  Major | Statistics | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15994](https://issues.apache.org/jira/browse/HIVE-15994) | Grouping function error when grouping sets are not specified |  Major | . | Carter Shanklin | Jesus Camacho Rodriguez |
| [HIVE-16013](https://issues.apache.org/jira/browse/HIVE-16013) | Fragments without locality can stack up on nodes |  Major | llap | Siddharth Seth | Prasanth Jayachandran |
| [HIVE-15958](https://issues.apache.org/jira/browse/HIVE-15958) | LLAP: IPC connections are not being reused for umbilical protocol |  Major | llap | Rajesh Balamohan | Prasanth Jayachandran |
| [HIVE-16022](https://issues.apache.org/jira/browse/HIVE-16022) | BloomFilter check not showing up in MERGE statement queries |  Major | Query Planning | Jason Dere | Jason Dere |
| [HIVE-16040](https://issues.apache.org/jira/browse/HIVE-16040) | union column expansion should take aliases from the leftmost branch |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15935](https://issues.apache.org/jira/browse/HIVE-15935) | ACL is not set in ATS data |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-16050](https://issues.apache.org/jira/browse/HIVE-16050) | Regression: Union of null with non-null |  Major | Query Planning | Gopal V | Gopal V |
| [HIVE-16067](https://issues.apache.org/jira/browse/HIVE-16067) | LLAP: send out container complete messages after a fragment completes |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-16068](https://issues.apache.org/jira/browse/HIVE-16068) | BloomFilter expectedEntries not always using NDV when it's available during runtime filtering |  Major | . | Jason Dere | Jason Dere |
| [HIVE-16082](https://issues.apache.org/jira/browse/HIVE-16082) | Allow user to change number of listener thread in LlapTaskCommunicator |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [HIVE-16034](https://issues.apache.org/jira/browse/HIVE-16034) | Hive/Druid integration: Fix type inference for Decimal DruidOutputFormat |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-16065](https://issues.apache.org/jira/browse/HIVE-16065) | Vectorization: Wrong Key/Value information used by Vectorizer |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-16094](https://issues.apache.org/jira/browse/HIVE-16094) | queued containers may timeout if they don't get to run for a long time |  Critical | . | Siddharth Seth | Siddharth Seth |
| [HIVE-16167](https://issues.apache.org/jira/browse/HIVE-16167) | Remove transitive dependency on mysql connector jar |  Major | Build Infrastructure, Druid integration | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-15929](https://issues.apache.org/jira/browse/HIVE-15929) | Fix HiveDecimalWritable to be compatible with Hive 2.1 |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-14801](https://issues.apache.org/jira/browse/HIVE-14801) | improve TestPartitionNameWhitelistValidation stability |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-16318](https://issues.apache.org/jira/browse/HIVE-16318) | LLAP cache: address some issues in 2.2/2.3 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16402](https://issues.apache.org/jira/browse/HIVE-16402) | Upgrade to Hadoop 2.8.0 |  Major | . | Sahil Takiar | Sahil Takiar |
| [HIVE-16403](https://issues.apache.org/jira/browse/HIVE-16403) | LLAP UI shows the wrong number of executors |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16193](https://issues.apache.org/jira/browse/HIVE-16193) | Hive show compactions not reflecting the status of the application |  Major | Transactions | Kavan Suresh | Wei Zheng |
| [HIVE-16390](https://issues.apache.org/jira/browse/HIVE-16390) | LLAP IO should take job config into account; also LLAP config should load defaults |  Major | . | Siddharth Seth | Sergey Shelukhin |
| [HIVE-15035](https://issues.apache.org/jira/browse/HIVE-15035) | Clean up Hive licenses for binary distribution |  Blocker | distribution | Alan Gates | Alan Gates |
| [HIVE-16117](https://issues.apache.org/jira/browse/HIVE-16117) | SortProjectTransposeRule should check for monotonicity preserving CAST |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-16473](https://issues.apache.org/jira/browse/HIVE-16473) | Hive-on-Tez may fail to write to an HBase table |  Major | . | Mahesh Balakrishnan | Sergey Shelukhin |
| [HIVE-16461](https://issues.apache.org/jira/browse/HIVE-16461) | DagUtils checks local resource size on the remote fs |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16519](https://issues.apache.org/jira/browse/HIVE-16519) | Fix exception thrown by checkOutputSpecs |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-16547](https://issues.apache.org/jira/browse/HIVE-16547) | LLAP: may not unlock buffers in some cases |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16545](https://issues.apache.org/jira/browse/HIVE-16545) | LLAP: bug in arena size determination logic |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16683](https://issues.apache.org/jira/browse/HIVE-16683) | ORC WriterVersion gets ArrayIndexOutOfBoundsException on newer ORC files |  Major | ORC | Owen O'Malley | Owen O'Malley |
| [HIVE-16549](https://issues.apache.org/jira/browse/HIVE-16549) | Fix an incompatible change in PredicateLeafImpl from HIVE-15269 |  Major | storage-api | Owen O'Malley | Owen O'Malley |
| [HIVE-15144](https://issues.apache.org/jira/browse/HIVE-15144) | JSON.org license is now CatX |  Blocker | . | Robert Kanter | Owen O'Malley |
| [HIVE-17118](https://issues.apache.org/jira/browse/HIVE-17118) | Clean up of HIVE-14309 to move the orc source code to org.apache.hive.orc |  Major | ORC | Owen O'Malley | Owen O'Malley |
| [HIVE-16787](https://issues.apache.org/jira/browse/HIVE-16787) | Fix itests in branch-2.2 |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-17154](https://issues.apache.org/jira/browse/HIVE-17154) | fix rat problems in branch-2.2 |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-17188](https://issues.apache.org/jira/browse/HIVE-17188) | ObjectStore runs out of memory for large batches of addPartitions(). |  Major | Metastore | Mithun Radhakrishnan | Chris Drome |
| [HIVE-15862](https://issues.apache.org/jira/browse/HIVE-15862) | beeline always have a warning "Hive does not support autoCommit=false" |  Major | Beeline | yangfang | yangfang |
| [HIVE-18112](https://issues.apache.org/jira/browse/HIVE-18112) | show create for view having special char in where clause is not showing properly |  Minor | . | Naresh P R | Naresh P R |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-14316](https://issues.apache.org/jira/browse/HIVE-14316) | TestLlapTokenChecker.testCheckPermissions, testGetToken fail |  Major | . | Siddharth Seth | Sergey Shelukhin |
| [HIVE-14713](https://issues.apache.org/jira/browse/HIVE-14713) | LDAP Authentication Provider should be covered with unit tests |  Major | Authentication, Tests | Illya Yalovyy | Illya Yalovyy |
| [HIVE-14929](https://issues.apache.org/jira/browse/HIVE-14929) | Adding JDBC test for query cancellation scenario |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-14935](https://issues.apache.org/jira/browse/HIVE-14935) | Add tests for beeline force option |  Major | Tests | Kavan Suresh | Kavan Suresh |
| [HIVE-15711](https://issues.apache.org/jira/browse/HIVE-15711) | Flaky TestEmbeddedThriftBinaryCLIService.testTaskStatus |  Minor | Hive | anishek | anishek |
| [HIVE-16415](https://issues.apache.org/jira/browse/HIVE-16415) | Add tests covering single inserts of zero rows |  Major | Tests | Thomas Poepping | Thomas Poepping |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13587](https://issues.apache.org/jira/browse/HIVE-13587) | Set Hive pom to use Hadoop 2.6.1 |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13549](https://issues.apache.org/jira/browse/HIVE-13549) | Remove jdk version specific out files from Hive2 |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13409](https://issues.apache.org/jira/browse/HIVE-13409) | Fix JDK8 test failures related to COLUMN\_STATS\_ACCURATE |  Major | Tests | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13860](https://issues.apache.org/jira/browse/HIVE-13860) | Fix more json related JDK8 test failures |  Major | Test | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13798](https://issues.apache.org/jira/browse/HIVE-13798) | Fix the unit test failure org.apache.hadoop.hive.cli.TestCliDriver.testCliDriver\_ivyDownload |  Major | . | Aihua Xu | Aihua Xu |
| [HIVE-13675](https://issues.apache.org/jira/browse/HIVE-13675) | LLAP: add HMAC signatures to LLAPIF splits |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13443](https://issues.apache.org/jira/browse/HIVE-13443) | LLAP: signing for the second state of submit (the event) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13731](https://issues.apache.org/jira/browse/HIVE-13731) | LLAP: return LLAP token with the splits |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13827](https://issues.apache.org/jira/browse/HIVE-13827) | LLAPIF: authentication on the output channel |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13759](https://issues.apache.org/jira/browse/HIVE-13759) | LlapTaskUmbilicalExternalClient should be closed by the record reader |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-13956](https://issues.apache.org/jira/browse/HIVE-13956) | LLAP: external client output is writing to channel before it is writable again |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-13771](https://issues.apache.org/jira/browse/HIVE-13771) | LLAPIF: generate app ID |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14028](https://issues.apache.org/jira/browse/HIVE-14028) | stats is not updated |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13803](https://issues.apache.org/jira/browse/HIVE-13803) | More aggressive inference of transitive predicates for inner joins |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14093](https://issues.apache.org/jira/browse/HIVE-14093) | LLAP output format connection should wait for all writes to finish before closing channel |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-14078](https://issues.apache.org/jira/browse/HIVE-14078) | LLAP input split should get task attempt number from conf if available |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-14119](https://issues.apache.org/jira/browse/HIVE-14119) | LLAP external recordreader not returning non-ascii string properly |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-13901](https://issues.apache.org/jira/browse/HIVE-13901) | Hivemetastore add partitions can be slow depending on filesystems |  Minor | Metastore | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14219](https://issues.apache.org/jira/browse/HIVE-14219) | LLAP external client on secure cluster: Protocol interface org.apache.hadoop.hive.llap.protocol.LlapTaskUmbilicalProtocol is not known |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-13965](https://issues.apache.org/jira/browse/HIVE-13965) | Empty resultset run into Exception when using Thrift Binary Serde |  Major | HiveServer2 | Ziyang Zhao | Ziyang Zhao |
| [HIVE-14180](https://issues.apache.org/jira/browse/HIVE-14180) | Disable LlapZookeeperRegistry ZK auth setup for external clients |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-14191](https://issues.apache.org/jira/browse/HIVE-14191) | bump a new api version for ThriftJDBCBinarySerde changes |  Major | HiveServer2, JDBC | Ziyang Zhao | Ziyang Zhao |
| [HIVE-9756](https://issues.apache.org/jira/browse/HIVE-9756) | LLAP: use log4j 2 for llap (log to separate files, etc.) |  Major | . | Gunther Hagleitner | Prasanth Jayachandran |
| [HIVE-14221](https://issues.apache.org/jira/browse/HIVE-14221) | set SQLStdHiveAuthorizerFactoryForTest as default HIVE\_AUTHORIZATION\_MANAGER |  Major | Security | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14277](https://issues.apache.org/jira/browse/HIVE-14277) | Disable StatsOptimizer for all ACID tables |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14291](https://issues.apache.org/jira/browse/HIVE-14291) | count(\*) on a table written by hcatstorer returns incorrect result |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13815](https://issues.apache.org/jira/browse/HIVE-13815) | Improve logic to infer false predicates |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14276](https://issues.apache.org/jira/browse/HIVE-14276) | Update protocol version in TOpenSessionReq and TOpenSessionResp |  Major | HiveServer2, JDBC | Ziyang Zhao | Ziyang Zhao |
| [HIVE-14428](https://issues.apache.org/jira/browse/HIVE-14428) | HadoopMetrics2Reporter leaks memory if the metrics sink is not configured correctly |  Critical | HiveServer2 | Siddharth Seth | Thejas M Nair |
| [HIVE-14445](https://issues.apache.org/jira/browse/HIVE-14445) | upgrade maven surefire to 2.19.1 |  Major | Tests | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-14396](https://issues.apache.org/jira/browse/HIVE-14396) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): TestCliDriver count.q failure |  Major | CBO | Vineet Garg | Vineet Garg |
| [HIVE-14504](https://issues.apache.org/jira/browse/HIVE-14504) | tez\_join\_hash.q test is slow |  Major | Test | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14444](https://issues.apache.org/jira/browse/HIVE-14444) | Upgrade qtest execution framework to junit4 - migrate most of them |  Major | Tests | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-14559](https://issues.apache.org/jira/browse/HIVE-14559) | Remove setting hive.execution.engine in qfiles |  Major | Test | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14503](https://issues.apache.org/jira/browse/HIVE-14503) | Remove explicit order by in qfiles for union tests |  Major | Test | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14511](https://issues.apache.org/jira/browse/HIVE-14511) | Improve MSCK for partitioned table to deal with special cases |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14625](https://issues.apache.org/jira/browse/HIVE-14625) | Minor qtest fixes |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14612](https://issues.apache.org/jira/browse/HIVE-14612) | org.apache.hive.service.cli.operation.TestOperationLoggingLayout.testSwitchLogLayout failure |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-14627](https://issues.apache.org/jira/browse/HIVE-14627) | Improvements to MiniMr tests |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14590](https://issues.apache.org/jira/browse/HIVE-14590) | CBO (Calcite Return Path) Incorrect result set when limit is present in one of the union branches |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-14655](https://issues.apache.org/jira/browse/HIVE-14655) | LLAP input format should escape the query string being passed to getSplits() |  Major | . | Jason Dere | Jason Dere |
| [HIVE-14656](https://issues.apache.org/jira/browse/HIVE-14656) | Clean up driver instance in get\_splits |  Major | . | Jason Dere | Jason Dere |
| [HIVE-14039](https://issues.apache.org/jira/browse/HIVE-14039) | HiveServer2: Make the usage of server with JDBC thirft serde enabled, backward compatible for older clients |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Ziyang Zhao |
| [HIVE-13593](https://issues.apache.org/jira/browse/HIVE-13593) | HiveServer2: Performance instrumentation for HIVE-12049 (serializing thrift ResultSets in tasks) |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Ziyang Zhao |
| [HIVE-14681](https://issues.apache.org/jira/browse/HIVE-14681) | Remove AssertionError for non zero return codes in QTestUtil cleanup |  Major | Testing Infrastructure | Siddharth Seth | Siddharth Seth |
| [HIVE-14767](https://issues.apache.org/jira/browse/HIVE-14767) | Migrate slow MiniMr tests to faster options |  Major | Tests | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14651](https://issues.apache.org/jira/browse/HIVE-14651) | Add a local cluster for Tez and LLAP |  Major | Testing Infrastructure | Siddharth Seth | Siddharth Seth |
| [HIVE-14782](https://issues.apache.org/jira/browse/HIVE-14782) | Improve runtime of NegativeMinimrCliDriver |  Major | Test | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14579](https://issues.apache.org/jira/browse/HIVE-14579) | Add support for date extract |  Major | UDF | Ashutosh Chauhan | Jesus Camacho Rodriguez |
| [HIVE-14824](https://issues.apache.org/jira/browse/HIVE-14824) | Separate fstype from cluster type in QTestUtil |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14852](https://issues.apache.org/jira/browse/HIVE-14852) | Change qtest logging to not redirect all logs to console |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14854](https://issues.apache.org/jira/browse/HIVE-14854) | Add a core cluster type to QTestUtil |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14768](https://issues.apache.org/jira/browse/HIVE-14768) | Add a new UDTF Replicate\_Rows |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14806](https://issues.apache.org/jira/browse/HIVE-14806) | Support UDTF in CBO (AST return path) |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14861](https://issues.apache.org/jira/browse/HIVE-14861) | Support precedence for set operator using parentheses |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14957](https://issues.apache.org/jira/browse/HIVE-14957) | HiveSortLimitPullUpConstantsRule misses branches when parent operator is Union |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14940](https://issues.apache.org/jira/browse/HIVE-14940) | MiniTezCliDriver - switch back to SQL metastore as default |  Major | Tests | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15010](https://issues.apache.org/jira/browse/HIVE-15010) | Make LockComponent aware if it's part of dynamic partition operation |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14993](https://issues.apache.org/jira/browse/HIVE-14993) | make WriteEntity distinguish writeType |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14580](https://issues.apache.org/jira/browse/HIVE-14580) | Introduce \|\| operator |  Major | SQL | Ashutosh Chauhan | Zoltan Haindrich |
| [HIVE-15042](https://issues.apache.org/jira/browse/HIVE-15042) | Support intersect/except without distinct keyword |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14887](https://issues.apache.org/jira/browse/HIVE-14887) | Reduce the memory used by MiniMr, MiniTez, MiniLlap tests |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14943](https://issues.apache.org/jira/browse/HIVE-14943) | Base Implementation |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15151](https://issues.apache.org/jira/browse/HIVE-15151) | Bootstrap support for replv2 |  Major | repl | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-14902](https://issues.apache.org/jira/browse/HIVE-14902) | HiveServer2: Cleanup code which checks for ThriftJDBCSerde usage |  Major | HiveServer2, JDBC, ODBC | Vaibhav Gumashta | Ziyang Zhao |
| [HIVE-13557](https://issues.apache.org/jira/browse/HIVE-13557) | Make interval keyword optional while specifying DAY in interval arithmetic |  Major | Types | Ashutosh Chauhan | Zoltan Haindrich |
| [HIVE-15180](https://issues.apache.org/jira/browse/HIVE-15180) | Extend JSONMessageFactory to store additional information about metadata objects on different table events |  Major | repl | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-15284](https://issues.apache.org/jira/browse/HIVE-15284) | Add junit test to test replication scenarios |  Major | repl | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-15332](https://issues.apache.org/jira/browse/HIVE-15332) | REPL LOAD & DUMP support for incremental CREATE\_TABLE/ADD\_PTN |  Major | repl | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-15307](https://issues.apache.org/jira/browse/HIVE-15307) | Hive MERGE: "when matched then update" allows invalid column names. |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15333](https://issues.apache.org/jira/browse/HIVE-15333) | Add a FetchTask to REPL DUMP plan for reading dump uri, last repl id as ResultSet |  Major | repl | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-14948](https://issues.apache.org/jira/browse/HIVE-14948) | properly handle special characters in identifiers |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15277](https://issues.apache.org/jira/browse/HIVE-15277) | Teach Hive how to create/delete Druid segments |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-15192](https://issues.apache.org/jira/browse/HIVE-15192) | Use Calcite to de-correlate and plan subqueries |  Major | Logical Optimizer | Vineet Garg | Vineet Garg |
| [HIVE-15294](https://issues.apache.org/jira/browse/HIVE-15294) | Capture additional metadata to replicate a simple insert at destination |  Major | repl | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-15426](https://issues.apache.org/jira/browse/HIVE-15426) | Fix order guarantee of event executions for REPL LOAD |  Major | repl | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-15200](https://issues.apache.org/jira/browse/HIVE-15200) | Support setOp in subQuery with parentheses |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15466](https://issues.apache.org/jira/browse/HIVE-15466) | REPL LOAD & DUMP support for incremental DROP\_TABLE/DROP\_PTN |  Major | repl | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-15448](https://issues.apache.org/jira/browse/HIVE-15448) | ChangeManager for replication |  Major | repl | Daniel Dai | Daniel Dai |
| [HIVE-15522](https://issues.apache.org/jira/browse/HIVE-15522) | REPL LOAD & DUMP support for incremental ALTER\_TABLE/ALTER\_PTN including renames |  Major | repl | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-15084](https://issues.apache.org/jira/browse/HIVE-15084) | Flaky test: TestMiniTezCliDriver:explainanalyze\_1,2, 3, 4, 5 |  Major | . | Siddharth Seth | Pengcheng Xiong |
| [HIVE-15366](https://issues.apache.org/jira/browse/HIVE-15366) | REPL LOAD & DUMP support for incremental INSERT events |  Major | repl | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-15481](https://issues.apache.org/jira/browse/HIVE-15481) | Support multiple and nested subqueries |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-12765](https://issues.apache.org/jira/browse/HIVE-12765) | Support Intersect (distinct/all) Except (distinct/all) Minus (distinct/all) |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15525](https://issues.apache.org/jira/browse/HIVE-15525) | Hooking ChangeManager to "drop table", "drop partition" |  Major | repl | Daniel Dai | Daniel Dai |
| [HIVE-15365](https://issues.apache.org/jira/browse/HIVE-15365) | Add new methods to MessageFactory API (corresponding to the ones added in JSONMessageFactory) |  Major | repl | Vaibhav Gumashta | Sushanth Sowmyan |
| [HIVE-15469](https://issues.apache.org/jira/browse/HIVE-15469) | Fix REPL DUMP/LOAD DROP\_PTN so it works on non-string-ptn-key tables |  Major | repl | Sushanth Sowmyan | Vaibhav Gumashta |
| [HIVE-15534](https://issues.apache.org/jira/browse/HIVE-15534) | Update db/table repl.last.id at the end of REPL LOAD of a batch of events |  Major | repl | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-15582](https://issues.apache.org/jira/browse/HIVE-15582) | Druid CTAS should support BYTE/SHORT/INT types |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15586](https://issues.apache.org/jira/browse/HIVE-15586) | Make Insert and Create statement Transactional |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-15544](https://issues.apache.org/jira/browse/HIVE-15544) | Support scalar subqueries |  Major | SQL | Vineet Garg | Vineet Garg |
| [HIVE-15478](https://issues.apache.org/jira/browse/HIVE-15478) | Add file + checksum list for create table/partition during notification creation (whenever relevant) |  Major | repl | Vaibhav Gumashta | Daniel Dai |
| [HIVE-15439](https://issues.apache.org/jira/browse/HIVE-15439) | Support INSERT OVERWRITE for internal druid datasources. |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-15578](https://issues.apache.org/jira/browse/HIVE-15578) | Simplify IdentifiersParser |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15721](https://issues.apache.org/jira/browse/HIVE-15721) | Allow  IN/NOT IN correlated subquery with aggregates |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-14949](https://issues.apache.org/jira/browse/HIVE-14949) | Add Cardinality Violation check in SQL MERGE stmt |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14936](https://issues.apache.org/jira/browse/HIVE-14936) | Flaky test: TestMiniLlapCliDriver.testCliDriver[orc\_ppd\_schema\_evol\_3a, orc\_ppd\_basic] |  Major | . | Siddharth Seth | Prasanth Jayachandran |
| [HIVE-15781](https://issues.apache.org/jira/browse/HIVE-15781) | Druid CTAS should support DECIMAL type |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15727](https://issues.apache.org/jira/browse/HIVE-15727) | Add pre insert work to give storage handler the possibility to perform pre insert checking |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-15458](https://issues.apache.org/jira/browse/HIVE-15458) | Fix semi-join conversion rule for subquery |  Major | Logical Optimizer | Vineet Garg | Vineet Garg |
| [HIVE-11687](https://issues.apache.org/jira/browse/HIVE-11687) | TaskExecutorService can reject work even if capacity is available |  Major | llap | Siddharth Seth | Siddharth Seth |
| [HIVE-15871](https://issues.apache.org/jira/browse/HIVE-15871) | Cannot insert into target table because column number/types are different with hive.merge.cardinality.check=false |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-10562](https://issues.apache.org/jira/browse/HIVE-10562) | Add versioning/format mechanism to NOTIFICATION\_LOG entries, expand MESSAGE size |  Major | Import/Export | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-15839](https://issues.apache.org/jira/browse/HIVE-15839) | Don't force cardinality check if only WHEN NOT MATCHED is specified |  Minor | Query Planning, Query Processor, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15905](https://issues.apache.org/jira/browse/HIVE-15905) | Inefficient plan for correlated subqueries |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-15933](https://issues.apache.org/jira/browse/HIVE-15933) | Improve plans for correlated subquery with join and predicate |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-15969](https://issues.apache.org/jira/browse/HIVE-15969) | Failures in TestRemoteHiveMetaStore, TestSetUGIOnOnlyServer |  Major | . | Thejas M Nair | slim bouguerra |
| [HIVE-15970](https://issues.apache.org/jira/browse/HIVE-15970) | Fix merge to work in presence of AST rewrites |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15948](https://issues.apache.org/jira/browse/HIVE-15948) | Failing test: TestCliDriver, TestSparkCliDriver join31 |  Major | . | Thejas M Nair | Sahil Takiar |
| [HIVE-15668](https://issues.apache.org/jira/browse/HIVE-15668) | change REPL DUMP syntax to use "LIMIT" instead of "BATCH" keyword |  Major | repl | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-16018](https://issues.apache.org/jira/browse/HIVE-16018) | Add more information for DynamicPartitionPruningOptimization |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15884](https://issues.apache.org/jira/browse/HIVE-15884) | Optimize not between for vectorization |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15673](https://issues.apache.org/jira/browse/HIVE-15673) | Allow multiple queries with disjunction |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-16535](https://issues.apache.org/jira/browse/HIVE-16535) | Hive fails to build from source code tarball |  Blocker | . | Alan Gates | Pengcheng Xiong |
| [HIVE-16504](https://issues.apache.org/jira/browse/HIVE-16504) | Addition of binary licenses broke rat check |  Blocker | . | Alan Gates | Alan Gates |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-14202](https://issues.apache.org/jira/browse/HIVE-14202) | Change tez version used to 0.8.4 |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14364](https://issues.apache.org/jira/browse/HIVE-14364) | Update timeouts for llap comparator tests |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14405](https://issues.apache.org/jira/browse/HIVE-14405) | Have tests log to the console along with hive.log |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14922](https://issues.apache.org/jira/browse/HIVE-14922) | Add perf logging for post job completion steps |  Major | Logging | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-15159](https://issues.apache.org/jira/browse/HIVE-15159) | LLAP ContainerRunner should not reduce the available heap while distributing to individual executors |  Major | llap | Siddharth Seth | Siddharth Seth |
| [HIVE-15164](https://issues.apache.org/jira/browse/HIVE-15164) | Change default RPC port for llap to be a dynamic port |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-15119](https://issues.apache.org/jira/browse/HIVE-15119) | Support standard syntax for ROLLUP & CUBE |  Major | Parser, SQL | Vineet Garg | Vineet Garg |
| [HIVE-15135](https://issues.apache.org/jira/browse/HIVE-15135) | Add an llap mode which fails if queries cannot run in llap |  Major | llap | Siddharth Seth | Siddharth Seth |
| [HIVE-15219](https://issues.apache.org/jira/browse/HIVE-15219) | LLAP: Allow additional slider global parameters to be set while creating the LLAP package |  Major | llap | Siddharth Seth | Siddharth Seth |
| [HIVE-15248](https://issues.apache.org/jira/browse/HIVE-15248) | Add Apache header license to TestCustomPartitionVertex |  Major | Hive | Sergio Peña | Sergio Peña |
| [HIVE-15242](https://issues.apache.org/jira/browse/HIVE-15242) | LLAP: Act on Node update notifications from registry, fix isAlive checks |  Major | llap | Siddharth Seth | Siddharth Seth |
| [HIVE-15419](https://issues.apache.org/jira/browse/HIVE-15419) | Separate out storage-api to be released independently |  Major | storage-api | Owen O'Malley | Owen O'Malley |
| [HIVE-15704](https://issues.apache.org/jira/browse/HIVE-15704) | Update the default logger for llap to query-routing |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-15787](https://issues.apache.org/jira/browse/HIVE-15787) | Make druid jars available for llap |  Major | Druid integration | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-15801](https://issues.apache.org/jira/browse/HIVE-15801) | Some logging improvements in LlapTaskScheduler |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-15918](https://issues.apache.org/jira/browse/HIVE-15918) | Add some debug messages to identify an issue getting runtimeInfo from tez |  Major | llap | Siddharth Seth | Siddharth Seth |


