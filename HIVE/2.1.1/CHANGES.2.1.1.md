
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

## Release 2.1.1 - Unreleased (as of 2016-07-29)



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


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
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
| [HIVE-14163](https://issues.apache.org/jira/browse/HIVE-14163) | LLAP: use different kerberized/unkerberized zk paths for registry |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14132](https://issues.apache.org/jira/browse/HIVE-14132) | Don't fail config validation for removed configs |  Major | Configuration | Ashutosh Chauhan | Ashutosh Chauhan |
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
| [HIVE-14207](https://issues.apache.org/jira/browse/HIVE-14207) | Strip HiveConf hidden params in webui conf |  Major | Web UI | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-14222](https://issues.apache.org/jira/browse/HIVE-14222) | PTF: Operator initialization does not clean state |  Major | PTF-Windowing | Gopal V | Wei Zheng |
| [HIVE-11402](https://issues.apache.org/jira/browse/HIVE-11402) | HS2 - add an option to disallow parallel query execution within a single Session |  Major | HiveServer2 | Thejas M Nair | Sergey Shelukhin |
| [HIVE-14144](https://issues.apache.org/jira/browse/HIVE-14144) | Permanent functions are showing up in show functions, but describe says it doesn't exist |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-14004](https://issues.apache.org/jira/browse/HIVE-14004) | Minor compaction produces ArrayIndexOutOfBoundsException: 7 in SchemaEvolution.getFileType |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14241](https://issues.apache.org/jira/browse/HIVE-14241) | Acid clashes with ConfVars.HIVEFETCHTASKCONVERSION \<\> "none" |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
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
| [HIVE-14293](https://issues.apache.org/jira/browse/HIVE-14293) | PerfLogger.openScopes should be transient |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-14338](https://issues.apache.org/jira/browse/HIVE-14338) | Delete/Alter table calls failing with HiveAccessControlException |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14332](https://issues.apache.org/jira/browse/HIVE-14332) | Reduce logging from VectorMapOperator |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-14310](https://issues.apache.org/jira/browse/HIVE-14310) | ORC schema evolution should not completely disable PPD |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14349](https://issues.apache.org/jira/browse/HIVE-14349) | Vectorization: LIKE should anchor the regexes |  Major | UDF, Vectorization | Gopal V | Gopal V |
| [HIVE-14359](https://issues.apache.org/jira/browse/HIVE-14359) | Hive on Spark might fail in HS2 with LDAP authentication in a kerberized cluster |  Major | . | Chaoyu Tang | Chaoyu Tang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-14212](https://issues.apache.org/jira/browse/HIVE-14212) | hbase\_queries result out of date on branch-2.1 |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14316](https://issues.apache.org/jira/browse/HIVE-14316) | TestLlapTokenChecker.testCheckPermissions, testGetToken fail |  Major | . | Siddharth Seth | Sergey Shelukhin |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-14028](https://issues.apache.org/jira/browse/HIVE-14028) | stats is not updated |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13803](https://issues.apache.org/jira/browse/HIVE-13803) | More aggressive inference of transitive predicates for inner joins |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13901](https://issues.apache.org/jira/browse/HIVE-13901) | Hivemetastore add partitions can be slow depending on filesystems |  Minor | Metastore | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-13965](https://issues.apache.org/jira/browse/HIVE-13965) | Empty resultset run into Exception when using Thrift Binary Serde |  Major | HiveServer2 | Ziyang Zhao | Ziyang Zhao |
| [HIVE-14191](https://issues.apache.org/jira/browse/HIVE-14191) | bump a new api version for ThriftJDBCBinarySerde changes |  Major | HiveServer2, JDBC | Ziyang Zhao | Ziyang Zhao |
| [HIVE-14277](https://issues.apache.org/jira/browse/HIVE-14277) | Disable StatsOptimizer for all ACID tables |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14291](https://issues.apache.org/jira/browse/HIVE-14291) | count(\*) on a table written by hcatstorer returns incorrect result |  Major | . | Pengcheng Xiong | Pengcheng Xiong |


