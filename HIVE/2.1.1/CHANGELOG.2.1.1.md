
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

## Release 2.1.1 - 2016-12-08



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-14002](https://issues.apache.org/jira/browse/HIVE-14002) | Extend limit propagation to subsequent RS operators |  Major | Physical Optimizer | Nita Dembla | Jesus Camacho Rodriguez |
| [HIVE-14018](https://issues.apache.org/jira/browse/HIVE-14018) | Make IN clause row selectivity estimation customizable |  Minor | Statistics | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14057](https://issues.apache.org/jira/browse/HIVE-14057) | Add an option in llapstatus to generate output to a file |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14021](https://issues.apache.org/jira/browse/HIVE-14021) | When converting to CNF, fail if the expression exceeds a threshold |  Minor | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13631](https://issues.apache.org/jira/browse/HIVE-13631) | Support index in HBase Metastore |  Major | HBase Metastore | Daniel Dai | Daniel Dai |
| [HIVE-13982](https://issues.apache.org/jira/browse/HIVE-13982) | Extensions to RS dedup: execute with different column order and sorting direction if possible |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14080](https://issues.apache.org/jira/browse/HIVE-14080) | hive.metastore.schema.verification should check for schema compatiblity |  Major | Metastore | Thejas M Nair | Thejas M Nair |
| [HIVE-10815](https://issues.apache.org/jira/browse/HIVE-10815) | Let HiveMetaStoreClient Choose MetaStore Randomly |  Major | HiveServer2, Metastore | Nemon Lou | Nemon Lou |
| [HIVE-14213](https://issues.apache.org/jira/browse/HIVE-14213) | Add timeouts for various components in llap status check |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14228](https://issues.apache.org/jira/browse/HIVE-14228) | Better row count estimates for outer join during physical planning |  Major | Physical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-14167](https://issues.apache.org/jira/browse/HIVE-14167) | Use work directories provided by Tez instead of directly using YARN local dirs |  Major | . | Siddharth Seth | Wei Zheng |
| [HIVE-14383](https://issues.apache.org/jira/browse/HIVE-14383) | SparkClientImpl should pass principal and keytab to spark-submit instead of calling kinit explicitely |  Major | Spark | Mubashir Kazia | Chaoyu Tang |
| [HIVE-14545](https://issues.apache.org/jira/browse/HIVE-14545) | HiveServer2 with http transport mode spends too much time just creating configs |  Minor | HiveServer2 | Rajesh Balamohan | Rajesh Balamohan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13836](https://issues.apache.org/jira/browse/HIVE-13836) | DbNotifications giving an error = Invalid state. Transaction has already started |  Critical | . | Nachiket Vaidya | Nachiket Vaidya |
| [HIVE-13932](https://issues.apache.org/jira/browse/HIVE-13932) | Hive SMB Map Join with small set of LIMIT failed with NPE |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-13264](https://issues.apache.org/jira/browse/HIVE-13264) | JDBC driver makes 2 Open Session Calls for every open session |  Major | JDBC | NITHIN MAHESH | NITHIN MAHESH |
| [HIVE-14022](https://issues.apache.org/jira/browse/HIVE-14022) | left semi join should throw SemanticException if where clause contains columnname from right table |  Major | . | Jagruti Varia | Jesus Camacho Rodriguez |
| [HIVE-14034](https://issues.apache.org/jira/browse/HIVE-14034) | Vectorization may fail with compex OR conditions |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-14031](https://issues.apache.org/jira/browse/HIVE-14031) | cleanup metadataReader in OrcEncodedDataReader |  Minor | ORC | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14003](https://issues.apache.org/jira/browse/HIVE-14003) | queries running against llap hang at times - preemption issues |  Major | llap | Takahiko Saito | Siddharth Seth |
| [HIVE-14000](https://issues.apache.org/jira/browse/HIVE-14000) | (ORC) Changing a numeric type column of a partitioned table to lower type set values to something other than 'NULL' |  Critical | Hive, ORC | Matt McCline | Matt McCline |
| [HIVE-14059](https://issues.apache.org/jira/browse/HIVE-14059) | Missing license headers for two files |  Minor | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14024](https://issues.apache.org/jira/browse/HIVE-14024) | setAllColumns is called incorrectly after some changes |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-14012](https://issues.apache.org/jira/browse/HIVE-14012) | some ColumnVector-s are missing ensureSize |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-13809](https://issues.apache.org/jira/browse/HIVE-13809) | Hybrid Grace Hash Join memory usage estimation didn't take into account the bloom filter size |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-13590](https://issues.apache.org/jira/browse/HIVE-13590) | Kerberized HS2 with LDAP auth enabled fails in multi-domain LDAP case |  Major | Authentication, Security | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13985](https://issues.apache.org/jira/browse/HIVE-13985) | ORC improvements for reducing the file system calls in task side |  Major | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13648](https://issues.apache.org/jira/browse/HIVE-13648) | ORC Schema Evolution doesn't support same type conversion for VARCHAR, CHAR, or DECIMAL when maxLength or precision/scale is different |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-14041](https://issues.apache.org/jira/browse/HIVE-14041) | llap scripts add hadoop and other libraries from the machine local install to the daemon classpath |  Major | llap | Siddharth Seth | Siddharth Seth |
| [HIVE-14045](https://issues.apache.org/jira/browse/HIVE-14045) | (Vectorization) Add missing case for BINARY in VectorizationContext.getNormalizedName method |  Major | Hive | Matt McCline | Matt McCline |
| [HIVE-14062](https://issues.apache.org/jira/browse/HIVE-14062) | Changes from HIVE-13502 overwritten by HIVE-13566 |  Major | Beeline | Naveen Gangam | Naveen Gangam |
| [HIVE-13744](https://issues.apache.org/jira/browse/HIVE-13744) | LLAP IO - add complex types support |  Major | . | Sergey Shelukhin | Prasanth Jayachandran |
| [HIVE-14071](https://issues.apache.org/jira/browse/HIVE-14071) | HIVE-14014 breaks non-file outputs |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14055](https://issues.apache.org/jira/browse/HIVE-14055) | directSql - getting the number of partitions is broken |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14076](https://issues.apache.org/jira/browse/HIVE-14076) | Vectorization is not supported for datatype:VOID error while inserting data into specific columns |  Major | . | Jagruti Varia | Jesus Camacho Rodriguez |
| [HIVE-14079](https://issues.apache.org/jira/browse/HIVE-14079) | Remove file, method and line number from pattern layout |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13725](https://issues.apache.org/jira/browse/HIVE-13725) | ACID: Streaming API should synchronize calls when multiple threads use the same endpoint |  Critical | HCatalog, Metastore, Transactions | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-13991](https://issues.apache.org/jira/browse/HIVE-13991) | Union All on view fail with no valid permission on underneath table |  Major | Query Planning | Yongzhi Chen | Yongzhi Chen |
| [HIVE-13997](https://issues.apache.org/jira/browse/HIVE-13997) | Insert overwrite directory doesn't overwrite existing files |  Major | Query Processor | Rui Li | Rui Li |
| [HIVE-14092](https://issues.apache.org/jira/browse/HIVE-14092) | Kryo exception when deserializing VectorFileSinkOperator |  Major | Serializers/Deserializers | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14073](https://issues.apache.org/jira/browse/HIVE-14073) | update config whiltelist for sql std authorization |  Major | Security, SQLStandardAuthorization | Thejas M Nair | Thejas M Nair |
| [HIVE-14083](https://issues.apache.org/jira/browse/HIVE-14083) | ALTER INDEX in Tez causes NullPointerException |  Minor | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14136](https://issues.apache.org/jira/browse/HIVE-14136) | LLAP ZK SecretManager should resolve \_HOST in principal |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14153](https://issues.apache.org/jira/browse/HIVE-14153) | Beeline: beeline history doesn't work on Hive2 |  Major | Beeline | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-14072](https://issues.apache.org/jira/browse/HIVE-14072) | QueryIds reused across different queries |  Critical | . | Siddharth Seth | Sergey Shelukhin |
| [HIVE-14122](https://issues.apache.org/jira/browse/HIVE-14122) | VectorMapOperator: Missing update to AbstractMapOperator::numRows |  Critical | Tez | Gopal V | Gopal V |
| [HIVE-14140](https://issues.apache.org/jira/browse/HIVE-14140) | LLAP: package codec jars |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-14090](https://issues.apache.org/jira/browse/HIVE-14090) | JDOExceptions thrown by the Metastore have their full stack trace returned to clients |  Major | . | Sahil Takiar | Sahil Takiar |
| [HIVE-14163](https://issues.apache.org/jira/browse/HIVE-14163) | LLAP: use different kerberized/unkerberized zk paths for registry |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
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
| [HIVE-14027](https://issues.apache.org/jira/browse/HIVE-14027) | NULL values produced by left outer join do not behave as NULL |  Major | Query Processor | Vaibhav Gumashta | Jesus Camacho Rodriguez |
| [HIVE-14175](https://issues.apache.org/jira/browse/HIVE-14175) | Fix creating buckets without scheme information |  Major | Query Processor | Thomas Poepping | Thomas Poepping |
| [HIVE-13704](https://issues.apache.org/jira/browse/HIVE-13704) | Don't call DistCp.execute() instead of DistCp.run() |  Critical | Hive | Harsh J | Sergio Peña |
| [HIVE-14188](https://issues.apache.org/jira/browse/HIVE-14188) | LLAPIF: wrong user field is used from the token |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14218](https://issues.apache.org/jira/browse/HIVE-14218) | LLAP: ACL validation fails if the user name is different from principal user name |  Major | . | Shraddha Sumit | Sergey Shelukhin |
| [HIVE-14111](https://issues.apache.org/jira/browse/HIVE-14111) | better concurrency handling for TezSessionState - part I |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14210](https://issues.apache.org/jira/browse/HIVE-14210) | ExecDriver should call jobclient.close() to trigger cleanup |  Major | Hive, HiveServer2 | Thomas Friedrich | Thomas Friedrich |
| [HIVE-14195](https://issues.apache.org/jira/browse/HIVE-14195) | HiveMetaStoreClient getFunction() does not throw NoSuchObjectException |  Minor | Metastore | Peter Vary | Peter Vary |
| [HIVE-14152](https://issues.apache.org/jira/browse/HIVE-14152) | datanucleus.autoStartMechanismMode should set to 'Ignored' to allow rolling downgrade |  Major | Metastore | Daniel Dai | Thejas M Nair |
| [HIVE-14223](https://issues.apache.org/jira/browse/HIVE-14223) | beeline should look for jdbc standalone jar in dist/jdbc dir instead of dist/lib |  Major | Beeline | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14172](https://issues.apache.org/jira/browse/HIVE-14172) | LLAP: force evict blocks by size to handle memory fragmentation |  Major | . | Nita Dembla | Sergey Shelukhin |
| [HIVE-14137](https://issues.apache.org/jira/browse/HIVE-14137) | Hive on Spark throws FileAlreadyExistsException for jobs with multiple empty tables |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-14215](https://issues.apache.org/jira/browse/HIVE-14215) | Displaying inconsistent CPU usage data with MR execution engine |  Minor | . | Peter Vary | Peter Vary |
| [HIVE-14207](https://issues.apache.org/jira/browse/HIVE-14207) | Strip HiveConf hidden params in webui conf |  Major | Web UI | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-14222](https://issues.apache.org/jira/browse/HIVE-14222) | PTF: Operator initialization does not clean state |  Major | PTF-Windowing | Gopal V | Wei Zheng |
| [HIVE-11402](https://issues.apache.org/jira/browse/HIVE-11402) | HS2 - add an option to disallow parallel query execution within a single Session |  Major | HiveServer2 | Thejas M Nair | Sergey Shelukhin |
| [HIVE-14144](https://issues.apache.org/jira/browse/HIVE-14144) | Permanent functions are showing up in show functions, but describe says it doesn't exist |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-14004](https://issues.apache.org/jira/browse/HIVE-14004) | Minor compaction produces ArrayIndexOutOfBoundsException: 7 in SchemaEvolution.getFileType |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14241](https://issues.apache.org/jira/browse/HIVE-14241) | Acid clashes with ConfVars.HIVEFETCHTASKCONVERSION \<\> "none" |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14187](https://issues.apache.org/jira/browse/HIVE-14187) | JDOPersistenceManager objects remain cached if MetaStoreClient#close is not called |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-14253](https://issues.apache.org/jira/browse/HIVE-14253) | Fix MinimrCliDriver test failure |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14244](https://issues.apache.org/jira/browse/HIVE-14244) | bucketmap right outer join query throws ArrayIndexOutOfBoundsException |  Major | Physical Optimizer, Tez | Jagruti Varia | Zhiyuan Yang |
| [HIVE-13191](https://issues.apache.org/jira/browse/HIVE-13191) | DummyTable map joins mix up columns between tables |  Major | . | Gopal V | Jesus Camacho Rodriguez |
| [HIVE-14236](https://issues.apache.org/jira/browse/HIVE-14236) | CTAS with UNION ALL puts the wrong stats in Tez |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14265](https://issues.apache.org/jira/browse/HIVE-14265) | Partial stats in Join operator may lead to data size estimate of 0 |  Major | Statistics | Nita Dembla | Jesus Camacho Rodriguez |
| [HIVE-13369](https://issues.apache.org/jira/browse/HIVE-13369) | AcidUtils.getAcidState() is not paying attention toValidTxnList when choosing the "best" base file |  Blocker | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14262](https://issues.apache.org/jira/browse/HIVE-14262) | Inherit writetype from partition WriteEntity for table WriteEntity |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-14242](https://issues.apache.org/jira/browse/HIVE-14242) | Backport ORC-53 to Hive |  Major | ORC | Owen O'Malley | Owen O'Malley |
| [HIVE-14282](https://issues.apache.org/jira/browse/HIVE-14282) | HCatLoader ToDate() exception with hive partition table ,partitioned by column of DATE datatype |  Major | HCatalog | Raghavender Rao Guruvannagari | Daniel Dai |
| [HIVE-14301](https://issues.apache.org/jira/browse/HIVE-14301) | insert overwrite fails for nonpartitioned tables in s3 |  Minor | Query Processor | Rajesh Balamohan | Rajesh Balamohan |
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
| [HIVE-14326](https://issues.apache.org/jira/browse/HIVE-14326) | Merging outer joins without conditions can lead to wrong results |  Critical | Parser | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14324](https://issues.apache.org/jira/browse/HIVE-14324) | ORC PPD for floats is broken |  Critical | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-10022](https://issues.apache.org/jira/browse/HIVE-10022) | Authorization checks for non existent file/directory should not be recursive |  Major | Authorization | Pankit Thapar | Sushanth Sowmyan |
| [HIVE-14330](https://issues.apache.org/jira/browse/HIVE-14330) | fix LockHandle TxnHandler.acquireLock(String key) retry logic |  Critical | Metastore, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14339](https://issues.apache.org/jira/browse/HIVE-14339) | Fix UT failure for acid\_globallimit.q |  Major | . | Wei Zheng | Wei Zheng |
| [HIVE-14205](https://issues.apache.org/jira/browse/HIVE-14205) | Hive doesn't support union type with AVRO file format |  Major | Serializers/Deserializers | Yibing Shi | Yibing Shi |
| [HIVE-14335](https://issues.apache.org/jira/browse/HIVE-14335) | TaskDisplay's return value is not getting deserialized properly |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-14296](https://issues.apache.org/jira/browse/HIVE-14296) | Session count is not decremented when HS2 clients do not shutdown cleanly. |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-14293](https://issues.apache.org/jira/browse/HIVE-14293) | PerfLogger.openScopes should be transient |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-14338](https://issues.apache.org/jira/browse/HIVE-14338) | Delete/Alter table calls failing with HiveAccessControlException |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14332](https://issues.apache.org/jira/browse/HIVE-14332) | Reduce logging from VectorMapOperator |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-14333](https://issues.apache.org/jira/browse/HIVE-14333) | ORC schema evolution from float to double changes precision and breaks filters |  Critical | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14310](https://issues.apache.org/jira/browse/HIVE-14310) | ORC schema evolution should not completely disable PPD |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14349](https://issues.apache.org/jira/browse/HIVE-14349) | Vectorization: LIKE should anchor the regexes |  Major | UDF, Vectorization | Gopal V | Gopal V |
| [HIVE-14359](https://issues.apache.org/jira/browse/HIVE-14359) | Hive on Spark might fail in HS2 with LDAP authentication in a kerberized cluster |  Major | Spark | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14355](https://issues.apache.org/jira/browse/HIVE-14355) | Schema evolution for ORC in llap is broken for int to string conversion |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14363](https://issues.apache.org/jira/browse/HIVE-14363) | bucketmap inner join query fails due to NullPointerException in some cases |  Major | . | Jagruti Varia | Hari Sankar Sivarama Subramaniyan |
| [HIVE-14381](https://issues.apache.org/jira/browse/HIVE-14381) | Handle null value in WindowingTableFunction.WindowingIterator.next() |  Major | PTF-Windowing | Wei Zheng | Wei Zheng |
| [HIVE-14357](https://issues.apache.org/jira/browse/HIVE-14357) | TestDbTxnManager2#testLocksInSubquery failing in branch-2.1 |  Major | . | Rajat Khandelwal | Sergey Shelukhin |
| [HIVE-14322](https://issues.apache.org/jira/browse/HIVE-14322) | Postgres db issues after Datanucleus 4.x upgrade |  Major | . | Thejas M Nair | Sergey Shelukhin |
| [HIVE-14366](https://issues.apache.org/jira/browse/HIVE-14366) | Conversion of a Non-ACID table to an ACID table produces non-unique primary keys |  Blocker | Transactions | Saket Saurabh | Saket Saurabh |
| [HIVE-14350](https://issues.apache.org/jira/browse/HIVE-14350) | Aborted txns cause false positive "Not enough history available..." msgs |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14377](https://issues.apache.org/jira/browse/HIVE-14377) | LLAP IO: issue with how estimate cache removes unneeded buffers |  Major | . | Gopal V | Sergey Shelukhin |
| [HIVE-14395](https://issues.apache.org/jira/browse/HIVE-14395) | Add the missing data files to Avro union tests (HIVE-14205 addendum) |  Trivial | Test | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14400](https://issues.apache.org/jira/browse/HIVE-14400) | Handle concurrent insert with dynamic partition |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-14403](https://issues.apache.org/jira/browse/HIVE-14403) | LLAP node specific preemption will only preempt once on a node per AM |  Critical | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14408](https://issues.apache.org/jira/browse/HIVE-14408) | thread safety issue in fast hashtable |  Major | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-14397](https://issues.apache.org/jira/browse/HIVE-14397) | Queries ran after reopening of tez session launches additional sessions |  Critical | Tez | Takahiko Saito | Prasanth Jayachandran |
| [HIVE-14414](https://issues.apache.org/jira/browse/HIVE-14414) | Fix TestHiveMetaStoreTxns UTs |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14402](https://issues.apache.org/jira/browse/HIVE-14402) | Vectorization: Fix Mapjoin overflow deserialization |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-14393](https://issues.apache.org/jira/browse/HIVE-14393) | Tuple in list feature fails if there's only 1 tuple in the list |  Major | Parser | Carter Shanklin | Pengcheng Xiong |
| [HIVE-14424](https://issues.apache.org/jira/browse/HIVE-14424) | Address CLIRestoreTest failure |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-14394](https://issues.apache.org/jira/browse/HIVE-14394) | Reduce excessive INFO level logging |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-14447](https://issues.apache.org/jira/browse/HIVE-14447) | Set HIVE\_TRANSACTIONAL\_TABLE\_SCAN to the correct job conf for FetchOperator |  Major | Hive, Transactions | Wei Zheng | Prasanth Jayachandran |
| [HIVE-14245](https://issues.apache.org/jira/browse/HIVE-14245) | NoClassDefFoundError when starting LLAP daemon |  Minor | llap | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14399](https://issues.apache.org/jira/browse/HIVE-14399) | Fix test flakiness of org.apache.hive.hcatalog.listener.TestDbNotificationListener.cleanupNotifs |  Major | HCatalog | Daniel Dai | Daniel Dai |
| [HIVE-14439](https://issues.apache.org/jira/browse/HIVE-14439) | LlapTaskScheduler should try scheduling tasks when a node is disabled |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14457](https://issues.apache.org/jira/browse/HIVE-14457) | Partitions in encryption zone are still trashed though an exception is returned |  Major | Encryption, Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14513](https://issues.apache.org/jira/browse/HIVE-14513) | Enhance custom query feature in LDAP atn to support resultset of ldap groups |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-14342](https://issues.apache.org/jira/browse/HIVE-14342) | Beeline output is garbled when executed from a remote shell |  Major | Beeline | Naveen Gangam | Naveen Gangam |
| [HIVE-14433](https://issues.apache.org/jira/browse/HIVE-14433) | refactor LLAP plan cache avoidance and fix issue in merge processor |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14479](https://issues.apache.org/jira/browse/HIVE-14479) | Add some join tests for acid table |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-14448](https://issues.apache.org/jira/browse/HIVE-14448) | Queries with predicate fail when ETL split strategy is chosen for ACID tables |  Critical | Transactions | Saket Saurabh | Matt McCline |
| [HIVE-14519](https://issues.apache.org/jira/browse/HIVE-14519) | Multi insert query bug |  Major | Logical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-14483](https://issues.apache.org/jira/browse/HIVE-14483) |  java.lang.ArrayIndexOutOfBoundsException org.apache.orc.impl.TreeReaderFactory$BytesColumnVectorUtil.commonReadByteArrays |  Critical | ORC | Sergey Zadoroshnyak | Sergey Zadoroshnyak |
| [HIVE-14480](https://issues.apache.org/jira/browse/HIVE-14480) | ORC ETLSplitStrategy should use thread pool when computing splits |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14566](https://issues.apache.org/jira/browse/HIVE-14566) | LLAP IO reads timestamp wrongly |  Critical | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14563](https://issues.apache.org/jira/browse/HIVE-14563) | StatsOptimizer treats NULL in a wrong way |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14435](https://issues.apache.org/jira/browse/HIVE-14435) | Vectorization: missed vectorization for const varchar() |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-13874](https://issues.apache.org/jira/browse/HIVE-13874) | Tighten up EOF checking in Fast DeserializeRead classes; display better exception information; add new Unit Tests |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-14600](https://issues.apache.org/jira/browse/HIVE-14600) | LLAP zookeeper registry failures do not fail the daemon |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14446](https://issues.apache.org/jira/browse/HIVE-14446) | Add switch to control BloomFilter in Hybrid grace hash join and make the FPP adjustable |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-14619](https://issues.apache.org/jira/browse/HIVE-14619) | CASE folding can produce wrong expression |  Critical | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14621](https://issues.apache.org/jira/browse/HIVE-14621) | LLAP: memory.mode = none has NPE |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14418](https://issues.apache.org/jira/browse/HIVE-14418) | Hive config validation prevents unsetting the settings |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13610](https://issues.apache.org/jira/browse/HIVE-13610) | Hive exec module won't compile with IBM JDK |  Major | . | Pan Yuxuan | Pan Yuxuan |
| [HIVE-14674](https://issues.apache.org/jira/browse/HIVE-14674) |  Incorrect syntax near the keyword 'with' using MS SQL Server |  Critical | Metastore, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14652](https://issues.apache.org/jira/browse/HIVE-14652) | incorrect results for not in on partition columns |  Blocker | . | stephen sprague | Sergey Shelukhin |
| [HIVE-14538](https://issues.apache.org/jira/browse/HIVE-14538) | beeline throws exceptions with parsing hive config when using !sh statement |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-14530](https://issues.apache.org/jira/browse/HIVE-14530) | Union All query returns incorrect results |  Major | Query Planning | wenhe li | Jesus Camacho Rodriguez |
| [HIVE-14697](https://issues.apache.org/jira/browse/HIVE-14697) | Can not access kerberized HS2 Web UI |  Major | Security, Web UI | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14608](https://issues.apache.org/jira/browse/HIVE-14608) | LLAP: slow scheduling due to LlapTaskScheduler not removing nodes on kill |  Critical | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14591](https://issues.apache.org/jira/browse/HIVE-14591) | HS2 is shut down unexpectedly during the startup time |  Major | . | Tao Li | Tao Li |
| [HIVE-14715](https://issues.apache.org/jira/browse/HIVE-14715) | Hive throws NumberFormatException with query with Null value |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-14702](https://issues.apache.org/jira/browse/HIVE-14702) | LLAPIF: after a long period of inactivity, signing key may be removed from local store |  Major | . | Jason Dere | Sergey Shelukhin |
| [HIVE-14743](https://issues.apache.org/jira/browse/HIVE-14743) | ArrayIndexOutOfBoundsException - HBASE-backed views' query with JOINs |  Major | HBase Handler | Yongzhi Chen | Yongzhi Chen |
| [HIVE-14764](https://issues.apache.org/jira/browse/HIVE-14764) | Enabling "hive.metastore.metrics.enabled" throws OOM in HiveMetastore |  Minor | Metastore | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14779](https://issues.apache.org/jira/browse/HIVE-14779) | make DbTxnManager.HeartbeaterThread a daemon |  Minor | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14098](https://issues.apache.org/jira/browse/HIVE-14098) | Logging task properties, and environment variables might contain passwords |  Major | HiveServer2, Logging, Spark | Peter Vary | Peter Vary |
| [HIVE-14766](https://issues.apache.org/jira/browse/HIVE-14766) | ObjectStore.initialize() needs retry mechanisms in case of connection failures |  Major | Metastore | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-14814](https://issues.apache.org/jira/browse/HIVE-14814) | metastoreClient is used directly in Hive cause NPE |  Major | . | Dileep Kumar Chiguruvada | Prasanth Jayachandran |
| [HIVE-14774](https://issues.apache.org/jira/browse/HIVE-14774) | Canceling query using Ctrl-C in beeline might lead to stale locks |  Major | Locking | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14426](https://issues.apache.org/jira/browse/HIVE-14426) | Extensive logging on info level in WebHCat |  Minor | . | Peter Vary | Peter Vary |
| [HIVE-9423](https://issues.apache.org/jira/browse/HIVE-9423) | HiveServer2: Provide the user with different error messages depending on the Thrift client exception code |  Major | HiveServer2 | Vaibhav Gumashta | Peter Vary |
| [HIVE-14889](https://issues.apache.org/jira/browse/HIVE-14889) | Beeline leaks sensitive environment variables of HiveServer2 when you type set; |  Major | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-14799](https://issues.apache.org/jira/browse/HIVE-14799) | Query operation are not thread safe during its cancellation |  Major | HiveServer2 | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14959](https://issues.apache.org/jira/browse/HIVE-14959) | Fix DISTINCT with windowing when CBO is enabled/disabled |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15022](https://issues.apache.org/jira/browse/HIVE-15022) | Missing hs2-connection-timed-out in BeeLine.properties |  Major | . | Peter Vary | Peter Vary |
| [HIVE-15061](https://issues.apache.org/jira/browse/HIVE-15061) | Metastore types are sometimes case sensitive |  Major | API | Thomas Tauber-Marshall | Chaoyu Tang |
| [HIVE-15099](https://issues.apache.org/jira/browse/HIVE-15099) | PTFOperator.PTFInvocation didn't properly reset the input partition |  Major | Hive, PTF-Windowing | Wei Zheng | Wei Zheng |
| [HIVE-15123](https://issues.apache.org/jira/browse/HIVE-15123) | LLAP UI: The UI should work even if the cache is disabled |  Major | llap, Web UI | Gopal V | Gopal V |
| [HIVE-15002](https://issues.apache.org/jira/browse/HIVE-15002) | HiveSessionImpl#executeStatementInternal may leave locks in an inconsistent state |  Major | HiveServer2 | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-15137](https://issues.apache.org/jira/browse/HIVE-15137) | metastore add partitions background thread should use current username |  Major | Metastore | Thejas M Nair | Daniel Dai |
| [HIVE-15090](https://issues.apache.org/jira/browse/HIVE-15090) | Temporary DB failure can stop ExpiredTokenRemover thread |  Major | Metastore | Peter Vary | Peter Vary |
| [HIVE-13539](https://issues.apache.org/jira/browse/HIVE-13539) | HiveHFileOutputFormat searching the wrong directory for HFiles |  Blocker | HBase Handler | Tim Robertson | Chaoyu Tang |
| [HIVE-15181](https://issues.apache.org/jira/browse/HIVE-15181) | buildQueryWithINClause didn't properly handle multiples of ConfVars.METASTORE\_DIRECT\_SQL\_MAX\_ELEMENTS\_IN\_CLAUSE |  Critical | Hive, Transactions | Wei Zheng | Wei Zheng |
| [HIVE-15295](https://issues.apache.org/jira/browse/HIVE-15295) | Fix HCatalog javadoc generation with Java 8 |  Minor | Documentation, HCatalog | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15306](https://issues.apache.org/jira/browse/HIVE-15306) | Change NOTICE file to account for JSON license components |  Major | . | Jesus Camacho Rodriguez | Prasanth Jayachandran |
| [HIVE-14798](https://issues.apache.org/jira/browse/HIVE-14798) | MSCK REPAIR TABLE throws null pointer exception |  Major | Metastore | Anbu Cheeralan |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-14212](https://issues.apache.org/jira/browse/HIVE-14212) | hbase\_queries result out of date on branch-2.1 |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14316](https://issues.apache.org/jira/browse/HIVE-14316) | TestLlapTokenChecker.testCheckPermissions, testGetToken fail |  Major | . | Siddharth Seth | Sergey Shelukhin |
| [HIVE-14713](https://issues.apache.org/jira/browse/HIVE-14713) | LDAP Authentication Provider should be covered with unit tests |  Major | Authentication, Tests | Illya Yalovyy | Illya Yalovyy |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13587](https://issues.apache.org/jira/browse/HIVE-13587) | Set Hive pom to use Hadoop 2.6.1 |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13549](https://issues.apache.org/jira/browse/HIVE-13549) | Remove jdk version specific out files from Hive2 |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13409](https://issues.apache.org/jira/browse/HIVE-13409) | Fix JDK8 test failures related to COLUMN\_STATS\_ACCURATE |  Major | Tests | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13860](https://issues.apache.org/jira/browse/HIVE-13860) | Fix more json related JDK8 test failures |  Major | Test | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13798](https://issues.apache.org/jira/browse/HIVE-13798) | Fix the unit test failure org.apache.hadoop.hive.cli.TestCliDriver.testCliDriver\_ivyDownload |  Major | . | Aihua Xu | Aihua Xu |
| [HIVE-14028](https://issues.apache.org/jira/browse/HIVE-14028) | stats is not updated |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13803](https://issues.apache.org/jira/browse/HIVE-13803) | More aggressive inference of transitive predicates for inner joins |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13901](https://issues.apache.org/jira/browse/HIVE-13901) | Hivemetastore add partitions can be slow depending on filesystems |  Minor | Metastore | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-13965](https://issues.apache.org/jira/browse/HIVE-13965) | Empty resultset run into Exception when using Thrift Binary Serde |  Major | HiveServer2 | Ziyang Zhao | Ziyang Zhao |
| [HIVE-14191](https://issues.apache.org/jira/browse/HIVE-14191) | bump a new api version for ThriftJDBCBinarySerde changes |  Major | HiveServer2, JDBC | Ziyang Zhao | Ziyang Zhao |
| [HIVE-14277](https://issues.apache.org/jira/browse/HIVE-14277) | Disable StatsOptimizer for all ACID tables |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14291](https://issues.apache.org/jira/browse/HIVE-14291) | count(\*) on a table written by hcatstorer returns incorrect result |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13723](https://issues.apache.org/jira/browse/HIVE-13723) | Executing join query on type Float using Thrift Serde will result in Float cast to Double error |  Critical | HiveServer2, JDBC, Serializers/Deserializers | Ziyang Zhao | Ziyang Zhao |
| [HIVE-14421](https://issues.apache.org/jira/browse/HIVE-14421) | FS.deleteOnExit holds references to \_tmp\_space.db files |  Major | HiveServer2 | Siddharth Seth | Siddharth Seth |
| [HIVE-14276](https://issues.apache.org/jira/browse/HIVE-14276) | Update protocol version in TOpenSessionReq and TOpenSessionResp |  Major | HiveServer2, JDBC | Ziyang Zhao | Ziyang Zhao |
| [HIVE-14428](https://issues.apache.org/jira/browse/HIVE-14428) | HadoopMetrics2Reporter leaks memory if the metrics sink is not configured correctly |  Critical | HiveServer2 | Siddharth Seth | Thejas M Nair |
| [HIVE-14039](https://issues.apache.org/jira/browse/HIVE-14039) | HiveServer2: Make the usage of server with JDBC thirft serde enabled, backward compatible for older clients |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Ziyang Zhao |
| [HIVE-13593](https://issues.apache.org/jira/browse/HIVE-13593) | HiveServer2: Performance instrumentation for HIVE-12049 (serializing thrift ResultSets in tasks) |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Ziyang Zhao |
| [HIVE-14912](https://issues.apache.org/jira/browse/HIVE-14912) | Fix the test failures for 2.1.1 caused by HIVE-13409 |  Major | Test | Aihua Xu | Aihua Xu |
| [HIVE-14957](https://issues.apache.org/jira/browse/HIVE-14957) | HiveSortLimitPullUpConstantsRule misses branches when parent operator is Union |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15094](https://issues.apache.org/jira/browse/HIVE-15094) | Fix test failures for 2.1.1 regarding schema evolution with DECIMAL types |  Major | Hive | Sergio Peña | Jesus Camacho Rodriguez |
| [HIVE-15154](https://issues.apache.org/jira/browse/HIVE-15154) | Fix rest of q test file changes in branch-2.1 |  Minor | Test | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14902](https://issues.apache.org/jira/browse/HIVE-14902) | HiveServer2: Cleanup code which checks for ThriftJDBCSerde usage |  Major | HiveServer2, JDBC, ODBC | Vaibhav Gumashta | Ziyang Zhao |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-14202](https://issues.apache.org/jira/browse/HIVE-14202) | Change tez version used to 0.8.4 |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-15248](https://issues.apache.org/jira/browse/HIVE-15248) | Add Apache header license to TestCustomPartitionVertex |  Major | Hive | Sergio Peña | Sergio Peña |


