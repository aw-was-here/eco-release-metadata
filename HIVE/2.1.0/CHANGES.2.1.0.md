
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

## Release 2.1.0 - 2016-06-20

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-12635](https://issues.apache.org/jira/browse/HIVE-12635) | Hive should return the latest hbase cell timestamp as the row timestamp value |  Major | HBase Handler | Aihua Xu | Aihua Xu |
| [HIVE-13442](https://issues.apache.org/jira/browse/HIVE-13442) | LLAP: refactor submit API to be amenable to signing |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13248](https://issues.apache.org/jira/browse/HIVE-13248) | Change date\_add/date\_sub/to\_date functions to return Date type rather than String |  Major | UDF | Jason Dere | Jason Dere |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-12730](https://issues.apache.org/jira/browse/HIVE-12730) | MetadataUpdater: provide a mechanism to edit the basic statistics of a table (or a partition) |  Major | Statistics | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13095](https://issues.apache.org/jira/browse/HIVE-13095) | Support view column authorization |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-12994](https://issues.apache.org/jira/browse/HIVE-12994) | Implement support for NULLS FIRST/NULLS LAST |  Major | CBO, Parser, Serializers/Deserializers | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12270](https://issues.apache.org/jira/browse/HIVE-12270) | Add DBTokenStore support to HS2 delegation token |  Major | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13125](https://issues.apache.org/jira/browse/HIVE-13125) | Support masking and filtering of rows/columns |  Major | Security | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13307](https://issues.apache.org/jira/browse/HIVE-13307) | LLAP: Slider package should contain permanent functions |  Major | llap | Gopal V | Gopal V |
| [HIVE-13475](https://issues.apache.org/jira/browse/HIVE-13475) | Allow aggregate functions in over clause |  Major | Parser | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12878](https://issues.apache.org/jira/browse/HIVE-12878) | Support Vectorization for TEXTFILE and other formats |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-12634](https://issues.apache.org/jira/browse/HIVE-12634) | Add command to kill an ACID transaction |  Major | Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-13736](https://issues.apache.org/jira/browse/HIVE-13736) | View's input/output formats are TEXT by default |  Minor | Hive | Pavas Garg | Yongzhi Chen |
| [HIVE-13029](https://issues.apache.org/jira/browse/HIVE-13029) | NVDIMM support for LLAP Cache |  Critical | llap | Gopal V | Gopal V |
| [HIVE-13418](https://issues.apache.org/jira/browse/HIVE-13418) | HiveServer2 HTTP mode should support X-Forwarded-Host header for authorization/audits |  Major | Authorization, HiveServer2 | Thejas M Nair | Thejas M Nair |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-12515](https://issues.apache.org/jira/browse/HIVE-12515) | Clean the SparkCounters related code after remove counter based stats collection[Spark Branch] |  Major | Spark | Chengxiang Li | Rui Li |
| [HIVE-12595](https://issues.apache.org/jira/browse/HIVE-12595) | [REFACTOR] Make physical compiler more type safe |  Major | Physical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-10982](https://issues.apache.org/jira/browse/HIVE-10982) | Customizable the value of  java.sql.statement.setFetchSize in Hive JDBC Driver |  Critical | JDBC | Bing Li | Bing Li |
| [HIVE-12431](https://issues.apache.org/jira/browse/HIVE-12431) | Support timeout for compile lock |  Major | HiveServer2, Query Processor | Lenni Kuff | Mohit Sabharwal |
| [HIVE-11487](https://issues.apache.org/jira/browse/HIVE-11487) | Add getNumPartitionsByFilter api in metastore api |  Blocker | Metastore | Amareshwari Sriramadasu | Akshay Goyal |
| [HIVE-12541](https://issues.apache.org/jira/browse/HIVE-12541) | SymbolicTextInputFormat should supports the path with regex |  Major | . | Xiaowei Wang | Xiaowei Wang |
| [HIVE-12776](https://issues.apache.org/jira/browse/HIVE-12776) | Add parse utility method for parsing any stand-alone HQL expression |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-12811](https://issues.apache.org/jira/browse/HIVE-12811) | Name yarn application name more meaning than just "Hive on Spark" |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-12611](https://issues.apache.org/jira/browse/HIVE-12611) | Make sure spark.yarn.queue is effective and takes the value from mapreduce.job.queuename if given [Spark Branch] |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-12897](https://issues.apache.org/jira/browse/HIVE-12897) | Improve dynamic partition loading |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12907](https://issues.apache.org/jira/browse/HIVE-12907) | Improve dynamic partition loading - II |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12953](https://issues.apache.org/jira/browse/HIVE-12953) | Update description of hive.ppd.remove.duplicatefilters in HiveConf.java |  Minor | Documentation | Shannon Ladymon | Shannon Ladymon |
| [HIVE-12763](https://issues.apache.org/jira/browse/HIVE-12763) | Use bit vector to track NDV |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-12545](https://issues.apache.org/jira/browse/HIVE-12545) | Add sessionId and queryId logging support for methods like getCatalogs in HiveSessionImpl class |  Major | Logging | Aihua Xu | Aihua Xu |
| [HIVE-12902](https://issues.apache.org/jira/browse/HIVE-12902) | Refactor TxnHandler to be an interface |  Major | Metastore, Transactions | Alan Gates | Alan Gates |
| [HIVE-12777](https://issues.apache.org/jira/browse/HIVE-12777) | Add capability to restore session in CLIService and SessionManager |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-12970](https://issues.apache.org/jira/browse/HIVE-12970) | Add total open connections in HiveServer2 |  Minor | Diagnosability, HiveServer2 | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-12946](https://issues.apache.org/jira/browse/HIVE-12946) | alter table should also add default scheme and authority for the location similar to create table |  Major | Metastore | Aihua Xu | Aihua Xu |
| [HIVE-12908](https://issues.apache.org/jira/browse/HIVE-12908) | Improve dynamic partition loading III |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12958](https://issues.apache.org/jira/browse/HIVE-12958) | Make embedded Jetty server more configurable |  Major | HCatalog | Aihua Xu | Aihua Xu |
| [HIVE-10115](https://issues.apache.org/jira/browse/HIVE-10115) | HS2 running on a Kerberized cluster should offer Kerberos(GSSAPI) and Delegation token(DIGEST) when alternate authentication is enabled |  Major | Authentication | Mubashir Kazia | Mubashir Kazia |
| [HIVE-12950](https://issues.apache.org/jira/browse/HIVE-12950) | get rid of the NullScan emptyFile madness |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12839](https://issues.apache.org/jira/browse/HIVE-12839) | Upgrade Hive to Calcite 1.6 |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-10468](https://issues.apache.org/jira/browse/HIVE-10468) | Create scripts to do metastore upgrade tests on jenkins for Oracle DB. |  Major | Metastore | Naveen Gangam | Naveen Gangam |
| [HIVE-11752](https://issues.apache.org/jira/browse/HIVE-11752) | Pre-materializing complex CTE queries |  Minor | Query Processor | Navis | Jesus Camacho Rodriguez |
| [HIVE-13033](https://issues.apache.org/jira/browse/HIVE-13033) | SPDO unnecessarily duplicates columns in key & value of mapper output |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-13058](https://issues.apache.org/jira/browse/HIVE-13058) | Add session and operation\_log directory deletion messages |  Minor | HiveServer2 | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-12967](https://issues.apache.org/jira/browse/HIVE-12967) | Change LlapServiceDriver to read a properties file instead of llap-daemon-site |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-12942](https://issues.apache.org/jira/browse/HIVE-12942) | Remove Yarn WebApps from LLAP daemon instance |  Major | llap | Gopal V | Gopal V |
| [HIVE-12787](https://issues.apache.org/jira/browse/HIVE-12787) | Trace improvement - Inconsistent logging upon shutdown-start of the Hive metastore process |  Minor | Metastore | Siddharth Ahuja | Siddharth Ahuja |
| [HIVE-13044](https://issues.apache.org/jira/browse/HIVE-13044) | Enable TLS encryption to HMS backend database |  Major | Metastore | Aihua Xu | Aihua Xu |
| [HIVE-13118](https://issues.apache.org/jira/browse/HIVE-13118) | add some logging to LLAP token related paths |  Major | llap | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13116](https://issues.apache.org/jira/browse/HIVE-13116) | LLAP: allow ignoring the UDF check during compile time |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13054](https://issues.apache.org/jira/browse/HIVE-13054) | LLAP: disable permanent fns by default (for now) |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13102](https://issues.apache.org/jira/browse/HIVE-13102) | CBO: Reduce operations in Calcite do not fold as tight as rule-based folding |  Minor | CBO | Gopal V | Jesus Camacho Rodriguez |
| [HIVE-13120](https://issues.apache.org/jira/browse/HIVE-13120) | propagate doAs when generating ORC splits |  Major | . | Yi Zhang | Sergey Shelukhin |
| [HIVE-13122](https://issues.apache.org/jira/browse/HIVE-13122) | LLAP: simple Model/View separation for UI |  Major | llap | Gopal V | Gopal V |
| [HIVE-13034](https://issues.apache.org/jira/browse/HIVE-13034) | Add jdeb plugin to build debian |  Major | Build Infrastructure | Arshad Matin | Arshad Matin |
| [HIVE-12935](https://issues.apache.org/jira/browse/HIVE-12935) | LLAP: Replace Yarn registry with Zookeeper registry |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13040](https://issues.apache.org/jira/browse/HIVE-13040) | Handle empty bucket creations more efficiently |  Major | Query Processor, Transactions | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-13069](https://issues.apache.org/jira/browse/HIVE-13069) | Enable cartesian product merging |  Major | Parser | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13106](https://issues.apache.org/jira/browse/HIVE-13106) | STARTUP\_MSG and SHUTDOWN\_MSG are added to HiveMetaStore |  Trivial | Metastore | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-13179](https://issues.apache.org/jira/browse/HIVE-13179) | Allow custom HiveConf to be passed to Authentication Providers |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-5370](https://issues.apache.org/jira/browse/HIVE-5370) | format\_number udf should take user specifed format as argument |  Minor | UDF | Amareshwari Sriramadasu | Amareshwari Sriramadasu |
| [HIVE-13063](https://issues.apache.org/jira/browse/HIVE-13063) | Create UDFs for CHR and REPLACE |  Major | HiveServer2 | Alejandro Fernandez | Alejandro Fernandez |
| [HIVE-13156](https://issues.apache.org/jira/browse/HIVE-13156) | Allow specifying the name of the queue in which llap will run |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13204](https://issues.apache.org/jira/browse/HIVE-13204) | Vectorization: Add ChainedCheckerFactory for LIKE |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-11483](https://issues.apache.org/jira/browse/HIVE-11483) | Add encoding and decoding for query string config |  Major | Query Processor | Amareshwari Sriramadasu | Rajat Khandelwal |
| [HIVE-13222](https://issues.apache.org/jira/browse/HIVE-13222) | Move rc-file-v0.rc used on TestRCFile.java to src/test/resources |  Minor | . | Sergio Peña | Sergio Peña |
| [HIVE-13206](https://issues.apache.org/jira/browse/HIVE-13206) | Create a test-sources.jar when -Psources profile is invoked |  Minor | . | Sergio Peña | Sergio Peña |
| [HIVE-12481](https://issues.apache.org/jira/browse/HIVE-12481) | Occasionally "Request is a replay" will be thrown from HS2 |  Major | Authentication | Aihua Xu | Aihua Xu |
| [HIVE-13226](https://issues.apache.org/jira/browse/HIVE-13226) | Improve tez print summary to print query execution breakdown |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-4570](https://issues.apache.org/jira/browse/HIVE-4570) | More information to user on GetOperationStatus in Hive Server2 when query is still executing |  Major | HiveServer2 | Amareshwari Sriramadasu | Rajat Khandelwal |
| [HIVE-12439](https://issues.apache.org/jira/browse/HIVE-12439) | CompactionTxnHandler.markCleaned() and TxnHandler.openTxns() misc improvements |  Major | Metastore, Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-13107](https://issues.apache.org/jira/browse/HIVE-13107) | LLAP: Rotate GC logs periodically to prevent full disks |  Trivial | llap | Gopal V | Gopal V |
| [HIVE-13295](https://issues.apache.org/jira/browse/HIVE-13295) | Improvement to LDAP search queries in HS2 LDAP Authenticator |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-12653](https://issues.apache.org/jira/browse/HIVE-12653) | The property  "serialization.encoding" in the class "org.apache.hadoop.hive.contrib.serde2.MultiDelimitSerDe" does not work |  Major | Contrib | yangfang | yangfang |
| [HIVE-13319](https://issues.apache.org/jira/browse/HIVE-13319) | Propagate external handles in task display |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-11424](https://issues.apache.org/jira/browse/HIVE-11424) | Rule to transform OR clauses into IN clauses in CBO |  Major | Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12988](https://issues.apache.org/jira/browse/HIVE-12988) | Improve dynamic partition loading IV |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-13367](https://issues.apache.org/jira/browse/HIVE-13367) | Extending HPLSQL parser |  Major | hpl/sql | Dmitry Tolpeko | Dmitry Tolpeko |
| [HIVE-10249](https://issues.apache.org/jira/browse/HIVE-10249) | ACID: show locks should show who the lock is waiting for |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13364](https://issues.apache.org/jira/browse/HIVE-13364) | Allow llap to work with dynamic ports for rpc, shuffle, ui |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13376](https://issues.apache.org/jira/browse/HIVE-13376) | HoS emits too many logs with application state |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-13365](https://issues.apache.org/jira/browse/HIVE-13365) | Change the MiniLLAPCluster to work with a MiniZKCluster |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13398](https://issues.apache.org/jira/browse/HIVE-13398) | LLAP: Simple /status and /peers web services |  Major | llap | Gopal V | Gopal V |
| [HIVE-13436](https://issues.apache.org/jira/browse/HIVE-13436) | Allow the package directory to be specified for the llap setup script |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-12968](https://issues.apache.org/jira/browse/HIVE-12968) | genNotNullFilterForJoinSourcePlan: needs to merge predicates into the multi-AND |  Minor | Logical Optimizer | Gopal V | Ashutosh Chauhan |
| [HIVE-13430](https://issues.apache.org/jira/browse/HIVE-13430) | Pass error message to failure hook |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-13413](https://issues.apache.org/jira/browse/HIVE-13413) | add a llapstatus command line tool |  Major | llap | Siddharth Seth | Siddharth Seth |
| [HIVE-13429](https://issues.apache.org/jira/browse/HIVE-13429) | Tool to remove dangling scratch dir |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-13183](https://issues.apache.org/jira/browse/HIVE-13183) | More logs in operation logs |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-13472](https://issues.apache.org/jira/browse/HIVE-13472) | Replace primitive wrapper's valueOf method with parse\* method to avoid unnecessary boxing/unboxing |  Major | Hive | Kousuke Saruta | Kousuke Saruta |
| [HIVE-13400](https://issues.apache.org/jira/browse/HIVE-13400) | Following up HIVE-12481, add retry for Zookeeper service discovery |  Major | JDBC | Aihua Xu | Aihua Xu |
| [HIVE-6535](https://issues.apache.org/jira/browse/HIVE-6535) | JDBC: provide an async API to execute query and fetch results |  Major | HiveServer2, JDBC | Thejas M Nair | Vaibhav Gumashta |
| [HIVE-13501](https://issues.apache.org/jira/browse/HIVE-13501) | Invoke failure hooks if query fails on exception |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-13559](https://issues.apache.org/jira/browse/HIVE-13559) | Pass exception to failure hooks |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12637](https://issues.apache.org/jira/browse/HIVE-12637) | make retryable SQLExceptions in TxnHandler configurable |  Major | Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-12959](https://issues.apache.org/jira/browse/HIVE-12959) | LLAP: Add task scheduler timeout when no nodes are alive |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13536](https://issues.apache.org/jira/browse/HIVE-13536) | LLAP: Add metrics for task scheduler |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13509](https://issues.apache.org/jira/browse/HIVE-13509) | HCatalog getSplits should ignore the partition with invalid path |  Major | HCatalog | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13469](https://issues.apache.org/jira/browse/HIVE-13469) | LLAP: Support delayed scheduling for locality |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13421](https://issues.apache.org/jira/browse/HIVE-13421) | Propagate job progress in operation status |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-13643](https://issues.apache.org/jira/browse/HIVE-13643) | Various enhancements / fixes to llap cli tools |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13629](https://issues.apache.org/jira/browse/HIVE-13629) | Expose Merge-File task and Column-Truncate task from DDLTask |  Major | Hive | zhihai xu | zhihai xu |
| [HIVE-13661](https://issues.apache.org/jira/browse/HIVE-13661) | [Refactor] Move common FS operations out of shim layer |  Major | Shims | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-13666](https://issues.apache.org/jira/browse/HIVE-13666) | LLAP Provide the log url for a task attempt to display on the UI |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-4924](https://issues.apache.org/jira/browse/HIVE-4924) | JDBC: Support query timeout for jdbc |  Major | HiveServer2, JDBC | Navis | Vaibhav Gumashta |
| [HIVE-13516](https://issues.apache.org/jira/browse/HIVE-13516) | Adding BTEQ .IF, .QUIT, ERRORCODE to HPL/SQL |  Major | hpl/sql | Dmitry Tolpeko | Dmitry Tolpeko |
| [HIVE-13027](https://issues.apache.org/jira/browse/HIVE-13027) | Configuration changes to improve logging performance |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13679](https://issues.apache.org/jira/browse/HIVE-13679) | Pass diagnostic message to failure hooks |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-13352](https://issues.apache.org/jira/browse/HIVE-13352) | Seems unnecessary for HBase tests to call QTestUtil.tearDown to close zookeeper and others. |  Major | Testing Infrastructure | Aihua Xu | Balint Molnar |
| [HIVE-13363](https://issues.apache.org/jira/browse/HIVE-13363) | Add hive.metastore.token.signature property to HiveConf |  Major | . | Anthony Hsu | Anthony Hsu |
| [HIVE-11793](https://issues.apache.org/jira/browse/HIVE-11793) | SHOW LOCKS with DbTxnManager ignores filter options |  Minor | Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-13716](https://issues.apache.org/jira/browse/HIVE-13716) | Improve dynamic partition loading V |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-13670](https://issues.apache.org/jira/browse/HIVE-13670) | Improve Beeline connect/reconnect semantics |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-13726](https://issues.apache.org/jira/browse/HIVE-13726) | Improve dynamic partition loading VI |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-13681](https://issues.apache.org/jira/browse/HIVE-13681) | Update README with latest Hive functionality |  Major | Documentation | Alan Gates | Alan Gates |
| [HIVE-13562](https://issues.apache.org/jira/browse/HIVE-13562) | Enable vector bridge for all non-vectorized udfs |  Major | Vectorization | Ashutosh Chauhan | Matt McCline |
| [HIVE-13750](https://issues.apache.org/jira/browse/HIVE-13750) | Avoid additional shuffle stage created by Sorted Dynamic Partition Optimizer when possible |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13616](https://issues.apache.org/jira/browse/HIVE-13616) | Investigate renaming a table without invalidating the column stats |  Major | Metastore | Aihua Xu | Aihua Xu |
| [HIVE-13249](https://issues.apache.org/jira/browse/HIVE-13249) | Hard upper bound on number of open transactions |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-13783](https://issues.apache.org/jira/browse/HIVE-13783) | Display a secondary prompt on beeline for multi-line statements |  Minor | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-13789](https://issues.apache.org/jira/browse/HIVE-13789) | Repeatedly checking configuration in TextRecordWriter/Reader hurts performance |  Minor | . | Rui Li | Rui Li |
| [HIVE-13799](https://issues.apache.org/jira/browse/HIVE-13799) | Optimize TableScanRule::checkBucketedTable |  Minor | Query Planning | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-12467](https://issues.apache.org/jira/browse/HIVE-12467) | Add number of dynamic partitions to error message |  Minor | . | Lars Francke | Lars Francke |
| [HIVE-13354](https://issues.apache.org/jira/browse/HIVE-13354) | Add ability to specify Compaction options per table and per request |  Major | . | Eugene Koifman | Wei Zheng |
| [HIVE-13196](https://issues.apache.org/jira/browse/HIVE-13196) | UDFLike: reduce Regex NFA sizes |  Minor | UDF | Gopal V | Gopal V |
| [HIVE-12983](https://issues.apache.org/jira/browse/HIVE-12983) | Provide a builtin function to get Hive version |  Major | UDF | Lenni Kuff | Lenni Kuff |
| [HIVE-11956](https://issues.apache.org/jira/browse/HIVE-11956) | SHOW LOCKS should indicate what acquired the lock |  Critical | CLI, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13902](https://issues.apache.org/jira/browse/HIVE-13902) | [Refactor] Minimize metastore jar dependencies on task nodes |  Major | Metastore, Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-13933](https://issues.apache.org/jira/browse/HIVE-13933) | Add an option to turn off parallel file moves |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-10815](https://issues.apache.org/jira/browse/HIVE-10815) | Let HiveMetaStoreClient Choose MetaStore Randomly |  Major | HiveServer2, Metastore | Nemon Lou | Nemon Lou |
| [HIVE-11918](https://issues.apache.org/jira/browse/HIVE-11918) | Implement/Enable constant related optimization rules in Calcite |  Major | . | Pengcheng Xiong | Pengcheng Xiong |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-11966](https://issues.apache.org/jira/browse/HIVE-11966) | JDBC Driver parsing error when reading principal from ZooKeeper |  Major | JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-12045](https://issues.apache.org/jira/browse/HIVE-12045) | ClassNotFoundException for GenericUDF [Spark Branch] |  Major | Spark | Zsolt Tóth | Rui Li |
| [HIVE-12466](https://issues.apache.org/jira/browse/HIVE-12466) | SparkCounter not initialized error |  Major | Spark | Rui Li | Rui Li |
| [HIVE-12554](https://issues.apache.org/jira/browse/HIVE-12554) | Fix Spark branch build after merge [Spark Branch] |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-12567](https://issues.apache.org/jira/browse/HIVE-12567) | Enhance TxnHandler retry logic to handle ORA-08176 |  Major | Metastore, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-12529](https://issues.apache.org/jira/browse/HIVE-12529) | HiveTxnManager.acquireLocks() should not block forever |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-12568](https://issues.apache.org/jira/browse/HIVE-12568) | Provide an option to specify network interface used by Spark remote client [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-12608](https://issues.apache.org/jira/browse/HIVE-12608) | Parquet Schema Evolution doesn't work when a column is dropped from array\<struct\<\>\> |  Major | File Formats | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [HIVE-12620](https://issues.apache.org/jira/browse/HIVE-12620) | Misc improvement to Acid module |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-12570](https://issues.apache.org/jira/browse/HIVE-12570) | Incorrect error message Expression not in GROUP BY key thrown instead of Invalid function |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-12538](https://issues.apache.org/jira/browse/HIVE-12538) | After set spark related config, SparkSession never get reused |  Major | Spark | Nemon Lou | Nemon Lou |
| [HIVE-11935](https://issues.apache.org/jira/browse/HIVE-11935) | Race condition in  HiveMetaStoreClient: isCompatibleWith and close |  Major | Metastore | Daniel Dai | Daniel Dai |
| [HIVE-12395](https://issues.apache.org/jira/browse/HIVE-12395) | Turn off CBO for hive.support.special.characters.tablename tests until feature is complete |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-12708](https://issues.apache.org/jira/browse/HIVE-12708) | Hive on Spark doesn't work with Kerboresed HBase [Spark Branch] |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-12075](https://issues.apache.org/jira/browse/HIVE-12075) | add analyze command to explictly cache file metadata in HBase metastore |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12723](https://issues.apache.org/jira/browse/HIVE-12723) | stats\_filemetadata test was added to the wrong driver |  Trivial | Test | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12752](https://issues.apache.org/jira/browse/HIVE-12752) | Change the schema version to 2.1.0 |  Minor | Metastore | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-12502](https://issues.apache.org/jira/browse/HIVE-12502) | to\_date UDF cannot accept NULLs of VOID type |  Trivial | UDF | Aaron Tokhy | Aaron Tokhy |
| [HIVE-12792](https://issues.apache.org/jira/browse/HIVE-12792) | HIVE-12075 didn't update operation type for plugins |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12784](https://issues.apache.org/jira/browse/HIVE-12784) | Group by SemanticException: Invalid column reference |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-12795](https://issues.apache.org/jira/browse/HIVE-12795) | Vectorized execution causes ClassCastException |  Major | Query Processor | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11828](https://issues.apache.org/jira/browse/HIVE-11828) | beeline -f fails on scripts with tabs between column type and comment |  Minor | Beeline | Krzysztof Adamski | Aihua Xu |
| [HIVE-12799](https://issues.apache.org/jira/browse/HIVE-12799) | Always use Schema Evolution for ACID |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-12848](https://issues.apache.org/jira/browse/HIVE-12848) | Change derby scripts, for HMS upgrade tests, to accomodate 32-bit VM. |  Minor | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-12862](https://issues.apache.org/jira/browse/HIVE-12862) | Fix pom.xml to package hiveserver2.jsp |  Major | HiveServer2 | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-12887](https://issues.apache.org/jira/browse/HIVE-12887) | Handle ORC schema on read with fewer columns than file schema (after Schema Evolution changes) |  Critical | ORC | Matt McCline | Matt McCline |
| [HIVE-12865](https://issues.apache.org/jira/browse/HIVE-12865) | Exchange partition does not show inputs field for post/pre execute hooks |  Major | Query Processor | Paul Yang | Aihua Xu |
| [HIVE-12528](https://issues.apache.org/jira/browse/HIVE-12528) | don't start HS2 Tez sessions in a single thread |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12894](https://issues.apache.org/jira/browse/HIVE-12894) | Detect whether ORC is reading from ACID table correctly for Schema Evolution |  Critical | Hive, ORC | Matt McCline | Matt McCline |
| [HIVE-12909](https://issues.apache.org/jira/browse/HIVE-12909) | Some encryption q-tests fail because trash is disabled in encryption\_with\_trash.q |  Major | Hive | Sergio Peña | Sergio Peña |
| [HIVE-12867](https://issues.apache.org/jira/browse/HIVE-12867) | Semantic Exception Error Msg should be with in the range of "10000 to 19999" |  Major | . | Laljo John Pullokkaran | Hari Sankar Sivarama Subramaniyan |
| [HIVE-12888](https://issues.apache.org/jira/browse/HIVE-12888) | TestSparkNegativeCliDriver does not run in Spark mode[Spark Branch] |  Major | Spark | Chengxiang Li | Chengxiang Li |
| [HIVE-12478](https://issues.apache.org/jira/browse/HIVE-12478) | Improve Hive/Calcite Transitive Predicate inference |  Major | CBO | Laljo John Pullokkaran | Jesus Camacho Rodriguez |
| [HIVE-12789](https://issues.apache.org/jira/browse/HIVE-12789) | Fix output twice in the history command of Beeline |  Major | Beeline | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-12886](https://issues.apache.org/jira/browse/HIVE-12886) | invalid column reference error on grouping by constant |  Major | . | Clemens Valiente | Yongzhi Chen |
| [HIVE-12933](https://issues.apache.org/jira/browse/HIVE-12933) | Beeline will hang when authenticating with PAM when libjpam.so is missing |  Major | Authentication | Aihua Xu | Aihua Xu |
| [HIVE-12969](https://issues.apache.org/jira/browse/HIVE-12969) | Fix Javadoc for PredicatePushDown class |  Trivial | Documentation | Andrew Sears | Andrew Sears |
| [HIVE-12780](https://issues.apache.org/jira/browse/HIVE-12780) | Fix the output of the history command in Beeline |  Minor | Beeline | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-12966](https://issues.apache.org/jira/browse/HIVE-12966) | Change some ZooKeeperHiveLockManager logs to debug |  Major | Diagnosability, Logging | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-12834](https://issues.apache.org/jira/browse/HIVE-12834) | Fix to accept the arrow keys in BeeLine CLI |  Major | Beeline | Shinichi Yamashita | Shinichi Yamashita |
| [HIVE-11716](https://issues.apache.org/jira/browse/HIVE-11716) | Reading ACID table from non-acid session should raise an error |  Critical | Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-12951](https://issues.apache.org/jira/browse/HIVE-12951) | Reduce Spark executor prewarm timeout to 5s |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-12885](https://issues.apache.org/jira/browse/HIVE-12885) | LDAP Authenticator improvements |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-11097](https://issues.apache.org/jira/browse/HIVE-11097) | HiveInputFormat uses String.startsWith to compare splitPath and PathToAliases |  Critical | File Formats | Wan Chang | Wan Chang |
| [HIVE-12990](https://issues.apache.org/jira/browse/HIVE-12990) | LLAP: ORC cache NPE without FileID support |  Major | llap | Gopal V | Sergey Shelukhin |
| [HIVE-12976](https://issues.apache.org/jira/browse/HIVE-12976) | MetaStoreDirectSql doesn't batch IN lists in all cases |  Major | . | Gopal V | Sergey Shelukhin |
| [HIVE-12999](https://issues.apache.org/jira/browse/HIVE-12999) | Tez: Vertex creation reduce NN IPCs |  Major | Tez | Gopal V | Gopal V |
| [HIVE-9862](https://issues.apache.org/jira/browse/HIVE-9862) | Vectorized execution corrupts timestamp values |  Major | Vectorization | Nathan Howell | Matt McCline |
| [HIVE-13016](https://issues.apache.org/jira/browse/HIVE-13016) | ORC FileDump recovery utility fails in Windows |  Major | . | Jason Dere | Prasanth Jayachandran |
| [HIVE-1608](https://issues.apache.org/jira/browse/HIVE-1608) | use sequencefile as the default for storing intermediate results |  Major | Query Processor | Namit Jain | Chaoyu Tang |
| [HIVE-12993](https://issues.apache.org/jira/browse/HIVE-12993) | user and password supplied from URL is overwritten by the empty user and password of the JDBC connection string when it's calling from beeline |  Major | Beeline, JDBC | Aihua Xu | Aihua Xu |
| [HIVE-13038](https://issues.apache.org/jira/browse/HIVE-13038) | LLAP needs service class registration for token identifier |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12941](https://issues.apache.org/jira/browse/HIVE-12941) | Unexpected result when using MIN() on struct with NULL in first field |  Major | Hive | Jan-Erik Hedbom | Yongzhi Chen |
| [HIVE-11866](https://issues.apache.org/jira/browse/HIVE-11866) | Add framework to enable testing using LDAPServer using LDAP protocol |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-12441](https://issues.apache.org/jira/browse/HIVE-12441) | Driver.acquireLocksAndOpenTxn() should only call recordValidTxns() when needed |  Major | CLI, Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-12998](https://issues.apache.org/jira/browse/HIVE-12998) | ORC FileDump.printJsonData() does not close RecordReader |  Major | ORC | Jason Dere | Jason Dere |
| [HIVE-13020](https://issues.apache.org/jira/browse/HIVE-13020) | Hive Metastore and HiveServer2 to Zookeeper fails with IBM JDK |  Major | HiveServer2, Metastore, Shims | Greg Senia | Greg Senia |
| [HIVE-12965](https://issues.apache.org/jira/browse/HIVE-12965) | Insert overwrite local directory should perserve the overwritten directory permission |  Major | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13036](https://issues.apache.org/jira/browse/HIVE-13036) | Split hive.root.logger separately to make it compatible with log4j1.x (for remaining services) |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13017](https://issues.apache.org/jira/browse/HIVE-13017) | Child process of HiveServer2 fails to get delegation token from non default FileSystem |  Major | Authentication | Takahiko Saito | Sushanth Sowmyan |
| [HIVE-9534](https://issues.apache.org/jira/browse/HIVE-9534) | incorrect result set for query that projects a windowed aggregate |  Major | PTF-Windowing | N Campbell | Aihua Xu |
| [HIVE-10187](https://issues.apache.org/jira/browse/HIVE-10187) | Avro backed tables don't handle cyclical or recursive records |  Major | Serializers/Deserializers | Mark Wagner | Mark Wagner |
| [HIVE-13042](https://issues.apache.org/jira/browse/HIVE-13042) | OrcFiledump runs into an ArrayIndexOutOfBoundsException when running against old versions of ORC files |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-13043](https://issues.apache.org/jira/browse/HIVE-13043) | Reload function has no impact to function registry |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-13047](https://issues.apache.org/jira/browse/HIVE-13047) | Disabling Web UI leads to NullPointerException |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13039](https://issues.apache.org/jira/browse/HIVE-13039) | BETWEEN predicate is not functioning correctly with predicate pushdown on Parquet table |  Major | Physical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-12673](https://issues.apache.org/jira/browse/HIVE-12673) | Orcfiledump throws NPE when no files are available |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-13062](https://issues.apache.org/jira/browse/HIVE-13062) | Hive metastore test failing |  Major | Metastore | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13056](https://issues.apache.org/jira/browse/HIVE-13056) | delegation tokens do not work with HS2 when used with http transport and kerberos |  Critical | Authentication | Cheng Xu | Sushanth Sowmyan |
| [HIVE-12981](https://issues.apache.org/jira/browse/HIVE-12981) | ThriftCLIService uses incompatible getShortName() implementation |  Critical | Authentication, Authorization, CLI, Security | Bolke de Bruin | Bolke de Bruin |
| [HIVE-13048](https://issues.apache.org/jira/browse/HIVE-13048) | Rogue SQL statement in an upgrade SQL file for oracle. |  Major | . | Naveen Gangam | Naveen Gangam |
| [HIVE-13015](https://issues.apache.org/jira/browse/HIVE-13015) | Bundle Log4j2 jars with hive-exec |  Major | . | Prasanth Jayachandran | Gopal V |
| [HIVE-12927](https://issues.apache.org/jira/browse/HIVE-12927) | HBase metastore: sequences should be one per row, not all in one row |  Critical | . | Sergey Shelukhin | Alan Gates |
| [HIVE-13065](https://issues.apache.org/jira/browse/HIVE-13065) | Hive throws NPE when writing map type data to a HBase backed table |  Major | HBase Handler | Yongzhi Chen | Yongzhi Chen |
| [HIVE-13052](https://issues.apache.org/jira/browse/HIVE-13052) | Allow tests to start MiniHS2 for manual testing |  Major | Testing Infrastructure | Jason Dere | Jason Dere |
| [HIVE-13087](https://issues.apache.org/jira/browse/HIVE-13087) | LLAP: Print STW pause time and useful application time |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13079](https://issues.apache.org/jira/browse/HIVE-13079) | LLAP: Allow reading log4j properties from default JAR resources |  Major | llap | Gopal V | Gopal V |
| [HIVE-13077](https://issues.apache.org/jira/browse/HIVE-13077) | LLAP: Scrub daemon-site.xml from client configs |  Major | llap, Tez | Gopal V | Gopal V |
| [HIVE-13100](https://issues.apache.org/jira/browse/HIVE-13100) | Revert HIVE-13015 that bundles log4j2 jars in hive-exec.jar |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13057](https://issues.apache.org/jira/browse/HIVE-13057) | Remove duplicate copies of TableDesc property values in PartitionDesc |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13045](https://issues.apache.org/jira/browse/HIVE-13045) | move guava dependency back to 14 after HIVE-12952 |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13086](https://issues.apache.org/jira/browse/HIVE-13086) | LLAP: Programmatically initialize log4j2 to print out the properties location |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13021](https://issues.apache.org/jira/browse/HIVE-13021) | GenericUDAFEvaluator.isEstimable(agg) always returns false |  Critical | UDF | Sergey Zadoroshnyak | Gopal V |
| [HIVE-12880](https://issues.apache.org/jira/browse/HIVE-12880) | spark-assembly causes Hive class version problems |  Major | . | Hui Zheng | Sergey Shelukhin |
| [HIVE-13089](https://issues.apache.org/jira/browse/HIVE-13089) | Rounding in Stats for equality expressions |  Major | Statistics | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12165](https://issues.apache.org/jira/browse/HIVE-12165) | wrong result when hive.optimize.sampling.orderby=true with some aggregate functions |  Critical | . | ErwanMAS | Aihua Xu |
| [HIVE-13099](https://issues.apache.org/jira/browse/HIVE-13099) | Non-SQLOperations lead to Web UI NPE |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13093](https://issues.apache.org/jira/browse/HIVE-13093) | hive metastore does not exit on start failure |  Major | Metastore | Thejas M Nair | Thejas M Nair |
| [HIVE-13090](https://issues.apache.org/jira/browse/HIVE-13090) | Hive metastore crashes on NPE with ZooKeeperTokenStore |  Major | Metastore, Security | Thejas M Nair | Piotr Wikieł |
| [HIVE-13105](https://issues.apache.org/jira/browse/HIVE-13105) | LLAP token hashCode and equals methods are incorrect |  Critical | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13082](https://issues.apache.org/jira/browse/HIVE-13082) | Enable constant propagation optimization in query with left semi join |  Major | Query Processor | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13070](https://issues.apache.org/jira/browse/HIVE-13070) | Precommit HMS tests should run in addition to precommit normal tests, not instead of |  Major | Testing Infrastructure | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13051](https://issues.apache.org/jira/browse/HIVE-13051) | Deadline class has numerous issues |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13110](https://issues.apache.org/jira/browse/HIVE-13110) | LLAP: Package log4j2 jars into Slider pkg |  Major | llap | Gopal V | Gopal V |
| [HIVE-13094](https://issues.apache.org/jira/browse/HIVE-13094) | CBO: Assertion error  in Case expression |  Major | CBO | Gopal V | Jesus Camacho Rodriguez |
| [HIVE-13064](https://issues.apache.org/jira/browse/HIVE-13064) | Serde properties are not working while expecting output in a directory |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-13126](https://issues.apache.org/jira/browse/HIVE-13126) | Clean up MapJoinOperator properly to avoid object cache reuse with unintentional states |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-13128](https://issues.apache.org/jira/browse/HIVE-13128) | NullScan fails on a secure setup |  Critical | . | Siddharth Seth | Siddharth Seth |
| [HIVE-12808](https://issues.apache.org/jira/browse/HIVE-12808) | Logical PPD: Push filter clauses through PTF(Windowing) into TS |  Major | CBO, Logical Optimizer | Gopal V | Laljo John Pullokkaran |
| [HIVE-12064](https://issues.apache.org/jira/browse/HIVE-12064) | prevent transactional=false |  Critical | Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-13101](https://issues.apache.org/jira/browse/HIVE-13101) | NullPointerException in HiveLexer.g |  Minor | Query Planning | sandeep akinapelli | sandeep akinapelli |
| [HIVE-13135](https://issues.apache.org/jira/browse/HIVE-13135) | LLAP: HTTPS Webservices needs trusted keystore configs |  Major | llap | Gopal V | Gopal V |
| [HIVE-13134](https://issues.apache.org/jira/browse/HIVE-13134) | JDBC: JDBC Standalone should not be in the lib dir by default |  Major | JDBC | Gopal V | Gopal V |
| [HIVE-13131](https://issues.apache.org/jira/browse/HIVE-13131) | TezWork queryName can be null after HIVE-12523 |  Major | Tez | Jason Dere | Jason Dere |
| [HIVE-13009](https://issues.apache.org/jira/browse/HIVE-13009) | Fix add\_jar\_file.q on Windows |  Major | Tests, Windows | Jason Dere | Jason Dere |
| [HIVE-13013](https://issues.apache.org/jira/browse/HIVE-13013) | Further Improve concurrency in TxnHandler |  Critical | Metastore, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13160](https://issues.apache.org/jira/browse/HIVE-13160) | HS2 unable to load UDFs on startup when HMS is not ready |  Major | HiveServer2 | Eric Lin | Aihua Xu |
| [HIVE-13146](https://issues.apache.org/jira/browse/HIVE-13146) | OrcFile table property values are case sensitive |  Minor | ORC | Andrew Sears | Yongzhi Chen |
| [HIVE-12757](https://issues.apache.org/jira/browse/HIVE-12757) | Fix TestCodahaleMetrics#testFileReporting |  Major | Test | Szehon Ho | Szehon Ho |
| [HIVE-13174](https://issues.apache.org/jira/browse/HIVE-13174) | Remove Vectorizer noise in logs |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-13002](https://issues.apache.org/jira/browse/HIVE-13002) | Hive object is not thread safe, is shared via a threadlocal and thus should not be passed around too much - part 1 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12749](https://issues.apache.org/jira/browse/HIVE-12749) | Constant propagate returns string values in incorrect format |  Major | . | Oleksiy Sayankin | Aleksey Vovchenko |
| [HIVE-13163](https://issues.apache.org/jira/browse/HIVE-13163) | ORC MemoryManager thread checks are fatal, should WARN |  Major | ORC | Gopal V | Gopal V |
| [HIVE-13108](https://issues.apache.org/jira/browse/HIVE-13108) | Operators: SORT BY randomness is not safe with network partitions |  Major | Spark, Tez | Gopal V | Gopal V |
| [HIVE-13186](https://issues.apache.org/jira/browse/HIVE-13186) | ALTER TABLE RENAME should lowercase table name and hdfs location |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-13169](https://issues.apache.org/jira/browse/HIVE-13169) | HiveServer2: Support delegation token based connection when using http transport |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Thejas M Nair |
| [HIVE-13200](https://issues.apache.org/jira/browse/HIVE-13200) | Aggregation functions returning empty rows on partitioned columns |  Major | Physical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-13199](https://issues.apache.org/jira/browse/HIVE-13199) | NDC stopped working in LLAP logging |  Major | llap, Logging | Sergey Shelukhin | Prasanth Jayachandran |
| [HIVE-13096](https://issues.apache.org/jira/browse/HIVE-13096) | Cost to choose side table in MapJoin conversion based on cumulative cardinality |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13209](https://issues.apache.org/jira/browse/HIVE-13209) | metastore get\_delegation\_token fails with null ip address |  Major | Metastore | Aswathy Chellammal Sreekumar | Thejas M Nair |
| [HIVE-13083](https://issues.apache.org/jira/browse/HIVE-13083) | Writing HiveDecimal to ORC can wrongly suppress present stream |  Major | . | Yi Zhang | Prasanth Jayachandran |
| [HIVE-13210](https://issues.apache.org/jira/browse/HIVE-13210) | Revert changes in HIVE-12994 related to metastore |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13227](https://issues.apache.org/jira/browse/HIVE-13227) | LLAP: Change daemon initialization logs from INFO to WARN |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13153](https://issues.apache.org/jira/browse/HIVE-13153) | SessionID is appended to thread name twice |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13211](https://issues.apache.org/jira/browse/HIVE-13211) | normalize Hive.get overloads to go thru one path |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13216](https://issues.apache.org/jira/browse/HIVE-13216) | ORC Reader will leave file open until GC when opening a malformed ORC file |  Minor | File Formats, ORC | Yuxing Yao | Sergey Shelukhin |
| [HIVE-13112](https://issues.apache.org/jira/browse/HIVE-13112) | Expose Lineage information in case of CTAS |  Major | lineage | Harish Butani | Harish Butani |
| [HIVE-12039](https://issues.apache.org/jira/browse/HIVE-12039) | Temporarily disable TestSSL#testSSLVersion |  Major | HiveServer2 | Vaibhav Gumashta | Ashutosh Chauhan |
| [HIVE-13144](https://issues.apache.org/jira/browse/HIVE-13144) | HS2 can leak ZK ACL objects when curator retries to create the persistent ephemeral node |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-13175](https://issues.apache.org/jira/browse/HIVE-13175) | Disallow making external tables transactional |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-10632](https://issues.apache.org/jira/browse/HIVE-10632) | Make sure TXN\_COMPONENTS gets cleaned up if table is dropped before compaction. |  Critical | Metastore, Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-12558](https://issues.apache.org/jira/browse/HIVE-12558) | LLAP: output QueryFragmentCounters somewhere |  Major | llap | Sergey Shelukhin | Prasanth Jayachandran |
| [HIVE-13236](https://issues.apache.org/jira/browse/HIVE-13236) | LLAP: token renewal interval needs to be set |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13237](https://issues.apache.org/jira/browse/HIVE-13237) | Select parquet struct field with upper case throws NPE |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-13263](https://issues.apache.org/jira/browse/HIVE-13263) | Vectorization: Unable to vectorize regexp\_extract/regexp\_replace " Udf: GenericUDFBridge, is not supported" |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-13251](https://issues.apache.org/jira/browse/HIVE-13251) | hive can't read the decimal in AVRO file generated from previous version |  Major | Hive | Aihua Xu | Aihua Xu |
| [HIVE-13218](https://issues.apache.org/jira/browse/HIVE-13218) | LLAP: better configs part 1 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13201](https://issues.apache.org/jira/browse/HIVE-13201) | Compaction shouldn't be allowed on non-ACID table |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-13185](https://issues.apache.org/jira/browse/HIVE-13185) | orc.ReaderImp.ensureOrcFooter() method fails on small text files with IndexOutOfBoundsException |  Major | ORC | Illya Yalovyy | Illya Yalovyy |
| [HIVE-9457](https://issues.apache.org/jira/browse/HIVE-9457) | Fix obsolete parameter name in HiveConf description of hive.hashtable.initialCapacity |  Minor | Documentation | Lefty Leverenz | Shannon Ladymon |
| [HIVE-13233](https://issues.apache.org/jira/browse/HIVE-13233) | Use min and max values to estimate better stats for comparison operators |  Major | Statistics | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13243](https://issues.apache.org/jira/browse/HIVE-13243) | Hive drop table on encyption zone fails for external tables |  Major | Encryption, Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13232](https://issues.apache.org/jira/browse/HIVE-13232) | Aggressively drop compression buffers in ORC OutStreams |  Major | ORC | Owen O'Malley | Owen O'Malley |
| [HIVE-12995](https://issues.apache.org/jira/browse/HIVE-12995) | LLAP: Synthetic file ids need collision checks |  Major | llap | Gopal V | Sergey Shelukhin |
| [HIVE-11675](https://issues.apache.org/jira/browse/HIVE-11675) | make use of file footer PPD API in ETL strategy or separate strategy |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13260](https://issues.apache.org/jira/browse/HIVE-13260) | ReduceSinkDeDuplication throws exception when pRS key is empty |  Major | Logical Optimizer | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-4662](https://issues.apache.org/jira/browse/HIVE-4662) | first\_value can't have more than one order by column |  Major | SQL | Frans Drijver | Jesus Camacho Rodriguez |
| [HIVE-13285](https://issues.apache.org/jira/browse/HIVE-13285) | Orc concatenation may drop old files from moving to final path |  Critical | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13242](https://issues.apache.org/jira/browse/HIVE-13242) | DISTINCT keyword is dropped by the parser for windowing |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13299](https://issues.apache.org/jira/browse/HIVE-13299) | Column Names trimmed of leading and trailing spaces |  Major | Parser | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13141](https://issues.apache.org/jira/browse/HIVE-13141) | Hive on Spark over HBase should accept parameters starting with "zookeeper.znode" |  Minor | Spark | Nemon Lou | Nemon Lou |
| [HIVE-13294](https://issues.apache.org/jira/browse/HIVE-13294) | AvroSerde leaks the connection in a case when reading schema from a url |  Major | Serializers/Deserializers | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13311](https://issues.apache.org/jira/browse/HIVE-13311) | MetaDataFormatUtils throws NPE when HiveDecimal.create is null |  Minor | . | Reuben Kuhnert | Reuben Kuhnert |
| [HIVE-13291](https://issues.apache.org/jira/browse/HIVE-13291) | ORC BI Split strategy should consider block size instead of file size |  Major | ORC | Gopal V | Prasanth Jayachandran |
| [HIVE-13298](https://issues.apache.org/jira/browse/HIVE-13298) | nested join support causes undecipherable errors in SemanticAnalyzer |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13327](https://issues.apache.org/jira/browse/HIVE-13327) | SessionID added to HS2 threadname does not trim spaces |  Major | . | Carter Shanklin | Prasanth Jayachandran |
| [HIVE-13313](https://issues.apache.org/jira/browse/HIVE-13313) | TABLESAMPLE ROWS feature broken for Vectorization |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-13322](https://issues.apache.org/jira/browse/HIVE-13322) | LLAP: ZK registry throws at shutdown due to slf4j trying to initialize a log4j logger |  Minor | . | Sergey Shelukhin | Gopal V |
| [HIVE-13286](https://issues.apache.org/jira/browse/HIVE-13286) | Query ID is being reused across queries |  Critical | Parser | Vikram Dixit K | Aihua Xu |
| [HIVE-13302](https://issues.apache.org/jira/browse/HIVE-13302) | direct SQL: cast to date doesn't work on Oracle |  Major | . | Rajesh Balamohan | Sergey Shelukhin |
| [HIVE-13310](https://issues.apache.org/jira/browse/HIVE-13310) | Vectorized Projection Comparison Number Column to Scalar broken for !noNulls and selectedInUse |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-13246](https://issues.apache.org/jira/browse/HIVE-13246) | Add log line to ORC writer to print out the file path |  Trivial | . | Siddharth Seth | Prasanth Jayachandran |
| [HIVE-13296](https://issues.apache.org/jira/browse/HIVE-13296) | Add vectorized Q test with complex types showing count(\*) etc work correctly |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-13283](https://issues.apache.org/jira/browse/HIVE-13283) | LLAP: make sure IO elevator is enabled by default in the daemons |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13261](https://issues.apache.org/jira/browse/HIVE-13261) | Can not compute column stats for partition when schema evolves |  Major | Statistics | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13217](https://issues.apache.org/jira/browse/HIVE-13217) | Replication for HoS mapjoin small file needs to respect dfs.replication.max |  Minor | Spark | Szehon Ho | Chinna Rao Lalam |
| [HIVE-13300](https://issues.apache.org/jira/browse/HIVE-13300) | Hive on spark throws exception for multi-insert with join |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-12616](https://issues.apache.org/jira/browse/HIVE-12616) | NullPointerException when spark session is reused to run a mapjoin |  Major | Spark | Nemon Lou | Nemon Lou |
| [HIVE-13325](https://issues.apache.org/jira/browse/HIVE-13325) | Excessive logging when ORC PPD fails type conversions |  Major | Logging, ORC | Siddharth Seth | Prasanth Jayachandran |
| [HIVE-11388](https://issues.apache.org/jira/browse/HIVE-11388) | Allow ACID Compactor components to run in multiple metastores |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13008](https://issues.apache.org/jira/browse/HIVE-13008) | WebHcat DDL commands in secure mode NPE when default FileSystem doesn't support delegation tokens |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-13262](https://issues.apache.org/jira/browse/HIVE-13262) | LLAP: Remove log levels from DebugUtils |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9499](https://issues.apache.org/jira/browse/HIVE-9499) | hive.limit.query.max.table.partition makes queries fail on non-partitioned tables |  Major | Query Planning | Alexander Kasper | Navis |
| [HIVE-12367](https://issues.apache.org/jira/browse/HIVE-12367) | Lock/unlock database should add current database to inputs and outputs of authz hook |  Major | Authorization | Dapeng Sun | Dapeng Sun |
| [HIVE-12552](https://issues.apache.org/jira/browse/HIVE-12552) | Wrong number of reducer estimation causing job to fail |  Major | Physical Optimizer | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-13151](https://issues.apache.org/jira/browse/HIVE-13151) | Clean up UGI objects in FileSystem cache for transactions |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-13324](https://issues.apache.org/jira/browse/HIVE-13324) | LLAP: history log for FRAGMENT\_START doesn't log DagId correctly |  Major | . | Sergey Shelukhin | Siddharth Seth |
| [HIVE-13115](https://issues.apache.org/jira/browse/HIVE-13115) | MetaStore Direct SQL getPartitions call fail when the columns schemas for a partition are null |  Major | Hive | Ratandeep Ratti | Ratandeep Ratti |
| [HIVE-12992](https://issues.apache.org/jira/browse/HIVE-12992) | Hive on tez: Bucket map join plan is incorrect |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-13111](https://issues.apache.org/jira/browse/HIVE-13111) | Fix timestamp / interval\_day\_time wrong results with HIVE-9862 |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-10729](https://issues.apache.org/jira/browse/HIVE-10729) | Query failed when select complex columns from joinned table (tez map join only) |  Major | Query Processor | Selina Zhang | Matt McCline |
| [HIVE-12937](https://issues.apache.org/jira/browse/HIVE-12937) | DbNotificationListener unable to clean up old notification events |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-13326](https://issues.apache.org/jira/browse/HIVE-13326) | HiveServer2: Make ZK config publishing configurable |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-13303](https://issues.apache.org/jira/browse/HIVE-13303) | spill to YARN directories, not tmp, when available |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13361](https://issues.apache.org/jira/browse/HIVE-13361) | Orc concatenation should enforce the compression buffer size |  Critical | . | Yi Zhang | Prasanth Jayachandran |
| [HIVE-12619](https://issues.apache.org/jira/browse/HIVE-12619) | (Parquet) Switching the field order within an array of structs causes the query to fail |  Minor | . | Ang Zhang | Mohammad Kamrul Islam |
| [HIVE-13372](https://issues.apache.org/jira/browse/HIVE-13372) | Hive Macro overwritten when multiple macros are used in one column |  Critical | Hive | Lin Liu | Pengcheng Xiong |
| [HIVE-13255](https://issues.apache.org/jira/browse/HIVE-13255) | FloatTreeReader.nextVector is expensive |  Major | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13379](https://issues.apache.org/jira/browse/HIVE-13379) | HIVE-12851 args do not work (slider-keytab-dir, etc.) |  Major | . | Swapan Shridhar | Sergey Shelukhin |
| [HIVE-12650](https://issues.apache.org/jira/browse/HIVE-12650) | Improve error messages for Hive on Spark in case the cluster has no resources available |  Major | . | JoneZhang | Rui Li |
| [HIVE-12612](https://issues.apache.org/jira/browse/HIVE-12612) | beeline always exits with 0 status when reading query from standard input |  Minor | Beeline | Paulo Sequeira | Reuben Kuhnert |
| [HIVE-13402](https://issues.apache.org/jira/browse/HIVE-13402) | Temporarily disable failing spark tests |  Major | Testing Infrastructure | Siddharth Seth | Siddharth Seth |
| [HIVE-13401](https://issues.apache.org/jira/browse/HIVE-13401) | Kerberized HS2 with LDAP auth enabled fails kerberos/delegation token authentication |  Major | Authentication | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13388](https://issues.apache.org/jira/browse/HIVE-13388) | Fix inconsistent content due to Thrift changes |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-13381](https://issues.apache.org/jira/browse/HIVE-13381) | Timestamp & date should have precedence in type hierarchy than string group |  Major | Types | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-13396](https://issues.apache.org/jira/browse/HIVE-13396) | LLAP: Include hadoop-metrics2.properties file LlapServiceDriver |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13330](https://issues.apache.org/jira/browse/HIVE-13330) | ORC vectorized string dictionary reader does not differentiate null vs empty string dictionary |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13373](https://issues.apache.org/jira/browse/HIVE-13373) | Use most specific type for numerical constants |  Major | Types | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-13394](https://issues.apache.org/jira/browse/HIVE-13394) | Analyze table fails in tez on empty partitions/files/tables |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-13378](https://issues.apache.org/jira/browse/HIVE-13378) | LLAP help formatter is too narrow |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13417](https://issues.apache.org/jira/browse/HIVE-13417) | Some vector operators return "OP" as name |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-13333](https://issues.apache.org/jira/browse/HIVE-13333) | StatsOptimizer throws ClassCastException |  Major | Logical Optimizer | Ashutosh Chauhan | Pengcheng Xiong |
| [HIVE-13428](https://issues.apache.org/jira/browse/HIVE-13428) | ZK SM in LLAP should have unique paths per cluster |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13437](https://issues.apache.org/jira/browse/HIVE-13437) | httpserver getPort does not return the actual port when attempting to use a dynamic port |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13339](https://issues.apache.org/jira/browse/HIVE-13339) | Vectorization: GenericUDFBetween in Projection mode |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-13320](https://issues.apache.org/jira/browse/HIVE-13320) | Apply HIVE-11544 to explicit conversions as well as implicit ones |  Major | UDF | Gopal V | Nita Dembla |
| [HIVE-13405](https://issues.apache.org/jira/browse/HIVE-13405) | Fix Connection Leak in OrcRawRecordMerger |  Major | ORC | Thomas Poepping | Thomas Poepping |
| [HIVE-13434](https://issues.apache.org/jira/browse/HIVE-13434) | BaseSemanticAnalyzer.unescapeSQLString doesn't unescape \u0000 style character literals. |  Major | Parser | Kousuke Saruta | Kousuke Saruta |
| [HIVE-11959](https://issues.apache.org/jira/browse/HIVE-11959) | add simple test case for TestTableIterable |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-13438](https://issues.apache.org/jira/browse/HIVE-13438) | Add a service check script for llap |  Major | llap | Vikram Dixit K | Vikram Dixit K |
| [HIVE-13439](https://issues.apache.org/jira/browse/HIVE-13439) | JDBC: provide a way to retrieve GUID to query Yarn ATS |  Major | JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-11806](https://issues.apache.org/jira/browse/HIVE-11806) | Create test for HIVE-11174 |  Minor | Tests | Vikram Dixit K | Vikram Dixit K |
| [HIVE-13491](https://issues.apache.org/jira/browse/HIVE-13491) | Testing  : log thread stacks when metastore fails to start |  Major | Test, Testing Infrastructure | Thejas M Nair | Thejas M Nair |
| [HIVE-13492](https://issues.apache.org/jira/browse/HIVE-13492) | TestMiniSparkOnYarnCliDriver.testCliDriver\_index\_bitmap3 is failing on master |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11484](https://issues.apache.org/jira/browse/HIVE-11484) | Fix ObjectInspector for Char and VarChar |  Major | Serializers/Deserializers | Amareshwari Sriramadasu | Deepak Barr |
| [HIVE-13410](https://issues.apache.org/jira/browse/HIVE-13410) | PerfLog metrics scopes not closed if there are exceptions on HS2 |  Major | Diagnosability | Szehon Ho | Szehon Ho |
| [HIVE-13340](https://issues.apache.org/jira/browse/HIVE-13340) | Vectorization: from\_unixtime UDF shim |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-13514](https://issues.apache.org/jira/browse/HIVE-13514) | TestClearDanglingScratchDir fail on branch-1 |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-13476](https://issues.apache.org/jira/browse/HIVE-13476) | HS2 ShutdownHookManager holds extra of Driver instance in nested compile |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-13465](https://issues.apache.org/jira/browse/HIVE-13465) | Add ZK settings to MiniLlapCluster clusterSpecificConfiguration |  Major | llap, Testing Infrastructure | Jason Dere | Jason Dere |
| [HIVE-13287](https://issues.apache.org/jira/browse/HIVE-13287) | Add logic to estimate stats for IN operator |  Major | Statistics | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13415](https://issues.apache.org/jira/browse/HIVE-13415) | Decouple Sessions from thrift binary transport |  Major | HiveServer2 | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-13498](https://issues.apache.org/jira/browse/HIVE-13498) | cleardanglingscratchdir does not work if scratchdir is not on defaultFs |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-13500](https://issues.apache.org/jira/browse/HIVE-13500) | Launching big queries fails with Out of Memory Exception |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-11427](https://issues.apache.org/jira/browse/HIVE-11427) | Location of temporary table for CREATE TABLE  SELECT broken by HIVE-7079 |  Major | . | Grisha Trubetskoy | Yongzhi Chen |
| [HIVE-13523](https://issues.apache.org/jira/browse/HIVE-13523) | Fix connection leak in ORC RecordReader and refactor for unit testing |  Major | ORC | Thomas Poepping | Thomas Poepping |
| [HIVE-13487](https://issues.apache.org/jira/browse/HIVE-13487) | Finish time is wrong when perflog is missing SUBMIT\_TO\_RUNNING |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13488](https://issues.apache.org/jira/browse/HIVE-13488) | Restore dag summary when tez exec print summary enabled and in-place updates disabled |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13240](https://issues.apache.org/jira/browse/HIVE-13240) | GroupByOperator: Drop the hash aggregates when closing operator |  Major | Query Processor | Gopal V | Gopal V |
| [HIVE-13480](https://issues.apache.org/jira/browse/HIVE-13480) | Add hadoop2 metrics reporter for Codahale metrics |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-13407](https://issues.apache.org/jira/browse/HIVE-13407) | Add more subtlety to TezCompiler Perf Logging |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-13467](https://issues.apache.org/jira/browse/HIVE-13467) | Show llap info on hs2 ui when available |  Major | llap | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-13553](https://issues.apache.org/jira/browse/HIVE-13553) | CTE with upperCase alias throws exception |  Minor | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13527](https://issues.apache.org/jira/browse/HIVE-13527) | Using deprecated APIs in HBase client causes zookeeper connection leaks. |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-13494](https://issues.apache.org/jira/browse/HIVE-13494) | LLAP: Some metrics from daemon are not exposed to hadoop-metrics2 |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13570](https://issues.apache.org/jira/browse/HIVE-13570) | Some queries with Union all fail when CBO is off |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-13533](https://issues.apache.org/jira/browse/HIVE-13533) | Remove AST dump |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13241](https://issues.apache.org/jira/browse/HIVE-13241) | LLAP: Incremental Caching marks some small chunks as "incomplete CB" |  Major | . | Gopal V | Sergey Shelukhin |
| [HIVE-13184](https://issues.apache.org/jira/browse/HIVE-13184) | LLAP: DAG credentials (e.g. HBase tokens) are not passed to the tasks in Tez plugin |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13463](https://issues.apache.org/jira/browse/HIVE-13463) | Fix ImportSemanticAnalyzer to allow for different src/dst filesystems |  Major | Import/Export | Zach York | Zach York |
| [HIVE-13522](https://issues.apache.org/jira/browse/HIVE-13522) | regexp\_extract.q hangs on master |  Blocker | Tests | Ashutosh Chauhan | Owen O'Malley |
| [HIVE-13585](https://issues.apache.org/jira/browse/HIVE-13585) | Add counter metric for direct sql failures |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13440](https://issues.apache.org/jira/browse/HIVE-13440) | remove hiveserver1 scripts and thrift generated files |  Major | JDBC | Thejas M Nair | Balint Molnar |
| [HIVE-13493](https://issues.apache.org/jira/browse/HIVE-13493) | Fix TransactionBatchImpl.getCurrentTxnId() and mis logging fixes |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13346](https://issues.apache.org/jira/browse/HIVE-13346) | LLAP doesn't update metadata priority when reusing from cache; some tweaks in LRFU policy |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13609](https://issues.apache.org/jira/browse/HIVE-13609) | Fix UDTFs to allow local fetch task to fetch rows forwarded by GenericUDTF.close() |  Major | . | Jason Dere | Jason Dere |
| [HIVE-13588](https://issues.apache.org/jira/browse/HIVE-13588) | NPE is thrown from MapredLocalTask.executeInChildVM |  Major | Logging | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13572](https://issues.apache.org/jira/browse/HIVE-13572) | Redundant setting full file status in Hive::copyFiles |  Major | . | Rui Li | Rui Li |
| [HIVE-13510](https://issues.apache.org/jira/browse/HIVE-13510) | Dynamic partitioning doesn’t work when remote metastore is used |  Critical | Metastore | Illya Yalovyy | Illya Yalovyy |
| [HIVE-13447](https://issues.apache.org/jira/browse/HIVE-13447) | LLAP: check ZK acls for registry and fail if they are too permissive |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13596](https://issues.apache.org/jira/browse/HIVE-13596) | HS2 should be able to get UDFs on demand from metastore |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12963](https://issues.apache.org/jira/browse/HIVE-12963) | LIMIT statement with SORT BY creates additional MR job with hardcoded only one reducer |  Major | Hive | Alina Abramova | Alina Abramova |
| [HIVE-13552](https://issues.apache.org/jira/browse/HIVE-13552) | Templeton job does not write out log files on InterruptedException |  Minor | WebHCat | Dennis Chan | Dennis Chan |
| [HIVE-13512](https://issues.apache.org/jira/browse/HIVE-13512) | Make initializing dag ids in TezWork thread safe for parallel compilation |  Minor | HiveServer2, Query Planning | Peter Slawski | Peter Slawski |
| [HIVE-13485](https://issues.apache.org/jira/browse/HIVE-13485) | Session id appended to thread name multiple times. |  Major | . | Vikram Dixit K | Vikram Dixit K |
| [HIVE-13462](https://issues.apache.org/jira/browse/HIVE-13462) | HiveResultSetMetaData.getPrecision() fails for NULL columns |  Major | JDBC | Jason Dere | Jason Dere |
| [HIVE-13446](https://issues.apache.org/jira/browse/HIVE-13446) | LLAP: set default management protocol acls to deny all |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13645](https://issues.apache.org/jira/browse/HIVE-13645) | Beeline needs null-guard around hiveVars and hiveConfVars read |  Minor | Beeline | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-13390](https://issues.apache.org/jira/browse/HIVE-13390) | HiveServer2: Add more test to ZK service discovery using MiniHS2 |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-13568](https://issues.apache.org/jira/browse/HIVE-13568) | Add UDFs to support column-masking |  Major | UDF | Madhan Neethiraj | Madhan Neethiraj |
| [HIVE-13178](https://issues.apache.org/jira/browse/HIVE-13178) | Enhance ORC Schema Evolution to handle more standard data type conversions |  Critical | Hive, ORC | Matt McCline | Matt McCline |
| [HIVE-13445](https://issues.apache.org/jira/browse/HIVE-13445) | LLAP: token should encode application and cluster ids |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11848](https://issues.apache.org/jira/browse/HIVE-11848) | tables in subqueries don't get locked |  Critical | Locking, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13213](https://issues.apache.org/jira/browse/HIVE-13213) | make DbLockManger work for non-acid resources |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13683](https://issues.apache.org/jira/browse/HIVE-13683) | Remove erroneously included patch file |  Major | . | Alan Gates | Alan Gates |
| [HIVE-13646](https://issues.apache.org/jira/browse/HIVE-13646) | make hive.optimize.sort.dynamic.partition compatible with ACID tables |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13669](https://issues.apache.org/jira/browse/HIVE-13669) | LLAP: io.enabled config is ignored on the server side |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13660](https://issues.apache.org/jira/browse/HIVE-13660) | Vectorizing IN expression with list of columns throws java.lang.ClassCastException ExprNodeColumnDesc cannot be cast to ExprNodeConstantDesc |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-12725](https://issues.apache.org/jira/browse/HIVE-12725) | CompactionTxnHandler.findNextToCompact() may produce "Operation not allowed after ResultSet closed" |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13592](https://issues.apache.org/jira/browse/HIVE-13592) | metastore calls map is not thread safe |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13671](https://issues.apache.org/jira/browse/HIVE-13671) | Add PerfLogger to log4j2.properties logger |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12837](https://issues.apache.org/jira/browse/HIVE-12837) | Better memory estimation/allocation for hybrid grace hash join during hash table loading |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-13632](https://issues.apache.org/jira/browse/HIVE-13632) | Hive failing on insert empty array into parquet table |  Major | Serializers/Deserializers | Yongzhi Chen | Yongzhi Chen |
| [HIVE-13653](https://issues.apache.org/jira/browse/HIVE-13653) | improve config error messages for LLAP cache size/etc |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13619](https://issues.apache.org/jira/browse/HIVE-13619) | Bucket map join plan is incorrect |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-13395](https://issues.apache.org/jira/browse/HIVE-13395) | Lost Update problem in ACID |  Blocker | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13701](https://issues.apache.org/jira/browse/HIVE-13701) | LLAP: Use different prefix for llap task scheduler metrics |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13710](https://issues.apache.org/jira/browse/HIVE-13710) | LLAP registry ACL check causes error due to namespacing |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13542](https://issues.apache.org/jira/browse/HIVE-13542) | Missing stats for tables in TPCDS performance regression suite |  Major | Testing Infrastructure | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-8343](https://issues.apache.org/jira/browse/HIVE-8343) | Return value from BlockingQueue.offer() is not checked in DynamicPartitionPruner |  Minor | . | Ted Yu | JongWon Park |
| [HIVE-13659](https://issues.apache.org/jira/browse/HIVE-13659) | An empty where condition leads to vectorization exceptions instead of throwing a compile time error |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-13525](https://issues.apache.org/jira/browse/HIVE-13525) | HoS hangs when job is empty |  Major | . | Rui Li | Rui Li |
| [HIVE-13618](https://issues.apache.org/jira/browse/HIVE-13618) | Trailing spaces in partition column will be treated differently |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13712](https://issues.apache.org/jira/browse/HIVE-13712) | LLAP: LlapServiceDriver should package hadoop-metrics2-llapdaemon.properties when available |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13597](https://issues.apache.org/jira/browse/HIVE-13597) | revert HIVE-12892 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13700](https://issues.apache.org/jira/browse/HIVE-13700) | TestHiveOperationType is failing on master |  Major | Tests | Ashutosh Chauhan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-13598](https://issues.apache.org/jira/browse/HIVE-13598) | Describe extended table should show the primary keys/foreign keys associated with the table |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-13676](https://issues.apache.org/jira/browse/HIVE-13676) | Tests failing because metastore doesn't come up |  Major | Testing Infrastructure | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-13642](https://issues.apache.org/jira/browse/HIVE-13642) | Update GUESS\_FIELDS option in .reviewboardrc to support current version of RBTools. |  Trivial | . | Takuma Wakamori | Takuma Wakamori |
| [HIVE-13342](https://issues.apache.org/jira/browse/HIVE-13342) | Improve logging in llap decider and throw exception in case llap mode is all but we cannot run in llap. |  Major | llap | Vikram Dixit K | Vikram Dixit K |
| [HIVE-12996](https://issues.apache.org/jira/browse/HIVE-12996) | Temp tables shouldn't be locked |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-13530](https://issues.apache.org/jira/browse/HIVE-13530) | Hive on Spark throws Kryo exception in some cases |  Major | Spark | Szehon Ho | Szehon Ho |
| [HIVE-13458](https://issues.apache.org/jira/browse/HIVE-13458) | Heartbeater doesn't fail query when heartbeat fails |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-13621](https://issues.apache.org/jira/browse/HIVE-13621) | compute stats in certain cases fails with NPE |  Major | HBase Metastore, Metastore | Vikram Dixit K | Pengcheng Xiong |
| [HIVE-13728](https://issues.apache.org/jira/browse/HIVE-13728) | TestHBaseSchemaTool fails on master |  Major | HBase Metastore, Test | Ashutosh Chauhan | Sergey Shelukhin |
| [HIVE-13602](https://issues.apache.org/jira/browse/HIVE-13602) | TPCH q16 return wrong result when CBO is on |  Major | CBO, Logical Optimizer | Nemon Lou | Pengcheng Xiong |
| [HIVE-13705](https://issues.apache.org/jira/browse/HIVE-13705) | Insert into table removes existing data |  Major | Query Processor | Aihua Xu | Aihua Xu |
| [HIVE-13656](https://issues.apache.org/jira/browse/HIVE-13656) | need to set direct memory limit higher in LlapServiceDriver for certain edge case configurations |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11550](https://issues.apache.org/jira/browse/HIVE-11550) | ACID queries pollute HiveConf |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13743](https://issues.apache.org/jira/browse/HIVE-13743) | Data move codepath is broken with hive (2.1.0-SNAPSHOT) |  Major | Query Processor | Rajesh Balamohan | Ashutosh Chauhan |
| [HIVE-13686](https://issues.apache.org/jira/browse/HIVE-13686) | TestRecordReaderImpl is deleting target/tmp causing all the tests after it to fail |  Major | Test | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-13682](https://issues.apache.org/jira/browse/HIVE-13682) | EOFException with fast hashtable |  Major | . | Sergey Shelukhin | Matt McCline |
| [HIVE-13753](https://issues.apache.org/jira/browse/HIVE-13753) | Make metastore client thread safe in DbTxnManager |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-13293](https://issues.apache.org/jira/browse/HIVE-13293) | Query occurs performance degradation after enabling parallel order by for Hive on Spark |  Major | Spark | Lifeng Wang | Rui Li |
| [HIVE-13767](https://issues.apache.org/jira/browse/HIVE-13767) | Wrong type inferred in Semijoin condition leads to AssertionError |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13608](https://issues.apache.org/jira/browse/HIVE-13608) | We should provide better error message while constraints with duplicate names are created |  Major | Diagnosability, Metastore | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-13449](https://issues.apache.org/jira/browse/HIVE-13449) | LLAP: HS2 should get the token directly, rather than from LLAP |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13730](https://issues.apache.org/jira/browse/HIVE-13730) | Avoid double spilling the same partition when memory threshold is set very low |  Blocker | Tez | Vikram Dixit K | Wei Zheng |
| [HIVE-13691](https://issues.apache.org/jira/browse/HIVE-13691) | No record with CQ\_ID=0 found in COMPACTION\_QUEUE |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13343](https://issues.apache.org/jira/browse/HIVE-13343) | Need to disable hybrid grace hash join in llap mode except for dynamically partitioned hash join |  Major | llap | Vikram Dixit K | Vikram Dixit K |
| [HIVE-13784](https://issues.apache.org/jira/browse/HIVE-13784) | Hive Metastore start failed on Oracle DB |  Blocker | Metastore | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-13622](https://issues.apache.org/jira/browse/HIVE-13622) | WriteSet tracking optimizations |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13657](https://issues.apache.org/jira/browse/HIVE-13657) | Spark driver stderr logs should appear in hive client logs |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-10171](https://issues.apache.org/jira/browse/HIVE-10171) | Create a storage-api module |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-13197](https://issues.apache.org/jira/browse/HIVE-13197) | Add adapted constprog2.q and constprog\_partitioner.q tests back |  Major | . | Jesus Camacho Rodriguez | Ashutosh Chauhan |
| [HIVE-13223](https://issues.apache.org/jira/browse/HIVE-13223) | HoS  may hang for queries that run on 0 splits |  Major | Spark | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-13699](https://issues.apache.org/jira/browse/HIVE-13699) | Make JavaDataModel#get thread safe for parallel compilation |  Minor | HiveServer2, storage-api | Peter Slawski | Peter Slawski |
| [HIVE-13502](https://issues.apache.org/jira/browse/HIVE-13502) | Beeline doesnt support session parameters in JDBC URL as documentation states. |  Major | Beeline | Naveen Gangam | Naveen Gangam |
| [HIVE-9144](https://issues.apache.org/jira/browse/HIVE-9144) | Beeline + Kerberos shouldn't prompt for unused username + password |  Minor | Beeline | Hari Sekhon | Naveen Gangam |
| [HIVE-13628](https://issues.apache.org/jira/browse/HIVE-13628) | Support for permanent functions - error handling if no restart |  Major | llap | Vikram Dixit K | Vikram Dixit K |
| [HIVE-13810](https://issues.apache.org/jira/browse/HIVE-13810) | insert overwrite select from some table fails throwing org.apache.hadoop.security.AccessControlException |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-13787](https://issues.apache.org/jira/browse/HIVE-13787) | LLAP: bug in recent security patches (wrong argument order; using full user name in id) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12643](https://issues.apache.org/jira/browse/HIVE-12643) | For self describing InputFormat don't replicate schema information in partitions |  Major | Query Planning | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-13832](https://issues.apache.org/jira/browse/HIVE-13832) | Add missing license header to files |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13845](https://issues.apache.org/jira/browse/HIVE-13845) | Delete beeline/pom.xml.orig |  Minor | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13332](https://issues.apache.org/jira/browse/HIVE-13332) | support dumping all row indexes in ORC FileDump |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13720](https://issues.apache.org/jira/browse/HIVE-13720) | TestLlapTaskCommunicator fails on master |  Major | llap, Test | Ashutosh Chauhan | Siddharth Seth |
| [HIVE-13551](https://issues.apache.org/jira/browse/HIVE-13551) | Make cleardanglingscratchdir work on Windows |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-13513](https://issues.apache.org/jira/browse/HIVE-13513) | cleardanglingscratchdir does not work in some version of HDFS |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-13267](https://issues.apache.org/jira/browse/HIVE-13267) | Vectorization: Add SelectLikeStringColScalar for non-filter operations |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-13821](https://issues.apache.org/jira/browse/HIVE-13821) | OrcSplit groups all delta files together into a single split |  Critical | Transactions | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13729](https://issues.apache.org/jira/browse/HIVE-13729) | FileSystem$Cache leaks in FileUtils.checkFileAccessWithImpersonation |  Major | HiveServer2 | Daniel Dai | Daniel Dai |
| [HIVE-13269](https://issues.apache.org/jira/browse/HIVE-13269) | Simplify comparison expressions using column stats |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13826](https://issues.apache.org/jira/browse/HIVE-13826) | Make VectorUDFAdaptor work for GenericUDFBetween when used as FILTER |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-13561](https://issues.apache.org/jira/browse/HIVE-13561) | HiveServer2 is leaking ClassLoaders when add jar / temporary functions are used |  Major | HiveServer2 | Trystan Leftwich | Trystan Leftwich |
| [HIVE-13841](https://issues.apache.org/jira/browse/HIVE-13841) | Orc split generation returns different strategies with cache enabled vs disabled |  Major | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13857](https://issues.apache.org/jira/browse/HIVE-13857) | insert overwrite select from some table fails throwing org.apache.hadoop.security.AccessControlException - II |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-13338](https://issues.apache.org/jira/browse/HIVE-13338) | Differences in vectorized\_casts.q output for vectorized and non-vectorized runs |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-13084](https://issues.apache.org/jira/browse/HIVE-13084) | Vectorization add support for PROJECTION Multi-AND/OR |  Major | Vectorization | Rajesh Balamohan | Matt McCline |
| [HIVE-13861](https://issues.apache.org/jira/browse/HIVE-13861) | Fix up nullability issue that might be created by pull up constants rules |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13849](https://issues.apache.org/jira/browse/HIVE-13849) | Wrong plan for hive.optimize.sort.dynamic.partition=true |  Critical | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13818](https://issues.apache.org/jira/browse/HIVE-13818) | Fast Vector MapJoin Long hashtable has to handle all integral types |  Critical | Hive | Matt McCline | Gopal V |
| [HIVE-13837](https://issues.apache.org/jira/browse/HIVE-13837) | current\_timestamp() output format is different in some cases |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13863](https://issues.apache.org/jira/browse/HIVE-13863) | Improve AnnotateWithStatistics with support for cartesian product |  Major | Statistics | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13831](https://issues.apache.org/jira/browse/HIVE-13831) | Error pushing predicates to HBase storage handler |  Major | HBase Handler | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13693](https://issues.apache.org/jira/browse/HIVE-13693) | Multi-insert query drops Filter before file output when there is a.val \<\> b.val |  Major | Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13844](https://issues.apache.org/jira/browse/HIVE-13844) | Invalid index handler in org.apache.hadoop.hive.ql.index.HiveIndex class |  Minor | Indexing | Svetozar Ivanov | Svetozar Ivanov |
| [HIVE-13823](https://issues.apache.org/jira/browse/HIVE-13823) | Remove unnecessary log line in common join operator |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-13859](https://issues.apache.org/jira/browse/HIVE-13859) | mask() UDF not retaining day and month field values |  Major | UDF | Madhan Neethiraj |  |
| [HIVE-13719](https://issues.apache.org/jira/browse/HIVE-13719) | TestConverters fails on master |  Major | llap, Tests | Ashutosh Chauhan | Siddharth Seth |
| [HIVE-13840](https://issues.apache.org/jira/browse/HIVE-13840) | Orc split generation is reading file footers twice |  Critical | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13870](https://issues.apache.org/jira/browse/HIVE-13870) | Decimal vector is not resized correctly |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13751](https://issues.apache.org/jira/browse/HIVE-13751) | LlapOutputFormatService should have a configurable send buffer size |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13518](https://issues.apache.org/jira/browse/HIVE-13518) | Hive on Tez: Shuffle joins do not choose the right 'big' table. |  Major | Physical Optimizer, Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-13867](https://issues.apache.org/jira/browse/HIVE-13867) | restore HiveAuthorizer interface changes |  Blocker | . | Thejas M Nair | Thejas M Nair |
| [HIVE-13885](https://issues.apache.org/jira/browse/HIVE-13885) | Hive session close is not resetting thread name |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-13876](https://issues.apache.org/jira/browse/HIVE-13876) | Vectorization: Port HIVE-11544 to LazySimpleDeserializeRead |  Critical | File Formats, Vectorization | Gopal V | Gopal V |
| [HIVE-13856](https://issues.apache.org/jira/browse/HIVE-13856) | Fetching transaction batches during ACID streaming against Hive Metastore using Oracle DB fails |  Blocker | Transactions | Deepesh Khandelwal | Eugene Koifman |
| [HIVE-13858](https://issues.apache.org/jira/browse/HIVE-13858) | LLAP: A preempted task can end up waiting on completeInitialization if some part of the executing code suppressed the interrupt |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13448](https://issues.apache.org/jira/browse/HIVE-13448) | LLAP: check ZK acls for ZKSM and fail if they are too permissive |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13927](https://issues.apache.org/jira/browse/HIVE-13927) | Adding missing header to Java files |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13862](https://issues.apache.org/jira/browse/HIVE-13862) | org.apache.hadoop.hive.metastore.MetaStoreDirectSql.getNumPartitionsViaSqlFilter falls back to ORM |  Major | Metastore | Amareshwari Sriramadasu | Rajat Khandelwal |
| [HIVE-13924](https://issues.apache.org/jira/browse/HIVE-13924) | (Vectorization) Error evaluating ((bool0 and (not bool1)) or (bool1 and (not bool0))) |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-13929](https://issues.apache.org/jira/browse/HIVE-13929) | org.apache.hadoop.hive.metastore.api.DataOperationType class not found error when a job is submitted by hive |  Blocker | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13853](https://issues.apache.org/jira/browse/HIVE-13853) | Add X-XSRF-Header filter to HS2 HTTP mode and WebHCat |  Major | HiveServer2, WebHCat | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-13941](https://issues.apache.org/jira/browse/HIVE-13941) | Improve errors returned from SchemaTool |  Minor | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-13912](https://issues.apache.org/jira/browse/HIVE-13912) | DbTxnManager.commitTxn(): ORA-00918: column ambiguously defined |  Blocker | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13909](https://issues.apache.org/jira/browse/HIVE-13909) | upgrade ACLs in LLAP registry when the cluster is upgraded to secure |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13599](https://issues.apache.org/jira/browse/HIVE-13599) | LLAP: Incorrect handling of the preemption queue on finishable state updates |  Critical | llap | Prasanth Jayachandran | Siddharth Seth |
| [HIVE-13904](https://issues.apache.org/jira/browse/HIVE-13904) | Ignore case when retrieving ColumnInfo from RowResolver |  Major | Parser | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13911](https://issues.apache.org/jira/browse/HIVE-13911) | load inpath fails throwing org.apache.hadoop.security.AccessControlException |  Major | Query Processor | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-13953](https://issues.apache.org/jira/browse/HIVE-13953) | Issues in HiveLockObject equals method |  Major | Locking | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13948](https://issues.apache.org/jira/browse/HIVE-13948) | Incorrect timezone handling in Writable results in wrong dates in queries |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13954](https://issues.apache.org/jira/browse/HIVE-13954) | Parquet logs should go to STDERR |  Major | . | Takahiko Saito | Prasanth Jayachandran |
| [HIVE-13955](https://issues.apache.org/jira/browse/HIVE-13955) | Include service-rpc and llap-ext-client in packaging files |  Blocker | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13972](https://issues.apache.org/jira/browse/HIVE-13972) | Resolve class dependency issue introduced by HIVE-13354 |  Blocker | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-13973](https://issues.apache.org/jira/browse/HIVE-13973) | Extend support for other primitive types in windowing expressions |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13563](https://issues.apache.org/jira/browse/HIVE-13563) | Hive Streaming does not honor orc.compress.size and orc.stripe.size table properties |  Major | ORC | Wei Zheng | Wei Zheng |
| [HIVE-13957](https://issues.apache.org/jira/browse/HIVE-13957) | vectorized IN is inconsistent with non-vectorized (at least for decimal in (string)) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13903](https://issues.apache.org/jira/browse/HIVE-13903) | getFunctionInfo is downloading jar on every call |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-14008](https://issues.apache.org/jira/browse/HIVE-14008) | Duplicate line in LLAP SecretManager |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13959](https://issues.apache.org/jira/browse/HIVE-13959) | MoveTask should only release its query associated locks |  Major | Locking | Chaoyu Tang | Chaoyu Tang |
| [HIVE-13833](https://issues.apache.org/jira/browse/HIVE-13833) | Add an initial delay when starting the heartbeat |  Minor | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-14010](https://issues.apache.org/jira/browse/HIVE-14010) | parquet-logging.properties from HIVE\_CONF\_DIR should be used when available |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13961](https://issues.apache.org/jira/browse/HIVE-13961) | ACID: Major compaction fails to include the original bucket files if there's no delta directory |  Blocker | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-14020](https://issues.apache.org/jira/browse/HIVE-14020) | Hive MS restart failed during EU with ORA-00922 error as part of DB schema upgrade |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-14006](https://issues.apache.org/jira/browse/HIVE-14006) | Hive query with UNION ALL fails with ArrayIndexOutOfBoundsException |  Major | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-14015](https://issues.apache.org/jira/browse/HIVE-14015) | SMB MapJoin failed for Hive on Spark when kerberized |  Major | Logical Optimizer | Yongzhi Chen | Yongzhi Chen |
| [HIVE-14258](https://issues.apache.org/jira/browse/HIVE-14258) | Reduce task timed out because CommonJoinOperator.genUniqueJoinObject took too long to finish without reporting progress |  Major | Query Processor | zhihai xu | zhihai xu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-12600](https://issues.apache.org/jira/browse/HIVE-12600) | Make index tests more robust |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-12621](https://issues.apache.org/jira/browse/HIVE-12621) | PTest Backup additional Tez/Spark logs |  Major | Testing Infrastructure | Szehon Ho | Szehon Ho |
| [HIVE-12628](https://issues.apache.org/jira/browse/HIVE-12628) | Eliminate flakiness in TestMetrics |  Major | Test | Szehon Ho | Szehon Ho |
| [HIVE-12715](https://issues.apache.org/jira/browse/HIVE-12715) | Unit test for HIVE-10685 fix |  Major | ORC, Tests | Illya Yalovyy | Illya Yalovyy |
| [HIVE-9147](https://issues.apache.org/jira/browse/HIVE-9147) | Add unit test for HIVE-7323 |  Minor | Statistics, Tests | Peter Slawski | Peter Slawski |
| [HIVE-12956](https://issues.apache.org/jira/browse/HIVE-12956) | run CBO in tests with mapred.mode=strict |  Major | . | Sergey Shelukhin | Ashutosh Chauhan |
| [HIVE-13055](https://issues.apache.org/jira/browse/HIVE-13055) | Add unit tests for HIVE-11512 |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-13371](https://issues.apache.org/jira/browse/HIVE-13371) | Fix test failure of testHasNull in TestColumnStatistics running on Windows |  Minor | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13268](https://issues.apache.org/jira/browse/HIVE-13268) | Add a HA mini cluster type in MiniHS2 |  Minor | Tests | Takanobu Asanuma | Takanobu Asanuma |
| [HIVE-11615](https://issues.apache.org/jira/browse/HIVE-11615) | Create test for max thrift message setting |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-13591](https://issues.apache.org/jira/browse/HIVE-13591) | TestSchemaTool is failing on master |  Major | Metastore | Ashutosh Chauhan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-12079](https://issues.apache.org/jira/browse/HIVE-12079) | Add units tests for HiveServer2 LDAP filters added in HIVE-7193 |  Major | Authentication, Test | Naveen Gangam | Naveen Gangam |
| [HIVE-13615](https://issues.apache.org/jira/browse/HIVE-13615) | nomore\_ambiguous\_table\_col.q is failing on master |  Major | Parser | Ashutosh Chauhan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11887](https://issues.apache.org/jira/browse/HIVE-11887) | some tests break the build on a shared machine, can break HiveQA |  Major | Test | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12279](https://issues.apache.org/jira/browse/HIVE-12279) | Testcase to verify session temporary files are removed after HIVE-11768 |  Major | HiveServer2, Test | Daniel Dai | Daniel Dai |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-12499](https://issues.apache.org/jira/browse/HIVE-12499) | Add HMS metrics for number of tables and partitions |  Major | Diagnosability | Szehon Ho | Szehon Ho |
| [HIVE-11107](https://issues.apache.org/jira/browse/HIVE-11107) | Support for Performance regression test suite with TPCDS |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11927](https://issues.apache.org/jira/browse/HIVE-11927) | Implement/Enable constant related optimization rules in Calcite: enable HiveReduceExpressionsRule to fold constants |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-12733](https://issues.apache.org/jira/browse/HIVE-12733) | UX improvements for HIVE-12499 |  Major | Diagnosability | Szehon Ho | Szehon Ho |
| [HIVE-12782](https://issues.apache.org/jira/browse/HIVE-12782) | update the golden files for some tests that fail |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-12793](https://issues.apache.org/jira/browse/HIVE-12793) | Address TestSparkCliDriver.testCliDriver\_order2 failure due to HIVE-12782 |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-12442](https://issues.apache.org/jira/browse/HIVE-12442) | HiveServer2: Refactor/repackage HiveServer2's Thrift code so that it can be used in the tasks |  Major | . | Vaibhav Gumashta | Rohit Dholakia |
| [HIVE-12868](https://issues.apache.org/jira/browse/HIVE-12868) | Fix empty operation-pool metrics |  Major | Diagnosability | Szehon Ho | Szehon Ho |
| [HIVE-9774](https://issues.apache.org/jira/browse/HIVE-9774) | Print yarn application id to console [Spark Branch] |  Major | Spark | Brock Noland | Rui Li |
| [HIVE-12853](https://issues.apache.org/jira/browse/HIVE-12853) | LLAP: localize permanent UDF jars to daemon and add them to classloader |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12802](https://issues.apache.org/jira/browse/HIVE-12802) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): MiniTezCliDriver.vector\_join\_filters.q failure |  Major | CBO | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-12889](https://issues.apache.org/jira/browse/HIVE-12889) | Support COUNT(DISTINCT) for partitioning query. |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-12805](https://issues.apache.org/jira/browse/HIVE-12805) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): MiniTezCliDriver skewjoin.q failure |  Major | CBO | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-12550](https://issues.apache.org/jira/browse/HIVE-12550) | Cache and display last N completed queries in HS2 WebUI |  Major | HiveServer2 | Lenni Kuff | Szehon Ho |
| [HIVE-12944](https://issues.apache.org/jira/browse/HIVE-12944) | Support SUM(DISTINCT) for partitioning query. |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-12709](https://issues.apache.org/jira/browse/HIVE-12709) | further improve user level explain |  Major | Diagnosability | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-12855](https://issues.apache.org/jira/browse/HIVE-12855) | LLAP: add checks when resolving UDFs to enforce whitelist |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12952](https://issues.apache.org/jira/browse/HIVE-12952) | Show query sub-pages on webui |  Major | Diagnosability | Szehon Ho | Szehon Ho |
| [HIVE-12918](https://issues.apache.org/jira/browse/HIVE-12918) | LLAP should never create embedded metastore when localizing functions |  Major | . | Siddharth Seth | Sergey Shelukhin |
| [HIVE-12543](https://issues.apache.org/jira/browse/HIVE-12543) | Disable Hive ConstantPropagate optimizer when CBO has optimized the plan |  Major | CBO, Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11526](https://issues.apache.org/jira/browse/HIVE-11526) | LLAP: implement LLAP UI as a separate service - part 1 |  Major | llap | Sergey Shelukhin | Yuya OZAWA |
| [HIVE-13005](https://issues.apache.org/jira/browse/HIVE-13005) | CBO: Calcite Operator To Hive Operator (Calcite Return Path): RexNode convert(ExprNodeConstantDesc literal)  decimal support bug |  Major | CBO | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-12857](https://issues.apache.org/jira/browse/HIVE-12857) | LLAP: modify the decider to allow using LLAP with whitelisted UDFs |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13129](https://issues.apache.org/jira/browse/HIVE-13129) | CliService leaks HMS connection |  Major | HiveServer2 | Aihua Xu | Aihua Xu |
| [HIVE-12781](https://issues.apache.org/jira/browse/HIVE-12781) | Temporarily disable authorization tests that always fail on Jenkins |  Major | . | Pengcheng Xiong | Ashutosh Chauhan |
| [HIVE-13198](https://issues.apache.org/jira/browse/HIVE-13198) | Authorization issues with cascading views |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-12910](https://issues.apache.org/jira/browse/HIVE-12910) | HBaseStore: initial null value of aggregateData can not call compareTo |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13362](https://issues.apache.org/jira/browse/HIVE-13362) | Commit binary file required for HIVE-13361 |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-12960](https://issues.apache.org/jira/browse/HIVE-12960) | Migrate Column Stats Extrapolation and UniformDistribution to HBaseStore |  Major | Statistics | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-12961](https://issues.apache.org/jira/browse/HIVE-12961) | Migrate Column Stats UniformDistribution to HBaseStore |  Major | Statistics | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13358](https://issues.apache.org/jira/browse/HIVE-13358) | Stats state is not captured correctly: turn off stats optimizer for sampled table |  Major | Logical Optimizer, Statistics | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13318](https://issues.apache.org/jira/browse/HIVE-13318) | Cache the result of getTable from metastore |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11766](https://issues.apache.org/jira/browse/HIVE-11766) | LLAP: Remove MiniLlapCluster from shim layer after hadoop-1 removal |  Major | llap | Prasanth Jayachandran | Siddharth Seth |
| [HIVE-10280](https://issues.apache.org/jira/browse/HIVE-10280) | LLAP: Handle errors while sending source state updates to the daemons |  Major | llap | Siddharth Seth | Siddharth Seth |
| [HIVE-13360](https://issues.apache.org/jira/browse/HIVE-13360) | Refactoring Hive Authorization |  Major | Security | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13420](https://issues.apache.org/jira/browse/HIVE-13420) | Clarify HS2 WebUI Query 'Elapsed TIme' |  Major | Diagnosability | Szehon Ho | Szehon Ho |
| [HIVE-13486](https://issues.apache.org/jira/browse/HIVE-13486) | Cast the column type for column masking |  Major | Security | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13477](https://issues.apache.org/jira/browse/HIVE-13477) | Set HivePrivilegeObjectType to TABLE\_OR\_VIEW |  Major | Security | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13505](https://issues.apache.org/jira/browse/HIVE-13505) | Skip running TestDummy where possibe during precommit builds |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13349](https://issues.apache.org/jira/browse/HIVE-13349) | Metastore Changes : API calls for retrieving primary keys and foreign keys information |  Major | CBO, Logical Optimizer | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-12049](https://issues.apache.org/jira/browse/HIVE-12049) | HiveServer2: Provide an option to write serialized thrift objects in final tasks |  Major | HiveServer2, JDBC | Rohit Dholakia | Rohit Dholakia |
| [HIVE-13130](https://issues.apache.org/jira/browse/HIVE-13130) |  HS2 changes : API calls for retrieving primary keys and foreign keys information |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-13424](https://issues.apache.org/jira/browse/HIVE-13424) | Refactoring the code to pass a QueryState object rather than HiveConf object |  Major | Query Processor | Aihua Xu | Aihua Xu |
| [HIVE-13290](https://issues.apache.org/jira/browse/HIVE-13290) | Support primary keys/foreign keys constraint as part of create table command in Hive |  Major | CBO, Logical Optimizer | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-12159](https://issues.apache.org/jira/browse/HIVE-12159) | Create vectorized readers for the complex types |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-13541](https://issues.apache.org/jira/browse/HIVE-13541) | Pass view's ColumnAccessInfo to HiveAuthorizer |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13654](https://issues.apache.org/jira/browse/HIVE-13654) | Add JAVA8\_URL to jenkins-submit-build.sh |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-13638](https://issues.apache.org/jira/browse/HIVE-13638) | CBO rule to pull up constants through Sort/Limit |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13351](https://issues.apache.org/jira/browse/HIVE-13351) | Support drop Primary Key/Foreign Key constraints |  Major | CBO, Logical Optimizer | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-13639](https://issues.apache.org/jira/browse/HIVE-13639) | CBO rule to pull up constants through Union |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13637](https://issues.apache.org/jira/browse/HIVE-13637) | Fold CASE into NVL when CBO optimized the plan |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13507](https://issues.apache.org/jira/browse/HIVE-13507) | Improved logging for ptest |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13620](https://issues.apache.org/jira/browse/HIVE-13620) | Merge llap branch work to master |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-13341](https://issues.apache.org/jira/browse/HIVE-13341) | Stats state is not captured correctly: differentiate load table and create table |  Major | Logical Optimizer, Statistics | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13722](https://issues.apache.org/jira/browse/HIVE-13722) | Add flag to detect constants to CBO pull up rules |  Major | CBO, Logical Optimizer, Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13350](https://issues.apache.org/jira/browse/HIVE-13350) | Support Alter commands for Rely/NoRely  novalidate for PK/FK constraints |  Major | CBO, Logical Optimizer | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-13565](https://issues.apache.org/jira/browse/HIVE-13565) | thrift change |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13758](https://issues.apache.org/jira/browse/HIVE-13758) | "Create table like" command should initialize the basic stats for the table |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13786](https://issues.apache.org/jira/browse/HIVE-13786) | Fix the unit test failure org.apache.hive.service.cli.session.TestHiveSessionImpl.testLeakOperationHandle |  Major | Test | Aihua Xu | Aihua Xu |
| [HIVE-11417](https://issues.apache.org/jira/browse/HIVE-11417) | Create shims for the row by row read path that is backed by VectorizedRowBatch |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-13520](https://issues.apache.org/jira/browse/HIVE-13520) | Don't allow any test to run for longer than 60minutes in the ptest setup |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13566](https://issues.apache.org/jira/browse/HIVE-13566) | Auto-gather column stats - phase 1 |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13068](https://issues.apache.org/jira/browse/HIVE-13068) | Disable Hive ConstantPropagate optimizer when CBO has optimized the plan II |  Major | CBO, Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13794](https://issues.apache.org/jira/browse/HIVE-13794) | HIVE\_RPC\_QUERY\_PLAN should always be set when generating LLAP splits |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-13511](https://issues.apache.org/jira/browse/HIVE-13511) | Run clidriver tests from within the qtest dir for the precommit tests |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13808](https://issues.apache.org/jira/browse/HIVE-13808) | Use constant expressions to backtrack when we create ReduceSink |  Major | Parser | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13807](https://issues.apache.org/jira/browse/HIVE-13807) | Extend metadata provider to pull up predicates through Union |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13852](https://issues.apache.org/jira/browse/HIVE-13852) | NPE in TaskLocationHints during LLAP GetSplits request |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-13444](https://issues.apache.org/jira/browse/HIVE-13444) | LLAP: add HMAC signatures to LLAP; verify them on LLAP side |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13905](https://issues.apache.org/jira/browse/HIVE-13905) | optimize ColumnStatsTask::constructColumnStatsFromPackedRows to have lesser number of getTable calls |  Minor | Query Planning | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-13806](https://issues.apache.org/jira/browse/HIVE-13806) | Extension to folding NOT expressions in CBO |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13910](https://issues.apache.org/jira/browse/HIVE-13910) | [Ranger-Hive] select from a table is not working if used as \<dbname.tablename\> |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13922](https://issues.apache.org/jira/browse/HIVE-13922) | Optimize the code path that analyzes/updates col stats |  Minor | Metastore | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-13564](https://issues.apache.org/jira/browse/HIVE-13564) | Deprecate HIVE\_STATS\_COLLECT\_RAWDATASIZE |  Minor | Logical Optimizer, Statistics | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13942](https://issues.apache.org/jira/browse/HIVE-13942) | Correctness of CASE folding in the presence of NULL values |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-13838](https://issues.apache.org/jira/browse/HIVE-13838) | Set basic stats as inaccurate for all ACID tables |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13984](https://issues.apache.org/jira/browse/HIVE-13984) | Use multi-threaded approach to listing files for msck |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14158](https://issues.apache.org/jira/browse/HIVE-14158) | deal with derived column names |  Major | Security | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14221](https://issues.apache.org/jira/browse/HIVE-14221) | set SQLStdHiveAuthorizerFactoryForTest as default HIVE\_AUTHORIZATION\_MANAGER |  Major | Security | Pengcheng Xiong | Pengcheng Xiong |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-12796](https://issues.apache.org/jira/browse/HIVE-12796) | Switch to 32-bits containers for HMS upgrade tests |  Major | Testing Infrastructure | Sergio Peña | Sergio Peña |
| [HIVE-12836](https://issues.apache.org/jira/browse/HIVE-12836) | Install wget & curl packages on LXC containers for HMS upgrade tests |  Major | Testing Infrastructure | Sergio Peña | Sergio Peña |
| [HIVE-12828](https://issues.apache.org/jira/browse/HIVE-12828) | Update Spark version to 1.6 |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-12940](https://issues.apache.org/jira/browse/HIVE-12940) | Cherry pick spark branch to master |  Major | . | Rui Li | Rui Li |
| [HIVE-12987](https://issues.apache.org/jira/browse/HIVE-12987) | Add metrics for HS2 active users and SQL operations |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12205](https://issues.apache.org/jira/browse/HIVE-12205) | Spark: unify spark statististics aggregation between local and remote spark client |  Major | Spark | Xuefu Zhang | Chinna Rao Lalam |
| [HIVE-13188](https://issues.apache.org/jira/browse/HIVE-13188) | Allow users of RetryingThriftClient to close transport |  Major | . | Rajat Khandelwal | Rajat Khandelwal |
| [HIVE-13234](https://issues.apache.org/jira/browse/HIVE-13234) | Remove dead ODBC driver from Hive |  Major | ODBC | Gopal V | Gopal V |
| [HIVE-13385](https://issues.apache.org/jira/browse/HIVE-13385) | [Cleanup] Streamline Beeline instantiation |  Major | Beeline | Reuben Kuhnert | Reuben Kuhnert |
| [HIVE-13433](https://issues.apache.org/jira/browse/HIVE-13433) | Fixes for additional incompatible changes in tez-0.8.3 |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13431](https://issues.apache.org/jira/browse/HIVE-13431) | Improvements to LLAPTaskReporter |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13097](https://issues.apache.org/jira/browse/HIVE-13097) | [Umbrella] Changes dependent on Tez 0.8.3 |  Major | . | Siddharth Seth |  |
| [HIVE-13603](https://issues.apache.org/jira/browse/HIVE-13603) | Fix ptest unit tests broken by HIVE13505 |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13537](https://issues.apache.org/jira/browse/HIVE-13537) | Update slf4j version to 1.7.10 |  Minor | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13393](https://issues.apache.org/jira/browse/HIVE-13393) | Beeline: Print help message for the --incremental option |  Major | Beeline | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-13835](https://issues.apache.org/jira/browse/HIVE-13835) | TestMiniTezCliDriver.vector\_complex\_all.q needs golden file update |  Major | Test | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-13800](https://issues.apache.org/jira/browse/HIVE-13800) | Disable auth enabled by default on LLAP UI for secure clusters |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13281](https://issues.apache.org/jira/browse/HIVE-13281) | Update some default configs for LLAP - disable default uber enabled |  Major | . | Siddharth Seth | Siddharth Seth |


