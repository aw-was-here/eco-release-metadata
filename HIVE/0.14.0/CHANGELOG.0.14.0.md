
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

## Release 0.14.0 - 2014-11-12

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-7390](https://issues.apache.org/jira/browse/HIVE-7390) | Make single quote character optional and configurable in BeeLine CSV/TSV output |  Major | Clients | Jim Halfpenny | Ferdinand Xu |
| [HIVE-6432](https://issues.apache.org/jira/browse/HIVE-6432) | Remove deprecated methods in HCatalog |  Major | HCatalog | Sushanth Sowmyan | Sushanth Sowmyan |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-8531](https://issues.apache.org/jira/browse/HIVE-8531) | Fold is not null filter if there are other comparison filter present on same column |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7826](https://issues.apache.org/jira/browse/HIVE-7826) | Dynamic partition pruning on Tez |  Major | Tez | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-7654](https://issues.apache.org/jira/browse/HIVE-7654) | A method to extrapolate columnStats for partitions of a table |  Minor | Statistics | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-7587](https://issues.apache.org/jira/browse/HIVE-7587) | Fetch aggregated stats from MetaStore |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7547](https://issues.apache.org/jira/browse/HIVE-7547) | Add ipAddress and userName to ExecHook |  Major | Diagnosability | Szehon Ho | Szehon Ho |
| [HIVE-7509](https://issues.apache.org/jira/browse/HIVE-7509) | Fast stripe level merging for ORC |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7506](https://issues.apache.org/jira/browse/HIVE-7506) | MetadataUpdater: provide a mechanism to edit the statistics of a column in a table (or a partition of a table) |  Minor | Statistics | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-7446](https://issues.apache.org/jira/browse/HIVE-7446) | Add support to ALTER TABLE .. ADD COLUMN to Avro backed tables |  Major | . | Ashish K Singh | Ashish K Singh |
| [HIVE-7430](https://issues.apache.org/jira/browse/HIVE-7430) | Implement SMB join in tez |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-7416](https://issues.apache.org/jira/browse/HIVE-7416) | provide context information to authorization checkPrivileges api call |  Major | Authorization, SQLStandardAuthorization | Thejas M Nair | Thejas M Nair |
| [HIVE-7341](https://issues.apache.org/jira/browse/HIVE-7341) | Support for Table replication across HCatalog instances |  Major | HCatalog | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-7299](https://issues.apache.org/jira/browse/HIVE-7299) | Enable metadata only optimization on Tez |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-7255](https://issues.apache.org/jira/browse/HIVE-7255) | Allow partial partition spec in analyze command |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7203](https://issues.apache.org/jira/browse/HIVE-7203) | Optimize limit 0 |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7158](https://issues.apache.org/jira/browse/HIVE-7158) | Use Tez auto-parallelism in Hive |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-7090](https://issues.apache.org/jira/browse/HIVE-7090) | Support session-level temporary tables in Hive |  Major | SQL | Gunther Hagleitner | Jason Dere |
| [HIVE-7068](https://issues.apache.org/jira/browse/HIVE-7068) | Integrate AccumuloStorageHandler |  Major | . | Josh Elser | Josh Elser |
| [HIVE-7054](https://issues.apache.org/jira/browse/HIVE-7054) | Support ELT UDF in vectorized mode |  Major | Vectorization | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-7036](https://issues.apache.org/jira/browse/HIVE-7036) | get\_json\_object bug when extract list of list with index |  Minor | UDF | Ming Ma | Navis |
| [HIVE-6806](https://issues.apache.org/jira/browse/HIVE-6806) | CREATE TABLE should support STORED AS AVRO |  Minor | Serializers/Deserializers | Jeremy Beard | Ashish K Singh |
| [HIVE-6469](https://issues.apache.org/jira/browse/HIVE-6469) | skipTrash option in hive command line |  Major | CLI | Jayesh | Jayesh |
| [HIVE-6455](https://issues.apache.org/jira/browse/HIVE-6455) | Scalable dynamic partitioning and bucketing optimization |  Major | Query Processor | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5823](https://issues.apache.org/jira/browse/HIVE-5823) | Support for DECIMAL primitive type in AvroSerDe |  Major | Serializers/Deserializers | Mariano Dominguez | Xuefu Zhang |
| [HIVE-5775](https://issues.apache.org/jira/browse/HIVE-5775) | Introduce Cost Based Optimizer to Hive |  Major | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-5317](https://issues.apache.org/jira/browse/HIVE-5317) | Implement insert, update, and delete in Hive with full ACID support |  Major | . | Owen O'Malley | Owen O'Malley |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-8831](https://issues.apache.org/jira/browse/HIVE-8831) | show roles appends dummy new line |  Trivial | Authentication | Navis | Navis |
| [HIVE-8779](https://issues.apache.org/jira/browse/HIVE-8779) | Tez in-place progress UI can show wrong estimated time for sub-second queries |  Trivial | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-8748](https://issues.apache.org/jira/browse/HIVE-8748) | jdbc uber jar is missing commons-logging |  Major | JDBC | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8598](https://issues.apache.org/jira/browse/HIVE-8598) | Push constant filters through joins |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8597](https://issues.apache.org/jira/browse/HIVE-8597) | SMB join small table side should use the same set of serialized payloads across tasks |  Major | Tez | Siddharth Seth | Siddharth Seth |
| [HIVE-8585](https://issues.apache.org/jira/browse/HIVE-8585) | Constant folding should happen before ppd |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8501](https://issues.apache.org/jira/browse/HIVE-8501) | Fix CBO to use indexes when GenericUDFBridge is applied |  Minor | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-8492](https://issues.apache.org/jira/browse/HIVE-8492) | Enhance Constant Folding to propagate constants for simple expressions |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8490](https://issues.apache.org/jira/browse/HIVE-8490) | Constant folding should happen before partition pruning |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8428](https://issues.apache.org/jira/browse/HIVE-8428) | PCR doesnt remove filters involving casts |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8358](https://issues.apache.org/jira/browse/HIVE-8358) | Constant folding should happen before PCR |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8350](https://issues.apache.org/jira/browse/HIVE-8350) | Constant folding should happen before group-by optimization |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8320](https://issues.apache.org/jira/browse/HIVE-8320) | Error in MetaException(message:Got exception: org.apache.thrift.transport.TTransportException java.net.SocketTimeoutException: Read timed out) |  Critical | HiveServer2 | gavin kim | gavin kim |
| [HIVE-8245](https://issues.apache.org/jira/browse/HIVE-8245) | Collect table read entities at same time as view read entities |  Blocker | CBO, Security | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8100](https://issues.apache.org/jira/browse/HIVE-8100) | Add QTEST\_LEAVE\_FILES to QTestUtil |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8096](https://issues.apache.org/jira/browse/HIVE-8096) | Fix a few small nits in TestExtendedAcls |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8042](https://issues.apache.org/jira/browse/HIVE-8042) | Optionally allow move tasks to run in parallel |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8038](https://issues.apache.org/jira/browse/HIVE-8038) | Decouple ORC files split calculation logic from Filesystem's get file location implementation |  Major | File Formats | Pankit Thapar | Pankit Thapar |
| [HIVE-8036](https://issues.apache.org/jira/browse/HIVE-8036) | PTest SSH Options |  Major | . | Brock Noland | Brock Noland |
| [HIVE-7975](https://issues.apache.org/jira/browse/HIVE-7975) | HS2 memory optimization: Internalizing instance fields of Thrift-generated metastore API classes |  Major | . | Wilbur Yang | Wilbur Yang |
| [HIVE-7947](https://issues.apache.org/jira/browse/HIVE-7947) | Add message at the end of each testcase with timestamp in Webhcat system tests |  Trivial | Tests, WebHCat | Jagruti Varia | Jagruti Varia |
| [HIVE-7931](https://issues.apache.org/jira/browse/HIVE-7931) | Convert all tabs to spaces [code cleanup] |  Trivial | . | Lars Francke | Lars Francke |
| [HIVE-7925](https://issues.apache.org/jira/browse/HIVE-7925) | extend current partition status extrapolation to support all DBs |  Minor | Metastore | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-7923](https://issues.apache.org/jira/browse/HIVE-7923) | populate stats for test tables |  Minor | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-7921](https://issues.apache.org/jira/browse/HIVE-7921) | Fix confusing dead assignment in return statement (JavaHiveVarcharObjectInspector) |  Minor | . | Lars Francke | Lars Francke |
| [HIVE-7912](https://issues.apache.org/jira/browse/HIVE-7912) | Don't add is not null filter for partitioning column |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7885](https://issues.apache.org/jira/browse/HIVE-7885) | CLIServer.openSessionWithImpersonation logs as if it were openSession |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-7876](https://issues.apache.org/jira/browse/HIVE-7876) | further improve the columns stats update speed for all the partitions of a table |  Minor | Statistics | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-7833](https://issues.apache.org/jira/browse/HIVE-7833) | Remove unwanted allocation in ORC RunLengthIntegerWriterV2 determine encoding function |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7832](https://issues.apache.org/jira/browse/HIVE-7832) | Do ORC dictionary check at a finer level and preserve encoding across stripes |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7818](https://issues.apache.org/jira/browse/HIVE-7818) | Support boolean PPD for ORC |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-7757](https://issues.apache.org/jira/browse/HIVE-7757) | PTest2 separates test files with spaces while QTestGen uses commas |  Major | . | Brock Noland | Brock Noland |
| [HIVE-7737](https://issues.apache.org/jira/browse/HIVE-7737) | Hive logs full exception for table not found |  Trivial | Logging | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-7736](https://issues.apache.org/jira/browse/HIVE-7736) | improve the columns stats update speed for all the partitions of a table |  Minor | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-7705](https://issues.apache.org/jira/browse/HIVE-7705) | there's a useless threadlocal in LBUtils that shows up in perf profiles |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-7697](https://issues.apache.org/jira/browse/HIVE-7697) | PlanUtils.getTableDesc uses printStackTrace and returns null |  Major | . | Brock Noland | Brock Noland |
| [HIVE-7616](https://issues.apache.org/jira/browse/HIVE-7616) | pre-size mapjoin hashtable based on statistics |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-7615](https://issues.apache.org/jira/browse/HIVE-7615) | Beeline should have an option for user to see the query progress |  Blocker | CLI | Dong Chen | Dong Chen |
| [HIVE-7609](https://issues.apache.org/jira/browse/HIVE-7609) | Collect partition level stats by default |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7596](https://issues.apache.org/jira/browse/HIVE-7596) | Cleanup OperatorFactory, ReduceSinkOperator, and reportStats |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-7562](https://issues.apache.org/jira/browse/HIVE-7562) | Cleanup ExecReducer |  Major | . | Brock Noland | Brock Noland |
| [HIVE-7554](https://issues.apache.org/jira/browse/HIVE-7554) | Parquet Hive should resolve column names in case insensitive manner |  Major | . | Brock Noland | Brock Noland |
| [HIVE-7549](https://issues.apache.org/jira/browse/HIVE-7549) | Code cleanup of Task.java and HiveInputFormat.java |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-7543](https://issues.apache.org/jira/browse/HIVE-7543) | Cleanup of org.apache.hive.service.auth package |  Minor | Authentication | Lars Francke | Lars Francke |
| [HIVE-7532](https://issues.apache.org/jira/browse/HIVE-7532) | allow disabling direct sql per query with external metastore |  Major | . | Sergey Shelukhin | Navis |
| [HIVE-7519](https://issues.apache.org/jira/browse/HIVE-7519) | Refactor QTestUtil to remove its duplication with QFileClient for qtest setup and teardown |  Major | . | Ashish K Singh | Ashish K Singh |
| [HIVE-7495](https://issues.apache.org/jira/browse/HIVE-7495) | Print dictionary size in orc file dump |  Minor | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7445](https://issues.apache.org/jira/browse/HIVE-7445) | Improve LOGS for Hive when a query is not able to acquire locks |  Minor | Diagnosability, Logging | Chaoyu Tang | Chaoyu Tang |
| [HIVE-7432](https://issues.apache.org/jira/browse/HIVE-7432) | Remove deprecated Avro's Schema.parse usages |  Major | . | Ashish K Singh | Ashish K Singh |
| [HIVE-7386](https://issues.apache.org/jira/browse/HIVE-7386) | PTest support non-spot instances and higher cpu masters |  Major | . | Brock Noland | Brock Noland |
| [HIVE-7361](https://issues.apache.org/jira/browse/HIVE-7361) | using authorization api for RESET, DFS, ADD, DELETE, COMPILE commands |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-7250](https://issues.apache.org/jira/browse/HIVE-7250) | Adaptive compression buffer size for wide tables in ORC |  Major | File Formats | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7243](https://issues.apache.org/jira/browse/HIVE-7243) | Print padding information in ORC file dump |  Minor | File Formats | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7231](https://issues.apache.org/jira/browse/HIVE-7231) | Improve ORC padding |  Major | File Formats | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7230](https://issues.apache.org/jira/browse/HIVE-7230) | Add Eclipse formatter file for Hive coding conventions |  Major | . | David Chen | David Chen |
| [HIVE-7223](https://issues.apache.org/jira/browse/HIVE-7223) | Support generic PartitionSpecs in Metastore partition-functions |  Major | HCatalog, Metastore | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-7222](https://issues.apache.org/jira/browse/HIVE-7222) | Support timestamp column statistics in ORC and extend PPD for timestamp |  Major | File Formats | Prasanth Jayachandran | Daniel Dai |
| [HIVE-7219](https://issues.apache.org/jira/browse/HIVE-7219) | Improve performance of serialization utils in ORC |  Major | File Formats | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7211](https://issues.apache.org/jira/browse/HIVE-7211) | Throws exception if the name of conf var starts with "hive." does not exists in HiveConf |  Trivial | Configuration | Navis | Navis |
| [HIVE-7208](https://issues.apache.org/jira/browse/HIVE-7208) | move SearchArgument interface into serde package |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-7196](https://issues.apache.org/jira/browse/HIVE-7196) | Configure session by single open session call |  Trivial | HiveServer2, JDBC | Navis | Navis |
| [HIVE-7168](https://issues.apache.org/jira/browse/HIVE-7168) | Don't require to name all columns in analyze statements if stats collection is for all columns |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7142](https://issues.apache.org/jira/browse/HIVE-7142) | Hive multi serialization encoding support |  Major | Serializers/Deserializers | Chengxiang Li | Chengxiang Li |
| [HIVE-7140](https://issues.apache.org/jira/browse/HIVE-7140) | Bump default hive.metastore.client.socket.timeout to 5 minutes |  Major | . | Brock Noland | Brock Noland |
| [HIVE-7138](https://issues.apache.org/jira/browse/HIVE-7138) | add row index dump capability to ORC file dump |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-7137](https://issues.apache.org/jira/browse/HIVE-7137) | Add progressable to writer interfaces so they could report progress while different operations are in progress |  Minor | Query Processor | Sumit Kumar | Sumit Kumar |
| [HIVE-7136](https://issues.apache.org/jira/browse/HIVE-7136) | Allow Hive to read hive scripts from any of the supported file systems in hadoop eco-system |  Minor | CLI | Sumit Kumar | Sumit Kumar |
| [HIVE-7127](https://issues.apache.org/jira/browse/HIVE-7127) | Handover more details on exception in hiveserver2 |  Trivial | JDBC | Navis | Navis |
| [HIVE-7106](https://issues.apache.org/jira/browse/HIVE-7106) | Predicates in where clause are not getting pushed beyond join for left outer joins |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Chinna Rao Lalam |
| [HIVE-7100](https://issues.apache.org/jira/browse/HIVE-7100) | Users of hive should be able to specify skipTrash when dropping tables. |  Major | Query Processor | Ravi Prakash | david serafini |
| [HIVE-7048](https://issues.apache.org/jira/browse/HIVE-7048) | CompositeKeyHBaseFactory should not use FamilyFilter |  Blocker | HBase Handler | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-7026](https://issues.apache.org/jira/browse/HIVE-7026) | Support newly added role related APIs for v1 authorizer |  Trivial | Authorization | Navis | Navis |
| [HIVE-7022](https://issues.apache.org/jira/browse/HIVE-7022) | Replace BinaryWritable with BytesWritable in Parquet serde |  Major | Serializers/Deserializers | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6999](https://issues.apache.org/jira/browse/HIVE-6999) | Add streaming mode to PTFs |  Major | . | Harish Butani | Harish Butani |
| [HIVE-6973](https://issues.apache.org/jira/browse/HIVE-6973) | HiveServer2 should support a non-kerberos user authentication on a secure cluster. |  Major | HiveServer2, Security | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6938](https://issues.apache.org/jira/browse/HIVE-6938) | Add Support for Parquet Column Rename |  Major | File Formats | Daniel Weeks | Daniel Weeks |
| [HIVE-6924](https://issues.apache.org/jira/browse/HIVE-6924) | MapJoinKeyBytes::hashCode() should use Murmur hash |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6799](https://issues.apache.org/jira/browse/HIVE-6799) | HiveServer2 needs to map kerberos name to local name before proxy check |  Critical | HiveServer2 | Dilli Arumugam | Dilli Arumugam |
| [HIVE-6694](https://issues.apache.org/jira/browse/HIVE-6694) | Beeline should provide a way to execute shell command as Hive CLI does |  Major | CLI, Clients | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6677](https://issues.apache.org/jira/browse/HIVE-6677) | HBaseSerDe needs to be refactored |  Major | . | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6657](https://issues.apache.org/jira/browse/HIVE-6657) | Add test coverage for Kerberos authentication implementation using Hadoop's miniKdc |  Major | Authentication, Testing Infrastructure, Tests | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-6584](https://issues.apache.org/jira/browse/HIVE-6584) | Add HiveHBaseTableSnapshotInputFormat |  Major | HBase Handler | Nick Dimiduk | Nick Dimiduk |
| [HIVE-6561](https://issues.apache.org/jira/browse/HIVE-6561) | Beeline should accept -i option to Initializing a SQL file |  Major | . | Xuefu Zhang | Navis |
| [HIVE-6510](https://issues.apache.org/jira/browse/HIVE-6510) | Clean up math based UDFs |  Minor | . | Lars Francke | Lars Francke |
| [HIVE-6473](https://issues.apache.org/jira/browse/HIVE-6473) | Allow writing HFiles via HBaseStorageHandler table |  Major | HBase Handler | Nick Dimiduk | Nick Dimiduk |
| [HIVE-6438](https://issues.apache.org/jira/browse/HIVE-6438) | Sort query result for test, removing order by clause |  Trivial | Testing Infrastructure | Navis | Navis |
| [HIVE-6430](https://issues.apache.org/jira/browse/HIVE-6430) | MapJoin hash table has large memory overhead |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6411](https://issues.apache.org/jira/browse/HIVE-6411) | Support more generic way of using composite key for HBaseHandler |  Minor | HBase Handler | Navis | Navis |
| [HIVE-6325](https://issues.apache.org/jira/browse/HIVE-6325) | Enable using multiple concurrent sessions in tez |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6147](https://issues.apache.org/jira/browse/HIVE-6147) | Support avro data stored in HBase columns |  Major | HBase Handler | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-6132](https://issues.apache.org/jira/browse/HIVE-6132) | Support hbase filters for Hive HBase Integration |  Major | HBase Handler | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-6037](https://issues.apache.org/jira/browse/HIVE-6037) | Synchronize HiveConf with hive-default.xml.template and support show conf |  Minor | Configuration | Navis | Navis |
| [HIVE-6024](https://issues.apache.org/jira/browse/HIVE-6024) | Load data local inpath unnecessarily creates a copy task |  Major | Query Processor | Ashutosh Chauhan | Mohammad Kamrul Islam |
| [HIVE-5961](https://issues.apache.org/jira/browse/HIVE-5961) | Add explain authorize for checking privileges |  Trivial | Authorization | Navis | Navis |
| [HIVE-5871](https://issues.apache.org/jira/browse/HIVE-5871) | Use multiple-characters as field delimiter |  Major | Contrib | Rui Li | Rui Li |
| [HIVE-5799](https://issues.apache.org/jira/browse/HIVE-5799) | session/operation timeout for hiveserver2 |  Minor | HiveServer2 | Navis | Navis |
| [HIVE-5771](https://issues.apache.org/jira/browse/HIVE-5771) | Constant propagation optimizer for Hive |  Major | Query Processor | Ted Xu | Ted Xu |
| [HIVE-5652](https://issues.apache.org/jira/browse/HIVE-5652) | Improve JavaDoc of UDF class |  Trivial | Documentation | Lars Francke | Lars Francke |
| [HIVE-5160](https://issues.apache.org/jira/browse/HIVE-5160) | HS2 should support .hiverc |  Major | HiveServer2 | Thejas M Nair | Dong Chen |
| [HIVE-5072](https://issues.apache.org/jira/browse/HIVE-5072) | [WebHCat]Enable directly invoke Sqoop job through Templeton |  Major | WebHCat | Shuaishuai Nie | Shuaishuai Nie |
| [HIVE-4867](https://issues.apache.org/jira/browse/HIVE-4867) | Deduplicate columns appearing in both the key list and value list of ReduceSinkOperator |  Major | . | Yin Huai | Navis |
| [HIVE-3907](https://issues.apache.org/jira/browse/HIVE-3907) | Hive should support adding multiple resources at once |  Trivial | CLI | Navis | Navis |
| [HIVE-3684](https://issues.apache.org/jira/browse/HIVE-3684) | Add support for filter pushdown for composite keys |  Major | HBase Handler | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-3635](https://issues.apache.org/jira/browse/HIVE-3635) |  allow 't', 'T', '1', 'f', 'F', and '0' to be allowable true/false values for the boolean hive type |  Major | CLI | Alexander Alten-Lorenz | Xuefu Zhang |
| [HIVE-3595](https://issues.apache.org/jira/browse/HIVE-3595) | Hive should adapt new FsShell commands since Hadoop 2 has changed FsShell argument structures |  Minor | Shims | Harsh J | Navis |
| [HIVE-3006](https://issues.apache.org/jira/browse/HIVE-3006) | Skip execution of queries with always false WHERE clauses |  Major | Query Processor | Carl Steinbach | Ashutosh Chauhan |
| [HIVE-3005](https://issues.apache.org/jira/browse/HIVE-3005) | Skip execution phase for queries that contain "LIMIT 0" clause |  Major | Query Processor | Carl Steinbach | Ashutosh Chauhan |
| [HIVE-1955](https://issues.apache.org/jira/browse/HIVE-1955) | Support non-constant expressions for array indexes. |  Major | . | Adam Kramer | Navis |
| [HIVE-538](https://issues.apache.org/jira/browse/HIVE-538) | make hive\_jdbc.jar self-containing |  Major | JDBC | Raghotham Murthy | Nick White |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-9185](https://issues.apache.org/jira/browse/HIVE-9185) | NPE in ColumnPruner pruneReduceSinkOperator |  Major | Query Processor | Slava Markeyev |  |
| [HIVE-9146](https://issues.apache.org/jira/browse/HIVE-9146) | Query with left joins produces wrong result when join condition is written in different order |  Major | Logical Optimizer | Kamil Gorlo | Ashutosh Chauhan |
| [HIVE-8895](https://issues.apache.org/jira/browse/HIVE-8895) | bugs in mergejoin |  Minor | Query Processor | Wan Chang |  |
| [HIVE-8800](https://issues.apache.org/jira/browse/HIVE-8800) | Update release notes and notice for hive .14 |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8799](https://issues.apache.org/jira/browse/HIVE-8799) | boatload of missing apache headers |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8798](https://issues.apache.org/jira/browse/HIVE-8798) | Some Oracle deadlocks not being caught in TxnHandler |  Critical | Transactions | Alan Gates | Alan Gates |
| [HIVE-8794](https://issues.apache.org/jira/browse/HIVE-8794) | Hive on Tez leaks AMs when killed before first dag is run |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8785](https://issues.apache.org/jira/browse/HIVE-8785) | HiveServer2 LogDivertAppender should be more selective for beeline getLogs |  Major | . | Gopal V | Thejas M Nair |
| [HIVE-8782](https://issues.apache.org/jira/browse/HIVE-8782) | HBase handler doesn't compile with hadoop-1 |  Blocker | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8781](https://issues.apache.org/jira/browse/HIVE-8781) | Nullsafe joins are busted on Tez |  Critical | Tez | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8778](https://issues.apache.org/jira/browse/HIVE-8778) | ORC split elimination can cause NPE when column statistics is null |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-8772](https://issues.apache.org/jira/browse/HIVE-8772) | zookeeper info logs are always printed from beeline with service discovery mode |  Major | Beeline | Thejas M Nair | Thejas M Nair |
| [HIVE-8771](https://issues.apache.org/jira/browse/HIVE-8771) | Abstract merge file operator does not move/rename incompatible files correctly |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-8766](https://issues.apache.org/jira/browse/HIVE-8766) | Hive RetryHMSHandler should be retrying the metastore operation in case of NucleusException |  Major | Metastore | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-8764](https://issues.apache.org/jira/browse/HIVE-8764) | Windows: HiveServer2 TCP SSL cannot recognize localhost |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8759](https://issues.apache.org/jira/browse/HIVE-8759) | HiveServer2 dynamic service discovery should add hostname instead of ipaddress to ZooKeeper |  Critical | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8754](https://issues.apache.org/jira/browse/HIVE-8754) | Sqoop job submission via WebHCat doesn't properly localize required jdbc jars in secure cluster |  Critical | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-8745](https://issues.apache.org/jira/browse/HIVE-8745) | Joins on decimal keys return different results whether they are run as reduce join or map join |  Critical | Types | Gunther Hagleitner | Jason Dere |
| [HIVE-8740](https://issues.apache.org/jira/browse/HIVE-8740) | Sorted dynamic partition does not work correctly with constant folding |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-8737](https://issues.apache.org/jira/browse/HIVE-8737) | setEnv is not portable, which fails TestCliDriverMethods#testprocessInitFiles on Windows |  Major | . | Xiaobing Zhou | Xiaobing Zhou |
| [HIVE-8735](https://issues.apache.org/jira/browse/HIVE-8735) | statistics update can fail due to long paths |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8733](https://issues.apache.org/jira/browse/HIVE-8733) | HiveServer2 dynamic service discovery not picking correct IP address when hive.server2.thrift.bind.host is not set |  Critical | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8732](https://issues.apache.org/jira/browse/HIVE-8732) | ORC string statistics are not merged correctly |  Blocker | File Formats | Owen O'Malley | Owen O'Malley |
| [HIVE-8727](https://issues.apache.org/jira/browse/HIVE-8727) | Dag summary has incorrect row counts and duration per vertex |  Major | . | Mostafa Mokhtar | Prasanth Jayachandran |
| [HIVE-8724](https://issues.apache.org/jira/browse/HIVE-8724) | Right outer join produces incorrect result on Tez |  Critical | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8723](https://issues.apache.org/jira/browse/HIVE-8723) | Set reasonable connection timeout for CuratorFramework ZooKeeper clients in Hive |  Critical | . | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8714](https://issues.apache.org/jira/browse/HIVE-8714) | getDatabase reports direct SQL error when database is missing |  Critical | Metastore | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8713](https://issues.apache.org/jira/browse/HIVE-8713) | Unit test TestParquetTimestampUtils.testTimezone failing |  Major | Tests | Jason Dere | Szehon Ho |
| [HIVE-8711](https://issues.apache.org/jira/browse/HIVE-8711) | DB deadlocks not handled in TxnHandler for Postgres, Oracle, and SQLServer |  Critical | Transactions | Alan Gates | Alan Gates |
| [HIVE-8705](https://issues.apache.org/jira/browse/HIVE-8705) | Support using pre-authenticated subject in kerberized HiveServer2 HTTP mode |  Critical | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8704](https://issues.apache.org/jira/browse/HIVE-8704) | HivePassThroughOutputFormat cannot proxy more than one kind of OF (in one process) |  Critical | StorageHandler | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-8703](https://issues.apache.org/jira/browse/HIVE-8703) | More Windows unit test fixes |  Major | Tests, Windows | Jason Dere | Jason Dere |
| [HIVE-8698](https://issues.apache.org/jira/browse/HIVE-8698) | default log4j.properties not included in jar files anymore |  Critical | . | Thejas M Nair | Thejas M Nair |
| [HIVE-8697](https://issues.apache.org/jira/browse/HIVE-8697) | Vectorized round(decimal, negative)  produces wrong results |  Critical | Vectorization | Matt McCline | Matt McCline |
| [HIVE-8689](https://issues.apache.org/jira/browse/HIVE-8689) | handle overflows in statistics better |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8688](https://issues.apache.org/jira/browse/HIVE-8688) | serialized plan OutputStream is not being closed |  Critical | . | Thejas M Nair | Thejas M Nair |
| [HIVE-8687](https://issues.apache.org/jira/browse/HIVE-8687) | Support Avro through HCatalog |  Critical | HCatalog, Serializers/Deserializers | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-8685](https://issues.apache.org/jira/browse/HIVE-8685) | DDL operations in WebHCat set proxy user to "null" in unsecure mode |  Critical | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-8677](https://issues.apache.org/jira/browse/HIVE-8677) | TPC-DS Q51 : fails with "init not supported" exception in GenericUDAFStreamingEvaluator.init |  Critical | . | Mostafa Mokhtar | Gunther Hagleitner |
| [HIVE-8675](https://issues.apache.org/jira/browse/HIVE-8675) | Increase thrift server protocol test coverage |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8671](https://issues.apache.org/jira/browse/HIVE-8671) | Overflow in estimate row count and data size with fetch column stats |  Critical | Physical Optimizer | Mostafa Mokhtar | Prasanth Jayachandran |
| [HIVE-8668](https://issues.apache.org/jira/browse/HIVE-8668) | mssql sql script has carriage returns |  Blocker | . | Brock Noland | Brock Noland |
| [HIVE-8665](https://issues.apache.org/jira/browse/HIVE-8665) | Fix misc unit tests on Windows |  Major | Windows | Jason Dere | Jason Dere |
| [HIVE-8664](https://issues.apache.org/jira/browse/HIVE-8664) | Use Apache Curator in JDBC Driver and HiveServer2 for better reliability |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8663](https://issues.apache.org/jira/browse/HIVE-8663) | Fetching Vectorization scratch column map in Reduce-Side stop working |  Critical | Vectorization | Matt McCline | Matt McCline |
| [HIVE-8660](https://issues.apache.org/jira/browse/HIVE-8660) | sql std auth: property missing from whitelist - hive.exec.dynamic.partition.mode |  Critical | Authorization, SQLStandardAuthorization | Jagruti Varia | Thejas M Nair |
| [HIVE-8647](https://issues.apache.org/jira/browse/HIVE-8647) | HIVE-8186 causes addition of same child operator multiple times |  Critical | Query Processor | Vikram Dixit K | Vikram Dixit K |
| [HIVE-8646](https://issues.apache.org/jira/browse/HIVE-8646) | Hive class loading  failure when executing Hive action via oozie workflows |  Critical | . | Venkat Ranganathan | Navis |
| [HIVE-8643](https://issues.apache.org/jira/browse/HIVE-8643) | DDL operations via WebHCat with doAs parameter in secure cluster fail |  Critical | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-8641](https://issues.apache.org/jira/browse/HIVE-8641) | Disable skew joins in tez. |  Critical | . | Vikram Dixit K | Vikram Dixit K |
| [HIVE-8635](https://issues.apache.org/jira/browse/HIVE-8635) | CBO: ambiguous\_col negative test no longer fails |  Critical | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8632](https://issues.apache.org/jira/browse/HIVE-8632) | VectorKeyHashWrapper::duplicateTo allocates too many zero sized arrays |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-8631](https://issues.apache.org/jira/browse/HIVE-8631) | Compressed transaction list cannot be parsed in job.xml |  Blocker | Transactions | Alan Gates | Alan Gates |
| [HIVE-8629](https://issues.apache.org/jira/browse/HIVE-8629) | Streaming / ACID : hive cli session creation takes too long and times out if execution engine is tez |  Major | HCatalog | Roshan Naik | Roshan Naik |
| [HIVE-8628](https://issues.apache.org/jira/browse/HIVE-8628) | NPE in case of shuffle join in tez |  Critical | . | Vikram Dixit K | Vikram Dixit K |
| [HIVE-8625](https://issues.apache.org/jira/browse/HIVE-8625) | Some union queries result in plans with many unions with CBO on |  Minor | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-8624](https://issues.apache.org/jira/browse/HIVE-8624) | Record counters don't work with Tez container reuse |  Critical | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8620](https://issues.apache.org/jira/browse/HIVE-8620) | CBO: HIVE-8433 RowResolver check is too stringent |  Critical | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8619](https://issues.apache.org/jira/browse/HIVE-8619) | CBO causes some more type problems |  Critical | CBO | Sergey Shelukhin | Laljo John Pullokkaran |
| [HIVE-8615](https://issues.apache.org/jira/browse/HIVE-8615) | beeline csv,tsv outputformat needs backward compatibility mode |  Critical | Beeline | Thejas M Nair | Thejas M Nair |
| [HIVE-8614](https://issues.apache.org/jira/browse/HIVE-8614) | Upgrade hive to use tez version 0.5.2-SNAPSHOT |  Critical | . | Vikram Dixit K | Vikram Dixit K |
| [HIVE-8605](https://issues.apache.org/jira/browse/HIVE-8605) | HIVE-5799 breaks backward compatibility for time values in config |  Blocker | Configuration | Alan Gates | Alan Gates |
| [HIVE-8603](https://issues.apache.org/jira/browse/HIVE-8603) | auto\_sortmerge\_join\_5 is getting stuck on tez |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8596](https://issues.apache.org/jira/browse/HIVE-8596) | HiveServer2 dynamic service discovery: ZK throws too many connections error |  Critical | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8588](https://issues.apache.org/jira/browse/HIVE-8588) | sqoop REST endpoint fails to send appropriate JDBC driver to the cluster |  Critical | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-8587](https://issues.apache.org/jira/browse/HIVE-8587) | Vectorized Extract operator needs to update the Vectorization Context column map |  Critical | Tez, Vectorization | Matt McCline | Matt McCline |
| [HIVE-8586](https://issues.apache.org/jira/browse/HIVE-8586) | Record counters aren't updated correctly for vectorized queries |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8579](https://issues.apache.org/jira/browse/HIVE-8579) | Guaranteed NPE in DDLSemanticAnalyzer |  Major | . | Lars Francke | Jason Dere |
| [HIVE-8577](https://issues.apache.org/jira/browse/HIVE-8577) | Cannot deserialize Avro schema with a map\<string,string\> with null values |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-8575](https://issues.apache.org/jira/browse/HIVE-8575) | CBO: decimal\_udf is broken by recent changes (and other tests have type changes) |  Critical | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8567](https://issues.apache.org/jira/browse/HIVE-8567) | Vectorized queries output extra stuff for Binary columns |  Critical | Vectorization | Matt McCline | Matt McCline |
| [HIVE-8566](https://issues.apache.org/jira/browse/HIVE-8566) | Vectorized queries output wrong timestamps |  Critical | Vectorization | Matt McCline | Matt McCline |
| [HIVE-8563](https://issues.apache.org/jira/browse/HIVE-8563) | Running annotate\_stats\_join\_pkfk.q in TestMiniTezCliDriver is causing NPE |  Critical | . | Prasanth Jayachandran | Vikram Dixit K |
| [HIVE-8560](https://issues.apache.org/jira/browse/HIVE-8560) | SerDes that do not inherit AbstractSerDe do not get table properties during initialize() |  Major | Serializers/Deserializers | Jason Dere | Jason Dere |
| [HIVE-8558](https://issues.apache.org/jira/browse/HIVE-8558) | CBO: enable n-way joins after CBO join reordering |  Major | CBO | Harish Butani | Harish Butani |
| [HIVE-8557](https://issues.apache.org/jira/browse/HIVE-8557) | automatically setup ZooKeeperTokenStore to use kerberos authentication when kerberos is enabled |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-8555](https://issues.apache.org/jira/browse/HIVE-8555) | Too many casts results in loss of original string representation for constant |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8551](https://issues.apache.org/jira/browse/HIVE-8551) | NPE in FunctionRegistry (affects CBO in negative tests) |  Major | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8550](https://issues.apache.org/jira/browse/HIVE-8550) | Hive cannot load data into partitioned table with Unicode key |  Critical | . | Xiaobing Zhou | Xiaobing Zhou |
| [HIVE-8547](https://issues.apache.org/jira/browse/HIVE-8547) | CBO and/or constant propagation breaks partition\_varchar2 test |  Major | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8546](https://issues.apache.org/jira/browse/HIVE-8546) | Handle "add archive scripts.tar.gz" in Tez |  Critical | Tez | Gopal V | Gopal V |
| [HIVE-8543](https://issues.apache.org/jira/browse/HIVE-8543) | Compactions fail on metastore using postgres |  Critical | Metastore | Alan Gates | Alan Gates |
| [HIVE-8534](https://issues.apache.org/jira/browse/HIVE-8534) | sql std auth : update configuration whitelist for 0.14 |  Blocker | Authorization, SQLStandardAuthorization | Thejas M Nair | Thejas M Nair |
| [HIVE-8517](https://issues.apache.org/jira/browse/HIVE-8517) | When joining on partition column NDV gets overridden by StatsUtils.getColStatisticsFromExpression |  Critical | Physical Optimizer | Mostafa Mokhtar | Mostafa Mokhtar |
| [HIVE-8514](https://issues.apache.org/jira/browse/HIVE-8514) | TestCliDriver.testCliDriver\_index\_in\_db fails in trunk |  Critical | . | Thejas M Nair | Thejas M Nair |
| [HIVE-8511](https://issues.apache.org/jira/browse/HIVE-8511) | fix build failure: cbo\_correctness on tez |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8498](https://issues.apache.org/jira/browse/HIVE-8498) | Insert into table misses some rows when vectorization is enabled |  Critical | Vectorization | Prasanth Jayachandran | Jitendra Nath Pandey |
| [HIVE-8497](https://issues.apache.org/jira/browse/HIVE-8497) | StatsNoJobTask doesn't close RecordReader, FSDataInputStream of which keeps open to prevent stale data clean |  Critical | . | Xiaobing Zhou | Xiaobing Zhou |
| [HIVE-8495](https://issues.apache.org/jira/browse/HIVE-8495) | Add progress bar for Hive on Tez queries |  Major | CLI | Mostafa Mokhtar | Prasanth Jayachandran |
| [HIVE-8489](https://issues.apache.org/jira/browse/HIVE-8489) | Add sanity check to dynamic partition pruning |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8484](https://issues.apache.org/jira/browse/HIVE-8484) | HCatalog throws an exception if Pig job is of type 'fetch' |  Major | HCatalog | Lorand Bendig |  |
| [HIVE-8479](https://issues.apache.org/jira/browse/HIVE-8479) | Tez sessions cannot change queues once assigned to one within a CLI session |  Critical | . | Vikram Dixit K | Vikram Dixit K |
| [HIVE-8478](https://issues.apache.org/jira/browse/HIVE-8478) | Vectorized Reduce-Side Group By doesn't handle Decimal type correctly |  Critical | Vectorization | Matt McCline | Matt McCline |
| [HIVE-8476](https://issues.apache.org/jira/browse/HIVE-8476) | JavaDoc updates to HiveEndPoint.newConnection() for secure streaming with Kerberos |  Major | HCatalog | Roshan Naik | Roshan Naik |
| [HIVE-8475](https://issues.apache.org/jira/browse/HIVE-8475) | add test case for use of index from not-current database |  Major | Indexing | Thejas M Nair | Thejas M Nair |
| [HIVE-8474](https://issues.apache.org/jira/browse/HIVE-8474) | Vectorized reads of transactional tables fail when not all columns are selected |  Critical | Transactions, Vectorization | Alan Gates | Alan Gates |
| [HIVE-8464](https://issues.apache.org/jira/browse/HIVE-8464) | Vectorized reducer nested group by query returns wrong results |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-8462](https://issues.apache.org/jira/browse/HIVE-8462) | CBO duplicates columns |  Critical | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8461](https://issues.apache.org/jira/browse/HIVE-8461) | Make Vectorized Decimal query results match Non-Vectorized query results with respect to trailing zeroes... .0000 |  Critical | Vectorization | Matt McCline | Matt McCline |
| [HIVE-8460](https://issues.apache.org/jira/browse/HIVE-8460) | ORC SARG literal creation for double from float may lead to wrong evaluation of SARG |  Major | Query Processor | Ashutosh Chauhan | Prasanth Jayachandran |
| [HIVE-8452](https://issues.apache.org/jira/browse/HIVE-8452) | Cleanup handling of resource configuration for tez |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8445](https://issues.apache.org/jira/browse/HIVE-8445) | TestColumnAccess, TestReadEntityDirect use same table names |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-8444](https://issues.apache.org/jira/browse/HIVE-8444) | update pom to junit 4.11 |  Major | Testing Infrastructure | Jason Dere | Jason Dere |
| [HIVE-8442](https://issues.apache.org/jira/browse/HIVE-8442) | Revert HIVE-8403 |  Blocker | Build Infrastructure | Alan Gates | Alan Gates |
| [HIVE-8434](https://issues.apache.org/jira/browse/HIVE-8434) | Vectorization logic using wrong values for DATE and TIMESTAMP partitioning columns in vectorized row batches... |  Critical | Vectorization | Matt McCline | Matt McCline |
| [HIVE-8433](https://issues.apache.org/jira/browse/HIVE-8433) | CBO loses a column during AST conversion |  Critical | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8429](https://issues.apache.org/jira/browse/HIVE-8429) | Add records in/out counters |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8427](https://issues.apache.org/jira/browse/HIVE-8427) | Hive Streaming :  secure streaming hangs leading to time outs. |  Major | HCatalog | Roshan Naik | Roshan Naik |
| [HIVE-8421](https://issues.apache.org/jira/browse/HIVE-8421) | [CBO] Use OptiqSemanticException in error conditions |  Major | CBO | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8415](https://issues.apache.org/jira/browse/HIVE-8415) | Vectorized comparison of timestamp and integer needs to treat integer as seconds since epoch |  Critical | Vectorization | Matt McCline | Matt McCline |
| [HIVE-8413](https://issues.apache.org/jira/browse/HIVE-8413) | [CBO] Handle ill-formed queries which have distinct, having in incorrect context |  Major | CBO | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8411](https://issues.apache.org/jira/browse/HIVE-8411) | Support partial partition spec for certain ALTER PARTITION statements |  Major | . | Jason Dere | Jason Dere |
| [HIVE-8409](https://issues.apache.org/jira/browse/HIVE-8409) | SMB joins fail intermittently on tez |  Critical | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-8408](https://issues.apache.org/jira/browse/HIVE-8408) | hcat cli throws NPE when authorizer using new api is enabled |  Critical | Authorization, HCatalog | Jagruti Varia | Thejas M Nair |
| [HIVE-8407](https://issues.apache.org/jira/browse/HIVE-8407) | [CBO] Handle filters with non-boolean return type |  Major | CBO | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8404](https://issues.apache.org/jira/browse/HIVE-8404) | ColumnPruner doesnt prune columns from limit operator |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8403](https://issues.apache.org/jira/browse/HIVE-8403) | Build broken by datanucleus.org being offline |  Blocker | Build Infrastructure | Alan Gates | Alan Gates |
| [HIVE-8402](https://issues.apache.org/jira/browse/HIVE-8402) | Orc pushing SARGs into delta files causing ArrayOutOfBoundsExceptions |  Blocker | File Formats, Transactions | Alan Gates | Alan Gates |
| [HIVE-8401](https://issues.apache.org/jira/browse/HIVE-8401) | OrcFileMergeOperator only close last orc file it opened, which resulted in stale data in table directory |  Critical | . | Xiaobing Zhou | Xiaobing Zhou |
| [HIVE-8394](https://issues.apache.org/jira/browse/HIVE-8394) | HIVE-7803 doesn't handle Pig MultiQuery, can cause data-loss. |  Critical | HCatalog | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-8393](https://issues.apache.org/jira/browse/HIVE-8393) | Handle SIGINT on Tez |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8392](https://issues.apache.org/jira/browse/HIVE-8392) | HiveServer2 Operation.close fails on windows |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8391](https://issues.apache.org/jira/browse/HIVE-8391) | Comparion between TIMESTAMP and Integer types goes to STRING as "common comparison denominator" instead of a numeric type |  Critical | CBO, Logical Optimizer | Matt McCline | Jason Dere |
| [HIVE-8390](https://issues.apache.org/jira/browse/HIVE-8390) | CBO produces annoying exception message and wraps exceptions too much |  Minor | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8389](https://issues.apache.org/jira/browse/HIVE-8389) | Fix CBO when indexes are used |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-8386](https://issues.apache.org/jira/browse/HIVE-8386) | HCAT api call is case sensitive on fields in struct column |  Critical | HCatalog, Types | Jason Dere | Jason Dere |
| [HIVE-8382](https://issues.apache.org/jira/browse/HIVE-8382) | ConstantPropagateProcFactory#isDeterministicUdf adds a lot of ERROR level logs |  Major | Logical Optimizer | Vaibhav Gumashta | Ashutosh Chauhan |
| [HIVE-8380](https://issues.apache.org/jira/browse/HIVE-8380) | NanoTime class serializes and deserializes Timestamp incorrectly |  Blocker | . | Brock Noland | Brock Noland |
| [HIVE-8372](https://issues.apache.org/jira/browse/HIVE-8372) | Potential NPE in Tez MergeFileRecordProcessor |  Major | Tez | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-8368](https://issues.apache.org/jira/browse/HIVE-8368) | compactor is improperly writing delete records in base file |  Critical | Transactions | Alan Gates | Alan Gates |
| [HIVE-8367](https://issues.apache.org/jira/browse/HIVE-8367) | delete writes records in wrong order in some cases |  Blocker | Query Processor | Alan Gates | Alan Gates |
| [HIVE-8366](https://issues.apache.org/jira/browse/HIVE-8366) | CBO fails if there is a table sample in subquery |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8363](https://issues.apache.org/jira/browse/HIVE-8363) | AccumuloStorageHandler compile failure hadoop-1 |  Blocker | StorageHandler | Szehon Ho | Josh Elser |
| [HIVE-8361](https://issues.apache.org/jira/browse/HIVE-8361) | NPE in PTFOperator when there are empty partitions |  Major | . | Harish Butani | Harish Butani |
| [HIVE-8354](https://issues.apache.org/jira/browse/HIVE-8354) | HIVE-7156 introduced required dependency on tez |  Blocker | . | Brock Noland | Prasanth Jayachandran |
| [HIVE-8349](https://issues.apache.org/jira/browse/HIVE-8349) | DISTRIBUTE BY should work with tez auto-parallelism enabled |  Major | Physical Optimizer, Tez | Gopal V | Gopal V |
| [HIVE-8348](https://issues.apache.org/jira/browse/HIVE-8348) | Fix Hive to match changes introduced by TEZ-1510 |  Critical | Tez | Gopal V | Gopal V |
| [HIVE-8344](https://issues.apache.org/jira/browse/HIVE-8344) | Hive on Tez sets mapreduce.framework.name to yarn-tez |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8341](https://issues.apache.org/jira/browse/HIVE-8341) | Transaction information in config file can grow excessively large |  Critical | Transactions | Alan Gates | Alan Gates |
| [HIVE-8340](https://issues.apache.org/jira/browse/HIVE-8340) | Windows: HiveServer2 service doesn't stop backend jvm process, which prevents follow-up service start. |  Critical | HiveServer2 | Xiaobing Zhou | Xiaobing Zhou |
| [HIVE-8336](https://issues.apache.org/jira/browse/HIVE-8336) | Update pom, now that Optiq is renamed to Calcite |  Major | . | Julian Hyde | Gunther Hagleitner |
| [HIVE-8335](https://issues.apache.org/jira/browse/HIVE-8335) | TestHCatLoader/TestHCatStorer failures on pre-commit tests |  Major | HCatalog, Tests | Jason Dere | Gopal V |
| [HIVE-8332](https://issues.apache.org/jira/browse/HIVE-8332) | Reading an ACID table with vectorization on results in NPE |  Critical | Transactions, Vectorization | Alan Gates | Alan Gates |
| [HIVE-8328](https://issues.apache.org/jira/browse/HIVE-8328) | MapJoin implementation in Tez should not reload hashtables |  Blocker | Tez | Gopal V | Gopal V |
| [HIVE-8324](https://issues.apache.org/jira/browse/HIVE-8324) | Shim KerberosName (causes build failure on hadoop-1) |  Blocker | . | Szehon Ho | Vaibhav Gumashta |
| [HIVE-8322](https://issues.apache.org/jira/browse/HIVE-8322) | VectorReduceSinkOperator: ClassCastException: ~StandardUnionObjectInspector$StandardUnion cannot be cast to ~IntWritable |  Critical | Tez, Vectorization | Matt McCline | Matt McCline |
| [HIVE-8321](https://issues.apache.org/jira/browse/HIVE-8321) | Fix serialization of TypeInfo for qualified types |  Major | Types | Jason Dere | Jason Dere |
| [HIVE-8318](https://issues.apache.org/jira/browse/HIVE-8318) | Null Scan optimizer throws exception when no partitions are selected |  Critical | Physical Optimizer | Mostafa Mokhtar | Ashutosh Chauhan |
| [HIVE-8315](https://issues.apache.org/jira/browse/HIVE-8315) | CBO : Negate condition underestimates selectivity which results in an in-efficient plan |  Major | CBO | Mostafa Mokhtar | Harish Butani |
| [HIVE-8314](https://issues.apache.org/jira/browse/HIVE-8314) | Restore thrift string interning of HIVE-7975 |  Critical | Thrift API | Szehon Ho | Chao |
| [HIVE-8313](https://issues.apache.org/jira/browse/HIVE-8313) | Optimize evaluation for ExprNodeConstantEvaluator and ExprNodeNullEvaluator |  Critical | Query Processor | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-8311](https://issues.apache.org/jira/browse/HIVE-8311) | Driver is encoding transaction information too late |  Blocker | Transactions | Alan Gates | Alan Gates |
| [HIVE-8310](https://issues.apache.org/jira/browse/HIVE-8310) | RetryingHMSHandler is not used when kerberos auth enabled |  Blocker | . | Thejas M Nair | Thejas M Nair |
| [HIVE-8304](https://issues.apache.org/jira/browse/HIVE-8304) | Tez Reduce-Side GROUP BY Vectorization doesn't copy NULL keys correctly |  Critical | Tez, Vectorization | Matt McCline | Matt McCline |
| [HIVE-8299](https://issues.apache.org/jira/browse/HIVE-8299) | HiveServer2 in http-kerberos & doAs=true is failing with org.apache.hadoop.security.AccessControlException |  Critical | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8298](https://issues.apache.org/jira/browse/HIVE-8298) | Incorrect results for n-way join when join expressions are not in same order across joins |  Blocker | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8296](https://issues.apache.org/jira/browse/HIVE-8296) | Tez ReduceShuffle Vectorization needs 2 data buffers (key and value) for adding rows |  Critical | Tez, Vectorization | Matt McCline | Matt McCline |
| [HIVE-8292](https://issues.apache.org/jira/browse/HIVE-8292) | Reading from partitioned bucketed tables has high overhead in MapOperator.cleanUpInputFileChangedOp |  Major | Query Processor | Mostafa Mokhtar | Gopal V |
| [HIVE-8290](https://issues.apache.org/jira/browse/HIVE-8290) | With DbTxnManager configured, all ORC tables forced to be transactional |  Blocker | Transactions | Alan Gates | Alan Gates |
| [HIVE-8287](https://issues.apache.org/jira/browse/HIVE-8287) | Metadata action errors don't have information about cause |  Blocker | Authorization, Logging | Thejas M Nair | Thejas M Nair |
| [HIVE-8283](https://issues.apache.org/jira/browse/HIVE-8283) | Missing break in FilterSelectivityEstimator#visitCall() |  Critical | . | Ted Yu | Navis |
| [HIVE-8281](https://issues.apache.org/jira/browse/HIVE-8281) | NPE with dynamic partition pruning on Tez |  Critical | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8280](https://issues.apache.org/jira/browse/HIVE-8280) | CBO : When filter is applied on dimension table PK/FK code path is not in effect. |  Major | CBO | Mostafa Mokhtar | Harish Butani |
| [HIVE-8279](https://issues.apache.org/jira/browse/HIVE-8279) | sql std auth - additional test cases |  Blocker | Authorization, SQLStandardAuthorization | Thejas M Nair | Thejas M Nair |
| [HIVE-8277](https://issues.apache.org/jira/browse/HIVE-8277) | IP address string in HS2, metastore have a "/" prefix |  Blocker | HiveServer2, Metastore | Madhan Neethiraj | Thejas M Nair |
| [HIVE-8272](https://issues.apache.org/jira/browse/HIVE-8272) | Query with particular decimal expression causes NPE during execution initialization |  Critical | Logical Optimizer | Matt McCline | Jason Dere |
| [HIVE-8270](https://issues.apache.org/jira/browse/HIVE-8270) | JDBC uber jar is missing some classes required in secure setup. |  Major | JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8263](https://issues.apache.org/jira/browse/HIVE-8263) | CBO : TPC-DS Q64 is item is joined last with store\_sales while it should be first as it is the most selective |  Major | CBO | Mostafa Mokhtar | Harish Butani |
| [HIVE-8261](https://issues.apache.org/jira/browse/HIVE-8261) | CBO : Predicate pushdown is removed by Optiq |  Major | CBO | Mostafa Mokhtar | Harish Butani |
| [HIVE-8258](https://issues.apache.org/jira/browse/HIVE-8258) | Compactor cleaners can be starved on a busy table or partition. |  Critical | Transactions | Alan Gates | Alan Gates |
| [HIVE-8250](https://issues.apache.org/jira/browse/HIVE-8250) | Truncating table doesnt invalidate stats |  Major | Statistics | Jagruti Varia | Ashutosh Chauhan |
| [HIVE-8248](https://issues.apache.org/jira/browse/HIVE-8248) | TestHCatLoader.testReadDataPrimitiveTypes() occasionally fails |  Major | HCatalog, Tests | Jason Dere | Jason Dere |
| [HIVE-8246](https://issues.apache.org/jira/browse/HIVE-8246) | HiveServer2 in http-kerberos mode is restrictive on client usernames |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8240](https://issues.apache.org/jira/browse/HIVE-8240) | VectorColumnAssignFactory throws "Incompatible Bytes vector column and primitive category VARCHAR" |  Critical | Vectorization | Matt McCline | Matt McCline |
| [HIVE-8239](https://issues.apache.org/jira/browse/HIVE-8239) | MSSQL upgrade schema scripts does not map Java long datatype columns correctly for transaction related tables |  Major | Database/Schema | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-8236](https://issues.apache.org/jira/browse/HIVE-8236) | VectorHashKeyWrapper allocates too many zero sized arrays |  Blocker | Vectorization | Gopal V | Gopal V |
| [HIVE-8229](https://issues.apache.org/jira/browse/HIVE-8229) | Add multithreaded tests for the Hive Writable data types |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-8227](https://issues.apache.org/jira/browse/HIVE-8227) | NPE w/ hive on tez when doing unions on empty tables |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8226](https://issues.apache.org/jira/browse/HIVE-8226) | Vectorize dynamic partitioning in VectorFileSinkOperator |  Critical | Tez, Vectorization | Matt McCline | Matt McCline |
| [HIVE-8225](https://issues.apache.org/jira/browse/HIVE-8225) | CBO trunk merge: union11 test fails due to incorrect plan |  Critical | . | Sergey Shelukhin | Pengcheng Xiong |
| [HIVE-8221](https://issues.apache.org/jira/browse/HIVE-8221) | authorize additional metadata read operations in metastore storage based authorization |  Blocker | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-8217](https://issues.apache.org/jira/browse/HIVE-8217) | WebHCat 'jobs' endpoint fails if it runs into issues with any of the jobs |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-8212](https://issues.apache.org/jira/browse/HIVE-8212) | Regression for hcat commandline alter view set tblproperties |  Major | CLI, HCatalog | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-8210](https://issues.apache.org/jira/browse/HIVE-8210) | TezJobMonitor should print time spent in Application (RUNNING) |  Trivial | Tez | Gopal V | Gopal V |
| [HIVE-8205](https://issues.apache.org/jira/browse/HIVE-8205) | Using strings in group type fails in ParquetSerDe |  Major | Serializers/Deserializers | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8203](https://issues.apache.org/jira/browse/HIVE-8203) | ACID operations result in NPE when run through HS2 |  Blocker | Transactions | Alan Gates | Alan Gates |
| [HIVE-8201](https://issues.apache.org/jira/browse/HIVE-8201) | Remove hardwiring to HiveInputFormat in acid qfile tests |  Major | . | Alan Gates | Alan Gates |
| [HIVE-8200](https://issues.apache.org/jira/browse/HIVE-8200) | Make beeline use the hive-jdbc standalone jar |  Major | CLI, HiveServer2 | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-8196](https://issues.apache.org/jira/browse/HIVE-8196) | Joining on partition columns with fetch column stats enabled results it very small CE which negatively affects query performance |  Blocker | Physical Optimizer | Mostafa Mokhtar | Prasanth Jayachandran |
| [HIVE-8191](https://issues.apache.org/jira/browse/HIVE-8191) | Update and delete on tables with non Acid output formats gives runtime error |  Blocker | Query Processor | Alan Gates | Alan Gates |
| [HIVE-8189](https://issues.apache.org/jira/browse/HIVE-8189) | A select statement with a subquery is failing with HBaseSerde |  Major | HBase Handler | Yongzhi Chen | Yongzhi Chen |
| [HIVE-8188](https://issues.apache.org/jira/browse/HIVE-8188) | ExprNodeGenericFuncEvaluator::\_evaluate() loads class annotations in a tight loop |  Major | UDF | Gopal V | Gopal V |
| [HIVE-8185](https://issues.apache.org/jira/browse/HIVE-8185) | hive-jdbc-0.14.0-SNAPSHOT-standalone.jar fails verification for signatures in build |  Critical | JDBC | Gopal V | Deepesh Khandelwal |
| [HIVE-8184](https://issues.apache.org/jira/browse/HIVE-8184) |  inconsistence between colList and columnExprMap when ConstantPropagate is applied to subquery |  Minor | Logical Optimizer | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-8179](https://issues.apache.org/jira/browse/HIVE-8179) | Fetch task conversion: Remove some dependencies on AST |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8178](https://issues.apache.org/jira/browse/HIVE-8178) | OrcNewInputFormat::getSplits() calls OrcInputFormat.generateSplitsInfo twice |  Major | File Formats | Gopal V | Gopal V |
| [HIVE-8175](https://issues.apache.org/jira/browse/HIVE-8175) | Hive metastore upgrade from v0.13.0 to v0.14.0 script for Oracle is missing an upgrade step |  Major | Metastore | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-8171](https://issues.apache.org/jira/browse/HIVE-8171) | Tez and Vectorized Reduce doesn't create scratch columns |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-8170](https://issues.apache.org/jira/browse/HIVE-8170) | Hive Metastore schema script missing for mssql for v0.14.0 |  Major | Database/Schema | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-8169](https://issues.apache.org/jira/browse/HIVE-8169) | Windows: alter table ..set location from hcatalog failed with NullPointerException |  Critical | HCatalog | Xiaobing Zhou | Xiaobing Zhou |
| [HIVE-8167](https://issues.apache.org/jira/browse/HIVE-8167) | mvn install command broken by HIVE-8126 commit |  Critical | Build Infrastructure, JDBC | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-8162](https://issues.apache.org/jira/browse/HIVE-8162) | Dynamic sort optimization propagates additional columns even in the absence of order by |  Blocker | . | Na Yang | Prasanth Jayachandran |
| [HIVE-8158](https://issues.apache.org/jira/browse/HIVE-8158) | Optimize writeValue/setValue in VectorExpressionWriterFactory (in VectorReduceSinkOperator codepath) |  Major | Vectorization | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-8156](https://issues.apache.org/jira/browse/HIVE-8156) | Vectorized reducers need to avoid memory build-up during a single key |  Major | . | Gopal V | Gopal V |
| [HIVE-8153](https://issues.apache.org/jira/browse/HIVE-8153) | Reduce the verbosity of debug logs in ORC record reader |  Trivial | File Formats | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-8152](https://issues.apache.org/jira/browse/HIVE-8152) | Update with expression in set fails |  Critical | Query Processor | Alan Gates | Eugene Koifman |
| [HIVE-8151](https://issues.apache.org/jira/browse/HIVE-8151) | Dynamic partition sort optimization inserts record wrongly to partition when used with GroupBy |  Blocker | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-8149](https://issues.apache.org/jira/browse/HIVE-8149) | hive.optimize.reducededuplication should be set to false for IUD ops |  Major | Query Processor | Eugene Koifman | Alan Gates |
| [HIVE-8148](https://issues.apache.org/jira/browse/HIVE-8148) | HDFS Path named with file:// instead of file:/// results in Unit test failures in Windows |  Major | Tests | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-8146](https://issues.apache.org/jira/browse/HIVE-8146) | Test TestTempletonUtils.testFindContainingJar failing |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-8143](https://issues.apache.org/jira/browse/HIVE-8143) | Create root scratch dir with 733 instead of 777 perms |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8142](https://issues.apache.org/jira/browse/HIVE-8142) | Add merge operators to queryplan.thrift instead of generated source file |  Minor | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-8139](https://issues.apache.org/jira/browse/HIVE-8139) | Upgrade commons-lang from 2.4 to 2.6 |  Major | Build Infrastructure | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-8138](https://issues.apache.org/jira/browse/HIVE-8138) | Global Init file should allow specifying file name  not only directory |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8126](https://issues.apache.org/jira/browse/HIVE-8126) | Standalone hive-jdbc jar is not packaged in the Hive distribution |  Major | JDBC | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-8115](https://issues.apache.org/jira/browse/HIVE-8115) | Hive select query hang when fields contain map |  Critical | Serializers/Deserializers | Xiaobing Zhou | Xiaobing Zhou |
| [HIVE-8114](https://issues.apache.org/jira/browse/HIVE-8114) | Type resolution for udf arguments of Decimal Type results in error |  Major | Query Processor, Types | Ashutosh Chauhan | Jason Dere |
| [HIVE-8112](https://issues.apache.org/jira/browse/HIVE-8112) | Change reporting string to reflect update in Tez |  Minor | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8107](https://issues.apache.org/jira/browse/HIVE-8107) | Bad error message for non-existent table in update and delete |  Major | Query Processor | Alan Gates | Alan Gates |
| [HIVE-8105](https://issues.apache.org/jira/browse/HIVE-8105) | booleans and nulls not handled properly in insert/values |  Critical | Query Processor | Alan Gates | Alan Gates |
| [HIVE-8104](https://issues.apache.org/jira/browse/HIVE-8104) | Insert statements against ACID tables NPE when vectorization is on |  Critical | Query Processor, Vectorization | Alan Gates | Alan Gates |
| [HIVE-8103](https://issues.apache.org/jira/browse/HIVE-8103) | Read ACID tables with FetchOperator returns no rows |  Critical | . | Alan Gates | Alan Gates |
| [HIVE-8102](https://issues.apache.org/jira/browse/HIVE-8102) | Partitions of type 'date' behave incorrectly with daylight saving time. |  Critical | Database/Schema, Serializers/Deserializers | Eli Acherkan | Jason Dere |
| [HIVE-8095](https://issues.apache.org/jira/browse/HIVE-8095) | Tez and Vectorized GROUP BY: ClassCastException: ...HiveDecimal cannot be cast to ...HiveDecimalWritable |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-8092](https://issues.apache.org/jira/browse/HIVE-8092) | Vectorized Tez count(*) returns NULL instead of 0 when result is empty |  Critical | Tez, Vectorization | Matt McCline | Matt McCline |
| [HIVE-8090](https://issues.apache.org/jira/browse/HIVE-8090) | Potential null pointer reference in WriterImpl#StreamFactory#createStream() |  Minor | File Formats | Ted Yu | Gopal V |
| [HIVE-8085](https://issues.apache.org/jira/browse/HIVE-8085) | stats optimizer should not use Description annotation to figure out function mapping (because FunctionRegistry doesn't) |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8083](https://issues.apache.org/jira/browse/HIVE-8083) | Authorization DDLs should not enforce hive identifier syntax for user or group |  Major | SQL, SQLStandardAuthorization | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-8082](https://issues.apache.org/jira/browse/HIVE-8082) | generateErrorMessage doesn't handle null ast properly |  Minor | . | Darren Yin |  |
| [HIVE-8081](https://issues.apache.org/jira/browse/HIVE-8081) | "drop index if exists" fails if table specified does not exist |  Major | . | Jason Dere | Jason Dere |
| [HIVE-8078](https://issues.apache.org/jira/browse/HIVE-8078) | ORC Delta encoding corrupts data when delta overflows long |  Critical | File Formats | Tim Patterson | Prasanth Jayachandran |
| [HIVE-8071](https://issues.apache.org/jira/browse/HIVE-8071) | hive shell tries to write hive-exec.jar for each run |  Major | Tez | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-8062](https://issues.apache.org/jira/browse/HIVE-8062) | Stats collection for columns fails on a partitioned table with null values in partitioning column |  Major | Statistics | Deepesh Khandelwal | Ashutosh Chauhan |
| [HIVE-8056](https://issues.apache.org/jira/browse/HIVE-8056) | SessionState.dropSessionPaths should use FileSystem.getLocal(conf) to delete local files |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-8052](https://issues.apache.org/jira/browse/HIVE-8052) | Vectorization: min() on TimeStamp datatype fails with error "Vector aggregate not implemented: min for type: TIMESTAMP" |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-8051](https://issues.apache.org/jira/browse/HIVE-8051) | Some union queries fail with dynamic partition pruning on tez |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8047](https://issues.apache.org/jira/browse/HIVE-8047) | Lazy char/varchar are not using escape char defined in serde params |  Major | Serializers/Deserializers | Jason Dere | Jason Dere |
| [HIVE-8045](https://issues.apache.org/jira/browse/HIVE-8045) | SQL standard auth with cli - Errors and configuration issues |  Major | Authorization | Jagruti Varia | Thejas M Nair |
| [HIVE-8041](https://issues.apache.org/jira/browse/HIVE-8041) | Hadoop-2 build is broken with JDK6 |  Major | Build Infrastructure | Xuefu Zhang | Navis |
| [HIVE-8034](https://issues.apache.org/jira/browse/HIVE-8034) | Don't add colon when no port is specified |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8023](https://issues.apache.org/jira/browse/HIVE-8023) | Code in HIVE-6380 eats exceptions |  Major | . | Brock Noland | Jason Dere |
| [HIVE-8022](https://issues.apache.org/jira/browse/HIVE-8022) | Recursive root scratch directory creation is not using hdfs umask properly |  Major | CLI, HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8019](https://issues.apache.org/jira/browse/HIVE-8019) | Missing hive 0.13.1 commit in trunk : export/import statement authorization - CVE-2014-0228 |  Blocker | Import/Export | Mohit Sabharwal | Thejas M Nair |
| [HIVE-8018](https://issues.apache.org/jira/browse/HIVE-8018) | Fix typo in config var name for dynamic partition pruning |  Minor | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8012](https://issues.apache.org/jira/browse/HIVE-8012) | TestHiveServer2Concurrency is not implemented |  Major | . | Jason Dere | Jason Dere |
| [HIVE-8008](https://issues.apache.org/jira/browse/HIVE-8008) | NPE while reading null decimal value |  Major | Types | Chao | Chao |
| [HIVE-7993](https://issues.apache.org/jira/browse/HIVE-7993) | With CBO enabled Q75 fails with RuntimeException: cannot find field \_col69 from [0:\_col18,...] |  Major | CBO | Mostafa Mokhtar | Matt McCline |
| [HIVE-7987](https://issues.apache.org/jira/browse/HIVE-7987) | Storage based authorization  - NPE for drop view |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-7985](https://issues.apache.org/jira/browse/HIVE-7985) | With CBO enabled cross product is generated when a subquery is present |  Critical | CBO | Mostafa Mokhtar | Laljo John Pullokkaran |
| [HIVE-7984](https://issues.apache.org/jira/browse/HIVE-7984) | AccumuloOutputFormat Configuration items from StorageHandler not re-set in Configuration in Tez |  Major | StorageHandler, Tez | Josh Elser | Josh Elser |
| [HIVE-7976](https://issues.apache.org/jira/browse/HIVE-7976) | Merge tez branch into trunk (tez 0.5.0) |  Major | . | Gunther Hagleitner | Gopal V |
| [HIVE-7972](https://issues.apache.org/jira/browse/HIVE-7972) | hiveserver2 specific configuration file is not getting used |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-7971](https://issues.apache.org/jira/browse/HIVE-7971) | Support alter table change/replace/add columns for existing partitions |  Major | . | Jason Dere | Jason Dere |
| [HIVE-7957](https://issues.apache.org/jira/browse/HIVE-7957) | Revisit event version handling in dynamic partition pruning on Tez |  Critical | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-7950](https://issues.apache.org/jira/browse/HIVE-7950) | StorageHandler resources aren't added to Tez Session if already Session is already Open |  Major | StorageHandler, Tez | Josh Elser | Josh Elser |
| [HIVE-7949](https://issues.apache.org/jira/browse/HIVE-7949) | Create table LIKE command doesn't set new owner |  Major | Query Processor | Pala M Muthaia | Pala M Muthaia |
| [HIVE-7946](https://issues.apache.org/jira/browse/HIVE-7946) | CBO: Merge CBO changes to Trunk |  Major | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-7944](https://issues.apache.org/jira/browse/HIVE-7944) | current update stats for columns of a partition of a table is not correct |  Major | Statistics | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-7943](https://issues.apache.org/jira/browse/HIVE-7943) | hive.security.authorization.createtable.owner.grants is ineffective with Default Authorization |  Major | Authorization | Ashu Pachauri | Ashu Pachauri |
| [HIVE-7936](https://issues.apache.org/jira/browse/HIVE-7936) | Support for handling Thrift Union types |  Major | Serializers/Deserializers | Suma Shivaprasad | Suma Shivaprasad |
| [HIVE-7927](https://issues.apache.org/jira/browse/HIVE-7927) | Checking sticky bit needs shim |  Trivial | Shims | Navis | Navis |
| [HIVE-7919](https://issues.apache.org/jira/browse/HIVE-7919) | sql std auth: user with 'admin option' for role should be able to list all users in the role |  Blocker | Authorization, SQLStandardAuthorization | Thejas M Nair | Thejas M Nair |
| [HIVE-7915](https://issues.apache.org/jira/browse/HIVE-7915) | Expose High and Low value in plan.ColStatistics |  Minor | Query Processor | Harish Butani | Harish Butani |
| [HIVE-7914](https://issues.apache.org/jira/browse/HIVE-7914) | Simplify join predicates for CBO to avoid cross products |  Major | CBO | Mostafa Mokhtar | Laljo John Pullokkaran |
| [HIVE-7911](https://issues.apache.org/jira/browse/HIVE-7911) | Guaranteed ClassCastException in AccumuloRangeGenerator |  Major | StorageHandler | Lars Francke | Lars Francke |
| [HIVE-7902](https://issues.apache.org/jira/browse/HIVE-7902) | Cleanup hbase-handler/pom.xml dependency list |  Minor | Build Infrastructure | Venki Korukanti | Venki Korukanti |
| [HIVE-7901](https://issues.apache.org/jira/browse/HIVE-7901) | CLONE - pig -useHCatalog with embedded metastore fails to pass command line args to metastore (org.apache.hive.hcatalog version) |  Major | HCatalog | Sushanth Sowmyan | Eric Hanson |
| [HIVE-7899](https://issues.apache.org/jira/browse/HIVE-7899) | txnMgr should be session specific |  Major | Transactions | Alan Gates | Alan Gates |
| [HIVE-7897](https://issues.apache.org/jira/browse/HIVE-7897) | ObjectStore not using getPassword() for JDO connection string |  Major | Metastore, Security | Jason Dere | Jason Dere |
| [HIVE-7895](https://issues.apache.org/jira/browse/HIVE-7895) | Storage based authorization should consider sticky bit for drop actions |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-7892](https://issues.apache.org/jira/browse/HIVE-7892) | Thrift Set type not working with Hive |  Major | Serializers/Deserializers | Satish Mittal | Satish Mittal |
| [HIVE-7891](https://issues.apache.org/jira/browse/HIVE-7891) | Table-creation fails through HCatClient for Oracle-based metastore. |  Critical | HCatalog, Metastore | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-7890](https://issues.apache.org/jira/browse/HIVE-7890) | SessionState creates HMS Client while not impersonating |  Major | . | Brock Noland | Brock Noland |
| [HIVE-7889](https://issues.apache.org/jira/browse/HIVE-7889) | Query fails with char partition column |  Major | Serializers/Deserializers | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-7887](https://issues.apache.org/jira/browse/HIVE-7887) | VectorFileSinkOp does not publish the stats correctly |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7883](https://issues.apache.org/jira/browse/HIVE-7883) | DBTxnManager trying to close already closed metastore client connection |  Major | Metastore, Transactions | Mostafa Mokhtar | Alan Gates |
| [HIVE-7878](https://issues.apache.org/jira/browse/HIVE-7878) | add -- SORT\_BEFORE\_DIFF to optimize\_nullscan.q test |  Minor | Tests | Venki Korukanti | Venki Korukanti |
| [HIVE-7865](https://issues.apache.org/jira/browse/HIVE-7865) | Extend TestFileDump test case to printout ORC row index information |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7863](https://issues.apache.org/jira/browse/HIVE-7863) | Potential null reference in TxnDbUtil#prepareDb() |  Minor | . | Ted Yu | Lars Francke |
| [HIVE-7859](https://issues.apache.org/jira/browse/HIVE-7859) | Tune zlib compression in ORC to account for the encoding strategy |  Major | File Formats | Gopal V | Gopal V |
| [HIVE-7857](https://issues.apache.org/jira/browse/HIVE-7857) | Hive query fails after Tez session times out |  Critical | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-7851](https://issues.apache.org/jira/browse/HIVE-7851) | Fix NPE in split generation on Tez 0.5 |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-7846](https://issues.apache.org/jira/browse/HIVE-7846) | authorization api should support group, not assume case insensitive role names |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-7841](https://issues.apache.org/jira/browse/HIVE-7841) | Case, When, Lead, Lag UDF is missing annotation |  Major | Documentation, UDF | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-7840](https://issues.apache.org/jira/browse/HIVE-7840) | Generated hive-default.xml.template mistakenly refers to property "name"s as "key"s |  Minor | . | Wilbur Yang | Wilbur Yang |
| [HIVE-7829](https://issues.apache.org/jira/browse/HIVE-7829) | Entity.getLocation can throw an NPE |  Major | . | Brock Noland | Brock Noland |
| [HIVE-7828](https://issues.apache.org/jira/browse/HIVE-7828) | TestCLIDriver.parquet\_join.q is failing on trunk |  Major | . | Brock Noland | Brock Noland |
| [HIVE-7824](https://issues.apache.org/jira/browse/HIVE-7824) | CLIServer.getOperationStatus eats ExceutionException |  Blocker | . | Brock Noland | Brock Noland |
| [HIVE-7823](https://issues.apache.org/jira/browse/HIVE-7823) | HIVE-6185 removed Partition.getPartition |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-7813](https://issues.apache.org/jira/browse/HIVE-7813) | Hive join key not null shouldn't be generated for partition column |  Major | Query Processor | Laljo John Pullokkaran | Ashutosh Chauhan |
| [HIVE-7812](https://issues.apache.org/jira/browse/HIVE-7812) | Disable CombineHiveInputFormat when ACID format is used |  Major | File Formats | Owen O'Malley | Owen O'Malley |
| [HIVE-7807](https://issues.apache.org/jira/browse/HIVE-7807) | Refer to umask property using FsPermission.UMASK\_LABEL. |  Major | . | Venki Korukanti | Venki Korukanti |
| [HIVE-7800](https://issues.apache.org/jira/browse/HIVE-7800) | Parquet Column Index Access Schema Size Checking |  Critical | . | Daniel Weeks | Daniel Weeks |
| [HIVE-7786](https://issues.apache.org/jira/browse/HIVE-7786) | add --SORT\_BEFORE\_DIFF to union all tez .q.out files |  Major | . | Brock Noland | Brock Noland |
| [HIVE-7784](https://issues.apache.org/jira/browse/HIVE-7784) | Created the needed indexes on Hive.PART\_COL\_STATS for CBO |  Major | CBO | Mostafa Mokhtar | Mostafa Mokhtar |
| [HIVE-7777](https://issues.apache.org/jira/browse/HIVE-7777) | Add CSV Serde based on OpenCSV |  Major | Serializers/Deserializers | Ferdinand Xu | Ferdinand Xu |
| [HIVE-7774](https://issues.apache.org/jira/browse/HIVE-7774) | Issues with location path for temporary external tables |  Major | . | Jason Dere | Jason Dere |
| [HIVE-7771](https://issues.apache.org/jira/browse/HIVE-7771) | ORC PPD fails for some decimal predicates |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7770](https://issues.apache.org/jira/browse/HIVE-7770) | Undo backward-incompatible behaviour change introduced by HIVE-7341 |  Major | HCatalog | Sushanth Sowmyan | Mithun Radhakrishnan |
| [HIVE-7769](https://issues.apache.org/jira/browse/HIVE-7769) | add --SORT\_BEFORE\_DIFF to union all .q tests |  Major | . | Na Yang | Na Yang |
| [HIVE-7764](https://issues.apache.org/jira/browse/HIVE-7764) | Support all JDBC-HiveServer2 authentication modes on a secure cluster |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-7760](https://issues.apache.org/jira/browse/HIVE-7760) | Constants in VirtualColumn should be final |  Trivial | Query Processor | Brock Noland | Eugene Koifman |
| [HIVE-7753](https://issues.apache.org/jira/browse/HIVE-7753) | Same operand appears on both sides of \> in DataType#compareByteArray() |  Major | HCatalog | Ted Yu | Ted Yu |
| [HIVE-7744](https://issues.apache.org/jira/browse/HIVE-7744) | In Windowing Streaming mode Avg and Sum give incorrect results when Wdw size is same as partition size |  Major | Query Processor | Harish Butani | Harish Butani |
| [HIVE-7738](https://issues.apache.org/jira/browse/HIVE-7738) | tez select sum(decimal) from union all of decimal and null throws NPE |  Major | Serializers/Deserializers | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-7733](https://issues.apache.org/jira/browse/HIVE-7733) | Ambiguous column reference error on query |  Major | . | Jason Dere | Navis |
| [HIVE-7730](https://issues.apache.org/jira/browse/HIVE-7730) | Extend ReadEntity to add accessed columns from query |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [HIVE-7722](https://issues.apache.org/jira/browse/HIVE-7722) | TestJdbcDriver2.testDatabaseMetaData fails after HIVE-7676 |  Trivial | Tests | Navis | Navis |
| [HIVE-7710](https://issues.apache.org/jira/browse/HIVE-7710) | Rename table across database might fail |  Major | . | Chun Chen | Chun Chen |
| [HIVE-7704](https://issues.apache.org/jira/browse/HIVE-7704) | Create tez task for fast file merging |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7701](https://issues.apache.org/jira/browse/HIVE-7701) | Upgrading tez to 0.4.1 causes metadata only query to fail. |  Major | Tests | Vikram Dixit K | Gunther Hagleitner |
| [HIVE-7700](https://issues.apache.org/jira/browse/HIVE-7700) | authorization api - HivePrivilegeObject for permanent function should have database name set |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-7695](https://issues.apache.org/jira/browse/HIVE-7695) | hive stats issue when insert query is appending data into table |  Major | Logical Optimizer, Statistics | Thejas M Nair | Ashutosh Chauhan |
| [HIVE-7694](https://issues.apache.org/jira/browse/HIVE-7694) | SMB join on tables differing by number of sorted by columns with same join prefix fails |  Major | Query Processor | Suma Shivaprasad | Suma Shivaprasad |
| [HIVE-7683](https://issues.apache.org/jira/browse/HIVE-7683) | Test TestMinimrCliDriver.testCliDriver\_ql\_rewrite\_gbtoidx is still failing |  Minor | . | Navis | Navis |
| [HIVE-7682](https://issues.apache.org/jira/browse/HIVE-7682) | HadoopThriftAuthBridge20S should not reset configuration unless required |  Major | . | Brock Noland | Brock Noland |
| [HIVE-7681](https://issues.apache.org/jira/browse/HIVE-7681) | qualified tablenames usage does not work with several alter-table commands |  Major | . | Thejas M Nair | Navis |
| [HIVE-7680](https://issues.apache.org/jira/browse/HIVE-7680) | Do not throw SQLException for HiveStatement getMoreResults and setEscapeProcessing(false) |  Minor | JDBC | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-7678](https://issues.apache.org/jira/browse/HIVE-7678) | add more test cases for tables qualified with database/schema name |  Major | Tests | Thejas M Nair | Thejas M Nair |
| [HIVE-7676](https://issues.apache.org/jira/browse/HIVE-7676) | JDBC: Support more DatabaseMetaData, ResultSetMetaData methods |  Major | JDBC | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-7673](https://issues.apache.org/jira/browse/HIVE-7673) | Authorization api: missing privilege objects in create table/view |  Major | Authorization, SQLStandardAuthorization | Thejas M Nair | Thejas M Nair |
| [HIVE-7669](https://issues.apache.org/jira/browse/HIVE-7669) | parallel order by clause on a string column fails with IOException: Split points are out of order |  Major | HiveServer2, Query Processor, SQL | Vishal Kamath | Navis |
| [HIVE-7667](https://issues.apache.org/jira/browse/HIVE-7667) | handle cast for long in get\_aggr\_stats() api for metastore for mysql |  Major | Metastore, Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7666](https://issues.apache.org/jira/browse/HIVE-7666) | Join selectivity calculation should use exponential back-off for conjunction predicates |  Major | CBO | Mostafa Mokhtar | Laljo John Pullokkaran |
| [HIVE-7658](https://issues.apache.org/jira/browse/HIVE-7658) | Hive search order for hive-site.xml when using --config option |  Minor | CLI | James Spurin | Venki Korukanti |
| [HIVE-7649](https://issues.apache.org/jira/browse/HIVE-7649) | Support column stats with temporary tables |  Major | Statistics | Jason Dere | Jason Dere |
| [HIVE-7648](https://issues.apache.org/jira/browse/HIVE-7648) | authorization check api should provide table for create table,drop/create index, and db for create/switch db |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-7647](https://issues.apache.org/jira/browse/HIVE-7647) | Beeline does not honor --headerInterval and --color when executing with "-e" |  Minor | CLI | Naveen Gangam | Naveen Gangam |
| [HIVE-7645](https://issues.apache.org/jira/browse/HIVE-7645) | Hive CompactorMR job set NUM\_BUCKETS mistake |  Major | Transactions | Xiaoyu Wang | Xiaoyu Wang |
| [HIVE-7638](https://issues.apache.org/jira/browse/HIVE-7638) | Disallow CREATE VIEW when created with a temporary table |  Major | . | Jason Dere | Jason Dere |
| [HIVE-7637](https://issues.apache.org/jira/browse/HIVE-7637) | Change throws clause for Hadoop23Shims.ProxyFileSystem23.access() |  Major | Shims | Jason Dere | Jason Dere |
| [HIVE-7635](https://issues.apache.org/jira/browse/HIVE-7635) | Query having same aggregate functions but different case throws IndexOutOfBoundsException |  Major | Query Processor | Chaoyu Tang | Chaoyu Tang |
| [HIVE-7634](https://issues.apache.org/jira/browse/HIVE-7634) | Use Configuration.getPassword() if available to eliminate passwords from hive-site.xml |  Major | Security | Jason Dere | Jason Dere |
| [HIVE-7629](https://issues.apache.org/jira/browse/HIVE-7629) | Problem in SMB Joins between two Parquet tables |  Major | Serializers/Deserializers | Suma Shivaprasad | Suma Shivaprasad |
| [HIVE-7623](https://issues.apache.org/jira/browse/HIVE-7623) | hive partition rename fails if filesystem cache is disabled |  Major | Metastore | agate | Navis |
| [HIVE-7620](https://issues.apache.org/jira/browse/HIVE-7620) | Hive metastore fails to start in secure mode due to "java.lang.NoSuchFieldError: SASL\_PROPS" error |  Major | Metastore | Thejas M Nair | Thejas M Nair |
| [HIVE-7618](https://issues.apache.org/jira/browse/HIVE-7618) | TestDDLWithRemoteMetastoreSecondNamenode unit test failure |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-7600](https://issues.apache.org/jira/browse/HIVE-7600) | ConstantPropagateProcFactory uses reference equality on Boolean |  Major | . | Ted Yu | KangHS |
| [HIVE-7599](https://issues.apache.org/jira/browse/HIVE-7599) | NPE in MergeTask#main() when -format is absent |  Minor | . | Ted Yu | DJ Choi |
| [HIVE-7595](https://issues.apache.org/jira/browse/HIVE-7595) | isKerberosMode() does a case sensitive comparison |  Minor | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [HIVE-7592](https://issues.apache.org/jira/browse/HIVE-7592) | List Jars or Files are not supported by Beeline |  Major | CLI | Ferdinand Xu | Navis |
| [HIVE-7583](https://issues.apache.org/jira/browse/HIVE-7583) | Use FileSystem.access() if available to check file access for user |  Major | . | Jason Dere | Jason Dere |
| [HIVE-7579](https://issues.apache.org/jira/browse/HIVE-7579) | error message for 'drop admin role' in sql std auth mode is not informative |  Major | Authorization, SQLStandardAuthorization | Deepesh Khandelwal | Thejas M Nair |
| [HIVE-7576](https://issues.apache.org/jira/browse/HIVE-7576) | Add PartitionSpec support in HCatClient API |  Critical | HCatalog, Metastore | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-7574](https://issues.apache.org/jira/browse/HIVE-7574) | CommonJoinOperator.checkAndGenObject calls LOG.Trace per row from probe side in a HashMap join consuming 4% of the CPU |  Major | Query Processor | Mostafa Mokhtar | Mostafa Mokhtar |
| [HIVE-7563](https://issues.apache.org/jira/browse/HIVE-7563) | ClassLoader should be released from LogFactory |  Major | Query Processor | Navis | Navis |
| [HIVE-7558](https://issues.apache.org/jira/browse/HIVE-7558) | HCatLoader reuses credentials across jobs |  Major | HCatalog | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HIVE-7557](https://issues.apache.org/jira/browse/HIVE-7557) | When reduce is vectorized, dynpart\_sort\_opt\_vectorization.q under Tez fails |  Major | . | Matt McCline | Matt McCline |
| [HIVE-7553](https://issues.apache.org/jira/browse/HIVE-7553) | avoid the scheduling maintenance window for every jar change |  Major | HiveServer2 | Ferdinand Xu | Ferdinand Xu |
| [HIVE-7539](https://issues.apache.org/jira/browse/HIVE-7539) | streaming windowing UDAF seems to be broken without Partition Spec |  Major | PTF-Windowing | Laljo John Pullokkaran | Navis |
| [HIVE-7538](https://issues.apache.org/jira/browse/HIVE-7538) | Fix eclipse:eclipse after HIVE-7496 |  Major | Build Infrastructure | Szehon Ho | Szehon Ho |
| [HIVE-7533](https://issues.apache.org/jira/browse/HIVE-7533) | sql std auth - set authorization privileges for tables when created from hive cli |  Major | Authorization, SQLStandardAuthorization | Thejas M Nair | Thejas M Nair |
| [HIVE-7531](https://issues.apache.org/jira/browse/HIVE-7531) | auxpath parameter does not handle paths relative to current working directory. |  Major | CLI | Abhishek Agarwal | Abhishek Agarwal |
| [HIVE-7529](https://issues.apache.org/jira/browse/HIVE-7529) | load data query fails on hdfs federation + viewfs |  Major | . | Xiaoshuang LU | Navis |
| [HIVE-7522](https://issues.apache.org/jira/browse/HIVE-7522) | Update .q.out for cluster\_tasklog\_retrieval.q test |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7521](https://issues.apache.org/jira/browse/HIVE-7521) | Reference equality is used on Boolean in NullScanOptimizer#WhereFalseProcessor#process() |  Minor | Physical Optimizer | Ted Yu | KangHS |
| [HIVE-7514](https://issues.apache.org/jira/browse/HIVE-7514) | Vectorization does not handle constant expression whose value is NULL |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-7508](https://issues.apache.org/jira/browse/HIVE-7508) | Kerberos support for streaming |  Major | HCatalog | Roshan Naik | Roshan Naik |
| [HIVE-7494](https://issues.apache.org/jira/browse/HIVE-7494) | ORC returns empty rows for constant folded date queries |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7490](https://issues.apache.org/jira/browse/HIVE-7490) | Revert ORC stripe size |  Trivial | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7488](https://issues.apache.org/jira/browse/HIVE-7488) | pass column names being used for inputs to authorization api |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-7486](https://issues.apache.org/jira/browse/HIVE-7486) | Delete jar should close current classloader |  Minor | . | Navis | Navis |
| [HIVE-7482](https://issues.apache.org/jira/browse/HIVE-7482) | The execution side changes for SMB join in hive-tez |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-7481](https://issues.apache.org/jira/browse/HIVE-7481) | The planning side changes for SMB join on hive-tez |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-7473](https://issues.apache.org/jira/browse/HIVE-7473) | Null values in DECIMAL columns cause serialization issues with HCatalog |  Major | Serializers/Deserializers | Craig Condit | Craig Condit |
| [HIVE-7472](https://issues.apache.org/jira/browse/HIVE-7472) | CLONE - Import fails for tables created with default text, sequence and orc file formats using HCatalog API |  Major | HCatalog | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-7470](https://issues.apache.org/jira/browse/HIVE-7470) | Wrong Thrift declaration for {{ShowCompactResponseElement}} |  Minor | Metastore, Thrift API | Damien Carol | Damien Carol |
| [HIVE-7459](https://issues.apache.org/jira/browse/HIVE-7459) | Fix NPE when an empty file is included in a Hive query that uses CombineHiveInputFormat |  Major | . | Brock Noland | Ryan Blue |
| [HIVE-7452](https://issues.apache.org/jira/browse/HIVE-7452) | Boolean comparison is done through reference equality rather than using equals |  Minor | . | Ted Yu | KangHS |
| [HIVE-7451](https://issues.apache.org/jira/browse/HIVE-7451) | pass function name in create/drop function to authorization api |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-7450](https://issues.apache.org/jira/browse/HIVE-7450) | Database should inherit perms of warehouse dir |  Major | Security | Szehon Ho | Szehon Ho |
| [HIVE-7441](https://issues.apache.org/jira/browse/HIVE-7441) | Custom partition scheme gets rewritten with hive scheme upon concatenate |  Minor | CLI | Johndee Burks | Chaoyu Tang |
| [HIVE-7433](https://issues.apache.org/jira/browse/HIVE-7433) | ColumnMappins.ColumnMapping should expose public accessors for its fields |  Trivial | HBase Handler | Andrew Mains | Andrew Mains |
| [HIVE-7429](https://issues.apache.org/jira/browse/HIVE-7429) | Set replication for archive called before file exists |  Critical | . | Daniel Weeks | Daniel Weeks |
| [HIVE-7426](https://issues.apache.org/jira/browse/HIVE-7426) | ClassCastException: ...IntWritable cannot be cast to ...Text involving ql.udf.generic.GenericUDFBasePad.evaluate |  Major | . | Matt McCline | Matt McCline |
| [HIVE-7424](https://issues.apache.org/jira/browse/HIVE-7424) | HiveException: Error evaluating concat(concat('      ', str2), '      ') in ql.exec.vector.VectorSelectOperator.processOp |  Major | . | Matt McCline | Matt McCline |
| [HIVE-7423](https://issues.apache.org/jira/browse/HIVE-7423) | produce hive-exec-core.jar from ql module |  Major | Build Infrastructure | Eugene Koifman | Eugene Koifman |
| [HIVE-7422](https://issues.apache.org/jira/browse/HIVE-7422) | Array out of bounds exception involving ql.exec.vector.expressions.aggregates.gen.VectorUDAFAvgDouble |  Major | . | Matt McCline | Matt McCline |
| [HIVE-7421](https://issues.apache.org/jira/browse/HIVE-7421) | Make VectorUDFDateString use the same date parsing and formatting as GenericUDFDate |  Major | Vectorization | Matt McCline | Matt McCline |
| [HIVE-7419](https://issues.apache.org/jira/browse/HIVE-7419) | Missing break in SemanticAnalyzer#getTableDescFromSerDe() |  Minor | . | Ted Yu | Navis |
| [HIVE-7417](https://issues.apache.org/jira/browse/HIVE-7417) | select count(1) from ... where true; fails in optimizer |  Major | Logical Optimizer, Query Processor | Gopal V | Hari Sankar Sivarama Subramaniyan |
| [HIVE-7415](https://issues.apache.org/jira/browse/HIVE-7415) | Test TestMinimrCliDriver.testCliDriver\_ql\_rewrite\_gbtoidx failing |  Major | Tests | Jason Dere | Navis |
| [HIVE-7414](https://issues.apache.org/jira/browse/HIVE-7414) | Update golden file for MiniTez temp\_table.q |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-7412](https://issues.apache.org/jira/browse/HIVE-7412) | column stats collection throws exception if all values for a column is null |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7409](https://issues.apache.org/jira/browse/HIVE-7409) | Add workaround for a deadlock issue of Class.getAnnotation() |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [HIVE-7399](https://issues.apache.org/jira/browse/HIVE-7399) | Timestamp type is not copied by ObjectInspectorUtils.copyToStandardObject |  Major | Query Processor | Navis | Navis |
| [HIVE-7397](https://issues.apache.org/jira/browse/HIVE-7397) | Set the default threshold for fetch task conversion to 1Gb |  Major | . | Gopal V | Gopal V |
| [HIVE-7396](https://issues.apache.org/jira/browse/HIVE-7396) | BucketingSortingReduceSinkOptimizer throws NullPointException during ETL |  Trivial | . | Gopal V | Navis |
| [HIVE-7394](https://issues.apache.org/jira/browse/HIVE-7394) | ORC writer logging fails when the padding is \< 0.01 |  Trivial | File Formats | Gopal V | Gopal V |
| [HIVE-7389](https://issues.apache.org/jira/browse/HIVE-7389) | Reduce number of metastore calls in MoveTask (when loading dynamic partitions) |  Critical | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-7385](https://issues.apache.org/jira/browse/HIVE-7385) | Optimize for empty relation scans |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7376](https://issues.apache.org/jira/browse/HIVE-7376) | add minimizeJar to jdbc/pom.xml |  Major | . | Eugene Koifman | Navis |
| [HIVE-7374](https://issues.apache.org/jira/browse/HIVE-7374) | SHOW COMPACTIONS fail with remote metastore when there are no compations |  Major | Metastore, Thrift API | Damien Carol | Damien Carol |
| [HIVE-7373](https://issues.apache.org/jira/browse/HIVE-7373) | Hive should not remove trailing zeros for decimal numbers |  Major | Types | Xuefu Zhang | Sergio Peña |
| [HIVE-7366](https://issues.apache.org/jira/browse/HIVE-7366) | getDatabase using direct sql |  Critical | Metastore | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-7363](https://issues.apache.org/jira/browse/HIVE-7363) | VectorExpressionWriterDecimal is missing null check in setValue() |  Major | Vectorization | Jason Dere | Jason Dere |
| [HIVE-7359](https://issues.apache.org/jira/browse/HIVE-7359) | Stats based compute query replies fail to do simple column transforms |  Major | Logical Optimizer | Gopal V | Ashutosh Chauhan |
| [HIVE-7356](https://issues.apache.org/jira/browse/HIVE-7356) | Table level stats collection fail for partitioned tables |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7354](https://issues.apache.org/jira/browse/HIVE-7354) | windows:Need to set hbase jars in hadoop classpath explicitly |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-7353](https://issues.apache.org/jira/browse/HIVE-7353) | HiveServer2 using embedded MetaStore leaks JDOPersistanceManager |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-7352](https://issues.apache.org/jira/browse/HIVE-7352) | Queries without tables fail under Tez |  Major | Tez | Craig Condit | Gunther Hagleitner |
| [HIVE-7346](https://issues.apache.org/jira/browse/HIVE-7346) | Wrong results caused by hive ppd under specific join condition |  Major | . | dima machlin | Navis |
| [HIVE-7345](https://issues.apache.org/jira/browse/HIVE-7345) | Beeline changes its prompt to reflect successful database connection even after failing to connect |  Major | . | Ashish K Singh | Ashish K Singh |
| [HIVE-7344](https://issues.apache.org/jira/browse/HIVE-7344) | Add streaming support in Windowing mode for FirstVal, LastVal |  Major | Query Processor | Harish Butani | Harish Butani |
| [HIVE-7342](https://issues.apache.org/jira/browse/HIVE-7342) | support hiveserver2,metastore specific config files |  Major | Configuration, HiveServer2, Metastore | Thejas M Nair | Thejas M Nair |
| [HIVE-7339](https://issues.apache.org/jira/browse/HIVE-7339) | hive --orcfiledump command is not supported on Windows |  Major | CLI, Windows | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-7326](https://issues.apache.org/jira/browse/HIVE-7326) | Hive complains invalid column reference with 'having' aggregate predicates |  Major | . | Hari Sankar Sivarama Subramaniyan | Navis |
| [HIVE-7325](https://issues.apache.org/jira/browse/HIVE-7325) | Support non-constant expressions for ARRAY/MAP type indices. |  Major | . | Mala Chikka Kempanna | Navis |
| [HIVE-7323](https://issues.apache.org/jira/browse/HIVE-7323) | Date type stats in ORC sometimes go stale |  Minor | Statistics | Navis | Navis |
| [HIVE-7317](https://issues.apache.org/jira/browse/HIVE-7317) | authorization\_explain.q fails when run in sequence |  Major | Authorization, Tests | Thejas M Nair | Navis |
| [HIVE-7314](https://issues.apache.org/jira/browse/HIVE-7314) | Wrong results of UDF when hive.cache.expr.evaluation is set |  Major | . | dima machlin | Navis |
| [HIVE-7304](https://issues.apache.org/jira/browse/HIVE-7304) | Transitive Predicate Propagation doesn't happen properly after HIVE-7159 |  Major | Query Processor | Harish Butani | Harish Butani |
| [HIVE-7303](https://issues.apache.org/jira/browse/HIVE-7303) | IllegalMonitorStateException when stmtHandle is null in HiveStatement |  Major | JDBC | Navis | Navis |
| [HIVE-7302](https://issues.apache.org/jira/browse/HIVE-7302) | Allow Auto-reducer parallelism to be turned off by a logical optimizer |  Major | Tez | Gopal V | Gunther Hagleitner |
| [HIVE-7298](https://issues.apache.org/jira/browse/HIVE-7298) | desc database extended does not show properties of the database |  Minor | Query Processor | Navis | Navis |
| [HIVE-7294](https://issues.apache.org/jira/browse/HIVE-7294) | sql std auth - authorize show grant statements |  Major | Authorization, SQLStandardAuthorization | Thejas M Nair | Thejas M Nair |
| [HIVE-7287](https://issues.apache.org/jira/browse/HIVE-7287) | hive --rcfilecat command is broken on Windows |  Major | CLI, Windows | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-7282](https://issues.apache.org/jira/browse/HIVE-7282) | HCatLoader fail to load Orc map with null key |  Major | HCatalog | Daniel Dai | Daniel Dai |
| [HIVE-7281](https://issues.apache.org/jira/browse/HIVE-7281) | DbTxnManager acquiring wrong level of lock for dynamic partitioning |  Major | Locking, Transactions | Alan Gates | Alan Gates |
| [HIVE-7279](https://issues.apache.org/jira/browse/HIVE-7279) | UDF format\_number() does not work on DECIMAL types |  Minor | UDF | Szehon Ho | Wilbur Yang |
| [HIVE-7274](https://issues.apache.org/jira/browse/HIVE-7274) | Update PTest2 to JClouds 1.7.3 |  Major | . | Brock Noland | Brock Noland |
| [HIVE-7271](https://issues.apache.org/jira/browse/HIVE-7271) | Speed up unit tests |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-7268](https://issues.apache.org/jira/browse/HIVE-7268) | On Windows Hive jobs in Webhcat always run on default MR mode |  Major | WebHCat | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-7265](https://issues.apache.org/jira/browse/HIVE-7265) | BINARY columns use BytesWritable::getBytes() without ::getLength() |  Minor | Query Processor | Gopal V | Navis |
| [HIVE-7263](https://issues.apache.org/jira/browse/HIVE-7263) | Missing fixes from review of parquet-timestamp |  Major | . | Szehon Ho | Szehon Ho |
| [HIVE-7257](https://issues.apache.org/jira/browse/HIVE-7257) | UDF format\_number() does not work on FLOAT types |  Major | . | Wilbur Yang | Wilbur Yang |
| [HIVE-7251](https://issues.apache.org/jira/browse/HIVE-7251) | Fix StorageDescriptor usage in unit tests |  Minor | Tests | Pankit Thapar | Pankit Thapar |
| [HIVE-7249](https://issues.apache.org/jira/browse/HIVE-7249) | HiveTxnManager.closeTxnManger() throws if called after commitTxn() |  Major | Locking | Eugene Koifman | Alan Gates |
| [HIVE-7247](https://issues.apache.org/jira/browse/HIVE-7247) | Fix itests using hadoop-1 profile |  Major | Testing Infrastructure | Szehon Ho | Szehon Ho |
| [HIVE-7246](https://issues.apache.org/jira/browse/HIVE-7246) | Hive transaction manager hardwires bonecp as the JDBC pooling implementation |  Major | Transactions | Alan Gates | Alan Gates |
| [HIVE-7245](https://issues.apache.org/jira/browse/HIVE-7245) | Fix parquet\_columnar |  Major | Tests | Szehon Ho | Szehon Ho |
| [HIVE-7242](https://issues.apache.org/jira/browse/HIVE-7242) | alter table drop partition is acquiring the wrong type of lock |  Major | Locking | Alan Gates | Alan Gates |
| [HIVE-7241](https://issues.apache.org/jira/browse/HIVE-7241) | Wrong lock acquired for alter table rename partition |  Major | Locking | Alan Gates | Alan Gates |
| [HIVE-7237](https://issues.apache.org/jira/browse/HIVE-7237) | hive.exec.parallel=true w/ Hive 0.13/Tez causes application to linger forever |  Major | Tez | Douglas Moore | Navis |
| [HIVE-7236](https://issues.apache.org/jira/browse/HIVE-7236) | Tez progress monitor should indicate running/failed tasks |  Minor | Tez | Gopal V | Gopal V |
| [HIVE-7235](https://issues.apache.org/jira/browse/HIVE-7235) | TABLESAMPLE on join table is regarded as alias |  Trivial | Query Processor | Navis | Navis |
| [HIVE-7234](https://issues.apache.org/jira/browse/HIVE-7234) | Select on decimal column throws NPE |  Major | . | Ashish K Singh | Ashish K Singh |
| [HIVE-7232](https://issues.apache.org/jira/browse/HIVE-7232) | VectorReduceSink is emitting incorrect JOIN keys |  Major | Query Processor | Gopal V | Gopal V |
| [HIVE-7229](https://issues.apache.org/jira/browse/HIVE-7229) | String is compared using equal in HiveMetaStore#HMSHandler#init() |  Minor | . | Ted Yu | KangHS |
| [HIVE-7228](https://issues.apache.org/jira/browse/HIVE-7228) | StreamPrinter should be joined to calling thread |  Minor | CLI | Pankit Thapar | Pankit Thapar |
| [HIVE-7226](https://issues.apache.org/jira/browse/HIVE-7226) | Windowing Streaming mode causes NPE for empty partitions |  Major | . | Harish Butani | Harish Butani |
| [HIVE-7225](https://issues.apache.org/jira/browse/HIVE-7225) | Unclosed Statement's in TxnHandler |  Major | . | Ted Yu | steve, Oh |
| [HIVE-7220](https://issues.apache.org/jira/browse/HIVE-7220) | Empty dir in external table causes issue (root\_dir\_external\_table.q failure) |  Major | . | Szehon Ho | Szehon Ho |
| [HIVE-7213](https://issues.apache.org/jira/browse/HIVE-7213) | COUNT(*) returns out-dated count value after TRUNCATE |  Major | Query Processor, Statistics | Moustafa Aboul Atta | Ashutosh Chauhan |
| [HIVE-7210](https://issues.apache.org/jira/browse/HIVE-7210) | NPE with "No plan file found" when running Driver instances on multiple threads |  Major | . | Jason Dere | Jason Dere |
| [HIVE-7209](https://issues.apache.org/jira/browse/HIVE-7209) | allow metastore authorization api calls to be restricted to certain invokers |  Major | Authentication, Metastore | Thejas M Nair | Thejas M Nair |
| [HIVE-7202](https://issues.apache.org/jira/browse/HIVE-7202) | DbTxnManager deadlocks in hcatalog.cli.TestSematicAnalysis.testAlterTblFFpart() |  Major | Locking | Eugene Koifman | Alan Gates |
| [HIVE-7201](https://issues.apache.org/jira/browse/HIVE-7201) | Fix TestHiveConf#testConfProperties test case |  Minor | Tests | Pankit Thapar | Pankit Thapar |
| [HIVE-7200](https://issues.apache.org/jira/browse/HIVE-7200) | Beeline output displays column heading even if --showHeader=false is set |  Minor | CLI | Naveen Gangam | Naveen Gangam |
| [HIVE-7199](https://issues.apache.org/jira/browse/HIVE-7199) | Cannot alter table to parquet |  Major | Query Processor | Vasanth kumar RJ | Vasanth kumar RJ |
| [HIVE-7192](https://issues.apache.org/jira/browse/HIVE-7192) | Hive Streaming - Some required settings are not mentioned in the documentation |  Major | HCatalog | Roshan Naik | Roshan Naik |
| [HIVE-7191](https://issues.apache.org/jira/browse/HIVE-7191) | optimized map join hash table has a bug when it reaches 2Gb |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-7190](https://issues.apache.org/jira/browse/HIVE-7190) | WebHCat launcher task failure can cause two concurent user jobs to run |  Major | WebHCat | Ivan Mitic | Ivan Mitic |
| [HIVE-7188](https://issues.apache.org/jira/browse/HIVE-7188) | sum(if()) returns wrong results with vectorization |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-7187](https://issues.apache.org/jira/browse/HIVE-7187) | Reconcile jetty versions in hive |  Major | HiveServer2, Web UI, WebHCat | Vaibhav Gumashta | Ashutosh Chauhan |
| [HIVE-7183](https://issues.apache.org/jira/browse/HIVE-7183) | Size of partColumnGrants should be checked in ObjectStore#removeRole() |  Minor | . | Ted Yu | SUYEON LEE |
| [HIVE-7182](https://issues.apache.org/jira/browse/HIVE-7182) | ResultSet is not closed in JDBCStatsPublisher#init() |  Minor | . | Ted Yu | steve, Oh |
| [HIVE-7176](https://issues.apache.org/jira/browse/HIVE-7176) | FileInputStream is not closed in Commands#properties() |  Minor | . | Ted Yu | Navis |
| [HIVE-7174](https://issues.apache.org/jira/browse/HIVE-7174) | Do not accept string as scale and precision when reading Avro schema |  Major | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [HIVE-7173](https://issues.apache.org/jira/browse/HIVE-7173) | Support HIVE-4867 on mapjoin of MR Tasks |  Minor | Query Processor | Navis | Navis |
| [HIVE-7170](https://issues.apache.org/jira/browse/HIVE-7170) | Fix display\_colstats\_tbllvl.q in trunk |  Major | . | Prasanth Jayachandran | Navis |
| [HIVE-7169](https://issues.apache.org/jira/browse/HIVE-7169) | HiveServer2 in Http Mode should have a configurable IdleMaxTime timeout |  Major | HiveServer2 | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-7167](https://issues.apache.org/jira/browse/HIVE-7167) | Hive Metastore fails to start with SQLServerException |  Blocker | Metastore | Xiaobing Zhou | Xiaobing Zhou |
| [HIVE-7165](https://issues.apache.org/jira/browse/HIVE-7165) | Fix hive-default.xml.template errors & omissions |  Major | Documentation | Lefty Leverenz | Lefty Leverenz |
| [HIVE-7162](https://issues.apache.org/jira/browse/HIVE-7162) | hadoop-1 build broken by HIVE-7071 |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-7161](https://issues.apache.org/jira/browse/HIVE-7161) | TestMetastoreVersion fails intermittently on trunk |  Major | Tests | Szehon Ho | Szehon Ho |
| [HIVE-7159](https://issues.apache.org/jira/browse/HIVE-7159) | For inner joins push a 'is not null predicate' to the join sources for every non nullSafe join condition |  Major | . | Harish Butani | Harish Butani |
| [HIVE-7155](https://issues.apache.org/jira/browse/HIVE-7155) | WebHCat controller job exceeds container memory limit |  Major | WebHCat | shanyu zhao | shanyu zhao |
| [HIVE-7154](https://issues.apache.org/jira/browse/HIVE-7154) | TestMetrics fails intermittently on the trunk |  Major | Tests | Szehon Ho | Szehon Ho |
| [HIVE-7149](https://issues.apache.org/jira/browse/HIVE-7149) | Parquet not able to handle negative decimal numbers |  Major | Serializers/Deserializers | Xuefu Zhang | Xuefu Zhang |
| [HIVE-7147](https://issues.apache.org/jira/browse/HIVE-7147) | ORC PPD should handle CHAR/VARCHAR types |  Minor | File Formats | Gopal V | Gopal V |
| [HIVE-7146](https://issues.apache.org/jira/browse/HIVE-7146) | posexplode() UDTF fails with a NullPointerException on NULL columns |  Minor | Query Processor | Stephen Veiss | Stephen Veiss |
| [HIVE-7144](https://issues.apache.org/jira/browse/HIVE-7144) | GC pressure during ORC StringDictionary writes |  Major | File Formats | Gopal V | Gopal V |
| [HIVE-7143](https://issues.apache.org/jira/browse/HIVE-7143) | Add Streaming support in Windowing mode for more UDAFs (min/max, lead/lag, fval/lval) |  Major | . | Harish Butani | Harish Butani |
| [HIVE-7135](https://issues.apache.org/jira/browse/HIVE-7135) | Fix test fail of TestTezTask.testSubmit |  Major | Tez | Vikram Dixit K | Navis |
| [HIVE-7131](https://issues.apache.org/jira/browse/HIVE-7131) | Dependencies of fetch task for tez are not shown properly |  Trivial | Query Processor | Navis | Navis |
| [HIVE-7130](https://issues.apache.org/jira/browse/HIVE-7130) | schematool is broken for minor version upgrades (eg 0.13.x) |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-7123](https://issues.apache.org/jira/browse/HIVE-7123) | Follow-up of HIVE-6367 |  Major | Serializers/Deserializers | Xuefu Zhang | Xuefu Zhang |
| [HIVE-7119](https://issues.apache.org/jira/browse/HIVE-7119) | Extended ACL's should be inherited if warehouse perm inheritance enabled |  Major | . | Szehon Ho | Szehon Ho |
| [HIVE-7118](https://issues.apache.org/jira/browse/HIVE-7118) | Oracle upgrade schema scripts do not map Java long datatype columns correctly for transaction related tables |  Major | Database/Schema | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-7117](https://issues.apache.org/jira/browse/HIVE-7117) | Partitions not inheriting table permissions after alter rename partition |  Major | Security | Ashish K Singh | Ashish K Singh |
| [HIVE-7116](https://issues.apache.org/jira/browse/HIVE-7116) | HDFS FileSystem object cache causes permission issues in creating tmp directories |  Major | HiveServer2, Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-7114](https://issues.apache.org/jira/browse/HIVE-7114) | Extra Tez session is started during HiveServer2 startup |  Major | HiveServer2, Tez | Deepesh Khandelwal | Thejas M Nair |
| [HIVE-7112](https://issues.apache.org/jira/browse/HIVE-7112) | Tez processor swallows errors |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-7109](https://issues.apache.org/jira/browse/HIVE-7109) | Resource leak in HBaseStorageHandler |  Major | HBase Handler | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-7107](https://issues.apache.org/jira/browse/HIVE-7107) | Fix HiveServer1 JDBC Driver spec compliancy issue |  Minor | . | Lars Francke | Lars Francke |
| [HIVE-7105](https://issues.apache.org/jira/browse/HIVE-7105) | Enable ReduceRecordProcessor to generate VectorizedRowBatches |  Major | Tez, Vectorization | Rajesh Balamohan | Gopal V |
| [HIVE-7104](https://issues.apache.org/jira/browse/HIVE-7104) | Unit tests are disabled |  Major | . | David Chen | David Chen |
| [HIVE-7099](https://issues.apache.org/jira/browse/HIVE-7099) | Add Decimal datatype support for Windowing |  Major | Query Processor | Harish Butani | Harish Butani |
| [HIVE-7096](https://issues.apache.org/jira/browse/HIVE-7096) | Support grouped splits in Tez partitioned broadcast join |  Major | Tez | Gunther Hagleitner | Vikram Dixit K |
| [HIVE-7092](https://issues.apache.org/jira/browse/HIVE-7092) | Insert overwrite should not delete the original directory |  Major | . | Szehon Ho | Szehon Ho |
| [HIVE-7087](https://issues.apache.org/jira/browse/HIVE-7087) | Remove lineage information after query completion |  Minor | Logging | Navis | Navis |
| [HIVE-7083](https://issues.apache.org/jira/browse/HIVE-7083) | Fix test failures on trunk |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7082](https://issues.apache.org/jira/browse/HIVE-7082) | Vectorized parquet reader should create assigners only for the columns it assigns, not for scratch columns |  Minor | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-7080](https://issues.apache.org/jira/browse/HIVE-7080) | In PTest framework, Add logs URL to the JIRA comment |  Major | . | Szehon Ho | Szehon Ho |
| [HIVE-7079](https://issues.apache.org/jira/browse/HIVE-7079) | Hive logs errors about missing tables when parsing CTE expressions |  Minor | Query Processor | Craig Condit | Navis |
| [HIVE-7077](https://issues.apache.org/jira/browse/HIVE-7077) | Hive contrib compilation maybe broken with removal of org.apache.hadoop.record |  Major | Contrib | Viraj Bhat | Ashutosh Chauhan |
| [HIVE-7076](https://issues.apache.org/jira/browse/HIVE-7076) | Plugin (exec hook) to log to application timeline data to Yarn |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-7075](https://issues.apache.org/jira/browse/HIVE-7075) | JsonSerde raises NullPointerException when object key is not lower case |  Major | HCatalog, Serializers/Deserializers | Yibing Shi | Navis |
| [HIVE-7072](https://issues.apache.org/jira/browse/HIVE-7072) | HCatLoader only loads first region of hbase table |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-7071](https://issues.apache.org/jira/browse/HIVE-7071) | Use custom Tez split generator to support schema evolution |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-7067](https://issues.apache.org/jira/browse/HIVE-7067) | Min() and Max() on Timestamp and Date columns for ORC returns wrong results |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7066](https://issues.apache.org/jira/browse/HIVE-7066) | hive-exec jar is missing avro core |  Major | Build Infrastructure | David Chen | David Chen |
| [HIVE-7065](https://issues.apache.org/jira/browse/HIVE-7065) | Hive jobs in webhcat run in default mr mode even in Hive on Tez setup |  Major | Tez, WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-7063](https://issues.apache.org/jira/browse/HIVE-7063) | Optimize for the Top N within a Group use case |  Major | . | Harish Butani | Harish Butani |
| [HIVE-7062](https://issues.apache.org/jira/browse/HIVE-7062) | Support Streaming mode in Windowing |  Major | . | Harish Butani | Harish Butani |
| [HIVE-7061](https://issues.apache.org/jira/browse/HIVE-7061) | sql std auth - insert queries without overwrite should not require delete privileges |  Major | Authorization, SQLStandardAuthorization | Thejas M Nair | Thejas M Nair |
| [HIVE-7057](https://issues.apache.org/jira/browse/HIVE-7057) | webhcat e2e deployment scripts don't have x bit set |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-7055](https://issues.apache.org/jira/browse/HIVE-7055) | config not propagating for PTFOperator |  Major | PTF-Windowing | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7053](https://issues.apache.org/jira/browse/HIVE-7053) | Unable to fetch column stats from decimal columns |  Major | Statistics | Xuefu Zhang | Xuefu Zhang |
| [HIVE-7052](https://issues.apache.org/jira/browse/HIVE-7052) | Optimize split calculation time |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-7051](https://issues.apache.org/jira/browse/HIVE-7051) | Display partition level column stats in DESCRIBE FORMATTED PARTITION |  Major | Statistics | Prasanth Jayachandran | Ashutosh Chauhan |
| [HIVE-7050](https://issues.apache.org/jira/browse/HIVE-7050) | Display table level column stats in DESCRIBE FORMATTED TABLE |  Major | Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7045](https://issues.apache.org/jira/browse/HIVE-7045) | Wrong results in multi-table insert aggregating without group by clause |  Blocker | . | dima machlin | Navis |
| [HIVE-7043](https://issues.apache.org/jira/browse/HIVE-7043) | When using the tez session pool via hive, once sessions time out, all queries go to the default queue |  Major | HiveServer2 | Vikram Dixit K | Vikram Dixit K |
| [HIVE-7042](https://issues.apache.org/jira/browse/HIVE-7042) | Fix stats\_partscan\_1\_23.q and orc\_createas1.q for hadoop-2 |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7041](https://issues.apache.org/jira/browse/HIVE-7041) | DoubleWritable/ByteWritable should extend their hadoop counterparts |  Major | . | Jason Dere | Jason Dere |
| [HIVE-7037](https://issues.apache.org/jira/browse/HIVE-7037) | Add additional tests for transform clauses with Tez |  Major | Tez | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-7035](https://issues.apache.org/jira/browse/HIVE-7035) | Templeton returns 500 for user errors - when job cannot be found |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-7033](https://issues.apache.org/jira/browse/HIVE-7033) | grant statements should check if the role exists |  Major | Authorization, SQLStandardAuthorization | Thejas M Nair | Thejas M Nair |
| [HIVE-7031](https://issues.apache.org/jira/browse/HIVE-7031) | Utiltites.createEmptyFile uses File.Separator instead of Path.Separator to create an empty file in HDFS |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-7030](https://issues.apache.org/jira/browse/HIVE-7030) | Remove hive.hadoop.classpath from hiveserver2.cmd |  Major | HiveServer2 | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-7027](https://issues.apache.org/jira/browse/HIVE-7027) | Hive job fails when referencing a view that explodes an array |  Major | Query Processor | Chaoyu Tang | Navis |
| [HIVE-7023](https://issues.apache.org/jira/browse/HIVE-7023) | Bucket mapjoin is broken when the number of small aliases is two or more |  Major | Query Processor | Navis | Navis |
| [HIVE-7017](https://issues.apache.org/jira/browse/HIVE-7017) | Insertion into Parquet tables fails under Tez |  Major | Tez | Craig Condit | Craig Condit |
| [HIVE-7016](https://issues.apache.org/jira/browse/HIVE-7016) | Hive returns wrong results when execute UDF on top of DISTINCT column |  Major | Query Processor | Selina Zhang | Navis |
| [HIVE-7015](https://issues.apache.org/jira/browse/HIVE-7015) | Failing to inherit group/permission should not fail the operation |  Major | Security | Szehon Ho | Szehon Ho |
| [HIVE-7012](https://issues.apache.org/jira/browse/HIVE-7012) | Wrong RS de-duplication in the ReduceSinkDeDuplication Optimizer |  Major | Query Processor | Sun Rui | Navis |
| [HIVE-7011](https://issues.apache.org/jira/browse/HIVE-7011) | HiveInputFormat's split generation isn't thread safe |  Major | Tez | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-7009](https://issues.apache.org/jira/browse/HIVE-7009) | HIVE\_USER\_INSTALL\_DIR could not bet set to non-HDFS filesystem |  Major | Tez | Chuan Liu | Chuan Liu |
| [HIVE-7006](https://issues.apache.org/jira/browse/HIVE-7006) | Fix ql\_rewrite\_gbtoidx.q output file |  Major | . | Harish Butani | Harish Butani |
| [HIVE-7005](https://issues.apache.org/jira/browse/HIVE-7005) | MiniTez tests have non-deterministic explain plans |  Major | Tests | Jason Dere | Gunther Hagleitner |
| [HIVE-7004](https://issues.apache.org/jira/browse/HIVE-7004) | Fix more unit test failures on hadoop-2 |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-7003](https://issues.apache.org/jira/browse/HIVE-7003) | Fix typo in README |  Major | Documentation | Thejas M Nair | Thejas M Nair |
| [HIVE-7001](https://issues.apache.org/jira/browse/HIVE-7001) | fs.permissions.umask-mode is getting unset when Session is started |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-6996](https://issues.apache.org/jira/browse/HIVE-6996) | FS based stats broken with indexed tables |  Major | Indexing, Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6995](https://issues.apache.org/jira/browse/HIVE-6995) | GenericUDFBridge should log exception when it is unable to instantiate UDF object |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-6989](https://issues.apache.org/jira/browse/HIVE-6989) | Error with arithmetic operators with javaXML serialization |  Major | . | Jason Dere | Jason Dere |
| [HIVE-6986](https://issues.apache.org/jira/browse/HIVE-6986) | MatchPath fails with small resultExprString |  Trivial | UDF | Furcy Pin | Furcy Pin |
| [HIVE-6985](https://issues.apache.org/jira/browse/HIVE-6985) | sql std auth - privileges grants to public role not being honored |  Critical | Authorization, SQLStandardAuthorization | Thejas M Nair | Thejas M Nair |
| [HIVE-6984](https://issues.apache.org/jira/browse/HIVE-6984) | Analyzing partitioned table with NULL values for the partition column failed with NPE |  Major | Statistics | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6979](https://issues.apache.org/jira/browse/HIVE-6979) | Hadoop-2 test failures related to quick stats not being populated correctly |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6978](https://issues.apache.org/jira/browse/HIVE-6978) | beeline always exits with 0 status, should exit with non-zero status on error |  Major | HiveServer2 | Gwen Shapira | Navis |
| [HIVE-6976](https://issues.apache.org/jira/browse/HIVE-6976) | Show query id only when there's jobs on the cluster |  Minor | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6972](https://issues.apache.org/jira/browse/HIVE-6972) | jdbc HTTP configuration options should be part of sessionConf part of connection string |  Major | HiveServer2, JDBC | Thejas M Nair | Vaibhav Gumashta |
| [HIVE-6968](https://issues.apache.org/jira/browse/HIVE-6968) | list bucketing feature does not update the location map for unpartitioned tables |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6967](https://issues.apache.org/jira/browse/HIVE-6967) | Hive transaction manager fails when SQLServer is used as an RDBMS |  Major | Locking | Alan Gates | Alan Gates |
| [HIVE-6966](https://issues.apache.org/jira/browse/HIVE-6966) | More fixes for TestCliDriver on Windows |  Major | Tests, Windows | Jason Dere | Jason Dere |
| [HIVE-6965](https://issues.apache.org/jira/browse/HIVE-6965) | Transaction manager should use RDBMS time instead of machine time |  Major | Locking | Alan Gates | Alan Gates |
| [HIVE-6961](https://issues.apache.org/jira/browse/HIVE-6961) | Drop partitions treats partition columns as strings |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6960](https://issues.apache.org/jira/browse/HIVE-6960) | Set Hive pom to use Hadoop-2.4 |  Major | Build Infrastructure | Jason Dere | Jason Dere |
| [HIVE-6959](https://issues.apache.org/jira/browse/HIVE-6959) | Enable Constant propagation optimizer for Hive Vectorization |  Major | Vectorization | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-6957](https://issues.apache.org/jira/browse/HIVE-6957) | SQL authorization does not work with HS2 binary mode and Kerberos auth |  Major | Authorization, HiveServer2 | Thejas M Nair | Thejas M Nair |
| [HIVE-6956](https://issues.apache.org/jira/browse/HIVE-6956) | Duplicate partitioning column for union when dynamic partition sort optimization is enabled |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6955](https://issues.apache.org/jira/browse/HIVE-6955) | ExprNodeColDesc isSame doesn't account for tabAlias: this affects trait Propagation in Joins |  Major | . | Harish Butani | Harish Butani |
| [HIVE-6952](https://issues.apache.org/jira/browse/HIVE-6952) | Hive 0.13 HiveOutputFormat breaks backwards compatibility |  Blocker | File Formats, Serializers/Deserializers | Costin Leau | Ashutosh Chauhan |
| [HIVE-6947](https://issues.apache.org/jira/browse/HIVE-6947) | More fixes for tests on hadoop-2 |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6946](https://issues.apache.org/jira/browse/HIVE-6946) | Make it easier to run WebHCat e2e tests |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-6945](https://issues.apache.org/jira/browse/HIVE-6945) | issues with dropping partitions on Oracle |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6944](https://issues.apache.org/jira/browse/HIVE-6944) | WebHCat e2e tests broken by HIVE-6432 |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-6939](https://issues.apache.org/jira/browse/HIVE-6939) | TestExecDriver.testMapRedPlan3 fails on hadoop-2 |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-6937](https://issues.apache.org/jira/browse/HIVE-6937) | Fix test reporting url's after jenkins move from bigtop |  Major | . | Szehon Ho | Szehon Ho |
| [HIVE-6936](https://issues.apache.org/jira/browse/HIVE-6936) | Provide table properties to InputFormats |  Major | File Formats | Owen O'Malley | Owen O'Malley |
| [HIVE-6934](https://issues.apache.org/jira/browse/HIVE-6934) | PartitionPruner doesn't handle top level constant expression correctly |  Critical | Logical Optimizer, Query Processor | Harish Butani | Hari Sankar Sivarama Subramaniyan |
| [HIVE-6932](https://issues.apache.org/jira/browse/HIVE-6932) | hive README needs update |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-6931](https://issues.apache.org/jira/browse/HIVE-6931) | Windows unit test fixes |  Major | Tests, Windows | Jason Dere | Jason Dere |
| [HIVE-6928](https://issues.apache.org/jira/browse/HIVE-6928) | Beeline should not chop off "describe extended" results by default |  Major | CLI | Szehon Ho | Ferdinand Xu |
| [HIVE-6927](https://issues.apache.org/jira/browse/HIVE-6927) | Add support for MSSQL in schematool |  Major | Metastore | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-6922](https://issues.apache.org/jira/browse/HIVE-6922) | NullPointerException in collect\_set() UDAF |  Major | UDF | Sun Rui | Sun Rui |
| [HIVE-6921](https://issues.apache.org/jira/browse/HIVE-6921) | index creation fails with sql std auth turned on |  Major | Authorization, Indexing, Security | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6919](https://issues.apache.org/jira/browse/HIVE-6919) | hive sql std auth select query fails on partitioned tables |  Critical | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-6916](https://issues.apache.org/jira/browse/HIVE-6916) | Export/import inherit permissions from parent directory |  Major | Security | Szehon Ho | Szehon Ho |
| [HIVE-6915](https://issues.apache.org/jira/browse/HIVE-6915) | Hive Hbase queries fail on secure Tez cluster |  Major | Tez | Deepesh Khandelwal | Siddharth Seth |
| [HIVE-6913](https://issues.apache.org/jira/browse/HIVE-6913) | Hive unable to find the hashtable file during complex multi-staged map join |  Major | . | Brock Noland | Brock Noland |
| [HIVE-6910](https://issues.apache.org/jira/browse/HIVE-6910) | Invalid column access info for partitioned table |  Minor | Query Processor | Navis | Navis |
| [HIVE-6908](https://issues.apache.org/jira/browse/HIVE-6908) | TestThriftBinaryCLIService.testExecuteStatementAsync has intermittent failures |  Major | Tests | Szehon Ho | Szehon Ho |
| [HIVE-6901](https://issues.apache.org/jira/browse/HIVE-6901) | Explain plan doesn't show operator tree for the fetch operator |  Minor | Query Processor | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6900](https://issues.apache.org/jira/browse/HIVE-6900) | HostUtil.getTaskLogUrl signature change causes compilation to fail |  Major | Shims | Chris Drome | Jason Dere |
| [HIVE-6898](https://issues.apache.org/jira/browse/HIVE-6898) | Functions in hive are failing with java.lang.ClassNotFoundException on Tez |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6891](https://issues.apache.org/jira/browse/HIVE-6891) | Alter rename partition Perm inheritance and general partition/table group inheritance |  Major | . | Szehon Ho | Szehon Ho |
| [HIVE-6890](https://issues.apache.org/jira/browse/HIVE-6890) | Bug in HiveStreaming API causes problems if hive-site.xml is missing on streaming client side |  Major | . | Roshan Naik | Roshan Naik |
| [HIVE-6888](https://issues.apache.org/jira/browse/HIVE-6888) | Hive leaks MapWork objects via Utilities::gWorkMap |  Major | . | Sergey Shelukhin | Gunther Hagleitner |
| [HIVE-6884](https://issues.apache.org/jira/browse/HIVE-6884) | HiveLockObject and enclosed HiveLockObjectData override equal() method but didn't do so for hashcode() |  Major | HiveServer2 | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6883](https://issues.apache.org/jira/browse/HIVE-6883) | Dynamic partitioning optimization does not honor sort order or order by |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6880](https://issues.apache.org/jira/browse/HIVE-6880) | TestHWISessionManager fails with -Phadoop-2 |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-6877](https://issues.apache.org/jira/browse/HIVE-6877) | TestOrcRawRecordMerger is deleting test.tmp.dir |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-6871](https://issues.apache.org/jira/browse/HIVE-6871) | Build fixes to allow Windows to run TestCliDriver |  Major | Build Infrastructure, Windows | Jason Dere | Jason Dere |
| [HIVE-6870](https://issues.apache.org/jira/browse/HIVE-6870) | Fix maven.repo.local setting in Hive build |  Major | Build Infrastructure | Jason Dere | Jason Dere |
| [HIVE-6868](https://issues.apache.org/jira/browse/HIVE-6868) | Create table in HCatalog sets different SerDe defaults than what is set through the CLI |  Major | HCatalog | Harish Butani | Harish Butani |
| [HIVE-6862](https://issues.apache.org/jira/browse/HIVE-6862) | add DB schema DDL and upgrade 12to13 scripts for MS SQL Server |  Major | Metastore | Eugene Koifman | Eugene Koifman |
| [HIVE-6861](https://issues.apache.org/jira/browse/HIVE-6861) | more hadoop2 only golden files to fix |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-6858](https://issues.apache.org/jira/browse/HIVE-6858) | Unit tests decimal\_udf.q, vectorization\_div0.q fail with jdk-7. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6853](https://issues.apache.org/jira/browse/HIVE-6853) | show create table for hbase tables should exclude LOCATION |  Major | StorageHandler | Miklos Christine | Miklos Christine |
| [HIVE-6847](https://issues.apache.org/jira/browse/HIVE-6847) | Improve / fix bugs in Hive scratch dir setup |  Major | CLI, HiveServer2 | Vikram Dixit K | Vaibhav Gumashta |
| [HIVE-6843](https://issues.apache.org/jira/browse/HIVE-6843) | INSTR for UTF-8 returns incorrect position |  Minor | UDF | ckran | Szehon Ho |
| [HIVE-6835](https://issues.apache.org/jira/browse/HIVE-6835) | Reading of partitioned Avro data fails if partition schema does not match table schema |  Major | . | Anthony Hsu | Anthony Hsu |
| [HIVE-6828](https://issues.apache.org/jira/browse/HIVE-6828) | Hive tez bucket map join conversion interferes with map join conversion |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6826](https://issues.apache.org/jira/browse/HIVE-6826) | Hive-tez has issues when different partitions work off of different input types |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6822](https://issues.apache.org/jira/browse/HIVE-6822) | TestAvroSerdeUtils fails with -Phadoop-2 |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-6820](https://issues.apache.org/jira/browse/HIVE-6820) | HiveServer(2) ignores HIVE\_OPTS |  Minor | HiveServer2 | Richard Ding | Bing Li |
| [HIVE-6817](https://issues.apache.org/jira/browse/HIVE-6817) | Some hadoop2-only tests need diffs to be updated |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-6811](https://issues.apache.org/jira/browse/HIVE-6811) | LOAD command does not work with relative paths on Windows |  Major | . | Jason Dere | Jason Dere |
| [HIVE-6807](https://issues.apache.org/jira/browse/HIVE-6807) | add HCatStorer ORC test to test missing columns |  Major | HCatalog | Eugene Koifman | Eugene Koifman |
| [HIVE-6793](https://issues.apache.org/jira/browse/HIVE-6793) | DDLSemanticAnalyzer.analyzeShowRoles() should use HiveAuthorizationTaskFactory |  Major | Authorization, Query Processor | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6792](https://issues.apache.org/jira/browse/HIVE-6792) | hive.warehouse.subdir.inherit.perms doesn't work correctly in CTAS |  Major | Authorization, Security | Chaoyu Tang | Chaoyu Tang |
| [HIVE-6788](https://issues.apache.org/jira/browse/HIVE-6788) | Abandoned opened transactions not being timed out |  Major | Locking | Alan Gates | Alan Gates |
| [HIVE-6785](https://issues.apache.org/jira/browse/HIVE-6785) | query fails when partitioned table's table level serde is ParquetHiveSerDe and partition level serde is of different SerDe |  Major | File Formats, Serializers/Deserializers | Tongjie Chen | Tongjie Chen |
| [HIVE-6783](https://issues.apache.org/jira/browse/HIVE-6783) | Incompatible schema for maps between parquet-hive and parquet-pig |  Major | File Formats | Tongjie Chen |  |
| [HIVE-6782](https://issues.apache.org/jira/browse/HIVE-6782) | HiveServer2Concurrency issue when running with tez intermittently, throwing "org.apache.tez.dag.api.SessionNotRunning: Application not running" error |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6773](https://issues.apache.org/jira/browse/HIVE-6773) | Update readme for ptest2 framework |  Minor | Testing Infrastructure | Szehon Ho | Szehon Ho |
| [HIVE-6768](https://issues.apache.org/jira/browse/HIVE-6768) | remove hcatalog/webhcat/svr/src/main/config/override-container-log4j.properties |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-6756](https://issues.apache.org/jira/browse/HIVE-6756) | alter table set fileformat should set serde too |  Major | . | Owen O'Malley | Chinna Rao Lalam |
| [HIVE-6745](https://issues.apache.org/jira/browse/HIVE-6745) | HCat MultiOutputFormat hardcodes DistributedCache keynames |  Major | HCatalog | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-6741](https://issues.apache.org/jira/browse/HIVE-6741) | HiveServer2 startup fails in secure (kerberos) mode due to backward incompatible hadoop change |  Blocker | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6726](https://issues.apache.org/jira/browse/HIVE-6726) | Hcat cli does not close SessionState |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-6724](https://issues.apache.org/jira/browse/HIVE-6724) | HCatStorer throws ClassCastException while storing tinyint/smallint data |  Major | HCatalog | Eugene Koifman | Eugene Koifman |
| [HIVE-6715](https://issues.apache.org/jira/browse/HIVE-6715) | Hive JDBC should include username into open session request for non-sasl connection |  Critical | JDBC | Srinath | Prasad Mujumdar |
| [HIVE-6711](https://issues.apache.org/jira/browse/HIVE-6711) | ORC maps uses getMapSize() from MapOI which is unreliable |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6709](https://issues.apache.org/jira/browse/HIVE-6709) | HiveServer2 help command is not recognizing properly. |  Minor | HiveServer2 | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HIVE-6707](https://issues.apache.org/jira/browse/HIVE-6707) | Lazy maps are broken (LazyMap and LazyBinaryMap) |  Critical | Serializers/Deserializers | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6698](https://issues.apache.org/jira/browse/HIVE-6698) | hcat.py script does not correctly load the hbase storage handler jars |  Major | HCatalog | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-6695](https://issues.apache.org/jira/browse/HIVE-6695) | bin/hcat should include hbase jar and dependencies in the classpath [followup/clone of HCATALOG-621] |  Major | . | Sushanth Sowmyan | Nick Dimiduk |
| [HIVE-6684](https://issues.apache.org/jira/browse/HIVE-6684) | Beeline does not accept comments that are preceded by spaces |  Major | CLI | Jeremy Beard |  |
| [HIVE-6669](https://issues.apache.org/jira/browse/HIVE-6669) | sourcing txn-script from schema script results in failure for mysql & oracle |  Blocker | Metastore | Prasad Mujumdar | Alan Gates |
| [HIVE-6652](https://issues.apache.org/jira/browse/HIVE-6652) | Beeline gives evasive error message for any unrecognized command line arguement |  Major | . | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6648](https://issues.apache.org/jira/browse/HIVE-6648) | Permissions are not inherited correctly when tables have multiple partition columns |  Major | . | Henry Robinson | Szehon Ho |
| [HIVE-6637](https://issues.apache.org/jira/browse/HIVE-6637) | UDF in\_file() doesn't take CHAR or VARCHAR as input |  Major | Types, UDF | Xuefu Zhang | Ashish K Singh |
| [HIVE-6622](https://issues.apache.org/jira/browse/HIVE-6622) | UDF translate doesn't take either CHAR or VARCHAR as any of its arguments |  Major | UDF | Xuefu Zhang | Wilbur Yang |
| [HIVE-6620](https://issues.apache.org/jira/browse/HIVE-6620) | UDF printf doesn't take either CHAR or VARCHAR as the first argument |  Major | UDF | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6612](https://issues.apache.org/jira/browse/HIVE-6612) | Misspelling "schemaTool completeted" |  Minor | CLI | Szehon Ho | Szehon Ho |
| [HIVE-6602](https://issues.apache.org/jira/browse/HIVE-6602) | Multi-user HiveServer2 throws error |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6601](https://issues.apache.org/jira/browse/HIVE-6601) | alter database commands should support schema synonym keyword |  Major | . | Thejas M Nair | Navis |
| [HIVE-6597](https://issues.apache.org/jira/browse/HIVE-6597) | WebHCat E2E tests doAsTests\_6 and doAsTests\_7 need to be updated |  Major | Tests, WebHCat | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-6594](https://issues.apache.org/jira/browse/HIVE-6594) | UnsignedInt128 addition does not increase internal int array count resulting in corrupted values during serialization |  Major | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-6592](https://issues.apache.org/jira/browse/HIVE-6592) | WebHCat E2E test abort when pointing to https url of webhdfs |  Major | Tests, WebHCat | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-6586](https://issues.apache.org/jira/browse/HIVE-6586) | Update parameters in HiveConf.java after commit HIVE-6037 |  Blocker | . | Lefty Leverenz | Lefty Leverenz |
| [HIVE-6583](https://issues.apache.org/jira/browse/HIVE-6583) | wrong sql comments : ----... instead of -- ---... |  Minor | Database/Schema | Pierre Nerzic | Pierre Nerzic |
| [HIVE-6571](https://issues.apache.org/jira/browse/HIVE-6571) | query id should be available for logging during query compilation |  Minor | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6570](https://issues.apache.org/jira/browse/HIVE-6570) | Hive variable substitution does not work with the "source" command |  Major | . | Anthony Hsu | Anthony Hsu |
| [HIVE-6569](https://issues.apache.org/jira/browse/HIVE-6569) | HCatalog still has references to deprecated property hive.metastore.local |  Minor | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-6564](https://issues.apache.org/jira/browse/HIVE-6564) | WebHCat E2E tests that launch MR jobs fail on check job completion timeout |  Major | Tests, WebHCat | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-6563](https://issues.apache.org/jira/browse/HIVE-6563) | hdfs jar being pulled in when creating a hadoop-2 based hive tar ball |  Blocker | Build Infrastructure | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6560](https://issues.apache.org/jira/browse/HIVE-6560) | varchar and char types cannot be cast to binary |  Major | Types, UDF | Xuefu Zhang | Chao |
| [HIVE-6555](https://issues.apache.org/jira/browse/HIVE-6555) | TestSchemaTool is failing on trunk after branching |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6550](https://issues.apache.org/jira/browse/HIVE-6550) | SemanticAnalyzer.reset() doesn't clear all the state |  Major | Query Processor | Laljo John Pullokkaran | Sergey Shelukhin |
| [HIVE-6549](https://issues.apache.org/jira/browse/HIVE-6549) | remove templeton.jar from webhcat-default.xml, remove hcatalog/bin/hive-config.sh |  Minor | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-6538](https://issues.apache.org/jira/browse/HIVE-6538) | yet another annoying exception in test logs |  Trivial | . | Sergey Shelukhin | Szehon Ho |
| [HIVE-6531](https://issues.apache.org/jira/browse/HIVE-6531) | Runtime errors in vectorized execution. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6521](https://issues.apache.org/jira/browse/HIVE-6521) | WebHCat cannot fetch correct percentComplete for Hive jobs |  Major | WebHCat | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-6515](https://issues.apache.org/jira/browse/HIVE-6515) | Custom vertex in hive-tez should be able to accept multiple MR-inputs |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6511](https://issues.apache.org/jira/browse/HIVE-6511) | casting from decimal to tinyint,smallint, int and bigint generates different result when vectorization is on |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6508](https://issues.apache.org/jira/browse/HIVE-6508) | Mismatched results between vector and non-vector mode with decimal field |  Major | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-6487](https://issues.apache.org/jira/browse/HIVE-6487) | PTest2 do not copy failed source directories |  Major | . | Brock Noland | Szehon Ho |
| [HIVE-6480](https://issues.apache.org/jira/browse/HIVE-6480) | Metastore server startup script ignores ENV settings |  Minor | HCatalog | Adam Faris | Adam Faris |
| [HIVE-6447](https://issues.apache.org/jira/browse/HIVE-6447) | Bucket map joins in hive-tez |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6446](https://issues.apache.org/jira/browse/HIVE-6446) | Ability to specify hadoop.bin.path from command line -D |  Minor | Build Infrastructure | Remus Rusanu | Remus Rusanu |
| [HIVE-6437](https://issues.apache.org/jira/browse/HIVE-6437) | DefaultHiveAuthorizationProvider should not initialize a new HiveConf |  Trivial | Configuration | Harsh J | Navis |
| [HIVE-6374](https://issues.apache.org/jira/browse/HIVE-6374) | Hive job submitted with non-default name node (fs.default.name) doesn't process locations properly |  Major | CLI | Benjamin Zhitomirsky | Benjamin Zhitomirsky |
| [HIVE-6331](https://issues.apache.org/jira/browse/HIVE-6331) | HIVE-5279 deprecated UDAF class without explanation/documentation/alternative |  Minor | . | Lars Francke | Lars Francke |
| [HIVE-6322](https://issues.apache.org/jira/browse/HIVE-6322) | Fix file\_with\_header\_footer\_negative.q |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-6321](https://issues.apache.org/jira/browse/HIVE-6321) | hiveserver2 --help says Unrecognized option: -h |  Trivial | HiveServer2 | Rohit Agarwal |  |
| [HIVE-6313](https://issues.apache.org/jira/browse/HIVE-6313) | Minimr tests in hadoop-1 hangs on shutdown |  Trivial | Tests | Navis | Navis |
| [HIVE-6305](https://issues.apache.org/jira/browse/HIVE-6305) | test use of quoted identifiers in user/role names |  Major | Authorization | Thejas M Nair | Jason Dere |
| [HIVE-6245](https://issues.apache.org/jira/browse/HIVE-6245) | HS2 creates DBs/Tables with wrong ownership when HMS setugi is true |  Major | HiveServer2 | Chaoyu Tang | Venki Korukanti |
| [HIVE-6200](https://issues.apache.org/jira/browse/HIVE-6200) | Hive custom SerDe cannot load DLL added by "ADD FILE" command |  Major | . | Shuaishuai Nie | Shuaishuai Nie |
| [HIVE-6187](https://issues.apache.org/jira/browse/HIVE-6187) | Add test to verify that DESCRIBE TABLE works with quoted table names |  Major | . | Andy Mok | Carl Steinbach |
| [HIVE-6093](https://issues.apache.org/jira/browse/HIVE-6093) | table creation should fail when user does not have permissions on db |  Minor | Authorization, HCatalog, Metastore | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HIVE-6035](https://issues.apache.org/jira/browse/HIVE-6035) | Windows: percentComplete returned by job status from WebHCat is null |  Major | HCatalog | shanyu zhao | shanyu zhao |
| [HIVE-5870](https://issues.apache.org/jira/browse/HIVE-5870) | Move TestJDBCDriver2.testNewConnectionConfiguration to TestJDBCWithMiniHS2 |  Major | Tests | Szehon Ho | Szehon Ho |
| [HIVE-5847](https://issues.apache.org/jira/browse/HIVE-5847) | DatabaseMetadata.getColumns() doesn't show correct column size for char/varchar/decimal |  Major | JDBC | Jason Dere | Jason Dere |
| [HIVE-5789](https://issues.apache.org/jira/browse/HIVE-5789) | WebHCat E2E tests do not launch on Windows |  Major | Testing Infrastructure | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-5677](https://issues.apache.org/jira/browse/HIVE-5677) | Beeline warns about unavailable files if HIVE\_OPTS is set |  Major | CLI | Sushanth Sowmyan | Navis |
| [HIVE-5607](https://issues.apache.org/jira/browse/HIVE-5607) | Hive fails to parse the "%" (mod) sign after brackets. |  Minor | Query Processor | dima machlin | Xuefu Zhang |
| [HIVE-5456](https://issues.apache.org/jira/browse/HIVE-5456) | Queries fail on avro backed table with empty partition |  Major | Query Processor | Prasad Mujumdar | Chaoyu Tang |
| [HIVE-5376](https://issues.apache.org/jira/browse/HIVE-5376) | Hive does not honor type for partition columns when altering column type |  Major | CLI | Sergey Shelukhin | Hari Sankar Sivarama Subramaniyan |
| [HIVE-5336](https://issues.apache.org/jira/browse/HIVE-5336) | HCatSchema.remove(HCatFieldSchema hcatFieldSchema) should renumber the  fieldPositionMap and the fieldPositionMap should not be cached by the end user |  Major | HCatalog | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-5092](https://issues.apache.org/jira/browse/HIVE-5092) | Fix hiveserver2 mapreduce local job on Windows |  Major | HiveServer2, Windows | Daniel Dai | Hari Sankar Sivarama Subramaniyan |
| [HIVE-4965](https://issues.apache.org/jira/browse/HIVE-4965) | Add support so that PTFs can stream their output; Windowing PTF should do this |  Major | . | Harish Butani | Harish Butani |
| [HIVE-4795](https://issues.apache.org/jira/browse/HIVE-4795) | Delete/Alter/Describe actions fail when SerDe is not on class path |  Major | CLI | Caleb Jones |  |
| [HIVE-4723](https://issues.apache.org/jira/browse/HIVE-4723) | DDLSemanticAnalyzer.addTablePartsOutputs eats several exceptions |  Major | . | Brock Noland | Szehon Ho |
| [HIVE-4576](https://issues.apache.org/jira/browse/HIVE-4576) | templeton.hive.properties does not allow values with commas |  Major | WebHCat | Vitaliy Fuks | Eugene Koifman |
| [HIVE-4561](https://issues.apache.org/jira/browse/HIVE-4561) | Column stats :  LOW\_VALUE (or HIGH\_VALUE) will always be 0.0000 ,if all the column values larger than 0.0 (or if all column values smaller than 0.0) |  Major | Statistics | caofangkun | Navis |
| [HIVE-4118](https://issues.apache.org/jira/browse/HIVE-4118) | ANALYZE TABLE ... COMPUTE STATISTICS FOR COLUMNS fails when using fully qualified table name |  Major | Statistics | Lenni Kuff | Bing Li |
| [HIVE-4064](https://issues.apache.org/jira/browse/HIVE-4064) | Handle db qualified names consistently across all HiveQL statements |  Major | SQL | Shreepadma Venugopalan | Navis |
| [HIVE-3925](https://issues.apache.org/jira/browse/HIVE-3925) | dependencies of fetch task are not shown by explain |  Major | Query Processor | Namit Jain | Navis |
| [HIVE-3798](https://issues.apache.org/jira/browse/HIVE-3798) | Can't escape reserved keywords used as table names |  Major | Parser | Jakob Homan | Jakob Homan |
| [HIVE-3392](https://issues.apache.org/jira/browse/HIVE-3392) | Hive unnecessarily validates table SerDes when dropping a table |  Major | . | Jonathan Natkins | Navis |
| [HIVE-2638](https://issues.apache.org/jira/browse/HIVE-2638) | Tests fail when Hive is run against Hadoop 0.23 |  Major | Shims | Carl Steinbach |  |
| [HIVE-2597](https://issues.apache.org/jira/browse/HIVE-2597) | Repeated key in GROUP BY is erroneously displayed when using DISTINCT |  Major | . | Alex Rovner | Navis |
| [HIVE-2390](https://issues.apache.org/jira/browse/HIVE-2390) | Add UNIONTYPE serialization support to LazyBinarySerDe |  Major | . | Jakob Homan | Suma Shivaprasad |
| [HIVE-1879](https://issues.apache.org/jira/browse/HIVE-1879) | Remove hive.metastore.metadb.dir property from hive-default.xml and HiveConf |  Major | Configuration, Metastore | Carl Steinbach | Lars Francke |
| [HIVE-1363](https://issues.apache.org/jira/browse/HIVE-1363) | 'SHOW TABLE EXTENDED LIKE' command does not strip single/double quotes |  Major | Query Processor | Carl Steinbach | Chaoyu Tang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-8618](https://issues.apache.org/jira/browse/HIVE-8618) | Add SORT\_QUERY\_RESULTS for test that doesn't guarantee order #3 |  Minor | . | Chao | Chao |
| [HIVE-8420](https://issues.apache.org/jira/browse/HIVE-8420) | TestHadoop20SAuthBridge broken with hadoop-1 |  Blocker | Tests | Szehon Ho | Szehon Ho |
| [HIVE-8360](https://issues.apache.org/jira/browse/HIVE-8360) | Add cross cluster support for webhcat E2E tests |  Critical | Tests, WebHCat | Aswathy Chellammal Sreekumar | Aswathy Chellammal Sreekumar |
| [HIVE-8035](https://issues.apache.org/jira/browse/HIVE-8035) | Add SORT\_QUERY\_RESULTS for test that doesn't guarantee order |  Minor | Tests | Rui Li | Rui Li |
| [HIVE-7684](https://issues.apache.org/jira/browse/HIVE-7684) | Avoid validating hook EnforceReadOnlyTable during  test driver cleanup. |  Major | Tests | Szehon Ho | Venki Korukanti |
| [HIVE-7343](https://issues.apache.org/jira/browse/HIVE-7343) | Update committer list |  Major | Documentation | Szehon Ho | Gopal V |
| [HIVE-7252](https://issues.apache.org/jira/browse/HIVE-7252) | TestTezTask.testSubmit fails in trunk |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-7086](https://issues.apache.org/jira/browse/HIVE-7086) | TestHiveServer2.testConnection is failing on trunk |  Major | HiveServer2, JDBC | Ashutosh Chauhan | Vaibhav Gumashta |
| [HIVE-7085](https://issues.apache.org/jira/browse/HIVE-7085) | TestOrcHCatPigStorer.testWriteDecimal tests are failing on trunk |  Major | HCatalog | Ashutosh Chauhan | Navis |
| [HIVE-7084](https://issues.apache.org/jira/browse/HIVE-7084) | TestWebHCatE2e is failing on trunk |  Major | WebHCat | Ashutosh Chauhan | Ashutosh Chauhan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-8768](https://issues.apache.org/jira/browse/HIVE-8768) | CBO: Fix filter selectivity for "in clause" & "\<\>" |  Critical | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-8662](https://issues.apache.org/jira/browse/HIVE-8662) | CBO: tez\_dml fails |  Major | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8656](https://issues.apache.org/jira/browse/HIVE-8656) | CBO: auto\_join\_filters fails |  Critical | CBO | Sergey Shelukhin | Julian Hyde |
| [HIVE-8655](https://issues.apache.org/jira/browse/HIVE-8655) | CBO: ppr\_pushdown, udf\_substr produces incorrect results due to broken tablesample handling |  Critical | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8654](https://issues.apache.org/jira/browse/HIVE-8654) | CBO: parquet\_ctas test returns incorrect results |  Critical | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8653](https://issues.apache.org/jira/browse/HIVE-8653) | CBO: Push Semi Join through, Project/Filter/Join |  Critical | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-8582](https://issues.apache.org/jira/browse/HIVE-8582) | CBO: Outer Join Simplification is broken |  Critical | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-8549](https://issues.apache.org/jira/browse/HIVE-8549) | NPE in PK-FK inference when one side of join is complex tree |  Critical | Query Processor, Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-8530](https://issues.apache.org/jira/browse/HIVE-8530) | CBO: Preserve types of literals |  Major | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-8522](https://issues.apache.org/jira/browse/HIVE-8522) | CBO: Update Calcite Version to 0.9.2-incubating-SNAPSHOT |  Major | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-8454](https://issues.apache.org/jira/browse/HIVE-8454) | Select Operator does not rename column stats properly in case of select star |  Critical | Physical Optimizer | Mostafa Mokhtar | Prasanth Jayachandran |
| [HIVE-8377](https://issues.apache.org/jira/browse/HIVE-8377) | Enable Kerberized SSL for HiveServer2 in http mode |  Critical | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8309](https://issues.apache.org/jira/browse/HIVE-8309) | CBO: Fix OB by removing constraining DT, Use external names for col Aliases, Remove unnecessary Selects, Make DT Name counter query specific |  Major | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-8288](https://issues.apache.org/jira/browse/HIVE-8288) | HiveServer2 dynamic discovery should create znodes organized by version number & add support for removing server uri's of a particular version from the server script. |  Critical | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8237](https://issues.apache.org/jira/browse/HIVE-8237) | CBO: Use Fully qualified table name (db.tablename in ReloptHiveTable) |  Major | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-8228](https://issues.apache.org/jira/browse/HIVE-8228) | CBO: fix couple of issues with partition pruning |  Major | CBO | Harish Butani | Harish Butani |
| [HIVE-8223](https://issues.apache.org/jira/browse/HIVE-8223) | CBO Trunk Merge: partition\_wise\_fileformat2 select result depends on ordering |  Major | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8199](https://issues.apache.org/jira/browse/HIVE-8199) | CBO Trunk Merge: quote2 test fails due to incorrect literal translation |  Major | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8194](https://issues.apache.org/jira/browse/HIVE-8194) | CBO: bail for having clause referring select expr aliases |  Major | CBO | Harish Butani | Harish Butani |
| [HIVE-8193](https://issues.apache.org/jira/browse/HIVE-8193) | Hook HiveServer2 dynamic service discovery with session time out |  Critical | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8186](https://issues.apache.org/jira/browse/HIVE-8186) | Self join may fail if one side have virtual column(s) and other doesn't |  Major | . | Sergey Shelukhin | Navis |
| [HIVE-8173](https://issues.apache.org/jira/browse/HIVE-8173) | HiveServer2 dynamic service discovery: figure out best ZooKeeper ACLs for security |  Critical | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8172](https://issues.apache.org/jira/browse/HIVE-8172) | HiveServer2 dynamic service discovery should let the JDBC client use default ZooKeeper namespace |  Critical | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-8168](https://issues.apache.org/jira/browse/HIVE-8168) | With dynamic partition enabled fact table selectivity is not taken into account when generating the physical plan (Use CBO cardinality using physical plan generation) |  Critical | Tez | Mostafa Mokhtar | Prasanth Jayachandran |
| [HIVE-8159](https://issues.apache.org/jira/browse/HIVE-8159) | CBO: bail from Optiq planning if a Select list contains multiple references to the same name |  Major | CBO | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8145](https://issues.apache.org/jira/browse/HIVE-8145) | CBO: bail from Optiq planning if a Select list contains multiple references to the same name |  Major | CBO | Harish Butani | Harish Butani |
| [HIVE-8144](https://issues.apache.org/jira/browse/HIVE-8144) | CBO: HiveProjectRel factory should create RelSubSets |  Major | CBO | Harish Butani | Harish Butani |
| [HIVE-8125](https://issues.apache.org/jira/browse/HIVE-8125) | CBO Trunk Merge: On Failure Fall Back to Non CBO |  Major | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-8111](https://issues.apache.org/jira/browse/HIVE-8111) | CBO trunk merge: duplicated casts for arithmetic expressions in Hive and CBO |  Major | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8076](https://issues.apache.org/jira/browse/HIVE-8076) | CBO Trunk Merge: Test Failure input23 |  Major | CBO | Laljo John Pullokkaran | Pengcheng Xiong |
| [HIVE-8069](https://issues.apache.org/jira/browse/HIVE-8069) | CBO: RowResolver after SubQuery predicate handling should be reset to outer query block RR |  Major | CBO | Harish Butani | Harish Butani |
| [HIVE-8046](https://issues.apache.org/jira/browse/HIVE-8046) | CBO: fix issues with Windowing queries |  Major | CBO | Harish Butani | Harish Butani |
| [HIVE-8021](https://issues.apache.org/jira/browse/HIVE-8021) | CBO: support CTAS and insert ... select |  Major | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8016](https://issues.apache.org/jira/browse/HIVE-8016) | CBO: PPD to honor hive Join Cond, Casting fixes, Add annotations for IF, Code cleanup |  Major | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-8006](https://issues.apache.org/jira/browse/HIVE-8006) | CBO Trunk Merge: Test fail that includes Table Sample, rows(), query hints |  Major | CBO | Laljo John Pullokkaran | Harish Butani |
| [HIVE-8003](https://issues.apache.org/jira/browse/HIVE-8003) | CBO: Handle Literal casting, Restrict CBO to select queries, Translate Strings, Optiq Log |  Major | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-7995](https://issues.apache.org/jira/browse/HIVE-7995) | Column statistics from expression does not handle fields within complex types |  Minor | Query Processor, Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7994](https://issues.apache.org/jira/browse/HIVE-7994) | BMJ test fails on tez |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-7992](https://issues.apache.org/jira/browse/HIVE-7992) | StatsRulesProcFactory should gracefully handle overflows |  Major | Statistics | Mostafa Mokhtar | Prasanth Jayachandran |
| [HIVE-7991](https://issues.apache.org/jira/browse/HIVE-7991) | Incorrect calculation of number of rows in JoinStatsRule.process results in overflow |  Minor | Statistics | Mostafa Mokhtar | Prasanth Jayachandran |
| [HIVE-7990](https://issues.apache.org/jira/browse/HIVE-7990) | With fetch column stats disabled number of elements in grouping set is not taken into account |  Major | Statistics | Mostafa Mokhtar | Prasanth Jayachandran |
| [HIVE-7979](https://issues.apache.org/jira/browse/HIVE-7979) | Fix testconfiguration.property file in Tez branch |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-7935](https://issues.apache.org/jira/browse/HIVE-7935) | Support dynamic service discovery for HiveServer2 |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-7907](https://issues.apache.org/jira/browse/HIVE-7907) | Bring up tez branch to changes in TEZ-1038, TEZ-1500 |  Major | Tez | Gopal V | Gopal V |
| [HIVE-7905](https://issues.apache.org/jira/browse/HIVE-7905) | CBO: more cost model changes |  Major | CBO | Harish Butani | Harish Butani |
| [HIVE-7904](https://issues.apache.org/jira/browse/HIVE-7904) | Missing null check cause NPE when updating join column stats in statistics annotation |  Trivial | Query Processor, Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7869](https://issues.apache.org/jira/browse/HIVE-7869) | Build long running HS2 test framework |  Major | Spark | Brock Noland | Suhas Satish |
| [HIVE-7864](https://issues.apache.org/jira/browse/HIVE-7864) | [CBO] Query fails if it refers only partitioning column |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7836](https://issues.apache.org/jira/browse/HIVE-7836) | Ease-out denominator for multi-attribute join case in statistics annotation |  Major | Query Processor, Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7825](https://issues.apache.org/jira/browse/HIVE-7825) | Bring tez-branch up-to the API changes made by TEZ-1472, TEZ-1469 |  Major | Tez | Gopal V | Gopal V |
| [HIVE-7820](https://issues.apache.org/jira/browse/HIVE-7820) | union\_null.q is not deterministic |  Major | Spark | Brock Noland | Brock Noland |
| [HIVE-7809](https://issues.apache.org/jira/browse/HIVE-7809) | Fix ObjectRegistry to work with Tez 0.5 |  Major | Tez | Siddharth Seth | Siddharth Seth |
| [HIVE-7808](https://issues.apache.org/jira/browse/HIVE-7808) | Changes to work against Tez-0.5 RC |  Major | Tez | Siddharth Seth | Siddharth Seth |
| [HIVE-7790](https://issues.apache.org/jira/browse/HIVE-7790) | Update privileges to check for update and delete |  Major | . | Alan Gates | Alan Gates |
| [HIVE-7788](https://issues.apache.org/jira/browse/HIVE-7788) | Generate plans for insert, update, and delete |  Major | Query Processor | Alan Gates | Alan Gates |
| [HIVE-7735](https://issues.apache.org/jira/browse/HIVE-7735) | Implement Char, Varchar in ParquetSerDe |  Major | Serializers/Deserializers | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-7734](https://issues.apache.org/jira/browse/HIVE-7734) | Join stats annotation rule is not updating columns statistics correctly |  Major | Query Processor, Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7679](https://issues.apache.org/jira/browse/HIVE-7679) | JOIN operator should update the column stats when number of rows changes |  Minor | Query Processor, Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7663](https://issues.apache.org/jira/browse/HIVE-7663) | OrcRecordUpdater needs to implement getStats |  Major | Transactions | Alan Gates | Alan Gates |
| [HIVE-7656](https://issues.apache.org/jira/browse/HIVE-7656) | Bring tez-branch up-to the API changes made by TEZ-1372 |  Major | . | Gopal V | Gopal V |
| [HIVE-7655](https://issues.apache.org/jira/browse/HIVE-7655) | CBO: Reading of partitioned table stats slows down explain |  Major | . | Mostafa Mokhtar | Harish Butani |
| [HIVE-7646](https://issues.apache.org/jira/browse/HIVE-7646) | Modify parser to support new grammar for Insert,Update,Delete |  Major | Query Processor | Eugene Koifman | Eugene Koifman |
| [HIVE-7639](https://issues.apache.org/jira/browse/HIVE-7639) | Bring tez-branch upto api changes in TEZ-1379, TEZ-1057, TEZ-1382 |  Major | Tez | Gopal V | Gopal V |
| [HIVE-7601](https://issues.apache.org/jira/browse/HIVE-7601) | Bring up tez-branch upto the API changes from TEZ-1058, TEZ-1303, TEZ-1346, TEZ-1041 |  Major | Tez | Gopal V | Gopal V |
| [HIVE-7589](https://issues.apache.org/jira/browse/HIVE-7589) | Some fixes and improvements to statistics annotation rules |  Major | Query Processor, Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7571](https://issues.apache.org/jira/browse/HIVE-7571) | RecordUpdater should read virtual columns from row |  Major | Transactions | Alan Gates | Alan Gates |
| [HIVE-7548](https://issues.apache.org/jira/browse/HIVE-7548) | Precondition checks should not fail the merge task in case of automatic trigger |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7544](https://issues.apache.org/jira/browse/HIVE-7544) | Changes related to TEZ-1288 (FastTezSerialization) |  Major | Tez | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-7536](https://issues.apache.org/jira/browse/HIVE-7536) | Make use of decimal column statistics in statistics annotation |  Minor | Query Processor, Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7535](https://issues.apache.org/jira/browse/HIVE-7535) | Make use of number of nulls column statistics in filter rule |  Minor | Query Processor, Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7513](https://issues.apache.org/jira/browse/HIVE-7513) | Add ROW\_\_ID VirtualColumn |  Major | Query Processor | Eugene Koifman | Eugene Koifman |
| [HIVE-7491](https://issues.apache.org/jira/browse/HIVE-7491) | Stats annotation fails to evaluate constant expressions in filter operator |  Major | Query Processor, Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-7457](https://issues.apache.org/jira/browse/HIVE-7457) | Minor HCatalog Pig Adapter test clean up |  Minor | . | David Chen | David Chen |
| [HIVE-7427](https://issues.apache.org/jira/browse/HIVE-7427) | Changes for EdgeConfigurations |  Major | Tez | Siddharth Seth | Siddharth Seth |
| [HIVE-7420](https://issues.apache.org/jira/browse/HIVE-7420) | Parameterize tests for HCatalog Pig interfaces for testing against all storage formats |  Major | HCatalog | David Chen | David Chen |
| [HIVE-7405](https://issues.apache.org/jira/browse/HIVE-7405) | Vectorize GROUP BY on the Reduce-Side (Part 1 – Basic) |  Major | Vectorization | Matt McCline | Matt McCline |
| [HIVE-7404](https://issues.apache.org/jira/browse/HIVE-7404) | Revoke privilege should support revoking of grant option |  Major | Authorization | Jason Dere | Jason Dere |
| [HIVE-7398](https://issues.apache.org/jira/browse/HIVE-7398) | Parent GBY of MUX is removed even it's not for semijoin |  Major | Query Processor | Navis | Navis |
| [HIVE-7357](https://issues.apache.org/jira/browse/HIVE-7357) | Add vectorized support for BINARY data type |  Major | Vectorization | Matt McCline | Matt McCline |
| [HIVE-7350](https://issues.apache.org/jira/browse/HIVE-7350) | Changes related to TEZ-692, TEZ-1169, TEZ-1234 |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-7291](https://issues.apache.org/jira/browse/HIVE-7291) | Refactor TestParser to understand test-property file |  Major | Testing Infrastructure | Szehon Ho | Szehon Ho |
| [HIVE-7286](https://issues.apache.org/jira/browse/HIVE-7286) | Parameterize HCatMapReduceTest for testing against all Hive storage formats |  Major | HCatalog | David Chen | David Chen |
| [HIVE-7262](https://issues.apache.org/jira/browse/HIVE-7262) | Partitioned Table Function (PTF) query fails on ORC table when attempting to vectorize |  Major | . | Matt McCline | Matt McCline |
| [HIVE-7204](https://issues.apache.org/jira/browse/HIVE-7204) | Use NULL vertex location hint for Prewarm DAG vertices |  Minor | Tez | Gopal V | Gopal V |
| [HIVE-7184](https://issues.apache.org/jira/browse/HIVE-7184) | TestHadoop20SAuthBridge no longer compiles after HADOOP-10448 |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-7156](https://issues.apache.org/jira/browse/HIVE-7156) | Group-By operator stat-annotation only uses distinct approx to generate rollups |  Blocker | . | Gopal V | Prasanth Jayachandran |
| [HIVE-7094](https://issues.apache.org/jira/browse/HIVE-7094) | Separate out static/dynamic partitioning code in FileRecordWriterContainer |  Major | HCatalog | David Chen | David Chen |
| [HIVE-7078](https://issues.apache.org/jira/browse/HIVE-7078) | Need file sink operators that work with ACID |  Major | Query Processor, Transactions | Alan Gates | Alan Gates |
| [HIVE-7029](https://issues.apache.org/jira/browse/HIVE-7029) | Vectorize ReduceWork |  Major | . | Matt McCline | Matt McCline |
| [HIVE-6993](https://issues.apache.org/jira/browse/HIVE-6993) | Update hive for Tez VertexLocationHint and getAVailableResource API changes |  Minor | . | Gopal V | Gopal V |
| [HIVE-6982](https://issues.apache.org/jira/browse/HIVE-6982) | Export all .sh equivalent for windows (.cmd files) in bin, bin/ext |  Major | Windows | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-6761](https://issues.apache.org/jira/browse/HIVE-6761) | Hashcode computation does not use maximum parallelism for scalable dynamic partitioning |  Major | Query Processor | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6760](https://issues.apache.org/jira/browse/HIVE-6760) | Scalable dynamic partitioning should bail out properly for list bucketing |  Major | Query Processor | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6735](https://issues.apache.org/jira/browse/HIVE-6735) | Make scalable dynamic partitioning work in vectorized mode |  Major | Query Processor | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6714](https://issues.apache.org/jira/browse/HIVE-6714) | Fix getMapSize() of LazyMap |  Major | Serializers/Deserializers | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6394](https://issues.apache.org/jira/browse/HIVE-6394) | Implement Timestmap in ParquetSerde |  Major | Serializers/Deserializers | Jarek Jarcec Cecho | Szehon Ho |
| [HIVE-6367](https://issues.apache.org/jira/browse/HIVE-6367) | Implement Decimal in ParquetSerde |  Major | Serializers/Deserializers | Brock Noland | Xuefu Zhang |
| [HIVE-6290](https://issues.apache.org/jira/browse/HIVE-6290) | Add support for hbase filters for composite keys |  Major | HBase Handler | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-6252](https://issues.apache.org/jira/browse/HIVE-6252) | sql std auth - support 'with admin option' in revoke role metastore api |  Major | Authorization, SQLStandardAuthorization | Thejas M Nair | Jason Dere |
| [HIVE-6123](https://issues.apache.org/jira/browse/HIVE-6123) | Implement checkstyle in maven |  Major | Build Infrastructure | Brock Noland | Lars Francke |
| [HIVE-6031](https://issues.apache.org/jira/browse/HIVE-6031) | explain subquery rewrite for where clause predicates |  Major | . | Harish Butani | Harish Butani |
| [HIVE-5998](https://issues.apache.org/jira/browse/HIVE-5998) | Add vectorized reader for Parquet files |  Minor | Serializers/Deserializers, Vectorization | Remus Rusanu | Remus Rusanu |
| [HIVE-5760](https://issues.apache.org/jira/browse/HIVE-5760) | Add vectorized support for CHAR/VARCHAR data types |  Major | Vectorization | Eric Hanson | Matt McCline |
| [HIVE-5179](https://issues.apache.org/jira/browse/HIVE-5179) | Wincompat : change script tests from bash to sh |  Major | Windows | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-5176](https://issues.apache.org/jira/browse/HIVE-5176) | Wincompat : Changes for allowing various path compatibilities with Windows |  Major | Windows | Sushanth Sowmyan | Jason Dere |
| [HIVE-4629](https://issues.apache.org/jira/browse/HIVE-4629) | HS2 should support an API to retrieve query logs |  Major | HiveServer2 | Shreepadma Venugopalan | Dong Chen |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-6241](https://issues.apache.org/jira/browse/HIVE-6241) | Remove direct reference of Hadoop23Shims inQTestUtil |  Trivial | Tests | Navis | Navis |
| [HIVE-8637](https://issues.apache.org/jira/browse/HIVE-8637) | In insert into X select from Y, table properties from X are clobbering those from Y |  Critical | . | Alan Gates | Alan Gates |
| [HIVE-8265](https://issues.apache.org/jira/browse/HIVE-8265) | Build failure on hadoop-1 |  Blocker | Tests | Navis | Navis |
| [HIVE-8224](https://issues.apache.org/jira/browse/HIVE-8224) | Support Char, Varchar in AvroSerDe |  Major | Serializers/Deserializers | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8072](https://issues.apache.org/jira/browse/HIVE-8072) | TesParse\_union is failing on trunk |  Major | Tests | Ashutosh Chauhan | Navis |
| [HIVE-7960](https://issues.apache.org/jira/browse/HIVE-7960) | Upgrade to Hadoop 2.5 |  Major | . | Brock Noland | Gunther Hagleitner |
| [HIVE-7789](https://issues.apache.org/jira/browse/HIVE-7789) | Documentation for AccumuloStorageHandler |  Major | Documentation | Josh Elser | Josh Elser |
| [HIVE-7524](https://issues.apache.org/jira/browse/HIVE-7524) | Enable auto conversion of SMBjoin in presence of constant propagate optimization |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7498](https://issues.apache.org/jira/browse/HIVE-7498) | NPE on show grant for global privilege |  Minor | Authorization | Navis | Navis |
| [HIVE-7497](https://issues.apache.org/jira/browse/HIVE-7497) | Fix some default values in HiveConf |  Major | . | Brock Noland | Dong Chen |
| [HIVE-7496](https://issues.apache.org/jira/browse/HIVE-7496) | Exclude conf/hive-default.xml.template in version control and include it dist profile |  Minor | . | Navis | Navis |
| [HIVE-7456](https://issues.apache.org/jira/browse/HIVE-7456) | HIVE-7361 missed updating authorization\_fail\_8 |  Trivial | Tests | Navis | Navis |
| [HIVE-7381](https://issues.apache.org/jira/browse/HIVE-7381) | Class TezEdgeProperty missing license header |  Trivial | Documentation | Xuefu Zhang | Navis |
| [HIVE-7365](https://issues.apache.org/jira/browse/HIVE-7365) | Explain authorize for auth2 throws exception |  Minor | Authorization | Navis | Navis |
| [HIVE-7364](https://issues.apache.org/jira/browse/HIVE-7364) | Trunk cannot be built on -Phadoop1 after HIVE-7144 |  Major | Build Infrastructure | Navis | Navis |
| [HIVE-7301](https://issues.apache.org/jira/browse/HIVE-7301) | Restore constants moved to HiveConf by HIVE-7211 |  Trivial | Configuration | Navis | Navis |
| [HIVE-7289](https://issues.apache.org/jira/browse/HIVE-7289) | revert HIVE-6469 |  Major | CLI | Jayesh | Jayesh |
| [HIVE-7240](https://issues.apache.org/jira/browse/HIVE-7240) | Add classifier for avro-mapred jar |  Major | File Formats | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7206](https://issues.apache.org/jira/browse/HIVE-7206) | Duplicate declaration of build-helper-maven-plugin in root pom |  Major | Build Infrastructure | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-7194](https://issues.apache.org/jira/browse/HIVE-7194) | authorization\_ctas.q failing on trunk |  Major | Authorization | Ashutosh Chauhan | Thejas M Nair |
| [HIVE-7126](https://issues.apache.org/jira/browse/HIVE-7126) | Cleanup build warnings while building hive projects |  Minor | Build Infrastructure | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-7108](https://issues.apache.org/jira/browse/HIVE-7108) | Cleanup HBaseStorageHandler |  Major | HBase Handler | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-7095](https://issues.apache.org/jira/browse/HIVE-7095) | Fix test fails for both hadoop-1 and hadoop-2 |  Major | Tests | Navis | Navis |
| [HIVE-7034](https://issues.apache.org/jira/browse/HIVE-7034) | Explain result of TezWork is not deterministic |  Trivial | Tests | Navis | Navis |
| [HIVE-7008](https://issues.apache.org/jira/browse/HIVE-7008) | Clean-up some old dead code |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6988](https://issues.apache.org/jira/browse/HIVE-6988) | Hive changes for tez-0.5.x compatibility |  Major | . | Gopal V | Gopal V |
| [HIVE-6903](https://issues.apache.org/jira/browse/HIVE-6903) | Change default value of hive.metastore.execute.setugi to true |  Major | Metastore | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6869](https://issues.apache.org/jira/browse/HIVE-6869) | Golden file updates for tez tests. |  Major | Tests, Tez | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6836](https://issues.apache.org/jira/browse/HIVE-6836) | Upgrade parquet to 1.4.0 |  Major | Serializers/Deserializers | Szehon Ho | Szehon Ho |
| [HIVE-6543](https://issues.apache.org/jira/browse/HIVE-6543) | TestEmbeddedThriftBinaryCLIService.testExecuteStatementAsync is failing sometimes |  Trivial | Tests | Navis | Navis |
| [HIVE-6338](https://issues.apache.org/jira/browse/HIVE-6338) | Improve exception handling in createDefaultDb() in Metastore |  Blocker | Metastore | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-5976](https://issues.apache.org/jira/browse/HIVE-5976) | Decouple input formats from STORED as keywords |  Major | . | Brock Noland | David Chen |
| [HIVE-5342](https://issues.apache.org/jira/browse/HIVE-5342) | Remove pre hadoop-0.20.0 related codes |  Trivial | . | Navis | Jason Dere |
| [HIVE-2974](https://issues.apache.org/jira/browse/HIVE-2974) | Add online docs for from\_utc\_timestamp() and to\_utc\_timestamp() |  Major | UDF | Carl Steinbach | Anandha L Ranganathan |


