
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
# Changelog

## Release 1.2.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-6617](https://issues.apache.org/jira/browse/HIVE-6617) | Reduce ambiguity in grammar |  Major | Parser | Ashutosh Chauhan | Pengcheng Xiong |
| [HIVE-3454](https://issues.apache.org/jira/browse/HIVE-3454) | Problem with CAST(BIGINT as TIMESTAMP) |  Major | Types, UDF | Ryan Harris | Aihua Xu |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10099](https://issues.apache.org/jira/browse/HIVE-10099) | Enable constant folding for Decimal |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-10038](https://issues.apache.org/jira/browse/HIVE-10038) | Add Calcite's ProjectMergeRule. |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9780](https://issues.apache.org/jira/browse/HIVE-9780) | Add another level of explain for RDBMS audience |  Minor | Diagnosability | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-9302](https://issues.apache.org/jira/browse/HIVE-9302) | Beeline add commands to register local jdbc driver names and jars |  Major | . | Brock Noland | Ferdinand Xu |
| [HIVE-9277](https://issues.apache.org/jira/browse/HIVE-9277) | Hybrid Hybrid Grace Hash Join |  Major | Physical Optimizer | Wei Zheng | Wei Zheng |
| [HIVE-9188](https://issues.apache.org/jira/browse/HIVE-9188) | BloomFilter support in ORC |  Major | File Formats | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9039](https://issues.apache.org/jira/browse/HIVE-9039) | Support Union Distinct |  Major | Query Planning | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-7998](https://issues.apache.org/jira/browse/HIVE-7998) | Enhance JDBC Driver to not require class specification |  Trivial | JDBC | Prateek Rungta | Alexander Pivovarov |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10304](https://issues.apache.org/jira/browse/HIVE-10304) | Add deprecation message to HiveCLI |  Major | CLI | Szehon Ho | Szehon Ho |
| [HIVE-10223](https://issues.apache.org/jira/browse/HIVE-10223) | Consolidate several redundant FileSystem API calls. |  Major | . | Chris Nauroth | Chris Nauroth |
| [HIVE-10216](https://issues.apache.org/jira/browse/HIVE-10216) | log hive cli classpath at debug level |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-10214](https://issues.apache.org/jira/browse/HIVE-10214) | log metastore call timing information aggregated at query level |  Major | Metastore | Thejas M Nair | Thejas M Nair |
| [HIVE-10206](https://issues.apache.org/jira/browse/HIVE-10206) | Improve Alter Table to not initialize Serde unnecessarily |  Minor | Serializers/Deserializers | Szehon Ho | Szehon Ho |
| [HIVE-10177](https://issues.apache.org/jira/browse/HIVE-10177) | Enable constant folding for char & varchar |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-10160](https://issues.apache.org/jira/browse/HIVE-10160) | Give a warning when grouping or ordering by a constant column |  Minor | Query Processor | Lefty Leverenz | Yongzhi Chen |
| [HIVE-10146](https://issues.apache.org/jira/browse/HIVE-10146) | Not count session as idle if query is running |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10119](https://issues.apache.org/jira/browse/HIVE-10119) | Allow Log verbosity to be set in hiveserver2 session |  Major | HiveServer2 | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10114](https://issues.apache.org/jira/browse/HIVE-10114) | Split strategies for ORC |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-10072](https://issues.apache.org/jira/browse/HIVE-10072) | Add vectorization support for Hybrid Grace Hash Join |  Major | . | Wei Zheng | Wei Zheng |
| [HIVE-10027](https://issues.apache.org/jira/browse/HIVE-10027) | Use descriptions from Avro schema files in column comments |  Minor | Metastore | Jeremy Beard | Chaoyu Tang |
| [HIVE-10007](https://issues.apache.org/jira/browse/HIVE-10007) | Support qualified table name in analyze table compute statistics for columns |  Major | Query Processor, Statistics | Chaoyu Tang | Chaoyu Tang |
| [HIVE-9981](https://issues.apache.org/jira/browse/HIVE-9981) | Avoid throwing many exceptions when attempting to create new hdfs encryption shim |  Major | Encryption | Sergio Peña | Sergio Peña |
| [HIVE-9914](https://issues.apache.org/jira/browse/HIVE-9914) | Post success comments on Jira from Jenkins metastore upgrades scripts |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-9909](https://issues.apache.org/jira/browse/HIVE-9909) | Specify hive branch to use on jenkins hms tests |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-9870](https://issues.apache.org/jira/browse/HIVE-9870) | Add JvmPauseMonitor threads to HMS and HS2 daemons |  Minor | HiveServer2, Metastore | Harsh J | Harsh J |
| [HIVE-9859](https://issues.apache.org/jira/browse/HIVE-9859) | Create bitwise left/right shift UDFs |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9858](https://issues.apache.org/jira/browse/HIVE-9858) | Create cbrt (cube root) UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9857](https://issues.apache.org/jira/browse/HIVE-9857) | Create Factorial UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9800](https://issues.apache.org/jira/browse/HIVE-9800) | Create scripts to do metastore upgrade tests on Jenkins |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-9793](https://issues.apache.org/jira/browse/HIVE-9793) | Remove hard coded paths from cli driver tests |  Major | Tests | Brock Noland | Brock Noland |
| [HIVE-9788](https://issues.apache.org/jira/browse/HIVE-9788) | Make double quote optional in tsv/csv/dsv output |  Major | . | Brock Noland | Ferdinand Xu |
| [HIVE-9766](https://issues.apache.org/jira/browse/HIVE-9766) | Add JavaConstantXXXObjectInspector |  Major | Serializers/Deserializers | Daniel Dai | Daniel Dai |
| [HIVE-9744](https://issues.apache.org/jira/browse/HIVE-9744) | Move common arguments validation and value extraction code to GenericUDF |  Minor | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9738](https://issues.apache.org/jira/browse/HIVE-9738) | create SOUNDEX udf |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9709](https://issues.apache.org/jira/browse/HIVE-9709) | Hive should support replaying cookie from JDBC driver for beeline |  Major | HiveServer2, JDBC | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-9699](https://issues.apache.org/jira/browse/HIVE-9699) | Extend PTFs to provide referenced columns for CP |  Trivial | PTF-Windowing | Navis | Navis |
| [HIVE-9673](https://issues.apache.org/jira/browse/HIVE-9673) | Set operationhandle in ATS entities for lookups |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-9664](https://issues.apache.org/jira/browse/HIVE-9664) | Hive "add jar" command should be able to download and add jars from a repository |  Major | . | Anant Nag | Anant Nag |
| [HIVE-9618](https://issues.apache.org/jira/browse/HIVE-9618) | Deduplicate RS keys for ptf/windowing |  Trivial | PTF-Windowing | Navis | Navis |
| [HIVE-9607](https://issues.apache.org/jira/browse/HIVE-9607) | Remove unnecessary attach-jdbc-driver execution from package/pom.xml |  Minor | Build Infrastructure | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9596](https://issues.apache.org/jira/browse/HIVE-9596) | move standard getDisplayString impl to GenericUDF |  Minor | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9594](https://issues.apache.org/jira/browse/HIVE-9594) | Add qtests for LAST\_DAY udf |  Minor | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9590](https://issues.apache.org/jira/browse/HIVE-9590) | add qtests for ADD\_MONTHS UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9564](https://issues.apache.org/jira/browse/HIVE-9564) | Extend HIVE-9298 for JsonSerDe |  Major | Serializers/Deserializers | Jason Dere | Jason Dere |
| [HIVE-9556](https://issues.apache.org/jira/browse/HIVE-9556) | create UDF to calculate the Levenshtein distance between two strings |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9521](https://issues.apache.org/jira/browse/HIVE-9521) | Drop support for Java6 |  Major | . | Nick Dimiduk | Nick Dimiduk |
| [HIVE-9518](https://issues.apache.org/jira/browse/HIVE-9518) | Implement MONTHS\_BETWEEN aligned with Oracle one |  Major | UDF | Xiaobing Zhou | Alexander Pivovarov |
| [HIVE-9500](https://issues.apache.org/jira/browse/HIVE-9500) | Support nested structs over 24 levels. |  Major | . | Aihua Xu | Aihua Xu |
| [HIVE-9480](https://issues.apache.org/jira/browse/HIVE-9480) | Build UDF TRUNC to implement FIRST\_DAY as compared with LAST\_DAY |  Major | UDF | Xiaobing Zhou | Xiaobing Zhou |
| [HIVE-9470](https://issues.apache.org/jira/browse/HIVE-9470) | Use a generic writable object to run ColumnaStorageBench write/read tests |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-9298](https://issues.apache.org/jira/browse/HIVE-9298) | Support reading alternate timestamp formats |  Major | Serializers/Deserializers | Jason Dere | Jason Dere |
| [HIVE-9143](https://issues.apache.org/jira/browse/HIVE-9143) | select user(), current\_user() |  Minor | . | Hari Sekhon | Alexander Pivovarov |
| [HIVE-9138](https://issues.apache.org/jira/browse/HIVE-9138) | Add some explain to PTF operator |  Trivial | Diagnosability, Query Processor | Navis | Navis |
| [HIVE-7175](https://issues.apache.org/jira/browse/HIVE-7175) | Provide password file option to beeline |  Major | CLI, Clients | Robert Justice | Dr. Wendell Urth |
| [HIVE-5472](https://issues.apache.org/jira/browse/HIVE-5472) | support a simple scalar which returns the current timestamp |  Major | . | N Campbell | Jason Dere |
| [HIVE-2573](https://issues.apache.org/jira/browse/HIVE-2573) | Create per-session function registry |  Minor | Server Infrastructure | Navis | Navis |
| [HIVE-1575](https://issues.apache.org/jira/browse/HIVE-1575) | get\_json\_object does not support JSON array at the root level |  Major | UDF | Steven Wong | Alexander Pivovarov |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10309](https://issues.apache.org/jira/browse/HIVE-10309) | TestJdbcWithMiniHS2.java broken because of the removal of hive.server2.thrift.http.max.worker.threads |  Major | HiveServer2, JDBC | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10305](https://issues.apache.org/jira/browse/HIVE-10305) | TestOrcFile has a mistake that makes metadata test ineffective |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-10285](https://issues.apache.org/jira/browse/HIVE-10285) | Incorrect endFunction call in HiveMetaStore |  Minor | Logging, Metastore | Nezih Yigitbasi | Nezih Yigitbasi |
| [HIVE-10274](https://issues.apache.org/jira/browse/HIVE-10274) | Send context and description to tez via dag info |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-10272](https://issues.apache.org/jira/browse/HIVE-10272) | Some HCat tests fail under windows |  Minor | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-10271](https://issues.apache.org/jira/browse/HIVE-10271) | remove hive.server2.thrift.http.min/max.worker.threads properties |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10267](https://issues.apache.org/jira/browse/HIVE-10267) | HIVE-9664 makes hive depend on ivysettings.xml : trivial breakage fix |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-10265](https://issues.apache.org/jira/browse/HIVE-10265) | Hive CLI crashes on != inequality |  Major | CLI | Szehon Ho | Szehon Ho |
| [HIVE-10231](https://issues.apache.org/jira/browse/HIVE-10231) | Compute partition column stats fails if partition col type is date |  Major | Statistics | Chaoyu Tang | Chaoyu Tang |
| [HIVE-10229](https://issues.apache.org/jira/browse/HIVE-10229) | Set conf and processor context in the constructor instead of init |  Major | . | Sergey Shelukhin | Siddharth Seth |
| [HIVE-10225](https://issues.apache.org/jira/browse/HIVE-10225) | CLI JLine does not flush history on quit/Ctrl-C |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-10208](https://issues.apache.org/jira/browse/HIVE-10208) | templeton.hive.extra.files should be commented out in webhcat-default.xml |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-10202](https://issues.apache.org/jira/browse/HIVE-10202) | Beeline outputs prompt+query on standard output when used in non-interactive mode |  Major | . | Sergio Peña | Naveen Gangam |
| [HIVE-10186](https://issues.apache.org/jira/browse/HIVE-10186) | Hive does not log Tez diagnostics on errors |  Major | . | Hitesh Shah | Gunther Hagleitner |
| [HIVE-10178](https://issues.apache.org/jira/browse/HIVE-10178) | DateWritable incorrectly calculates daysSinceEpoch for negative Unix time |  Major | Types | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10172](https://issues.apache.org/jira/browse/HIVE-10172) | Fix performance regression caused by HIVE-8122 for ORC |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-10167](https://issues.apache.org/jira/browse/HIVE-10167) | HS2 logs the server started only before the server is shut down |  Trivial | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10152](https://issues.apache.org/jira/browse/HIVE-10152) | ErrorMsg.formatToErrorMsgMap has bad regex |  Major | Logging | Eugene Koifman | Eugene Koifman |
| [HIVE-10150](https://issues.apache.org/jira/browse/HIVE-10150) | delete from acidTbl where a in(select a from nonAcidOrcTbl) fails |  Major | Query Planning, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-10148](https://issues.apache.org/jira/browse/HIVE-10148) | update of bucketing column should not be allowed |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-10145](https://issues.apache.org/jira/browse/HIVE-10145) | set Tez ACLs appropriately in hive |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-10136](https://issues.apache.org/jira/browse/HIVE-10136) | BaseWork.vectorMode hides AbstractOperatorDesc.vectorMode |  Minor | Query Planning | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10128](https://issues.apache.org/jira/browse/HIVE-10128) | BytesBytesMultiHashMap does not allow concurrent read-only access |  Major | . | Gopal V | Sergey Shelukhin |
| [HIVE-10123](https://issues.apache.org/jira/browse/HIVE-10123) | Hybrid grace Hash join : Use estimate key count from stats to initialize BytesBytesMultiHashMap |  Major | Hive | Mostafa Mokhtar | Mostafa Mokhtar |
| [HIVE-10122](https://issues.apache.org/jira/browse/HIVE-10122) | Hive metastore filter-by-expression is broken for non-partition expressions |  Major | Metastore | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-10108](https://issues.apache.org/jira/browse/HIVE-10108) | Index#getIndexTableName() returns db.index\_table\_name |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-10106](https://issues.apache.org/jira/browse/HIVE-10106) | Regression : Dynamic partition pruning not working after HIVE-9976 |  Major | Hive | Mostafa Mokhtar | Siddharth Seth |
| [HIVE-10098](https://issues.apache.org/jira/browse/HIVE-10098) | HS2 local task for map join fails in KMS encrypted cluster |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-10095](https://issues.apache.org/jira/browse/HIVE-10095) | format\_number udf throws NPE |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10093](https://issues.apache.org/jira/browse/HIVE-10093) | Unnecessary HMSHandler initialization for default MemoryTokenStore on HS2 |  Minor | . | Szehon Ho | Aihua Xu |
| [HIVE-10087](https://issues.apache.org/jira/browse/HIVE-10087) | Beeline's --silent option should suppress query from being echoed when running with -f option |  Minor | Beeline | Naveen Gangam | Naveen Gangam |
| [HIVE-10086](https://issues.apache.org/jira/browse/HIVE-10086) | Hive throws error when accessing Parquet file schema using field name match |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-10085](https://issues.apache.org/jira/browse/HIVE-10085) | Lateral view on top of a view throws RuntimeException |  Major | Logical Optimizer, Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-10083](https://issues.apache.org/jira/browse/HIVE-10083) | SMBJoin fails in case one table is uninitialized |  Minor | Logical Optimizer | Alain Schröder | Na Yang |
| [HIVE-10078](https://issues.apache.org/jira/browse/HIVE-10078) | Optionally allow logging of records processed in fixed intervals |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-10074](https://issues.apache.org/jira/browse/HIVE-10074) | Ability to run HCat Client Unit tests in a system test setting |  Major | Tests | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-10066](https://issues.apache.org/jira/browse/HIVE-10066) | Hive on Tez job submission through WebHCat doesn't ship Tez artifacts |  Major | Tez, WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-10059](https://issues.apache.org/jira/browse/HIVE-10059) | Make udaf\_percentile\_approx\_23.q test more stable |  Major | Tests | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10050](https://issues.apache.org/jira/browse/HIVE-10050) | Support overriding memory configuration for AM launched for TempletonControllerJob |  Major | WebHCat | Hitesh Shah | Hitesh Shah |
| [HIVE-10042](https://issues.apache.org/jira/browse/HIVE-10042) | clean up TreeReaders - ORC refactoring for LLAP on trunk |  Major | . | Sergey Shelukhin | Prasanth Jayachandran |
| [HIVE-10032](https://issues.apache.org/jira/browse/HIVE-10032) | Remove HCatalog broken java file from source code |  Minor | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-10001](https://issues.apache.org/jira/browse/HIVE-10001) | SMB join in reduce side |  Major | . | Vikram Dixit K | Vikram Dixit K |
| [HIVE-9997](https://issues.apache.org/jira/browse/HIVE-9997) | minor tweaks for bytes mapjoin hash table |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-9994](https://issues.apache.org/jira/browse/HIVE-9994) | Hive query plan returns sensitive data to external applications |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-9991](https://issues.apache.org/jira/browse/HIVE-9991) | Cannot do a SELECT on external tables that are on S3 due to Encryption error |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-9984](https://issues.apache.org/jira/browse/HIVE-9984) | JoinReorder's getOutputSize is exponential |  Major | . | Gunther Hagleitner | Gopal V |
| [HIVE-9977](https://issues.apache.org/jira/browse/HIVE-9977) | Compactor not running on partitions after dynamic partitioned insert |  Major | Transactions | Alan Gates | Alan Gates |
| [HIVE-9976](https://issues.apache.org/jira/browse/HIVE-9976) | Possible race condition in DynamicPartitionPruner for \<200ms tasks |  Major | Tez | Gopal V | Siddharth Seth |
| [HIVE-9975](https://issues.apache.org/jira/browse/HIVE-9975) | Renaming a nonexisting partition should not throw out NullPointerException |  Minor | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-9971](https://issues.apache.org/jira/browse/HIVE-9971) | Clean up operator class |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-9961](https://issues.apache.org/jira/browse/HIVE-9961) | HookContext for view should return a table type of VIRTUAL\_VIEW |  Major | . | Szehon Ho | Szehon Ho |
| [HIVE-9957](https://issues.apache.org/jira/browse/HIVE-9957) | Hive 1.1.0 not compatible with Hadoop 2.4.0 |  Major | Encryption | Vivek Shrivastava | Sergio Peña |
| [HIVE-9956](https://issues.apache.org/jira/browse/HIVE-9956) | use BigDecimal.valueOf instead of new in TestFileDump |  Minor | File Formats | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9955](https://issues.apache.org/jira/browse/HIVE-9955) | TestVectorizedRowBatchCtx compares byte[] using equals() method |  Minor | Vectorization | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9954](https://issues.apache.org/jira/browse/HIVE-9954) | UDFJson uses the == operator to compare Strings |  Minor | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9953](https://issues.apache.org/jira/browse/HIVE-9953) | fix NPE in WindowingTableFunction |  Trivial | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9952](https://issues.apache.org/jira/browse/HIVE-9952) | fix NPE in CorrelationUtilities |  Minor | Logical Optimizer | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9951](https://issues.apache.org/jira/browse/HIVE-9951) | VectorizedRCFileRecordReader creates Exception but does not throw it |  Minor | File Formats, Vectorization | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9950](https://issues.apache.org/jira/browse/HIVE-9950) | fix rehash in CuckooSetBytes and CuckooSetLong |  Minor | Vectorization | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9948](https://issues.apache.org/jira/browse/HIVE-9948) | SparkUtilities.getFileName passes File.separator to String.split() method |  Minor | Spark | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9947](https://issues.apache.org/jira/browse/HIVE-9947) | ScriptOperator replaceAll uses unescaped dot and result is not assigned |  Minor | . | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9945](https://issues.apache.org/jira/browse/HIVE-9945) | FunctionTask.conf hides Task.conf field |  Minor | . | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9944](https://issues.apache.org/jira/browse/HIVE-9944) | Convert array[] to string properly in log messages |  Minor | Logical Optimizer | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9936](https://issues.apache.org/jira/browse/HIVE-9936) | fix potential NPE in DefaultUDAFEvaluatorResolver |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9934](https://issues.apache.org/jira/browse/HIVE-9934) | Vulnerability in LdapAuthenticationProviderImpl enables HiveServer2 client to degrade the authentication mechanism to "none", allowing authentication without password |  Major | Security | Chao | Chao |
| [HIVE-9932](https://issues.apache.org/jira/browse/HIVE-9932) | DDLTask.conf hides base class Task.conf |  Minor | Query Processor | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9930](https://issues.apache.org/jira/browse/HIVE-9930) | fix QueryPlan.makeQueryId time format |  Minor | Query Planning | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9929](https://issues.apache.org/jira/browse/HIVE-9929) | StatsUtil#getAvailableMemory could return negative value |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9920](https://issues.apache.org/jira/browse/HIVE-9920) | DROP DATABASE IF EXISTS throws exception if database does not exist |  Minor | Logging, Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-9919](https://issues.apache.org/jira/browse/HIVE-9919) | upgrade scripts don't work on some auto-created DBs due to absence of tables |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-9915](https://issues.apache.org/jira/browse/HIVE-9915) | Allow specifying file format for managed tables |  Major | File Formats | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-9892](https://issues.apache.org/jira/browse/HIVE-9892) | various MSSQL upgrade scripts don't work |  Major | Metastore | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-9886](https://issues.apache.org/jira/browse/HIVE-9886) | Hive on tez: NPE when converting join to SMB in sub-query |  Critical | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-9877](https://issues.apache.org/jira/browse/HIVE-9877) | Beeline cannot run multiple statements in the same row |  Major | Beeline | Zoltan Fedor | Chaoyu Tang |
| [HIVE-9873](https://issues.apache.org/jira/browse/HIVE-9873) | Hive on MR throws DeprecatedParquetHiveInput exception |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-9869](https://issues.apache.org/jira/browse/HIVE-9869) | Trunk doesn't build with hadoop-1 |  Major | . | Rui Li | Rui Li |
| [HIVE-9866](https://issues.apache.org/jira/browse/HIVE-9866) | Changing a column's type doesn't change column stats type in metastore |  Major | . | Henry Robinson | Chaoyu Tang |
| [HIVE-9860](https://issues.apache.org/jira/browse/HIVE-9860) | MapredLocalTask/SecureCmdDoAs leaks local files |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9855](https://issues.apache.org/jira/browse/HIVE-9855) | Runtime skew join doesn't work when skewed data only exists in big table |  Major | . | Rui Li | Rui Li |
| [HIVE-9851](https://issues.apache.org/jira/browse/HIVE-9851) | org.apache.hadoop.hive.serde2.avro.AvroSerializer should use org.apache.avro.generic.GenericData.Array when serializing a list |  Major | Hive, Serializers/Deserializers | Ratandeep Ratti | Ratandeep Ratti |
| [HIVE-9848](https://issues.apache.org/jira/browse/HIVE-9848) | readlink -f is GNU coreutils only (used in bin/hive) |  Trivial | Clients | Gopal V | Gopal V |
| [HIVE-9841](https://issues.apache.org/jira/browse/HIVE-9841) | IOException thrown by ORC should include the path of processing file |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9839](https://issues.apache.org/jira/browse/HIVE-9839) | HiveServer2 leaks OperationHandle on async queries which fail at compile phase |  Critical | HiveServer2 | Nemon Lou | Nemon Lou |
| [HIVE-9836](https://issues.apache.org/jira/browse/HIVE-9836) | Hive on tez: fails when virtual columns are present in the join conditions (for e.g. partition columns) |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-9834](https://issues.apache.org/jira/browse/HIVE-9834) | VectorGroupByOperator logs too much |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-9832](https://issues.apache.org/jira/browse/HIVE-9832) | Merge join followed by union and a map join in hive on tez fails. |  Critical | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-9831](https://issues.apache.org/jira/browse/HIVE-9831) | HiveServer2 should use ConcurrentHashMap in ThreadFactory |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-9826](https://issues.apache.org/jira/browse/HIVE-9826) | Firing insert event fails on temporary table |  Minor | . | Alan Gates | Alan Gates |
| [HIVE-9817](https://issues.apache.org/jira/browse/HIVE-9817) | fix DateFormat pattern in hive-exec |  Minor | . | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9813](https://issues.apache.org/jira/browse/HIVE-9813) | Hive JDBC - DatabaseMetaData.getColumns method cannot find classes added with "add jar" command |  Major | Metastore | Yongzhi Chen | Yongzhi Chen |
| [HIVE-9797](https://issues.apache.org/jira/browse/HIVE-9797) | Need update some spark tests for java 8 |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-9779](https://issues.apache.org/jira/browse/HIVE-9779) | ATSHook does not log the end user if doAs=false (it logs the hs2 server user) |  Major | HiveServer2 | Abdelrahman Shettia | Abdelrahman Shettia |
| [HIVE-9772](https://issues.apache.org/jira/browse/HIVE-9772) | Hive parquet timestamp conversion doesn't work with new Parquet |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9770](https://issues.apache.org/jira/browse/HIVE-9770) | Beeline ignores --showHeader for non-tablular output formats i.e csv,tsv,dsv |  Critical | Beeline | Naveen Gangam | Naveen Gangam |
| [HIVE-9767](https://issues.apache.org/jira/browse/HIVE-9767) | Fixes in Hive UDF to be usable in Pig |  Major | UDF | Daniel Dai | Daniel Dai |
| [HIVE-9755](https://issues.apache.org/jira/browse/HIVE-9755) | Hive built-in "ngram" UDAF fails when a mapper has no matches. |  Critical | UDF | Naveen Gangam | Naveen Gangam |
| [HIVE-9754](https://issues.apache.org/jira/browse/HIVE-9754) | rename GenericUDFLevenstein to GenericUDFLevenshtein |  Trivial | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9749](https://issues.apache.org/jira/browse/HIVE-9749) | ObjectStore schema verification logic is incorrect |  Major | Metastore | Brock Noland | Brock Noland |
| [HIVE-9735](https://issues.apache.org/jira/browse/HIVE-9735) | aggregate ( smalllint ) fails when ORC file used ava.lang.ClassCastException: java.lang.Long cannot be cast to java.lang.Short |  Major | SQL | N Campbell |  |
| [HIVE-9734](https://issues.apache.org/jira/browse/HIVE-9734) | Correlating expression cannot contain unqualified column references |  Minor | SQL | N Campbell | Navis |
| [HIVE-9731](https://issues.apache.org/jira/browse/HIVE-9731) | WebHCat MapReduce Streaming Job does not allow StreamXmlRecordReader to be specified |  Major | WebHCat | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-9727](https://issues.apache.org/jira/browse/HIVE-9727) | GroupingID translation from Calcite |  Major | Query Planning | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-9721](https://issues.apache.org/jira/browse/HIVE-9721) | Hadoop23Shims.setFullFileStatus should check for null |  Major | . | Brock Noland | Sergio Peña |
| [HIVE-9720](https://issues.apache.org/jira/browse/HIVE-9720) | Metastore does not properly migrate column stats when renaming a table across databases. |  Major | Metastore | Alexander Behm | Chaoyu Tang |
| [HIVE-9716](https://issues.apache.org/jira/browse/HIVE-9716) | Map job fails when table's LOCATION does not have scheme |  Minor | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-9706](https://issues.apache.org/jira/browse/HIVE-9706) | HBase handler support for snapshots should confirm properties before use |  Major | HBase Handler | Sean Busbey | Sean Busbey |
| [HIVE-9684](https://issues.apache.org/jira/browse/HIVE-9684) | Incorrect disk range computation in ORC because of optional stream kind |  Critical | File Formats | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9680](https://issues.apache.org/jira/browse/HIVE-9680) | GlobalLimitOptimizer is not checking filters correctly |  Trivial | Query Planning | Navis | Navis |
| [HIVE-9679](https://issues.apache.org/jira/browse/HIVE-9679) | Remove redundant null-checks from DbNotificationListener. |  Minor | . | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-9667](https://issues.apache.org/jira/browse/HIVE-9667) | Disable ORC bloom filters for ORC v11 output-format |  Minor | File Formats | Gopal V | Gopal V |
| [HIVE-9665](https://issues.apache.org/jira/browse/HIVE-9665) | Parallel move task optimization causes race condition |  Critical | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-9655](https://issues.apache.org/jira/browse/HIVE-9655) | Dynamic partition table insertion error |  Major | Logical Optimizer | Chao | Chao |
| [HIVE-9652](https://issues.apache.org/jira/browse/HIVE-9652) | Tez in place updates should detect redirection of STDERR |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9648](https://issues.apache.org/jira/browse/HIVE-9648) | Null check key provider before doing set |  Major | Encryption | Brock Noland | Brock Noland |
| [HIVE-9647](https://issues.apache.org/jira/browse/HIVE-9647) | Discrepancy in cardinality estimates between partitioned and un-partitioned tables |  Major | Statistics | Mostafa Mokhtar | Pengcheng Xiong |
| [HIVE-9633](https://issues.apache.org/jira/browse/HIVE-9633) | Add HCatClient.dropPartitions() overload to skip deletion of partition-directories. |  Major | API, HCatalog, Metastore | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-9628](https://issues.apache.org/jira/browse/HIVE-9628) | HiveMetaStoreClient.dropPartitions(...List\<ObjectPair\<Integer,byte[]\>\>...) doesn't take (boolean needResult) |  Major | API, Metastore | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-9623](https://issues.apache.org/jira/browse/HIVE-9623) | NullPointerException in MapJoinOperator.processOp(MapJoinOperator.java:253) for TPC-DS Q75 against un-partitioned schema |  Major | Query Processor | Mostafa Mokhtar | Gunther Hagleitner |
| [HIVE-9622](https://issues.apache.org/jira/browse/HIVE-9622) | Getting NPE when trying to restart HS2 when metastore is configured to use org.apache.hadoop.hive.thrift.DBTokenStore |  Major | . | Aihua Xu | Aihua Xu |
| [HIVE-9620](https://issues.apache.org/jira/browse/HIVE-9620) | Cannot retrieve column statistics using HMS API if column name contains uppercase characters |  Major | Metastore, Statistics | Juan Yu | Chaoyu Tang |
| [HIVE-9619](https://issues.apache.org/jira/browse/HIVE-9619) | Uninitialized read of numBitVectors in NumDistinctValueEstimator |  Minor | Statistics | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9613](https://issues.apache.org/jira/browse/HIVE-9613) | Left join query plan outputs  wrong column when using subquery |  Major | Parser, Query Planning | Li Xin |  |
| [HIVE-9612](https://issues.apache.org/jira/browse/HIVE-9612) | Turn off DEBUG logging for Lazy Objects for tests |  Major | . | Brock Noland | Sergio Peña |
| [HIVE-9609](https://issues.apache.org/jira/browse/HIVE-9609) | AddPartitionMessage.getPartitions() can return null |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-9592](https://issues.apache.org/jira/browse/HIVE-9592) | fix ArrayIndexOutOfBoundsException in date\_add and date\_sub initialize |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9588](https://issues.apache.org/jira/browse/HIVE-9588) | Reimplement HCatClientHMSImpl.dropPartitions() with HMSC.dropPartitions() |  Major | HCatalog, Metastore, Thrift API | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-9587](https://issues.apache.org/jira/browse/HIVE-9587) | UDF decode should accept STRING\_GROUP types for the second parameter |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9567](https://issues.apache.org/jira/browse/HIVE-9567) | JSON SerDe not escaping special chars when writing char/varchar data |  Major | Serializers/Deserializers | Jason Dere | Jason Dere |
| [HIVE-9565](https://issues.apache.org/jira/browse/HIVE-9565) | Minor cleanup in TestMetastoreExpr. |  Minor | Tests | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-9560](https://issues.apache.org/jira/browse/HIVE-9560) | When hive.stats.collect.rawdatasize=true, 'rawDataSize' for an ORC table will result in value '0' after running 'analyze table TABLE\_NAME compute statistics;' |  Major | . | Xin Hao | Prasanth Jayachandran |
| [HIVE-9555](https://issues.apache.org/jira/browse/HIVE-9555) | assorted ORC refactorings for LLAP on trunk |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-9553](https://issues.apache.org/jira/browse/HIVE-9553) | Fix log-line in Partition Pruner |  Trivial | Logging | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-9539](https://issues.apache.org/jira/browse/HIVE-9539) | Wrong check of version format in TestWebHCatE2e.getHiveVersion() |  Minor | HCatalog | Damien Carol | Damien Carol |
| [HIVE-9529](https://issues.apache.org/jira/browse/HIVE-9529) | "alter table .. concatenate" under Tez mode should create TezTask |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9526](https://issues.apache.org/jira/browse/HIVE-9526) | ClassCastException thrown by HiveStatement |  Major | . | Ashish K Singh | Ashish K Singh |
| [HIVE-9513](https://issues.apache.org/jira/browse/HIVE-9513) | NULL POINTER EXCEPTION |  Major | Query Planning | ErwanMAS | Navis |
| [HIVE-9512](https://issues.apache.org/jira/browse/HIVE-9512) | HIVE-9327 causing regression in stats annotation |  Major | . | Prasanth Jayachandran | Jesus Camacho Rodriguez |
| [HIVE-9509](https://issues.apache.org/jira/browse/HIVE-9509) | Restore partition spec validation removed by HIVE-9445 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-9507](https://issues.apache.org/jira/browse/HIVE-9507) | Make "LATERAL VIEW inline(expression) mytable" tolerant to nulls |  Minor | Query Processor, UDF | Moustafa Aboul Atta | Navis |
| [HIVE-9496](https://issues.apache.org/jira/browse/HIVE-9496) | Slf4j warning in hive command |  Minor | CLI | Philippe Kernevez | Alexander Pivovarov |
| [HIVE-9489](https://issues.apache.org/jira/browse/HIVE-9489) | add javadoc for UDFType annotation |  Major | Documentation, UDF | Thejas M Nair | Thejas M Nair |
| [HIVE-9484](https://issues.apache.org/jira/browse/HIVE-9484) | ThriftCLIService#getDelegationToken does case sensitive comparison |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9482](https://issues.apache.org/jira/browse/HIVE-9482) | Hive parquet timestamp compatibility |  Major | File Formats | Szehon Ho | Szehon Ho |
| [HIVE-9481](https://issues.apache.org/jira/browse/HIVE-9481) | allow column list specification in INSERT statement |  Major | Parser, Query Processor, SQL | Eugene Koifman | Eugene Koifman |
| [HIVE-9474](https://issues.apache.org/jira/browse/HIVE-9474) | truncate table changes permissions on the target |  Minor | Query Processor | Aihua Xu | Aihua Xu |
| [HIVE-9472](https://issues.apache.org/jira/browse/HIVE-9472) | Implement 7 simple UDFs added to Hive |  Major | UDF | Xiaobing Zhou | Xiaobing Zhou |
| [HIVE-9471](https://issues.apache.org/jira/browse/HIVE-9471) | Bad seek in uncompressed ORC, at row-group boundary. |  Major | File Formats, Serializers/Deserializers | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-9468](https://issues.apache.org/jira/browse/HIVE-9468) | Test groupby3\_map\_skew.q fails due to decimal precision difference |  Major | Tests | Xuefu Zhang | Xuefu Zhang |
| [HIVE-9438](https://issues.apache.org/jira/browse/HIVE-9438) | The standalone-jdbc jar missing some jars |  Blocker | . | Ashish K Singh | Brock Noland |
| [HIVE-9430](https://issues.apache.org/jira/browse/HIVE-9430) | NullPointerException on ALTER TABLE ADD PARTITION if no value given |  Major | Query Processor | Danny Lade | Sergio Peña |
| [HIVE-9397](https://issues.apache.org/jira/browse/HIVE-9397) | SELECT max(bar) FROM foo is broken after ANALYZE ... FOR COLUMNS |  Major | Beeline, Logical Optimizer | Damien Carol | Navis |
| [HIVE-9350](https://issues.apache.org/jira/browse/HIVE-9350) | Add ability for HiveAuthorizer implementations to filter out results of 'show tables', 'show databases' |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-9322](https://issues.apache.org/jira/browse/HIVE-9322) | Make null-checks consistent for MapObjectInspector subclasses. |  Minor | Serializers/Deserializers | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-9303](https://issues.apache.org/jira/browse/HIVE-9303) | Parquet files are written with incorrect definition levels |  Major | . | Skye Wanderman-Milne | Sergio Peña |
| [HIVE-9228](https://issues.apache.org/jira/browse/HIVE-9228) | Problem with subquery using windowing functions |  Major | PTF-Windowing | Aihua Xu | Navis |
| [HIVE-9151](https://issues.apache.org/jira/browse/HIVE-9151) | Checking s against null in TezJobMonitor#getNameWithProgress() should be done earlier |  Minor | . | Ted Yu | Prasanth Jayachandran |
| [HIVE-9118](https://issues.apache.org/jira/browse/HIVE-9118) | Support auto-purge for tables, when dropping tables/partitions. |  Major | Metastore | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-9086](https://issues.apache.org/jira/browse/HIVE-9086) | Add language support to PURGE data while dropping partitions. |  Major | Metastore | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-9083](https://issues.apache.org/jira/browse/HIVE-9083) | New metastore API to support to purge partition-data directly in dropPartitions(). |  Major | Metastore | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-9073](https://issues.apache.org/jira/browse/HIVE-9073) | NPE when using custom windowing UDAFs |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-9023](https://issues.apache.org/jira/browse/HIVE-9023) | HiveHistoryImpl relies on removed counters to print num rows |  Minor | Query Processor | Slava Markeyev | Naveen Gangam |
| [HIVE-9002](https://issues.apache.org/jira/browse/HIVE-9002) | union all does not generate correct result for order by and limit |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-8746](https://issues.apache.org/jira/browse/HIVE-8746) | ORC timestamp columns are sensitive to daylight savings time |  Major | . | Owen O'Malley | Prasanth Jayachandran |
| [HIVE-8626](https://issues.apache.org/jira/browse/HIVE-8626) | Extend HDFS super-user checks to dropPartitions |  Major | Metastore | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-7351](https://issues.apache.org/jira/browse/HIVE-7351) | ANALYZE TABLE statement fails on postgres metastore |  Minor | Metastore | Damien Carol | Navis |
| [HIVE-7018](https://issues.apache.org/jira/browse/HIVE-7018) | Table and Partition tables have column LINK\_TARGET\_ID in Mysql scripts but not others |  Major | . | Brock Noland | Yongzhi Chen |
| [HIVE-6099](https://issues.apache.org/jira/browse/HIVE-6099) | Multi insert does not work properly with distinct count |  Major | Query Processor | Pavan Gadam Manohar | Ashutosh Chauhan |
| [HIVE-6069](https://issues.apache.org/jira/browse/HIVE-6069) | Improve error message in GenericUDFRound |  Trivial | UDF | Xuefu Zhang | Alexander Pivovarov |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10168](https://issues.apache.org/jira/browse/HIVE-10168) | make groupby3\_map.q more stable |  Major | Tests | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-10135](https://issues.apache.org/jira/browse/HIVE-10135) | Add qtest to access  struct\<\> data type with parquet format after parquet column index access enabled |  Major | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-9525](https://issues.apache.org/jira/browse/HIVE-9525) | Enable constant propagation optimization in few existing tests where it was disabled. |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9399](https://issues.apache.org/jira/browse/HIVE-9399) | ppd\_multi\_insert.q generate same output in different order, when mapred.reduce.tasks is set to larger than 1 |  Major | . | Chao | Chao |
| [HIVE-8949](https://issues.apache.org/jira/browse/HIVE-8949) | Test for PARQUET-26 |  Major | . | Ryan Blue | Ryan Blue |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10326](https://issues.apache.org/jira/browse/HIVE-10326) | CBO (Calcite Return Path): Invoke Hive's Cumulative Cost |  Major | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-10263](https://issues.apache.org/jira/browse/HIVE-10263) | CBO (Calcite Return Path): Aggregate checking input for bucketing should be conditional |  Major | CBO | Laljo John Pullokkaran | Jesus Camacho Rodriguez |
| [HIVE-10262](https://issues.apache.org/jira/browse/HIVE-10262) | CBO (Calcite Return Path): Temporarily disable Aggregate check input for bucketing |  Major | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-10252](https://issues.apache.org/jira/browse/HIVE-10252) | Make PPD work for Parquet in row group level |  Major | . | Dong Chen | Dong Chen |
| [HIVE-10131](https://issues.apache.org/jira/browse/HIVE-10131) | LLAP: BytesBytesMultiHashMap and mapjoin container should reuse refs |  Major | . | Sergey Shelukhin | Matt McCline |
| [HIVE-10076](https://issues.apache.org/jira/browse/HIVE-10076) | Bump up parquet-hadoop-bundle and parquet-column to the version of 1.6.0rc6 |  Major | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-10053](https://issues.apache.org/jira/browse/HIVE-10053) | Override new init API fom ReadSupport instead of the deprecated one |  Major | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-10044](https://issues.apache.org/jira/browse/HIVE-10044) | Allow interval params for year/month/day/hour/minute/second functions |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-10037](https://issues.apache.org/jira/browse/HIVE-10037) | JDBC support for interval expressions |  Major | JDBC | Jason Dere | Jason Dere |
| [HIVE-9998](https://issues.apache.org/jira/browse/HIVE-9998) | Vectorization support for interval types |  Major | Types, Vectorization | Jason Dere | Jason Dere |
| [HIVE-9982](https://issues.apache.org/jira/browse/HIVE-9982) | CBO (Calcite Return Path): Prune TS Relnode schema |  Major | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-9937](https://issues.apache.org/jira/browse/HIVE-9937) | LLAP: Vectorized Field-By-Field Serialize / Deserialize to support new Vectorized Map Join |  Major | . | Matt McCline | Matt McCline |
| [HIVE-9906](https://issues.apache.org/jira/browse/HIVE-9906) | Add timeout mechanism in RawStoreProxy |  Major | Metastore | Dong Chen | Dong Chen |
| [HIVE-9894](https://issues.apache.org/jira/browse/HIVE-9894) | Use new parquet Types API builder to construct DATE data type |  Major | . | Dong Chen | Dong Chen |
| [HIVE-9819](https://issues.apache.org/jira/browse/HIVE-9819) | Add timeout check inside the HMS server |  Major | Metastore | Dong Chen | Dong Chen |
| [HIVE-9810](https://issues.apache.org/jira/browse/HIVE-9810) | prep object registry for multi threading |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-9792](https://issues.apache.org/jira/browse/HIVE-9792) | Support interval type in expressions/predicates |  Major | Types | Jason Dere | Jason Dere |
| [HIVE-9750](https://issues.apache.org/jira/browse/HIVE-9750) | avoid log locks in operators |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-9690](https://issues.apache.org/jira/browse/HIVE-9690) | Refactoring for non-numeric arithmetic operations |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-9666](https://issues.apache.org/jira/browse/HIVE-9666) | Improve some qtests |  Minor | Spark | Rui Li | Rui Li |
| [HIVE-9657](https://issues.apache.org/jira/browse/HIVE-9657) | Use new parquet Types API builder to construct data types |  Major | . | Sergio Peña | Ferdinand Xu |
| [HIVE-9563](https://issues.apache.org/jira/browse/HIVE-9563) | CBO(Calcite Return Path): Translate GB to Hive OP [CBO branch] |  Major | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-9558](https://issues.apache.org/jira/browse/HIVE-9558) | [Parquet] support HiveDecimalWritable, HiveCharWritable, HiveVarcharWritable in vectorized mode |  Major | . | Dong Chen | Dong Chen |
| [HIVE-9550](https://issues.apache.org/jira/browse/HIVE-9550) | ObjectStore.getNextNotification() can return events inside NotificationEventResponse as null which conflicts with its thrift "required" tag |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-9501](https://issues.apache.org/jira/browse/HIVE-9501) | DbNotificationListener doesn't include dbname in create database notification and does not include tablename in create table notification |  Major | . | Alan Gates | Alan Gates |
| [HIVE-9432](https://issues.apache.org/jira/browse/HIVE-9432) | CBO (Calcite Return Path): Removing QB from ParseContext |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-9333](https://issues.apache.org/jira/browse/HIVE-9333) | Move parquet serialize implementation to DataWritableWriter to improve write speeds |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-9327](https://issues.apache.org/jira/browse/HIVE-9327) | CBO (Calcite Return Path): Removing Row Resolvers from ParseContext |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-9273](https://issues.apache.org/jira/browse/HIVE-9273) | Add option to fire metastore event on insert |  Major | . | Alan Gates | Alan Gates |
| [HIVE-9271](https://issues.apache.org/jira/browse/HIVE-9271) | Add ability for client to request metastore to fire an event |  Major | Metastore | Alan Gates | Alan Gates |
| [HIVE-9253](https://issues.apache.org/jira/browse/HIVE-9253) | MetaStore server should support timeout for long running requests |  Major | Metastore | Dong Chen | Dong Chen |
| [HIVE-9009](https://issues.apache.org/jira/browse/HIVE-9009) | order by (limit) meaning for the last subquery of union in Hive is different from other main stream RDBMS |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-8818](https://issues.apache.org/jira/browse/HIVE-8818) | Create unit test where we insert into an encrypted table and then read from it with hcatalog mapreduce |  Major | . | Brock Noland | Dong Chen |
| [HIVE-8817](https://issues.apache.org/jira/browse/HIVE-8817) | Create unit test where we insert into an encrypted table and then read from it with pig |  Major | . | Brock Noland | Ferdinand Xu |
| [HIVE-8379](https://issues.apache.org/jira/browse/HIVE-8379) | NanoTimeUtils performs some work needlessly |  Minor | . | Brock Noland | Sergio Peña |
| [HIVE-8164](https://issues.apache.org/jira/browse/HIVE-8164) | Adding in a ReplicationTask that converts a Notification Event to actionable tasks |  Major | Import/Export | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-8119](https://issues.apache.org/jira/browse/HIVE-8119) | Implement Date in ParquetSerde |  Major | . | Brock Noland | Dong Chen |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10019](https://issues.apache.org/jira/browse/HIVE-10019) | Configure jenkins precommit jobs to run HMS upgrade tests |  Major | Testing Infrastructure | Sergio Peña | Sergio Peña |
| [HIVE-9966](https://issues.apache.org/jira/browse/HIVE-9966) | Get rid of customBucketMapJoin field from MapJoinDesc |  Major | Query Planning, Tez | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9903](https://issues.apache.org/jira/browse/HIVE-9903) | Update calcite version |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9867](https://issues.apache.org/jira/browse/HIVE-9867) | Migrate usage of deprecated Calcite methods |  Major | CBO, Query Planning | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9703](https://issues.apache.org/jira/browse/HIVE-9703) | Merge from Spark branch to trunk 02/16/2015 |  Major | . | Xuefu Zhang | Xuefu Zhang |
| [HIVE-9572](https://issues.apache.org/jira/browse/HIVE-9572) | Merge from Spark branch to trunk 02/03/2015 |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-9520](https://issues.apache.org/jira/browse/HIVE-9520) | Create NEXT\_DAY UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9498](https://issues.apache.org/jira/browse/HIVE-9498) | Update golden files of join38 & subquery\_in on trunk due to 9327 |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9485](https://issues.apache.org/jira/browse/HIVE-9485) | Update trunk to 1.2.0-SNAPSHOT |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9416](https://issues.apache.org/jira/browse/HIVE-9416) | Get rid of Extract Operator |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9411](https://issues.apache.org/jira/browse/HIVE-9411) | Improve error messages in TestMultiOutputFormat |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-8898](https://issues.apache.org/jira/browse/HIVE-8898) | Remove HIVE-8874 once HBASE-12493 is fixed |  Blocker | . | Brock Noland | Yongzhi Chen |


