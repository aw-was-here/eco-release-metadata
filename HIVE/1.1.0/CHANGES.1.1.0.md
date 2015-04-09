
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

## Release 1.1.0 - 2015-03-07

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-8435](https://issues.apache.org/jira/browse/HIVE-8435) | Add identity project remover optimization |  Major | Logical Optimizer | Ashutosh Chauhan | Jesus Camacho Rodriguez |
| [HIVE-7122](https://issues.apache.org/jira/browse/HIVE-7122) | Storage format for create like table |  Major | Query Processor | Vasanth kumar RJ | Vasanth kumar RJ |
| [HIVE-3405](https://issues.apache.org/jira/browse/HIVE-3405) | UDF initcap to obtain a string with the first letter of each word in uppercase other letters in lowercase |  Major | UDF | Archana Nair | Alexander Pivovarov |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-9708](https://issues.apache.org/jira/browse/HIVE-9708) | Remove testlibs directory |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9707](https://issues.apache.org/jira/browse/HIVE-9707) | ExecDriver does not get token from environment |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9705](https://issues.apache.org/jira/browse/HIVE-9705) | All curator deps should be listed in dependency management section |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9691](https://issues.apache.org/jira/browse/HIVE-9691) | Include a few more files include the source tarball |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9608](https://issues.apache.org/jira/browse/HIVE-9608) | Define SPARK\_HOME if not defined automagically |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-9586](https://issues.apache.org/jira/browse/HIVE-9586) | Too verbose log can hurt performance, we should always check log level first |  Major | . | Rui Li | Rui Li |
| [HIVE-9549](https://issues.apache.org/jira/browse/HIVE-9549) | Include missing directories in source tarball |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-9538](https://issues.apache.org/jira/browse/HIVE-9538) | Exclude thirdparty directory from tarballs |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-9383](https://issues.apache.org/jira/browse/HIVE-9383) | Improve schema verification error message |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-9372](https://issues.apache.org/jira/browse/HIVE-9372) | Parallel checking non-combinable paths in CombineHiveInputFormat |  Major | . | Rui Li | Rui Li |
| [HIVE-9367](https://issues.apache.org/jira/browse/HIVE-9367) | CombineFileInputFormatShim#getDirIndices is expensive |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9358](https://issues.apache.org/jira/browse/HIVE-9358) | Create LAST\_DAY UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9357](https://issues.apache.org/jira/browse/HIVE-9357) | Create ADD\_MONTHS UDF |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9341](https://issues.apache.org/jira/browse/HIVE-9341) | Apply ColumnPrunning for noop PTFs |  Trivial | PTF-Windowing | Navis | Navis |
| [HIVE-9318](https://issues.apache.org/jira/browse/HIVE-9318) | Add UnionMerge rule on cbo path |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9314](https://issues.apache.org/jira/browse/HIVE-9314) | Writable object inspector should use Writable classes from Hadoop for get |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9244](https://issues.apache.org/jira/browse/HIVE-9244) | Upgrade 0.23 hadoop-shims to latest stable hadoop-2.6.0 |  Major | Shims | Gopal V | Gopal V |
| [HIVE-9226](https://issues.apache.org/jira/browse/HIVE-9226) | Beeline interweaves the query result and query log sometimes |  Minor | . | Dong Chen | Dong Chen |
| [HIVE-9189](https://issues.apache.org/jira/browse/HIVE-9189) | Add ProjectRemove rule on CBO path |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9176](https://issues.apache.org/jira/browse/HIVE-9176) | Delegation token interval should be configurable in HadoopThriftAuthBridge |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9158](https://issues.apache.org/jira/browse/HIVE-9158) | Multiple LDAP server URLs in hive.server2.authentication.ldap.url |  Minor | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-9140](https://issues.apache.org/jira/browse/HIVE-9140) | Add Calcite's ReduceExpressionRules to Hive |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9119](https://issues.apache.org/jira/browse/HIVE-9119) | ZooKeeperHiveLockManager does not use zookeeper in the proper way |  Major | Locking | Na Yang | Na Yang |
| [HIVE-9106](https://issues.apache.org/jira/browse/HIVE-9106) | improve the performance of null scan optimizer when several table scans share a physical path |  Minor | Physical Optimizer | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-9062](https://issues.apache.org/jira/browse/HIVE-9062) | Explain plan doesn't print join keys for Tez shuffle join |  Major | Diagnosability, Tez | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9049](https://issues.apache.org/jira/browse/HIVE-9049) | Metastore should use TCompactProtocol as opposed to TBinaryProtocol |  Minor | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9037](https://issues.apache.org/jira/browse/HIVE-9037) | Improve explain plan to show joining keys for shuffle join |  Major | Diagnosability | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8996](https://issues.apache.org/jira/browse/HIVE-8996) | Rename getUGIForConf |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8988](https://issues.apache.org/jira/browse/HIVE-8988) | Support advanced aggregation in Hive to Calcite path |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-8983](https://issues.apache.org/jira/browse/HIVE-8983) | PTest Backup spark.log in addition to hive.log |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8977](https://issues.apache.org/jira/browse/HIVE-8977) | TestParquetDirect should be abstract |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-8976](https://issues.apache.org/jira/browse/HIVE-8976) | Make nine additional tests deterministic |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8971](https://issues.apache.org/jira/browse/HIVE-8971) | HIVE-8965 exposed some classes which start with Test but are not tests |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8910](https://issues.apache.org/jira/browse/HIVE-8910) | Refactoring of PassThroughOutputFormat |  Minor | Query Processor, StorageHandler | Navis | Navis |
| [HIVE-8839](https://issues.apache.org/jira/browse/HIVE-8839) | Support "alter table .. add/replace columns cascade" |  Major | SQL | Chaoyu Tang | Chaoyu Tang |
| [HIVE-8829](https://issues.apache.org/jira/browse/HIVE-8829) | Upgrade to Thrift 0.9.2 |  Major | . | Vaibhav Gumashta | Prasad Mujumdar |
| [HIVE-8823](https://issues.apache.org/jira/browse/HIVE-8823) | Add additional serde properties for parquet |  Major | . | Brock Noland | Ferdinand Xu |
| [HIVE-8813](https://issues.apache.org/jira/browse/HIVE-8813) | Allow tests to be excluded based on pattern/regex |  Major | Testing Infrastructure | Jason Dere | Jason Dere |
| [HIVE-8710](https://issues.apache.org/jira/browse/HIVE-8710) | Add more tests for transactional inserts |  Major | Transactions | Alan Gates | Alan Gates |
| [HIVE-8661](https://issues.apache.org/jira/browse/HIVE-8661) | JDBC MinimizeJAR should be configurable in pom.xml |  Minor | Build Infrastructure | Gopal V | Gopal V |
| [HIVE-8642](https://issues.apache.org/jira/browse/HIVE-8642) | Hive stack() UDTF Doesn't Support NULL Insert Values |  Minor | SQL, UDF | Nishant Kelkar | Navis |
| [HIVE-8552](https://issues.apache.org/jira/browse/HIVE-8552) | Remove hard code of offline and make addHost api public |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8469](https://issues.apache.org/jira/browse/HIVE-8469) | Add parquet.compression as a Serde Property |  Minor | . | Brock Noland | Ferdinand Xu |
| [HIVE-8449](https://issues.apache.org/jira/browse/HIVE-8449) | webhcat startup does not create the log directory |  Major | WebHCat | Na Yang | Na Yang |
| [HIVE-8424](https://issues.apache.org/jira/browse/HIVE-8424) | Support fair scheduler user queue mapping in non-impersonation mode |  Major | Shims | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8395](https://issues.apache.org/jira/browse/HIVE-8395) | CBO: enable by default |  Major | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8357](https://issues.apache.org/jira/browse/HIVE-8357) | Path type entities should use qualified path rather than string |  Minor | Authorization | Navis | Navis |
| [HIVE-8347](https://issues.apache.org/jira/browse/HIVE-8347) | Use base-64 encoding instead of custom encoding for serialized objects |  Major | HCatalog | Mariappan Asokan | Mariappan Asokan |
| [HIVE-8337](https://issues.apache.org/jira/browse/HIVE-8337) | Change default of hive.warehouse.subdir.inherit.perms to true |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8155](https://issues.apache.org/jira/browse/HIVE-8155) |  In select statement after * any random characters are allowed in hive but in RDBMS its not allowed |  Critical | . | Ferdinand Xu | Dong Chen |
| [HIVE-8094](https://issues.apache.org/jira/browse/HIVE-8094) | add LIKE keyword support for SHOW FUNCTIONS |  Major | . | peter liu | peter liu |
| [HIVE-7977](https://issues.apache.org/jira/browse/HIVE-7977) | Avoid creating serde for partitions if possible in FetchTask |  Trivial | Query Processor | Navis | Navis |
| [HIVE-7896](https://issues.apache.org/jira/browse/HIVE-7896) | orcfiledump should be able to dump data |  Major | File Formats | Alan Gates | Alan Gates |
| [HIVE-7868](https://issues.apache.org/jira/browse/HIVE-7868) | AvroSerDe error handling could be improved |  Major | . | Brock Noland | Ferdinand Xu |
| [HIVE-7858](https://issues.apache.org/jira/browse/HIVE-7858) | Parquet compression should be configurable via table property |  Major | . | Brock Noland | Ferdinand Xu |
| [HIVE-7685](https://issues.apache.org/jira/browse/HIVE-7685) | Parquet memory manager |  Major | Serializers/Deserializers | Brock Noland | Dong Chen |
| [HIVE-7605](https://issues.apache.org/jira/browse/HIVE-7605) | add more javadoc to HivePrivilegeObject |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-7550](https://issues.apache.org/jira/browse/HIVE-7550) | Extend cached evaluation to multiple expressions |  Trivial | Query Processor | Navis | Navis |
| [HIVE-7408](https://issues.apache.org/jira/browse/HIVE-7408) | HCatPartition needs getPartCols method |  Minor | HCatalog | JongWon Park | Navis |
| [HIVE-7313](https://issues.apache.org/jira/browse/HIVE-7313) | Allow in-memory/ssd session-level temp-tables |  Major | Tez | Gopal V | Gopal V |
| [HIVE-7032](https://issues.apache.org/jira/browse/HIVE-7032) | Remove Triple Negative in Error 10129 |  Trivial | Documentation, Query Processor | Alan Jackoway | Sergio Peña |
| [HIVE-6148](https://issues.apache.org/jira/browse/HIVE-6148) | Support arbitrary structs stored in HBase |  Major | HBase Handler | Swarnim Kulkarni | Swarnim Kulkarni |
| [HIVE-5718](https://issues.apache.org/jira/browse/HIVE-5718) | Support direct fetch for lateral views, sub queries, etc. |  Trivial | Query Processor | Navis | Navis |
| [HIVE-4809](https://issues.apache.org/jira/browse/HIVE-4809) | ReduceSinkOperator of PTFOperator can have redundant key columns |  Major | PTF-Windowing | Yin Huai | Navis |
| [HIVE-4766](https://issues.apache.org/jira/browse/HIVE-4766) | Support HS2 client login timeout when the thrift thread max# is reached |  Major | HiveServer2 | Chaoyu Tang | Chaoyu Tang |
| [HIVE-4639](https://issues.apache.org/jira/browse/HIVE-4639) | Add has null flag to ORC internal index |  Major | File Formats | Owen O'Malley | Prasanth Jayachandran |
| [HIVE-3187](https://issues.apache.org/jira/browse/HIVE-3187) | support ISO-2012 timestamp literals |  Major | . | N Campbell | Navis |
| [HIVE-2828](https://issues.apache.org/jira/browse/HIVE-2828) | make timestamp accessible in the hbase KeyValue |  Trivial | HBase Handler | Navis | Navis |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-9701](https://issues.apache.org/jira/browse/HIVE-9701) | JMH module does not compile under hadoop-1 profile |  Blocker | . | Brock Noland | Brock Noland |
| [HIVE-9686](https://issues.apache.org/jira/browse/HIVE-9686) | HiveMetastore.logAuditEvent can be used before sasl server is started |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9685](https://issues.apache.org/jira/browse/HIVE-9685) | CLIService should create SessionState after logging into kerberos |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9684](https://issues.apache.org/jira/browse/HIVE-9684) | Incorrect disk range computation in ORC because of optional stream kind |  Critical | File Formats | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9651](https://issues.apache.org/jira/browse/HIVE-9651) | FileSinkOperator does not pass in conf to serde.initialize |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9646](https://issues.apache.org/jira/browse/HIVE-9646) | Beeline doesn't show Spark job progress info [Spark Branch] |  Blocker | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9621](https://issues.apache.org/jira/browse/HIVE-9621) | HiveServer2 http mode - embedded jetty should use SynchronousQueue |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-9611](https://issues.apache.org/jira/browse/HIVE-9611) | Allow SPARK\_HOME as well as spark.home to define sparks location |  Minor | Spark | Brock Noland | Brock Noland |
| [HIVE-9610](https://issues.apache.org/jira/browse/HIVE-9610) | Continuation of HIVE-9438 - The standalone-jdbc jar missing some classes |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9593](https://issues.apache.org/jira/browse/HIVE-9593) | ORC Reader should ignore unknown metadata streams |  Major | File Formats | Gopal V | Owen O'Malley |
| [HIVE-9519](https://issues.apache.org/jira/browse/HIVE-9519) | Bump up spark client connection timeout |  Blocker | Spark | Ashish K Singh | Ashish K Singh |
| [HIVE-9502](https://issues.apache.org/jira/browse/HIVE-9502) | Parquet cannot read Map types from files written with Hive \<= 0.12 |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-9475](https://issues.apache.org/jira/browse/HIVE-9475) | HiveMetastoreClient.tableExists does not work |  Blocker | . | Brock Noland | Brock Noland |
| [HIVE-9462](https://issues.apache.org/jira/browse/HIVE-9462) | HIVE-8577 - breaks type evolution |  Major | Serializers/Deserializers | Brock Noland | Brock Noland |
| [HIVE-9454](https://issues.apache.org/jira/browse/HIVE-9454) | Test failures due to new Calcite version |  Major | . | Brock Noland | Laljo John Pullokkaran |
| [HIVE-9448](https://issues.apache.org/jira/browse/HIVE-9448) | Merge spark to trunk 1/23/15 |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-9446](https://issues.apache.org/jira/browse/HIVE-9446) | JDBC DatabaseMetadata.getColumns() does not work for temporary tables |  Major | JDBC | Jason Dere | Jason Dere |
| [HIVE-9445](https://issues.apache.org/jira/browse/HIVE-9445) | Revert HIVE-5700 - enforce single date format for partition column storage |  Blocker | Metastore | Brock Noland | Brock Noland |
| [HIVE-9443](https://issues.apache.org/jira/browse/HIVE-9443) | ORC PPD - fix fuzzy case evaluation of IS\_NULL |  Major | File Formats | Gopal V | Gopal V |
| [HIVE-9441](https://issues.apache.org/jira/browse/HIVE-9441) | Remove call to deprecated Calcite method |  Minor | . | Julian Hyde | Julian Hyde |
| [HIVE-9440](https://issues.apache.org/jira/browse/HIVE-9440) | Folders may not be pruned for Hadoop 2 |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9437](https://issues.apache.org/jira/browse/HIVE-9437) | Beeline does not add any existing HADOOP\_CLASSPATH |  Blocker | . | Ashish K Singh | Brock Noland |
| [HIVE-9414](https://issues.apache.org/jira/browse/HIVE-9414) | Fixup post HIVE-9264 - Merge encryption branch to trunk |  Major | . | Brock Noland | Vikram Dixit K |
| [HIVE-9396](https://issues.apache.org/jira/browse/HIVE-9396) | date\_add()/date\_sub() should allow tinyint/smallint/bigint arguments in addition to int |  Major | UDF | Jason Dere | Sergio Peña |
| [HIVE-9393](https://issues.apache.org/jira/browse/HIVE-9393) | reduce noisy log level of ColumnarSerDe.java:116 from INFO to DEBUG |  Minor | Serializers/Deserializers | Yongzhi Chen | Yongzhi Chen |
| [HIVE-9386](https://issues.apache.org/jira/browse/HIVE-9386) | FileNotFoundException when using in\_file() |  Major | UDF | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-9382](https://issues.apache.org/jira/browse/HIVE-9382) | Query got rerun with Global Limit optimization on and Fetch optimization off |  Major | Physical Optimizer | Wei Zheng | Wei Zheng |
| [HIVE-9381](https://issues.apache.org/jira/browse/HIVE-9381) | HCatalog hardcodes maximum append limit to 1000. |  Major | HCatalog | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-9377](https://issues.apache.org/jira/browse/HIVE-9377) | UDF in\_file() in WHERE predicate causes NPE. |  Major | UDF | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-9369](https://issues.apache.org/jira/browse/HIVE-9369) | fix arguments length checking in Upper and Lower UDF |  Trivial | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9366](https://issues.apache.org/jira/browse/HIVE-9366) | wrong date in description annotation in date\_add() and date\_sub() udf |  Trivial | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9353](https://issues.apache.org/jira/browse/HIVE-9353) | make TABLE keyword optional in INSERT INTO TABLE foo... |  Major | Parser | Eugene Koifman | Eugene Koifman |
| [HIVE-9351](https://issues.apache.org/jira/browse/HIVE-9351) | Running Hive Jobs with Tez cause templeton to never report percent complete |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-9347](https://issues.apache.org/jira/browse/HIVE-9347) | Bug with max() together with rank() and grouping sets |  Major | Query Processor | Michal Krawczyk | Navis |
| [HIVE-9344](https://issues.apache.org/jira/browse/HIVE-9344) | Fix flaky test optimize\_nullscan |  Major | Tests | Brock Noland | Navis |
| [HIVE-9331](https://issues.apache.org/jira/browse/HIVE-9331) | get rid of pre-optimized-hashtable memory optimizations |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-9330](https://issues.apache.org/jira/browse/HIVE-9330) | DummyTxnManager will throw NPE if WriteEntity writeType has not been set |  Minor | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-9316](https://issues.apache.org/jira/browse/HIVE-9316) | TestSqoop tests in WebHCat testsuite hardcode libdir path to hdfs |  Minor | Tests, WebHCat | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-9310](https://issues.apache.org/jira/browse/HIVE-9310) | CLI JLine does not flush history back to ~/.hivehistory |  Minor | CLI | Gopal V | Gopal V |
| [HIVE-9309](https://issues.apache.org/jira/browse/HIVE-9309) | schematool fails on Postgres 8.1 |  Major | Database/Schema | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-9301](https://issues.apache.org/jira/browse/HIVE-9301) | Potential null dereference in MoveTask#createTargetPath() |  Major | . | Ted Yu | Ted Yu |
| [HIVE-9300](https://issues.apache.org/jira/browse/HIVE-9300) | Make TCompactProtocol configurable |  Major | Metastore | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9299](https://issues.apache.org/jira/browse/HIVE-9299) | Reuse Configuration in AvroSerdeUtils |  Major | Serializers/Deserializers | Nitay Joffe | Nitay Joffe |
| [HIVE-9296](https://issues.apache.org/jira/browse/HIVE-9296) | Need to add schema upgrade changes for queueing events in the database |  Major | Metastore | Alan Gates | Alan Gates |
| [HIVE-9255](https://issues.apache.org/jira/browse/HIVE-9255) | Fastpath for limited fetches from unpartitioned tables |  Minor | Physical Optimizer | Gopal V | Gopal V |
| [HIVE-9243](https://issues.apache.org/jira/browse/HIVE-9243) | Static Map in IOContext is not thread safe |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9242](https://issues.apache.org/jira/browse/HIVE-9242) | Many places in CBO code eat exceptions |  Blocker | . | Brock Noland |  |
| [HIVE-9221](https://issues.apache.org/jira/browse/HIVE-9221) | Remove deprecation warning for hive.metastore.local |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-9215](https://issues.apache.org/jira/browse/HIVE-9215) | Some mapjoin queries broken with IdentityProjectRemover with PPD |  Major | Logical Optimizer | Szehon Ho | Navis |
| [HIVE-9203](https://issues.apache.org/jira/browse/HIVE-9203) | CREATE TEMPORARY FUNCTION hangs trying to acquire lock |  Major | . | Johndee Burks | Chaoyu Tang |
| [HIVE-9199](https://issues.apache.org/jira/browse/HIVE-9199) | Excessive exclusive lock used in some DDLs with DummyTxnManager |  Major | Locking | Chaoyu Tang | Chaoyu Tang |
| [HIVE-9197](https://issues.apache.org/jira/browse/HIVE-9197) | fix lvj\_mapjoin.q diff in trunk |  Trivial | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9195](https://issues.apache.org/jira/browse/HIVE-9195) | CBO changes constant to column type |  Major | CBO | Navis | Navis |
| [HIVE-9177](https://issues.apache.org/jira/browse/HIVE-9177) | Fix child operator references after NonBlockingOpDeDupProc (II) |  Major | Logical Optimizer | Szehon Ho | Szehon Ho |
| [HIVE-9154](https://issues.apache.org/jira/browse/HIVE-9154) | Cache pathToPartitionInfo in context aware record reader |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9150](https://issues.apache.org/jira/browse/HIVE-9150) | Unrelated types are compared in GenTezWork#getFollowingWorkIndex() |  Minor | . | Ted Yu |  |
| [HIVE-9149](https://issues.apache.org/jira/browse/HIVE-9149) | Add unit test to test implicit conversion during dynamic partitioning/distribute by |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-9130](https://issues.apache.org/jira/browse/HIVE-9130) |  vector\_partition\_diff\_num\_cols result is not updated after CBO upgrade |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-9129](https://issues.apache.org/jira/browse/HIVE-9129) | Migrate to newer Calcite snapshot, where ByteString is now in org.apache.calcite.avatica.util |  Major | . | Julian Hyde | Ashutosh Chauhan |
| [HIVE-9122](https://issues.apache.org/jira/browse/HIVE-9122) | Need to remove additional references to hive-shims-common-secure, hive-shims-0.20 |  Major | Build Infrastructure | Jason Dere | Jason Dere |
| [HIVE-9120](https://issues.apache.org/jira/browse/HIVE-9120) | Hive Query log does not work when hive.exec.parallel is true |  Major | HiveServer2, Logging | Dong Chen | Dong Chen |
| [HIVE-9113](https://issues.apache.org/jira/browse/HIVE-9113) | Explain on query failed with NPE |  Major | Query Processor | Chao | Navis |
| [HIVE-9096](https://issues.apache.org/jira/browse/HIVE-9096) | GenericUDF may be left unclosed in PartitionPrune#visitCall() |  Minor | . | Ted Yu |  |
| [HIVE-9077](https://issues.apache.org/jira/browse/HIVE-9077) | Set completer in CliDriver is not working |  Trivial | CLI | Navis | Navis |
| [HIVE-9060](https://issues.apache.org/jira/browse/HIVE-9060) | Fix child operator references after NonBlockingOpDeDupProc |  Major | Logical Optimizer | Szehon Ho | Szehon Ho |
| [HIVE-9055](https://issues.apache.org/jira/browse/HIVE-9055) | Tez: union all followed by group by followed by another union all gives error |  Major | Tez | Pengcheng Xiong | Vikram Dixit K |
| [HIVE-9048](https://issues.apache.org/jira/browse/HIVE-9048) | Hive build failed on hadoop-1 after HIVE-8828. |  Major | . | Chengxiang Li | Chengxiang Li |
| [HIVE-9032](https://issues.apache.org/jira/browse/HIVE-9032) | Help for orcfiledump script does not reflect new options |  Major | . | Alan Gates | Alan Gates |
| [HIVE-9024](https://issues.apache.org/jira/browse/HIVE-9024) | NullPointerException when starting webhcat server if templeton.hive.properties is not set |  Major | WebHCat | Na Yang | Na Yang |
| [HIVE-9011](https://issues.apache.org/jira/browse/HIVE-9011) | Fix parquet\_join.q determinism |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9006](https://issues.apache.org/jira/browse/HIVE-9006) | hiveserver thrift api version is still 6 |  Major | . | Binglin Chang | Binglin Chang |
| [HIVE-9001](https://issues.apache.org/jira/browse/HIVE-9001) | Ship with log4j.properties file that has a reliable time based rolling policy |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-8990](https://issues.apache.org/jira/browse/HIVE-8990) | mapjoin\_mapjoin.q is failing on Tez (missed golden file update) |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8978](https://issues.apache.org/jira/browse/HIVE-8978) | Fix test determinism issue for qfile: smb\_mapjoin\_1.q etc |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8975](https://issues.apache.org/jira/browse/HIVE-8975) | Possible performance regression on bucket\_map\_join\_tez2.q |  Major | Logical Optimizer, Statistics | Jesus Camacho Rodriguez | Prasanth Jayachandran |
| [HIVE-8967](https://issues.apache.org/jira/browse/HIVE-8967) | Fix bucketmapjoin7.q determinism |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8965](https://issues.apache.org/jira/browse/HIVE-8965) | Enhance PTest to kill all processes between tests and to report when a TEST*.xml file is not generated |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8964](https://issues.apache.org/jira/browse/HIVE-8964) | Some TestMiniTezCliDriver tests taking two hours |  Blocker | . | Brock Noland | Gunther Hagleitner |
| [HIVE-8948](https://issues.apache.org/jira/browse/HIVE-8948) | TestStreaming is flaky |  Major | . | Alan Gates | Alan Gates |
| [HIVE-8944](https://issues.apache.org/jira/browse/HIVE-8944) | TestCompactor fails with IncompatibleClassChangeError |  Major | . | Brock Noland | Alan Gates |
| [HIVE-8938](https://issues.apache.org/jira/browse/HIVE-8938) | Compiler should save the transform URI as input entity |  Major | Parser, SQL | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-8926](https://issues.apache.org/jira/browse/HIVE-8926) | Projections that only swap input columns are identified incorrectly as identity projections |  Major | Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-8917](https://issues.apache.org/jira/browse/HIVE-8917) | HIVE-5679 adds two thread safety problems |  Major | . | Brock Noland | Sergey Shelukhin |
| [HIVE-8916](https://issues.apache.org/jira/browse/HIVE-8916) | Handle user@domain username under LDAP authentication |  Major | Authentication | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8914](https://issues.apache.org/jira/browse/HIVE-8914) | HDFSCleanup thread holds reference to FileSystem |  Major | WebHCat | shanyu zhao | shanyu zhao |
| [HIVE-8909](https://issues.apache.org/jira/browse/HIVE-8909) | Hive doesn't correctly read Parquet nested types |  Major | . | Ryan Blue | Ryan Blue |
| [HIVE-8901](https://issues.apache.org/jira/browse/HIVE-8901) | increase retry attempt, interval on metastore database errors |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-8893](https://issues.apache.org/jira/browse/HIVE-8893) | Implement whitelist for builtin UDFs to avoid untrused code execution in multiuser mode |  Major | Authorization, HiveServer2, SQL | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-8891](https://issues.apache.org/jira/browse/HIVE-8891) | Another possible cause to NucleusObjectNotFoundException from drops/rollback |  Major | Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-8889](https://issues.apache.org/jira/browse/HIVE-8889) | JDBC Driver ResultSet.getXXXXXX(String columnLabel) methods Broken |  Critical | . | G Lingle | Chaoyu Tang |
| [HIVE-8881](https://issues.apache.org/jira/browse/HIVE-8881) | Receiving json "{"error":"Could not find job job\_1415748506143\_0002"}" when web client tries to fetch all jobs from webhcat where HDFS does not have the data. |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-8879](https://issues.apache.org/jira/browse/HIVE-8879) | Upgrade derby version to address race candition |  Major | HCatalog, Metastore | Roshan Naik | Roshan Naik |
| [HIVE-8877](https://issues.apache.org/jira/browse/HIVE-8877) | improve context logging during job submission via WebHCat |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-8875](https://issues.apache.org/jira/browse/HIVE-8875) | hive.optimize.sort.dynamic.partition should be turned off for ACID |  Major | . | Alan Gates | Alan Gates |
| [HIVE-8874](https://issues.apache.org/jira/browse/HIVE-8874) | Error Accessing HBase from Hive via Oozie on Kerberos 5.0.1 cluster |  Major | HBase Handler | Yongzhi Chen | Yongzhi Chen |
| [HIVE-8872](https://issues.apache.org/jira/browse/HIVE-8872) | Hive view of HBase range scan intermittently returns incorrect data. |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-8869](https://issues.apache.org/jira/browse/HIVE-8869) | RowSchema not updated for some ops when columns are pruned |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-8863](https://issues.apache.org/jira/browse/HIVE-8863) | Cannot drop table with uppercase name after "compute statistics for columns" |  Major | Metastore, Statistics | Juan Yu | Chaoyu Tang |
| [HIVE-8850](https://issues.apache.org/jira/browse/HIVE-8850) | ObjectStore:: rollbackTransaction() needs to be looked into further. |  Major | Metastore | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-8848](https://issues.apache.org/jira/browse/HIVE-8848) | data loading from text files or text file processing doesn't handle nulls correctly |  Major | . | Sergey Shelukhin | Navis |
| [HIVE-8847](https://issues.apache.org/jira/browse/HIVE-8847) | Fix bugs in jenkins scripts |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8825](https://issues.apache.org/jira/browse/HIVE-8825) | SQLCompletor catches Throwable and ignores it |  Major | . | Brock Noland | Ferdinand Xu |
| [HIVE-8812](https://issues.apache.org/jira/browse/HIVE-8812) | TestMinimrCliDriver failure if run in the same command as TestHBaseNegativeCliDriver |  Major | Testing Infrastructure | Jason Dere | Jason Dere |
| [HIVE-8808](https://issues.apache.org/jira/browse/HIVE-8808) | HiveInputFormat caching cannot work with all input formats |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8803](https://issues.apache.org/jira/browse/HIVE-8803) | DESC SCHEMA \<DATABASE-NAME\> is not working |  Trivial | Query Processor | Navis | Navis |
| [HIVE-8797](https://issues.apache.org/jira/browse/HIVE-8797) | Simultaneous dynamic inserts can result in "partition already exists" error |  Major | . | Alan Gates | Alan Gates |
| [HIVE-8796](https://issues.apache.org/jira/browse/HIVE-8796) | TestCliDriver acid tests with decimal needs benchmark to be updated |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-8791](https://issues.apache.org/jira/browse/HIVE-8791) | Hive permission inheritance throws exception S3 |  Major | Security | Szehon Ho | Szehon Ho |
| [HIVE-8762](https://issues.apache.org/jira/browse/HIVE-8762) | HiveMetaStore.BooleanPointer should be replaced with an AtomicBoolean |  Major | Transactions | Alan Gates | Alan Gates |
| [HIVE-8757](https://issues.apache.org/jira/browse/HIVE-8757) | YARN dep in scheduler shim should be optional |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8736](https://issues.apache.org/jira/browse/HIVE-8736) | add ordering to cbo\_correctness to make result consistent |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8730](https://issues.apache.org/jira/browse/HIVE-8730) | schemaTool failure when date partition has non-date value |  Minor | Metastore | Johndee Burks | Chaoyu Tang |
| [HIVE-8728](https://issues.apache.org/jira/browse/HIVE-8728) | Fix ptf.q determinism |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8720](https://issues.apache.org/jira/browse/HIVE-8720) | Update orc\_merge tests to make it consistent across OS'es |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-8708](https://issues.apache.org/jira/browse/HIVE-8708) | Add query id to explain log option |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8693](https://issues.apache.org/jira/browse/HIVE-8693) | Separate out fair scheduler dependency from hadoop 0.23 shim |  Major | HiveServer2, Shims | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-8680](https://issues.apache.org/jira/browse/HIVE-8680) | Set Max Message for Binary Thrift endpoints |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8666](https://issues.apache.org/jira/browse/HIVE-8666) | hive.metastore.server.max.threads default is too high |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8636](https://issues.apache.org/jira/browse/HIVE-8636) | CBO: split cbo\_correctness test |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8634](https://issues.apache.org/jira/browse/HIVE-8634) | HiveServer2 fair scheduler queue mapping doesn't handle the secondary groups rules correctly |  Major | HiveServer2 | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-8627](https://issues.apache.org/jira/browse/HIVE-8627) | Compute stats on a table from impala caused the table to be corrupted |  Major | Metastore | Na Yang | Na Yang |
| [HIVE-8613](https://issues.apache.org/jira/browse/HIVE-8613) | percentile\_approx raise a comparator error |  Major | . | Nicolas Lalevée | Navis |
| [HIVE-8612](https://issues.apache.org/jira/browse/HIVE-8612) | Support metadata result filter hooks |  Major | Authorization, Metastore | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-8611](https://issues.apache.org/jira/browse/HIVE-8611) | grant/revoke syntax should support additional objects for authorization plugins |  Major | Authentication, SQL | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-8610](https://issues.apache.org/jira/browse/HIVE-8610) | Compile time skew join optimization doesn't work with auto map join |  Major | . | Rui Li | Rui Li |
| [HIVE-8600](https://issues.apache.org/jira/browse/HIVE-8600) | Add option to log explain output for query |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8594](https://issues.apache.org/jira/browse/HIVE-8594) | Wrong condition in SettableConfigUpdater#setHiveConfWhiteList() |  Minor | . | Ted Yu | Ted Yu |
| [HIVE-8576](https://issues.apache.org/jira/browse/HIVE-8576) | Guaranteed NPE in StatsRulesProcFactory |  Major | . | Lars Francke | Lars Francke |
| [HIVE-8565](https://issues.apache.org/jira/browse/HIVE-8565) | beeline may go into an infinite loop when using EOF |  Major | . | Chao | Chao |
| [HIVE-8564](https://issues.apache.org/jira/browse/HIVE-8564) | DROP TABLE IF EXISTS throws exception if the table does not exist. |  Minor | HiveServer2 | Ben | Navis |
| [HIVE-8556](https://issues.apache.org/jira/browse/HIVE-8556) | introduce overflow control and sanity check to BytesBytesMapJoin |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8523](https://issues.apache.org/jira/browse/HIVE-8523) | Potential null dereference in DDLSemanticAnalyzer#addInputsOutputsAlterTable() |  Minor | . | Ted Yu | Navis |
| [HIVE-8518](https://issues.apache.org/jira/browse/HIVE-8518) | Compile time skew join optimization returns duplicated results |  Major | Logical Optimizer | Rui Li | Rui Li |
| [HIVE-8512](https://issues.apache.org/jira/browse/HIVE-8512) | queries with star and gby produce incorrect results |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8500](https://issues.apache.org/jira/browse/HIVE-8500) | beeline does not need to set hive.aux.jars.path |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8491](https://issues.apache.org/jira/browse/HIVE-8491) | Fix build name in ptest pre-commit message |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8450](https://issues.apache.org/jira/browse/HIVE-8450) | Create table like does not copy over table properties |  Critical | . | Brock Noland | Navis |
| [HIVE-8448](https://issues.apache.org/jira/browse/HIVE-8448) | Union All might not work due to the type conversion issue |  Minor | . | Chaoyu Tang | Yongzhi Chen |
| [HIVE-8387](https://issues.apache.org/jira/browse/HIVE-8387) | add retry logic to ZooKeeperStorage in WebHCat |  Critical | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-8381](https://issues.apache.org/jira/browse/HIVE-8381) | Update hive version on trunk to 0.15 |  Major | Build Infrastructure | Vikram Dixit K | Vikram Dixit K |
| [HIVE-8359](https://issues.apache.org/jira/browse/HIVE-8359) | Map containing null values are not correctly written in Parquet files |  Major | File Formats | Frédéric TERRAZZONI | Sergio Peña |
| [HIVE-8345](https://issues.apache.org/jira/browse/HIVE-8345) | q-test for Avro date support |  Major | Serializers/Deserializers | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8338](https://issues.apache.org/jira/browse/HIVE-8338) | Add ip and command to semantic analyzer hook context |  Major | Query Processor | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8330](https://issues.apache.org/jira/browse/HIVE-8330) | HiveResultSet.findColumn() parameters are case sensitive |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-8326](https://issues.apache.org/jira/browse/HIVE-8326) | Using DbTxnManager with concurrency off results in run time error |  Major | Transactions | Alan Gates | Alan Gates |
| [HIVE-8317](https://issues.apache.org/jira/browse/HIVE-8317) | WebHCat pom should explicitly depend on jersey-core |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8308](https://issues.apache.org/jira/browse/HIVE-8308) | Acid related table properties should be defined in one place and should be case insensitive |  Major | Transactions | Alan Gates | Alan Gates |
| [HIVE-8284](https://issues.apache.org/jira/browse/HIVE-8284) | Equality comparison is done between two floating point variables in HiveRelMdUniqueKeys#getUniqueKeys() |  Minor | CBO | Ted Yu | JongWon Park |
| [HIVE-8266](https://issues.apache.org/jira/browse/HIVE-8266) | create function using \<resource\> statement compilation should include resource URI entity |  Major | SQL | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-8257](https://issues.apache.org/jira/browse/HIVE-8257) | Accumulo introduces old hadoop-client dependency |  Critical | Build Infrastructure | Josh Elser | Josh Elser |
| [HIVE-8182](https://issues.apache.org/jira/browse/HIVE-8182) | beeline fails when executing multiple-line queries with trailing spaces |  Major | . | Yongzhi Chen | Sergio Peña |
| [HIVE-7997](https://issues.apache.org/jira/browse/HIVE-7997) | Potential null pointer reference in ObjectInspectorUtils#compareTypes() |  Major | Types | Ted Yu | Navis |
| [HIVE-7951](https://issues.apache.org/jira/browse/HIVE-7951) | InputFormats implementing (Job)Configurable should not be cached |  Trivial | Query Processor | Navis | Navis |
| [HIVE-7932](https://issues.apache.org/jira/browse/HIVE-7932) | It may cause NP exception when add accessed columns to ReadEntity |  Major | . | Xiaomeng Huang | Xiaomeng Huang |
| [HIVE-7069](https://issues.apache.org/jira/browse/HIVE-7069) | Zookeeper connection leak |  Major | HiveServer2 | Zilvinas Saltys |  |
| [HIVE-7024](https://issues.apache.org/jira/browse/HIVE-7024) | Escape control characters for explain result |  Trivial | . | Navis | Navis |
| [HIVE-6914](https://issues.apache.org/jira/browse/HIVE-6914) | parquet-hive cannot write nested map (map value is map) |  Major | File Formats | Tongjie Chen | Ryan Blue |
| [HIVE-6683](https://issues.apache.org/jira/browse/HIVE-6683) | Beeline does not accept comments at end of line |  Major | CLI | Jeremy Beard | Sergio Peña |
| [HIVE-6623](https://issues.apache.org/jira/browse/HIVE-6623) | Add "owner" tag to ptest2 created instances |  Major | . | Brock Noland | Brock Noland |
| [HIVE-6421](https://issues.apache.org/jira/browse/HIVE-6421) | abs() should preserve precision/scale of decimal input |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-6308](https://issues.apache.org/jira/browse/HIVE-6308) | COLUMNS\_V2 Metastore table not populated for tables created without an explicit column list. |  Major | Database/Schema | Alexander Behm | Yongzhi Chen |
| [HIVE-6165](https://issues.apache.org/jira/browse/HIVE-6165) | Unify HivePreparedStatement from jdbc:hive and jdbc:hive2 |  Minor | HiveServer2, JDBC | Helmut Zechmann |  |
| [HIVE-5865](https://issues.apache.org/jira/browse/HIVE-5865) | AvroDeserializer incorrectly assumes keys to Maps will always be of type 'org.apache.avro.util.Utf8' |  Major | . | Ben Roling | Ben Roling |
| [HIVE-5536](https://issues.apache.org/jira/browse/HIVE-5536) | Incorrect Operation Name is passed to hookcontext |  Major | HiveServer2 | Shreepadma Venugopalan | Brock Noland |
| [HIVE-4009](https://issues.apache.org/jira/browse/HIVE-4009) | CLI Tests fail randomly due to MapReduce LocalJobRunner race condition |  Major | . | Brock Noland | Brock Noland |
| [HIVE-3781](https://issues.apache.org/jira/browse/HIVE-3781) | Index related events should be delivered to metastore event listener |  Major | Metastore | Sudhanshu Arora | Navis |
| [HIVE-1869](https://issues.apache.org/jira/browse/HIVE-1869) | TestMTQueries failing on jenkins |  Major | Query Processor, Testing Infrastructure | Carl Steinbach | Brock Noland |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-9435](https://issues.apache.org/jira/browse/HIVE-9435) | Fix auto\_join21.q for Tez |  Minor | Tests | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9417](https://issues.apache.org/jira/browse/HIVE-9417) | Fix failing test groupby\_grouping\_window.q on trunk |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9403](https://issues.apache.org/jira/browse/HIVE-9403) | File tests determinism with multiple reducers |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9360](https://issues.apache.org/jira/browse/HIVE-9360) | TestSparkClient throws Timeoutexception |  Major | Tests | Szehon Ho | Szehon Ho |
| [HIVE-9290](https://issues.apache.org/jira/browse/HIVE-9290) | Make some test results deterministic |  Major | . | Rui Li | Rui Li |
| [HIVE-9173](https://issues.apache.org/jira/browse/HIVE-9173) | Fix auto\_join29.q, auto\_join\_without\_localtask.q determinism |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-9091](https://issues.apache.org/jira/browse/HIVE-9091) | Add additional unit tests for HiveSQLException |  Minor | JDBC | Aihua Xu | Aihua Xu |
| [HIVE-8929](https://issues.apache.org/jira/browse/HIVE-8929) | incorrect error message for cbo path |  Major | CBO | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8801](https://issues.apache.org/jira/browse/HIVE-8801) | Make orc\_merge\_incompat1.q deterministic across platforms |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-8753](https://issues.apache.org/jira/browse/HIVE-8753) | TestMiniTezCliDriver.testCliDriver\_vector\_mapjoin\_reduce failing on trunk |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8602](https://issues.apache.org/jira/browse/HIVE-8602) | Add SORT\_QUERY\_RESULTS for skewjoinopt2 |  Major | Tests | Rui Li | Rui Li |
| [HIVE-8601](https://issues.apache.org/jira/browse/HIVE-8601) | Fix auto\_sortmerge\_join\_16 determinism |  Major | . | Szehon Ho | Szehon Ho |
| [HIVE-8573](https://issues.apache.org/jira/browse/HIVE-8573) | Fix some non-deterministic vectorization tests |  Minor | Tests | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8327](https://issues.apache.org/jira/browse/HIVE-8327) | mvn site -Pfindbugs |  Major | Diagnosability | Gopal V | Gopal V |
| [HIVE-8256](https://issues.apache.org/jira/browse/HIVE-8256) | Add SORT\_QUERY\_RESULTS for test that doesn't guarantee order #2 |  Minor | . | Chao | Chao |
| [HIVE-7924](https://issues.apache.org/jira/browse/HIVE-7924) | auto\_sortmerge\_join\_8 sometimes fails with OOM |  Major | Tests | Szehon Ho | Szehon Ho |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-9493](https://issues.apache.org/jira/browse/HIVE-9493) | Failed job may not throw exceptions [Spark Branch] |  Major | Spark | Rui Li | Rui Li |
| [HIVE-9487](https://issues.apache.org/jira/browse/HIVE-9487) | Make Remote Spark Context secure [Spark Branch] |  Major | Spark | Marcelo Vanzin | Marcelo Vanzin |
| [HIVE-9477](https://issues.apache.org/jira/browse/HIVE-9477) | No error thrown when global limit optimization failed to find enough number of rows [Spark Branch] |  Blocker | Spark | Rui Li | Rui Li |
| [HIVE-9450](https://issues.apache.org/jira/browse/HIVE-9450) | [Parquet] Check all data types work for Parquet in Group By operator |  Major | . | Dong Chen | Dong Chen |
| [HIVE-9449](https://issues.apache.org/jira/browse/HIVE-9449) | Push YARN configuration to Spark while deply Spark on YARN[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-9444](https://issues.apache.org/jira/browse/HIVE-9444) | CBO (Calcite Return Path): Rewrite GlobalLimitOptimizer |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-9434](https://issues.apache.org/jira/browse/HIVE-9434) | Shim the method Path.getPathWithoutSchemeAndAuthority |  Major | . | Brock Noland | Dong Chen |
| [HIVE-9431](https://issues.apache.org/jira/browse/HIVE-9431) | CBO (Calcite Return Path): Removing AST from ParseContext |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-9428](https://issues.apache.org/jira/browse/HIVE-9428) | LocalSparkJobStatus may return failed job as successful [Spark Branch] |  Minor | Spark | Rui Li | Rui Li |
| [HIVE-9425](https://issues.apache.org/jira/browse/HIVE-9425) | Add jar/file doesn't work with yarn-cluster mode [Spark Branch] |  Major | spark-branch | Xiaomin Zhang | Rui Li |
| [HIVE-9410](https://issues.apache.org/jira/browse/HIVE-9410) | ClassNotFoundException occurs during hive query case execution with UDF defined [Spark Branch] |  Major | Spark | Xin Hao | Chengxiang Li |
| [HIVE-9409](https://issues.apache.org/jira/browse/HIVE-9409) | Avoid ser/de loggers as logging framework can be incompatible on driver and workers |  Major | Spark | Xin Hao | Rui Li |
| [HIVE-9352](https://issues.apache.org/jira/browse/HIVE-9352) | Merge from spark to trunk (follow-up of HIVE-9257) |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-9321](https://issues.apache.org/jira/browse/HIVE-9321) | Notification message size can be arbitrarily long, DbNotificationListener limits to 1024 |  Major | . | Sushanth Sowmyan | Alan Gates |
| [HIVE-9315](https://issues.apache.org/jira/browse/HIVE-9315) | CBO (Calcite Return Path): Inline FileSinkOperator, Properties |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-9292](https://issues.apache.org/jira/browse/HIVE-9292) | CBO (Calcite Return Path): Inline GroupBy, Properties |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-9264](https://issues.apache.org/jira/browse/HIVE-9264) | Merge encryption branch to trunk |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9259](https://issues.apache.org/jira/browse/HIVE-9259) | Fix ClassCastException when CBO is enabled for HOS [Spark Branch] |  Major | Spark | Brock Noland | Chao |
| [HIVE-9257](https://issues.apache.org/jira/browse/HIVE-9257) | Merge from spark to trunk January 2015 |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-9241](https://issues.apache.org/jira/browse/HIVE-9241) | Fix TestCliDriver.testCliDriver\_subquery\_multiinsert |  Major | Tests | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-9239](https://issues.apache.org/jira/browse/HIVE-9239) | Fix ordering differences due to Java 8 (Part 5) |  Major | Tests | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-9224](https://issues.apache.org/jira/browse/HIVE-9224) | CBO (Calcite Return Path): Inline Table, Properties |  Major | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-9222](https://issues.apache.org/jira/browse/HIVE-9222) | Fix ordering differences due to Java 8 (Part 4) |  Major | Tests | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-9211](https://issues.apache.org/jira/browse/HIVE-9211) | Research on build mini HoS cluster on YARN for unit test[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-9206](https://issues.apache.org/jira/browse/HIVE-9206) | Fix Desc Formatted related Java 8 ordering differences |  Major | Tests | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-9200](https://issues.apache.org/jira/browse/HIVE-9200) | CBO (Calcite Return Path): Inline Join, Properties |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-9194](https://issues.apache.org/jira/browse/HIVE-9194) | Support select distinct * |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-9193](https://issues.apache.org/jira/browse/HIVE-9193) | Fix ordering differences due to Java 8 (Part 3) |  Major | Tests | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-9184](https://issues.apache.org/jira/browse/HIVE-9184) | Modify HCatClient to support new notification methods in HiveMetaStoreClient |  Major | HCatalog | Alan Gates | Alan Gates |
| [HIVE-9181](https://issues.apache.org/jira/browse/HIVE-9181) | Fix SkewJoinOptimizer related Java 8 ordering differences |  Major | Tests | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-9175](https://issues.apache.org/jira/browse/HIVE-9175) | Add alters to list of events handled by NotificationListener |  Major | HCatalog | Alan Gates | Alan Gates |
| [HIVE-9174](https://issues.apache.org/jira/browse/HIVE-9174) | Enable queuing of HCatalog notification events in metastore DB |  Major | HCatalog, Metastore | Alan Gates | Alan Gates |
| [HIVE-9161](https://issues.apache.org/jira/browse/HIVE-9161) | Fix ordering differences on UDF functions due to Java8 |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-9153](https://issues.apache.org/jira/browse/HIVE-9153) | Perf enhancement on CombineHiveInputFormat and HiveInputFormat |  Major | Spark | Brock Noland | Rui Li |
| [HIVE-9133](https://issues.apache.org/jira/browse/HIVE-9133) | CBO (Calcite Return Path): Refactor Semantic Analyzer to Move CBO code out |  Major | CBO | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-9127](https://issues.apache.org/jira/browse/HIVE-9127) | Improve CombineHiveInputFormat.getSplit performance |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9109](https://issues.apache.org/jira/browse/HIVE-9109) | Add support for Java 8 specific q-test out files |  Major | Testing Infrastructure | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-9104](https://issues.apache.org/jira/browse/HIVE-9104) | windowing.q failed when mapred.reduce.tasks is set to larger than one |  Major | PTF-Windowing | Chao | Chao |
| [HIVE-9043](https://issues.apache.org/jira/browse/HIVE-9043) | HiveException: Conflict on row inspector for {table} |  Major | Spark | Brock Noland | Jimmy Xiang |
| [HIVE-9035](https://issues.apache.org/jira/browse/HIVE-9035) | CBO: Disable PPD when functions are non-deterministic (ppd\_random.q  - non-deterministic udf rand() pushed above join) |  Major | CBO | Sergey Shelukhin | Laljo John Pullokkaran |
| [HIVE-9034](https://issues.apache.org/jira/browse/HIVE-9034) | CBO: type change in literal\_ints.q |  Major | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-9033](https://issues.apache.org/jira/browse/HIVE-9033) | Fix ordering differences due to Java8 (part 2) |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-8962](https://issues.apache.org/jira/browse/HIVE-8962) | Add SORT\_QUERY\_RESULTS for join tests that do not guarantee order #2 |  Minor | Spark | Chao | Chao |
| [HIVE-8936](https://issues.apache.org/jira/browse/HIVE-8936) | Add SORT\_QUERY\_RESULTS for join tests that do not guarantee order |  Minor | Spark | Chao | Chao |
| [HIVE-8923](https://issues.apache.org/jira/browse/HIVE-8923) | HIVE-8512 needs to be fixed also for CBO |  Major | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8922](https://issues.apache.org/jira/browse/HIVE-8922) | CBO: assorted date and timestamp issues |  Major | CBO | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8862](https://issues.apache.org/jira/browse/HIVE-8862) | Fix ordering diferences on TestParse tests due to Java8 |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-8773](https://issues.apache.org/jira/browse/HIVE-8773) | Fix TestWebHCatE2e#getStatus for Java8 |  Major | Tests | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8718](https://issues.apache.org/jira/browse/HIVE-8718) | Refactoring: move mapLocalWork field from MapWork to BaseWork |  Minor | Query Processor | Xuefu Zhang | Xuefu Zhang |
| [HIVE-8707](https://issues.apache.org/jira/browse/HIVE-8707) | Fix ordering differences due to Java 8 HashMap function |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8651](https://issues.apache.org/jira/browse/HIVE-8651) | CBO: sort column changed in infer\_bucket\_sort test |  Major | CBO | Sergey Shelukhin | Jesus Camacho Rodriguez |
| [HIVE-8362](https://issues.apache.org/jira/browse/HIVE-8362) | Investigate flaky test parallel.q |  Major | Testing Infrastructure | Jimmy Xiang | Jimmy Xiang |
| [HIVE-8131](https://issues.apache.org/jira/browse/HIVE-8131) | Support timestamp in Avro |  Major | . | Brock Noland | Ferdinand Xu |
| [HIVE-8130](https://issues.apache.org/jira/browse/HIVE-8130) | Support Date in Avro |  Major | Serializers/Deserializers | Brock Noland | Mohit Sabharwal |
| [HIVE-8122](https://issues.apache.org/jira/browse/HIVE-8122) | Make use of SearchArgument classes for Parquet SERDE |  Major | . | Brock Noland | Ferdinand Xu |
| [HIVE-8121](https://issues.apache.org/jira/browse/HIVE-8121) | Create micro-benchmarks for ParquetSerde and evaluate performance |  Major | . | Brock Noland | Sergio Peña |
| [HIVE-7073](https://issues.apache.org/jira/browse/HIVE-7073) | Implement Binary in ParquetSerDe |  Major | . | David Chen | Ferdinand Xu |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-9672](https://issues.apache.org/jira/browse/HIVE-9672) | Update RELEASE\_NOTES on trunk to reflect the 1.0.0 release |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9554](https://issues.apache.org/jira/browse/HIVE-9554) | Rename 0.15 upgrade scripts to 1.1 |  Blocker | . | Brock Noland | Brock Noland |
| [HIVE-9527](https://issues.apache.org/jira/browse/HIVE-9527) | Include dot files in tarball |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-9408](https://issues.apache.org/jira/browse/HIVE-9408) | Add hook interface so queries can be redacted before being placed in job.xml |  Major | Query Processor | Brock Noland | Brock Noland |
| [HIVE-9407](https://issues.apache.org/jira/browse/HIVE-9407) | Fix spacing in pom |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-9402](https://issues.apache.org/jira/browse/HIVE-9402) | Create GREATEST and LEAST udf |  Major | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-9345](https://issues.apache.org/jira/browse/HIVE-9345) | Add encryption branch to pre-commit script |  Major | . | Brock Noland | Brock Noland |
| [HIVE-9304](https://issues.apache.org/jira/browse/HIVE-9304) | [Refactor] remove unused method in SemAly |  Trivial | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9183](https://issues.apache.org/jira/browse/HIVE-9183) | Compilation against HBase 1.0.0 fails due to missing dependency on high\_scale\_lib.Counter |  Major | . | Ted Yu | Ted Yu |
| [HIVE-8989](https://issues.apache.org/jira/browse/HIVE-8989) | Make groupby\_multi\_single\_reducer.q and smb\_mapjoin\_3.q deterministic |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8979](https://issues.apache.org/jira/browse/HIVE-8979) | Merge shims/common-secure into shims/common |  Major | Shims | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8974](https://issues.apache.org/jira/browse/HIVE-8974) | Upgrade to Calcite 1.0.0-SNAPSHOT (with lots of renames) |  Major | . | Julian Hyde | Jesus Camacho Rodriguez |
| [HIVE-8935](https://issues.apache.org/jira/browse/HIVE-8935) | Add debug logging around token stores |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8894](https://issues.apache.org/jira/browse/HIVE-8894) | Move calcite.version to root pom |  Major | . | Brock Noland | Brock Noland |
| [HIVE-8828](https://issues.apache.org/jira/browse/HIVE-8828) | Remove hadoop 20 shims |  Major | Shims | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-8826](https://issues.apache.org/jira/browse/HIVE-8826) | Remove jdbm from top level license file |  Major | . | Brock Noland | Ferdinand Xu |
| [HIVE-8609](https://issues.apache.org/jira/browse/HIVE-8609) | Move beeline to jline2 |  Blocker | . | Brock Noland | Ferdinand Xu |
| [HIVE-8608](https://issues.apache.org/jira/browse/HIVE-8608) | Move jenkins scripts to source control |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-8607](https://issues.apache.org/jira/browse/HIVE-8607) | Java 8 support for Hive |  Critical | . | Brock Noland | Brock Noland |
| [HIVE-8465](https://issues.apache.org/jira/browse/HIVE-8465) | Fix some minor test fails on trunk |  Minor | Tests | Navis | Jason Dere |
| [HIVE-8370](https://issues.apache.org/jira/browse/HIVE-8370) | Fix tabs in DefaultHBaseValueFactory |  Trivial | . | Brock Noland | Brock Noland |
| [HIVE-8351](https://issues.apache.org/jira/browse/HIVE-8351) | Allow testing of both hadoop-1 and hadoop-2 for precommits |  Major | . | Brock Noland | Mohit Sabharwal |
| [HIVE-7111](https://issues.apache.org/jira/browse/HIVE-7111) | Extend join transitivity PPD to non-column expressions |  Minor | Query Processor | Navis | Navis |


