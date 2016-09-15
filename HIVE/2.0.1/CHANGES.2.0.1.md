
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

## Release 2.0.1 - 2016-05-25



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10115](https://issues.apache.org/jira/browse/HIVE-10115) | HS2 running on a Kerberized cluster should offer Kerberos(GSSAPI) and Delegation token(DIGEST) when alternate authentication is enabled |  Major | Authentication | Mubashir Kazia | Mubashir Kazia |
| [HIVE-13120](https://issues.apache.org/jira/browse/HIVE-13120) | propagate doAs when generating ORC splits |  Major | . | Yi Zhang | Sergey Shelukhin |
| [HIVE-13782](https://issues.apache.org/jira/browse/HIVE-13782) | Compile async query asynchronously |  Minor | . | Jimmy Xiang | Jimmy Xiang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-11966](https://issues.apache.org/jira/browse/HIVE-11966) | JDBC Driver parsing error when reading principal from ZooKeeper |  Major | JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-12799](https://issues.apache.org/jira/browse/HIVE-12799) | Always use Schema Evolution for ACID |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-12887](https://issues.apache.org/jira/browse/HIVE-12887) | Handle ORC schema on read with fewer columns than file schema (after Schema Evolution changes) |  Critical | ORC | Matt McCline | Matt McCline |
| [HIVE-12894](https://issues.apache.org/jira/browse/HIVE-12894) | Detect whether ORC is reading from ACID table correctly for Schema Evolution |  Critical | Hive, ORC | Matt McCline | Matt McCline |
| [HIVE-12990](https://issues.apache.org/jira/browse/HIVE-12990) | LLAP: ORC cache NPE without FileID support |  Major | llap | Gopal V | Sergey Shelukhin |
| [HIVE-9862](https://issues.apache.org/jira/browse/HIVE-9862) | Vectorized execution corrupts timestamp values |  Major | Vectorization | Nathan Howell | Matt McCline |
| [HIVE-13036](https://issues.apache.org/jira/browse/HIVE-13036) | Split hive.root.logger separately to make it compatible with log4j1.x (for remaining services) |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13056](https://issues.apache.org/jira/browse/HIVE-13056) | delegation tokens do not work with HS2 when used with http transport and kerberos |  Critical | Authentication | Cheng Xu | Sushanth Sowmyan |
| [HIVE-13079](https://issues.apache.org/jira/browse/HIVE-13079) | LLAP: Allow reading log4j properties from default JAR resources |  Major | llap | Gopal V | Gopal V |
| [HIVE-13086](https://issues.apache.org/jira/browse/HIVE-13086) | LLAP: Programmatically initialize log4j2 to print out the properties location |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12165](https://issues.apache.org/jira/browse/HIVE-12165) | wrong result when hive.optimize.sampling.orderby=true with some aggregate functions |  Critical | . | ErwanMAS | Aihua Xu |
| [HIVE-13093](https://issues.apache.org/jira/browse/HIVE-13093) | hive metastore does not exit on start failure |  Major | Metastore | Thejas M Nair | Thejas M Nair |
| [HIVE-13090](https://issues.apache.org/jira/browse/HIVE-13090) | Hive metastore crashes on NPE with ZooKeeperTokenStore |  Major | Metastore, Security | Thejas M Nair | Piotr Wikieł |
| [HIVE-13105](https://issues.apache.org/jira/browse/HIVE-13105) | LLAP token hashCode and equals methods are incorrect |  Critical | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13051](https://issues.apache.org/jira/browse/HIVE-13051) | Deadline class has numerous issues |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13110](https://issues.apache.org/jira/browse/HIVE-13110) | LLAP: Package log4j2 jars into Slider pkg |  Major | llap | Gopal V | Gopal V |
| [HIVE-13126](https://issues.apache.org/jira/browse/HIVE-13126) | Clean up MapJoinOperator properly to avoid object cache reuse with unintentional states |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-12064](https://issues.apache.org/jira/browse/HIVE-12064) | prevent transactional=false |  Critical | Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-13134](https://issues.apache.org/jira/browse/HIVE-13134) | JDBC: JDBC Standalone should not be in the lib dir by default |  Major | JDBC | Gopal V | Gopal V |
| [HIVE-12749](https://issues.apache.org/jira/browse/HIVE-12749) | Constant propagate returns string values in incorrect format |  Major | . | Oleksiy Sayankin | Aleksey Vovchenko |
| [HIVE-13108](https://issues.apache.org/jira/browse/HIVE-13108) | Operators: SORT BY randomness is not safe with network partitions |  Major | Spark, Tez | Gopal V | Gopal V |
| [HIVE-13200](https://issues.apache.org/jira/browse/HIVE-13200) | Aggregation functions returning empty rows on partitioned columns |  Major | Physical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-13199](https://issues.apache.org/jira/browse/HIVE-13199) | NDC stopped working in LLAP logging |  Major | llap, Logging | Sergey Shelukhin | Prasanth Jayachandran |
| [HIVE-13083](https://issues.apache.org/jira/browse/HIVE-13083) | Writing HiveDecimal to ORC can wrongly suppress present stream |  Major | . | Yi Zhang | Prasanth Jayachandran |
| [HIVE-13153](https://issues.apache.org/jira/browse/HIVE-13153) | SessionID is appended to thread name twice |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13144](https://issues.apache.org/jira/browse/HIVE-13144) | HS2 can leak ZK ACL objects when curator retries to create the persistent ephemeral node |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-13236](https://issues.apache.org/jira/browse/HIVE-13236) | LLAP: token renewal interval needs to be set |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13263](https://issues.apache.org/jira/browse/HIVE-13263) | Vectorization: Unable to vectorize regexp\_extract/regexp\_replace " Udf: GenericUDFBridge, is not supported" |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-13243](https://issues.apache.org/jira/browse/HIVE-13243) | Hive drop table on encyption zone fails for external tables |  Major | Encryption, Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13232](https://issues.apache.org/jira/browse/HIVE-13232) | Aggressively drop compression buffers in ORC OutStreams |  Major | ORC | Owen O\'Malley | Owen O\'Malley |
| [HIVE-13285](https://issues.apache.org/jira/browse/HIVE-13285) | Orc concatenation may drop old files from moving to final path |  Critical | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13242](https://issues.apache.org/jira/browse/HIVE-13242) | DISTINCT keyword is dropped by the parser for windowing |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13299](https://issues.apache.org/jira/browse/HIVE-13299) | Column Names trimmed of leading and trailing spaces |  Major | Parser | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13294](https://issues.apache.org/jira/browse/HIVE-13294) | AvroSerde leaks the connection in a case when reading schema from a url |  Major | Serializers/Deserializers | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13327](https://issues.apache.org/jira/browse/HIVE-13327) | SessionID added to HS2 threadname does not trim spaces |  Major | . | Carter Shanklin | Prasanth Jayachandran |
| [HIVE-13313](https://issues.apache.org/jira/browse/HIVE-13313) | TABLESAMPLE ROWS feature broken for Vectorization |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-13286](https://issues.apache.org/jira/browse/HIVE-13286) | Query ID is being reused across queries |  Critical | Parser | Vikram Dixit K | Aihua Xu |
| [HIVE-13310](https://issues.apache.org/jira/browse/HIVE-13310) | Vectorized Projection Comparison Number Column to Scalar broken for !noNulls and selectedInUse |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-13296](https://issues.apache.org/jira/browse/HIVE-13296) | Add vectorized Q test with complex types showing count(\*) etc work correctly |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-9499](https://issues.apache.org/jira/browse/HIVE-9499) | hive.limit.query.max.table.partition makes queries fail on non-partitioned tables |  Major | Query Planning | Alexander Kasper | Navis |
| [HIVE-12552](https://issues.apache.org/jira/browse/HIVE-12552) | Wrong number of reducer estimation causing job to fail |  Major | Physical Optimizer | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-13151](https://issues.apache.org/jira/browse/HIVE-13151) | Clean up UGI objects in FileSystem cache for transactions |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-13324](https://issues.apache.org/jira/browse/HIVE-13324) | LLAP: history log for FRAGMENT\_START doesn\'t log DagId correctly |  Major | . | Sergey Shelukhin | Siddharth Seth |
| [HIVE-13115](https://issues.apache.org/jira/browse/HIVE-13115) | MetaStore Direct SQL getPartitions call fail when the columns schemas for a partition are null |  Major | Hive | Ratandeep Ratti | Ratandeep Ratti |
| [HIVE-12992](https://issues.apache.org/jira/browse/HIVE-12992) | Hive on tez: Bucket map join plan is incorrect |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-13111](https://issues.apache.org/jira/browse/HIVE-13111) | Fix timestamp / interval\_day\_time wrong results with HIVE-9862 |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-10729](https://issues.apache.org/jira/browse/HIVE-10729) | Query failed when select complex columns from joinned table (tez map join only) |  Major | Query Processor | Selina Zhang | Matt McCline |
| [HIVE-12937](https://issues.apache.org/jira/browse/HIVE-12937) | DbNotificationListener unable to clean up old notification events |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-13361](https://issues.apache.org/jira/browse/HIVE-13361) | Orc concatenation should enforce the compression buffer size |  Critical | . | Yi Zhang | Prasanth Jayachandran |
| [HIVE-13255](https://issues.apache.org/jira/browse/HIVE-13255) | FloatTreeReader.nextVector is expensive |  Major | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13379](https://issues.apache.org/jira/browse/HIVE-13379) | HIVE-12851 args do not work (slider-keytab-dir, etc.) |  Major | . | Swapan Shridhar | Sergey Shelukhin |
| [HIVE-13396](https://issues.apache.org/jira/browse/HIVE-13396) | LLAP: Include hadoop-metrics2.properties file LlapServiceDriver |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13330](https://issues.apache.org/jira/browse/HIVE-13330) | ORC vectorized string dictionary reader does not differentiate null vs empty string dictionary |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13394](https://issues.apache.org/jira/browse/HIVE-13394) | Analyze table fails in tez on empty partitions/files/tables |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-13428](https://issues.apache.org/jira/browse/HIVE-13428) | ZK SM in LLAP should have unique paths per cluster |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13468](https://issues.apache.org/jira/browse/HIVE-13468) | branch-2 build is broken |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13405](https://issues.apache.org/jira/browse/HIVE-13405) | Fix Connection Leak in OrcRawRecordMerger |  Major | ORC | Thomas Poepping | Thomas Poepping |
| [HIVE-13523](https://issues.apache.org/jira/browse/HIVE-13523) | Fix connection leak in ORC RecordReader and refactor for unit testing |  Major | ORC | Thomas Poepping | Thomas Poepping |
| [HIVE-13240](https://issues.apache.org/jira/browse/HIVE-13240) | GroupByOperator: Drop the hash aggregates when closing operator |  Major | Query Processor | Gopal V | Gopal V |
| [HIVE-13463](https://issues.apache.org/jira/browse/HIVE-13463) | Fix ImportSemanticAnalyzer to allow for different src/dst filesystems |  Major | Import/Export | Zach York | Zach York |
| [HIVE-13630](https://issues.apache.org/jira/browse/HIVE-13630) | missing license headers |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13346](https://issues.apache.org/jira/browse/HIVE-13346) | LLAP doesn\'t update metadata priority when reusing from cache; some tweaks in LRFU policy |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13645](https://issues.apache.org/jira/browse/HIVE-13645) | Beeline needs null-guard around hiveVars and hiveConfVars read |  Minor | Beeline | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-13390](https://issues.apache.org/jira/browse/HIVE-13390) | HiveServer2: Add more test to ZK service discovery using MiniHS2 |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13362](https://issues.apache.org/jira/browse/HIVE-13362) | Commit binary file required for HIVE-13361 |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |


