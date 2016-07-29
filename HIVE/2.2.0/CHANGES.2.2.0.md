
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

## Release 2.2.0 - Unreleased (as of 2016-07-29)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13380](https://issues.apache.org/jira/browse/HIVE-13380) | Decimal should have lower precedence than double in type hierachy |  Major | Types | Ashutosh Chauhan | Ashutosh Chauhan |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13964](https://issues.apache.org/jira/browse/HIVE-13964) | Add a parameter to beeline to allow a properties file to be passed in |  Minor | Beeline | Abdullah Yousufi | Abdullah Yousufi |
| [HIVE-14315](https://issues.apache.org/jira/browse/HIVE-14315) | Implement StatsProvidingRecordReader for ParquetRecordReaderWrapper |  Major | Statistics | Chao Sun | Chao Sun |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13797](https://issues.apache.org/jira/browse/HIVE-13797) | Provide a connection string example in beeline |  Minor | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-12721](https://issues.apache.org/jira/browse/HIVE-12721) | Add UUID built in function |  Major | UDF | Jeremy Beard | Jeremy Beard |
| [HIVE-13490](https://issues.apache.org/jira/browse/HIVE-13490) | Change itests to be part of the main Hive build |  Major | . | Siddharth Seth | Zoltan Haindrich |
| [HIVE-13760](https://issues.apache.org/jira/browse/HIVE-13760) | Add a HIVE\_QUERY\_TIMEOUT configuration to kill a query if a query is running for more than the configured timeout value. |  Major | Configuration | zhihai xu | zhihai xu |
| [HIVE-13788](https://issues.apache.org/jira/browse/HIVE-13788) | hive msck listpartitions need to make use of directSQL instead of datanucleus |  Minor | . | Rajesh Balamohan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-14002](https://issues.apache.org/jira/browse/HIVE-14002) | Extend limit propagation to subsequent RS operators |  Major | Physical Optimizer | Nita Dembla | Jesus Camacho Rodriguez |
| [HIVE-14018](https://issues.apache.org/jira/browse/HIVE-14018) | Make IN clause row selectivity estimation customizable |  Minor | Statistics | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13441](https://issues.apache.org/jira/browse/HIVE-13441) | LLAPIF: security and signed fragments |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14023](https://issues.apache.org/jira/browse/HIVE-14023) | LLAP: Make the Hive query id available in ContainerRunner |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14001](https://issues.apache.org/jira/browse/HIVE-14001) | beeline doesn't give out an error when takes either "-e" or "-f" in command instead of both |  Trivial | Beeline | Peter Vary | Peter Vary |
| [HIVE-14021](https://issues.apache.org/jira/browse/HIVE-14021) | When converting to CNF, fail if the expression exceeds a threshold |  Minor | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13631](https://issues.apache.org/jira/browse/HIVE-13631) | Support index in HBase Metastore |  Major | HBase Metastore | Daniel Dai | Daniel Dai |
| [HIVE-13982](https://issues.apache.org/jira/browse/HIVE-13982) | Extensions to RS dedup: execute with different column order and sorting direction if possible |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14085](https://issues.apache.org/jira/browse/HIVE-14085) | Allow type widening primitive conversion on hive/parquet tables |  Major | File Formats | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-14118](https://issues.apache.org/jira/browse/HIVE-14118) | Make the alter partition exception more meaningful |  Trivial | Query Processor | Aihua Xu | Aihua Xu |
| [HIVE-13884](https://issues.apache.org/jira/browse/HIVE-13884) | Disallow queries in HMS fetching more than a configured number of partitions |  Major | . | Mohit Sabharwal | Sergio Peña |
| [HIVE-14080](https://issues.apache.org/jira/browse/HIVE-14080) | hive.metastore.schema.verification should check for schema compatiblity |  Major | Metastore | Thejas M Nair | Thejas M Nair |
| [HIVE-14094](https://issues.apache.org/jira/browse/HIVE-14094) | Remove unused function closeFs from Warehouse.java |  Trivial | Metastore | zhihai xu | zhihai xu |
| [HIVE-13937](https://issues.apache.org/jira/browse/HIVE-13937) | Unit test for HIVE-13051 |  Minor | Test | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-13763](https://issues.apache.org/jira/browse/HIVE-13763) | Update smart-apply-patch.sh with ability to use patches from git |  Major | Testing Infrastructure | Owen O'Malley | Owen O'Malley |
| [HIVE-13644](https://issues.apache.org/jira/browse/HIVE-13644) | Remove hardcoded groovy.grape.report.downloads=true from DependencyResolver |  Major | UDF | Anthony Hsu | Anthony Hsu |
| [HIVE-13614](https://issues.apache.org/jira/browse/HIVE-13614) | Implementation for PreparedStatement#setBigDecimal |  Minor | JDBC | Iwao AVE! | Iwao AVE! |
| [HIVE-14228](https://issues.apache.org/jira/browse/HIVE-14228) | Better row count estimates for outer join during physical planning |  Major | Physical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12244](https://issues.apache.org/jira/browse/HIVE-12244) | Refactoring code for avoiding of comparison of Strings and do comparison on Path |  Minor | Hive | Alina Abramova | Zoltan Haindrich |
| [HIVE-14198](https://issues.apache.org/jira/browse/HIVE-14198) | Refactor aux jar related code to make them more consistent |  Major | Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-14067](https://issues.apache.org/jira/browse/HIVE-14067) | Rename pendingCount to activeCalls in HiveSessionImpl  for easier understanding. |  Trivial | HiveServer2 | zhihai xu | zhihai xu |
| [HIVE-14224](https://issues.apache.org/jira/browse/HIVE-14224) | LLAP rename query specific log files once a query is complete |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14279](https://issues.apache.org/jira/browse/HIVE-14279) | fix mvn test TestHiveMetaStore.testTransactionalValidation |  Minor | Tests | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-14225](https://issues.apache.org/jira/browse/HIVE-14225) | Llap slider package should support configuring YARN rolling log aggregation |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14285](https://issues.apache.org/jira/browse/HIVE-14285) |  Explain outputs: map-entry ordering of non-primitive objects. |  Minor | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-14167](https://issues.apache.org/jira/browse/HIVE-14167) | Use work directories provided by Tez instead of directly using YARN local dirs |  Major | . | Siddharth Seth | Wei Zheng |
| [HIVE-14287](https://issues.apache.org/jira/browse/HIVE-14287) | Explain output: printed nested mapvalues are dependent on map entry iteration order |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-14123](https://issues.apache.org/jira/browse/HIVE-14123) | Add beeline configuration option to show database in the prompt |  Minor | Beeline, CLI | Peter Vary | Peter Vary |
| [HIVE-14331](https://issues.apache.org/jira/browse/HIVE-14331) | Task should set exception for failed map reduce job. |  Minor | Hive | zhihai xu | zhihai xu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13713](https://issues.apache.org/jira/browse/HIVE-13713) | We miss vectorization in a case of count(\*) when aggregation mode is COMPLETE |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-13742](https://issues.apache.org/jira/browse/HIVE-13742) | Hive ptest has many failures due to metastore connection refused |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-13855](https://issues.apache.org/jira/browse/HIVE-13855) | select INPUT\_\_FILE\_\_NAME throws NPE exception |  Major | Query Processor | Aihua Xu | Aihua Xu |
| [HIVE-13834](https://issues.apache.org/jira/browse/HIVE-13834) | Use LinkedHashMap instead of HashMap for LockRequestBuilder to maintain predictable iteration order |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-8282](https://issues.apache.org/jira/browse/HIVE-8282) | Potential null deference in ConvertJoinMapJoin#convertJoinBucketMapJoin() |  Minor | . | Ted Yu |  |
| [HIVE-13895](https://issues.apache.org/jira/browse/HIVE-13895) | HoS start-up overhead in yarn-client mode |  Major | . | Rui Li | Rui Li |
| [HIVE-13924](https://issues.apache.org/jira/browse/HIVE-13924) | (Vectorization) Error evaluating ((bool0 and (not bool1)) or (bool1 and (not bool0))) |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-13882](https://issues.apache.org/jira/browse/HIVE-13882) | When hive.server2.async.exec.async.compile is turned on, from JDBC we will get "The query did not generate a result set" |  Major | JDBC | Aihua Xu | Aihua Xu |
| [HIVE-13836](https://issues.apache.org/jira/browse/HIVE-13836) | DbNotifications giving an error = Invalid state. Transaction has already started |  Critical | . | Nachiket Vaidya | Nachiket Vaidya |
| [HIVE-13932](https://issues.apache.org/jira/browse/HIVE-13932) | Hive SMB Map Join with small set of LIMIT failed with NPE |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-13954](https://issues.apache.org/jira/browse/HIVE-13954) | Parquet logs should go to STDERR |  Major | . | Takahiko Saito | Prasanth Jayachandran |
| [HIVE-13540](https://issues.apache.org/jira/browse/HIVE-13540) | Casts to numeric types don't seem to work in hplsql |  Major | hpl/sql | Carter Shanklin | Dmitry Tolpeko |
| [HIVE-13721](https://issues.apache.org/jira/browse/HIVE-13721) | HPL/SQL COPY FROM FTP Statement: lack of DIR option leads to NPE |  Major | hpl/sql | Carter Shanklin | Dmitry Tolpeko |
| [HIVE-13391](https://issues.apache.org/jira/browse/HIVE-13391) | add an option to LLAP to use keytab to authenticate to read data |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13968](https://issues.apache.org/jira/browse/HIVE-13968) | CombineHiveInputFormat does not honor InputFormat that implements AvoidSplitCombination |  Major | . | Prasanna Rajaperumal | Prasanna Rajaperumal |
| [HIVE-13264](https://issues.apache.org/jira/browse/HIVE-13264) | JDBC driver makes 2 Open Session Calls for every open session |  Major | JDBC | NITHIN MAHESH | NITHIN MAHESH |
| [HIVE-13960](https://issues.apache.org/jira/browse/HIVE-13960) | Session timeout may happen before HIVE\_SERVER2\_IDLE\_SESSION\_TIMEOUT for back-to-back synchronous operations. |  Major | HiveServer2 | zhihai xu | zhihai xu |
| [HIVE-13900](https://issues.apache.org/jira/browse/HIVE-13900) | HiveStatement.executeAsync() may not work properly when hive.server2.async.exec.async.compile is turned on |  Major | JDBC | Aihua Xu | Aihua Xu |
| [HIVE-13866](https://issues.apache.org/jira/browse/HIVE-13866) | flatten callstack for directSQL errors |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13986](https://issues.apache.org/jira/browse/HIVE-13986) | LLAP: kill Tez AM on token errors from plugin |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14010](https://issues.apache.org/jira/browse/HIVE-14010) | parquet-logging.properties from HIVE\_CONF\_DIR should be used when available |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13987](https://issues.apache.org/jira/browse/HIVE-13987) | Clarify current error shown when HS2 is down |  Minor | Beeline | Abdullah Yousufi | Abdullah Yousufi |
| [HIVE-14022](https://issues.apache.org/jira/browse/HIVE-14022) | left semi join should throw SemanticException if where clause contains columnname from right table |  Major | . | Jagruti Varia | Jesus Camacho Rodriguez |
| [HIVE-14034](https://issues.apache.org/jira/browse/HIVE-14034) | Vectorization may fail with compex OR conditions |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-14031](https://issues.apache.org/jira/browse/HIVE-14031) | cleanup metadataReader in OrcEncodedDataReader |  Minor | ORC | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14015](https://issues.apache.org/jira/browse/HIVE-14015) | SMB MapJoin failed for Hive on Spark when kerberized |  Major | Logical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-14000](https://issues.apache.org/jira/browse/HIVE-14000) | (ORC) Changing a numeric type column of a partitioned table to lower type set values to something other than 'NULL' |  Critical | Hive, ORC | Matt McCline | Matt McCline |
| [HIVE-14059](https://issues.apache.org/jira/browse/HIVE-14059) | Missing license headers for two files |  Minor | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14054](https://issues.apache.org/jira/browse/HIVE-14054) | TestHiveMetaStoreChecker fails on master |  Major | Metastore | Ashutosh Chauhan | Pengcheng Xiong |
| [HIVE-14024](https://issues.apache.org/jira/browse/HIVE-14024) | setAllColumns is called incorrectly after some changes |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-14012](https://issues.apache.org/jira/browse/HIVE-14012) | some ColumnVector-s are missing ensureSize |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-13809](https://issues.apache.org/jira/browse/HIVE-13809) | Hybrid Grace Hash Join memory usage estimation didn't take into account the bloom filter size |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-13590](https://issues.apache.org/jira/browse/HIVE-13590) | Kerberized HS2 with LDAP auth enabled fails in multi-domain LDAP case |  Major | Authentication, Security | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13985](https://issues.apache.org/jira/browse/HIVE-13985) | ORC improvements for reducing the file system calls in task side |  Major | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13648](https://issues.apache.org/jira/browse/HIVE-13648) | ORC Schema Evolution doesn't support same type conversion for VARCHAR, CHAR, or DECIMAL when maxLength or precision/scale is different |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-14060](https://issues.apache.org/jira/browse/HIVE-14060) | Hive: Remove bogus "localhost" from Hive splits |  Major | Tez | Gopal V | Gopal V |
| [HIVE-14045](https://issues.apache.org/jira/browse/HIVE-14045) | (Vectorization) Add missing case for BINARY in VectorizationContext.getNormalizedName method |  Major | Hive | Matt McCline | Matt McCline |
| [HIVE-14062](https://issues.apache.org/jira/browse/HIVE-14062) | Changes from HIVE-13502 overwritten by HIVE-13566 |  Major | Beeline | Naveen Gangam | Naveen Gangam |
| [HIVE-14075](https://issues.apache.org/jira/browse/HIVE-14075) | BeeLine.java.orig was accidentally committed during HIVE-14001 patch |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-13744](https://issues.apache.org/jira/browse/HIVE-13744) | LLAP IO - add complex types support |  Major | . | Sergey Shelukhin | Prasanth Jayachandran |
| [HIVE-13159](https://issues.apache.org/jira/browse/HIVE-13159) | TxnHandler should support datanucleus.connectionPoolingType = None |  Major | . | Sergey Shelukhin | Alan Gates |
| [HIVE-14071](https://issues.apache.org/jira/browse/HIVE-14071) | HIVE-14014 breaks non-file outputs |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13617](https://issues.apache.org/jira/browse/HIVE-13617) | LLAP: support non-vectorized execution in IO |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14055](https://issues.apache.org/jira/browse/HIVE-14055) | directSql - getting the number of partitions is broken |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13872](https://issues.apache.org/jira/browse/HIVE-13872) | Vectorization: Fix cross-product reduce sink serialization |  Major | Vectorization | Gopal V | Matt McCline |
| [HIVE-7443](https://issues.apache.org/jira/browse/HIVE-7443) | Fix HiveConnection to communicate with Kerberized Hive JDBC server and alternative JDKs |  Major | JDBC, Security | Yu Gao | Aihua Xu |
| [HIVE-14076](https://issues.apache.org/jira/browse/HIVE-14076) | Vectorization is not supported for datatype:VOID error while inserting data into specific columns |  Major | . | Jagruti Varia | Jesus Camacho Rodriguez |
| [HIVE-14079](https://issues.apache.org/jira/browse/HIVE-14079) | Remove file, method and line number from pattern layout |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13725](https://issues.apache.org/jira/browse/HIVE-13725) | ACID: Streaming API should synchronize calls when multiple threads use the same endpoint |  Critical | HCatalog, Metastore, Transactions | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-13991](https://issues.apache.org/jira/browse/HIVE-13991) | Union All on view fail with no valid permission on underneath table |  Major | Query Planning | Yongzhi Chen | Yongzhi Chen |
| [HIVE-13997](https://issues.apache.org/jira/browse/HIVE-13997) | Insert overwrite directory doesn't overwrite existing files |  Major | Query Processor | Rui Li | Rui Li |
| [HIVE-14098](https://issues.apache.org/jira/browse/HIVE-14098) | Logging task properties, and environment variables might contain passwords |  Major | HiveServer2, Logging, Spark | Peter Vary | Peter Vary |
| [HIVE-14092](https://issues.apache.org/jira/browse/HIVE-14092) | Kryo exception when deserializing VectorFileSinkOperator |  Major | Serializers/Deserializers | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14073](https://issues.apache.org/jira/browse/HIVE-14073) | update config whiltelist for sql std authorization |  Major | Security, SQLStandardAuthorization | Thejas M Nair | Thejas M Nair |
| [HIVE-14013](https://issues.apache.org/jira/browse/HIVE-14013) | Describe table doesn't show unicode properly |  Major | Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-14083](https://issues.apache.org/jira/browse/HIVE-14083) | ALTER INDEX in Tez causes NullPointerException |  Minor | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14037](https://issues.apache.org/jira/browse/HIVE-14037) | java.lang.ClassNotFoundException for the jar in hive.reloadable.aux.jars.path in mapreduce |  Major | . | Aihua Xu | Aihua Xu |
| [HIVE-14091](https://issues.apache.org/jira/browse/HIVE-14091) | some errors are not propagated to LLAP external clients |  Major | . | Jason Dere | Sergey Shelukhin |
| [HIVE-14136](https://issues.apache.org/jira/browse/HIVE-14136) | LLAP ZK SecretManager should resolve \_HOST in principal |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14126](https://issues.apache.org/jira/browse/HIVE-14126) | With ranger enabled, partitioned columns is returned first when you execute select star |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14153](https://issues.apache.org/jira/browse/HIVE-14153) | Beeline: beeline history doesn't work on Hive2 |  Major | Beeline | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-14072](https://issues.apache.org/jira/browse/HIVE-14072) | QueryIds reused across different queries |  Critical | . | Siddharth Seth | Sergey Shelukhin |
| [HIVE-14122](https://issues.apache.org/jira/browse/HIVE-14122) | VectorMapOperator: Missing update to AbstractMapOperator::numRows |  Critical | Tez | Gopal V | Gopal V |
| [HIVE-14109](https://issues.apache.org/jira/browse/HIVE-14109) | query execuction throws NPE when hive.exec.submitviachild is set to true |  Major | Query Processor | Aihua Xu | Aihua Xu |
| [HIVE-14142](https://issues.apache.org/jira/browse/HIVE-14142) | java.lang.ClassNotFoundException for the jar in hive.reloadable.aux.jars.path for Hive on Spark |  Major | Spark | Aihua Xu | Aihua Xu |
| [HIVE-14140](https://issues.apache.org/jira/browse/HIVE-14140) | LLAP: package codec jars |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-14149](https://issues.apache.org/jira/browse/HIVE-14149) | Joda Time causes an AmazonS3Exception on Hadoop3.0.0 |  Major | Hive | Abdullah Yousufi | Abdullah Yousufi |
| [HIVE-14090](https://issues.apache.org/jira/browse/HIVE-14090) | JDOExceptions thrown by the Metastore have their full stack trace returned to clients |  Major | . | Sahil Takiar | Sahil Takiar |
| [HIVE-14138](https://issues.apache.org/jira/browse/HIVE-14138) | CBO failed for select current\_database() |  Minor | CBO | Peter Vary | Peter Vary |
| [HIVE-14163](https://issues.apache.org/jira/browse/HIVE-14163) | LLAP: use different kerberized/unkerberized zk paths for registry |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14182](https://issues.apache.org/jira/browse/HIVE-14182) | Revert "HIVE-13084: Vectorization add support for PROJECTION Multi-AND/OR |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-13945](https://issues.apache.org/jira/browse/HIVE-13945) | Decimal value is displayed as rounded when selecting where clause with that decimal value. |  Critical | . | Takahiko Saito | Sergey Shelukhin |
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
| [HIVE-14115](https://issues.apache.org/jira/browse/HIVE-14115) | Custom FetchFormatter is not supported |  Minor | . | Ryu Kobayashi | Ryu Kobayashi |
| [HIVE-14113](https://issues.apache.org/jira/browse/HIVE-14113) | Create function failed but function in show function list |  Major | UDF | Niklaus Xiao | Niklaus Xiao |
| [HIVE-13887](https://issues.apache.org/jira/browse/HIVE-13887) | LazySimpleSerDe should parse "NULL" dates faster |  Major | Serializers/Deserializers, Vectorization | Gopal V | Gopal V |
| [HIVE-13625](https://issues.apache.org/jira/browse/HIVE-13625) | Hive Prepared Statement when executed with escape characters in parameter fails |  Major | JDBC | Daya Venkatesan | Zoltan Haindrich |
| [HIVE-14027](https://issues.apache.org/jira/browse/HIVE-14027) | NULL values produced by left outer join do not behave as NULL |  Major | Query Processor | Vaibhav Gumashta | Jesus Camacho Rodriguez |
| [HIVE-14141](https://issues.apache.org/jira/browse/HIVE-14141) | Fix for HIVE-14062 breaks indirect urls in beeline |  Minor | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-14151](https://issues.apache.org/jira/browse/HIVE-14151) | Use of USE\_DEPRECATED\_CLI environment variable does not work |  Major | CLI | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-14175](https://issues.apache.org/jira/browse/HIVE-14175) | Fix creating buckets without scheme information |  Major | Query Processor | Thomas Poepping | Thomas Poepping |
| [HIVE-14200](https://issues.apache.org/jira/browse/HIVE-14200) | Tez: disable auto-reducer parallelism when reducer-count \* min.partition.factor \< 1.0 |  Major | . | Gopal V | Gopal V |
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
| [HIVE-14234](https://issues.apache.org/jira/browse/HIVE-14234) | TestHiveMetaStorePartitionSpecs does not drop database created in this test causes other test failure |  Minor | Tests | Niklaus Xiao | Niklaus Xiao |
| [HIVE-14004](https://issues.apache.org/jira/browse/HIVE-14004) | Minor compaction produces ArrayIndexOutOfBoundsException: 7 in SchemaEvolution.getFileType |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14241](https://issues.apache.org/jira/browse/HIVE-14241) | Acid clashes with ConfVars.HIVEFETCHTASKCONVERSION \<\> "none" |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14187](https://issues.apache.org/jira/browse/HIVE-14187) | JDOPersistenceManager objects remain cached if MetaStoreClient#close is not called |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-14253](https://issues.apache.org/jira/browse/HIVE-14253) | Fix MinimrCliDriver test failure |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14244](https://issues.apache.org/jira/browse/HIVE-14244) | bucketmap right outer join query throws ArrayIndexOutOfBoundsException |  Major | Physical Optimizer, Tez | Jagruti Varia | Zhiyuan Yang |
| [HIVE-14226](https://issues.apache.org/jira/browse/HIVE-14226) | Invalid check on an ASTNode#toStringTree in CalcitePlanner |  Minor | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-11863](https://issues.apache.org/jira/browse/HIVE-11863) | FS based stats collection generates wrong results for tez (for union queries) |  Major | . | Prasanth Jayachandran | Pengcheng Xiong |
| [HIVE-13191](https://issues.apache.org/jira/browse/HIVE-13191) | DummyTable map joins mix up columns between tables |  Major | . | Gopal V | Jesus Camacho Rodriguez |
| [HIVE-14236](https://issues.apache.org/jira/browse/HIVE-14236) | CTAS with UNION ALL puts the wrong stats in Tez |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14135](https://issues.apache.org/jira/browse/HIVE-14135) | beeline output not formatted correctly for large column widths |  Major | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-14265](https://issues.apache.org/jira/browse/HIVE-14265) | Partial stats in Join operator may lead to data size estimate of 0 |  Major | Statistics | Nita Dembla | Jesus Camacho Rodriguez |
| [HIVE-13369](https://issues.apache.org/jira/browse/HIVE-13369) | AcidUtils.getAcidState() is not paying attention toValidTxnList when choosing the "best" base file |  Blocker | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-12773](https://issues.apache.org/jira/browse/HIVE-12773) | Address current test case failures in Hive |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14262](https://issues.apache.org/jira/browse/HIVE-14262) | Inherit writetype from partition WriteEntity for table WriteEntity |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-13883](https://issues.apache.org/jira/browse/HIVE-13883) | WebHCat leaves token crc file never gets deleted |  Minor | WebHCat | Niklaus Xiao | Niklaus Xiao |
| [HIVE-14254](https://issues.apache.org/jira/browse/HIVE-14254) | Correct the hive version by changing "svn" to "git" |  Minor | CLI | Tao Li | Tao Li |
| [HIVE-13906](https://issues.apache.org/jira/browse/HIVE-13906) | Remove guava dependence from storage-api module |  Major | storage-api | Owen O'Malley | Owen O'Malley |
| [HIVE-14242](https://issues.apache.org/jira/browse/HIVE-14242) | Backport ORC-53 to Hive |  Major | ORC | Owen O'Malley | Owen O'Malley |
| [HIVE-14282](https://issues.apache.org/jira/browse/HIVE-14282) | HCatLoader ToDate() exception with hive partition table ,partitioned by column of DATE datatype |  Major | HCatalog | Raghavender Rao Guruvannagari | Daniel Dai |
| [HIVE-14301](https://issues.apache.org/jira/browse/HIVE-14301) | insert overwrite fails for nonpartitioned tables in s3 |  Minor | Query Processor | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14229](https://issues.apache.org/jira/browse/HIVE-14229) | the jars in hive.aux.jar.paths are not added to session classpath |  Major | Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-14292](https://issues.apache.org/jira/browse/HIVE-14292) | ACID table creation fails on mysql with MySQLIntegrityConstraintViolationException |  Major | Transactions | Deepesh Khandelwal | Eugene Koifman |
| [HIVE-14268](https://issues.apache.org/jira/browse/HIVE-14268) | INSERT-OVERWRITE is not generating an INSERT event during hive replication |  Major | Hive | Murali Ramasami | Sushanth Sowmyan |
| [HIVE-14267](https://issues.apache.org/jira/browse/HIVE-14267) | HS2 open\_operations metrics not decremented when an operation gets timed out |  Minor | HiveServer2 | David Karoly | Naveen Gangam |
| [HIVE-13934](https://issues.apache.org/jira/browse/HIVE-13934) | Configure Tez to make nocondiional task size memory available for the Processor |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-14295](https://issues.apache.org/jira/browse/HIVE-14295) | Some metastore event listeners always initialize deleteData as false |  Minor | Metastore | Niklaus Xiao | Niklaus Xiao |
| [HIVE-14263](https://issues.apache.org/jira/browse/HIVE-14263) | Log message when HS2 query is waiting on compile lock |  Major | HiveServer2 | Thejas M Nair | Tao Li |
| [HIVE-14214](https://issues.apache.org/jira/browse/HIVE-14214) | ORC Schema Evolution and Predicate Push Down do not work together (no rows returned) |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-14286](https://issues.apache.org/jira/browse/HIVE-14286) | ExplainTask#outputMap usage: not desired call |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-14298](https://issues.apache.org/jira/browse/HIVE-14298) | NPE could be thrown in HMS when an ExpressionTree could not be made from a filter |  Major | Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-12646](https://issues.apache.org/jira/browse/HIVE-12646) | beeline and HIVE CLI do not parse ; in quote properly |  Major | CLI, Clients | Yongzhi Chen | Sahil Takiar |
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
| [HIVE-11339](https://issues.apache.org/jira/browse/HIVE-11339) | org.apache.hadoop.hive.serde2.io.TimestampWritable.write(DataOutput out) makes incorrect cast |  Major | Serializers/Deserializers | Arnaud Linz | Zoltan Haindrich |
| [HIVE-14359](https://issues.apache.org/jira/browse/HIVE-14359) | Hive on Spark might fail in HS2 with LDAP authentication in a kerberized cluster |  Major | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14294](https://issues.apache.org/jira/browse/HIVE-14294) | HiveSchemaConverter for Parquet doesn't translate TINYINT and SMALLINT into proper Parquet types |  Major | . | Cheng Lian | Gabor Szadovszky |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13921](https://issues.apache.org/jira/browse/HIVE-13921) | Fix constprog\_partitioner for HoS |  Major | . | Rui Li | Rui Li |
| [HIVE-14316](https://issues.apache.org/jira/browse/HIVE-14316) | TestLlapTokenChecker.testCheckPermissions, testGetToken fail |  Major | . | Siddharth Seth | Sergey Shelukhin |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13587](https://issues.apache.org/jira/browse/HIVE-13587) | Set Hive pom to use Hadoop 2.6.1 |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13549](https://issues.apache.org/jira/browse/HIVE-13549) | Remove jdk version specific out files from Hive2 |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13409](https://issues.apache.org/jira/browse/HIVE-13409) | Fix JDK8 test failures related to COLUMN\_STATS\_ACCURATE |  Major | Tests | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13149](https://issues.apache.org/jira/browse/HIVE-13149) | Remove some unnecessary HMS connections from HS2 |  Major | HiveServer2 | Aihua Xu | Aihua Xu |
| [HIVE-13860](https://issues.apache.org/jira/browse/HIVE-13860) | Fix more json related JDK8 test failures |  Major | Test | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13453](https://issues.apache.org/jira/browse/HIVE-13453) | Support ORDER BY and windowing clause in partitioning clause with distinct function |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-13792](https://issues.apache.org/jira/browse/HIVE-13792) | Show create table should not show stats info in the table properties |  Major | Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-13798](https://issues.apache.org/jira/browse/HIVE-13798) | Fix the unit test failure org.apache.hadoop.hive.cli.TestCliDriver.testCliDriver\_ivyDownload |  Major | . | Aihua Xu | Aihua Xu |
| [HIVE-13894](https://issues.apache.org/jira/browse/HIVE-13894) | Fix more json related JDK8 test failures Part 2 |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13916](https://issues.apache.org/jira/browse/HIVE-13916) | Reduce the max runtime of a test further |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13675](https://issues.apache.org/jira/browse/HIVE-13675) | LLAP: add HMAC signatures to LLAPIF splits |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13443](https://issues.apache.org/jira/browse/HIVE-13443) | LLAP: signing for the second state of submit (the event) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13731](https://issues.apache.org/jira/browse/HIVE-13731) | LLAP: return LLAP token with the splits |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13827](https://issues.apache.org/jira/browse/HIVE-13827) | LLAPIF: authentication on the output channel |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13759](https://issues.apache.org/jira/browse/HIVE-13759) | LlapTaskUmbilicalExternalClient should be closed by the record reader |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-13956](https://issues.apache.org/jira/browse/HIVE-13956) | LLAP: external client output is writing to channel before it is writable again |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-13771](https://issues.apache.org/jira/browse/HIVE-13771) | LLAPIF: generate app ID |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14014](https://issues.apache.org/jira/browse/HIVE-14014) | zero length file is being created for empty bucket in tez mode (II) |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14028](https://issues.apache.org/jira/browse/HIVE-14028) | stats is not updated |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14070](https://issues.apache.org/jira/browse/HIVE-14070) | hive.tez.exec.print.summary=true returns wrong performance numbers on HS2 |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13803](https://issues.apache.org/jira/browse/HIVE-13803) | More aggressive inference of transitive predicates for inner joins |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14093](https://issues.apache.org/jira/browse/HIVE-14093) | LLAP output format connection should wait for all writes to finish before closing channel |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-14078](https://issues.apache.org/jira/browse/HIVE-14078) | LLAP input split should get task attempt number from conf if available |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-14119](https://issues.apache.org/jira/browse/HIVE-14119) | LLAP external recordreader not returning non-ascii string properly |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-13901](https://issues.apache.org/jira/browse/HIVE-13901) | Hivemetastore add partitions can be slow depending on filesystems |  Minor | Metastore | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14209](https://issues.apache.org/jira/browse/HIVE-14209) | Add some logging info for session and operation management |  Minor | Query Processor | Aihua Xu | Aihua Xu |
| [HIVE-14219](https://issues.apache.org/jira/browse/HIVE-14219) | LLAP external client on secure cluster: Protocol interface org.apache.hadoop.hive.llap.protocol.LlapTaskUmbilicalProtocol is not known |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-14196](https://issues.apache.org/jira/browse/HIVE-14196) | Disable LLAP IO when complex types are involved |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13965](https://issues.apache.org/jira/browse/HIVE-13965) | Empty resultset run into Exception when using Thrift Binary Serde |  Major | HiveServer2 | Ziyang Zhao | Ziyang Zhao |
| [HIVE-14180](https://issues.apache.org/jira/browse/HIVE-14180) | Disable LlapZookeeperRegistry ZK auth setup for external clients |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-14191](https://issues.apache.org/jira/browse/HIVE-14191) | bump a new api version for ThriftJDBCBinarySerde changes |  Major | HiveServer2, JDBC | Ziyang Zhao | Ziyang Zhao |
| [HIVE-9756](https://issues.apache.org/jira/browse/HIVE-9756) | LLAP: use log4j 2 for llap (log to separate files, etc.) |  Major | . | Gunther Hagleitner | Prasanth Jayachandran |
| [HIVE-14221](https://issues.apache.org/jira/browse/HIVE-14221) | set SQLStdHiveAuthorizerFactoryForTest as default HIVE\_AUTHORIZATION\_MANAGER |  Major | Security | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14277](https://issues.apache.org/jira/browse/HIVE-14277) | Disable StatsOptimizer for all ACID tables |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14291](https://issues.apache.org/jira/browse/HIVE-14291) | count(\*) on a table written by hcatstorer returns incorrect result |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13815](https://issues.apache.org/jira/browse/HIVE-13815) | Improve logic to infer false predicates |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13868](https://issues.apache.org/jira/browse/HIVE-13868) | Include derby.log file in the Hive ptest logs |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-13839](https://issues.apache.org/jira/browse/HIVE-13839) | [Refactor] Remove SHIMS.listLocatedStatus |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-13919](https://issues.apache.org/jira/browse/HIVE-13919) | TestHWISessionManager 'did not produce TEST-\*.xml' is reported incorrectly |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13917](https://issues.apache.org/jira/browse/HIVE-13917) | Investigate and fix tests which are timing out in the precommit build |  Critical | Testing Infrastructure | Siddharth Seth | Siddharth Seth |
| [HIVE-14056](https://issues.apache.org/jira/browse/HIVE-14056) | Golden file updates for few tests |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-14148](https://issues.apache.org/jira/browse/HIVE-14148) | Add branch-2.1 branch to pre-commit tests |  Major | Testing Infrastructure | Sergio Peña | Sergio Peña |
| [HIVE-14202](https://issues.apache.org/jira/browse/HIVE-14202) | Change tez version used to 0.8.4 |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14328](https://issues.apache.org/jira/browse/HIVE-14328) | Change branch1 to branch-1 for pre-commit tests |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-14320](https://issues.apache.org/jira/browse/HIVE-14320) | Fix table\_access\_key\_stats with returnpath feature on |  Major | Hive | Vineet Garg | Vineet Garg |
| [HIVE-14364](https://issues.apache.org/jira/browse/HIVE-14364) | Update timeouts for llap comparator tests |  Major | . | Siddharth Seth | Siddharth Seth |


