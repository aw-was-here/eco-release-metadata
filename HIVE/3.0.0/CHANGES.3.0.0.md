
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

## Release 3.0.0 - Unreleased (as of 2017-08-26)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16281](https://issues.apache.org/jira/browse/HIVE-16281) | Upgrade master branch to JDK8 |  Major | Hive | Aihua Xu | Aihua Xu |
| [HIVE-15173](https://issues.apache.org/jira/browse/HIVE-15173) | Allow dec as an alias for decimal |  Major | Parser | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-16049](https://issues.apache.org/jira/browse/HIVE-16049) | upgrade to jetty 9 |  Major | . | Sean Busbey | Aihua Xu |
| [HIVE-16392](https://issues.apache.org/jira/browse/HIVE-16392) | Remove hive.warehouse.subdir.inherit.perms and all permissions inheritance logic |  Major | Security | Sahil Takiar | Sahil Takiar |
| [HIVE-16383](https://issues.apache.org/jira/browse/HIVE-16383) | Switch to HikariCP as default connection pooling |  Major | Metastore | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14412](https://issues.apache.org/jira/browse/HIVE-14412) | Add timestamp with time zone |  Major | Hive | Rui Li | Rui Li |
| [HIVE-1010](https://issues.apache.org/jira/browse/HIVE-1010) | Implement INFORMATION\_SCHEMA in Hive |  Major | Metastore, Query Processor, Server Infrastructure | Jeff Hammerbacher | Gunther Hagleitner |
| [HIVE-17050](https://issues.apache.org/jira/browse/HIVE-17050) | Multiline queries that have comment in middle fail when executed via "beeline -e" |  Major | . | Yibing Shi | Yibing Shi |
| [HIVE-17234](https://issues.apache.org/jira/browse/HIVE-17234) | Remove HBase metastore from master |  Major | HBase Metastore | Alan Gates | Alan Gates |
| [HIVE-17241](https://issues.apache.org/jira/browse/HIVE-17241) | Change metastore classes to not use the shims |  Major | Metastore | Alan Gates | Alan Gates |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-15691](https://issues.apache.org/jira/browse/HIVE-15691) | Create StrictRegexWriter to work with RegexSerializer for Flume Hive Sink |  Critical | HCatalog, Transactions | Kalyan | Kalyan |
| [HIVE-15434](https://issues.apache.org/jira/browse/HIVE-15434) | Add UDF to allow interrogation of uniontype values |  Major | UDF | David Maughan | David Maughan |
| [HIVE-15996](https://issues.apache.org/jira/browse/HIVE-15996) | Implement multiargument GROUPING function |  Major | . | Carter Shanklin | Jesus Camacho Rodriguez |
| [HIVE-16520](https://issues.apache.org/jira/browse/HIVE-16520) | Cache hive metadata in metastore |  Major | Metastore | Daniel Dai | Daniel Dai |
| [HIVE-15229](https://issues.apache.org/jira/browse/HIVE-15229) | 'like any' and 'like all' operators in hive |  Minor | Operators | Simanchal Das | Simanchal Das |
| [HIVE-16452](https://issues.apache.org/jira/browse/HIVE-16452) | Database UUID for metastore DB |  Major | Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16602](https://issues.apache.org/jira/browse/HIVE-16602) | Implement shared scans with Tez |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-16643](https://issues.apache.org/jira/browse/HIVE-16643) | BeeLine tests output should keep the PREHOOK/POSTHOOK Input/Output orderdering |  Major | Testing Infrastructure | Peter Vary | Peter Vary |
| [HIVE-16575](https://issues.apache.org/jira/browse/HIVE-16575) | Support for 'UNIQUE' and 'NOT NULL' constraints |  Major | CBO, Logical Optimizer, Parser | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15571](https://issues.apache.org/jira/browse/HIVE-15571) | Support Insert into for druid storage handler |  Major | Druid integration | slim bouguerra | Nishant Bangarwa |
| [HIVE-8838](https://issues.apache.org/jira/browse/HIVE-8838) | Support Parquet through HCatalog |  Major | . | Brock Noland | Adam Szita |
| [HIVE-17160](https://issues.apache.org/jira/browse/HIVE-17160) | Adding kerberos Authorization to the Druid hive integration |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-17089](https://issues.apache.org/jira/browse/HIVE-17089) | make acid 2.0 the default |  Major | Transactions | Eugene Koifman | Eugene Koifman |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16242](https://issues.apache.org/jira/browse/HIVE-16242) | Run BeeLine tests parallel |  Major | Testing Infrastructure | Peter Vary | Peter Vary |
| [HIVE-16152](https://issues.apache.org/jira/browse/HIVE-16152) | TestBeeLineDriver logging improvements |  Major | Testing Infrastructure | Peter Vary | Peter Vary |
| [HIVE-12274](https://issues.apache.org/jira/browse/HIVE-12274) | Increase width of columns used for general configuration in the metastore. |  Major | Metastore | Elliot West | Naveen Gangam |
| [HIVE-12299](https://issues.apache.org/jira/browse/HIVE-12299) | Hive Column Data Type definition in schema limited to 4000 characters - too small |  Major | Hive | Lakshmi Ramakrishnan | Naveen Gangam |
| [HIVE-14145](https://issues.apache.org/jira/browse/HIVE-14145) | Too small length of column 'PARAM\_VALUE' in table 'SERDE\_PARAMS' |  Major | Metastore | Oleksiy Sayankin | Oleksiy Sayankin |
| [HIVE-15880](https://issues.apache.org/jira/browse/HIVE-15880) | Allow insert overwrite and truncate table query to use auto.purge table property |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16206](https://issues.apache.org/jira/browse/HIVE-16206) | Make Codahale metrics reporters pluggable |  Major | Metastore | Sunitha Beeram | Sunitha Beeram |
| [HIVE-16164](https://issues.apache.org/jira/browse/HIVE-16164) | Provide mechanism for passing HMS notification ID between transactional and non-transactional listeners. |  Major | Metastore | Sergio Peña | Sergio Peña |
| [HIVE-16297](https://issues.apache.org/jira/browse/HIVE-16297) | Improving hive logging configuration variables |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16371](https://issues.apache.org/jira/browse/HIVE-16371) | Add bitmap selection strategy for druid storage handler |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-15616](https://issues.apache.org/jira/browse/HIVE-15616) | Improve contents of qfile test output |  Minor | Tests | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-16334](https://issues.apache.org/jira/browse/HIVE-16334) | Query lock contains the query string, which can cause OOM on ZooKeeper |  Major | Locking | Peter Vary | Peter Vary |
| [HIVE-16340](https://issues.apache.org/jira/browse/HIVE-16340) | Allow Kerberos + SSL connections to HMS |  Major | Metastore | Sahil Takiar | Sahil Takiar |
| [HIVE-16345](https://issues.apache.org/jira/browse/HIVE-16345) | BeeLineDriver should be able to run qtest files which are using default database tables |  Major | Testing Infrastructure | Peter Vary | Peter Vary |
| [HIVE-16386](https://issues.apache.org/jira/browse/HIVE-16386) | Add debug logging to describe why runtime filtering semijoins are removed |  Major | Logging | Jason Dere | Jason Dere |
| [HIVE-16430](https://issues.apache.org/jira/browse/HIVE-16430) | Add log to show the cancelled query id when cancelOperation is called. |  Trivial | . | zhihai xu | zhihai xu |
| [HIVE-16429](https://issues.apache.org/jira/browse/HIVE-16429) | Should call invokeFailureHooks in handleInterruption to track failed query execution due to interrupted command. |  Minor | . | zhihai xu | zhihai xu |
| [HIVE-16431](https://issues.apache.org/jira/browse/HIVE-16431) | Support Parquet StatsNoJobTask for Spark & Tez engine |  Minor | . | Chao Sun | Chao Sun |
| [HIVE-16356](https://issues.apache.org/jira/browse/HIVE-16356) | Table#validateColumns should avoid checking exhaustively for matches in a list |  Major | . | Zoltan Haindrich | Janos Gub |
| [HIVE-16423](https://issues.apache.org/jira/browse/HIVE-16423) | Add hint to enforce semi join optimization |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-15786](https://issues.apache.org/jira/browse/HIVE-15786) | Provide additional information from the llapstatus command |  Critical | . | Siddharth Seth | Siddharth Seth |
| [HIVE-16311](https://issues.apache.org/jira/browse/HIVE-16311) | Improve the performance for FastHiveDecimalImpl.fastDivide |  Major | . | Colin Ma | Colin Ma |
| [HIVE-16426](https://issues.apache.org/jira/browse/HIVE-16426) | Query cancel: improve the way to handle files |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-16441](https://issues.apache.org/jira/browse/HIVE-16441) | De-duplicate semijoin branches in n-way joins |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-16503](https://issues.apache.org/jira/browse/HIVE-16503) | LLAP: Oversubscribe memory for noconditional task size |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-16079](https://issues.apache.org/jira/browse/HIVE-16079) | HS2: high memory pressure due to duplicate Properties objects |  Major | HiveServer2 | Misha Dmitriev | Misha Dmitriev |
| [HIVE-16536](https://issues.apache.org/jira/browse/HIVE-16536) | Various improvements in TestPerfCliDriver |  Major | Testing Infrastructure | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-16527](https://issues.apache.org/jira/browse/HIVE-16527) | Support outer and mixed reference aggregates in windowed functions |  Major | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-12636](https://issues.apache.org/jira/browse/HIVE-12636) | Ensure that all queries (with DbTxnManager) run in a transaction |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15396](https://issues.apache.org/jira/browse/HIVE-15396) | Basic Stats are not collected when for managed tables with LOCATION specified |  Major | Statistics | Sahil Takiar | Sahil Takiar |
| [HIVE-16550](https://issues.apache.org/jira/browse/HIVE-16550) | Semijoin Hints should be able to skip the optimization if needed. |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-15795](https://issues.apache.org/jira/browse/HIVE-15795) | Support Accumulo Index Tables in Hive Accumulo Connector |  Minor | Accumulo Storage Handler | Mike Fagan | Mike Fagan |
| [HIVE-16552](https://issues.apache.org/jira/browse/HIVE-16552) | Limit the number of tasks a Spark job may contain |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-16449](https://issues.apache.org/jira/browse/HIVE-16449) | BeeLineDriver should handle query result sorting |  Major | Testing Infrastructure | Peter Vary | Peter Vary |
| [HIVE-16456](https://issues.apache.org/jira/browse/HIVE-16456) | Kill spark job when InterruptedException happens or driverContext.isShutdown is true. |  Minor | . | zhihai xu | zhihai xu |
| [HIVE-16595](https://issues.apache.org/jira/browse/HIVE-16595) | fix syntax in Hplsql.g4 |  Major | CLI | Yishuang Lu | Yishuang Lu |
| [HIVE-16635](https://issues.apache.org/jira/browse/HIVE-16635) | Progressbar: Use different timeouts for running queries |  Major | Tez | Gopal V | Gopal V |
| [HIVE-14389](https://issues.apache.org/jira/browse/HIVE-14389) | Beeline should not output query and prompt to stdout |  Minor | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16639](https://issues.apache.org/jira/browse/HIVE-16639) | LLAP: Derive shuffle thread counts and keep-alive connections from instance count |  Major | . | Gopal V | Siddharth Seth |
| [HIVE-15726](https://issues.apache.org/jira/browse/HIVE-15726) | Reenable indentation checks to checkstyle |  Minor | . | Peter Vary | Peter Vary |
| [HIVE-16582](https://issues.apache.org/jira/browse/HIVE-16582) | HashTableLoader should log info about the input, rows, size etc. |  Minor | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-16700](https://issues.apache.org/jira/browse/HIVE-16700) | Log ZK discovery info (hostname & port) for HTTP mode when connection is established |  Minor | . | Chao Sun | Chao Sun |
| [HIVE-16501](https://issues.apache.org/jira/browse/HIVE-16501) | Add rej/orig to .gitignore ; remove \*.orig files |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-16717](https://issues.apache.org/jira/browse/HIVE-16717) | Extend shared scan optimizer to handle partitions |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-16711](https://issues.apache.org/jira/browse/HIVE-16711) | Remove property\_id column from metastore\_db\_properties table |  Minor | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16723](https://issues.apache.org/jira/browse/HIVE-16723) | Enable configurable MetaStoreSchemaInfo |  Minor | Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16712](https://issues.apache.org/jira/browse/HIVE-16712) | StringBuffer v.s. StringBuilder |  Minor | . | BELUGA BEHR | BELUGA BEHR |
| [HIVE-16754](https://issues.apache.org/jira/browse/HIVE-16754) | LLAP: Print hive version info on llap daemon startup |  Minor | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15300](https://issues.apache.org/jira/browse/HIVE-15300) | Reuse table information in SemanticAnalyzer::getMetaData to reduce compilation time |  Minor | Parser | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-16343](https://issues.apache.org/jira/browse/HIVE-16343) | LLAP: Publish YARN's ProcFs based memory usage to metrics for monitoring |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-16285](https://issues.apache.org/jira/browse/HIVE-16285) | Servlet for dynamically configuring log levels |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-16771](https://issues.apache.org/jira/browse/HIVE-16771) | Schematool should use MetastoreSchemaInfo to get the metastore schema version from database |  Minor | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16799](https://issues.apache.org/jira/browse/HIVE-16799) | Control the max number of task for a stage in a spark job |  Major | . | Xuefu Zhang | Xuefu Zhang |
| [HIVE-16460](https://issues.apache.org/jira/browse/HIVE-16460) | In the console output, show vertex list in topological order instead of an alphabetical sort |  Major | . | Siddharth Seth | Prasanth Jayachandran |
| [HIVE-16809](https://issues.apache.org/jira/browse/HIVE-16809) | Improve filter condition for correlated subqueries |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-16571](https://issues.apache.org/jira/browse/HIVE-16571) | HiveServer2: Prefer LIFO over round-robin for Tez session reuse |  Major | HiveServer2, Tez | Gopal V | Gopal V |
| [HIVE-16866](https://issues.apache.org/jira/browse/HIVE-16866) | existing available UDF is used in TestReplicationScenariosAcrossInstances#testDropFunctionIncrementalReplication |  Trivial | HiveServer2 | anishek | anishek |
| [HIVE-16880](https://issues.apache.org/jira/browse/HIVE-16880) | Remove ArrayList Instantiation For Empty Arrays |  Trivial | Metastore | BELUGA BEHR | BELUGA BEHR |
| [HIVE-16933](https://issues.apache.org/jira/browse/HIVE-16933) | ORA-00060: deadlock detected while waiting on commit |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16885](https://issues.apache.org/jira/browse/HIVE-16885) | Non-equi Joins: Filter clauses should be pushed into the ON clause |  Major | Physical Optimizer | Gopal V | Jesus Camacho Rodriguez |
| [HIVE-16867](https://issues.apache.org/jira/browse/HIVE-16867) | Extend shared scan optimizer to reuse computation from other operators |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-16934](https://issues.apache.org/jira/browse/HIVE-16934) | Transform COUNT(x) into COUNT() when x is not nullable |  Major | Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-16969](https://issues.apache.org/jira/browse/HIVE-16969) | Improvement performance of MapOperator for Parquet |  Major | . | Colin Ma | Colin Ma |
| [HIVE-16962](https://issues.apache.org/jira/browse/HIVE-16962) | Better error msg for Hive on Spark in case user cancels query and closes session |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-16914](https://issues.apache.org/jira/browse/HIVE-16914) | Change HiveMetaStoreClient to AutoCloseable |  Trivial | Metastore | Xiaomeng Zhang | Xiaomeng Zhang |
| [HIVE-16857](https://issues.apache.org/jira/browse/HIVE-16857) | SparkPartitionPruningSinkOperator Buffer Size |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HIVE-17000](https://issues.apache.org/jira/browse/HIVE-17000) | Upgrade Hive to PARQUET 1.9.0 |  Major | Serializers/Deserializers | Dapeng Sun | Dapeng Sun |
| [HIVE-17036](https://issues.apache.org/jira/browse/HIVE-17036) | Lineage: Minor CPU/Mem optimization for lineage transform |  Minor | lineage | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-17022](https://issues.apache.org/jira/browse/HIVE-17022) | Add mode in lock debug statements |  Trivial | Locking | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-17048](https://issues.apache.org/jira/browse/HIVE-17048) | Pass HiveOperation info to HiveSemanticAnalyzerHook through HiveSemanticAnalyzerHookContext |  Major | Hooks | Aihua Xu | Aihua Xu |
| [HIVE-16911](https://issues.apache.org/jira/browse/HIVE-16911) | Upgrade groovy version to 2.4.11 |  Major | Hive | Aihua Xu | Aihua Xu |
| [HIVE-16955](https://issues.apache.org/jira/browse/HIVE-16955) | General Improvements To org.apache.hadoop.hive.metastore.MetaStoreUtils |  Minor | Metastore | BELUGA BEHR | BELUGA BEHR |
| [HIVE-16989](https://issues.apache.org/jira/browse/HIVE-16989) | Fix some issues identified by lgtm.com |  Major | . | Malcolm Taylor | Malcolm Taylor |
| [HIVE-17125](https://issues.apache.org/jira/browse/HIVE-17125) | Lineage: Generate lineage information on need basis when atlas hook is enabled |  Minor | lineage | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-17037](https://issues.apache.org/jira/browse/HIVE-17037) | Use 1-to-1 Tez edge to avoid unnecessary input data shuffle |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17072](https://issues.apache.org/jira/browse/HIVE-17072) | Make the parallelized timeout configurable in BeeLine tests |  Minor | Testing Infrastructure | Marta Kuczora | Marta Kuczora |
| [HIVE-16759](https://issues.apache.org/jira/browse/HIVE-16759) | Add table type information to HMS log notifications |  Major | Metastore | Sergio Peña | Janaki Lahorani |
| [HIVE-17174](https://issues.apache.org/jira/browse/HIVE-17174) | LLAP: ShuffleHandler: optimize fadvise calls for broadcast edge |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14786](https://issues.apache.org/jira/browse/HIVE-14786) | Beeline displays binary column data as string instead of byte array |  Minor | Beeline | Ram Mettu | Barna Zsombor Klara |
| [HIVE-16758](https://issues.apache.org/jira/browse/HIVE-16758) | Better Select Number of Replications |  Minor | Spark | BELUGA BEHR | BELUGA BEHR |
| [HIVE-16945](https://issues.apache.org/jira/browse/HIVE-16945) | Add method to compare Operators |  Major | Operators | Jesus Camacho Rodriguez | Rui Li |
| [HIVE-17263](https://issues.apache.org/jira/browse/HIVE-17263) | Reduce debug logging for S3 tables |  Minor | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-17251](https://issues.apache.org/jira/browse/HIVE-17251) | Remove usage of org.apache.pig.ResourceStatistics#setmBytes method in HCatLoader |  Minor | HCatalog | Nandor Kollar | Adam Szita |
| [HIVE-16853](https://issues.apache.org/jira/browse/HIVE-16853) | Minor org.apache.hadoop.hive.ql.exec.HashTableSinkOperator Improvement |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HIVE-16873](https://issues.apache.org/jira/browse/HIVE-16873) | Remove Thread Cache From Logging |  Minor | Metastore | BELUGA BEHR | BELUGA BEHR |
| [HIVE-8472](https://issues.apache.org/jira/browse/HIVE-8472) | Add ALTER DATABASE SET LOCATION |  Major | Database/Schema | Jeremy Beard | Mithun Radhakrishnan |
| [HIVE-17194](https://issues.apache.org/jira/browse/HIVE-17194) | JDBC: Implement Gzip compression for HTTP mode |  Major | HiveServer2, JDBC | Gopal V | Gopal V |
| [HIVE-17237](https://issues.apache.org/jira/browse/HIVE-17237) | HMS wastes 26.4% of memory due to dup strings in metastore.api.Partition.parameters |  Major | HiveServer2 | Misha Dmitriev | Misha Dmitriev |
| [HIVE-17362](https://issues.apache.org/jira/browse/HIVE-17362) | The MAX\_PREWARM\_TIME should be configurable on HoS |  Major | Spark | Peter Vary | Peter Vary |
| [HIVE-16614](https://issues.apache.org/jira/browse/HIVE-16614) | Support "set local time zone" statement |  Major | . | Carter Shanklin | Jesus Camacho Rodriguez |
| [HIVE-17341](https://issues.apache.org/jira/browse/HIVE-17341) | DbTxnManger.startHeartbeat() - randomize initial delay |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17340](https://issues.apache.org/jira/browse/HIVE-17340) | TxnHandler.checkLock() - reduce number of SQL statements |  Major | Transactions | Eugene Koifman | Eugene Koifman |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-9815](https://issues.apache.org/jira/browse/HIVE-9815) | Metastore column"SERDE\_PARAMS"."PARAM\_VALUE"  limited to 4000 bytes |  Critical | Metastore | Naveen Gangam | Naveen Gangam |
| [HIVE-15249](https://issues.apache.org/jira/browse/HIVE-15249) | HIve 2.1.0 is throwing InvalidObjectException(message:Invalid column type name is too long |  Major | Hive | vishal.rajan | Naveen Gangam |
| [HIVE-16219](https://issues.apache.org/jira/browse/HIVE-16219) | metastore notification\_log contains serialized message with  non functional fields |  Major | Metastore | anishek | anishek |
| [HIVE-16188](https://issues.apache.org/jira/browse/HIVE-16188) | beeline should block the connection if given invalid database name. |  Minor | Hive | Pavas Garg | Sahil Takiar |
| [HIVE-16007](https://issues.apache.org/jira/browse/HIVE-16007) | When the query does not complie the LogRunnable never stops |  Major | Beeline | Peter Vary | Peter Vary |
| [HIVE-14077](https://issues.apache.org/jira/browse/HIVE-14077) | add implicit decimal arithmetic q test, fix issues if found |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15829](https://issues.apache.org/jira/browse/HIVE-15829) | LLAP text cache: disable memory tracking on the writer |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16305](https://issues.apache.org/jira/browse/HIVE-16305) | Additional Datanucleus ClassLoaderResolverImpl leaks causing HS2 OOM |  Major | HiveServer2 | Daniel Dai | Daniel Dai |
| [HIVE-16319](https://issues.apache.org/jira/browse/HIVE-16319) | LLAP: Better handling of an empty wait queue, should try scheduling checks |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-16309](https://issues.apache.org/jira/browse/HIVE-16309) | Hive Test Commands failure should be printed in hive.log in addition to stderr |  Major | Test | Sahil Takiar | Sahil Takiar |
| [HIVE-14455](https://issues.apache.org/jira/browse/HIVE-14455) | upgrade httpclient, httpcore to match updated hadoop dependency |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-16302](https://issues.apache.org/jira/browse/HIVE-16302) | Add junit dependency to hive-shims-common to compile with Hadoop 2.8+ |  Major | . | Akira Ajisaka | Akira Ajisaka |
| [HIVE-16053](https://issues.apache.org/jira/browse/HIVE-16053) | Remove newRatio from llap JAVA\_OPTS\_BASE |  Major | llap | Siddharth Seth | Siddharth Seth |
| [HIVE-16325](https://issues.apache.org/jira/browse/HIVE-16325) | Tez session refresh based on a time interval fails |  Critical | . | Siddharth Seth | Siddharth Seth |
| [HIVE-16318](https://issues.apache.org/jira/browse/HIVE-16318) | LLAP cache: address some issues in 2.2/2.3 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16057](https://issues.apache.org/jira/browse/HIVE-16057) | SchemaTool ignores --passWord argument if hadoop.security.credential.provider.path is configured |  Major | . | Peter Vary | Peter Vary |
| [HIVE-16130](https://issues.apache.org/jira/browse/HIVE-16130) | Remove jackson classes from hive-jdbc standalone jar |  Major | . | Tao Li | Tao Li |
| [HIVE-16174](https://issues.apache.org/jira/browse/HIVE-16174) | Update MetricsConstant.WAITING\_COMPILE\_OPS metric when we aquire lock failed in Driver |  Minor | Query Planning | yunfei liu | yunfei liu |
| [HIVE-15515](https://issues.apache.org/jira/browse/HIVE-15515) | Remove the docs directory |  Major | Documentation | Lefty Leverenz | Akira Ajisaka |
| [HIVE-16315](https://issues.apache.org/jira/browse/HIVE-16315) | Describe table doesn't show num of partitions |  Major | . | Rui Li | Rui Li |
| [HIVE-16299](https://issues.apache.org/jira/browse/HIVE-16299) | MSCK REPAIR TABLE should enforce partition key order when adding unknown partitions |  Minor | Metastore | Dudu Markovitz | Vihang Karajgaonkar |
| [HIVE-16308](https://issues.apache.org/jira/browse/HIVE-16308) | PreExecutePrinter and PostExecutePrinter should log to INFO level instead of ERROR |  Major | Test | Sahil Takiar | Sahil Takiar |
| [HIVE-16336](https://issues.apache.org/jira/browse/HIVE-16336) | Rename hive.spark.use.file.size.for.mapjoin to hive.spark.use.ts.stats.for.mapjoin |  Major | Configuration | Chao Sun | Chao Sun |
| [HIVE-16290](https://issues.apache.org/jira/browse/HIVE-16290) | Stats: StatsRulesProcFactory::evaluateComparator estimates are wrong when minValue == filterValue |  Minor | Statistics | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-16225](https://issues.apache.org/jira/browse/HIVE-16225) | Memory leak in webhcat service (FileSystem CACHE entries) |  Major | . | Subramanyam Pattipaka | Daniel Dai |
| [HIVE-16061](https://issues.apache.org/jira/browse/HIVE-16061) | When hive.async.log.enabled is set to true, some output is not printed to the beeline console |  Major | Logging | Aihua Xu | Aihua Xu |
| [HIVE-16347](https://issues.apache.org/jira/browse/HIVE-16347) | HiveMetastoreChecker should skip listing partitions which are not valid when hive.msck.path.validation is set to skip or ignore |  Minor | Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16254](https://issues.apache.org/jira/browse/HIVE-16254) | metadata for values temporary tables for INSERTs are getting replicated during bootstrap |  Major | HiveServer2 | anishek | anishek |
| [HIVE-15724](https://issues.apache.org/jira/browse/HIVE-15724) | getPrimaryKeys and getForeignKeys in metastore does not normalize db and table name |  Major | Metastore | Daniel Dai | Daniel Dai |
| [HIVE-16335](https://issues.apache.org/jira/browse/HIVE-16335) | Beeline user HS2 connection file should use /etc/hive/conf instead of /etc/conf/hive |  Major | Beeline | Tim Harsch | Vihang Karajgaonkar |
| [HIVE-16316](https://issues.apache.org/jira/browse/HIVE-16316) | Prepare master branch for 3.0.0 development. |  Major | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-16384](https://issues.apache.org/jira/browse/HIVE-16384) | Remove jdk7 build from travis |  Trivial | Build Infrastructure | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-16341](https://issues.apache.org/jira/browse/HIVE-16341) | Tez Task Execution Summary has incorrect input record counts on some operators |  Major | Tez | Jason Dere | Jason Dere |
| [HIVE-16394](https://issues.apache.org/jira/browse/HIVE-16394) | HoS does not support queue name change in middle of session |  Major | Spark | Chaoyu Tang | Chaoyu Tang |
| [HIVE-16291](https://issues.apache.org/jira/browse/HIVE-16291) | Hive fails when unions a parquet table with itself |  Major | Hive | Yibing Shi | Yibing Shi |
| [HIVE-16333](https://issues.apache.org/jira/browse/HIVE-16333) | remove the redundant symbol "\\" to appear red in sublime text 3 |  Minor | . | Saijin Huang | Saijin Huang |
| [HIVE-15630](https://issues.apache.org/jira/browse/HIVE-15630) | add operation handle before operation.run instead of after operation.run |  Minor | Hive | zhihai xu | zhihai xu |
| [HIVE-16385](https://issues.apache.org/jira/browse/HIVE-16385) | StatsNoJobTask could exit early before all partitions have been processed |  Major | Statistics | Chao Sun | Chao Sun |
| [HIVE-14564](https://issues.apache.org/jira/browse/HIVE-14564) | Column Pruning generates out of order columns in SelectOperator which cause ArrayIndexOutOfBoundsException. |  Critical | Query Planning | zhihai xu | zhihai xu |
| [HIVE-16393](https://issues.apache.org/jira/browse/HIVE-16393) | Fix visibility of CodahaleReporter interface |  Major | Metastore | Sunitha Beeram | Sunitha Beeram |
| [HIVE-16368](https://issues.apache.org/jira/browse/HIVE-16368) | Unexpected java.lang.ArrayIndexOutOfBoundsException from query with LaterView Operation for hive on MR. |  Major | Query Planning | zhihai xu | zhihai xu |
| [HIVE-16402](https://issues.apache.org/jira/browse/HIVE-16402) | Upgrade to Hadoop 2.8.0 |  Major | . | Sahil Takiar | Sahil Takiar |
| [HIVE-16380](https://issues.apache.org/jira/browse/HIVE-16380) | removing global test dependency of jsonassert |  Minor | HiveServer2 | anishek | anishek |
| [HIVE-16307](https://issues.apache.org/jira/browse/HIVE-16307) | add IO memory usage report to LLAP UI |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16403](https://issues.apache.org/jira/browse/HIVE-16403) | LLAP UI shows the wrong number of executors |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16044](https://issues.apache.org/jira/browse/HIVE-16044) | LLAP: Shuffle Handler keep-alive connections are closed from the server side |  Minor | llap | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-16425](https://issues.apache.org/jira/browse/HIVE-16425) | Vectorization: unload old hashtables before reloadHashTable |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-16328](https://issues.apache.org/jira/browse/HIVE-16328) | HoS: more aggressive mapjoin optimization when hive.spark.use.ts.stats.for.mapjoin is true |  Major | Logical Optimizer | Chao Sun | Chao Sun |
| [HIVE-16388](https://issues.apache.org/jira/browse/HIVE-16388) | LLAP: Log rotation for daemon, history and gc files |  Major | llap | Siddharth Seth | Prasanth Jayachandran |
| [HIVE-16193](https://issues.apache.org/jira/browse/HIVE-16193) | Hive show compactions not reflecting the status of the application |  Major | Transactions | Kavan Suresh | Wei Zheng |
| [HIVE-16390](https://issues.apache.org/jira/browse/HIVE-16390) | LLAP IO should take job config into account; also LLAP config should load defaults |  Major | . | Siddharth Seth | Sergey Shelukhin |
| [HIVE-16422](https://issues.apache.org/jira/browse/HIVE-16422) | Should kill running Spark Jobs when a query is cancelled. |  Major | Spark | zhihai xu | zhihai xu |
| [HIVE-16436](https://issues.apache.org/jira/browse/HIVE-16436) | Response times in "Task Execution Summary" at the end of the job is not correct |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-16433](https://issues.apache.org/jira/browse/HIVE-16433) | Not nullify variable "rj" to avoid NPE due to race condition in ExecDriver. |  Minor | . | zhihai xu | zhihai xu |
| [HIVE-16448](https://issues.apache.org/jira/browse/HIVE-16448) | Vectorization: Vectorized order\_null.q fails with deserialize EOF exception below TEZ ReduceRecordSource.processVectorGroup |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-16409](https://issues.apache.org/jira/browse/HIVE-16409) | TestEventHandlerFactory  has lacked the ASF header |  Minor | . | Saijin Huang | Saijin Huang |
| [HIVE-15442](https://issues.apache.org/jira/browse/HIVE-15442) | Driver.java has a redundancy  code |  Minor | . | Saijin Huang | Saijin Huang |
| [HIVE-15632](https://issues.apache.org/jira/browse/HIVE-15632) | Hive/Druid integration: Incorrect result - Limit on timestamp disappears |  Critical | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15635](https://issues.apache.org/jira/browse/HIVE-15635) | Hive/Druid integration: timeseries query shows all days, even if no data |  Critical | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15636](https://issues.apache.org/jira/browse/HIVE-15636) | Hive/Druid integration: wrong semantics of topN query limit with granularity |  Critical | Druid integration | Jesus Camacho Rodriguez | Julian Hyde |
| [HIVE-15637](https://issues.apache.org/jira/browse/HIVE-15637) | Hive/Druid integration: wrong semantics of groupBy query limit with granularity |  Critical | Druid integration | Jesus Camacho Rodriguez | Julian Hyde |
| [HIVE-15639](https://issues.apache.org/jira/browse/HIVE-15639) | Hive/Druid integration: wrong semantics for ordering within groupBy queries |  Critical | Druid integration | Jesus Camacho Rodriguez | Julian Hyde |
| [HIVE-16025](https://issues.apache.org/jira/browse/HIVE-16025) | Where IN clause throws exception |  Critical | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-16027](https://issues.apache.org/jira/browse/HIVE-16027) | \<timestamp\> BETWEEN \<string\> AND \<string\> must cast to TIMESTMAP |  Major | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-16462](https://issues.apache.org/jira/browse/HIVE-16462) | Vectorization: Enabling hybrid grace disables specialization of all reduce side joins |  Major | Vectorization | Jason Dere | Jason Dere |
| [HIVE-16427](https://issues.apache.org/jira/browse/HIVE-16427) | Fix multi-insert query and write qtests |  Major | Logical Optimizer | Thomas Poepping | Yongzhi Chen |
| [HIVE-16117](https://issues.apache.org/jira/browse/HIVE-16117) | SortProjectTransposeRule should check for monotonicity preserving CAST |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-16473](https://issues.apache.org/jira/browse/HIVE-16473) | Hive-on-Tez may fail to write to an HBase table |  Major | . | Mahesh Balakrishnan | Sergey Shelukhin |
| [HIVE-16482](https://issues.apache.org/jira/browse/HIVE-16482) | Druid Ser/Des need to use dimension output name |  Major | Druid integration | slim bouguerra | Jesus Camacho Rodriguez |
| [HIVE-16461](https://issues.apache.org/jira/browse/HIVE-16461) | DagUtils checks local resource size on the remote fs |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16459](https://issues.apache.org/jira/browse/HIVE-16459) | Forward channelInactive to RpcDispatcher |  Major | Spark | Rui Li | Rui Li |
| [HIVE-16317](https://issues.apache.org/jira/browse/HIVE-16317) | CASE .. NULL in JOIN condition can trigger SemanticException |  Major | Query Planning | Remus Rusanu | Remus Rusanu |
| [HIVE-16363](https://issues.apache.org/jira/browse/HIVE-16363) | QueryLifeTimeHooks should catch parse exceptions |  Major | Hooks | Sahil Takiar | Sahil Takiar |
| [HIVE-16296](https://issues.apache.org/jira/browse/HIVE-16296) | use LLAP executor count to configure reducer auto-parallelism |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16287](https://issues.apache.org/jira/browse/HIVE-16287) | Alter table partition rename with location - moves partition back to hive warehouse |  Minor | Metastore | Ying Chen | Vihang Karajgaonkar |
| [HIVE-15761](https://issues.apache.org/jira/browse/HIVE-15761) | ObjectStore.getNextNotification could return an empty NotificationEventResponse causing TProtocolException |  Major | . | Hao Hao | Sergio Peña |
| [HIVE-16321](https://issues.apache.org/jira/browse/HIVE-16321) | Possible deadlock in metastore with Acid enabled |  Blocker | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16421](https://issues.apache.org/jira/browse/HIVE-16421) | Runtime filtering breaks user-level explain |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16483](https://issues.apache.org/jira/browse/HIVE-16483) | HoS should populate split related configurations to HiveConf |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-16519](https://issues.apache.org/jira/browse/HIVE-16519) | Fix exception thrown by checkOutputSpecs |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-16396](https://issues.apache.org/jira/browse/HIVE-16396) | Sync storage-api version in pom.xml |  Critical | storage-api | Teddy Choi | Teddy Choi |
| [HIVE-16510](https://issues.apache.org/jira/browse/HIVE-16510) | Vectorization: Add vectorized PTF tests in preparation for HIVE-16369 |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-16329](https://issues.apache.org/jira/browse/HIVE-16329) | TopN: use local executor info for LLAP memory checks |  Major | . | Gopal V | Gopal V |
| [HIVE-16353](https://issues.apache.org/jira/browse/HIVE-16353) | Jetty 9 upgrade breaks hive master LLAP |  Critical | . | Rajesh Balamohan | Gopal V |
| [HIVE-16533](https://issues.apache.org/jira/browse/HIVE-16533) | Vectorization: Avoid evaluating empty groupby keys |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-16547](https://issues.apache.org/jira/browse/HIVE-16547) | LLAP: may not unlock buffers in some cases |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16545](https://issues.apache.org/jira/browse/HIVE-16545) | LLAP: bug in arena size determination logic |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16538](https://issues.apache.org/jira/browse/HIVE-16538) | TestExecDriver fails if run after TestOperators#testScriptOperator |  Minor | Tests | Yussuf Shaikh | Yussuf Shaikh |
| [HIVE-16523](https://issues.apache.org/jira/browse/HIVE-16523) | VectorHashKeyWrapper hash code for strings is not so good |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16553](https://issues.apache.org/jira/browse/HIVE-16553) | Change default value for hive.tez.bigtable.minsize.semijoin.reduction |  Major | Configuration | Jason Dere | Jason Dere |
| [HIVE-16487](https://issues.apache.org/jira/browse/HIVE-16487) | Serious Zookeeper exception is logged when a race condition happens |  Major | Locking | Peter Vary | Peter Vary |
| [HIVE-16147](https://issues.apache.org/jira/browse/HIVE-16147) | Rename a partitioned table should not drop its partition columns stats |  Major | Statistics | Chaoyu Tang | Chaoyu Tang |
| [HIVE-16524](https://issues.apache.org/jira/browse/HIVE-16524) | Remove the redundant item type in hiveserver2.jsp and QueryProfileTmpl.jamon |  Minor | . | ZhangBing Lin | ZhangBing Lin |
| [HIVE-16399](https://issues.apache.org/jira/browse/HIVE-16399) | create an index for tc\_txnid in TXN\_COMPONENTS |  Major | Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-16465](https://issues.apache.org/jira/browse/HIVE-16465) | NullPointer Exception when enable vectorization for Parquet file format |  Critical | . | Colin Ma | Colin Ma |
| [HIVE-16518](https://issues.apache.org/jira/browse/HIVE-16518) | Insert override for druid does not replace all existing segments |  Major | Druid integration | Nishant Bangarwa | Nishant Bangarwa |
| [HIVE-16213](https://issues.apache.org/jira/browse/HIVE-16213) | ObjectStore can leak Queries when rollbackTransaction throws an exception |  Major | Hive | Alexander Kolbasov | Vihang Karajgaonkar |
| [HIVE-16497](https://issues.apache.org/jira/browse/HIVE-16497) | FileUtils. isActionPermittedForFileHierarchy, isOwnerOfFileHierarchy file system operations should be impersonated |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-16546](https://issues.apache.org/jira/browse/HIVE-16546) | LLAP: Fail map join tasks if hash table memory exceeds threshold |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-16534](https://issues.apache.org/jira/browse/HIVE-16534) | Add capability to tell aborted transactions apart from open transactions in ValidTxnList |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-16563](https://issues.apache.org/jira/browse/HIVE-16563) | Alter table partition set location should use fully qualified path for non-default FS |  Major | . | Chao Sun | Chao Sun |
| [HIVE-16581](https://issues.apache.org/jira/browse/HIVE-16581) |  a bug in HIVE-16523 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16576](https://issues.apache.org/jira/browse/HIVE-16576) | Fix encoding of intervals when fetching select query candidates from druid |  Major | Druid integration | Nishant Bangarwa | Nishant Bangarwa |
| [HIVE-16513](https://issues.apache.org/jira/browse/HIVE-16513) | width\_bucket issues |  Major | . | Carter Shanklin | Sahil Takiar |
| [HIVE-16389](https://issues.apache.org/jira/browse/HIVE-16389) | Allow HookContext to access SQLOperationDisplay |  Major | HiveServer2 | Sahil Takiar | Sahil Takiar |
| [HIVE-16577](https://issues.apache.org/jira/browse/HIVE-16577) | Syntax error in the metastore init scripts for mssql |  Blocker | Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16578](https://issues.apache.org/jira/browse/HIVE-16578) | Semijoin Hints should use column name, if provided for partition key check |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-16275](https://issues.apache.org/jira/browse/HIVE-16275) | Vectorization: Add ReduceSink support for TopN (in specialized native classes) |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-16562](https://issues.apache.org/jira/browse/HIVE-16562) | Issues with nullif / fetch task |  Major | . | Carter Shanklin | Zoltan Haindrich |
| [HIVE-16450](https://issues.apache.org/jira/browse/HIVE-16450) | Some metastore operations are not retried even with desired underlining exceptions |  Major | Metastore | Aihua Xu | Aihua Xu |
| [HIVE-16588](https://issues.apache.org/jira/browse/HIVE-16588) | Resource leak by druid http client |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-16598](https://issues.apache.org/jira/browse/HIVE-16598) | LlapServiceDriver - create directories and warn of errors |  Major | . | Kavan Suresh | Sergey Shelukhin |
| [HIVE-13652](https://issues.apache.org/jira/browse/HIVE-13652) | Import table change order of dynamic partitions |  Major | Import/Export, repl | Lukas Waldmann | Sankar Hariappan |
| [HIVE-11064](https://issues.apache.org/jira/browse/HIVE-11064) | ALTER TABLE CASCADE ERROR unbalanced calls to openTransaction/commitTransaction |  Major | Metastore | fatkun | Chaoyu Tang |
| [HIVE-16451](https://issues.apache.org/jira/browse/HIVE-16451) | Race condition between HiveStatement.getQueryLog and HiveStatement.runAsyncOnServer |  Major | Beeline, JDBC | Peter Vary | Peter Vary |
| [HIVE-16590](https://issues.apache.org/jira/browse/HIVE-16590) | Make initializing dag names in SparkWork thread safe for parallel compilation (HIVE-13512) |  Major | . | Sahil Takiar | Sahil Takiar |
| [HIVE-10865](https://issues.apache.org/jira/browse/HIVE-10865) | Beeline needs to support DELIMITER command |  Major | Beeline | Hari Sankar Sivarama Subramaniyan | Sahil Takiar |
| [HIVE-16572](https://issues.apache.org/jira/browse/HIVE-16572) | Rename a partition should not drop its column stats |  Major | Statistics | Chaoyu Tang | Chaoyu Tang |
| [HIVE-16485](https://issues.apache.org/jira/browse/HIVE-16485) | Enable outputName for RS operator in explain formatted |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16593](https://issues.apache.org/jira/browse/HIVE-16593) | SparkClientFactory.stop may prevent JVM from exiting |  Major | Spark | Rui Li | Rui Li |
| [HIVE-16599](https://issues.apache.org/jira/browse/HIVE-16599) | NPE in runtime filtering cost when handling SMB Joins |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-16633](https://issues.apache.org/jira/browse/HIVE-16633) | username for ATS data shall always be the uid who submit the job |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-16609](https://issues.apache.org/jira/browse/HIVE-16609) | col='\_\_HIVE\_DEFAULT\_PARTITION\_\_' condition in select statement may produce wrong result |  Major | Metastore | Daniel Dai | Daniel Dai |
| [HIVE-16610](https://issues.apache.org/jira/browse/HIVE-16610) | Semijoin Hint : Should be able to handle more than one hint per alias |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-16584](https://issues.apache.org/jira/browse/HIVE-16584) | Warning messages should use LogHelper.printInfo instead of printing to the infoStream directly |  Major | Logging | Peter Vary | Peter Vary |
| [HIVE-16640](https://issues.apache.org/jira/browse/HIVE-16640) | The ASF Headers have some errors in some class |  Minor | . | ZhangBing Lin | ZhangBing Lin |
| [HIVE-16557](https://issues.apache.org/jira/browse/HIVE-16557) | Vectorization: Specialize ReduceSink empty key case |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-16592](https://issues.apache.org/jira/browse/HIVE-16592) | Vectorization: Long hashCodes should bit-mix into lower bits |  Minor | . | Gopal V | Gopal V |
| [HIVE-16646](https://issues.apache.org/jira/browse/HIVE-16646) | Alias in transform ... as clause shouldn't be case sensitive |  Major | hpl/sql | Yibing Shi | Yibing Shi |
| [HIVE-16634](https://issues.apache.org/jira/browse/HIVE-16634) | LLAP Use a pool of connections to a single AM from a daemon |  Major | llap | Rajesh Balamohan | Siddharth Seth |
| [HIVE-16658](https://issues.apache.org/jira/browse/HIVE-16658) | TestTimestampTZ.java has missed the ASF header |  Minor | . | Saijin Huang | Saijin Huang |
| [HIVE-16607](https://issues.apache.org/jira/browse/HIVE-16607) | ColumnStatsAutoGatherContext regenerates HiveConf.HIVEQUERYID |  Major | Beeline, Logging | Peter Vary | Peter Vary |
| [HIVE-16645](https://issues.apache.org/jira/browse/HIVE-16645) | Commands.java has missed the catch statement and has some code format errors |  Minor | . | Saijin Huang | Saijin Huang |
| [HIVE-16324](https://issues.apache.org/jira/browse/HIVE-16324) | Truncate table should not work when EXTERNAL property of table is true |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-15483](https://issues.apache.org/jira/browse/HIVE-15483) | Database and table name is case sensitive when used in show grant |  Minor | Authorization, SQLStandardAuthorization | Niklaus Xiao | Niklaus Xiao |
| [HIVE-16413](https://issues.apache.org/jira/browse/HIVE-16413) | Create table as select does not check ownership of the location |  Major | Authorization, SQLStandardAuthorization | Niklaus Xiao | Niklaus Xiao |
| [HIVE-16660](https://issues.apache.org/jira/browse/HIVE-16660) | Not able to add partition for views in hive when sentry is enabled |  Major | Parser | Yongzhi Chen | Yongzhi Chen |
| [HIVE-16678](https://issues.apache.org/jira/browse/HIVE-16678) | Truncate on temporary table fails with "table not found" error. |  Major | Hive, HiveServer2 | Sankar Hariappan | Sankar Hariappan |
| [HIVE-16539](https://issues.apache.org/jira/browse/HIVE-16539) | Add PTF tests for blobstores |  Major | . | Juan Rodríguez Hortalá | Juan Rodríguez Hortalá |
| [HIVE-16696](https://issues.apache.org/jira/browse/HIVE-16696) | Fix JoinCondDesc explain string |  Minor | . | Chao Sun | Chao Sun |
| [HIVE-16698](https://issues.apache.org/jira/browse/HIVE-16698) | HoS should avoid mapjoin optimization in case of union and using table stats |  Major | Logical Optimizer, Spark | Chao Sun | Chao Sun |
| [HIVE-16692](https://issues.apache.org/jira/browse/HIVE-16692) | LLAP: Keep alive connection in shuffle handler should not be closed until entire data is flushed out |  Minor | llap | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14052](https://issues.apache.org/jira/browse/HIVE-14052) | Cleanup structures when external clients use LLAP |  Major | llap | Jason Dere | Siddharth Seth |
| [HIVE-16468](https://issues.apache.org/jira/browse/HIVE-16468) | BeeLineDriver should be able to run tests against an externally created cluster |  Major | Testing Infrastructure | Peter Vary | Peter Vary |
| [HIVE-16724](https://issues.apache.org/jira/browse/HIVE-16724) | increase session timeout for LLAP ZK token manager |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16703](https://issues.apache.org/jira/browse/HIVE-16703) | Hive may add the same file to the session and vertex in Tez |  Major | . | Mahesh Balakrishnan | Sergey Shelukhin |
| [HIVE-16671](https://issues.apache.org/jira/browse/HIVE-16671) | LLAP IO: BufferUnderflowException may happen in very rare(?) cases due to ORC end-of-CB estimation |  Major | . | Ravi Mutyala | Sergey Shelukhin |
| [HIVE-16113](https://issues.apache.org/jira/browse/HIVE-16113) | PartitionPruner::removeNonPartCols needs to handle AND/OR cases |  Major | Logical Optimizer | Gopal V | Remus Rusanu |
| [HIVE-16721](https://issues.apache.org/jira/browse/HIVE-16721) | Inconsistent behavior in dealing with Timestamp stats |  Major | Metastore | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-16693](https://issues.apache.org/jira/browse/HIVE-16693) | beeline "source" command freezes if you have a comment in it? |  Major | Beeline | Carter Shanklin | Ferdinand Xu |
| [HIVE-16742](https://issues.apache.org/jira/browse/HIVE-16742) | cap the number of reducers for LLAP at the configured value |  Major | . | Gopal V | Sergey Shelukhin |
| [HIVE-16737](https://issues.apache.org/jira/browse/HIVE-16737) | LLAP: Shuffle handler TCP listen queue overflows |  Major | llap | Gopal V | Prasanth Jayachandran |
| [HIVE-16743](https://issues.apache.org/jira/browse/HIVE-16743) | BitSet set() is incorrectly used in TxnUtils.createValidCompactTxnList() |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-15160](https://issues.apache.org/jira/browse/HIVE-15160) | Can't order by an unselected column |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16746](https://issues.apache.org/jira/browse/HIVE-16746) | Reduce number of index lookups for same table in IndexWhereTaskDispatcher |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-16613](https://issues.apache.org/jira/browse/HIVE-16613) | SaslClientHandler.sendHello is eating exceptions |  Major | Spark | Rui Li | Rui Li |
| [HIVE-16675](https://issues.apache.org/jira/browse/HIVE-16675) | Fix ConcurrentModificationException in SparkClientImpl#startDriver |  Major | . | liyunzhang\_intel | liyunzhang\_intel |
| [HIVE-16554](https://issues.apache.org/jira/browse/HIVE-16554) | ACID: Make HouseKeeperService threads daemon |  Major | Transactions | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-16755](https://issues.apache.org/jira/browse/HIVE-16755) | LLAP IO: incorrect assert may trigger in tests |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16745](https://issues.apache.org/jira/browse/HIVE-16745) | Syntax error in 041-HIVE-16556.mysql.sql script |  Minor | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16777](https://issues.apache.org/jira/browse/HIVE-16777) | LLAP: Use separate tokens and UGI instances when an external client is used |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-16779](https://issues.apache.org/jira/browse/HIVE-16779) | CachedStore leak PersistenceManager resources |  Major | Metastore | Daniel Dai | Daniel Dai |
| [HIVE-16507](https://issues.apache.org/jira/browse/HIVE-16507) | Hive Explain User-Level may print out "Vertex dependency in root stage" twice |  Major | . | Sahil Takiar | Sahil Takiar |
| [HIVE-16665](https://issues.apache.org/jira/browse/HIVE-16665) | Race condition in Utilities.GetInputPathsCallable --\> createDummyFileForEmptyPartition |  Major | . | Sahil Takiar | Sahil Takiar |
| [HIVE-16757](https://issues.apache.org/jira/browse/HIVE-16757) | Use of deprecated getRows() instead of new estimateRowCount(RelMetadataQuery..) has serious performance impact |  Major | Query Planning | Remus Rusanu | Remus Rusanu |
| [HIVE-16788](https://issues.apache.org/jira/browse/HIVE-16788) | ODBC call SQLForeignKeys leads to NPE if you use PK arguments rather than FK arguments |  Major | ODBC | Carter Shanklin | Jesus Camacho Rodriguez |
| [HIVE-16776](https://issues.apache.org/jira/browse/HIVE-16776) | Strange cast behavior for table backed by druid |  Major | Druid integration | slim bouguerra | Jesus Camacho Rodriguez |
| [HIVE-16625](https://issues.apache.org/jira/browse/HIVE-16625) | Extra '\\0' characters in the output, when SeparatedValuesOutputFormat is used and the quoting is disabled |  Major | Beeline, Testing Infrastructure | Peter Vary | Peter Vary |
| [HIVE-16654](https://issues.apache.org/jira/browse/HIVE-16654) | Optimize a combination of avg(), sum(), count(distinct) etc |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16801](https://issues.apache.org/jira/browse/HIVE-16801) | Vectorization: throwExpandError should be an immediate fatal |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-16769](https://issues.apache.org/jira/browse/HIVE-16769) | Possible hive service startup due to the existing file /tmp/stderr |  Major | Hive | Aihua Xu | Aihua Xu |
| [HIVE-16803](https://issues.apache.org/jira/browse/HIVE-16803) | Alter table change column comment should not try to get column stats for update |  Minor | Statistics | Chaoyu Tang | Chaoyu Tang |
| [HIVE-16744](https://issues.apache.org/jira/browse/HIVE-16744) | LLAP index update may be broken after ORC switch |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16808](https://issues.apache.org/jira/browse/HIVE-16808) | WebHCat statusdir parameter doesn't properly handle Unicode characters when using relative path |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-16573](https://issues.apache.org/jira/browse/HIVE-16573) | In-place update for HoS can't be disabled |  Minor | Spark | Rui Li | Bing Li |
| [HIVE-16804](https://issues.apache.org/jira/browse/HIVE-16804) | Semijoin hint : Needs support for target table. |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-16848](https://issues.apache.org/jira/browse/HIVE-16848) | NPE during CachedStore refresh |  Major | Metastore | Daniel Dai | Daniel Dai |
| [HIVE-16778](https://issues.apache.org/jira/browse/HIVE-16778) | LLAP IO: better refcount management |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16846](https://issues.apache.org/jira/browse/HIVE-16846) | TestJdbcWithMiniHS2#testHttpHeaderSize test case is not testing in HTTP mode |  Major | Test | Aihua Xu | Aihua Xu |
| [HIVE-16871](https://issues.apache.org/jira/browse/HIVE-16871) | CachedStore.get\_aggr\_stats\_for has side affect |  Major | Metastore | Daniel Dai | Daniel Dai |
| [HIVE-16323](https://issues.apache.org/jira/browse/HIVE-16323) | HS2 JDOPersistenceManagerFactory.pmCache leaks after HIVE-14204 |  Major | HiveServer2 | Daniel Dai | Daniel Dai |
| [HIVE-16780](https://issues.apache.org/jira/browse/HIVE-16780) | Case "multiple sources, single key" in spark\_dynamic\_pruning.q fails |  Major | . | liyunzhang\_intel | liyunzhang\_intel |
| [HIVE-16667](https://issues.apache.org/jira/browse/HIVE-16667) | PostgreSQL metastore handling of CLOB types for COLUMNS\_V2.TYPE\_NAME and other field is incorrect |  Major | . | Remus Rusanu | Naveen Gangam |
| [HIVE-16851](https://issues.apache.org/jira/browse/HIVE-16851) | Scalar subquery with group by missing sq\_count\_check UDF |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-16854](https://issues.apache.org/jira/browse/HIVE-16854) | SparkClientFactory is locked too aggressively |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-16820](https://issues.apache.org/jira/browse/HIVE-16820) | TezTask may not shut down correctly before submit |  Major | . | Visakh Nair | Sergey Shelukhin |
| [HIVE-16844](https://issues.apache.org/jira/browse/HIVE-16844) | Fix Connection leak in ObjectStore when new Conf object is used |  Major | Metastore | Sunitha Beeram | Sunitha Beeram |
| [HIVE-16835](https://issues.apache.org/jira/browse/HIVE-16835) | Addendum to HIVE-16745 |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16903](https://issues.apache.org/jira/browse/HIVE-16903) | LLAP: Fix config name issue in SHUFFLE\_MANAGE\_OS\_CACHE |  Trivial | llap | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-16876](https://issues.apache.org/jira/browse/HIVE-16876) | HoS: Make Rpc configs immutable at runtime |  Major | Spark | Rui Li | Rui Li |
| [HIVE-16910](https://issues.apache.org/jira/browse/HIVE-16910) | RpcConfiguration - Improper Cast From Long To Int |  Minor | Spark | BELUGA BEHR | BELUGA BEHR |
| [HIVE-16902](https://issues.apache.org/jira/browse/HIVE-16902) | investigate "failed to remove operation log" errors |  Major | Logging | Aihua Xu | Aihua Xu |
| [HIVE-16864](https://issues.apache.org/jira/browse/HIVE-16864) | add validation to stream position search in LLAP IO |  Major | . | Prasanth Jayachandran | Sergey Shelukhin |
| [HIVE-16847](https://issues.apache.org/jira/browse/HIVE-16847) | LLAP queue order issue |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16915](https://issues.apache.org/jira/browse/HIVE-16915) | partition column count is not determined correctly in LLAP IO non-vectorized wrapper |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16731](https://issues.apache.org/jira/browse/HIVE-16731) | Vectorization: Make "CASE WHEN (day\_name='Sunday') THEN column1 ELSE null end" that involves a column name or expression THEN or ELSE vectorize |  Critical | . | Matt McCline | Teddy Choi |
| [HIVE-16233](https://issues.apache.org/jira/browse/HIVE-16233) | llap: Query failed with AllocatorOutOfMemoryException |  Major | llap | Siddharth Seth | Sergey Shelukhin |
| [HIVE-16920](https://issues.apache.org/jira/browse/HIVE-16920) | remove useless uri.getScheme() from EximUtil |  Major | Query Processor | Fei Hui | Fei Hui |
| [HIVE-16918](https://issues.apache.org/jira/browse/HIVE-16918) | Skip ReplCopyTask distcp for \_metadata copying. Also enable -pb for distcp |  Major | repl | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-16875](https://issues.apache.org/jira/browse/HIVE-16875) | Query against view with partitioned child on HoS fails with privilege exception. |  Major | Spark | Yongzhi Chen | Yongzhi Chen |
| [HIVE-16930](https://issues.apache.org/jira/browse/HIVE-16930) | HoS should verify the value of Kerberos principal and keytab file before adding them to spark-submit command parameters |  Major | Spark | Yibing Shi | Yibing Shi |
| [HIVE-16939](https://issues.apache.org/jira/browse/HIVE-16939) | metastore error: 'export: -Dproc\_metastore : not a valid identifier' |  Major | Metastore | Fei Hui | Fei Hui |
| [HIVE-16589](https://issues.apache.org/jira/browse/HIVE-16589) | Vectorization: Support Complex Types and GroupBy modes PARTIAL2, FINAL, and COMPLETE  for AVG, VARIANCE |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-16751](https://issues.apache.org/jira/browse/HIVE-16751) | Support different types for grouping columns in GroupBy Druid queries |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-16937](https://issues.apache.org/jira/browse/HIVE-16937) | INFORMATION\_SCHEMA usability: everything is currently a string |  Major | . | Carter Shanklin | Gunther Hagleitner |
| [HIVE-11297](https://issues.apache.org/jira/browse/HIVE-11297) | Combine op trees for partition info generating tasks |  Major | . | Chao Sun | liyunzhang\_intel |
| [HIVE-16943](https://issues.apache.org/jira/browse/HIVE-16943) | MoveTask should separate src FileSystem from dest FileSystem |  Major | Query Processor | Fei Hui | Fei Hui |
| [HIVE-16877](https://issues.apache.org/jira/browse/HIVE-16877) | NPE when issue query like alter table ... cascade onto non-partitioned table |  Major | Query Processor | Wang Haihua | Wang Haihua |
| [HIVE-16938](https://issues.apache.org/jira/browse/HIVE-16938) | INFORMATION\_SCHEMA usability: difficult to access # of table records |  Major | . | Carter Shanklin | Gunther Hagleitner |
| [HIVE-16869](https://issues.apache.org/jira/browse/HIVE-16869) | Hive returns wrong result when predicates on non-existing columns are pushed down to Parquet reader |  Critical | . | Yibing Shi | Yibing Shi |
| [HIVE-16559](https://issues.apache.org/jira/browse/HIVE-16559) | Parquet schema evolution for partitioned tables may break if table and partition serdes differ |  Major | Serializers/Deserializers | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-16942](https://issues.apache.org/jira/browse/HIVE-16942) | INFORMATION\_SCHEMA: schematool for setting it up is not idempotent |  Major | . | Carter Shanklin | Gunther Hagleitner |
| [HIVE-16947](https://issues.apache.org/jira/browse/HIVE-16947) | Semijoin Reduction : Task cycle created due to multiple semijoins in conjunction with hashjoin |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-16978](https://issues.apache.org/jira/browse/HIVE-16978) | HoS: add current thread ID to the log redirector for the RemoteDriver |  Minor | Spark | Chao Sun | Chao Sun |
| [HIVE-16761](https://issues.apache.org/jira/browse/HIVE-16761) | LLAP IO: SMB joins fail elevator |  Major | . | Gopal V | Sergey Shelukhin |
| [HIVE-6348](https://issues.apache.org/jira/browse/HIVE-6348) | Order by/Sort by in subquery |  Minor | . | Gunther Hagleitner | Rui Li |
| [HIVE-16991](https://issues.apache.org/jira/browse/HIVE-16991) | HiveMetaStoreClient needs a 2-arg constructor for backwards compatibility |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-16958](https://issues.apache.org/jira/browse/HIVE-16958) | Setting hive.merge.sparkfiles=true will retrun an error when generating parquet databases |  Major | . | Liu Chunxiao | liyunzhang\_intel |
| [HIVE-16659](https://issues.apache.org/jira/browse/HIVE-16659) | Query plan should reflect hive.spark.use.groupby.shuffle |  Major | Spark | Rui Li | Bing Li |
| [HIVE-16961](https://issues.apache.org/jira/browse/HIVE-16961) | Hive on Spark leaks spark application in case user cancels query and closes session |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-17007](https://issues.apache.org/jira/browse/HIVE-17007) | NPE introduced by HIVE-16871 |  Major | Metastore | Daniel Dai | Daniel Dai |
| [HIVE-10616](https://issues.apache.org/jira/browse/HIVE-10616) | TypeInfoUtils doesn't handle DECIMAL with just precision specified |  Minor | Serializers/Deserializers | Thomas Friedrich | Thomas Friedrich |
| [HIVE-16935](https://issues.apache.org/jira/browse/HIVE-16935) | Hive should strip comments from input before choosing which CommandProcessor to run. |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-6990](https://issues.apache.org/jira/browse/HIVE-6990) | Direct SQL fails when the explicit schema setting is different from the default one |  Major | Query Processor | Bing Li | Sergey Shelukhin |
| [HIVE-17010](https://issues.apache.org/jira/browse/HIVE-17010) | Fix the overflow problem of Long type in SetSparkReducerParallelism |  Major | . | liyunzhang\_intel | liyunzhang\_intel |
| [HIVE-17067](https://issues.apache.org/jira/browse/HIVE-17067) | LLAP: Add http endpoint to provide system level configurations |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17070](https://issues.apache.org/jira/browse/HIVE-17070) | remove .orig files from src |  Trivial | . | Eugene Koifman | Eugene Koifman |
| [HIVE-15144](https://issues.apache.org/jira/browse/HIVE-15144) | JSON.org license is now CatX |  Blocker | . | Robert Kanter | Owen O'Malley |
| [HIVE-16730](https://issues.apache.org/jira/browse/HIVE-16730) | Vectorization: Schema Evolution for Text Vectorization / Complex Types |  Critical | Hive | Matt McCline | Teddy Choi |
| [HIVE-17073](https://issues.apache.org/jira/browse/HIVE-17073) | Incorrect result with vectorization and SharedWorkOptimizer |  Major | Vectorization | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-16177](https://issues.apache.org/jira/browse/HIVE-16177) | non Acid to acid conversion doesn't handle \_copy\_N files |  Blocker | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17066](https://issues.apache.org/jira/browse/HIVE-17066) | Query78 filter wrong estimatation is generating bad plan |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-16732](https://issues.apache.org/jira/browse/HIVE-16732) | Transactional tables should block LOAD DATA |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17079](https://issues.apache.org/jira/browse/HIVE-17079) | LLAP: Use FQDN by default for work submission |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-16832](https://issues.apache.org/jira/browse/HIVE-16832) | duplicate ROW\_\_ID possible in multi insert into transactional table |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16975](https://issues.apache.org/jira/browse/HIVE-16975) | Vectorization: Fully vectorize CAST date as TIMESTAMP so VectorUDFAdaptor is now used |  Critical | Hive | Matt McCline | Teddy Choi |
| [HIVE-16888](https://issues.apache.org/jira/browse/HIVE-16888) | Upgrade Calcite to 1.13 and Avatica to 1.10 |  Major | Query Processor | Remus Rusanu | Jesus Camacho Rodriguez |
| [HIVE-16793](https://issues.apache.org/jira/browse/HIVE-16793) | Scalar sub-query: sq\_count\_check not required if gby keys are constant |  Major | SQL | Gopal V | Vineet Garg |
| [HIVE-17086](https://issues.apache.org/jira/browse/HIVE-17086) | LLAP: JMX Metric for max file descriptors used so far |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-4577](https://issues.apache.org/jira/browse/HIVE-4577) | hive CLI can't handle hadoop dfs command  with space and quotes. |  Major | CLI | Bing Li | Bing Li |
| [HIVE-17083](https://issues.apache.org/jira/browse/HIVE-17083) | DagUtils overwrites any credentials already added |  Major | Tez | Josh Elser | Josh Elser |
| [HIVE-17093](https://issues.apache.org/jira/browse/HIVE-17093) | LLAP ssl configs need to be localized to talk to a wire encrypted hdfs |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-17097](https://issues.apache.org/jira/browse/HIVE-17097) | Fix SemiJoinHint parsing in SemanticAnalyzer |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-16973](https://issues.apache.org/jira/browse/HIVE-16973) | Fetching of Delegation tokens (Kerberos) for AccumuloStorageHandler fails in HS2 |  Major | Accumulo Storage Handler | Josh Elser | Josh Elser |
| [HIVE-16824](https://issues.apache.org/jira/browse/HIVE-16824) | PrimaryToReplicaResourceFunctionTest.java has missed the ASF header |  Minor | . | ZhangBing Lin | ZhangBing Lin |
| [HIVE-14988](https://issues.apache.org/jira/browse/HIVE-14988) | Support INSERT OVERWRITE into a partition on transactional tables |  Major | Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-17109](https://issues.apache.org/jira/browse/HIVE-17109) | Remove calls to RelMetadataQuery.instance() after Calcite 1.13 upgrade |  Major | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-16922](https://issues.apache.org/jira/browse/HIVE-16922) | Typo in serde.thrift: COLLECTION\_DELIM = "colelction.delim" |  Major | Thrift API | Dudu Markovitz | Bing Li |
| [HIVE-17069](https://issues.apache.org/jira/browse/HIVE-17069) | Refactor OrcRawRecrodMerger.ReaderPair |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16960](https://issues.apache.org/jira/browse/HIVE-16960) | Hive throws an ugly error exception when HDFS sticky bit is set |  Critical | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-17095](https://issues.apache.org/jira/browse/HIVE-17095) | Long chain repl loads do not complete in a timely fashion |  Major | Query Planning, repl | sapin amin | Sushanth Sowmyan |
| [HIVE-17099](https://issues.apache.org/jira/browse/HIVE-17099) | Update golden files for spark.only.query.files |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-16369](https://issues.apache.org/jira/browse/HIVE-16369) | Vectorization: Support PTF (Part 1: No Custom Window Framing -- Default Only) |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-17090](https://issues.apache.org/jira/browse/HIVE-17090) | spark.only.query.files are not being run by ptest |  Major | Test | Sahil Takiar | Sahil Takiar |
| [HIVE-17085](https://issues.apache.org/jira/browse/HIVE-17085) | ORC file merge/concatenation should do full schema check |  Major | ORC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17116](https://issues.apache.org/jira/browse/HIVE-17116) | Vectorization: Add infrastructure for vectorization of ROW\_\_ID struct |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-17114](https://issues.apache.org/jira/browse/HIVE-17114) | HoS: Possible skew in shuffling when data is not really skewed |  Minor | . | Rui Li | Rui Li |
| [HIVE-17117](https://issues.apache.org/jira/browse/HIVE-17117) | Metalisteners are not notified when threadlocal metaconf is cleanup |  Minor | Metastore | PRASHANT GOLASH | PRASHANT GOLASH |
| [HIVE-17150](https://issues.apache.org/jira/browse/HIVE-17150) | CREATE INDEX execute HMS out-of-transaction listener calls inside a transaction |  Major | Metastore | Sergio Peña | Sergio Peña |
| [HIVE-17149](https://issues.apache.org/jira/browse/HIVE-17149) | Hdfs directory is not cleared if partition creation failed on HMS |  Major | Metastore | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-16222](https://issues.apache.org/jira/browse/HIVE-16222) | add a setting to disable row.serde for specific formats; enable for others |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17147](https://issues.apache.org/jira/browse/HIVE-17147) | Vectorization: Add code for testing MapJoin operator in isolation and measuring its performance with JMH |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-17155](https://issues.apache.org/jira/browse/HIVE-17155) | findConfFile() in HiveConf.java has some issues with the conf path |  Minor | Hive | Aihua Xu | xiaoqiang\_song |
| [HIVE-16954](https://issues.apache.org/jira/browse/HIVE-16954) | LLAP IO: better debugging |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16679](https://issues.apache.org/jira/browse/HIVE-16679) | Missing ASF header on properties file in ptest2 project |  Trivial | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-17052](https://issues.apache.org/jira/browse/HIVE-17052) | Remove logging of predicate filters |  Major | Hive | Barna Zsombor Klara | Yibing Shi |
| [HIVE-17128](https://issues.apache.org/jira/browse/HIVE-17128) | Operation Logging leaks file descriptors as the log4j Appender is never closed |  Major | Logging | Andrew Sherman | Andrew Sherman |
| [HIVE-17088](https://issues.apache.org/jira/browse/HIVE-17088) | HS2 WebUI throws a NullPointerException when opened |  Major | HiveServer2 | Sergio Peña | Sergio Peña |
| [HIVE-16982](https://issues.apache.org/jira/browse/HIVE-16982) | WebUI "Show Query" tab prints "UNKNOWN" instead of explaining configuration option |  Minor | Configuration, Web UI | Karen Coppage | Karen Coppage |
| [HIVE-17184](https://issues.apache.org/jira/browse/HIVE-17184) | Unexpected new line in beeline output when running with -f option |  Minor | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16965](https://issues.apache.org/jira/browse/HIVE-16965) | SMB join may produce incorrect results |  Major | . | Sergey Shelukhin | Deepak Jaiswal |
| [HIVE-16077](https://issues.apache.org/jira/browse/HIVE-16077) | UPDATE/DELETE fails with numBuckets \> numReducers |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17113](https://issues.apache.org/jira/browse/HIVE-17113) | Duplicate bucket files can get written to table by runaway task |  Major | Query Processor | Jason Dere | Jason Dere |
| [HIVE-16985](https://issues.apache.org/jira/browse/HIVE-16985) | LLAP IO: enable SMB join in elevator after the former is fixed |  Major | . | Sergey Shelukhin | Deepak Jaiswal |
| [HIVE-17189](https://issues.apache.org/jira/browse/HIVE-17189) | Fix backwards incompatibility in HiveMetaStoreClient |  Major | Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-17209](https://issues.apache.org/jira/browse/HIVE-17209) | ObjectCacheFactory should return null when tez shared object registry is not setup |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-17176](https://issues.apache.org/jira/browse/HIVE-17176) | Add ASF header for LlapAllocatorBuffer.java |  Minor | . | Saijin Huang | Saijin Huang |
| [HIVE-17177](https://issues.apache.org/jira/browse/HIVE-17177) | move TestSuite.java to the right position |  Minor | . | Saijin Huang | Saijin Huang |
| [HIVE-17188](https://issues.apache.org/jira/browse/HIVE-17188) | ObjectStore runs out of memory for large batches of addPartitions(). |  Major | Metastore | Mithun Radhakrishnan | Chris Drome |
| [HIVE-17222](https://issues.apache.org/jira/browse/HIVE-17222) | Llap: Iotrace throws  java.lang.UnsupportedOperationException with IncompleteCb |  Minor | llap | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-17217](https://issues.apache.org/jira/browse/HIVE-17217) | SMB Join : Assert if paths are different in TezGroupedSplit in KeyValueInputMerger |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-17144](https://issues.apache.org/jira/browse/HIVE-17144) | export of temporary tables not working and it seems to be using distcp rather than filesystem copy |  Major | Hive, HiveServer2 | anishek | anishek |
| [HIVE-16845](https://issues.apache.org/jira/browse/HIVE-16845) | INSERT OVERWRITE a table with dynamic partitions on S3 fails with NPE |  Major | . | Marta Kuczora | Marta Kuczora |
| [HIVE-17208](https://issues.apache.org/jira/browse/HIVE-17208) | Repl dump should pass in db/table information to authorization API |  Major | Authorization | Daniel Dai | Daniel Dai |
| [HIVE-17220](https://issues.apache.org/jira/browse/HIVE-17220) | Bloomfilter probing in semijoin reduction is thrashing L1 dcache |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17254](https://issues.apache.org/jira/browse/HIVE-17254) | Skip updating AccessTime of recycled files in ReplChangeManager |  Major | repl | Daniel Dai | Daniel Dai |
| [HIVE-17213](https://issues.apache.org/jira/browse/HIVE-17213) | HoS: file merging doesn't work for union all |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-16784](https://issues.apache.org/jira/browse/HIVE-16784) | Missing lineage information when hive.blobstore.optimizations.enabled is true |  Major | . | Marta Kuczora | Barna Zsombor Klara |
| [HIVE-17172](https://issues.apache.org/jira/browse/HIVE-17172) | add ordering checks to DiskRangeList |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17228](https://issues.apache.org/jira/browse/HIVE-17228) | Bump tez version to 0.9.0 |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [HIVE-17115](https://issues.apache.org/jira/browse/HIVE-17115) | MetaStoreUtils.getDeserializer doesn't catch the java.lang.ClassNotFoundException |  Major | Metastore | Erik.fang | Erik.fang |
| [HIVE-17235](https://issues.apache.org/jira/browse/HIVE-17235) | Add ORC Decimal64 Serialization/Deserialization (Part 1) |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-17285](https://issues.apache.org/jira/browse/HIVE-17285) | Fixes for bit vector retrievals and merging |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-17008](https://issues.apache.org/jira/browse/HIVE-17008) | Fix boolean flag switchup in DropTableEvent |  Major | Metastore | Dan Burkert | Dan Burkert |
| [HIVE-15767](https://issues.apache.org/jira/browse/HIVE-15767) | Hive On Spark is not working on secure clusters from Oozie |  Major | Spark | Peter Cseh | Peter Cseh |
| [HIVE-17281](https://issues.apache.org/jira/browse/HIVE-17281) | LLAP external client not properly handling KILLED notification that occurs when a fragment is rejected |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-17283](https://issues.apache.org/jira/browse/HIVE-17283) | Enable parallel edges of semijoin along with mapjoins |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-17274](https://issues.apache.org/jira/browse/HIVE-17274) | RowContainer spills for timestamp column throws exception |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17148](https://issues.apache.org/jira/browse/HIVE-17148) | Incorrect result for Hive join query with COALESCE in WHERE condition |  Major | CBO | Vlad Gudikov | Vlad Gudikov |
| [HIVE-17290](https://issues.apache.org/jira/browse/HIVE-17290) | Should use equals() rather than == to compare strings |  Trivial | . | Oleg Danilov | Oleg Danilov |
| [HIVE-17301](https://issues.apache.org/jira/browse/HIVE-17301) | Make JSONMessageFactory.getTObj method thread safe |  Major | Metastore | Tao Li | Tao Li |
| [HIVE-17260](https://issues.apache.org/jira/browse/HIVE-17260) | Typo: exception has been created and lost in the ThriftJDBCBinarySerDe |  Minor | . | Oleg Danilov | Oleg Danilov |
| [HIVE-17311](https://issues.apache.org/jira/browse/HIVE-17311) | Numeric overflow in the HiveConf |  Minor | . | Oleg Danilov | Oleg Danilov |
| [HIVE-17268](https://issues.apache.org/jira/browse/HIVE-17268) | WebUI / QueryPlan: query plan is sometimes null when explain output conf is on |  Minor | . | Karen Coppage | Karen Coppage |
| [HIVE-17305](https://issues.apache.org/jira/browse/HIVE-17305) | New insert overwrite dynamic partitions qtest need to have the golden file regenerated |  Trivial | Tests | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-17322](https://issues.apache.org/jira/browse/HIVE-17322) | Serialise BeeLine qtest execution to prevent flakyness |  Minor | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-17181](https://issues.apache.org/jira/browse/HIVE-17181) | HCatOutputFormat should expose complete output-schema (including partition-keys) for dynamic-partitioning MR jobs |  Major | HCatalog | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17169](https://issues.apache.org/jira/browse/HIVE-17169) | Avoid extra call to KeyProvider::getMetadata() |  Major | Shims | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17272](https://issues.apache.org/jira/browse/HIVE-17272) | when hive.vectorized.execution.enabled is true, query on empty partitioned table fails with NPE |  Major | Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-17218](https://issues.apache.org/jira/browse/HIVE-17218) | Canonical-ize hostnames for Hive metastore, and HS2 servers. |  Major | HiveServer2, Metastore, Security | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17256](https://issues.apache.org/jira/browse/HIVE-17256) | add a notion of a guaranteed task to LLAP |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17233](https://issues.apache.org/jira/browse/HIVE-17233) | Set "mapred.input.dir.recursive" for HCatInputFormat-based jobs. |  Major | HCatalog | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17321](https://issues.apache.org/jira/browse/HIVE-17321) | HoS: analyze ORC table doesn't compute raw data size when noscan/partialscan is not specified |  Minor | Spark | Rui Li | Rui Li |
| [HIVE-17336](https://issues.apache.org/jira/browse/HIVE-17336) | Missing class 'org.apache.hadoop.hive.hbase.HiveHBaseTableInputFormat' from Hive on Spark when inserting into hbase based table |  Major | Spark | Aihua Xu | Aihua Xu |
| [HIVE-17286](https://issues.apache.org/jira/browse/HIVE-17286) | Avoid expensive String serialization/deserialization for bitvectors |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-16948](https://issues.apache.org/jira/browse/HIVE-16948) | Invalid explain when running dynamic partition pruning query in Hive On Spark |  Major | . | liyunzhang\_intel | liyunzhang\_intel |
| [HIVE-17267](https://issues.apache.org/jira/browse/HIVE-17267) | Make HMS Notification Listeners typesafe |  Major | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-17351](https://issues.apache.org/jira/browse/HIVE-17351) | use new slider package installation command in run.sh |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17354](https://issues.apache.org/jira/browse/HIVE-17354) | Fix "alter view" for incremental replication |  Major | repl | Tao Li | Tao Li |
| [HIVE-17277](https://issues.apache.org/jira/browse/HIVE-17277) | HiveMetastoreClient Log name is wrong |  Minor | Metastore | Zac Zhou | Zac Zhou |
| [HIVE-17356](https://issues.apache.org/jira/browse/HIVE-17356) | Missing ASF headers 3 classes |  Trivial | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-17357](https://issues.apache.org/jira/browse/HIVE-17357) | Plugin jars are not properly added for LocalHiveSparkClient |  Major | Spark | Aihua Xu | Aihua Xu |
| [HIVE-17327](https://issues.apache.org/jira/browse/HIVE-17327) | LLAP IO: restrict native file ID usage to default FS to avoid hypothetical collisions when HDFS federation is used |  Major | . | Gopal V | Sergey Shelukhin |
| [HIVE-17348](https://issues.apache.org/jira/browse/HIVE-17348) | Remove unnecessary GenSparkUtils.java.orig file |  Major | . | Peter Vary | Peter Vary |
| [HIVE-17364](https://issues.apache.org/jira/browse/HIVE-17364) | Add unit test to "alter view" replication |  Minor | . | Tao Li | Tao Li |
| [HIVE-17352](https://issues.apache.org/jira/browse/HIVE-17352) | HiveSever2 error with "Illegal Operation state transition from CLOSED to FINISHED" |  Major | HiveServer2 | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-17302](https://issues.apache.org/jira/browse/HIVE-17302) | ReduceRecordSource should not add batch string to Exception message |  Major | . | slim bouguerra | slim bouguerra |
| [HIVE-17365](https://issues.apache.org/jira/browse/HIVE-17365) | Druid CTAS should support CHAR/VARCHAR type |  Major | Druid integration | Dileep Kumar Chiguruvada | Jesus Camacho Rodriguez |
| [HIVE-17303](https://issues.apache.org/jira/browse/HIVE-17303) | Missmatch between roaring bitmap library used by druid and the one coming from tez |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-17265](https://issues.apache.org/jira/browse/HIVE-17265) | Cache merged column stats from retrieved partitions |  Major | Statistics | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-16908](https://issues.apache.org/jira/browse/HIVE-16908) | Failures in TestHcatClient due to HIVE-16844 |  Major | . | Sunitha Beeram | Mithun Radhakrishnan |
| [HIVE-17372](https://issues.apache.org/jira/browse/HIVE-17372) | update druid dependency to druid 0.10.1 |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-17377](https://issues.apache.org/jira/browse/HIVE-17377) | SharedWorkOptimizer might not iterate through TS operators deterministically |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17360](https://issues.apache.org/jira/browse/HIVE-17360) | Tez session reopen appears to use a wrong conf object |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17380](https://issues.apache.org/jira/browse/HIVE-17380) | refactor LlapProtocolClientProxy to be usable with other protocols |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17330](https://issues.apache.org/jira/browse/HIVE-17330) | refactor TezSessionPoolManager to separate its multiple functions |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17392](https://issues.apache.org/jira/browse/HIVE-17392) | SharedWorkOptimizer might merge TS operators filtered by not equivalent semijoin operators |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16288](https://issues.apache.org/jira/browse/HIVE-16288) | Add blobstore tests for ORC and RCFILE file formats |  Major | Tests | Thomas Poepping | Thomas Poepping |
| [HIVE-16359](https://issues.apache.org/jira/browse/HIVE-16359) | Update golden file for subquery\_select.q |  Major | Test | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-15538](https://issues.apache.org/jira/browse/HIVE-15538) | Test HIVE-13884 with more complex query predicates |  Major | Test | Marta Kuczora | Marta Kuczora |
| [HIVE-16415](https://issues.apache.org/jira/browse/HIVE-16415) | Add tests covering single inserts of zero rows |  Major | Tests | Thomas Poepping | Thomas Poepping |
| [HIVE-16454](https://issues.apache.org/jira/browse/HIVE-16454) | Add blobstore tests for inserting empty into dynamic partition/list bucket tables & inserting cross blobstore tables |  Major | Tests | Rentao Wu | Rentao Wu |
| [HIVE-16540](https://issues.apache.org/jira/browse/HIVE-16540) | dynamic\_semijoin\_user\_level is failing on MiniLlap |  Trivial | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16664](https://issues.apache.org/jira/browse/HIVE-16664) | Add join related Hive blobstore tests |  Major | Tests | Rentao Wu | Rentao Wu |
| [HIVE-16636](https://issues.apache.org/jira/browse/HIVE-16636) | TestPerfCli driver is missing query24 |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-16673](https://issues.apache.org/jira/browse/HIVE-16673) | Test for HIVE-16413 |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-16831](https://issues.apache.org/jira/browse/HIVE-16831) | Add unit tests for NPE fixes in HIVE-12054 |  Major | Hive | Sunitha Beeram | Sunitha Beeram |
| [HIVE-17034](https://issues.apache.org/jira/browse/HIVE-17034) | The spark tar for itests is downloaded every time if md5sum is not installed |  Trivial | Spark | Rui Li | Rui Li |
| [HIVE-17190](https://issues.apache.org/jira/browse/HIVE-17190) | Schema changes for bitvectors for unpartitioned tables |  Major | Metastore, Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-17246](https://issues.apache.org/jira/browse/HIVE-17246) | Add having related blobstore query test |  Major | . | Taklon Stephen Wu | Taklon Stephen Wu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16276](https://issues.apache.org/jira/browse/HIVE-16276) | Fix NoSuchMethodError: com.amazonaws.services.s3.transfer.TransferManagerConfiguration.setMultipartUploadThreshold(I)V |  Major | Druid integration | Sahil Takiar | Jesus Camacho Rodriguez |
| [HIVE-16186](https://issues.apache.org/jira/browse/HIVE-16186) | REPL DUMP shows last event ID of the database even if we use LIMIT option. |  Major | repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-16313](https://issues.apache.org/jira/browse/HIVE-16313) | Flaky test: TestBeeLineDriver[drop\_with\_concurrency] |  Major | Test | Peter Vary | Peter Vary |
| [HIVE-16228](https://issues.apache.org/jira/browse/HIVE-16228) | Support subqueries in complex expression in SELECT clause |  Major | Logical Optimizer | Vineet Garg | Vineet Garg |
| [HIVE-16256](https://issues.apache.org/jira/browse/HIVE-16256) | Flaky test: TestCliDriver.testCliDriver[comments] |  Major | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-16312](https://issues.apache.org/jira/browse/HIVE-16312) | Flaky test: TestHCatClient.testTransportFailure |  Major | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-16266](https://issues.apache.org/jira/browse/HIVE-16266) | Enable function metadata to be written during bootstrap |  Major | repl | anishek | anishek |
| [HIVE-16400](https://issues.apache.org/jira/browse/HIVE-16400) | Fix the MDC reference to use slf4j rather than log4j |  Major | Logging | Aihua Xu | Aihua Xu |
| [HIVE-16344](https://issues.apache.org/jira/browse/HIVE-16344) | Test and support replication of exchange partition |  Major | repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-15986](https://issues.apache.org/jira/browse/HIVE-15986) | Support "is [not] distinct from" |  Major | SQL | Carter Shanklin | Vineet Garg |
| [HIVE-16197](https://issues.apache.org/jira/browse/HIVE-16197) | Incremental insert into a partitioned table doesn't get replicated. |  Major | repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-16467](https://issues.apache.org/jira/browse/HIVE-16467) | Flaky test: TestCliDriver.testCliDriver[vector\_order\_null] |  Major | . | Peter Vary | Peter Vary |
| [HIVE-11418](https://issues.apache.org/jira/browse/HIVE-11418) | Dropping a database in an encryption zone with CASCADE and trash enabled fails |  Major | . | Sergio Peña | Sahil Takiar |
| [HIVE-15673](https://issues.apache.org/jira/browse/HIVE-15673) | Allow multiple queries with disjunction |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-15619](https://issues.apache.org/jira/browse/HIVE-15619) | Column pruner should handle DruidQuery |  Major | Druid integration | Jesus Camacho Rodriguez | Nishant Bangarwa |
| [HIVE-15982](https://issues.apache.org/jira/browse/HIVE-15982) | Support the width\_bucket function |  Major | SQL | Carter Shanklin | Sahil Takiar |
| [HIVE-16493](https://issues.apache.org/jira/browse/HIVE-16493) | Skip column stats when colStats is empty |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16535](https://issues.apache.org/jira/browse/HIVE-16535) | Hive fails to build from source code tarball |  Blocker | . | Alan Gates | Pengcheng Xiong |
| [HIVE-16504](https://issues.apache.org/jira/browse/HIVE-16504) | Addition of binary licenses broke rat check |  Blocker | . | Alan Gates | Alan Gates |
| [HIVE-16171](https://issues.apache.org/jira/browse/HIVE-16171) | Support replication of truncate table |  Major | repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-16542](https://issues.apache.org/jira/browse/HIVE-16542) | make merge that targets acid 2.0 table fail-fast |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16488](https://issues.apache.org/jira/browse/HIVE-16488) | Support replicating into existing db if the db is empty |  Major | repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-11133](https://issues.apache.org/jira/browse/HIVE-11133) | Support hive.explain.user for Spark |  Major | Spark | Mohit Sabharwal | Sahil Takiar |
| [HIVE-15642](https://issues.apache.org/jira/browse/HIVE-15642) | Replicate Insert Overwrites, Dynamic Partition Inserts and Loads |  Major | repl | Vaibhav Gumashta | Sankar Hariappan |
| [HIVE-16267](https://issues.apache.org/jira/browse/HIVE-16267) | Enable bootstrap function metadata to be loaded in repl load |  Major | HiveServer2, repl | anishek | anishek |
| [HIVE-16268](https://issues.apache.org/jira/browse/HIVE-16268) | enable incremental repl dump to handle functions metadata |  Major | HiveServer2, repl | anishek | anishek |
| [HIVE-13583](https://issues.apache.org/jira/browse/HIVE-13583) | E061-14: Search Conditions |  Major | . | Carter Shanklin | Zoltan Haindrich |
| [HIVE-16568](https://issues.apache.org/jira/browse/HIVE-16568) | Support complex types in external LLAP InputFormat |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-16530](https://issues.apache.org/jira/browse/HIVE-16530) | Add HS2 operation logs and improve logs for REPL commands |  Major | repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-16556](https://issues.apache.org/jira/browse/HIVE-16556) | Modify schematool scripts to initialize and create METASTORE\_DB\_PROPERTIES table |  Major | Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16330](https://issues.apache.org/jira/browse/HIVE-16330) | Improve plans for scalar subquery with aggregates |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-16269](https://issues.apache.org/jira/browse/HIVE-16269) | enable incremental function dump to be loaded via repl load |  Major | HiveServer2 | anishek | anishek |
| [HIVE-16637](https://issues.apache.org/jira/browse/HIVE-16637) | Improve end-of-data checking for LLAP input format |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-16555](https://issues.apache.org/jira/browse/HIVE-16555) | Add a new thrift API call for get\_metastore\_uuid |  Major | Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16586](https://issues.apache.org/jira/browse/HIVE-16586) | Fix Unit test failures when CachedStore is enabled |  Major | Metastore | Daniel Dai | Daniel Dai |
| [HIVE-16628](https://issues.apache.org/jira/browse/HIVE-16628) | Fix query25 when it uses a mix of MergeJoin and MapJoin |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16651](https://issues.apache.org/jira/browse/HIVE-16651) | LlapProtocolClientProxy stack trace when using llap input format |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-16652](https://issues.apache.org/jira/browse/HIVE-16652) | LlapInputFormat: Seeing "output error" WARN message |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-15725](https://issues.apache.org/jira/browse/HIVE-15725) | Make it possible to run checkstyle for a specific module |  Minor | . | Peter Vary | Peter Vary |
| [HIVE-16416](https://issues.apache.org/jira/browse/HIVE-16416) | Service: move constants out from HiveAuthFactory |  Major | Server Infrastructure | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-16617](https://issues.apache.org/jira/browse/HIVE-16617) | Clean up javadoc from errors in module hive-shims |  Major | . | Janos Gub | Janos Gub |
| [HIVE-16619](https://issues.apache.org/jira/browse/HIVE-16619) | Clean up javadoc from errors in module hive-serde |  Major | . | Janos Gub | Janos Gub |
| [HIVE-16647](https://issues.apache.org/jira/browse/HIVE-16647) | Improve the validation output to make the output to stderr and stdout more consistent |  Minor | Metastore | Aihua Xu | Aihua Xu |
| [HIVE-16642](https://issues.apache.org/jira/browse/HIVE-16642) | New Events created as part of replv2 potentially break replv1 |  Major | repl | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-16272](https://issues.apache.org/jira/browse/HIVE-16272) | support for drop function in incremental replication |  Major | HiveServer2 | anishek | anishek |
| [HIVE-16697](https://issues.apache.org/jira/browse/HIVE-16697) | Schema table validator should return a sorted list of missing tables |  Minor | Metastore | Naveen Gangam | Naveen Gangam |
| [HIVE-16207](https://issues.apache.org/jira/browse/HIVE-16207) | Add support for Complex Types in Fast SerDe |  Critical | Hive | Matt McCline | Teddy Choi |
| [HIVE-16684](https://issues.apache.org/jira/browse/HIVE-16684) | Bootstrap REPL DUMP shouldn't fail when table is dropped after fetching the table names. |  Major | Hive, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-16691](https://issues.apache.org/jira/browse/HIVE-16691) | Add test for more datatypes for LlapInputFormat |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-13673](https://issues.apache.org/jira/browse/HIVE-13673) | LLAP: handle case where no service instance is found on the host specified in the input split |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-16702](https://issues.apache.org/jira/browse/HIVE-16702) | Use LazyBinarySerDe for LLAP InputFormat |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-16579](https://issues.apache.org/jira/browse/HIVE-16579) | CachedStore: improvements to partition col stats caching and cache column stats for unpartitioned table |  Major | Metastore | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-16686](https://issues.apache.org/jira/browse/HIVE-16686) | repl invocations of distcp needs additional handling |  Major | repl | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-16706](https://issues.apache.org/jira/browse/HIVE-16706) | Bootstrap REPL DUMP shouldn't fail when a partition is dropped/renamed when dump in progress. |  Major | Hive, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-15834](https://issues.apache.org/jira/browse/HIVE-15834) | Add unit tests for org.json usage on master |  Major | Tests | Daniel Voros | Daniel Voros |
| [HIVE-16727](https://issues.apache.org/jira/browse/HIVE-16727) | REPL DUMP for insert event should't fail if the table is already dropped. |  Major | Hive, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-16765](https://issues.apache.org/jira/browse/HIVE-16765) | ParquetFileReader should be closed to avoid resource leak |  Critical | . | Colin Ma | Colin Ma |
| [HIVE-16764](https://issues.apache.org/jira/browse/HIVE-16764) | Support numeric as same as decimal |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16591](https://issues.apache.org/jira/browse/HIVE-16591) | DR for function Binaries on HDFS |  Major | HiveServer2 | anishek | anishek |
| [HIVE-16782](https://issues.apache.org/jira/browse/HIVE-16782) | Flaky Test: TestMiniLlapLocalCliDriver[subquery\_scalar] |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16372](https://issues.apache.org/jira/browse/HIVE-16372) | Enable DDL statement for non-native tables (add/remove table properties) |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16774](https://issues.apache.org/jira/browse/HIVE-16774) | Support position in ORDER BY when using SELECT \* |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16672](https://issues.apache.org/jira/browse/HIVE-16672) | Parquet vectorization doesn't work for tables with partition info |  Critical | . | Colin Ma | Colin Ma |
| [HIVE-16618](https://issues.apache.org/jira/browse/HIVE-16618) | Clean up javadoc from errors in module hive-common |  Major | . | Janos Gub | Janos Gub |
| [HIVE-16566](https://issues.apache.org/jira/browse/HIVE-16566) | Set column stats default as true when creating new tables/partitions |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16653](https://issues.apache.org/jira/browse/HIVE-16653) | Mergejoin should give itself a correct tag |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16775](https://issues.apache.org/jira/browse/HIVE-16775) | Fix HiveFilterAggregateTransposeRule when filter is always false |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16644](https://issues.apache.org/jira/browse/HIVE-16644) | Hook Change Manager to Insert Overwrite |  Major | Hive, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-15490](https://issues.apache.org/jira/browse/HIVE-15490) | REPL LOAD & DUMP support for INSERT events with change management |  Major | repl | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-16813](https://issues.apache.org/jira/browse/HIVE-16813) | Incremental REPL LOAD should load the events in the same sequence as it is dumped. |  Major | Hive, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-16837](https://issues.apache.org/jira/browse/HIVE-16837) | MetadataOnly optimizer conflicts with count distinct rewrite |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16729](https://issues.apache.org/jira/browse/HIVE-16729) | Improve location validator to check for blank paths. |  Minor | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-16600](https://issues.apache.org/jira/browse/HIVE-16600) | Refactor SetSparkReducerParallelism#needSetParallelism to enable parallel order by in multi\_insert cases |  Major | . | liyunzhang\_intel | liyunzhang\_intel |
| [HIVE-16715](https://issues.apache.org/jira/browse/HIVE-16715) | Clean up javadoc from errors in modules llap-client, metastore, spark-client |  Major | . | Janos Gub | Janos Gub |
| [HIVE-15051](https://issues.apache.org/jira/browse/HIVE-15051) | Test framework integration with findbugs, rat checks etc. |  Major | Testing Infrastructure | Peter Vary | Peter Vary |
| [HIVE-16912](https://issues.apache.org/jira/browse/HIVE-16912) | Improve table validator's performance against Oracle |  Minor | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-16797](https://issues.apache.org/jira/browse/HIVE-16797) | Enhance HiveFilterSetOpTransposeRule to remove union branches |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16838](https://issues.apache.org/jira/browse/HIVE-16838) | Improve plans for subqueries with non-equi co-related predicates |  Major | Logical Optimizer | Vineet Garg | Vineet Garg |
| [HIVE-16785](https://issues.apache.org/jira/browse/HIVE-16785) | Ensure replication actions are idempotent if any series of events are applied again. |  Major | Hive, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-16892](https://issues.apache.org/jira/browse/HIVE-16892) | Move creation of \_files from ReplCopyTask to analysis phase for boostrap replication |  Major | HiveServer2 | anishek | anishek |
| [HIVE-16901](https://issues.apache.org/jira/browse/HIVE-16901) | Distcp optimization - One distcp per ReplCopyTask |  Major | Hive, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-16750](https://issues.apache.org/jira/browse/HIVE-16750) | Support change management for rename table/partition. |  Major | Hive, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-16893](https://issues.apache.org/jira/browse/HIVE-16893) | move replication dump related work in semantic analysis phase to execution phase using a task |  Major | HiveServer2 | anishek | anishek |
| [HIVE-16981](https://issues.apache.org/jira/browse/HIVE-16981) | hive.optimize.bucketingsorting should compare the schema before removing RS |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14947](https://issues.apache.org/jira/browse/HIVE-14947) | Add support for Acid 2 in Merge |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17021](https://issues.apache.org/jira/browse/HIVE-17021) | Support replication of concatenate operation. |  Major | Hive, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17005](https://issues.apache.org/jira/browse/HIVE-17005) | Ensure REPL DUMP and REPL LOAD are authorized properly |  Major | repl | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-16926](https://issues.apache.org/jira/browse/HIVE-16926) | LlapTaskUmbilicalExternalClient should not start new umbilical server for every fragment request |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-16996](https://issues.apache.org/jira/browse/HIVE-16996) | Add HLL as an alternative to FM sketch to compute stats |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15758](https://issues.apache.org/jira/browse/HIVE-15758) | Allow correlated scalar subqueries with aggregates which has non-equi join predicates |  Major | Logical Optimizer | Vineet Garg | Vineet Garg |
| [HIVE-17091](https://issues.apache.org/jira/browse/HIVE-17091) | "Timed out getting readerEvents" error from external LLAP client |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-17137](https://issues.apache.org/jira/browse/HIVE-17137) | Fix javolution conflict |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16997](https://issues.apache.org/jira/browse/HIVE-16997) | Extend object store to store and use bit vectors |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-17168](https://issues.apache.org/jira/browse/HIVE-17168) | Create separate module for stand alone metastore |  Major | Metastore | Alan Gates | Alan Gates |
| [HIVE-17087](https://issues.apache.org/jira/browse/HIVE-17087) | Remove unnecessary HoS DPP trees during map-join conversion |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-17153](https://issues.apache.org/jira/browse/HIVE-17153) | Flaky test: TestMiniSparkOnYarnCliDriver[spark\_dynamic\_partition\_pruning] |  Major | Spark, Test | Sahil Takiar | Sahil Takiar |
| [HIVE-17185](https://issues.apache.org/jira/browse/HIVE-17185) | TestHiveMetaStoreStatsMerge.testStatsMerge is failing |  Major | Metastore, Test | Ashutosh Chauhan | Pengcheng Xiong |
| [HIVE-16998](https://issues.apache.org/jira/browse/HIVE-16998) | Add config to enable HoS DPP only for map-joins |  Major | Logical Optimizer, Spark | Sahil Takiar | Janaki Lahorani |
| [HIVE-17167](https://issues.apache.org/jira/browse/HIVE-17167) | Create metastore specific configuration tool |  Major | Metastore | Alan Gates | Alan Gates |
| [HIVE-16974](https://issues.apache.org/jira/browse/HIVE-16974) | Change the sort key for the schema tool validator to be \<ID\> |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-17212](https://issues.apache.org/jira/browse/HIVE-17212) | Dynamic add partition by insert shouldn't generate INSERT event. |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17170](https://issues.apache.org/jira/browse/HIVE-17170) | Move thrift generated code to stand alone metastore |  Major | Metastore | Alan Gates | Alan Gates |
| [HIVE-16294](https://issues.apache.org/jira/browse/HIVE-16294) | Support snapshot for truncate table |  Major | Query Processor | Vihang Karajgaonkar | Barna Zsombor Klara |
| [HIVE-16895](https://issues.apache.org/jira/browse/HIVE-16895) |  Multi-threaded execution of bootstrap dump of partitions |  Major | HiveServer2 | anishek | anishek |
| [HIVE-17247](https://issues.apache.org/jira/browse/HIVE-17247) | HoS DPP: UDFs on the partition column side does not evaluate correctly |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-16896](https://issues.apache.org/jira/browse/HIVE-16896) | move replication load related work in semantic analysis phase to execution phase using a task |  Major | . | anishek | anishek |
| [HIVE-15705](https://issues.apache.org/jira/browse/HIVE-15705) | Event replication for constraints |  Major | repl | Daniel Dai | Daniel Dai |
| [HIVE-17224](https://issues.apache.org/jira/browse/HIVE-17224) | Move JDO classes to standalone metastore |  Major | Metastore | Alan Gates | Alan Gates |
| [HIVE-17289](https://issues.apache.org/jira/browse/HIVE-17289) | EXPORT and IMPORT shouldn't perform distcp with doAs privileged user. |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-16990](https://issues.apache.org/jira/browse/HIVE-16990) | REPL LOAD should update last repl ID only after successful copy of data files. |  Major | Hive, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17195](https://issues.apache.org/jira/browse/HIVE-17195) | Long chain of tasks created by REPL LOAD shouldn't cause stack corruption. |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17346](https://issues.apache.org/jira/browse/HIVE-17346) | TestMiniSparkOnYarnCliDriver[spark\_dynamic\_partition\_pruning] is failing every time |  Major | Test | Peter Vary | Peter Vary |
| [HIVE-17347](https://issues.apache.org/jira/browse/HIVE-17347) | TestMiniSparkOnYarnCliDriver[spark\_dynamic\_partition\_pruning\_mapjoin\_only] is failing every time |  Major | Test | Peter Vary | Peter Vary |
| [HIVE-14747](https://issues.apache.org/jira/browse/HIVE-14747) | Remove JAVA paths from profiles by sending them from ptest-client |  Major | Hive, Testing Infrastructure | Sergio Peña | Barna Zsombor Klara |
| [HIVE-17316](https://issues.apache.org/jira/browse/HIVE-17316) | Use String.startsWith for the hidden configuration variables |  Major | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-17292](https://issues.apache.org/jira/browse/HIVE-17292) | Change TestMiniSparkOnYarnCliDriver test configuration to use the configured cores |  Major | Spark, Test | Peter Vary | Peter Vary |
| [HIVE-17132](https://issues.apache.org/jira/browse/HIVE-17132) | Add InterfaceAudience and InterfaceStability annotations for UDF APIs |  Major | UDF | Sahil Takiar | Sahil Takiar |
| [HIVE-17319](https://issues.apache.org/jira/browse/HIVE-17319) | Make BoneCp configurable using hive properties in hive-site.xml |  Major | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-17215](https://issues.apache.org/jira/browse/HIVE-17215) | Streaming Ingest API writing unbucketed tables |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17318](https://issues.apache.org/jira/browse/HIVE-17318) | Make Hikari CP configurable using hive properties in hive-site.xml |  Major | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-17205](https://issues.apache.org/jira/browse/HIVE-17205) | add functional support for unbucketed tables |  Major | Transactions | Eugene Koifman | Eugene Koifman |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-15708](https://issues.apache.org/jira/browse/HIVE-15708) | Upgrade calcite version to 1.12 |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Remus Rusanu |
| [HIVE-16411](https://issues.apache.org/jira/browse/HIVE-16411) | Revert HIVE-15199 |  Blocker | . | Ashutosh Chauhan | Sahil Takiar |
| [HIVE-16058](https://issues.apache.org/jira/browse/HIVE-16058) | Disable falling back to non-cbo for SemanticException for tests |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-16474](https://issues.apache.org/jira/browse/HIVE-16474) | Upgrade Druid version to 0.10 |  Major | Druid integration | Ashutosh Chauhan | Nishant Bangarwa |


