
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

## Release 3.0.0 - 2018-05-21

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
| [HIVE-17241](https://issues.apache.org/jira/browse/HIVE-17241) | Change metastore classes to not use the shims |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-17307](https://issues.apache.org/jira/browse/HIVE-17307) | Change the metastore to not use the metrics code in hive/common |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-17519](https://issues.apache.org/jira/browse/HIVE-17519) | Transpose column stats display |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17540](https://issues.apache.org/jira/browse/HIVE-17540) | remove feature: describe pretty |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17652](https://issues.apache.org/jira/browse/HIVE-17652) | retire ANALYZE TABLE ... PARTIALSCAN |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17812](https://issues.apache.org/jira/browse/HIVE-17812) | Move remaining classes that HiveMetaStore depends on |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-6590](https://issues.apache.org/jira/browse/HIVE-6590) | Hive does not work properly with boolean partition columns (wrong results and inserts to incorrect HDFS path) |  Major | Database/Schema, Metastore | Lenni Kuff | Zoltan Haindrich |
| [HIVE-18552](https://issues.apache.org/jira/browse/HIVE-18552) | Split hive.strict.checks.large.query into two configs |  Major | Hive | Sahil Takiar | Sahil Takiar |


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
| [HIVE-17366](https://issues.apache.org/jira/browse/HIVE-17366) | Constraint replication in bootstrap |  Major | repl | Daniel Dai | Daniel Dai |
| [HIVE-17466](https://issues.apache.org/jira/browse/HIVE-17466) | Metastore API to list unique partition-key-value combinations |  Major | Metastore | Mithun Radhakrishnan | Thiruvel Thirumoolan |
| [HIVE-17432](https://issues.apache.org/jira/browse/HIVE-17432) | Enable join and aggregate materialized view rewriting |  Major | Hive | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-16917](https://issues.apache.org/jira/browse/HIVE-16917) | HiveServer2 guard rails - Limit concurrent connections from user |  Major | HiveServer2 | Thejas M Nair | Prasanth Jayachandran |
| [HIVE-17717](https://issues.apache.org/jira/browse/HIVE-17717) | Enable rule to push post-aggregations into Druid |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17361](https://issues.apache.org/jira/browse/HIVE-17361) | Support LOAD DATA for transactional tables |  Critical | Transactions | Wei Zheng | Eugene Koifman |
| [HIVE-17710](https://issues.apache.org/jira/browse/HIVE-17710) | LockManager should only lock Managed tables |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18361](https://issues.apache.org/jira/browse/HIVE-18361) | Extend shared work optimizer to reuse computation beyond work boundaries |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17481](https://issues.apache.org/jira/browse/HIVE-17481) | LLAP workload management |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18347](https://issues.apache.org/jira/browse/HIVE-18347) | Allow pluggable dynamic lookup of Hive Metastores from HiveServer2 |  Major | Metastore | Szehon Ho | Szehon Ho |
| [HIVE-16605](https://issues.apache.org/jira/browse/HIVE-16605) | Enforce NOT NULL constraints |  Major | . | Carter Shanklin | Vineet Garg |
| [HIVE-18373](https://issues.apache.org/jira/browse/HIVE-18373) | Make it easier to search for column name in a table |  Minor | . | Siddhant Saraf | Madhudeep Petwal |
| [HIVE-18726](https://issues.apache.org/jira/browse/HIVE-18726) | Implement DEFAULT constraint |  Major | Query Planning, Query Processor | Vineet Garg | Vineet Garg |
| [HIVE-17626](https://issues.apache.org/jira/browse/HIVE-17626) | Query reoptimization using cached runtime statistics |  Major | Logical Optimizer | Prasanth Jayachandran | Zoltan Haindrich |
| [HIVE-18835](https://issues.apache.org/jira/browse/HIVE-18835) | JDBC standalone jar download link in ambari |  Major | Hive | Miklos Gergely | Miklos Gergely |
| [HIVE-18281](https://issues.apache.org/jira/browse/HIVE-18281) | HiveServer2 HA for LLAP and Workload Manager |  Major | HiveServer2 | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18953](https://issues.apache.org/jira/browse/HIVE-18953) | Implement CHECK constraint |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-19059](https://issues.apache.org/jira/browse/HIVE-19059) | Support DEFAULT keyword with INSERT and UPDATE |  Major | SQL | Vineet Garg | Vineet Garg |
| [HIVE-18814](https://issues.apache.org/jira/browse/HIVE-18814) | Support Add Partition For Acid tables |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18841](https://issues.apache.org/jira/browse/HIVE-18841) | Support authorization of UDF usage in hive |  Critical | . | Thejas M Nair | Thejas M Nair |
| [HIVE-18739](https://issues.apache.org/jira/browse/HIVE-18739) | Add support for Import/Export from Acid table |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17159](https://issues.apache.org/jira/browse/HIVE-17159) | Make metastore a separately releasable module |  Major | Metastore, Standalone Metastore | Alan Gates | Alan Gates |


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
| [HIVE-17308](https://issues.apache.org/jira/browse/HIVE-17308) | Improvement in join cardinality estimation |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-17362](https://issues.apache.org/jira/browse/HIVE-17362) | The MAX\_PREWARM\_TIME should be configurable on HoS |  Major | Spark | Peter Vary | Peter Vary |
| [HIVE-16614](https://issues.apache.org/jira/browse/HIVE-16614) | Support "set local time zone" statement |  Major | . | Carter Shanklin | Jesus Camacho Rodriguez |
| [HIVE-17341](https://issues.apache.org/jira/browse/HIVE-17341) | DbTxnManger.startHeartbeat() - randomize initial delay |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17340](https://issues.apache.org/jira/browse/HIVE-17340) | TxnHandler.checkLock() - reduce number of SQL statements |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17408](https://issues.apache.org/jira/browse/HIVE-17408) | replication distcp should only be invoked if number of files AND file size cross configured limits |  Trivial | HiveServer2 | anishek | anishek |
| [HIVE-16811](https://issues.apache.org/jira/browse/HIVE-16811) | Estimate statistics in absence of stats |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-17513](https://issues.apache.org/jira/browse/HIVE-17513) | Refactor PathUtils to not contain instance fields |  Minor | repl | Tao Li | Tao Li |
| [HIVE-15665](https://issues.apache.org/jira/browse/HIVE-15665) | LLAP: OrcFileMetadata objects in cache can impact heap usage |  Major | llap | Rajesh Balamohan | Sergey Shelukhin |
| [HIVE-17493](https://issues.apache.org/jira/browse/HIVE-17493) | Improve PKFK cardinality estimation in Physical planning |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-17422](https://issues.apache.org/jira/browse/HIVE-17422) | Skip non-native/temporary tables for all major table/partition related scenarios |  Major | repl | Tao Li | Tao Li |
| [HIVE-17542](https://issues.apache.org/jira/browse/HIVE-17542) | Make HoS CombineEquivalentWorkResolver Configurable |  Major | Physical Optimizer, Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-17550](https://issues.apache.org/jira/browse/HIVE-17550) | Remove unreferenced q.out-s |  Major | Tests | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17426](https://issues.apache.org/jira/browse/HIVE-17426) | Execution framework in hive to run tasks in parallel |  Major | HiveServer2 | anishek | anishek |
| [HIVE-17253](https://issues.apache.org/jira/browse/HIVE-17253) | Adding SUMMARY statement to HPL/SQL |  Major | hpl/sql | Dmitry Tolpeko | Dmitry Tolpeko |
| [HIVE-17536](https://issues.apache.org/jira/browse/HIVE-17536) | StatsUtil::getBasicStatForTable doesn't distinguish b/w absence of statistics or zero stats |  Major | Statistics | Vineet Garg | Vineet Garg |
| [HIVE-17538](https://issues.apache.org/jira/browse/HIVE-17538) | Enhance estimation of stats to estimate even if only one column is missing stats |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-16084](https://issues.apache.org/jira/browse/HIVE-16084) | SHOW COMPACTIONS should display CompactionID |  Minor | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16360](https://issues.apache.org/jira/browse/HIVE-16360) | Improve "No delta files or original files found to compact in" message |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17587](https://issues.apache.org/jira/browse/HIVE-17587) | Remove unnecessary filter from getPartitionsFromPartitionIds call |  Major | Metastore | Tao Li | Tao Li |
| [HIVE-17604](https://issues.apache.org/jira/browse/HIVE-17604) | Add druid properties to conf white list |  Major | Configuration, Druid integration | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-17611](https://issues.apache.org/jira/browse/HIVE-17611) | Add new LazyBinary SerDe for faster writes |  Major | Serializers/Deserializers | Jason Dere | Jason Dere |
| [HIVE-17543](https://issues.apache.org/jira/browse/HIVE-17543) | Enable PerfCliDriver for HoS |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-17606](https://issues.apache.org/jira/browse/HIVE-17606) | Improve security for DB notification related APIs |  Major | Metastore | Tao Li | Tao Li |
| [HIVE-17288](https://issues.apache.org/jira/browse/HIVE-17288) | LlapOutputFormatService: Increase netty event loop threads |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-17400](https://issues.apache.org/jira/browse/HIVE-17400) | Estimate stats in absence of stats for complex types |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-16143](https://issues.apache.org/jira/browse/HIVE-16143) | Improve msck repair batching |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-17614](https://issues.apache.org/jira/browse/HIVE-17614) | Notification\_sequence initialization using SQL statement which is compatible with Mysql 5.1 |  Major | HiveServer2 | anishek | anishek |
| [HIVE-17569](https://issues.apache.org/jira/browse/HIVE-17569) | Compare filtered output files in BeeLine tests |  Major | Testing Infrastructure | Marta Kuczora | Marta Kuczora |
| [HIVE-15053](https://issues.apache.org/jira/browse/HIVE-15053) | Beeline#addlocaldriver - reduce classpath scanning |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17078](https://issues.apache.org/jira/browse/HIVE-17078) | Add more logs to MapredLocalTask |  Minor | . | Yibing Shi | Barna Zsombor Klara |
| [HIVE-17732](https://issues.apache.org/jira/browse/HIVE-17732) | Minor Improvements - org.apache.hive.hcatalog.data.JsonSerDe.java |  Trivial | Serializers/Deserializers | BELUGA BEHR | BELUGA BEHR |
| [HIVE-17740](https://issues.apache.org/jira/browse/HIVE-17740) | HiveConf - Use SLF4J Parameterization |  Trivial | Configuration, Hive | BELUGA BEHR | BELUGA BEHR |
| [HIVE-17742](https://issues.apache.org/jira/browse/HIVE-17742) | AccumuloIndexedOutputFormat Use SLF4J |  Trivial | Accumulo Storage Handler | BELUGA BEHR | BELUGA BEHR |
| [HIVE-17609](https://issues.apache.org/jira/browse/HIVE-17609) | Tool to manipulate delegation tokens |  Major | Metastore, Security | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17669](https://issues.apache.org/jira/browse/HIVE-17669) | Cache to optimize SearchArgument deserialization |  Major | ORC, Query Processor | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17747](https://issues.apache.org/jira/browse/HIVE-17747) | HMS DropTableMessage should include the full table object |  Major | HCatalog, Metastore | Dan Burkert | Dan Burkert |
| [HIVE-17787](https://issues.apache.org/jira/browse/HIVE-17787) | Apply more filters on the BeeLine test output files (follow-up on HIVE-17569) |  Minor | Testing Infrastructure | Marta Kuczora | Marta Kuczora |
| [HIVE-17805](https://issues.apache.org/jira/browse/HIVE-17805) | SchemaTool validate locations should not return exit 1 |  Minor | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16604](https://issues.apache.org/jira/browse/HIVE-16604) | Use [NOT] ENFORCED for column constraint characteristics |  Major | . | Carter Shanklin | Jesus Camacho Rodriguez |
| [HIVE-17054](https://issues.apache.org/jira/browse/HIVE-17054) | Expose SQL database constraints to Calcite |  Major | Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17793](https://issues.apache.org/jira/browse/HIVE-17793) | Parameterize Logging Messages |  Trivial | Hive | BELUGA BEHR | BELUGA BEHR |
| [HIVE-17578](https://issues.apache.org/jira/browse/HIVE-17578) | Create a TableRef object for Table/Partition |  Major | . | Zoltan Haindrich | Gergely Hajós |
| [HIVE-17799](https://issues.apache.org/jira/browse/HIVE-17799) | Add Ellipsis For Truncated Query In Hive Lock |  Trivial | Hive | BELUGA BEHR | BELUGA BEHR |
| [HIVE-17847](https://issues.apache.org/jira/browse/HIVE-17847) | Exclude net.hydromatic:aggdesigner-algorithm jar as compile and runtime dependency |  Major | CBO | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-9447](https://issues.apache.org/jira/browse/HIVE-9447) | Metastore: inefficient Oracle query for removing unused column descriptors when add/drop table/partition |  Major | Metastore | Selina Zhang | Selina Zhang |
| [HIVE-17766](https://issues.apache.org/jira/browse/HIVE-17766) | Support non-equi LEFT SEMI JOIN |  Major | Query Planning | Vineet Garg | Jesus Camacho Rodriguez |
| [HIVE-16663](https://issues.apache.org/jira/browse/HIVE-16663) | String Caching For Rows |  Minor | Beeline | BELUGA BEHR | BELUGA BEHR |
| [HIVE-17901](https://issues.apache.org/jira/browse/HIVE-17901) | org.apache.hadoop.hive.ql.exec.Utilities - Use Logging Parameterization and More |  Minor | Hive | BELUGA BEHR | BELUGA BEHR |
| [HIVE-17912](https://issues.apache.org/jira/browse/HIVE-17912) | org.apache.hadoop.hive.metastore.security.DBTokenStore - Parameterize Logging |  Trivial | HiveServer2 | BELUGA BEHR | BELUGA BEHR |
| [HIVE-16834](https://issues.apache.org/jira/browse/HIVE-16834) | Review org.apache.hadoop.hive.serde2.ByteStream |  Trivial | Serializers/Deserializers | BELUGA BEHR | BELUGA BEHR |
| [HIVE-17458](https://issues.apache.org/jira/browse/HIVE-17458) | VectorizedOrcAcidRowBatchReader doesn't handle 'original' files |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16881](https://issues.apache.org/jira/browse/HIVE-16881) | Make extractSqlBoolean More Consistent |  Trivial | Metastore | BELUGA BEHR | BELUGA BEHR |
| [HIVE-16856](https://issues.apache.org/jira/browse/HIVE-16856) | Allow For Customization Of Buffer Size In MapJoinTableContainerSerDe |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HIVE-16833](https://issues.apache.org/jira/browse/HIVE-16833) | Review org.apache.hive.jdbc.HiveMetaDataResultSet |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HIVE-17932](https://issues.apache.org/jira/browse/HIVE-17932) | Remove option to control partition level basic stats fetching |  Major | Statistics | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17962](https://issues.apache.org/jira/browse/HIVE-17962) | org.apache.hadoop.hive.metastore.security.MemoryTokenStore - Parameterize Logging |  Trivial | HiveServer2 | BELUGA BEHR | BELUGA BEHR |
| [HIVE-17877](https://issues.apache.org/jira/browse/HIVE-17877) | HoS: combine equivalent DPP sink works |  Major | Spark | Rui Li | Rui Li |
| [HIVE-16736](https://issues.apache.org/jira/browse/HIVE-16736) | General Improvements to BufferedRows |  Minor | . | BELUGA BEHR | BELUGA BEHR |
| [HIVE-17965](https://issues.apache.org/jira/browse/HIVE-17965) | Remove HIVELIMITTABLESCANPARTITION support |  Trivial | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17767](https://issues.apache.org/jira/browse/HIVE-17767) | Rewrite correlated EXISTS/IN subqueries into LEFT SEMI JOIN |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-17229](https://issues.apache.org/jira/browse/HIVE-17229) | HiveMetastore HMSHandler locks during initialization, even though its static variable threadPool is not null |  Major | Metastore | Zac Zhou | Zac Zhou |
| [HIVE-18010](https://issues.apache.org/jira/browse/HIVE-18010) | Update hbase version |  Major | HBase Handler | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-17911](https://issues.apache.org/jira/browse/HIVE-17911) | org.apache.hadoop.hive.metastore.ObjectStore - Tune Up |  Minor | Hive | BELUGA BEHR | BELUGA BEHR |
| [HIVE-17376](https://issues.apache.org/jira/browse/HIVE-17376) | Upgrade snappy version to 1.1.4 |  Major | Hive | Aihua Xu | Aihua Xu |
| [HIVE-18008](https://issues.apache.org/jira/browse/HIVE-18008) | Add optimization rule to remove gby from right side of left semi-join |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-16075](https://issues.apache.org/jira/browse/HIVE-16075) | MetaStore needs to reinitialize log4j to allow log specific settings via hiveconf take effect |  Minor | Metastore | yunfei liu | yunfei liu |
| [HIVE-17969](https://issues.apache.org/jira/browse/HIVE-17969) | Metastore to alter table in batches of partitions when renaming table |  Major | Metastore | Adam Szita | Adam Szita |
| [HIVE-18009](https://issues.apache.org/jira/browse/HIVE-18009) | Multiple lateral view query is slow on hive on spark |  Major | Spark | Aihua Xu | Aihua Xu |
| [HIVE-18023](https://issues.apache.org/jira/browse/HIVE-18023) | Redact the expression in lineage info |  Trivial | Logging | Aihua Xu | Aihua Xu |
| [HIVE-17964](https://issues.apache.org/jira/browse/HIVE-17964) | HoS: some spark configs doesn't require re-creating a session |  Minor | Spark | Rui Li | Rui Li |
| [HIVE-17631](https://issues.apache.org/jira/browse/HIVE-17631) | upgrade orc to 1.4.1 |  Major | . | Saijin Huang | Sergey Shelukhin |
| [HIVE-17898](https://issues.apache.org/jira/browse/HIVE-17898) | Explain plan output enhancement |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-18123](https://issues.apache.org/jira/browse/HIVE-18123) | Explain formatted improve column expression map display |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-18043](https://issues.apache.org/jira/browse/HIVE-18043) | Vectorization: Support List type in MapWork |  Major | . | Colin Ma | Colin Ma |
| [HIVE-17870](https://issues.apache.org/jira/browse/HIVE-17870) | Update NoDeleteRollingFileAppender to use Log4j2 api |  Major | . | Aihua Xu | Andrew Sherman |
| [HIVE-16890](https://issues.apache.org/jira/browse/HIVE-16890) | org.apache.hadoop.hive.serde2.io.HiveVarcharWritable - Adds Superfluous Wrapper |  Trivial | Serializers/Deserializers | BELUGA BEHR | BELUGA BEHR |
| [HIVE-17988](https://issues.apache.org/jira/browse/HIVE-17988) | Replace patch utility usage with git apply in ptest |  Major | Testing Infrastructure | Zoltan Haindrich | Daniel Voros |
| [HIVE-18185](https://issues.apache.org/jira/browse/HIVE-18185) | update insert\_values\_orig\_table\_use\_metadata.q.out |  Major | Tests | Zoltan Haindrich | Bertalan Kondrat |
| [HIVE-18173](https://issues.apache.org/jira/browse/HIVE-18173) | Improve plans for correlated subqueries with non-equi predicate |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-18251](https://issues.apache.org/jira/browse/HIVE-18251) | Loosen restriction for some checks |  Major | Query Planning | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-14069](https://issues.apache.org/jira/browse/HIVE-14069) | update curator version to 2.12.0 |  Major | HiveServer2, Metastore | Thejas M Nair | Jason Dere |
| [HIVE-18246](https://issues.apache.org/jira/browse/HIVE-18246) | Replace toString with getExprString in AbstractOperatorDesc::getColumnExprMapForExplain |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-18283](https://issues.apache.org/jira/browse/HIVE-18283) | Better error message and error code for HoS exceptions |  Major | Spark | Chao Sun | Chao Sun |
| [HIVE-18159](https://issues.apache.org/jira/browse/HIVE-18159) | Vectorization: Support Map type in MapWork |  Major | . | Colin Ma | Colin Ma |
| [HIVE-15393](https://issues.apache.org/jira/browse/HIVE-15393) | Update Guava version |  Minor | . | slim bouguerra | Ashutosh Chauhan |
| [HIVE-16970](https://issues.apache.org/jira/browse/HIVE-16970) | General Improvements To org.apache.hadoop.hive.metastore.cache.CacheUtils |  Trivial | Metastore | BELUGA BEHR | BELUGA BEHR |
| [HIVE-18386](https://issues.apache.org/jira/browse/HIVE-18386) | Create dummy materialized views registry and make it configurable |  Major | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18462](https://issues.apache.org/jira/browse/HIVE-18462) | Explain formatted for queries with map join has columnExprMap with unformatted column name |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-18061](https://issues.apache.org/jira/browse/HIVE-18061) | q.outs: be more selective with masking hdfs paths |  Major | . | Zoltan Haindrich | Laszlo Bodor |
| [HIVE-18510](https://issues.apache.org/jira/browse/HIVE-18510) | Enable running checkstyle on test sources as well |  Minor | . | Adam Szita | Adam Szita |
| [HIVE-15631](https://issues.apache.org/jira/browse/HIVE-15631) | Optimize for hive client logs , you can filter the log for each session itself. |  Major | CLI, Clients, Hive | tartarus | tartarus |
| [HIVE-16805](https://issues.apache.org/jira/browse/HIVE-16805) | Utilities isEmptyPath Logging Too Chatty and Uses Bad Format |  Minor | Query Processor | BELUGA BEHR | BELUGA BEHR |
| [HIVE-18048](https://issues.apache.org/jira/browse/HIVE-18048) | Vectorization: Support Struct type with vectorization |  Major | . | Colin Ma | Colin Ma |
| [HIVE-18586](https://issues.apache.org/jira/browse/HIVE-18586) | Upgrade Derby to 10.14.1.0 |  Major | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-18448](https://issues.apache.org/jira/browse/HIVE-18448) | Drop Support For Indexes From Apache Hive |  Minor | Indexing | BELUGA BEHR | Zoltan Haindrich |
| [HIVE-18387](https://issues.apache.org/jira/browse/HIVE-18387) | Minimize time that REBUILD locks the materialized view |  Major | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17871](https://issues.apache.org/jira/browse/HIVE-17871) | Add non nullability flag to druid time column |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-18625](https://issues.apache.org/jira/browse/HIVE-18625) | SessionState Not Checking For Directory Creation Result |  Minor | HiveServer2 | BELUGA BEHR | Andrew Sherman |
| [HIVE-18706](https://issues.apache.org/jira/browse/HIVE-18706) | Ensure each Yetus execution has its own separate working dir |  Major | . | Adam Szita | Adam Szita |
| [HIVE-18259](https://issues.apache.org/jira/browse/HIVE-18259) | Automatic cleanup of invalidation cache for materialized views |  Major | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18654](https://issues.apache.org/jira/browse/HIVE-18654) | Add Hiveserver2 specific HADOOP\_OPTS environment variable |  Minor | HiveServer2 | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-18540](https://issues.apache.org/jira/browse/HIVE-18540) |  remove logic for wide terminal to display in-place updates |  Minor | . | Song Jun | Song Jun |
| [HIVE-18808](https://issues.apache.org/jira/browse/HIVE-18808) | Make compaction more robust when stats update fails |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18158](https://issues.apache.org/jira/browse/HIVE-18158) | Remove OrcRawRecordMerger.ReaderPairAcid.statementId |  Minor | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18730](https://issues.apache.org/jira/browse/HIVE-18730) | Use LLAP as execution engine for Druid mini Cluster Tests |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-18797](https://issues.apache.org/jira/browse/HIVE-18797) | ExprConstNodeDesc's getExprString should put appropriate qualifier with literals |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-18848](https://issues.apache.org/jira/browse/HIVE-18848) | Improve readability of filter conditions in explain plan when CBO is run |  Minor | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18793](https://issues.apache.org/jira/browse/HIVE-18793) | Round udf should support variable as second argument |  Major | UDF | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-18051](https://issues.apache.org/jira/browse/HIVE-18051) | qfiles: dataset support |  Major | Testing Infrastructure | Zoltan Haindrich | Laszlo Bodor |
| [HIVE-16855](https://issues.apache.org/jira/browse/HIVE-16855) | org.apache.hadoop.hive.ql.exec.mr.HashTableLoader Improvements |  Minor | . | BELUGA BEHR | BELUGA BEHR |
| [HIVE-18343](https://issues.apache.org/jira/browse/HIVE-18343) | Remove LinkedList from ColumnStatsSemanticAnalyzer.java |  Trivial | HiveServer2 | BELUGA BEHR | BELUGA BEHR |
| [HIVE-18718](https://issues.apache.org/jira/browse/HIVE-18718) | Integer like types throws error when there is a mismatch |  Major | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-18716](https://issues.apache.org/jira/browse/HIVE-18716) | Delete unnecessary parameters from TaskFactory |  Trivial | HiveServer2 | Gergely Hajós | Gergely Hajós |
| [HIVE-16858](https://issues.apache.org/jira/browse/HIVE-16858) | Acumulo Utils Improvements |  Trivial | Accumulo Storage Handler | BELUGA BEHR | BELUGA BEHR |
| [HIVE-18344](https://issues.apache.org/jira/browse/HIVE-18344) | Remove LinkedList from SharedWorkOptimizer.java |  Trivial | HiveServer2 | BELUGA BEHR | BELUGA BEHR |
| [HIVE-18342](https://issues.apache.org/jira/browse/HIVE-18342) | Remove LinkedList from HiveAlterHandler.java |  Trivial | HiveServer2 | BELUGA BEHR | BELUGA BEHR |
| [HIVE-18984](https://issues.apache.org/jira/browse/HIVE-18984) | Make time window configurable per materialized view |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18979](https://issues.apache.org/jira/browse/HIVE-18979) | Enable AggregateReduceFunctionsRule from Calcite |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18780](https://issues.apache.org/jira/browse/HIVE-18780) | Improve schema discovery For Druid Storage Handler |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-18825](https://issues.apache.org/jira/browse/HIVE-18825) | Define ValidTxnList before starting query optimization |  Major | Transactions | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18727](https://issues.apache.org/jira/browse/HIVE-18727) | Update GenericUDFEnforceNotNullConstraint to throw an ERROR instead of Exception on failure |  Major | . | Vineet Garg | Igor Kryvenko |
| [HIVE-18995](https://issues.apache.org/jira/browse/HIVE-18995) | Vectorization: Add option to suppress "Execution mode: vectorized" for testing purposes |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-19092](https://issues.apache.org/jira/browse/HIVE-19092) | Somne improvement in bin shell scripts |  Minor | . | Saijin Huang | Saijin Huang |
| [HIVE-19033](https://issues.apache.org/jira/browse/HIVE-19033) | Provide an option to purge LLAP IO cache |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18878](https://issues.apache.org/jira/browse/HIVE-18878) | Lower MoveTask Lock Logging to Debug |  Minor | Locking | BELUGA BEHR | Igor Kryvenko |
| [HIVE-18857](https://issues.apache.org/jira/browse/HIVE-18857) | Store default value text instead of default value expression in metastore |  Major | SQL | Vineet Garg | Vineet Garg |
| [HIVE-18839](https://issues.apache.org/jira/browse/HIVE-18839) | Implement incremental rebuild for materialized views (only insert operations in source tables) |  Major | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18564](https://issues.apache.org/jira/browse/HIVE-18564) | Add a mapper to make plan transformations more easily understandable |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18410](https://issues.apache.org/jira/browse/HIVE-18410) | [Performance][Avro] Reading flat Avro tables is very expensive in Hive |  Major | . | Ratandeep Ratti | Ratandeep Ratti |
| [HIVE-19001](https://issues.apache.org/jira/browse/HIVE-19001) | ALTER TABLE ADD CONSTRAINT support for CHECK constraint |  Major | Hive | Aswathy Chellammal Sreekumar | Vineet Garg |
| [HIVE-18743](https://issues.apache.org/jira/browse/HIVE-18743) | CREATE TABLE on S3 data can be extremely slow. DO\_NOT\_UPDATE\_STATS workaround is buggy. |  Major | Metastore | Alexander Behm | Alexander Kolbasov |
| [HIVE-18423](https://issues.apache.org/jira/browse/HIVE-18423) | Support pushing computation from the optimizer for JDBC storage handler tables |  Major | . | Jonathan Doron | Jonathan Doron |
| [HIVE-19288](https://issues.apache.org/jira/browse/HIVE-19288) | Implement protobuf logging hive hook. |  Major | Hive | Harish Jaiprakash | Harish Jaiprakash |
| [HIVE-18770](https://issues.apache.org/jira/browse/HIVE-18770) | Additional tests and fixes for materialized view rewriting |  Major | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17824](https://issues.apache.org/jira/browse/HIVE-17824) | msck repair table should drop the missing partitions from metastore |  Major | . | Vihang Karajgaonkar | Janaki Lahorani |
| [HIVE-19415](https://issues.apache.org/jira/browse/HIVE-19415) | Support CORS for all HS2 web endpoints |  Minor | Web UI | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-19344](https://issues.apache.org/jira/browse/HIVE-19344) | Change default value of msck.repair.batch.size |  Minor | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-19161](https://issues.apache.org/jira/browse/HIVE-19161) | Add authorizations to information schema |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-19466](https://issues.apache.org/jira/browse/HIVE-19466) | Update constraint violation error message |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-19534](https://issues.apache.org/jira/browse/HIVE-19534) | Allow implementations to access member variables of AbstractRecordWriter |  Major | Streaming | Matt Burgess | Prasanth Jayachandran |
| [HIVE-3186](https://issues.apache.org/jira/browse/HIVE-3186) | support having without a grouping operation (per ISO-SQL 2011) |  Major | SQL | N Campbell |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16282](https://issues.apache.org/jira/browse/HIVE-16282) | Semijoin: Disable slow-start for the bloom filter aggregate task |  Major | . | Gopal V | Deepak Jaiswal |
| [HIVE-16298](https://issues.apache.org/jira/browse/HIVE-16298) | Add config to specify multi-column joins have correlated columns |  Major | . | Jason Dere | Siddharth Seth |
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
| [HIVE-16689](https://issues.apache.org/jira/browse/HIVE-16689) | Correlated scalar subquery with comparison to constant in predicate fails |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-15160](https://issues.apache.org/jira/browse/HIVE-15160) | Can't order by an unselected column |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16746](https://issues.apache.org/jira/browse/HIVE-16746) | Reduce number of index lookups for same table in IndexWhereTaskDispatcher |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-16613](https://issues.apache.org/jira/browse/HIVE-16613) | SaslClientHandler.sendHello is eating exceptions |  Major | Spark | Rui Li | Rui Li |
| [HIVE-16675](https://issues.apache.org/jira/browse/HIVE-16675) | Fix ConcurrentModificationException in SparkClientImpl#startDriver |  Major | . | liyunzhang | liyunzhang |
| [HIVE-16554](https://issues.apache.org/jira/browse/HIVE-16554) | ACID: Make HouseKeeperService threads daemon |  Major | Transactions | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-16755](https://issues.apache.org/jira/browse/HIVE-16755) | LLAP IO: incorrect assert may trigger in tests |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16745](https://issues.apache.org/jira/browse/HIVE-16745) | Syntax error in 041-HIVE-16556.mysql.sql script |  Minor | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16777](https://issues.apache.org/jira/browse/HIVE-16777) | LLAP: Use separate tokens and UGI instances when an external client is used |  Major | . | Siddharth Seth | Siddharth Seth |
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
| [HIVE-16778](https://issues.apache.org/jira/browse/HIVE-16778) | LLAP IO: better refcount management |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16846](https://issues.apache.org/jira/browse/HIVE-16846) | TestJdbcWithMiniHS2#testHttpHeaderSize test case is not testing in HTTP mode |  Major | Test | Aihua Xu | Aihua Xu |
| [HIVE-16871](https://issues.apache.org/jira/browse/HIVE-16871) | CachedStore.get\_aggr\_stats\_for has side affect |  Major | Metastore | Daniel Dai | Daniel Dai |
| [HIVE-16323](https://issues.apache.org/jira/browse/HIVE-16323) | HS2 JDOPersistenceManagerFactory.pmCache leaks after HIVE-14204 |  Major | HiveServer2 | Daniel Dai | Daniel Dai |
| [HIVE-16780](https://issues.apache.org/jira/browse/HIVE-16780) | Case "multiple sources, single key" in spark\_dynamic\_pruning.q fails |  Major | . | liyunzhang | liyunzhang |
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
| [HIVE-11297](https://issues.apache.org/jira/browse/HIVE-11297) | Combine op trees for partition info generating tasks |  Major | . | Chao Sun | liyunzhang |
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
| [HIVE-16958](https://issues.apache.org/jira/browse/HIVE-16958) | Setting hive.merge.sparkfiles=true will retrun an error when generating parquet databases |  Major | . | Liu Chunxiao | liyunzhang |
| [HIVE-16659](https://issues.apache.org/jira/browse/HIVE-16659) | Query plan should reflect hive.spark.use.groupby.shuffle |  Major | Spark | Rui Li | Bing Li |
| [HIVE-16961](https://issues.apache.org/jira/browse/HIVE-16961) | Hive on Spark leaks spark application in case user cancels query and closes session |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-17007](https://issues.apache.org/jira/browse/HIVE-17007) | NPE introduced by HIVE-16871 |  Major | Metastore | Daniel Dai | Daniel Dai |
| [HIVE-10616](https://issues.apache.org/jira/browse/HIVE-10616) | TypeInfoUtils doesn't handle DECIMAL with just precision specified |  Minor | Serializers/Deserializers | Thomas Friedrich | Thomas Friedrich |
| [HIVE-16935](https://issues.apache.org/jira/browse/HIVE-16935) | Hive should strip comments from input before choosing which CommandProcessor to run. |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-6990](https://issues.apache.org/jira/browse/HIVE-6990) | Direct SQL fails when the explicit schema setting is different from the default one |  Major | Query Processor | Bing Li | Sergey Shelukhin |
| [HIVE-17010](https://issues.apache.org/jira/browse/HIVE-17010) | Fix the overflow problem of Long type in SetSparkReducerParallelism |  Major | . | liyunzhang | liyunzhang |
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
| [HIVE-17117](https://issues.apache.org/jira/browse/HIVE-17117) | Metalisteners are not notified when threadlocal metaconf is cleanup |  Minor | Metastore | Prashant Golash | Prashant Golash |
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
| [HIVE-17233](https://issues.apache.org/jira/browse/HIVE-17233) | Set "mapred.input.dir.recursive" for HCatInputFormat-based jobs. |  Major | HCatalog | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17321](https://issues.apache.org/jira/browse/HIVE-17321) | HoS: analyze ORC table doesn't compute raw data size when noscan/partialscan is not specified |  Minor | Spark | Rui Li | Rui Li |
| [HIVE-17336](https://issues.apache.org/jira/browse/HIVE-17336) | Missing class 'org.apache.hadoop.hive.hbase.HiveHBaseTableInputFormat' from Hive on Spark when inserting into hbase based table |  Major | Spark | Aihua Xu | Aihua Xu |
| [HIVE-17286](https://issues.apache.org/jira/browse/HIVE-17286) | Avoid expensive String serialization/deserialization for bitvectors |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-16948](https://issues.apache.org/jira/browse/HIVE-16948) | Invalid explain when running dynamic partition pruning query in Hive On Spark |  Major | . | liyunzhang | liyunzhang |
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
| [HIVE-17392](https://issues.apache.org/jira/browse/HIVE-17392) | SharedWorkOptimizer might merge TS operators filtered by not equivalent semijoin operators |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-16949](https://issues.apache.org/jira/browse/HIVE-16949) | Leak of threads from Get-Input-Paths and Get-Input-Summary thread pool |  Major | HiveServer2 | Birger Brunswiek | Sahil Takiar |
| [HIVE-17309](https://issues.apache.org/jira/browse/HIVE-17309) | alter partition onto a table not in current database throw InvalidOperationException |  Major | Query Processor | Wang Haihua | Wang Haihua |
| [HIVE-17276](https://issues.apache.org/jira/browse/HIVE-17276) | Check max shuffle size when converting to dynamically partitioned hash join |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17411](https://issues.apache.org/jira/browse/HIVE-17411) | LLAP IO may incorrectly release a refcount in some rare cases |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17412](https://issues.apache.org/jira/browse/HIVE-17412) | Add "-- SORT\_QUERY\_RESULTS" for spark\_vectorized\_dynamic\_partition\_pruning.q |  Major | . | liyunzhang | liyunzhang |
| [HIVE-17006](https://issues.apache.org/jira/browse/HIVE-17006) | LLAP: Parquet caching v1 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17367](https://issues.apache.org/jira/browse/HIVE-17367) | IMPORT table doesn't load from data dump if a metadata-only dump was already imported. |  Major | HiveServer2, Import/Export, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17385](https://issues.apache.org/jira/browse/HIVE-17385) | Fix incremental repl error for non-native tables |  Major | repl | Tao Li | Tao Li |
| [HIVE-17415](https://issues.apache.org/jira/browse/HIVE-17415) | Hit error "SemanticException View xxx is corresponding to LIMIT, rather than a SelectOperator." in Hive queries |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-17420](https://issues.apache.org/jira/browse/HIVE-17420) | bootstrap - get replid before object dump |  Major | HiveServer2 | anishek | anishek |
| [HIVE-17389](https://issues.apache.org/jira/browse/HIVE-17389) | Yetus is always failing on rat checks |  Trivial | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-17401](https://issues.apache.org/jira/browse/HIVE-17401) | Hive session idle timeout doesn't function properly |  Major | . | Xuefu Zhang | Xuefu Zhang |
| [HIVE-17393](https://issues.apache.org/jira/browse/HIVE-17393) | AMReporter need hearbeat every external 'AM' |  Major | llap | Zhiyuan Yang | Zhiyuan Yang |
| [HIVE-17152](https://issues.apache.org/jira/browse/HIVE-17152) | Improve security of random generator for HS2 cookies |  Major | HiveServer2 | Tao Li | Tao Li |
| [HIVE-17421](https://issues.apache.org/jira/browse/HIVE-17421) | Clear incorrect stats after replication |  Major | repl | Daniel Dai | Daniel Dai |
| [HIVE-17429](https://issues.apache.org/jira/browse/HIVE-17429) | Hive JDBC doesn't return rows when querying Impala |  Major | JDBC | Zach Amsden | Zach Amsden |
| [HIVE-17450](https://issues.apache.org/jira/browse/HIVE-17450) | rename TestTxnCommandsBase |  Major | . | Zoltan Haindrich | Peter Vary |
| [HIVE-17468](https://issues.apache.org/jira/browse/HIVE-17468) | Shade and package appropriate jackson version for druid storage handler |  Major | . | slim bouguerra | Jesus Camacho Rodriguez |
| [HIVE-17419](https://issues.apache.org/jira/browse/HIVE-17419) | ANALYZE TABLE...COMPUTE STATISTICS FOR COLUMNS command shows computed stats for masked tables |  Major | Authorization | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17475](https://issues.apache.org/jira/browse/HIVE-17475) | Disable mapjoin using hint |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-17344](https://issues.apache.org/jira/browse/HIVE-17344) | LocalCache element memory usage is not calculated properly. |  Major | . | Janos Gub | Janos Gub |
| [HIVE-16886](https://issues.apache.org/jira/browse/HIVE-16886) | HMS log notifications may have duplicated event IDs if multiple HMS are running concurrently |  Major | Hive, Metastore | Sergio Peña | anishek |
| [HIVE-17314](https://issues.apache.org/jira/browse/HIVE-17314) | LazySimpleSerializeWrite.writeString() contains if with an empty body |  Minor | . | Oleg Danilov | Oleg Danilov |
| [HIVE-17459](https://issues.apache.org/jira/browse/HIVE-17459) | View deletion operation failed to replicate on target cluster |  Major | repl | Tao Li | Tao Li |
| [HIVE-17403](https://issues.apache.org/jira/browse/HIVE-17403) | Fail concatenation for unmanaged and transactional tables |  Blocker | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17504](https://issues.apache.org/jira/browse/HIVE-17504) | Skip ACID table for replication |  Major | repl | Tao Li | Tao Li |
| [HIVE-17394](https://issues.apache.org/jira/browse/HIVE-17394) | AvroSerde is regenerating TypeInfo objects for each nullable Avro field for every row |  Major | Serializers/Deserializers | Ratandeep Ratti | Anthony Hsu |
| [HIVE-17275](https://issues.apache.org/jira/browse/HIVE-17275) | Auto-merge fails on writes of UNION ALL output to ORC file with dynamic partitioning |  Major | Query Processor | Chris Drome | Chris Drome |
| [HIVE-17410](https://issues.apache.org/jira/browse/HIVE-17410) | repl load task during subsequent DAG generation does not start from the last partition processed |  Major | HiveServer2 | anishek | anishek |
| [HIVE-17522](https://issues.apache.org/jira/browse/HIVE-17522) | cleanup old 'repl dump' dirs |  Major | repl | Tao Li | Tao Li |
| [HIVE-17313](https://issues.apache.org/jira/browse/HIVE-17313) | Potentially possible 'case fall through' in the ObjectInspectorConverters |  Trivial | . | Oleg Danilov | Oleg Danilov |
| [HIVE-17479](https://issues.apache.org/jira/browse/HIVE-17479) | Staging directories do not get cleaned up for update/delete queries |  Major | Transactions | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17013](https://issues.apache.org/jira/browse/HIVE-17013) | Delete request with a subquery based on select over a view |  Blocker | Transactions | Frédéric ESCANDELL | Eugene Koifman |
| [HIVE-17530](https://issues.apache.org/jira/browse/HIVE-17530) | ClassCastException when converting uniontype |  Major | . | Anthony Hsu | Anthony Hsu |
| [HIVE-17465](https://issues.apache.org/jira/browse/HIVE-17465) | Statistics: Drill-down filters don't reduce row-counts progressively |  Major | Physical Optimizer, Statistics | Gopal V | Vineet Garg |
| [HIVE-17496](https://issues.apache.org/jira/browse/HIVE-17496) | Bootstrap repl is not cleaning up staging dirs |  Major | repl | Tao Li | Tao Li |
| [HIVE-17510](https://issues.apache.org/jira/browse/HIVE-17510) | Make comparison of filter predicates in q files deterministic |  Major | Testing Infrastructure | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17535](https://issues.apache.org/jira/browse/HIVE-17535) | Select 1 EXCEPT Select 1 fails with NPE |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-17512](https://issues.apache.org/jira/browse/HIVE-17512) | Not use doAs if distcp privileged user same as user running hive |  Minor | HiveServer2 | anishek | anishek |
| [HIVE-17554](https://issues.apache.org/jira/browse/HIVE-17554) | Occurr java.lang.ArithmeticException: / by zero at hplsql component |  Major | hpl/sql | ZhangBing Lin | ZhangBing Lin |
| [HIVE-17338](https://issues.apache.org/jira/browse/HIVE-17338) | Utilities.get\*Tasks multiple methods duplicate code |  Major | . | Thejas M Nair | Gergely Hajós |
| [HIVE-17556](https://issues.apache.org/jira/browse/HIVE-17556) | The test udf\_mask\_hash.q is failing |  Major | Test | Marta Kuczora | Marta Kuczora |
| [HIVE-17472](https://issues.apache.org/jira/browse/HIVE-17472) | Drop-partition for multi-level partition fails, if data does not exist. |  Major | Metastore | Mithun Radhakrishnan | Chris Drome |
| [HIVE-17529](https://issues.apache.org/jira/browse/HIVE-17529) | Bucket Map Join : Sets incorrect edge type causing execution failure |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-17558](https://issues.apache.org/jira/browse/HIVE-17558) | Skip non-native/temporary tables for constraint related scenarios |  Major | . | Tao Li | Tao Li |
| [HIVE-17560](https://issues.apache.org/jira/browse/HIVE-17560) | HiveMetastore doesn't start in secure cluster if repl change manager is enabled |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-17571](https://issues.apache.org/jira/browse/HIVE-17571) | update sql standard authorization config whitelist to include distcp options for replication |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-17582](https://issues.apache.org/jira/browse/HIVE-17582) | Followup of HIVE-15708 |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-17378](https://issues.apache.org/jira/browse/HIVE-17378) | CBO: HiveReduceExpressionsWithStatsRule can operate on IS\_NULL and IS\_NOT\_NULL |  Major | CBO | Gopal V | Zoltan Haindrich |
| [HIVE-17585](https://issues.apache.org/jira/browse/HIVE-17585) | Improve thread safety when loading dynamic partitions in parallel |  Major | . | Tao Li | Tao Li |
| [HIVE-17584](https://issues.apache.org/jira/browse/HIVE-17584) | fix mapred.job.queue.name in sql standard authorization config whitelist |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-17452](https://issues.apache.org/jira/browse/HIVE-17452) | HPL/SQL function variable block is not initialized |  Critical | hpl/sql | Dmitry Tolpeko | Dmitry Tolpeko |
| [HIVE-17568](https://issues.apache.org/jira/browse/HIVE-17568) | HiveJoinPushTransitivePredicatesRule may exchange predicates which are not valid on the other branch |  Major | Logical Optimizer | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17594](https://issues.apache.org/jira/browse/HIVE-17594) | Unit format error in Copy.java |  Minor | hpl/sql | Saijin Huang | Saijin Huang |
| [HIVE-17110](https://issues.apache.org/jira/browse/HIVE-17110) | BucketCodec should enforce value ranges |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17483](https://issues.apache.org/jira/browse/HIVE-17483) | HS2 kill command to kill queries using query id |  Major | HiveServer2 | Thejas M Nair | Teddy Choi |
| [HIVE-14813](https://issues.apache.org/jira/browse/HIVE-14813) | Make TransactionBatchImpl.toString() include state of each txn: commit/abort |  Major | HCatalog, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17588](https://issues.apache.org/jira/browse/HIVE-17588) | LlapRowRecordReader doing name-based field lookup for every column of every row |  Major | . | Jason Dere | Jason Dere |
| [HIVE-17523](https://issues.apache.org/jira/browse/HIVE-17523) | Insert into druid table  hangs Hive server2 in an infinite loop |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-17623](https://issues.apache.org/jira/browse/HIVE-17623) | Fix Select query Fix Double column serde and some refactoring |  Major | Druid integration | slim bouguerra | Ashutosh Chauhan |
| [HIVE-17621](https://issues.apache.org/jira/browse/HIVE-17621) | Hive-site settings are ignored during HCatInputFormat split-calculation |  Major | HCatalog | Mithun Radhakrishnan | Chris Drome |
| [HIVE-17625](https://issues.apache.org/jira/browse/HIVE-17625) | Replication: update hive.repl.partitions.dump.parallelism to 100 |  Major | repl | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-17624](https://issues.apache.org/jira/browse/HIVE-17624) | MapredLocakTask running in separate JVM could throw ClassNotFoundException |  Major | Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-17619](https://issues.apache.org/jira/browse/HIVE-17619) | Exclude avatica-core.jar dependency from avatica shaded jar |  Major | . | Aihua Xu | Aihua Xu |
| [HIVE-16927](https://issues.apache.org/jira/browse/HIVE-16927) | LLAP: Slider takes down all daemons when some daemons fail repeatedly |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17653](https://issues.apache.org/jira/browse/HIVE-17653) | Druid storage handler CTAS with boolean type columns fails. |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-17644](https://issues.apache.org/jira/browse/HIVE-17644) | directSQL errors out on key constraints until the DB is initialized |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17643](https://issues.apache.org/jira/browse/HIVE-17643) | recent WM changes broke reopen due to spurious overloads |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17628](https://issues.apache.org/jira/browse/HIVE-17628) | always use fully qualified path for tables/partitions/etc. |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17639](https://issues.apache.org/jira/browse/HIVE-17639) | don't reuse planner context when re-parsing the query |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17610](https://issues.apache.org/jira/browse/HIVE-17610) | LLAP IO: an exception in exception handling can hide the original exception |  Major | . | Rajesh Balamohan | Sergey Shelukhin |
| [HIVE-17601](https://issues.apache.org/jira/browse/HIVE-17601) | improve error handling in LlapServiceDriver |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-12734](https://issues.apache.org/jira/browse/HIVE-12734) | Remove redundancy in HiveConfs serialized to UDFContext |  Major | . | Mithun Radhakrishnan | Chris Drome |
| [HIVE-17563](https://issues.apache.org/jira/browse/HIVE-17563) | CodahaleMetrics.JsonFileReporter is not updating hive.service.metrics.file.location |  Major | . | Sahil Takiar | Alexander Kolbasov |
| [HIVE-17489](https://issues.apache.org/jira/browse/HIVE-17489) | Separate client-facing and server-side Kerberos principals, to support HA |  Major | Metastore | Mithun Radhakrishnan | Thiruvel Thirumoolan |
| [HIVE-16898](https://issues.apache.org/jira/browse/HIVE-16898) | Validation of source file after distcp in repl load |  Major | HiveServer2 | anishek | Daniel Dai |
| [HIVE-17665](https://issues.apache.org/jira/browse/HIVE-17665) | Update netty-all to latest 4.0.x.Final |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17649](https://issues.apache.org/jira/browse/HIVE-17649) | Export/Import: Move export data write to a task |  Major | repl | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-17602](https://issues.apache.org/jira/browse/HIVE-17602) | Explain plan not working |  Critical | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-17664](https://issues.apache.org/jira/browse/HIVE-17664) | Refactor and add new tests |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17682](https://issues.apache.org/jira/browse/HIVE-17682) | Vectorization: IF stmt produces wrong results |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-17613](https://issues.apache.org/jira/browse/HIVE-17613) | remove object pools for short, same-thread allocations |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17690](https://issues.apache.org/jira/browse/HIVE-17690) | Add distcp.options.p\* in sql standard authorization config whitelist |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-17679](https://issues.apache.org/jira/browse/HIVE-17679) | http-generic-click-jacking for WebHcat server |  Major | Security, WebHCat | Aihua Xu | Aihua Xu |
| [HIVE-17701](https://issues.apache.org/jira/browse/HIVE-17701) | Added restriction to historic queries on web UI |  Major | HiveServer2 | Thejas M Nair | Tao Li |
| [HIVE-17721](https://issues.apache.org/jira/browse/HIVE-17721) | with Postgres rdbms for metastore and dbnotification enabled, hive DDL SQL query fails |  Major | HiveServer2 | anishek | anishek |
| [HIVE-17723](https://issues.apache.org/jira/browse/HIVE-17723) | Update Accumulo drive q.out files |  Major | Test | Peter Vary | Peter Vary |
| [HIVE-17633](https://issues.apache.org/jira/browse/HIVE-17633) | Make it possible to override the query results directory in TestBeeLineDriver |  Major | Test | Peter Vary | Peter Vary |
| [HIVE-17720](https://issues.apache.org/jira/browse/HIVE-17720) | Bitvectors are not shown in describe statement on beeline |  Major | Beeline, Diagnosability | Aswathy Chellammal Sreekumar | Ashutosh Chauhan |
| [HIVE-17576](https://issues.apache.org/jira/browse/HIVE-17576) | Improve progress-reporting in TezProcessor |  Major | . | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-17731](https://issues.apache.org/jira/browse/HIVE-17731) | add a backward compat option for external users to HIVE-11985 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17702](https://issues.apache.org/jira/browse/HIVE-17702) | incorrect isRepeating handling in decimal reader in ORC |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-11266](https://issues.apache.org/jira/browse/HIVE-11266) | count(\*) wrong result based on table statistics for external tables |  Blocker | . | Simone Battaglia | Jesus Camacho Rodriguez |
| [HIVE-17553](https://issues.apache.org/jira/browse/HIVE-17553) | CBO wrongly type cast decimal literal to int |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-17111](https://issues.apache.org/jira/browse/HIVE-17111) | Add TestLocalSparkCliDriver |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-17746](https://issues.apache.org/jira/browse/HIVE-17746) | Regenerate spark\_explainuser\_1.q.out |  Major | Test | Peter Vary | Peter Vary |
| [HIVE-17659](https://issues.apache.org/jira/browse/HIVE-17659) | get\_token thrift call fails for DBTokenStore in remote HMS mode |  Major | Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16511](https://issues.apache.org/jira/browse/HIVE-16511) | CBO looses inner casts on constants of complex type |  Major | CBO, Query Planning | Ashutosh Chauhan | Vineet Garg |
| [HIVE-17761](https://issues.apache.org/jira/browse/HIVE-17761) | Deprecate hive.druid.select.distribute property for Druid |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17758](https://issues.apache.org/jira/browse/HIVE-17758) | NOTIFICATION\_SEQUENCE\_LOCK\_RETRY\_SLEEP\_INTERVAL.defaultLongVal is -1 |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17762](https://issues.apache.org/jira/browse/HIVE-17762) | Exclude older jackson-annotation.jar from druid-handler shaded jar |  Major | . | Aihua Xu | Aihua Xu |
| [HIVE-16677](https://issues.apache.org/jira/browse/HIVE-16677) | CTAS with no data fails in Druid |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17464](https://issues.apache.org/jira/browse/HIVE-17464) | Fix to be able to disable max shuffle size DHJ config |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17777](https://issues.apache.org/jira/browse/HIVE-17777) | Add maven coordinates in itests/pom.xml |  Major | Build Infrastructure, Testing Infrastructure | Vijay Kumar | Vijay Kumar |
| [HIVE-17726](https://issues.apache.org/jira/browse/HIVE-17726) | Using exists may lead to incorrect results |  Major | . | Zoltan Haindrich | Vineet Garg |
| [HIVE-15267](https://issues.apache.org/jira/browse/HIVE-15267) | Make query length calculation logic more accurate in TxnUtils.needNewQuery() |  Major | Hive, Transactions | Wei Zheng | Steve Yeom |
| [HIVE-17795](https://issues.apache.org/jira/browse/HIVE-17795) | Add distribution management tag in pom |  Major | . | Raja Aluri | Raja Aluri |
| [HIVE-17782](https://issues.apache.org/jira/browse/HIVE-17782) | Inconsistent cast behavior from string to numeric types with regards to leading/trailing spaces |  Major | Types | Jason Dere | Jason Dere |
| [HIVE-17749](https://issues.apache.org/jira/browse/HIVE-17749) | Multiple class have missed the ASF header |  Minor | . | Saijin Huang | Saijin Huang |
| [HIVE-17798](https://issues.apache.org/jira/browse/HIVE-17798) | When replacing the src table names in BeeLine testing, the table names shouldn't be changed to lower case |  Minor | Testing Infrastructure | Marta Kuczora | Marta Kuczora |
| [HIVE-17391](https://issues.apache.org/jira/browse/HIVE-17391) | Compaction fails if there is an empty value in tblproperties |  Major | Metastore, Transactions | Ashutosh Chauhan | Steve Yeom |
| [HIVE-17815](https://issues.apache.org/jira/browse/HIVE-17815) | prevent OOM with Atlas Hive hook |  Minor | HiveServer2 | anishek | anishek |
| [HIVE-17706](https://issues.apache.org/jira/browse/HIVE-17706) | Add a possibility to run the BeeLine tests on the default database |  Major | Testing Infrastructure | Peter Vary | Peter Vary |
| [HIVE-17813](https://issues.apache.org/jira/browse/HIVE-17813) | hive.exec.move.files.from.source.dir does not work with partitioned tables |  Major | . | Jason Dere | Jason Dere |
| [HIVE-17822](https://issues.apache.org/jira/browse/HIVE-17822) | Provide an option to skip shading of jars |  Major | Build Infrastructure | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17804](https://issues.apache.org/jira/browse/HIVE-17804) | Vectorization: Bug erroneously causes match for 1st row in batch (SelectStringColLikeStringScalar) |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-17792](https://issues.apache.org/jira/browse/HIVE-17792) | Enable Bucket Map Join when there are extra keys other than bucketed columns |  Major | Query Planning, Tez | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-17825](https://issues.apache.org/jira/browse/HIVE-17825) | Socket not closed when trying to read files to copy over in replication from metadata |  Critical | HiveServer2 | anishek | anishek |
| [HIVE-12631](https://issues.apache.org/jira/browse/HIVE-12631) | LLAP IO: support ORC ACID tables |  Major | llap, Transactions | Sergey Shelukhin | Teddy Choi |
| [HIVE-17725](https://issues.apache.org/jira/browse/HIVE-17725) | Fix misnamed tests which are not run during precommit runs. |  Major | Test | Zoltan Haindrich | Daniel Voros |
| [HIVE-17836](https://issues.apache.org/jira/browse/HIVE-17836) | Persisting nulls in bit vector field fails for postgres backed metastore |  Major | Metastore | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-17830](https://issues.apache.org/jira/browse/HIVE-17830) | dbnotification fails to work with rdbms other than postgres |  Critical | HiveServer2 | anishek | Daniel Dai |
| [HIVE-17803](https://issues.apache.org/jira/browse/HIVE-17803) | With Pig multi-query, 2 HCatStorers writing to the same table will trample each other's outputs |  Major | HCatalog | Mithun Radhakrishnan | Chris Drome |
| [HIVE-17807](https://issues.apache.org/jira/browse/HIVE-17807) | Execute maven commands in batch mode for ptests |  Major | . | Vijay Kumar | Vijay Kumar |
| [HIVE-17817](https://issues.apache.org/jira/browse/HIVE-17817) | Stabilize crossproduct warning message output order |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17864](https://issues.apache.org/jira/browse/HIVE-17864) | PTestClient cannot start during Precommit tests |  Major | . | Adam Szita | Adam Szita |
| [HIVE-17806](https://issues.apache.org/jira/browse/HIVE-17806) | Create directory for metrics file if it doesn't exist |  Major | Hive | Alexander Kolbasov | Alexander Kolbasov |
| [HIVE-17258](https://issues.apache.org/jira/browse/HIVE-17258) | Incorrect log messages in the Hive.java |  Trivial | . | Oleg Danilov | Oleg Danilov |
| [HIVE-17240](https://issues.apache.org/jira/browse/HIVE-17240) | Function ACOS(2) and ASIN(2) should be null |  Major | UDF | Yuming Wang | Yuming Wang |
| [HIVE-17453](https://issues.apache.org/jira/browse/HIVE-17453) | Missing ASF headers 2 classes |  Trivial | . | ZhangBing Lin | ZhangBing Lin |
| [HIVE-17828](https://issues.apache.org/jira/browse/HIVE-17828) | Metastore: mysql upgrade scripts to 3.0.0 is broken |  Major | . | Gopal V | Prasanth Jayachandran |
| [HIVE-17368](https://issues.apache.org/jira/browse/HIVE-17368) | DBTokenStore fails to connect in Kerberos enabled remote HMS environment |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-17845](https://issues.apache.org/jira/browse/HIVE-17845) | insert fails if target table columns are not lowercase |  Minor | . | Naresh P R | Naresh P R |
| [HIVE-17873](https://issues.apache.org/jira/browse/HIVE-17873) | External LLAP client: allow same handleID to be used more than once |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-17781](https://issues.apache.org/jira/browse/HIVE-17781) | Map MR settings to Tez settings via DeprecatedKeys |  Major | Configuration, Tez | Mithun Radhakrishnan | Chris Drome |
| [HIVE-16603](https://issues.apache.org/jira/browse/HIVE-16603) | Enforce foreign keys to refer to primary keys or unique keys |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17471](https://issues.apache.org/jira/browse/HIVE-17471) | Vectorization: Enable hive.vectorized.row.identifier.enabled to true by default |  Major | Hive | Matt McCline | Sergey Shelukhin |
| [HIVE-17831](https://issues.apache.org/jira/browse/HIVE-17831) | HiveSemanticAnalyzerHookContext does not update the HiveOperation after sem.analyze() is called |  Major | Hive | Sergio Peña | Aihua Xu |
| [HIVE-17832](https://issues.apache.org/jira/browse/HIVE-17832) | Allow hive.metastore.disallow.incompatible.col.type.changes to be changed in metastore |  Major | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-15104](https://issues.apache.org/jira/browse/HIVE-15104) | Hive on Spark generate more shuffle data than hive on mr |  Major | Spark | wangwenli | Rui Li |
| [HIVE-17764](https://issues.apache.org/jira/browse/HIVE-17764) | alter view fails when hive.metastore.disallow.incompatible.col.type.changes set to true |  Major | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-17765](https://issues.apache.org/jira/browse/HIVE-17765) | expose Hive keywords |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17839](https://issues.apache.org/jira/browse/HIVE-17839) | Cannot generate thrift definitions in standalone-metastore |  Major | . | Harish Jaiprakash | Alan Gates |
| [HIVE-8937](https://issues.apache.org/jira/browse/HIVE-8937) | fix description of hive.security.authorization.sqlstd.confwhitelist.\* params |  Major | Documentation | Thejas M Nair | Akira Ajisaka |
| [HIVE-12408](https://issues.apache.org/jira/browse/HIVE-12408) | SQLStdAuthorizer should not require external table creator to be owner of directory, in addition to rw permissions |  Critical | Authorization, Security, SQLStandardAuthorization | Hari Sekhon | Akira Ajisaka |
| [HIVE-17891](https://issues.apache.org/jira/browse/HIVE-17891) | HIVE-13076 uses create table if not exists for the postgres script |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-17868](https://issues.apache.org/jira/browse/HIVE-17868) | Make queries in spark\_local\_queries.q have deterministic output |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-17918](https://issues.apache.org/jira/browse/HIVE-17918) | NPE during semijoin reduction optimization when LLAP caching disabled |  Major | . | Jason Dere | Jason Dere |
| [HIVE-17826](https://issues.apache.org/jira/browse/HIVE-17826) | Error writing to RandomAccessFile after operation log is closed |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-17635](https://issues.apache.org/jira/browse/HIVE-17635) | Add unit tests to CompactionTxnHandler and use PreparedStatements for queries |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-17867](https://issues.apache.org/jira/browse/HIVE-17867) | Exception in windowing functions with TIMESTAMP WITH LOCAL TIME ZONE type |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17834](https://issues.apache.org/jira/browse/HIVE-17834) | Fix flaky triggers test |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17936](https://issues.apache.org/jira/browse/HIVE-17936) | Dynamic Semijoin Reduction : markSemiJoinForDPP marks unwanted semijoin branches |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-17939](https://issues.apache.org/jira/browse/HIVE-17939) | Bucket map join not being selected when bucketed tables is missing bucket files |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-15552](https://issues.apache.org/jira/browse/HIVE-15552) | Unable to coalesce DATE and TIMESTAMP types |  Critical | SQL | N Campbell | Jesus Camacho Rodriguez |
| [HIVE-17595](https://issues.apache.org/jira/browse/HIVE-17595) | Correct DAG for updating the last.repl.id for a database during bootstrap load |  Major | HiveServer2 | anishek | anishek |
| [HIVE-17953](https://issues.apache.org/jira/browse/HIVE-17953) | Metrics should move to destination atomically |  Trivial | Hive | Alexander Kolbasov | Alexander Kolbasov |
| [HIVE-17908](https://issues.apache.org/jira/browse/HIVE-17908) | LLAP External client not correctly handling killTask for pending requests |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-17963](https://issues.apache.org/jira/browse/HIVE-17963) | Fix for HIVE-17113 can be improved for non-blobstore filesystems |  Major | . | Jason Dere | Jason Dere |
| [HIVE-17259](https://issues.apache.org/jira/browse/HIVE-17259) | Hive JDBC does not recognize UNIONTYPE columns |  Major | Beeline, JDBC | Pierre Villard | Pierre Villard |
| [HIVE-17417](https://issues.apache.org/jira/browse/HIVE-17417) | LazySimple Timestamp is very expensive |  Critical | Serializers/Deserializers | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18006](https://issues.apache.org/jira/browse/HIVE-18006) | Optimize memory footprint of HLLDenseRegister |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18007](https://issues.apache.org/jira/browse/HIVE-18007) | Address maven warnings |  Major | Build Infrastructure | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-18001](https://issues.apache.org/jira/browse/HIVE-18001) | InvalidObjectException while creating Primary Key constraint on partition key column |  Major | . | Nita Dembla | Jesus Camacho Rodriguez |
| [HIVE-18016](https://issues.apache.org/jira/browse/HIVE-18016) | org.apache.hadoop.hive.ql.util.ResourceDownloader - Review |  Trivial | HiveServer2 | BELUGA BEHR | BELUGA BEHR |
| [HIVE-17973](https://issues.apache.org/jira/browse/HIVE-17973) | Fix small bug in multi\_insert\_union\_src.q |  Trivial | . | liyunzhang | liyunzhang |
| [HIVE-17008](https://issues.apache.org/jira/browse/HIVE-17008) | Fix boolean flag switchup in DropTableEvent |  Major | Metastore | Dan Burkert | Dan Burkert |
| [HIVE-17076](https://issues.apache.org/jira/browse/HIVE-17076) | typo in itests/src/test/resources/testconfiguration.properties |  Major | . | Eugene Koifman | Eugene Koifman |
| [HIVE-17785](https://issues.apache.org/jira/browse/HIVE-17785) | Encription tests are not running |  Major | . | Peter Vary | Peter Vary |
| [HIVE-17615](https://issues.apache.org/jira/browse/HIVE-17615) | Task.executeTask has to be thread safe for parallel execution |  Major | HiveServer2 | anishek | anishek |
| [HIVE-16406](https://issues.apache.org/jira/browse/HIVE-16406) | Remove unwanted interning when creating PartitionDesc |  Minor | Metastore | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-17882](https://issues.apache.org/jira/browse/HIVE-17882) | Resource plan retrieval looks incorrect |  Major | . | Prasanth Jayachandran | Harish Jaiprakash |
| [HIVE-15739](https://issues.apache.org/jira/browse/HIVE-15739) | Incorrect exception message in PartExprEvalUtils |  Minor | . | Mark Wagner | Mark Wagner |
| [HIVE-15504](https://issues.apache.org/jira/browse/HIVE-15504) | ArrayIndexOutOfBoundsException in GenericUDFTrunc::initialize |  Trivial | UDF | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-17976](https://issues.apache.org/jira/browse/HIVE-17976) | HoS: don't set output collector if there's no data to process |  Minor | Spark | Rui Li | Rui Li |
| [HIVE-18012](https://issues.apache.org/jira/browse/HIVE-18012) | fix ct\_noperm\_loc test |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18067](https://issues.apache.org/jira/browse/HIVE-18067) | Remove extraneous golden files |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-18046](https://issues.apache.org/jira/browse/HIVE-18046) | Metastore: default IS\_REWRITE\_ENABLED=false instead of NULL |  Minor | Materialized views, Metastore | Gopal V | Jesus Camacho Rodriguez |
| [HIVE-18069](https://issues.apache.org/jira/browse/HIVE-18069) | MetaStoreDirectSql to get tables has misplaced comma |  Major | . | Aihua Xu | Jesus Camacho Rodriguez |
| [HIVE-15343](https://issues.apache.org/jira/browse/HIVE-15343) | Spelling errors in logging and exceptions for beeline, common, hbase-handler, hcatalog, llap-server, orc, serde and shims |  Trivial | Beeline, HBase Handler, HCatalog, llap, ORC, Serializers/Deserializers, Shims | Grant Sohn | Grant Sohn |
| [HIVE-15344](https://issues.apache.org/jira/browse/HIVE-15344) | Spelling errors in logging and exceptions for metastore and service directories |  Trivial | CLI, Metastore, Server Infrastructure | Grant Sohn | Grant Sohn |
| [HIVE-18017](https://issues.apache.org/jira/browse/HIVE-18017) | HS2 materialized view registry init loading all tables from metastore |  Major | HiveServer2, Metastore | Songzhi Liu | Jesus Camacho Rodriguez |
| [HIVE-14731](https://issues.apache.org/jira/browse/HIVE-14731) | Use Tez cartesian product edge in Hive (unpartitioned case only) |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [HIVE-14678](https://issues.apache.org/jira/browse/HIVE-14678) | Hive-on-MR deprecation warning  is not diplayed when engine is set to capital letter 'MR' |  Trivial | Beeline, CLI, Configuration, Hive | Raja Mannem | Sergey Shelukhin |
| [HIVE-17942](https://issues.apache.org/jira/browse/HIVE-17942) | HiveAlterHandler not using conf from HMS Handler |  Major | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-18077](https://issues.apache.org/jira/browse/HIVE-18077) | Vectorization: Add string conversion case for UDFToDouble |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-16828](https://issues.apache.org/jira/browse/HIVE-16828) | With CBO enabled, Query on partitioned views throws IndexOutOfBoundException |  Major | CBO | Adesh Kumar Rao | Vineet Garg |
| [HIVE-14560](https://issues.apache.org/jira/browse/HIVE-14560) | Support exchange partition between s3 and hdfs tables |  Major | . | Abdullah Yousufi | Abdullah Yousufi |
| [HIVE-16756](https://issues.apache.org/jira/browse/HIVE-16756) | Vectorization: LongColModuloLongColumn throws "java.lang.ArithmeticException: / by zero" |  Critical | Hive | Matt McCline | Vihang Karajgaonkar |
| [HIVE-18050](https://issues.apache.org/jira/browse/HIVE-18050) | LlapServiceDriver shoud split HIVE\_AUX\_JARS\_PATH by ':' instead of ',' |  Major | CLI, Clients | Aegeaner | Aegeaner |
| [HIVE-18090](https://issues.apache.org/jira/browse/HIVE-18090) | acid heartbeat fails when metastore is connected via hadoop credential |  Major | HiveServer2, Transactions | anishek | anishek |
| [HIVE-18109](https://issues.apache.org/jira/browse/HIVE-18109) | fix identifier usage in parser |  Major | . | Ashutosh Chauhan | Sergey Shelukhin |
| [HIVE-18026](https://issues.apache.org/jira/browse/HIVE-18026) | Hive webhcat principal configuration optimization |  Major | WebHCat | ZhangBing Lin | ZhangBing Lin |
| [HIVE-18136](https://issues.apache.org/jira/browse/HIVE-18136) | WorkloadManagerMxBean is missing the Apache license header |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-18157](https://issues.apache.org/jira/browse/HIVE-18157) | Vectorization : Insert in bucketed table is broken with vectorization |  Major | Transactions, Vectorization | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-18151](https://issues.apache.org/jira/browse/HIVE-18151) | LLAP external client: Better error message propagation during submission failures |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-18160](https://issues.apache.org/jira/browse/HIVE-18160) | Jar localization during session initialization is slow |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18146](https://issues.apache.org/jira/browse/HIVE-18146) | Vectorization: VectorMapJoinOperator Decimal64ColumnVector key/value cast bug |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-17900](https://issues.apache.org/jira/browse/HIVE-17900) | analyze stats on columns triggered by Compactor generates malformed SQL with \> 1 partition column |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16708](https://issues.apache.org/jira/browse/HIVE-16708) | Exception while renewing a Delegation Token |  Major | . | Manikumar | Vihang Karajgaonkar |
| [HIVE-18188](https://issues.apache.org/jira/browse/HIVE-18188) | Fix TestSSL failures in master |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18127](https://issues.apache.org/jira/browse/HIVE-18127) | Do not strip '--' comments from shell commands issued from CliDriver |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-18195](https://issues.apache.org/jira/browse/HIVE-18195) | Hive schema broken on postgres |  Blocker | Metastore | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-18198](https://issues.apache.org/jira/browse/HIVE-18198) | TablePropertyEnrichmentOptimizer.java is missing the Apache license header |  Major | . | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-17853](https://issues.apache.org/jira/browse/HIVE-17853) | RetryingMetaStoreClient loses UGI impersonation-context when reconnecting after timeout |  Critical | Metastore | Mithun Radhakrishnan | Chris Drome |
| [HIVE-18147](https://issues.apache.org/jira/browse/HIVE-18147) | Tests can fail with java.net.BindException: Address already in use |  Major | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-17620](https://issues.apache.org/jira/browse/HIVE-17620) | Use the default MR scratch directory (HDFS) in the only case when hive.blobstore.optimizations.enabled=true AND isFinalJob=true |  Major | Hive | Gergely Hajós | Gergely Hajós |
| [HIVE-18213](https://issues.apache.org/jira/browse/HIVE-18213) | Tests: YARN Minicluster times out if the disks are \>90% full |  Major | Tests | Gopal V | Gopal V |
| [HIVE-18207](https://issues.apache.org/jira/browse/HIVE-18207) | Fix the test failure for TestCliDriver#vector\_complex\_join |  Major | Tests | Colin Ma | Colin Ma |
| [HIVE-18220](https://issues.apache.org/jira/browse/HIVE-18220) | Workload Management tables have broken constraints defined on postgres schema |  Blocker | Metastore | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-18189](https://issues.apache.org/jira/browse/HIVE-18189) | Order by position does not work when cbo is disabled |  Major | Query Planning | Daniel Dai | Daniel Dai |
| [HIVE-18210](https://issues.apache.org/jira/browse/HIVE-18210) | create resource plan allows duplicates |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [HIVE-18232](https://issues.apache.org/jira/browse/HIVE-18232) | Packaging: add dfs-init script in package target |  Major | . | Vinesh Paul | Vinesh Paul |
| [HIVE-18166](https://issues.apache.org/jira/browse/HIVE-18166) | Result of hive.query.string is encoded. |  Major | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-17333](https://issues.apache.org/jira/browse/HIVE-17333) | Schema changes in HIVE-12274 for Oracle may not work for upgrade |  Major | Metastore | Naveen Gangam | Naveen Gangam |
| [HIVE-18196](https://issues.apache.org/jira/browse/HIVE-18196) | Druid Mini Cluster to run Qtests integrations tests. |  Major | . | slim bouguerra | Ashutosh Chauhan |
| [HIVE-18254](https://issues.apache.org/jira/browse/HIVE-18254) | Use proper AVG Calcite primitive instead of Other\_FUNCTION |  Major | . | slim bouguerra | slim bouguerra |
| [HIVE-18150](https://issues.apache.org/jira/browse/HIVE-18150) | Upgrade Spark Version to 2.2.0 |  Major | Spark | Sahil Takiar | liyunzhang |
| [HIVE-18240](https://issues.apache.org/jira/browse/HIVE-18240) | support getClientInfo/setClientInfo in JDBC |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18191](https://issues.apache.org/jira/browse/HIVE-18191) | Vectorization: Add validation of TableScanOperator (gather statistics) back |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-18208](https://issues.apache.org/jira/browse/HIVE-18208) | SMB Join : Fix the unit tests to run SMB Joins. |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-18266](https://issues.apache.org/jira/browse/HIVE-18266) | LLAP: /system references wrong file for THP |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15883](https://issues.apache.org/jira/browse/HIVE-15883) | HBase mapped table in Hive insert fail for decimal |  Major | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-18068](https://issues.apache.org/jira/browse/HIVE-18068) | Upgrade to Calcite 1.15 |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18228](https://issues.apache.org/jira/browse/HIVE-18228) | Azure credential properties should be added to the HiveConf hidden list |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-18250](https://issues.apache.org/jira/browse/HIVE-18250) | CBO gets turned off with duplicates in RR error |  Major | CBO, Query Planning | Ashutosh Chauhan | Jesus Camacho Rodriguez |
| [HIVE-18241](https://issues.apache.org/jira/browse/HIVE-18241) | Query with LEFT SEMI JOIN producing wrong result |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-18271](https://issues.apache.org/jira/browse/HIVE-18271) | Druid Insert into fails with exception when committing files |  Major | . | Nishant Bangarwa | Jason Dere |
| [HIVE-18263](https://issues.apache.org/jira/browse/HIVE-18263) | Ptest execution are multiple times slower sometimes due to dying executor slaves |  Major | Testing Infrastructure | Adam Szita | Adam Szita |
| [HIVE-18258](https://issues.apache.org/jira/browse/HIVE-18258) | Vectorization: Reduce-Side GROUP BY MERGEPARTIAL with duplicate columns is broken |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-18054](https://issues.apache.org/jira/browse/HIVE-18054) |  Make Lineage work with concurrent queries on a Session |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-18111](https://issues.apache.org/jira/browse/HIVE-18111) | Fix temp path for Spark DPP sink |  Major | Spark | Rui Li | Rui Li |
| [HIVE-18124](https://issues.apache.org/jira/browse/HIVE-18124) |  clean up isAcidTable() API vs isInsertOnlyTable() |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18248](https://issues.apache.org/jira/browse/HIVE-18248) | Clean up parameters |  Major | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-18310](https://issues.apache.org/jira/browse/HIVE-18310) | Test 'vector\_reduce\_groupby\_duplicate\_cols.q' is misspelled in testconfiguration.properties |  Minor | Tests | Andrew Sherman | Andrew Sherman |
| [HIVE-18306](https://issues.apache.org/jira/browse/HIVE-18306) | Fix spark smb tests |  Major | . | Zoltan Haindrich | Deepak Jaiswal |
| [HIVE-17994](https://issues.apache.org/jira/browse/HIVE-17994) | Vectorization: Serialization bottlenecked on irrelevant hashmap lookup |  Minor | . | Gopal V | Matt McCline |
| [HIVE-18318](https://issues.apache.org/jira/browse/HIVE-18318) | LLAP record reader should check interrupt even when not blocking |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18316](https://issues.apache.org/jira/browse/HIVE-18316) | HiveEndPoint should only work with full acid tables |  Major | HCatalog, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17829](https://issues.apache.org/jira/browse/HIVE-17829) | ArrayIndexOutOfBoundsException - HBASE-backed tables with Avro schema in Hive2 |  Critical | HBase Handler | Chiran Ravani | anishek |
| [HIVE-18293](https://issues.apache.org/jira/browse/HIVE-18293) | Hive is failing to compact tables contained within a folder that is not owned by identity running HiveMetaStore |  Critical | Transactions | Johannes Alberti | Johannes Alberti |
| [HIVE-18331](https://issues.apache.org/jira/browse/HIVE-18331) | Renew the Kerberos ticket used by Druid Query runner |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-18356](https://issues.apache.org/jira/browse/HIVE-18356) | Fixing license headers in checkstyle |  Minor | Testing Infrastructure | Peter Vary | Peter Vary |
| [HIVE-18255](https://issues.apache.org/jira/browse/HIVE-18255) | spark-client jar should be prefixed with hive- |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-18360](https://issues.apache.org/jira/browse/HIVE-18360) | NPE in TezSessionState |  Major | . | Deepesh Khandelwal | Sergey Shelukhin |
| [HIVE-18365](https://issues.apache.org/jira/browse/HIVE-18365) | netty-all jar is not present in the llap tarball |  Major | llap | Miklos Gergely | Miklos Gergely |
| [HIVE-18335](https://issues.apache.org/jira/browse/HIVE-18335) | Vectorization : Check bounds of array before the allocation in VectorMapJoinFastBytesHashTable |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-13000](https://issues.apache.org/jira/browse/HIVE-13000) | Hive returns useless parsing error |  Minor | . | Alina Abramova | Alina Abramova |
| [HIVE-18311](https://issues.apache.org/jira/browse/HIVE-18311) | Enable smb\_mapjoin\_8.q for cli driver |  Major | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-18370](https://issues.apache.org/jira/browse/HIVE-18370) | standalone-metastore gen dir contains two annotation/package-info.java which causes IDEA build fail |  Major | . | Peter Vary | Peter Vary |
| [HIVE-16826](https://issues.apache.org/jira/browse/HIVE-16826) | Improvements for SeparatedValuesOutputFormat |  Minor | Beeline | BELUGA BEHR | BELUGA BEHR |
| [HIVE-17966](https://issues.apache.org/jira/browse/HIVE-17966) | org.apache.hadoop.hive.ql.io.parquet.serde.ParquetHiveArrayInspector - Review |  Trivial | HiveServer2, Serializers/Deserializers | BELUGA BEHR | BELUGA BEHR |
| [HIVE-18330](https://issues.apache.org/jira/browse/HIVE-18330) | Fix TestMsgBusConnection - doesn't test tests the original intention |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-11609](https://issues.apache.org/jira/browse/HIVE-11609) | Capability to add a filter to hbase scan via composite key doesn't work |  Major | HBase Handler | Swarnim Kulkarni | Barna Zsombor Klara |
| [HIVE-18390](https://issues.apache.org/jira/browse/HIVE-18390) | IndexOutOfBoundsException when query a  partitioned view in ColumnPruner |  Major | Query Planning, Views | Hengyu Dai | Hengyu Dai |
| [HIVE-18326](https://issues.apache.org/jira/browse/HIVE-18326) | LLAP Tez scheduler - only preempt tasks if there's a dependency between them |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18384](https://issues.apache.org/jira/browse/HIVE-18384) | ConcurrentModificationException in log4j2.x library |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18269](https://issues.apache.org/jira/browse/HIVE-18269) | LLAP: Fast llap io with slow processing pipeline can lead to OOM |  Major | . | Prasanth Jayachandran | Sergey Shelukhin |
| [HIVE-18414](https://issues.apache.org/jira/browse/HIVE-18414) | upgrade to tez-0.9.1 |  Major | . | Zoltan Haindrich | Daniel Voros |
| [HIVE-18353](https://issues.apache.org/jira/browse/HIVE-18353) | CompactorMR should call jobclient.close() to trigger cleanup |  Major | Hive, Transactions | Prabhu Joseph | Prabhu Joseph |
| [HIVE-18417](https://issues.apache.org/jira/browse/HIVE-18417) | better error handling in TezSessionState cleanup |  Major | . | Aswathy Chellammal Sreekumar | Sergey Shelukhin |
| [HIVE-18420](https://issues.apache.org/jira/browse/HIVE-18420) | LLAP IO: InputStream may return 0 bytes |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18379](https://issues.apache.org/jira/browse/HIVE-18379) | ALTER TABLE authorization\_part SET PROPERTIES ("PARTITIONL\_LEVEL\_PRIVILEGE"="TRUE"); fails when authorization\_part is MicroManaged table. |  Minor | Transactions | Steve Yeom | Steve Yeom |
| [HIVE-18148](https://issues.apache.org/jira/browse/HIVE-18148) | NPE in SparkDynamicPartitionPruningResolver |  Major | Spark | Rui Li | Rui Li |
| [HIVE-18352](https://issues.apache.org/jira/browse/HIVE-18352) | introduce a METADATAONLY option while doing REPL DUMP to allow integrations of other tools |  Major | . | anishek | anishek |
| [HIVE-18416](https://issues.apache.org/jira/browse/HIVE-18416) | Initial support for TABLE function |  Major | Parser | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18298](https://issues.apache.org/jira/browse/HIVE-18298) | Fix TestReplicationScenarios.testConstraints |  Major | repl | Daniel Dai | Daniel Dai |
| [HIVE-18299](https://issues.apache.org/jira/browse/HIVE-18299) | DbNotificationListener fail on mysql with "select for update" |  Major | Metastore | Daniel Dai | Daniel Dai |
| [HIVE-18341](https://issues.apache.org/jira/browse/HIVE-18341) | Add repl load support for adding "raw" namespace for TDE with same encryption keys |  Major | . | anishek | anishek |
| [HIVE-18355](https://issues.apache.org/jira/browse/HIVE-18355) | Add builder for metastore Thrift classes missed in the first pass - FunctionBuilder |  Minor | Standalone Metastore | Peter Vary | Peter Vary |
| [HIVE-18314](https://issues.apache.org/jira/browse/HIVE-18314) | qtests: semijoin\_hint.q breaks hybridgrace\_hashjoin\_2.q |  Major | Tests | Zoltan Haindrich | Laszlo Bodor |
| [HIVE-18309](https://issues.apache.org/jira/browse/HIVE-18309) | qtests: smb\_mapjoin\_19.q breaks bucketsortoptimize\_insert\_2.q |  Major | Tests | Zoltan Haindrich | Laszlo Bodor |
| [HIVE-18429](https://issues.apache.org/jira/browse/HIVE-18429) | Compaction should handle a case when it produces no output |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18419](https://issues.apache.org/jira/browse/HIVE-18419) | CliDriver loads different hive-site.xml into HiveConf and MetastoreConf |  Major | Standalone Metastore, Test | Eugene Koifman | Eugene Koifman |
| [HIVE-18452](https://issues.apache.org/jira/browse/HIVE-18452) | work around HADOOP-15171 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18465](https://issues.apache.org/jira/browse/HIVE-18465) | Hive metastore schema initialization failing on postgres |  Major | Metastore | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-18385](https://issues.apache.org/jira/browse/HIVE-18385) | mergejoin fails with java.lang.IllegalStateException |  Major | . | Deepak Jaiswal | Jason Dere |
| [HIVE-18430](https://issues.apache.org/jira/browse/HIVE-18430) | Add new determinism category for runtime constants (current\_date, current\_timestamp) |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-18473](https://issues.apache.org/jira/browse/HIVE-18473) | Infer timezone information correctly in DruidSerde |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18413](https://issues.apache.org/jira/browse/HIVE-18413) | Grouping of an empty result set may only contain null values |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17257](https://issues.apache.org/jira/browse/HIVE-17257) | Hive should merge empty files |  Major | . | Chao Sun | Chao Sun |
| [HIVE-18482](https://issues.apache.org/jira/browse/HIVE-18482) | Copy-paste error in the RelOptHiveTable |  Trivial | . | Oleg Danilov | Jesus Camacho Rodriguez |
| [HIVE-17952](https://issues.apache.org/jira/browse/HIVE-17952) | Fix license headers to avoid dangling javadoc warnings |  Trivial | . | Prasanth Jayachandran | Andrew Sherman |
| [HIVE-18488](https://issues.apache.org/jira/browse/HIVE-18488) | LLAP ORC readers are missing some null checks |  Major | . | Deepesh Khandelwal | Sergey Shelukhin |
| [HIVE-18490](https://issues.apache.org/jira/browse/HIVE-18490) | Query with EXISTS and NOT EXISTS with non-equi predicate can produce wrong result |  Critical | CBO | Vineet Garg | Vineet Garg |
| [HIVE-18445](https://issues.apache.org/jira/browse/HIVE-18445) | qtests: auto\_join25.q fails permanently |  Major | Tests | Laszlo Bodor | Laszlo Bodor |
| [HIVE-18367](https://issues.apache.org/jira/browse/HIVE-18367) | Describe Extended output is truncated on a table with an explicit row format containing tabs or newlines. |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-18500](https://issues.apache.org/jira/browse/HIVE-18500) | annoying exceptions from LLAP Jmx view in the logs |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18450](https://issues.apache.org/jira/browse/HIVE-18450) | Support TABLE function in CBO |  Major | Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18494](https://issues.apache.org/jira/browse/HIVE-18494) | Regression: from HIVE-18069, the metastore directsql is getting disabled |  Major | Standalone Metastore | Gopal V | Jesus Camacho Rodriguez |
| [HIVE-17833](https://issues.apache.org/jira/browse/HIVE-17833) | Publish split generation counters |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18393](https://issues.apache.org/jira/browse/HIVE-18393) | Error returned when some other type is read as string from parquet tables |  Major | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-18422](https://issues.apache.org/jira/browse/HIVE-18422) | Vectorized input format should not be used when vectorized input format is excluded and row.serde is enabled |  Minor | Vectorization | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-18506](https://issues.apache.org/jira/browse/HIVE-18506) | LlapBaseInputFormat - negative array index |  Minor | . | Oleg Danilov | Oleg Danilov |
| [HIVE-16821](https://issues.apache.org/jira/browse/HIVE-16821) | Vectorization: support Explain Analyze in vectorized mode |  Minor | Diagnosability, Vectorization | Gopal V | Gopal V |
| [HIVE-18521](https://issues.apache.org/jira/browse/HIVE-18521) | Vectorization: query failing in reducer VectorUDAFAvgDecimalPartial2 java.lang.ClassCastException StructTypeInfo --\> DecimalTypeInfo |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-18501](https://issues.apache.org/jira/browse/HIVE-18501) | Typo in beeline code |  Trivial | Beeline | Naveen Gangam | Naveen Gangam |
| [HIVE-18519](https://issues.apache.org/jira/browse/HIVE-18519) | do not create materialized CTEs with ACID/MM |  Major | Transactions | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18514](https://issues.apache.org/jira/browse/HIVE-18514) | add service output for ranger to WM DDL operations |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18531](https://issues.apache.org/jira/browse/HIVE-18531) | Vectorization: Vectorized PTF operator should not set the initial type infos |  Critical | Hive | Matt McCline |  |
| [HIVE-18383](https://issues.apache.org/jira/browse/HIVE-18383) | Qtests: running all cases from TestNegativeCliDriver results in OOMs |  Major | Metastore, Tests | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18517](https://issues.apache.org/jira/browse/HIVE-18517) | Vectorization: Fix VectorMapOperator to accept VRBs and check vectorized flag correctly to support LLAP Caching |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-18530](https://issues.apache.org/jira/browse/HIVE-18530) | Replication should skip MM table (for now) |  Major | repl | Daniel Dai | Daniel Dai |
| [HIVE-15680](https://issues.apache.org/jira/browse/HIVE-15680) | Incorrect results when hive.optimize.index.filter=true and same ORC table is referenced twice in query |  Major | . | Anthony Hsu | Anthony Hsu |
| [HIVE-18551](https://issues.apache.org/jira/browse/HIVE-18551) | Vectorization: VectorMapOperator tries to write too many vector columns for Hybrid Grace |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-18548](https://issues.apache.org/jira/browse/HIVE-18548) | Fix log4j import |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-18524](https://issues.apache.org/jira/browse/HIVE-18524) | Vectorization: Execution failure related to non-standard embedding of IfExprConditionalFilter inside VectorUDFAdaptor (Revert HIVE-17139) |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-18557](https://issues.apache.org/jira/browse/HIVE-18557) | q.outs: fix issues caused by q.out\_spark files |  Major | . | Laszlo Bodor | Laszlo Bodor |
| [HIVE-18562](https://issues.apache.org/jira/browse/HIVE-18562) | Vectorization: CHAR/VARCHAR conversion in VectorDeserializeRow is broken |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-18554](https://issues.apache.org/jira/browse/HIVE-18554) | Fix false positive test ql.io.parquet.TestHiveSchemaConverter.testMap |  Major | . | Adam Szita | Adam Szita |
| [HIVE-18499](https://issues.apache.org/jira/browse/HIVE-18499) | Amend point lookup tests to check for data |  Major | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-18558](https://issues.apache.org/jira/browse/HIVE-18558) | Upgrade orc version to 1.4.2 |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18529](https://issues.apache.org/jira/browse/HIVE-18529) | Vectorization: Add a debug config option to disable scratch column reuse |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-18426](https://issues.apache.org/jira/browse/HIVE-18426) | Memory leak in RoutingAppender for every hive operation |  Major | HiveServer2 | kalyan kumar kalvagadda | kalyan kumar kalvagadda |
| [HIVE-18472](https://issues.apache.org/jira/browse/HIVE-18472) | Beeline gives log4j warnings |  Major | . | Janaki Lahorani | Janaki Lahorani |
| [HIVE-18574](https://issues.apache.org/jira/browse/HIVE-18574) | LLAP: Ship netty3 as part of LLAP install tarball |  Major | llap | Gopal V | Gopal V |
| [HIVE-18579](https://issues.apache.org/jira/browse/HIVE-18579) | Changes from HIVE-18495 introduced import paths from shaded jars |  Critical | Hive | Deepesh Khandelwal | Ashutosh Chauhan |
| [HIVE-18577](https://issues.apache.org/jira/browse/HIVE-18577) | SemanticAnalyzer.validate has some pointless metastore calls |  Major | Transactions | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18459](https://issues.apache.org/jira/browse/HIVE-18459) | hive-exec.jar leaks contents fb303.jar into classpath |  Major | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-18585](https://issues.apache.org/jira/browse/HIVE-18585) | Return type for udfs should be determined using Hive inference rules instead of Calcite |  Major | Query Planning | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-17331](https://issues.apache.org/jira/browse/HIVE-17331) | Path must be used as key type of the pathToAlises |  Minor | . | Oleg Danilov | Oleg Danilov |
| [HIVE-18587](https://issues.apache.org/jira/browse/HIVE-18587) | insert DML event may attempt to calculate a checksum on directories |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18590](https://issues.apache.org/jira/browse/HIVE-18590) | Assertion error on transitive join inference in the presence of NOT NULL constraint |  Major | Logical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18447](https://issues.apache.org/jira/browse/HIVE-18447) | JDBC: Provide a way for JDBC users to pass cookie info via connection string |  Major | JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-18518](https://issues.apache.org/jira/browse/HIVE-18518) | Upgrade druid version to 0.11.0 |  Major | . | Nishant Bangarwa | Nishant Bangarwa |
| [HIVE-18606](https://issues.apache.org/jira/browse/HIVE-18606) | CTAS on empty table throws NPE from org.apache.hadoop.hive.ql.exec.MoveTask |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18589](https://issues.apache.org/jira/browse/HIVE-18589) | java.io.IOException: Not enough history available |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18599](https://issues.apache.org/jira/browse/HIVE-18599) | Transactions: Fix CTAS on Micromanaged tables |  Major | Transactions | Steve Yeom | Steve Yeom |
| [HIVE-18546](https://issues.apache.org/jira/browse/HIVE-18546) | Remove unnecessary code introduced in HIVE-14498 |  Major | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18578](https://issues.apache.org/jira/browse/HIVE-18578) | Some class has missed the ASF header |  Trivial | . | Saijin Huang | Saijin Huang |
| [HIVE-18601](https://issues.apache.org/jira/browse/HIVE-18601) | Support Power platform by updating protoc-jar-maven-plugin version |  Major | Standalone Metastore | Pravin Dsilva | Pravin Dsilva |
| [HIVE-18616](https://issues.apache.org/jira/browse/HIVE-18616) | work around HADOOP-15171 p2 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18597](https://issues.apache.org/jira/browse/HIVE-18597) | LLAP: Always package the log4j2 API jar for org.apache.log4j |  Major | . | Gopal V | Gopal V |
| [HIVE-18631](https://issues.apache.org/jira/browse/HIVE-18631) | Hive metastore schema initialization failing on mysql |  Blocker | Metastore | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-18617](https://issues.apache.org/jira/browse/HIVE-18617) | Workload management Action parser does not generate the correct pool path. |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [HIVE-18612](https://issues.apache.org/jira/browse/HIVE-18612) | Build subprocesses under Yetus in Ptest use 1.7 jre instead of 1.8 |  Major | Testing Infrastructure | Adam Szita | Adam Szita |
| [HIVE-18613](https://issues.apache.org/jira/browse/HIVE-18613) | Extend JsonSerDe to support BINARY type |  Major | Serializers/Deserializers | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18467](https://issues.apache.org/jira/browse/HIVE-18467) | support whole warehouse dump / load + create/drop database events |  Major | . | anishek | anishek |
| [HIVE-18523](https://issues.apache.org/jira/browse/HIVE-18523) | Fix summary row in case there are no inputs |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18628](https://issues.apache.org/jira/browse/HIVE-18628) | Make tez dag status check interval configurable |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18567](https://issues.apache.org/jira/browse/HIVE-18567) | ObjectStore.getPartitionNamesNoTxn doesn't handle max param properly |  Major | Metastore | Adam Szita | Adam Szita |
| [HIVE-18611](https://issues.apache.org/jira/browse/HIVE-18611) | Avoid memory allocation of aggregation buffer during stats computation |  Major | Physical Optimizer, Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-18641](https://issues.apache.org/jira/browse/HIVE-18641) | Remove MCreationMetadata from MTable class |  Major | Materialized views, Metastore | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18643](https://issues.apache.org/jira/browse/HIVE-18643) | don't check for archived partitions for ACID ops |  Major | . | Youngjin Park | Sergey Shelukhin |
| [HIVE-18642](https://issues.apache.org/jira/browse/HIVE-18642) | incorrect assertion in TezSessionPool for WM |  Major | . | Dileep Kumar Chiguruvada | Sergey Shelukhin |
| [HIVE-18513](https://issues.apache.org/jira/browse/HIVE-18513) | Query results caching |  Major | Query Planning | Jason Dere | Jason Dere |
| [HIVE-18626](https://issues.apache.org/jira/browse/HIVE-18626) | Repl load "with" clause does not pass config to tasks |  Major | repl | Daniel Dai | Daniel Dai |
| [HIVE-18647](https://issues.apache.org/jira/browse/HIVE-18647) | Cannot create table: "message:Exception thrown when executing query : SELECT DISTINCT.." |  Major | . | Rui Li | Deepak Jaiswal |
| [HIVE-18614](https://issues.apache.org/jira/browse/HIVE-18614) | Fix sys db creation in Hive |  Major | Hive | Miklos Gergely | Miklos Gergely |
| [HIVE-18653](https://issues.apache.org/jira/browse/HIVE-18653) | Fix TestOperators test failure in master |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18637](https://issues.apache.org/jira/browse/HIVE-18637) | WorkloadManagent Event Summary leaving subscribedCounters and currentCounters fields empty |  Major | HiveServer2 | Aswathy Chellammal Sreekumar | Prasanth Jayachandran |
| [HIVE-18607](https://issues.apache.org/jira/browse/HIVE-18607) | HBase HFile write does strange things |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18359](https://issues.apache.org/jira/browse/HIVE-18359) | Extend grouping set limits from int to long |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18627](https://issues.apache.org/jira/browse/HIVE-18627) | PPD: Handle FLOAT boxing differently for single/double precision constants |  Major | Types | Gopal V | Gopal V |
| [HIVE-18646](https://issues.apache.org/jira/browse/HIVE-18646) | Update errata.txt for HIVE-18617 |  Trivial | . | Daniel Voros | Daniel Voros |
| [HIVE-18674](https://issues.apache.org/jira/browse/HIVE-18674) | update Hive to use ORC 1.4.3 |  Major | ORC | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18575](https://issues.apache.org/jira/browse/HIVE-18575) | ACID properties usage in jobconf is ambiguous for MM tables |  Major | Transactions | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18678](https://issues.apache.org/jira/browse/HIVE-18678) | fix exim for MM tables and reinstante the test |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18492](https://issues.apache.org/jira/browse/HIVE-18492) | Wrong argument in the WorkloadManager.resetAndQueryKill() |  Trivial | . | Oleg Danilov | Oleg Danilov |
| [HIVE-18660](https://issues.apache.org/jira/browse/HIVE-18660) | PCR doesn't distinguish between partition and virtual columns |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-18671](https://issues.apache.org/jira/browse/HIVE-18671) | lock not released after Hive on Spark query was cancelled |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-18665](https://issues.apache.org/jira/browse/HIVE-18665) | LLAP: Ignore cache-affinity if the LLAP IO elevator is disabled |  Major | llap | Gopal V | Gopal V |
| [HIVE-18688](https://issues.apache.org/jira/browse/HIVE-18688) | Vectorization: Vectorizer Reason shouldn't be part of work-plan |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-18569](https://issues.apache.org/jira/browse/HIVE-18569) | Hive Druid indexing not dealing with decimals in correct way. |  Major | Druid integration | Nishant Bangarwa | Nishant Bangarwa |
| [HIVE-17627](https://issues.apache.org/jira/browse/HIVE-17627) | Use druid scan query instead of the select query. |  Major | Druid integration | slim bouguerra | Nishant Bangarwa |
| [HIVE-18698](https://issues.apache.org/jira/browse/HIVE-18698) | Fix TestMiniLlapLocalCliDriver#testCliDriver[bucket\_map\_join\_tez1] |  Major | Test | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-16491](https://issues.apache.org/jira/browse/HIVE-16491) | CBO cant handle join involving complex types in on condition |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Miklos Gergely |
| [HIVE-18686](https://issues.apache.org/jira/browse/HIVE-18686) | Installation on Postgres and Oracle broken |  Major | . | Alan Gates | Alan Gates |
| [HIVE-16964](https://issues.apache.org/jira/browse/HIVE-16964) | \_orc\_acid\_version file is missing |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18717](https://issues.apache.org/jira/browse/HIVE-18717) | Avoid transitive dependency on jetty 6.x |  Major | Build Infrastructure | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-18421](https://issues.apache.org/jira/browse/HIVE-18421) | Vectorized execution handles overflows in a different manner than non-vectorized execution |  Major | Vectorization | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-18638](https://issues.apache.org/jira/browse/HIVE-18638) | Triggers for multi-pool move, failing to initiate the move event |  Major | HiveServer2 | Aswathy Chellammal Sreekumar | Prasanth Jayachandran |
| [HIVE-18321](https://issues.apache.org/jira/browse/HIVE-18321) | Support REBUILD for MVs backed by custom storage handlers |  Major | Druid integration, Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18622](https://issues.apache.org/jira/browse/HIVE-18622) | Vectorization: IF Statements, Comparisons, and more do not handle NULLs correctly |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-18595](https://issues.apache.org/jira/browse/HIVE-18595) | UNIX\_TIMESTAMP  UDF fails when type is Timestamp with local timezone |  Major | Hive | slim bouguerra | slim bouguerra |
| [HIVE-18708](https://issues.apache.org/jira/browse/HIVE-18708) | Vectorization: Delay out-of-tree fixups till whole work is vectorized |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-18680](https://issues.apache.org/jira/browse/HIVE-18680) | FieldTrimmer missing opportunity with SortLimit operators |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18442](https://issues.apache.org/jira/browse/HIVE-18442) | HoS: No FileSystem for scheme: nullscan |  Major | Spark | Rui Li | Rui Li |
| [HIVE-16404](https://issues.apache.org/jira/browse/HIVE-16404) | Renaming of public classes in Calcite 12 breeaking druid integration |  Major | Druid integration | slim bouguerra |  |
| [HIVE-16026](https://issues.apache.org/jira/browse/HIVE-16026) | Generated query will timeout and/or kill the druid cluster. |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-16125](https://issues.apache.org/jira/browse/HIVE-16125) | Split work between reducers. |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-18742](https://issues.apache.org/jira/browse/HIVE-18742) | Vectorization acid/inputformat check should allow NullRowsInputFormat/OneNullRowInputFormat |  Major | Transactions, Vectorization | Jason Dere | Jason Dere |
| [HIVE-18737](https://issues.apache.org/jira/browse/HIVE-18737) | add an option to disable LLAP IO ACID for non-original files |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18658](https://issues.apache.org/jira/browse/HIVE-18658) | WM: allow not specifying scheduling policy when creating a pool |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18456](https://issues.apache.org/jira/browse/HIVE-18456) | Add some tests for HIVE-18367 to check that the table information contains the query correctly |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-18713](https://issues.apache.org/jira/browse/HIVE-18713) | Optimize: Transform IN clauses to = when there's only one element |  Major | Logical Optimizer | Gopal V | Gopal V |
| [HIVE-18757](https://issues.apache.org/jira/browse/HIVE-18757) | LLAP IO for text fails for empty files |  Major | . | Aswathy Chellammal Sreekumar | Sergey Shelukhin |
| [HIVE-18573](https://issues.apache.org/jira/browse/HIVE-18573) | Use proper Calcite operator instead of UDFs |  Major | Druid integration, Hive | slim bouguerra | slim bouguerra |
| [HIVE-18764](https://issues.apache.org/jira/browse/HIVE-18764) | ELAPSED\_TIME resource plan setting is not getting honored |  Major | . | Jagruti Varia | Prasanth Jayachandran |
| [HIVE-15077](https://issues.apache.org/jira/browse/HIVE-15077) | Acid LockManager is unfair |  Blocker | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18645](https://issues.apache.org/jira/browse/HIVE-18645) | invalid url address in README.txt from module hbase-handler |  Trivial | . | Saijin Huang | Saijin Huang |
| [HIVE-18794](https://issues.apache.org/jira/browse/HIVE-18794) | Repl load "with" clause does not pass config to tasks for non-partition tables |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-18733](https://issues.apache.org/jira/browse/HIVE-18733) | Missing break in CommonFastHashTable |  Trivial | HiveServer2 | Gergely Hajós | Gergely Hajós |
| [HIVE-18759](https://issues.apache.org/jira/browse/HIVE-18759) | Remove unconnected q.out-s |  Major | Tests | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18507](https://issues.apache.org/jira/browse/HIVE-18507) | AccumuloIndexedOutputFormat.AccumuloRecordWriter.close() - typo in the condition |  Trivial | . | Oleg Danilov |  |
| [HIVE-18659](https://issues.apache.org/jira/browse/HIVE-18659) | add acid version marker to acid files/directories |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18776](https://issues.apache.org/jira/browse/HIVE-18776) | MaterializationsInvalidationCache loading causes race condition in the metastore |  Major | Materialized views, Metastore | Alan Gates | Jesus Camacho Rodriguez |
| [HIVE-16494](https://issues.apache.org/jira/browse/HIVE-16494) | udaf percentile\_approx() may fail on CBO |  Major | CBO, Logical Optimizer, UDF | Ashutosh Chauhan | Miklos Gergely |
| [HIVE-17735](https://issues.apache.org/jira/browse/HIVE-17735) | ObjectStore.addNotificationEvent is leaking queries |  Major | Hive | Alexander Kolbasov | Aihua Xu |
| [HIVE-18820](https://issues.apache.org/jira/browse/HIVE-18820) | Operation doesn't always clean up log4j for operation log |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18796](https://issues.apache.org/jira/browse/HIVE-18796) | fix TestSSL |  Major | Test | Zoltan Haindrich | Sergey Shelukhin |
| [HIVE-17937](https://issues.apache.org/jira/browse/HIVE-17937) | llap\_acid\_fast test is flaky |  Blocker | . | Sergey Shelukhin | Teddy Choi |
| [HIVE-18813](https://issues.apache.org/jira/browse/HIVE-18813) | Fix qtest mapjoin\_hook.q |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18695](https://issues.apache.org/jira/browse/HIVE-18695) | fix TestAccumuloCliDriver.testCliDriver[accumulo\_queries] |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18777](https://issues.apache.org/jira/browse/HIVE-18777) | Add Authorization interface to support information\_schema integration with external authorization |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-18828](https://issues.apache.org/jira/browse/HIVE-18828) | improve error handling for codecs in LLAP IO |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18818](https://issues.apache.org/jira/browse/HIVE-18818) | Alter table add constraint unique fails with direct sql set to false |  Major | Metastore | Vineet Garg | Vineet Garg |
| [HIVE-18817](https://issues.apache.org/jira/browse/HIVE-18817) | ArrayIndexOutOfBounds exception during read of ACID table. |  Major | ORC, Transactions | Jason Dere | Eugene Koifman |
| [HIVE-18826](https://issues.apache.org/jira/browse/HIVE-18826) | fix TestEncryptedHDFSCliDriver.testCliDriver[encryption\_move\_tbl] |  Major | Tests | Zoltan Haindrich | Jesus Camacho Rodriguez |
| [HIVE-18788](https://issues.apache.org/jira/browse/HIVE-18788) | Clean up inputs in JDBC PreparedStatement |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-18815](https://issues.apache.org/jira/browse/HIVE-18815) | Remove unused feature in HPL/SQL |  Major | hpl/sql | Daniel Dai | Daniel Dai |
| [HIVE-18738](https://issues.apache.org/jira/browse/HIVE-18738) | LLAP IO ACID - includes handling is broken |  Major | . | Deepesh Khandelwal | Sergey Shelukhin |
| [HIVE-18833](https://issues.apache.org/jira/browse/HIVE-18833) | Auto Merge fails when "insert into directory as orcfile" |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-18837](https://issues.apache.org/jira/browse/HIVE-18837) | add a flag and disable some object pools in LLAP until further testing |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18697](https://issues.apache.org/jira/browse/HIVE-18697) | The HiveMetastore.exchange\_partitions method throws FileNotFoundException if the given partition doesn't exist in the source table |  Minor | Metastore | Marta Kuczora | Marta Kuczora |
| [HIVE-18610](https://issues.apache.org/jira/browse/HIVE-18610) | Performance: ListKeyWrapper does not check for hashcode equals, before comparing members |  Major | Query Processor | Gopal V | Gopal V |
| [HIVE-18791](https://issues.apache.org/jira/browse/HIVE-18791) | Fix TestJdbcWithMiniHS2#testHttpHeaderSize |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-18060](https://issues.apache.org/jira/browse/HIVE-18060) | UpdateInputAccessTimeHook fails for non-current database |  Major | . | Oleksiy Sayankin | Oleksiy Sayankin |
| [HIVE-18571](https://issues.apache.org/jira/browse/HIVE-18571) | stats issues for MM tables; ACID doesn't check state for CTAS |  Major | Transactions | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18889](https://issues.apache.org/jira/browse/HIVE-18889) | update all parts of Hive to use the same Guava version |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18879](https://issues.apache.org/jira/browse/HIVE-18879) | Disallow embedded element in UDFXPathUtil needs to work if xercesImpl.jar in classpath |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-18918](https://issues.apache.org/jira/browse/HIVE-18918) | Bad error message in CompactorMR.lanuchCompactionJob() |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18662](https://issues.apache.org/jira/browse/HIVE-18662) | hive.acid.key.index is missing entries |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14792](https://issues.apache.org/jira/browse/HIVE-14792) | AvroSerde reads the remote schema-file at least once per mapper, per table reference. |  Major | . | Mithun Radhakrishnan | Aihua Xu |
| [HIVE-18907](https://issues.apache.org/jira/browse/HIVE-18907) | Create utility to fix acid key index issue from HIVE-18817 |  Major | ORC, Transactions | Jason Dere | Jason Dere |
| [HIVE-18675](https://issues.apache.org/jira/browse/HIVE-18675) | make HIVE\_LOCKS.HL\_TXNID NOT NULL |  Major | Metastore, Transactions | Eugene Koifman | Igor Kryvenko |
| [HIVE-18888](https://issues.apache.org/jira/browse/HIVE-18888) | Replace synchronizedMap with ConcurrentHashMap |  Major | Hive | Alexander Kolbasov | Alexander Kolbasov |
| [HIVE-18919](https://issues.apache.org/jira/browse/HIVE-18919) | remove separate keytab setting for ZK in LLAP |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18944](https://issues.apache.org/jira/browse/HIVE-18944) | Groupping sets position is set incorrectly during DPP |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18933](https://issues.apache.org/jira/browse/HIVE-18933) | disable ORC codec pool for now; remove clone |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18693](https://issues.apache.org/jira/browse/HIVE-18693) | Snapshot Isolation does not work for Micromanaged table when a insert transaction is aborted |  Major | Transactions | Steve Yeom | Steve Yeom |
| [HIVE-18951](https://issues.apache.org/jira/browse/HIVE-18951) | Fix the llapdump usage error in llapdump.sh |  Minor | . | Saijin Huang | Saijin Huang |
| [HIVE-18962](https://issues.apache.org/jira/browse/HIVE-18962) | add WM task state to Tez AM heartbeat |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18970](https://issues.apache.org/jira/browse/HIVE-18970) | improve AM WM metrics for use in Grafana and such |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18968](https://issues.apache.org/jira/browse/HIVE-18968) | LLAP: report guaranteed tasks count in AM registry to check for consistency |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18892](https://issues.apache.org/jira/browse/HIVE-18892) | Fix NPEs in HiveMetastore.exchange\_partitions method |  Minor | Metastore | Marta Kuczora | Marta Kuczora |
| [HIVE-18699](https://issues.apache.org/jira/browse/HIVE-18699) | Check for duplicate partitions in HiveMetastore.exchange\_partitions |  Minor | Metastore | Marta Kuczora | Marta Kuczora |
| [HIVE-18975](https://issues.apache.org/jira/browse/HIVE-18975) | NPE when inserting NULL value in structure and array with HBase table |  Major | HBase Handler | Oleksiy Sayankin | Oleksiy Sayankin |
| [HIVE-18858](https://issues.apache.org/jira/browse/HIVE-18858) | System properties in job configuration not resolved when submitting MR job |  Major | . | Daniel Voros | Daniel Voros |
| [HIVE-18965](https://issues.apache.org/jira/browse/HIVE-18965) | HIVE-17990 didn't update derby SQL scripts |  Major | Metastore | Alan Gates | Alan Gates |
| [HIVE-18992](https://issues.apache.org/jira/browse/HIVE-18992) | enable synthetic file IDs by default in LLAP |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14032](https://issues.apache.org/jira/browse/HIVE-14032) | INSERT OVERWRITE command failed with case sensitive partition key names |  Major | Metastore | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-18898](https://issues.apache.org/jira/browse/HIVE-18898) | Fix NPEs in HiveMetastore.dropPartition method |  Minor | Metastore | Marta Kuczora | Marta Kuczora |
| [HIVE-19036](https://issues.apache.org/jira/browse/HIVE-19036) | Fix whitespace error in testconfiguration.properties after HIVE-14032 |  Major | . | Adam Szita | Adam Szita |
| [HIVE-18967](https://issues.apache.org/jira/browse/HIVE-18967) | Standalone metastore SQL upgrade scripts do not properly set schema version |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-17843](https://issues.apache.org/jira/browse/HIVE-17843) | UINT32 Parquet columns are handled as signed INT32-s, silently reading incorrect data |  Major | . | Zoltan Ivanfi | Janaki Lahorani |
| [HIVE-18863](https://issues.apache.org/jira/browse/HIVE-18863) | trunc() calls itself trunk() in an error message |  Minor | UDF | Tim Armstrong | Bharathkrishna Guruvayoor Murali |
| [HIVE-19021](https://issues.apache.org/jira/browse/HIVE-19021) | WM counters are not properly propagated from LLAP to AM |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-19003](https://issues.apache.org/jira/browse/HIVE-19003) | metastoreconf logs too much on info level |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-19017](https://issues.apache.org/jira/browse/HIVE-19017) | Add util function to determine if 2 ValidWriteIdLists are at the same committed ID |  Major | . | Jason Dere | Jason Dere |
| [HIVE-18925](https://issues.apache.org/jira/browse/HIVE-18925) | Hive doesn't work when JVM is America/Bahia\_Banderas time zone |  Major | . | Piotr Findeisen | Piotr Findeisen |
| [HIVE-17098](https://issues.apache.org/jira/browse/HIVE-17098) | Race condition in Hbase tables |  Critical | HBase Handler | Oleksiy Sayankin | Oleksiy Sayankin |
| [HIVE-19042](https://issues.apache.org/jira/browse/HIVE-19042) | set MALLOC\_ARENA\_MAX for LLAP |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-19056](https://issues.apache.org/jira/browse/HIVE-19056) | IllegalArgumentException in FixAcidKeyIndex when ORC file has 0 rows |  Major | ORC, Transactions | Jason Dere | Jason Dere |
| [HIVE-19052](https://issues.apache.org/jira/browse/HIVE-19052) | Vectorization: Disable Vector Pass-Thru SMB MapJoin in the presence of old-style MR FilterMaps |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-19007](https://issues.apache.org/jira/browse/HIVE-19007) | Support REPL LOAD from primary using replica connection configurations received through WITH clause. |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-19057](https://issues.apache.org/jira/browse/HIVE-19057) | Query result caching cannot be disabled by client |  Major | Query Planning | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-18971](https://issues.apache.org/jira/browse/HIVE-18971) | add HS2 WM metrics for use in Grafana and such |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-19012](https://issues.apache.org/jira/browse/HIVE-19012) | Support builds for ARM and PPC arch |  Major | . | Vi On | Vi On |
| [HIVE-19035](https://issues.apache.org/jira/browse/HIVE-19035) | Vectorization: Disable exotic STRUCT field reference form |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-18547](https://issues.apache.org/jira/browse/HIVE-18547) | WM: trigger test may fail |  Major | . | Sergey Shelukhin | Prasanth Jayachandran |
| [HIVE-19055](https://issues.apache.org/jira/browse/HIVE-19055) | WM alter may fail if the name is not changed |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-19061](https://issues.apache.org/jira/browse/HIVE-19061) | WM needs to output an event for allocation update |  Major | . | Dileep Kumar Chiguruvada | Sergey Shelukhin |
| [HIVE-19080](https://issues.apache.org/jira/browse/HIVE-19080) | Fix travis build |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-19024](https://issues.apache.org/jira/browse/HIVE-19024) | Vectorization: Disable complex type constants for VectorUDFAdaptor |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-19062](https://issues.apache.org/jira/browse/HIVE-19062) | Update constraint\_partition\_columns.q.out |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-19032](https://issues.apache.org/jira/browse/HIVE-19032) | Vectorization: Disable GROUP BY aggregations with DISTINCT |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-19043](https://issues.apache.org/jira/browse/HIVE-19043) | Vectorization: LazySimpleDeserializeRead fewer fields handling is broken for Complex Types |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-19018](https://issues.apache.org/jira/browse/HIVE-19018) | beeline -e now requires semicolon even when used with query from command line |  Major | Beeline | Aihua Xu | Aihua Xu |
| [HIVE-19047](https://issues.apache.org/jira/browse/HIVE-19047) | Only the first init file is interpreted |  Major | Beeline | Zoltan Haindrich | Bharathkrishna Guruvayoor Murali |
| [HIVE-19019](https://issues.apache.org/jira/browse/HIVE-19019) | Vectorization: When vectorized, orc\_merge\_incompat\_schema.q throws HiveException "Not implemented yet" from VectorExpressionWriterMap |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-19037](https://issues.apache.org/jira/browse/HIVE-19037) | Vectorization: Miscellaneous cleanup |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-18963](https://issues.apache.org/jira/browse/HIVE-18963) | JDBC: Provide an option to simplify beeline usage by supporting default and named URL for beeline |  Major | Beeline | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-19073](https://issues.apache.org/jira/browse/HIVE-19073) | StatsOptimizer may mangle constant columns |  Major | Physical Optimizer | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-19071](https://issues.apache.org/jira/browse/HIVE-19071) | WM: backup resource plans cannot be used without quoted idenitifiers |  Major | . | Dileep Kumar Chiguruvada | Sergey Shelukhin |
| [HIVE-19072](https://issues.apache.org/jira/browse/HIVE-19072) | incorrect token handling for LLAP plugin endpoint |  Major | . | Aswathy Chellammal Sreekumar | Sergey Shelukhin |
| [HIVE-18955](https://issues.apache.org/jira/browse/HIVE-18955) | HoS: Unable to create Channel from class NioServerSocketChannel |  Blocker | Spark | Rui Li | Rui Li |
| [HIVE-18877](https://issues.apache.org/jira/browse/HIVE-18877) | HiveSchemaTool.validateSchemaTables() should wrap a SQLException when rethrowing |  Major | . | Andrew Sherman | Andrew Sherman |
| [HIVE-15995](https://issues.apache.org/jira/browse/HIVE-15995) | Syncing metastore table with serde schema |  Major | Metastore | Michal Ferlinski | Adam Szita |
| [HIVE-18976](https://issues.apache.org/jira/browse/HIVE-18976) | Add ability to setup Druid Kafka Ingestion from Hive |  Major | Druid integration | Nishant Bangarwa | Nishant Bangarwa |
| [HIVE-18972](https://issues.apache.org/jira/browse/HIVE-18972) | beeline command suggestion to kill job deprecated |  Minor | . | Bharathkrishna Guruvayoor Murali | Bharathkrishna Guruvayoor Murali |
| [HIVE-19100](https://issues.apache.org/jira/browse/HIVE-19100) | investigate TestStreaming failures |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18990](https://issues.apache.org/jira/browse/HIVE-18990) | Hive doesn't close Tez session properly |  Major | . | Igor Kryvenko | Igor Kryvenko |
| [HIVE-19085](https://issues.apache.org/jira/browse/HIVE-19085) | FastHiveDecimal abs(0) sets sign to +ve |  Minor | Hive, Vectorization | ACOSS | Gopal V |
| [HIVE-19075](https://issues.apache.org/jira/browse/HIVE-19075) | Fix NPE when trying to drop or get DB with null name |  Minor | Metastore | Marta Kuczora | Marta Kuczora |
| [HIVE-19050](https://issues.apache.org/jira/browse/HIVE-19050) | DBNotificationListener does not catch exceptions in the cleaner thread |  Minor | Metastore, Standalone Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-19065](https://issues.apache.org/jira/browse/HIVE-19065) | Metastore client compatibility check should include syncMetaStoreClient |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-18775](https://issues.apache.org/jira/browse/HIVE-18775) | HIVE-17983 missed deleting metastore/scripts/upgrade/derby/hive-schema-3.0.0.derby.sql |  Blocker | . | Vineet Garg | Alan Gates |
| [HIVE-19116](https://issues.apache.org/jira/browse/HIVE-19116) | Vectorization: Vector Map data type doesn't keep the order of the key/values pairs as read |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-19102](https://issues.apache.org/jira/browse/HIVE-19102) | Vectorization: Suppress known Q file bugs |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-19121](https://issues.apache.org/jira/browse/HIVE-19121) | Fix HiveSchemaTool validation for databases that don't support schema |  Minor | Hive | Miklos Gergely | Miklos Gergely |
| [HIVE-12719](https://issues.apache.org/jira/browse/HIVE-12719) | As a hive user, I am facing issues using permanent UDAF's. |  Major | Hive | Surbhit | Ganesha Shreedhara |
| [HIVE-18886](https://issues.apache.org/jira/browse/HIVE-18886) | ACID: NPE on unexplained mysql exceptions |  Major | Transactions | Gopal V | Gopal V |
| [HIVE-18783](https://issues.apache.org/jira/browse/HIVE-18783) | ALTER TABLE post-commit listener does not include the transactional listener responses |  Major | . | Na Li | Sergio Peña |
| [HIVE-18859](https://issues.apache.org/jira/browse/HIVE-18859) | Incorrect handling of thrift metastore exceptions |  Major | . | Ganesha Shreedhara | Ganesha Shreedhara |
| [HIVE-19105](https://issues.apache.org/jira/browse/HIVE-19105) | HIVE-18781 broke WarehouseInstance |  Major | repl, Tests | Alan Gates | Alan Gates |
| [HIVE-19119](https://issues.apache.org/jira/browse/HIVE-19119) | Fix the TestAppendPartitions tests which are failing in the pre-commit runs |  Minor | Test | Marta Kuczora | Marta Kuczora |
| [HIVE-19074](https://issues.apache.org/jira/browse/HIVE-19074) | Vectorization: Add llap vectorization\_div0.q.out Q output file |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-19014](https://issues.apache.org/jira/browse/HIVE-19014) | utilize YARN-8028 (queue ACL check) in Hive Tez session pool |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18991](https://issues.apache.org/jira/browse/HIVE-18991) | Drop database cascade doesn't work with materialized views |  Major | Materialized views, Metastore | Alan Gates | Jesus Camacho Rodriguez |
| [HIVE-19130](https://issues.apache.org/jira/browse/HIVE-19130) | NPE is thrown when REPL LOAD applied drop partition event. |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-19187](https://issues.apache.org/jira/browse/HIVE-19187) | Update Druid Storage Handler to Druid 0.12.0 |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-19155](https://issues.apache.org/jira/browse/HIVE-19155) | Day time saving cause Druid inserts to fail with org.apache.hive.druid.io.druid.java.util.common.UOE: Cannot add overlapping segments |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-19157](https://issues.apache.org/jira/browse/HIVE-19157) | Assert that Insert into Druid Table fails if the publishing of metadata by HS2 fails |  Major | . | slim bouguerra | slim bouguerra |
| [HIVE-18816](https://issues.apache.org/jira/browse/HIVE-18816) | CREATE TABLE (ACID) doesn't work with TIMESTAMPLOCALTZ column type |  Major | Transactions | Vineet Garg | Igor Kryvenko |
| [HIVE-19200](https://issues.apache.org/jira/browse/HIVE-19200) | Vectorization: Disable vectorization for LLAP I/O when a non-VECTORIZED\_INPUT\_FILE\_FORMAT mode is needed (i.e. rows) and data type conversion is needed |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-19038](https://issues.apache.org/jira/browse/HIVE-19038) | LLAP: Service loader throws "Provider not found" exception if hive-llap-server is in class path while loading tokens |  Major | . | Arun Mahadevan | Arun Mahadevan |
| [HIVE-19224](https://issues.apache.org/jira/browse/HIVE-19224) | incorrect token handling for LLAP plugin endpoint - part 2 |  Major | . | Aswathy Chellammal Sreekumar | Sergey Shelukhin |
| [HIVE-19226](https://issues.apache.org/jira/browse/HIVE-19226) | Extend storage-api to print timestamp values in UTC |  Major | storage-api | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-19249](https://issues.apache.org/jira/browse/HIVE-19249) | Replication: WITH clause is not passing the configuration to Task correctly in all cases |  Major | repl | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-19167](https://issues.apache.org/jira/browse/HIVE-19167) | Map data type doesn't keep the order of the key/values pairs as read (Part 2, The Sequel or SQL) |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-19191](https://issues.apache.org/jira/browse/HIVE-19191) | Assertion error while running materialized view rewriting |  Major | Materialized views | Nita Dembla | Jesus Camacho Rodriguez |
| [HIVE-19219](https://issues.apache.org/jira/browse/HIVE-19219) | Incremental REPL DUMP should throw error if requested events are cleaned-up. |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-19131](https://issues.apache.org/jira/browse/HIVE-19131) | DecimalColumnStatsMergerTest comparison review |  Major | . | Laszlo Bodor | Laszlo Bodor |
| [HIVE-19230](https://issues.apache.org/jira/browse/HIVE-19230) | Schema column width inconsistency in Oracle |  Minor | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-19168](https://issues.apache.org/jira/browse/HIVE-19168) | Ranger changes for llap commands |  Major | Authorization | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-19240](https://issues.apache.org/jira/browse/HIVE-19240) | backport HIVE-17645 to 3.0 |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-19275](https://issues.apache.org/jira/browse/HIVE-19275) | Vectorization: Defer Wrong Results / Execution Failures when Vectorization turned on |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-19137](https://issues.apache.org/jira/browse/HIVE-19137) | orcfiledump doesn't print hive.acid.version value |  Major | Transactions | Eugene Koifman | Igor Kryvenko |
| [HIVE-19186](https://issues.apache.org/jira/browse/HIVE-19186) | Multi Table INSERT statements query has a flaw for partitioned table when INSERT INTO and INSERT OVERWRITE are used |  Major | Query Planning | Steve Yeom | Steve Yeom |
| [HIVE-19264](https://issues.apache.org/jira/browse/HIVE-19264) | Vectorization: Reenable vectorization in vector\_adaptor\_usage\_mode.q |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-19247](https://issues.apache.org/jira/browse/HIVE-19247) | StatsOptimizer: Missing stats fast-path for Date |  Major | Statistics | Gopal V | Gopal V |
| [HIVE-19281](https://issues.apache.org/jira/browse/HIVE-19281) | incorrect protocol name for LLAP AM plugin |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-19280](https://issues.apache.org/jira/browse/HIVE-19280) | Invalid error messages for UPDATE/DELETE on insert-only transactional tables |  Major | Parser | Steve Yeom | Steve Yeom |
| [HIVE-19215](https://issues.apache.org/jira/browse/HIVE-19215) | JavaUtils.AnyIdDirFilter ignores base\_n directories |  Major | Transactions | Eugene Koifman | Sergey Shelukhin |
| [HIVE-19260](https://issues.apache.org/jira/browse/HIVE-19260) | Streaming Ingest API doesn't normalize db.table names |  Blocker | HCatalog, Streaming, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-19233](https://issues.apache.org/jira/browse/HIVE-19233) | Add utility for acid 1.0 to 2.0 migration |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-19315](https://issues.apache.org/jira/browse/HIVE-19315) | Test failure org.apache.hadoop.hive.ql.lockmgr.TestDbTxnManager2#testWriteSetTracking3 |  Major | Test, Tests, Transactions | Pravin Dsilva | Eugene Koifman |
| [HIVE-19277](https://issues.apache.org/jira/browse/HIVE-19277) | Active/Passive HA web endpoints does not allow cross origin requests |  Major | HiveServer2 | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-19124](https://issues.apache.org/jira/browse/HIVE-19124) | implement a basic major compactor for MM tables |  Major | Transactions | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-19269](https://issues.apache.org/jira/browse/HIVE-19269) | Vectorization: Turn On by Default |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-19331](https://issues.apache.org/jira/browse/HIVE-19331) | Repl load config in "with" clause not pass to Context.getStagingDir |  Major | repl | Daniel Dai | Daniel Dai |
| [HIVE-19330](https://issues.apache.org/jira/browse/HIVE-19330) | multi\_insert\_partitioned.q fails with "src table does not exist" message. |  Major | Hive | Steve Yeom | Steve Yeom |
| [HIVE-19239](https://issues.apache.org/jira/browse/HIVE-19239) | Check for possible null timestamp fields during SerDe from Druid events |  Major | . | slim bouguerra | slim bouguerra |
| [HIVE-19324](https://issues.apache.org/jira/browse/HIVE-19324) | improve YARN queue check error message in Tez pool |  Major | . | Deepesh Khandelwal | Sergey Shelukhin |
| [HIVE-19338](https://issues.apache.org/jira/browse/HIVE-19338) | isExplicitAnalyze method may be incorrect in BasicStatsTask |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-19350](https://issues.apache.org/jira/browse/HIVE-19350) | Vectorization: Turn off vectorization for explainuser\_1.q / spark\_explainuser\_1 |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-19054](https://issues.apache.org/jira/browse/HIVE-19054) | Function replication shall use "hive.repl.replica.functions.root.dir" as root |  Major | repl | Daniel Dai | Daniel Dai |
| [HIVE-19352](https://issues.apache.org/jira/browse/HIVE-19352) | Vectorization: Disable vectorization for org.apache.hive.jdbc.TestJdbcDriver2.testResultSetMetaData |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-19339](https://issues.apache.org/jira/browse/HIVE-19339) | Regenerate alltypesorc file with latest ORC |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-19282](https://issues.apache.org/jira/browse/HIVE-19282) | don't nest delta directories inside LB directories for ACID tables |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-19363](https://issues.apache.org/jira/browse/HIVE-19363) | remove cryptic metrics from LLAP IO output |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-19362](https://issues.apache.org/jira/browse/HIVE-19362) | enable LLAP cache affinity by default |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-19120](https://issues.apache.org/jira/browse/HIVE-19120) | catalog not properly set for some tables in SQL upgrade scripts |  Blocker | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-19365](https://issues.apache.org/jira/browse/HIVE-19365) | Index on COMPLETED\_TXN\_COMPONENTS in Metastore RDBMS has different names in different scripts |  Blocker | Metastore | Alan Gates | Alan Gates |
| [HIVE-19327](https://issues.apache.org/jira/browse/HIVE-19327) | qroupby\_rollup\_empty.q fails for insert-only transactional tables |  Major | Hive | Steve Yeom | Steve Yeom |
| [HIVE-19231](https://issues.apache.org/jira/browse/HIVE-19231) | Beeline generates garbled output when using UnsupportedTerminal |  Major | Beeline | Naveen Gangam | Naveen Gangam |
| [HIVE-19361](https://issues.apache.org/jira/browse/HIVE-19361) | Backport HIVE-18910 to branch -3 |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-19386](https://issues.apache.org/jira/browse/HIVE-19386) | Move TABLE\_BUCKETING\_VERSION to hive\_metastore.thrift |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-19367](https://issues.apache.org/jira/browse/HIVE-19367) | Load Data should fail for empty Parquet files. |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-19383](https://issues.apache.org/jira/browse/HIVE-19383) | Add ArrayList$SubList kryo serializer |  Major | Query Planning | Deepesh Khandelwal | Ashutosh Chauhan |
| [HIVE-17457](https://issues.apache.org/jira/browse/HIVE-17457) | IOW Acid Insert Overwrite when the transaction fails |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18667](https://issues.apache.org/jira/browse/HIVE-18667) | Materialized views: rewrites should be triggered without checks if the time.window=-1 |  Major | Materialized views | Gopal V | Jesus Camacho Rodriguez |
| [HIVE-19030](https://issues.apache.org/jira/browse/HIVE-19030) | Update Wiki with new rules for Load Data |  Major | Transactions | Eugene Koifman | Deepak Jaiswal |
| [HIVE-19394](https://issues.apache.org/jira/browse/HIVE-19394) | WM\_TRIGGER trigger creation failed with type cast from Integer to Boolean |  Minor | Metastore | Thai Bui | Thai Bui |
| [HIVE-19396](https://issues.apache.org/jira/browse/HIVE-19396) | HiveOperation is incorrectly set for analyze statement |  Major | Query Planning | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-17978](https://issues.apache.org/jira/browse/HIVE-17978) | Shared work optimizer may leave useless operator branches in the plan |  Major | Hive | Nita Dembla | Jesus Camacho Rodriguez |
| [HIVE-19420](https://issues.apache.org/jira/browse/HIVE-19420) | Support LOAD from SeqFile to ORC table |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-19423](https://issues.apache.org/jira/browse/HIVE-19423) | REPL LOAD creates staging directory in source dump directory instead of table data location |  Major | Hive, HiveServer2, repl | mahesh kumar behera | mahesh kumar behera |
| [HIVE-19410](https://issues.apache.org/jira/browse/HIVE-19410) | don't create serde reader in LLAP if there's no cache |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-19310](https://issues.apache.org/jira/browse/HIVE-19310) | Metastore: MetaStoreDirectSql.ensureDbInit has some slow DN calls which might need to be run only in test env |  Major | Metastore | Vaibhav Gumashta | Sergey Shelukhin |
| [HIVE-18380](https://issues.apache.org/jira/browse/HIVE-18380) | ALTER TABLE CONCATENATE is not supported on Micro-managed table |  Minor | Transactions | Steve Yeom | Eugene Koifman |
| [HIVE-19298](https://issues.apache.org/jira/browse/HIVE-19298) | Fix operator tree of CTAS for Druid Storage Handler |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-19446](https://issues.apache.org/jira/browse/HIVE-19446) | QueryCache: Transaction lists needed for pending cache entries |  Major | . | Gopal V | Jason Dere |
| [HIVE-19448](https://issues.apache.org/jira/browse/HIVE-19448) | Vectorization: sysdb test doesn't work after enabling vectorization by default |  Major | Hive | Matt McCline | Matt McCline |
| [HIVE-19248](https://issues.apache.org/jira/browse/HIVE-19248) | REPL LOAD couldn't copy file from source CM path and also doesn't throw error if file copy fails. |  Critical | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17463](https://issues.apache.org/jira/browse/HIVE-17463) | ORC: include orc-shims in hive-exec.jar |  Minor | ORC | Gopal V | Gopal V |
| [HIVE-19477](https://issues.apache.org/jira/browse/HIVE-19477) | Hiveserver2 in http mode not emitting metric default.General.open\_connections |  Minor | HiveServer2 | Dinesh Chitlangia | Jesus Camacho Rodriguez |
| [HIVE-19483](https://issues.apache.org/jira/browse/HIVE-19483) | Metastore cleaner tasks that run periodically are created more than once |  Major | Metastore | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-19479](https://issues.apache.org/jira/browse/HIVE-19479) | encoded stream seek is incorrect for 0-length RGs in LLAP IO |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18666](https://issues.apache.org/jira/browse/HIVE-18666) | Materialized view: "create materialized enable rewrite" should fail if rewriting is not possible |  Critical | Materialized views | Gopal V | Jesus Camacho Rodriguez |
| [HIVE-19435](https://issues.apache.org/jira/browse/HIVE-19435) | Incremental replication cause data loss if a table is dropped followed by create and insert-into with different partition type. |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-19476](https://issues.apache.org/jira/browse/HIVE-19476) | Fix failures in TestReplicationScenariosAcidTables, TestReplicationOnHDFSEncryptedZones and TestCopyUtils |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-19506](https://issues.apache.org/jira/browse/HIVE-19506) | Test suites timing out |  Blocker | . | Vineet Garg | Vineet Garg |
| [HIVE-19384](https://issues.apache.org/jira/browse/HIVE-19384) | Vectorization: IfExprTimestamp\* do not handle NULLs correctly |  Blocker | Hive | Matt McCline | Matt McCline |
| [HIVE-19474](https://issues.apache.org/jira/browse/HIVE-19474) | Decimal type should be casted as part of the CTAS or INSERT Clause. |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-19433](https://issues.apache.org/jira/browse/HIVE-19433) | HiveJoinPushTransitivePredicatesRule hangs |  Major | Logical Optimizer | Vineet Garg | Vineet Garg |
| [HIVE-19108](https://issues.apache.org/jira/browse/HIVE-19108) | Vectorization and Parquet: Turning on vectorization in parquet\_ppd\_decimal.q causes Wrong Query Results |  Critical | Hive | Matt McCline | Haifeng Chen |
| [HIVE-19381](https://issues.apache.org/jira/browse/HIVE-19381) | Function replication in cloud fail when download resource from AWS |  Major | repl | Daniel Dai | Daniel Dai |
| [HIVE-11105](https://issues.apache.org/jira/browse/HIVE-11105) | NegativeArraySizeException from org.apache.hadoop.io.BytesWritable.setCapacity during serialization phase |  Major | . | Priyesh Raj |  |
| [HIVE-18762](https://issues.apache.org/jira/browse/HIVE-18762) | Support ALTER TABLE SET OWNER command |  Major | Metastore | kalyan kumar kalvagadda | Sergio Peña |


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
| [HIVE-17430](https://issues.apache.org/jira/browse/HIVE-17430) | Add LOAD DATA test for blobstores |  Major | Tests | Yuzhou Sun | Yuzhou Sun |
| [HIVE-13843](https://issues.apache.org/jira/browse/HIVE-13843) | Re-enable the HoS tests disabled in HIVE-13402 |  Major | . | Rui Li | Sahil Takiar |
| [HIVE-17636](https://issues.apache.org/jira/browse/HIVE-17636) | Add multiple\_agg.q test for blobstores |  Major | Tests | Ran Gu | Ran Gu |
| [HIVE-17789](https://issues.apache.org/jira/browse/HIVE-17789) | Flaky test: TestSessionManagerMetrics.testAbandonedSessionMetrics has timing related problems |  Major | Test | Andrew Sherman | Andrew Sherman |
| [HIVE-17729](https://issues.apache.org/jira/browse/HIVE-17729) | Add Database & Explain related blobstore tests |  Major | Tests | Rentao Wu | Rentao Wu |
| [HIVE-17820](https://issues.apache.org/jira/browse/HIVE-17820) | Add buckets.q test for blobstores |  Major | Tests | Ran Gu | Ran Gu |
| [HIVE-18089](https://issues.apache.org/jira/browse/HIVE-18089) | Update golden files for few tests |  Major | Test | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-18100](https://issues.apache.org/jira/browse/HIVE-18100) | Some tests time out |  Major | Test | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-18186](https://issues.apache.org/jira/browse/HIVE-18186) | Fix wrong assertion in TestHiveMetaStoreAlterColumnPar test |  Minor | Test | Bertalan Kondrat | Bertalan Kondrat |
| [HIVE-18041](https://issues.apache.org/jira/browse/HIVE-18041) | Add SORT\_QUERY\_RESULTS to subquery\_multi |  Trivial | . | Rui Li | Rui Li |
| [HIVE-18485](https://issues.apache.org/jira/browse/HIVE-18485) | Add more unit tests for hive.strict.checks.\* properties |  Major | Test | Sahil Takiar | Sahil Takiar |
| [HIVE-18588](https://issues.apache.org/jira/browse/HIVE-18588) | Add 'checkin' profile that runs slower tests in standalone-metastore |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-18260](https://issues.apache.org/jira/browse/HIVE-18260) | Add test case scenarios for materialized views invalidation cache and registry |  Major | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18327](https://issues.apache.org/jira/browse/HIVE-18327) | Remove the unnecessary HiveConf dependency for MiniHiveKdc |  Major | Test | Aihua Xu | Daniel Voros |
| [HIVE-18867](https://issues.apache.org/jira/browse/HIVE-18867) | create\_with\_constraints\_duplicate\_name and default\_constraint\_invalid\_default\_value\_length failing |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-19060](https://issues.apache.org/jira/browse/HIVE-19060) | Fix the TestAppendPartitions.testAppendPartitionNullPartValues |  Minor | Test | Marta Kuczora | Marta Kuczora |
| [HIVE-19123](https://issues.apache.org/jira/browse/HIVE-19123) | TestNegativeCliDriver nopart\_insert failing |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-19143](https://issues.apache.org/jira/browse/HIVE-19143) | Update golden files for negative tests |  Major | Test | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-19271](https://issues.apache.org/jira/browse/HIVE-19271) | TestMiniLlapLocalCliDriver default\_constraint and check\_constraint failing |  Major | . | Vineet Garg | Vineet Garg |


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
| [HIVE-16779](https://issues.apache.org/jira/browse/HIVE-16779) | CachedStore leak PersistenceManager resources |  Major | Metastore | Daniel Dai | Daniel Dai |
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
| [HIVE-16848](https://issues.apache.org/jira/browse/HIVE-16848) | NPE during CachedStore refresh |  Major | Metastore | Daniel Dai | Daniel Dai |
| [HIVE-16644](https://issues.apache.org/jira/browse/HIVE-16644) | Hook Change Manager to Insert Overwrite |  Major | Hive, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-15490](https://issues.apache.org/jira/browse/HIVE-15490) | REPL LOAD & DUMP support for INSERT events with change management |  Major | repl | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-16813](https://issues.apache.org/jira/browse/HIVE-16813) | Incremental REPL LOAD should load the events in the same sequence as it is dumped. |  Major | Hive, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-16837](https://issues.apache.org/jira/browse/HIVE-16837) | MetadataOnly optimizer conflicts with count distinct rewrite |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16729](https://issues.apache.org/jira/browse/HIVE-16729) | Improve location validator to check for blank paths. |  Minor | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-16600](https://issues.apache.org/jira/browse/HIVE-16600) | Refactor SetSparkReducerParallelism#needSetParallelism to enable parallel order by in multi\_insert cases |  Major | . | liyunzhang | liyunzhang |
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
| [HIVE-17168](https://issues.apache.org/jira/browse/HIVE-17168) | Create separate module for stand alone metastore |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-17087](https://issues.apache.org/jira/browse/HIVE-17087) | Remove unnecessary HoS DPP trees during map-join conversion |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-17153](https://issues.apache.org/jira/browse/HIVE-17153) | Flaky test: TestMiniSparkOnYarnCliDriver[spark\_dynamic\_partition\_pruning] |  Major | Spark, Test | Sahil Takiar | Sahil Takiar |
| [HIVE-17185](https://issues.apache.org/jira/browse/HIVE-17185) | TestHiveMetaStoreStatsMerge.testStatsMerge is failing |  Major | Metastore, Test | Ashutosh Chauhan | Pengcheng Xiong |
| [HIVE-16998](https://issues.apache.org/jira/browse/HIVE-16998) | Add config to enable HoS DPP only for map-joins |  Major | Logical Optimizer, Spark | Sahil Takiar | Janaki Lahorani |
| [HIVE-17167](https://issues.apache.org/jira/browse/HIVE-17167) | Create metastore specific configuration tool |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-16974](https://issues.apache.org/jira/browse/HIVE-16974) | Change the sort key for the schema tool validator to be \<ID\> |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-17212](https://issues.apache.org/jira/browse/HIVE-17212) | Dynamic add partition by insert shouldn't generate INSERT event. |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17170](https://issues.apache.org/jira/browse/HIVE-17170) | Move thrift generated code to stand alone metastore |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-16294](https://issues.apache.org/jira/browse/HIVE-16294) | Support snapshot for truncate table |  Major | Query Processor | Vihang Karajgaonkar | Barna Zsombor Klara |
| [HIVE-16895](https://issues.apache.org/jira/browse/HIVE-16895) |  Multi-threaded execution of bootstrap dump of partitions |  Major | HiveServer2 | anishek | anishek |
| [HIVE-17247](https://issues.apache.org/jira/browse/HIVE-17247) | HoS DPP: UDFs on the partition column side does not evaluate correctly |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-16896](https://issues.apache.org/jira/browse/HIVE-16896) | move replication load related work in semantic analysis phase to execution phase using a task |  Major | . | anishek | anishek |
| [HIVE-15705](https://issues.apache.org/jira/browse/HIVE-15705) | Event replication for constraints |  Major | repl | Daniel Dai | Daniel Dai |
| [HIVE-17224](https://issues.apache.org/jira/browse/HIVE-17224) | Move JDO classes to standalone metastore |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-17289](https://issues.apache.org/jira/browse/HIVE-17289) | EXPORT and IMPORT shouldn't perform distcp with doAs privileged user. |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-16990](https://issues.apache.org/jira/browse/HIVE-16990) | REPL LOAD should update last repl ID only after successful copy of data files. |  Major | Hive, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17195](https://issues.apache.org/jira/browse/HIVE-17195) | Long chain of tasks created by REPL LOAD shouldn't cause stack corruption. |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17256](https://issues.apache.org/jira/browse/HIVE-17256) | add a notion of a guaranteed task to LLAP |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17346](https://issues.apache.org/jira/browse/HIVE-17346) | TestMiniSparkOnYarnCliDriver[spark\_dynamic\_partition\_pruning] is failing every time |  Major | Test | Peter Vary | Peter Vary |
| [HIVE-17347](https://issues.apache.org/jira/browse/HIVE-17347) | TestMiniSparkOnYarnCliDriver[spark\_dynamic\_partition\_pruning\_mapjoin\_only] is failing every time |  Major | Test | Peter Vary | Peter Vary |
| [HIVE-14747](https://issues.apache.org/jira/browse/HIVE-14747) | Remove JAVA paths from profiles by sending them from ptest-client |  Major | Hive, Testing Infrastructure | Sergio Peña | Barna Zsombor Klara |
| [HIVE-17316](https://issues.apache.org/jira/browse/HIVE-17316) | Use String.startsWith for the hidden configuration variables |  Major | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-17292](https://issues.apache.org/jira/browse/HIVE-17292) | Change TestMiniSparkOnYarnCliDriver test configuration to use the configured cores |  Major | Spark, Test | Peter Vary | Peter Vary |
| [HIVE-17132](https://issues.apache.org/jira/browse/HIVE-17132) | Add InterfaceAudience and InterfaceStability annotations for UDF APIs |  Major | UDF | Sahil Takiar | Sahil Takiar |
| [HIVE-17319](https://issues.apache.org/jira/browse/HIVE-17319) | Make BoneCp configurable using hive properties in hive-site.xml |  Major | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-17215](https://issues.apache.org/jira/browse/HIVE-17215) | Streaming Ingest API writing unbucketed tables |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17380](https://issues.apache.org/jira/browse/HIVE-17380) | refactor LlapProtocolClientProxy to be usable with other protocols |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17318](https://issues.apache.org/jira/browse/HIVE-17318) | Make Hikari CP configurable using hive properties in hive-site.xml |  Major | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-17330](https://issues.apache.org/jira/browse/HIVE-17330) | refactor TezSessionPoolManager to separate its multiple functions |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17205](https://issues.apache.org/jira/browse/HIVE-17205) | add functional support for unbucketed tables |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17375](https://issues.apache.org/jira/browse/HIVE-17375) | stddev\_samp,var\_samp standard compliance |  Minor | SQL | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17100](https://issues.apache.org/jira/browse/HIVE-17100) | Improve HS2 operation logs for REPL commands. |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17216](https://issues.apache.org/jira/browse/HIVE-17216) | Additional qtests for HoS DPP |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-17381](https://issues.apache.org/jira/browse/HIVE-17381) | When we enable Parquet Writer Version V2, hive throws an exception: Unsupported encoding: DELTA\_BYTE\_ARRAY. |  Major | . | Ke Jia | Colin Ma |
| [HIVE-17409](https://issues.apache.org/jira/browse/HIVE-17409) | refactor LLAP ZK registry to make the ZK-registry part reusable |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17297](https://issues.apache.org/jira/browse/HIVE-17297) | allow AM to use LLAP guaranteed tasks |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17405](https://issues.apache.org/jira/browse/HIVE-17405) | HoS DPP ConstantPropagate should use ConstantPropagateOption.SHORTCUT |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-17225](https://issues.apache.org/jira/browse/HIVE-17225) | HoS DPP pruning sink ops can target parallel work objects |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-17414](https://issues.apache.org/jira/browse/HIVE-17414) | HoS DPP + Vectorization generates invalid explain plan due to CombineEquivalentWorkResolver |  Major | Spark | Sahil Takiar | liyunzhang |
| [HIVE-17382](https://issues.apache.org/jira/browse/HIVE-17382) | Change startsWith relation introduced in HIVE-17316 |  Major | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-17455](https://issues.apache.org/jira/browse/HIVE-17455) | External LLAP client: connection to HS2 should be kept open until explicitly closed |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-17183](https://issues.apache.org/jira/browse/HIVE-17183) | Disable rename operations during bootstrap dump |  Major | repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17456](https://issues.apache.org/jira/browse/HIVE-17456) | Set current database for external LLAP interface |  Major | llap | Jason Dere | Jason Dere |
| [HIVE-17359](https://issues.apache.org/jira/browse/HIVE-17359) | Deal with TypeInfo dependencies in the metastore |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-17387](https://issues.apache.org/jira/browse/HIVE-17387) | implement Tez AM registry in Hive |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17494](https://issues.apache.org/jira/browse/HIVE-17494) | Bootstrap REPL DUMP throws exception if a partitioned table is dropped while reading partitions. |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17488](https://issues.apache.org/jira/browse/HIVE-17488) | Move first set of classes to standalone metastore |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-17515](https://issues.apache.org/jira/browse/HIVE-17515) | Use SHA-256 for GenericUDFMaskHash to improve security |  Major | UDF | Tao Li | Tao Li |
| [HIVE-17514](https://issues.apache.org/jira/browse/HIVE-17514) | Use SHA-256 for cookie signer to improve security |  Major | HiveServer2 | Tao Li | Tao Li |
| [HIVE-17196](https://issues.apache.org/jira/browse/HIVE-17196) | CM: ReplCopyTask should retain the original file names even if copied from CM path. |  Major | repl | Sankar Hariappan | Daniel Dai |
| [HIVE-17537](https://issues.apache.org/jira/browse/HIVE-17537) | Move Warehouse class to standalone metastore |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-17428](https://issues.apache.org/jira/browse/HIVE-17428) | REPL LOAD of ALTER\_PARTITION event doesn't create import tasks if the partition doesn't exist during analyze phase. |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-15899](https://issues.apache.org/jira/browse/HIVE-15899) | Make CTAS with acid target table and insert into acid\_tbl select ... union all ... work |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17112](https://issues.apache.org/jira/browse/HIVE-17112) | Reduce logging in HiveSparkClientFactory and RemoteHiveSparkClient |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-17541](https://issues.apache.org/jira/browse/HIVE-17541) | Move testing related methods from MetaStoreUtils to some testing related utility |  Major | Standalone Metastore | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17527](https://issues.apache.org/jira/browse/HIVE-17527) | Support replication for rename/move table across database |  Major | repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17157](https://issues.apache.org/jira/browse/HIVE-17157) | Add InterfaceAudience and InterfaceStability annotations for ObjectInspector APIs |  Major | Serializers/Deserializers | Sahil Takiar | Sahil Takiar |
| [HIVE-17482](https://issues.apache.org/jira/browse/HIVE-17482) | External LLAP client: acquire locks for tables queried directly by LLAP |  Major | llap, Transactions | Jason Dere | Jason Dere |
| [HIVE-17608](https://issues.apache.org/jira/browse/HIVE-17608) | REPL LOAD should overwrite the data files if exists instead of duplicating it |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17681](https://issues.apache.org/jira/browse/HIVE-17681) | Need to log bootstrap dump progress state property to HS2 logs. |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17566](https://issues.apache.org/jira/browse/HIVE-17566) | Create schema required for workload management. |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [HIVE-17728](https://issues.apache.org/jira/browse/HIVE-17728) | TestHCatClient should use hive.metastore.transactional.event.listeners as per recommendation. |  Major | repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17629](https://issues.apache.org/jira/browse/HIVE-17629) | CachedStore - wait for prewarm at use time, not init time |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17757](https://issues.apache.org/jira/browse/HIVE-17757) | REPL LOAD need to use customised configurations to execute distcp/remote copy. |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17708](https://issues.apache.org/jira/browse/HIVE-17708) | Upgrade surefire to 2.20.1 |  Major | Build Infrastructure | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-15212](https://issues.apache.org/jira/browse/HIVE-15212) | merge branch into master |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17733](https://issues.apache.org/jira/browse/HIVE-17733) | Move RawStore to standalone metastore |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-17534](https://issues.apache.org/jira/browse/HIVE-17534) | Add a config to turn off parquet vectorization |  Minor | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-17692](https://issues.apache.org/jira/browse/HIVE-17692) | Block HCat on Acid tables |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17214](https://issues.apache.org/jira/browse/HIVE-17214) | check/fix conversion of unbucketed non-acid to acid |  Minor | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16688](https://issues.apache.org/jira/browse/HIVE-16688) | Make sure Alter Table to set transaction=true acquires X lock |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17756](https://issues.apache.org/jira/browse/HIVE-17756) | Enable subquery related Qtests for Hive on Spark |  Major | Logical Optimizer | Dapeng Sun | Dapeng Sun |
| [HIVE-17371](https://issues.apache.org/jira/browse/HIVE-17371) | Move tokenstores to metastore module |  Major | Standalone Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-17508](https://issues.apache.org/jira/browse/HIVE-17508) | Implement global execution triggers based on counters |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17506](https://issues.apache.org/jira/browse/HIVE-17506) | Fix standalone-metastore pom.xml to not depend on hive's main pom |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-17473](https://issues.apache.org/jira/browse/HIVE-17473) | implement workload management pools |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17607](https://issues.apache.org/jira/browse/HIVE-17607) | remove ColumnStatsDesc usage from columnstatsupdatetask |  Major | . | Zoltan Haindrich | Gergely Hajós |
| [HIVE-17887](https://issues.apache.org/jira/browse/HIVE-17887) | Incremental REPL LOAD with Drop partition event on timestamp type partition column fails. |  Major | HiveServer2, repl | Santhosh B Gowda | Sankar Hariappan |
| [HIVE-17617](https://issues.apache.org/jira/browse/HIVE-17617) | Rollup of an empty resultset should contain the grouping of the empty grouping set |  Major | SQL | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17842](https://issues.apache.org/jira/browse/HIVE-17842) | Run checkstyle on ptest2 module with proper configuration |  Major | . | Adam Szita | Adam Szita |
| [HIVE-17771](https://issues.apache.org/jira/browse/HIVE-17771) | Implement commands to manage resource plan |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [HIVE-16722](https://issues.apache.org/jira/browse/HIVE-16722) | Converting bucketed non-acid table to acid should perform validation |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16601](https://issues.apache.org/jira/browse/HIVE-16601) | Display Session Id and Query Name / Id in Spark UI |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-17743](https://issues.apache.org/jira/browse/HIVE-17743) | Add InterfaceAudience and InterfaceStability annotations for Thrift generated APIs |  Major | Thrift API | Sahil Takiar | Sahil Takiar |
| [HIVE-17696](https://issues.apache.org/jira/browse/HIVE-17696) | Vectorized reader does not seem to be pushing down projection columns in certain code paths |  Major | . | Vihang Karajgaonkar | Ferdinand Xu |
| [HIVE-17778](https://issues.apache.org/jira/browse/HIVE-17778) | Add support for custom counters in trigger expression |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17888](https://issues.apache.org/jira/browse/HIVE-17888) | Display the reason for query cancellation |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17884](https://issues.apache.org/jira/browse/HIVE-17884) | Implement create, alter and drop workload management triggers |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [HIVE-17698](https://issues.apache.org/jira/browse/HIVE-17698) | FileSinkDesk.getMergeInputDirName() uses stmtId=0 |  Major | Transactions | Eugene Koifman | Sergey Shelukhin |
| [HIVE-17858](https://issues.apache.org/jira/browse/HIVE-17858) | MM - some union cases are broken |  Major | Transactions | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17748](https://issues.apache.org/jira/browse/HIVE-17748) | ReplCopyTask doesn't support multi-file CopyWork |  Major | Transactions | Eugene Koifman | Sergey Shelukhin |
| [HIVE-17750](https://issues.apache.org/jira/browse/HIVE-17750) | add a flag to automatically create most tables as MM |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17841](https://issues.apache.org/jira/browse/HIVE-17841) | implement applying the resource plan |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17850](https://issues.apache.org/jira/browse/HIVE-17850) | can VectorizedOrcAcidRowReader be removed once HIVE-17458 is done? |  Minor | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17913](https://issues.apache.org/jira/browse/HIVE-17913) | Cleanup unused methods in Driver |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17933](https://issues.apache.org/jira/browse/HIVE-17933) | make antlr output directory to use a top-level sourceset |  Major | Standalone Metastore | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17945](https://issues.apache.org/jira/browse/HIVE-17945) | Support column projection for index access when using Parquet Vectorization |  Major | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-17926](https://issues.apache.org/jira/browse/HIVE-17926) | Support triggers for non-pool sessions |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17907](https://issues.apache.org/jira/browse/HIVE-17907) | enable and apply resource plan commands in HS2 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17874](https://issues.apache.org/jira/browse/HIVE-17874) | Parquet vectorization fails on tables with complex columns when there are no projected columns |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-15016](https://issues.apache.org/jira/browse/HIVE-15016) | Run tests with Hadoop 3.0.0-beta1 |  Major | Hive | Sergio Peña | Aihua Xu |
| [HIVE-16827](https://issues.apache.org/jira/browse/HIVE-16827) | Merge stats task and column stats task into a single task |  Major | . | Pengcheng Xiong | Zoltan Haindrich |
| [HIVE-16532](https://issues.apache.org/jira/browse/HIVE-16532) | HIVE on hadoop 3 build failed due to hdfs client/server jar separation |  Blocker | . | Junping Du |  |
| [HIVE-15326](https://issues.apache.org/jira/browse/HIVE-15326) | Hive shims report Unrecognized Hadoop major version number: 3.0.0-alpha2-SNAPSHOT |  Major | Hive | Steve Loughran |  |
| [HIVE-17996](https://issues.apache.org/jira/browse/HIVE-17996) | Fix ASF headers |  Major | . | Adam Szita | Adam Szita |
| [HIVE-17997](https://issues.apache.org/jira/browse/HIVE-17997) | Add rat plugin and configuration to standalone metastore pom |  Major | Metastore, Standalone Metastore | Adam Szita | Adam Szita |
| [HIVE-17902](https://issues.apache.org/jira/browse/HIVE-17902) | add notions of default pool and start adding unmanaged mapping |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17961](https://issues.apache.org/jira/browse/HIVE-17961) | NPE during initialization of VectorizedParquetRecordReader when input split is null |  Major | Hive | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-18028](https://issues.apache.org/jira/browse/HIVE-18028) | fix WM based on cluster smoke test; add logging |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17995](https://issues.apache.org/jira/browse/HIVE-17995) | Run checkstyle on standalone-metastore module with proper configuration |  Major | . | Adam Szita | Adam Szita |
| [HIVE-17809](https://issues.apache.org/jira/browse/HIVE-17809) | Implement per pool trigger validation and move sessions across pools |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15436](https://issues.apache.org/jira/browse/HIVE-15436) | Enhancing metastore APIs to retrieve only materialized views |  Major | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17906](https://issues.apache.org/jira/browse/HIVE-17906) | use kill query mechanics to kill queries in WM |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18002](https://issues.apache.org/jira/browse/HIVE-18002) | add group support for pool mappings |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18057](https://issues.apache.org/jira/browse/HIVE-18057) | remove PostExecute / PreExecute hook support |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17934](https://issues.apache.org/jira/browse/HIVE-17934) | Merging Statistics are promoted to COMPLETE (most of the time) |  Major | Statistics | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-14495](https://issues.apache.org/jira/browse/HIVE-14495) | Add SHOW MATERIALIZED VIEWS statement |  Major | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17904](https://issues.apache.org/jira/browse/HIVE-17904) | handle internal Tez AM restart in registry and WM |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17651](https://issues.apache.org/jira/browse/HIVE-17651) | TableScanOperator might miss vectorization on flag |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-15018](https://issues.apache.org/jira/browse/HIVE-15018) | ALTER rewriting flag in materialized view |  Major | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18071](https://issues.apache.org/jira/browse/HIVE-18071) | add HS2 jmx information about pools and current resource plan |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18085](https://issues.apache.org/jira/browse/HIVE-18085) | Run checkstyle on storage-api module with proper configuration |  Major | . | Adam Szita | Adam Szita |
| [HIVE-18084](https://issues.apache.org/jira/browse/HIVE-18084) | Upgrade checkstyle version to support lambdas |  Major | . | Adam Szita | Adam Szita |
| [HIVE-18092](https://issues.apache.org/jira/browse/HIVE-18092) | Fix exception on tables handled by HBaseHandler if columnsstats are auto-gathered |  Major | Statistics | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18056](https://issues.apache.org/jira/browse/HIVE-18056) | CachedStore: Have a whitelist/blacklist config to allow selective caching of tables/partitions and allow read while prewarming |  Major | Metastore | Vaibhav Gumashta | Daniel Dai |
| [HIVE-17931](https://issues.apache.org/jira/browse/HIVE-17931) | Implement Parquet vectorization reader for Array type |  Major | . | Colin Ma | Colin Ma |
| [HIVE-18025](https://issues.apache.org/jira/browse/HIVE-18025) | Push resource plan changes to tez/unmanaged sessions |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18072](https://issues.apache.org/jira/browse/HIVE-18072) | fix various WM bugs based on cluster testing - part 2 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17967](https://issues.apache.org/jira/browse/HIVE-17967) | Move HiveMetaStore class |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-14487](https://issues.apache.org/jira/browse/HIVE-14487) | Add REBUILD statement for materialized views |  Major | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18063](https://issues.apache.org/jira/browse/HIVE-18063) | Make CommandProcessorResponse an exception instead of a return class |  Major | Logical Optimizer | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-16748](https://issues.apache.org/jira/browse/HIVE-16748) | Integreate YETUS to Pre-Commit |  Major | . | Peter Vary | Adam Szita |
| [HIVE-18141](https://issues.apache.org/jira/browse/HIVE-18141) | Fix StatsUtils.combineRange to combine intervals |  Major | Statistics | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17954](https://issues.apache.org/jira/browse/HIVE-17954) | Implement pool, user, group and trigger to pool management API's. |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [HIVE-18073](https://issues.apache.org/jira/browse/HIVE-18073) | AM may assert when its guaranteed task count is reduced |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18029](https://issues.apache.org/jira/browse/HIVE-18029) | beeline - support proper usernames based on the URL arg |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18134](https://issues.apache.org/jira/browse/HIVE-18134) | some alter resource plan fixes |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18076](https://issues.apache.org/jira/browse/HIVE-18076) | killquery doesn't actually work for non-trigger WM kills |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17905](https://issues.apache.org/jira/browse/HIVE-17905) | propagate background LLAP cluster changes to WM |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17528](https://issues.apache.org/jira/browse/HIVE-17528) | Add more q-tests for Hive-on-Spark with Parquet vectorized reader |  Major | . | Vihang Karajgaonkar | Ferdinand Xu |
| [HIVE-17972](https://issues.apache.org/jira/browse/HIVE-17972) | Implement Parquet vectorization reader for Map type |  Major | . | Colin Ma | Colin Ma |
| [HIVE-18170](https://issues.apache.org/jira/browse/HIVE-18170) | User mapping not initialized correctly on start |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18163](https://issues.apache.org/jira/browse/HIVE-18163) | Stats: create materialized view should also collect stats |  Major | Statistics | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17856](https://issues.apache.org/jira/browse/HIVE-17856) | MM tables - IOW is not ACID compliant |  Major | Transactions | Sergey Shelukhin | Steve Yeom |
| [HIVE-18187](https://issues.apache.org/jira/browse/HIVE-18187) | Add jamon generated-sources as source folder |  Minor | Tests | Bertalan Kondrat | Bertalan Kondrat |
| [HIVE-18036](https://issues.apache.org/jira/browse/HIVE-18036) | Stats: Remove usage of clone() methods |  Major | Statistics | Zoltan Haindrich | Bertalan Kondrat |
| [HIVE-18005](https://issues.apache.org/jira/browse/HIVE-18005) | Improve size estimation for array() to be not 0 |  Major | Statistics | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18179](https://issues.apache.org/jira/browse/HIVE-18179) | Implement validate resource plan (part 1) |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [HIVE-18088](https://issues.apache.org/jira/browse/HIVE-18088) | Add WM event traces at query level for debugging |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18138](https://issues.apache.org/jira/browse/HIVE-18138) | Fix columnstats problem in case schema evolution |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-15939](https://issues.apache.org/jira/browse/HIVE-15939) | Make cast expressions comply more to sql2011 |  Major | SQL | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-17980](https://issues.apache.org/jira/browse/HIVE-17980) | Move HiveMetaStoreClient plus a few remaining classes. |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-18212](https://issues.apache.org/jira/browse/HIVE-18212) | Make sure Yetus check always has a full log |  Major | . | Adam Szita | Adam Szita |
| [HIVE-18245](https://issues.apache.org/jira/browse/HIVE-18245) | clean up acid\_vectorization\_original.q |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13567](https://issues.apache.org/jira/browse/HIVE-13567) | Enable auto-gather column stats by default |  Major | . | Pengcheng Xiong | Zoltan Haindrich |
| [HIVE-18133](https://issues.apache.org/jira/browse/HIVE-18133) | Parametrize TestTxnNoBuckets wrt Vectorization |  Minor | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18075](https://issues.apache.org/jira/browse/HIVE-18075) | verify commands on a cluster |  Major | . | Sergey Shelukhin | Harish Jaiprakash |
| [HIVE-18003](https://issues.apache.org/jira/browse/HIVE-18003) | add explicit jdbc connection string args for mappings |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18153](https://issues.apache.org/jira/browse/HIVE-18153) | refactor reopen and file management in TezTask |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18211](https://issues.apache.org/jira/browse/HIVE-18211) | Support to read multiple level definition for Map type in Parquet file |  Major | . | Colin Ma | Colin Ma |
| [HIVE-18209](https://issues.apache.org/jira/browse/HIVE-18209) | Fix API call in VectorizedListColumnReader to get value from BytesColumnVector |  Major | . | Colin Ma | Colin Ma |
| [HIVE-18286](https://issues.apache.org/jira/browse/HIVE-18286) | java.lang.ClassCastException: org.apache.hadoop.hive.ql.exec.vector.DoubleColumnVector cannot be cast to org.apache.hadoop.hive.ql.exec.vector.LongColumnVector |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17981](https://issues.apache.org/jira/browse/HIVE-17981) | Create a set of builders for Thrift classes |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-18149](https://issues.apache.org/jira/browse/HIVE-18149) | Stats: rownum estimation from datasize underestimates in most cases |  Major | Statistics | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18203](https://issues.apache.org/jira/browse/HIVE-18203) | change the way WM is enabled and allow dropping the last resource plan |  Major | . | Aswathy Chellammal Sreekumar | Sergey Shelukhin |
| [HIVE-18230](https://issues.apache.org/jira/browse/HIVE-18230) | create plan like plan, and replace plan commands for easy modification |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18078](https://issues.apache.org/jira/browse/HIVE-18078) | WM getSession needs some retry logic |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18317](https://issues.apache.org/jira/browse/HIVE-18317) | Improve error messages in TransactionalValidationListerner |  Major | Metastore, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18031](https://issues.apache.org/jira/browse/HIVE-18031) | Support replication for Alter Database operation. |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17897](https://issues.apache.org/jira/browse/HIVE-17897) | "repl load" in bootstrap phase fails when partitions have whitespace |  Critical | repl | Sankar Hariappan | Thejas M Nair |
| [HIVE-18315](https://issues.apache.org/jira/browse/HIVE-18315) | update tests use non-acid tables |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18224](https://issues.apache.org/jira/browse/HIVE-18224) | Introduce interface above driver |  Major | Logical Optimizer | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18053](https://issues.apache.org/jira/browse/HIVE-18053) | Support different table types for MVs |  Critical | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18257](https://issues.apache.org/jira/browse/HIVE-18257) | implement scheduling policy configuration instead of hardcoding fair scheduling |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18095](https://issues.apache.org/jira/browse/HIVE-18095) | add a unmanaged flag to triggers (applies to container based sessions) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18294](https://issues.apache.org/jira/browse/HIVE-18294) | add switch to make acid table the default |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-17929](https://issues.apache.org/jira/browse/HIVE-17929) | Use sessionId for HoS Remote Driver Client id |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-18275](https://issues.apache.org/jira/browse/HIVE-18275) | add HS2-level WM metrics |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18096](https://issues.apache.org/jira/browse/HIVE-18096) | add a user-friendly show plan command |  Major | . | Sergey Shelukhin | Harish Jaiprakash |
| [HIVE-18004](https://issues.apache.org/jira/browse/HIVE-18004) | investigate deriving app name from JDBC connection for pool mapping |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18274](https://issues.apache.org/jira/browse/HIVE-18274) | add AM level metrics for WM |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18418](https://issues.apache.org/jira/browse/HIVE-18418) | clean up plugin between DAGs |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18229](https://issues.apache.org/jira/browse/HIVE-18229) | add the unmanaged mapping command |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18190](https://issues.apache.org/jira/browse/HIVE-18190) | Consider looking at ORC file schema rather than using \_metadata\_acid file |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14498](https://issues.apache.org/jira/browse/HIVE-14498) | Freshness period for query rewriting using materialized views |  Major | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18443](https://issues.apache.org/jira/browse/HIVE-18443) | Ensure git gc finished in ptest prep phase before copying repo |  Major | Testing Infrastructure | Adam Szita | Adam Szita |
| [HIVE-18161](https://issues.apache.org/jira/browse/HIVE-18161) | Remove hive.stats.atomic |  Major | Statistics | Zoltan Haindrich | Bertalan Kondrat |
| [HIVE-18214](https://issues.apache.org/jira/browse/HIVE-18214) | Flaky test: TestSparkClient |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-18437](https://issues.apache.org/jira/browse/HIVE-18437) | use plan parallelism for the default pool if both are present |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18273](https://issues.apache.org/jira/browse/HIVE-18273) | add LLAP-level counters for WM |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17982](https://issues.apache.org/jira/browse/HIVE-17982) | Move metastore specific itests |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-18411](https://issues.apache.org/jira/browse/HIVE-18411) | Fix ArrayIndexOutOfBoundsException for VectorizedListColumnReader |  Critical | . | Colin Ma | Colin Ma |
| [HIVE-17495](https://issues.apache.org/jira/browse/HIVE-17495) | CachedStore: prewarm improvement (avoid multiple sql calls to read partition column stats), refactoring and caching some aggregate stats |  Major | Metastore | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-18323](https://issues.apache.org/jira/browse/HIVE-18323) | Vectorization: add the support of timestamp in VectorizedPrimitiveColumnReader for parquet |  Major | Vectorization | Aihua Xu | Vihang Karajgaonkar |
| [HIVE-18457](https://issues.apache.org/jira/browse/HIVE-18457) | improve show plan output (triggers, mappings) |  Major | . | Prasanth Jayachandran | Sergey Shelukhin |
| [HIVE-18438](https://issues.apache.org/jira/browse/HIVE-18438) | WM RP: it's impossible to unset things |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18222](https://issues.apache.org/jira/browse/HIVE-18222) | Update checkstyle rules to be less peeky |  Major | Tests | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18458](https://issues.apache.org/jira/browse/HIVE-18458) | Workload manager initializes even when interactive queue is not set |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18372](https://issues.apache.org/jira/browse/HIVE-18372) | Create testing infra to test different HMS instances |  Major | . | Peter Vary | Peter Vary |
| [HIVE-18489](https://issues.apache.org/jira/browse/HIVE-18489) | Automatically migrate s3n URIs to s3a URIs |  Major | . | Sahil Takiar | Sahil Takiar |
| [HIVE-18496](https://issues.apache.org/jira/browse/HIVE-18496) | Create tests to cover add/alter/drop index methods |  Major | Test | Marta Kuczora | Marta Kuczora |
| [HIVE-18498](https://issues.apache.org/jira/browse/HIVE-18498) | Create tests to cover get and list index methods |  Major | Test | Marta Kuczora | Marta Kuczora |
| [HIVE-18468](https://issues.apache.org/jira/browse/HIVE-18468) | Create tests to cover alterPartition and renamePartition methods |  Major | . | Adam Szita | Adam Szita |
| [HIVE-18479](https://issues.apache.org/jira/browse/HIVE-18479) | Create tests to cover dropPartition methods |  Major | Test | Marta Kuczora | Marta Kuczora |
| [HIVE-18480](https://issues.apache.org/jira/browse/HIVE-18480) | Create tests for function related methods |  Major | . | Peter Vary | Peter Vary |
| [HIVE-18481](https://issues.apache.org/jira/browse/HIVE-18481) | Create tests for table related methods (get, list, exists) |  Major | . | Peter Vary | Peter Vary |
| [HIVE-18483](https://issues.apache.org/jira/browse/HIVE-18483) | Create tests to cover getPartition(s) methods |  Major | . | Adam Szita | Adam Szita |
| [HIVE-18484](https://issues.apache.org/jira/browse/HIVE-18484) | Create tests to cover listPartition(s) methods |  Major | . | Adam Szita | Adam Szita |
| [HIVE-18509](https://issues.apache.org/jira/browse/HIVE-18509) | Create tests for table manipulation related methods (create, alter, drop) |  Major | . | Peter Vary | Peter Vary |
| [HIVE-18495](https://issues.apache.org/jira/browse/HIVE-18495) | JUnit rule to enable Driver level testing |  Major | Testing Infrastructure | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18486](https://issues.apache.org/jira/browse/HIVE-18486) | Create tests to cover add partition methods |  Major | Test | Marta Kuczora | Marta Kuczora |
| [HIVE-18544](https://issues.apache.org/jira/browse/HIVE-18544) | Create tests to cover appendPartition methods |  Major | Test | Marta Kuczora | Marta Kuczora |
| [HIVE-18237](https://issues.apache.org/jira/browse/HIVE-18237) | missing results for insert\_only table after DP insert |  Major | Transactions | Zoltan Haindrich | Steve Yeom |
| [HIVE-18542](https://issues.apache.org/jira/browse/HIVE-18542) | Create tests to cover getTableMeta method |  Major | . | Adam Szita | Adam Szita |
| [HIVE-18566](https://issues.apache.org/jira/browse/HIVE-18566) | Create tests to cover adding partitions from PartitionSpec |  Major | Test | Marta Kuczora | Marta Kuczora |
| [HIVE-18478](https://issues.apache.org/jira/browse/HIVE-18478) | Data files deleted from temp table should not be recycled to CM path |  Minor | Hive, HiveServer2 | mahesh kumar behera | mahesh kumar behera |
| [HIVE-18125](https://issues.apache.org/jira/browse/HIVE-18125) | Support arbitrary file names in input to Load Data |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18596](https://issues.apache.org/jira/browse/HIVE-18596) | Synchronize value of hive.spark.client.connect.timeout across unit tests |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-18536](https://issues.apache.org/jira/browse/HIVE-18536) | IOW + DP is broken for insert-only ACID |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-17991](https://issues.apache.org/jira/browse/HIVE-17991) | Remove CommandNeedRetryException |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18511](https://issues.apache.org/jira/browse/HIVE-18511) | Fix generated checkstyle errors |  Major | . | Peter Vary | Peter Vary |
| [HIVE-18389](https://issues.apache.org/jira/browse/HIVE-18389) | Print out Spark Web UI URL to the console log |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-18368](https://issues.apache.org/jira/browse/HIVE-18368) | Improve Spark Debug RDD Graph |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-18580](https://issues.apache.org/jira/browse/HIVE-18580) | Create tests to cover exchange partitions |  Major | Test | Marta Kuczora | Marta Kuczora |
| [HIVE-17835](https://issues.apache.org/jira/browse/HIVE-17835) | HS2 Logs print unnecessary stack trace when HoS query is cancelled |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-17837](https://issues.apache.org/jira/browse/HIVE-17837) | Explicitly check if the HoS Remote Driver has been lost in the RemoteSparkJobMonitor |  Major | Hive | Sahil Takiar | Sahil Takiar |
| [HIVE-17983](https://issues.apache.org/jira/browse/HIVE-17983) | Make the standalone metastore generate tarballs etc. |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-18550](https://issues.apache.org/jira/browse/HIVE-18550) | Keep the hbase table name property as hbase.table.name |  Major | HBase Handler | Aihua Xu | Aihua Xu |
| [HIVE-18235](https://issues.apache.org/jira/browse/HIVE-18235) | Columnstats gather on mm tables: re-enable disabled test |  Major | Statistics, Transactions | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18238](https://issues.apache.org/jira/browse/HIVE-18238) | Driver execution may not have configuration changing sideeffects |  Major | Logical Optimizer | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18673](https://issues.apache.org/jira/browse/HIVE-18673) | ErrorMsg.SPARK\_JOB\_MONITOR\_TIMEOUT isn't formatted correctly |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-18635](https://issues.apache.org/jira/browse/HIVE-18635) | Generalize hook dispatch logics in Driver |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18677](https://issues.apache.org/jira/browse/HIVE-18677) | SparkClientImpl usage of SessionState.LogHelper doesn't respect isSilent value |  Major | Spark, Test | Sahil Takiar | Sahil Takiar |
| [HIVE-18553](https://issues.apache.org/jira/browse/HIVE-18553) | Support schema evolution in Parquet Vectorization reader |  Major | . | Vihang Karajgaonkar | Ferdinand Xu |
| [HIVE-18672](https://issues.apache.org/jira/browse/HIVE-18672) | Printed state in RemoteSparkJobMonitor is ambiguous |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-18541](https://issues.apache.org/jira/browse/HIVE-18541) | Secure HS2 web UI with PAM |  Major | HiveServer2 | Oleksiy Sayankin | Oleksiy Sayankin |
| [HIVE-18771](https://issues.apache.org/jira/browse/HIVE-18771) | Refactor tests, so only 1 MetaStore instance will be started per test class and test configuration |  Major | . | Peter Vary | Peter Vary |
| [HIVE-18192](https://issues.apache.org/jira/browse/HIVE-18192) | Introduce WriteID per table rather than using global transaction ID |  Major | HiveServer2, Transactions | anishek | Sankar Hariappan |
| [HIVE-18765](https://issues.apache.org/jira/browse/HIVE-18765) | SparkClientImpl swallows exception messages from the RemoteDriver |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-18663](https://issues.apache.org/jira/browse/HIVE-18663) | Logged Spark Job Id contains a UUID instead of the actual id |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-18805](https://issues.apache.org/jira/browse/HIVE-18805) | Add ConstantPropagate before stats annotation |  Major | Query Planning | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18750](https://issues.apache.org/jira/browse/HIVE-18750) | Exchange partition should be disabled on ACID/Insert-only tables with per table write ID. |  Major | HiveServer2, Transactions | Sankar Hariappan | Sankar Hariappan |
| [HIVE-18824](https://issues.apache.org/jira/browse/HIVE-18824) | ValidWriteIdList config should be defined on tables which has to collect stats after insert |  Major | HiveServer2, Transactions | Sankar Hariappan | Sergey Shelukhin |
| [HIVE-18749](https://issues.apache.org/jira/browse/HIVE-18749) | Need to replace transactionId with writeId in RecordIdentifier and other relevant contexts. |  Minor | Transactions | Sankar Hariappan | Sankar Hariappan |
| [HIVE-18715](https://issues.apache.org/jira/browse/HIVE-18715) | Remove index support from metastore |  Major | Metastore, Standalone Metastore | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18861](https://issues.apache.org/jira/browse/HIVE-18861) | druid-hdfs-storage is pulling in hadoop-aws-2.7.x and aws SDK, creating classpath problems on hadoop 3.x |  Major | Druid integration | Steve Loughran | Steve Loughran |
| [HIVE-17178](https://issues.apache.org/jira/browse/HIVE-17178) | Spark Partition Pruning Sink Operator can't target multiple Works |  Major | Spark | Sahil Takiar | Rui Li |
| [HIVE-18751](https://issues.apache.org/jira/browse/HIVE-18751) | ACID table scan through get\_splits UDF doesn't receive ValidWriteIdList configuration. |  Major | Transactions | Sankar Hariappan | Sankar Hariappan |
| [HIVE-18832](https://issues.apache.org/jira/browse/HIVE-18832) | Support change management for trashing data files from ACID tables. |  Major | HiveServer2 | anishek | anishek |
| [HIVE-18899](https://issues.apache.org/jira/browse/HIVE-18899) | Separate FetchWork required for each query that uses the results cache |  Major | . | Jason Dere | Jason Dere |
| [HIVE-17990](https://issues.apache.org/jira/browse/HIVE-17990) | Add Thrift and DB storage for Schema Registry objects |  Major | Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-18864](https://issues.apache.org/jira/browse/HIVE-18864) | ValidWriteIdList snapshot seems incorrect if obtained after allocating writeId by current transaction. |  Major | Transactions | Sankar Hariappan | Sankar Hariappan |
| [HIVE-18034](https://issues.apache.org/jira/browse/HIVE-18034) | Improving logging with HoS executors spend lots of time in GC |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-18961](https://issues.apache.org/jira/browse/HIVE-18961) | Error in results cache when query has identifiers with spaces |  Major | Query Planning | Jason Dere | Jason Dere |
| [HIVE-18846](https://issues.apache.org/jira/browse/HIVE-18846) | Query results cache: Allow queries to refer to the pending results of a query that has not finished yet |  Major | Query Planning | Jason Dere | Jason Dere |
| [HIVE-16992](https://issues.apache.org/jira/browse/HIVE-16992) | LLAP: monitoring and better default lambda for LRFU policy |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-18633](https://issues.apache.org/jira/browse/HIVE-18633) | Service discovery for Active/Passive HA mode |  Major | HiveServer2 | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18703](https://issues.apache.org/jira/browse/HIVE-18703) | Make Operator comparision to be based on some primitive |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18093](https://issues.apache.org/jira/browse/HIVE-18093) | Improve logging when HoS application is killed |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-18745](https://issues.apache.org/jira/browse/HIVE-18745) | Fix MetaStore creation in tests, so multiple MetaStores can be started on the same machine |  Major | . | Peter Vary | Peter Vary |
| [HIVE-18982](https://issues.apache.org/jira/browse/HIVE-18982) | Provide a CLI option to manually trigger failover |  Major | HiveServer2 | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18855](https://issues.apache.org/jira/browse/HIVE-18855) | Fix unit test TestMiniLlapLocalCliDriver.testCliDriver[results\_cache\_1] |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-14518](https://issues.apache.org/jira/browse/HIVE-14518) | Support 'having' translation for Druid GroupBy queries |  Major | Druid integration | Jesus Camacho Rodriguez | slim bouguerra |
| [HIVE-18926](https://issues.apache.org/jira/browse/HIVE-18926) | Imporve operator-tree matching |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-18830](https://issues.apache.org/jira/browse/HIVE-18830) | RemoteSparkJobMonitor failures are logged twice |  Major | Spark | Sahil Takiar | Bharathkrishna Guruvayoor Murali |
| [HIVE-18994](https://issues.apache.org/jira/browse/HIVE-18994) | Handle client connections on failover |  Major | HiveServer2 | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18755](https://issues.apache.org/jira/browse/HIVE-18755) | Modifications to the metastore for catalogs |  Major | Metastore | Alan Gates | Alan Gates |
| [HIVE-18781](https://issues.apache.org/jira/browse/HIVE-18781) | Create/Replicate Open, Commit (without writes) and Abort Txn events |  Major | repl, Transactions | mahesh kumar behera | mahesh kumar behera |
| [HIVE-18747](https://issues.apache.org/jira/browse/HIVE-18747) | Cleaner for TXN\_TO\_WRITE\_ID table entries using MIN\_HISTORY\_LEVEL. |  Minor | Transactions | Sankar Hariappan | Sankar Hariappan |
| [HIVE-17661](https://issues.apache.org/jira/browse/HIVE-17661) | DBTxnManager.acquireLocks() - MM tables should use shared lock for Insert |  Major | Transactions | Eugene Koifman | Sergey Shelukhin |
| [HIVE-19083](https://issues.apache.org/jira/browse/HIVE-19083) | Make partition clause optional for INSERT |  Major | SQL | Vineet Garg | Vineet Garg |
| [HIVE-18909](https://issues.apache.org/jira/browse/HIVE-18909) | Metrics for results cache |  Major | . | Jason Dere | Jason Dere |
| [HIVE-19031](https://issues.apache.org/jira/browse/HIVE-19031) | Mark duplicate configs in HiveConf as deprecated |  Blocker | Configuration, Standalone Metastore | Alan Gates | Alan Gates |
| [HIVE-18651](https://issues.apache.org/jira/browse/HIVE-18651) | Expose additional Spark metrics |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-19112](https://issues.apache.org/jira/browse/HIVE-19112) | Support Analyze table for partitioned tables without partition spec |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-19129](https://issues.apache.org/jira/browse/HIVE-19129) | Support DEFAULT keyword with MERGE |  Major | SQL | Vineet Garg | Vineet Garg |
| [HIVE-19128](https://issues.apache.org/jira/browse/HIVE-19128) | Update golden files for spark perf tests |  Major | Spark | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-19127](https://issues.apache.org/jira/browse/HIVE-19127) | Concurrency fixes in QueryResultsCache |  Major | . | Jason Dere | Jason Dere |
| [HIVE-19144](https://issues.apache.org/jira/browse/HIVE-19144) | TestSparkCliDriver:subquery\_scalar - golden file needs to be udpated |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-19145](https://issues.apache.org/jira/browse/HIVE-19145) | Stabilize statsoptimizer.q test |  Major | Test | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-19146](https://issues.apache.org/jira/browse/HIVE-19146) | Delete dangling q.out |  Major | Test | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-19153](https://issues.apache.org/jira/browse/HIVE-19153) | Update golden files for few tests |  Major | Test | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-19138](https://issues.apache.org/jira/browse/HIVE-19138) | Results cache: allow queries waiting on pending cache entries to check cache again if pending query fails |  Major | . | Jason Dere | Jason Dere |
| [HIVE-18840](https://issues.apache.org/jira/browse/HIVE-18840) | CachedStore: Prioritize loading of recently accessed tables during prewarm |  Major | Metastore | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-19147](https://issues.apache.org/jira/browse/HIVE-19147) | Fix PerfCliDrivers: Tpcds30T missed CAT\_NAME change |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-19156](https://issues.apache.org/jira/browse/HIVE-19156) | TestMiniLlapLocalCliDriver.vectorized\_dynamic\_semijoin\_reduction.q is broken |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-19175](https://issues.apache.org/jira/browse/HIVE-19175) | TestMiniLlapLocalCliDriver.testCliDriver update\_access\_time\_non\_current\_db failing |  Major | Test | Vineet Garg | Vineet Garg |
| [HIVE-19193](https://issues.apache.org/jira/browse/HIVE-19193) | TestActivePassiveHA fails |  Major | HiveServer2 | Ashutosh Chauhan | Prasanth Jayachandran |
| [HIVE-17645](https://issues.apache.org/jira/browse/HIVE-17645) | MM tables patch conflicts with HIVE-17482 (Spark/Acid integration) |  Major | Transactions | Eugene Koifman | Jason Dere |
| [HIVE-19210](https://issues.apache.org/jira/browse/HIVE-19210) | Create separate module for streaming ingest |  Major | Streaming | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-18609](https://issues.apache.org/jira/browse/HIVE-18609) | Results cache invalidation based on ACID table updates |  Major | . | Jason Dere | Jason Dere |
| [HIVE-19154](https://issues.apache.org/jira/browse/HIVE-19154) | Poll notification events to invalidate the results cache |  Major | . | Jason Dere | Jason Dere |
| [HIVE-19089](https://issues.apache.org/jira/browse/HIVE-19089) | Create/Replicate Allocate write-id event |  Major | repl, Transactions | mahesh kumar behera | mahesh kumar behera |
| [HIVE-18946](https://issues.apache.org/jira/browse/HIVE-18946) | Fix columnstats merge NPE |  Major | . | Zoltan Haindrich | Laszlo Bodor |
| [HIVE-19164](https://issues.apache.org/jira/browse/HIVE-19164) | TestMetastoreVersion failures |  Major | Test | Vineet Garg | Vihang Karajgaonkar |
| [HIVE-19222](https://issues.apache.org/jira/browse/HIVE-19222) | TestNegativeCliDriver tests are failing due to "java.lang.OutOfMemoryError: GC overhead limit exceeded" |  Major | . | Aihua Xu | Aihua Xu |
| [HIVE-19126](https://issues.apache.org/jira/browse/HIVE-19126) | CachedStore: Use memory estimation to limit cache size during prewarm |  Major | Metastore | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-19194](https://issues.apache.org/jira/browse/HIVE-19194) | TestDruidStorageHandler fails |  Major | Druid integration | Ashutosh Chauhan | slim bouguerra |
| [HIVE-19197](https://issues.apache.org/jira/browse/HIVE-19197) | TestReplicationScenarios is flaky |  Major | repl, Test | Ashutosh Chauhan | Sankar Hariappan |
| [HIVE-19195](https://issues.apache.org/jira/browse/HIVE-19195) | Fix flaky tests and cleanup testconfiguration to run llap specific tests in llap only. |  Major | Test | Ashutosh Chauhan | Deepak Jaiswal |
| [HIVE-19141](https://issues.apache.org/jira/browse/HIVE-19141) | TestNegativeCliDriver insert\_into\_notnull\_constraint, insert\_into\_acid\_notnull failing |  Major | . | Vineet Garg | Igor Kryvenko |
| [HIVE-19243](https://issues.apache.org/jira/browse/HIVE-19243) | Upgrade hadoop.version to 3.1.0 |  Blocker | . | Gour Saha | Gour Saha |
| [HIVE-19009](https://issues.apache.org/jira/browse/HIVE-19009) | Retain and use runtime statistics during hs2 lifetime |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-19196](https://issues.apache.org/jira/browse/HIVE-19196) | TestTriggersMoveWorkloadManager is flaky |  Major | Test | Ashutosh Chauhan | Prasanth Jayachandran |
| [HIVE-19214](https://issues.apache.org/jira/browse/HIVE-19214) | High throughput ingest ORC format |  Major | Streaming | Gopal V | Prasanth Jayachandran |
| [HIVE-17647](https://issues.apache.org/jira/browse/HIVE-17647) | DDLTask.generateAddMmTasks(Table tbl) and other random code should not start transactions |  Major | Transactions | Eugene Koifman | Sergey Shelukhin |
| [HIVE-17970](https://issues.apache.org/jira/browse/HIVE-17970) | MM LOAD DATA with OVERWRITE doesn't use base\_n directory concept |  Major | Transactions | Eugene Koifman | Sergey Shelukhin |
| [HIVE-19232](https://issues.apache.org/jira/browse/HIVE-19232) | results\_cache\_invalidation2 is failing |  Major | Test | Ashutosh Chauhan | Jason Dere |
| [HIVE-19171](https://issues.apache.org/jira/browse/HIVE-19171) | Persist runtime statistics in metastore |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-19274](https://issues.apache.org/jira/browse/HIVE-19274) | Add an OpTreeSignature persistence checker hook |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-19346](https://issues.apache.org/jira/browse/HIVE-19346) | TestMiniLlapLocalCliDriver.testCliDriver[materialized\_view\_create\_rewrite\_5] failling |  Major | . | Vineet Garg | Ashutosh Chauhan |
| [HIVE-19348](https://issues.apache.org/jira/browse/HIVE-19348) |  org.apache.hadoop.hive.ql.plan.mapping.TestOperatorCmp are failing |  Major | . | Vineet Garg | Zoltan Haindrich |
| [HIVE-19319](https://issues.apache.org/jira/browse/HIVE-19319) | RuntimeStats fixes |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-19335](https://issues.apache.org/jira/browse/HIVE-19335) | Disable runtime filtering (semijoin reduction opt with bloomfilter) for external tables |  Major | . | Jason Dere | Jason Dere |
| [HIVE-18988](https://issues.apache.org/jira/browse/HIVE-18988) | Support bootstrap replication of ACID tables |  Major | HiveServer2, repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-19211](https://issues.apache.org/jira/browse/HIVE-19211) | New streaming ingest API and support for dynamic partitioning |  Major | Streaming | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-19206](https://issues.apache.org/jira/browse/HIVE-19206) | Automatic memory management for open streaming writers |  Major | Streaming | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-19400](https://issues.apache.org/jira/browse/HIVE-19400) | Adjust Hive 1.0 to 2.0 conversion utility to the upgrade |  Major | Hive | Miklos Gergely | Miklos Gergely |
| [HIVE-19371](https://issues.apache.org/jira/browse/HIVE-19371) | Add table ownerType to HMS thrift API |  Major | Hive, Metastore | Sergio Peña | Sergio Peña |
| [HIVE-19209](https://issues.apache.org/jira/browse/HIVE-19209) | Streaming ingest record writers should accept input stream |  Major | Streaming | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-19372](https://issues.apache.org/jira/browse/HIVE-19372) | Add table ownerType to JDO/SQL and ObjectStore |  Major | Hive, Metastore | Sergio Peña | Sergio Peña |
| [HIVE-19322](https://issues.apache.org/jira/browse/HIVE-19322) | broken test: TestNegativeMinimrCliDriver#testCliDriver[minimr\_broken\_pipe] |  Major | Test, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-18288](https://issues.apache.org/jira/browse/HIVE-18288) | merge/concat not supported on Acid table |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-19135](https://issues.apache.org/jira/browse/HIVE-19135) | Need tool to allow admins to create catalogs and move existing dbs to catalog during upgrade |  Blocker | Metastore | Alan Gates | Alan Gates |
| [HIVE-19471](https://issues.apache.org/jira/browse/HIVE-19471) | bucket\_map\_join\_tez1 and  bucket\_map\_join\_tez2 are failing |  Blocker | . | Vineet Garg | Deepak Jaiswal |
| [HIVE-19178](https://issues.apache.org/jira/browse/HIVE-19178) | TestMiniTezCliDriver.testCliDriver[explainanalyze\_5] failure |  Blocker | Test | Vineet Garg | Jesus Camacho Rodriguez |
| [HIVE-19472](https://issues.apache.org/jira/browse/HIVE-19472) | HiveStreamingConnection swallows exception on partition creation |  Major | Streaming | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-19347](https://issues.apache.org/jira/browse/HIVE-19347) | TestTriggersWorkloadManager tests are failing consistently |  Blocker | . | Vineet Garg | Matt McCline |
| [HIVE-18193](https://issues.apache.org/jira/browse/HIVE-18193) | Migrate existing ACID tables to use write id per table rather than global transaction id |  Blocker | HiveServer2, Transactions | anishek | Sankar Hariappan |
| [HIVE-19374](https://issues.apache.org/jira/browse/HIVE-19374) | Parse and process ALTER TABLE SET OWNER command syntax |  Major | Hive | Sergio Peña | Sergio Peña |
| [HIVE-19159](https://issues.apache.org/jira/browse/HIVE-19159) | TestMTQueries.testMTQueries1 failure |  Blocker | Test | Vineet Garg | Laszlo Bodor |
| [HIVE-19494](https://issues.apache.org/jira/browse/HIVE-19494) | Accept shade prefix during reflective instantiation of output format |  Major | Streaming | Prasanth Jayachandran | Prasanth Jayachandran |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-15708](https://issues.apache.org/jira/browse/HIVE-15708) | Upgrade calcite version to 1.12 |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Remus Rusanu |
| [HIVE-16411](https://issues.apache.org/jira/browse/HIVE-16411) | Revert HIVE-15199 |  Blocker | . | Ashutosh Chauhan | Sahil Takiar |
| [HIVE-16058](https://issues.apache.org/jira/browse/HIVE-16058) | Disable falling back to non-cbo for SemanticException for tests |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-16474](https://issues.apache.org/jira/browse/HIVE-16474) | Upgrade Druid version to 0.10 |  Major | Druid integration | Ashutosh Chauhan | Nishant Bangarwa |
| [HIVE-17107](https://issues.apache.org/jira/browse/HIVE-17107) | Upgrade Yetus to 0.5.0 |  Major | Testing Infrastructure | Peter Vary | Barna Zsombor Klara |
| [HIVE-17480](https://issues.apache.org/jira/browse/HIVE-17480) | repl dump sub dir should use UUID instead of timestamp |  Major | repl | Tao Li | Tao Li |
| [HIVE-17521](https://issues.apache.org/jira/browse/HIVE-17521) | Improve defaults for few runtime configs |  Minor | Configuration | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-17544](https://issues.apache.org/jira/browse/HIVE-17544) | Provide classname info for function authorization |  Critical | Authorization | Na Li | Aihua Xu |
| [HIVE-16395](https://issues.apache.org/jira/browse/HIVE-16395) | ConcurrentModificationException on config object in HoS |  Major | Spark | Sahil Takiar | Andrew Sherman |
| [HIVE-17672](https://issues.apache.org/jira/browse/HIVE-17672) | Upgrade Calcite version to 1.14 |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17425](https://issues.apache.org/jira/browse/HIVE-17425) | Change MetastoreConf.ConfVars internal members to be private |  Major | Metastore | Alan Gates | Alan Gates |
| [HIVE-18272](https://issues.apache.org/jira/browse/HIVE-18272) | Fix check-style violations in subquery code |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-18598](https://issues.apache.org/jira/browse/HIVE-18598) | Disallow NOT NULL constraints to be ENABLED/ENFORCED with EXTERNAL table |  Major | SQL | Vineet Garg | Vineet Garg |
| [HIVE-18754](https://issues.apache.org/jira/browse/HIVE-18754) | REPL STATUS should support 'with' clause |  Major | repl, Standalone Metastore | mahesh kumar behera | mahesh kumar behera |
| [HIVE-18436](https://issues.apache.org/jira/browse/HIVE-18436) | Upgrade to Spark 2.3.0 |  Major | Spark | Sahil Takiar | Sahil Takiar |
| [HIVE-18917](https://issues.apache.org/jira/browse/HIVE-18917) | Add spark.home to hive.conf.restricted.list |  Major | . | Sahil Takiar | Sahil Takiar |
| [HIVE-18560](https://issues.apache.org/jira/browse/HIVE-18560) | qtests: QTestUtil refactor/split - QOutProcessor |  Major | Tests | Laszlo Bodor | Laszlo Bodor |
| [HIVE-18959](https://issues.apache.org/jira/browse/HIVE-18959) | Avoid creating extra pool of threads within LLAP |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-18993](https://issues.apache.org/jira/browse/HIVE-18993) | Use Druid Expressions |  Major | . | slim bouguerra | slim bouguerra |
| [HIVE-18957](https://issues.apache.org/jira/browse/HIVE-18957) | Upgrade Calcite version to 1.16.0 |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-18433](https://issues.apache.org/jira/browse/HIVE-18433) | Upgrade version of com.fasterxml.jackson |  Major | . | Sahil Takiar | Janaki Lahorani |
| [HIVE-19049](https://issues.apache.org/jira/browse/HIVE-19049) | Add support for Alter table add columns for Druid |  Major | . | Nishant Bangarwa | Nishant Bangarwa |
| [HIVE-19091](https://issues.apache.org/jira/browse/HIVE-19091) | [Hive 3.0.0 Release] Rat check failure fixes |  Major | Standalone Metastore | Vineet Garg | Vineet Garg |
| [HIVE-19134](https://issues.apache.org/jira/browse/HIVE-19134) | Update copyright NOTICE and fix rat check failures |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-19172](https://issues.apache.org/jira/browse/HIVE-19172) | NPE due to null EnvironmentContext in DDLTask |  Major | . | Nishant Bangarwa | Nishant Bangarwa |
| [HIVE-19257](https://issues.apache.org/jira/browse/HIVE-19257) | HIVE-19157 commit references wrong jira |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-19309](https://issues.apache.org/jira/browse/HIVE-19309) | Add Arrow dependencies to LlapServiceDriver |  Major | llap | Eric Wohlstadter | Eric Wohlstadter |
| [HIVE-19311](https://issues.apache.org/jira/browse/HIVE-19311) | Partition and bucketing support for “load data” statement |  Major | . | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-18131](https://issues.apache.org/jira/browse/HIVE-18131) | Truncate table for Acid tables |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-19173](https://issues.apache.org/jira/browse/HIVE-19173) | Add Storage Handler runtime information as part of DESCRIBE EXTENDED |  Major | . | Nishant Bangarwa | Nishant Bangarwa |
| [HIVE-19451](https://issues.apache.org/jira/browse/HIVE-19451) | Druid Query Execution fails with ClassNotFoundException org.antlr.v4.runtime.CharStream |  Major | . | Nishant Bangarwa | Nishant Bangarwa |
| [HIVE-19491](https://issues.apache.org/jira/browse/HIVE-19491) | Branch-3 Start using storage-api 2.6.1 once available. |  Blocker | . | Deepak Jaiswal | Vineet Garg |


