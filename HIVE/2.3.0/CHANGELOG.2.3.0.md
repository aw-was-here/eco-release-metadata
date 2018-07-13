
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

## Release 2.3.0 - 2017-07-18

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13380](https://issues.apache.org/jira/browse/HIVE-13380) | Decimal should have lower precedence than double in type hierachy |  Major | Types | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-14872](https://issues.apache.org/jira/browse/HIVE-14872) | Remove the configuration HIVE\_SUPPORT\_SQL11\_RESERVED\_KEYWORDS |  Major | Parser | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14950](https://issues.apache.org/jira/browse/HIVE-14950) | Support integer data type |  Minor | SQL | Zoltan Haindrich | Zoltan Haindrich |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-14159](https://issues.apache.org/jira/browse/HIVE-14159) | sorting of tuple array using multiple field[s] |  Major | UDF | Simanchal Das | Simanchal Das |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13964](https://issues.apache.org/jira/browse/HIVE-13964) | Add a parameter to beeline to allow a properties file to be passed in |  Minor | Beeline | Abdullah Yousufi | Abdullah Yousufi |
| [HIVE-14315](https://issues.apache.org/jira/browse/HIVE-14315) | Implement StatsProvidingRecordReader for ParquetRecordReaderWrapper |  Major | Statistics | Chao Sun | Chao Sun |
| [HIVE-14035](https://issues.apache.org/jira/browse/HIVE-14035) | Enable predicate pushdown to delta files created by ACID Transactions |  Major | Transactions | Saket Saurabh | Saket Saurabh |
| [HIVE-14233](https://issues.apache.org/jira/browse/HIVE-14233) | Improve vectorization for ACID by eliminating row-by-row stitching |  Major | Transactions, Vectorization | Saket Saurabh | Saket Saurabh |
| [HIVE-14249](https://issues.apache.org/jira/browse/HIVE-14249) | Add simple materialized views with manual rebuilds |  Major | Materialized views, Parser | Alan Gates | Jesus Camacho Rodriguez |
| [HIVE-14558](https://issues.apache.org/jira/browse/HIVE-14558) | Add support for listing views similar to "show tables" |  Major | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-11072](https://issues.apache.org/jira/browse/HIVE-11072) | Add data validation between Hive metastore upgrades tests |  Major | Tests | Sergio Peña | Naveen Gangam |
| [HIVE-12764](https://issues.apache.org/jira/browse/HIVE-12764) | Support Intersect (distinct/all) Except (distinct/all) Minus (distinct/all) in Hive |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-1555](https://issues.apache.org/jira/browse/HIVE-1555) | JDBC Storage Handler |  Major | JDBC | Bob Robertson | Gunther Hagleitner |
| [HIVE-15691](https://issues.apache.org/jira/browse/HIVE-15691) | Create StrictRegexWriter to work with RegexSerializer for Flume Hive Sink |  Critical | HCatalog, Transactions | Kalyan | Kalyan |
| [HIVE-15434](https://issues.apache.org/jira/browse/HIVE-15434) | Add UDF to allow interrogation of uniontype values |  Major | UDF | David Maughan | David Maughan |
| [HIVE-10924](https://issues.apache.org/jira/browse/HIVE-10924) | add support for MERGE statement |  Major | Query Planning, Query Processor, Transactions | Eugene Koifman | Eugene Koifman |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13797](https://issues.apache.org/jira/browse/HIVE-13797) | Provide a connection string example in beeline |  Minor | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-12721](https://issues.apache.org/jira/browse/HIVE-12721) | Add UUID built in function |  Major | UDF | Jeremy Beard | Jeremy Beard |
| [HIVE-13490](https://issues.apache.org/jira/browse/HIVE-13490) | Change itests to be part of the main Hive build |  Major | . | Siddharth Seth | Zoltan Haindrich |
| [HIVE-13760](https://issues.apache.org/jira/browse/HIVE-13760) | Add a HIVE\_QUERY\_TIMEOUT configuration to kill a query if a query is running for more than the configured timeout value. |  Major | Configuration | zhihai xu | zhihai xu |
| [HIVE-13788](https://issues.apache.org/jira/browse/HIVE-13788) | hive msck listpartitions need to make use of directSQL instead of datanucleus |  Minor | . | Rajesh Balamohan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-13441](https://issues.apache.org/jira/browse/HIVE-13441) | LLAPIF: security and signed fragments |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14001](https://issues.apache.org/jira/browse/HIVE-14001) | beeline doesn't give out an error when takes either "-e" or "-f" in command instead of both |  Trivial | Beeline | Peter Vary | Peter Vary |
| [HIVE-14085](https://issues.apache.org/jira/browse/HIVE-14085) | Allow type widening primitive conversion on hive/parquet tables |  Major | File Formats | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-14118](https://issues.apache.org/jira/browse/HIVE-14118) | Make the alter partition exception more meaningful |  Trivial | Query Processor | Aihua Xu | Aihua Xu |
| [HIVE-13884](https://issues.apache.org/jira/browse/HIVE-13884) | Disallow queries in HMS fetching more than a configured number of partitions |  Major | . | Mohit Sabharwal | Sergio Peña |
| [HIVE-14094](https://issues.apache.org/jira/browse/HIVE-14094) | Remove unused function closeFs from Warehouse.java |  Trivial | Metastore | zhihai xu | zhihai xu |
| [HIVE-13937](https://issues.apache.org/jira/browse/HIVE-13937) | Unit test for HIVE-13051 |  Minor | Test | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-13763](https://issues.apache.org/jira/browse/HIVE-13763) | Update smart-apply-patch.sh with ability to use patches from git |  Major | Testing Infrastructure | Owen O'Malley | Owen O'Malley |
| [HIVE-13644](https://issues.apache.org/jira/browse/HIVE-13644) | Remove hardcoded groovy.grape.report.downloads=true from DependencyResolver |  Major | UDF | Anthony Hsu | Anthony Hsu |
| [HIVE-13614](https://issues.apache.org/jira/browse/HIVE-13614) | Implementation for PreparedStatement#setBigDecimal |  Minor | JDBC | Iwao AVE! | Iwao AVE! |
| [HIVE-12244](https://issues.apache.org/jira/browse/HIVE-12244) | Refactoring code for avoiding of comparison of Strings and do comparison on Path |  Minor | Hive | Alina Abramova | Zoltan Haindrich |
| [HIVE-14198](https://issues.apache.org/jira/browse/HIVE-14198) | Refactor aux jar related code to make them more consistent |  Major | Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-14067](https://issues.apache.org/jira/browse/HIVE-14067) | Rename pendingCount to activeCalls in HiveSessionImpl  for easier understanding. |  Trivial | HiveServer2 | zhihai xu | zhihai xu |
| [HIVE-14285](https://issues.apache.org/jira/browse/HIVE-14285) |  Explain outputs: map-entry ordering of non-primitive objects. |  Minor | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-14287](https://issues.apache.org/jira/browse/HIVE-14287) | Explain output: printed nested mapvalues are dependent on map entry iteration order |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-14123](https://issues.apache.org/jira/browse/HIVE-14123) | Add beeline configuration option to show database in the prompt |  Minor | Beeline, CLI | Peter Vary | Peter Vary |
| [HIVE-14331](https://issues.apache.org/jira/browse/HIVE-14331) | Task should set exception for failed map reduce job. |  Minor | Hive | zhihai xu | zhihai xu |
| [HIVE-14370](https://issues.apache.org/jira/browse/HIVE-14370) | printStackTrace() called in Operator.close() |  Minor | . | David Karoly | David Karoly |
| [HIVE-14329](https://issues.apache.org/jira/browse/HIVE-14329) | fix flapping qtests - because of output string ordering |  Minor | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-14340](https://issues.apache.org/jira/browse/HIVE-14340) | Add a new hook triggers before query compilation and after query execution |  Major | Query Processor | Chao Sun | Chao Sun |
| [HIVE-14368](https://issues.apache.org/jira/browse/HIVE-14368) | ThriftCLIService.GetOperationStatus should include exception's stack trace to the error message. |  Minor | Thrift API | zhihai xu | zhihai xu |
| [HIVE-14419](https://issues.apache.org/jira/browse/HIVE-14419) | fix test TestCliDriver/testCliDriver#stats\_list\_bucket |  Major | Test | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-14382](https://issues.apache.org/jira/browse/HIVE-14382) | Improve the Functionality of Reverse  FOR Statement |  Minor | hpl/sql | Akash Sethi | Akash Sethi |
| [HIVE-12181](https://issues.apache.org/jira/browse/HIVE-12181) | Change hive.stats.fetch.column.stats value to true for MiniTezCliDriver |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-14351](https://issues.apache.org/jira/browse/HIVE-14351) | Minor improvement in genUnionPlan method |  Major | . | Ratandeep Ratti | Ratandeep Ratti |
| [HIVE-14533](https://issues.apache.org/jira/browse/HIVE-14533) | improve performance of enforceMaxLength in HiveCharWritable/HiveVarcharWritable |  Minor | Serializers/Deserializers | Thomas Friedrich | Thomas Friedrich |
| [HIVE-14199](https://issues.apache.org/jira/browse/HIVE-14199) | Enable Bucket Pruning for ACID tables |  Major | Transactions | Saket Saurabh | Saket Saurabh |
| [HIVE-14534](https://issues.apache.org/jira/browse/HIVE-14534) | modify tables in tests in HIVE-14479 to use transactional\_properties=default |  Minor | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14585](https://issues.apache.org/jira/browse/HIVE-14585) | Add travis.yml and update README to show build status |  Minor | Build Infrastructure | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14571](https://issues.apache.org/jira/browse/HIVE-14571) | Document configuration hive.msck.repair.batch.size |  Minor | Documentation | Chinna Rao Lalam | Chinna Rao Lalam |
| [HIVE-14672](https://issues.apache.org/jira/browse/HIVE-14672) | Add timestamps to startup message in hive scripts. |  Minor | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-14542](https://issues.apache.org/jira/browse/HIVE-14542) | VirtualColumn::equals() should use object equality |  Minor | Query Processor, Transactions | Gopal V | Eugene Koifman |
| [HIVE-14186](https://issues.apache.org/jira/browse/HIVE-14186) | Display the UDF exception message in MapReduce in beeline console |  Major | Beeline | Aihua Xu | Aihua Xu |
| [HIVE-5867](https://issues.apache.org/jira/browse/HIVE-5867) | JDBC driver and beeline should support executing an initial SQL script |  Major | Clients, JDBC | Prasad Mujumdar | Jianguo Tian |
| [HIVE-12222](https://issues.apache.org/jira/browse/HIVE-12222) | Define port range in property for RPCServer |  Major | CLI, Spark | Andrew Lee | Aihua Xu |
| [HIVE-14099](https://issues.apache.org/jira/browse/HIVE-14099) | Hive security authorization can be disabled by users |  Major | Authorization | Prashant Kumar Singh | Aihua Xu |
| [HIVE-14063](https://issues.apache.org/jira/browse/HIVE-14063) | beeline to auto connect to the HiveServer2 |  Minor | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-14927](https://issues.apache.org/jira/browse/HIVE-14927) | Remove code duplication from tests in TestLdapAtnProviderWithMiniDS |  Major | Test | Illya Yalovyy | Illya Yalovyy |
| [HIVE-15025](https://issues.apache.org/jira/browse/HIVE-15025) | Secure-Socket-Layer (SSL) support for HMS |  Major | Metastore | Aihua Xu | Aihua Xu |
| [HIVE-14909](https://issues.apache.org/jira/browse/HIVE-14909) | Preserve the location of table created with the location clause in table rename |  Major | Hive | Adriano | Chaoyu Tang |
| [HIVE-15171](https://issues.apache.org/jira/browse/HIVE-15171) | set SparkTask's jobID with application id |  Major | Spark | zhihai xu | zhihai xu |
| [HIVE-15069](https://issues.apache.org/jira/browse/HIVE-15069) | Optimize MetaStoreDirectSql:: aggrColStatsForPartitions during query compilation |  Minor | Metastore | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-14803](https://issues.apache.org/jira/browse/HIVE-14803) | S3: Stats gathering for insert queries can be expensive for partitioned dataset |  Minor | Metastore | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15240](https://issues.apache.org/jira/browse/HIVE-15240) | Updating/Altering stats in metastore can be expensive in S3 |  Minor | Metastore | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15321](https://issues.apache.org/jira/browse/HIVE-15321) | Change to read as long for HiveConf.ConfVars.METASTORESERVERMAXMESSAGESIZE |  Major | Metastore | Aihua Xu | Aihua Xu |
| [HIVE-15301](https://issues.apache.org/jira/browse/HIVE-15301) | Expose SparkStatistics information in SparkTask |  Minor | Spark | zhihai xu | zhihai xu |
| [HIVE-15342](https://issues.apache.org/jira/browse/HIVE-15342) | Add support for primary/foreign keys in HBase metastore |  Major | HBase Metastore | Alan Gates | Alan Gates |
| [HIVE-15405](https://issues.apache.org/jira/browse/HIVE-15405) | Improve FileUtils.isPathWithinSubtree |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15410](https://issues.apache.org/jira/browse/HIVE-15410) | WebHCat supports get/set table property with its name containing period and hyphen |  Minor | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-15422](https://issues.apache.org/jira/browse/HIVE-15422) | HiveInputFormat::pushProjectionsAndFilters paths comparison generates huge number of objects for partitioned dataset |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15383](https://issues.apache.org/jira/browse/HIVE-15383) | Add additional info to 'desc function extended' output |  Trivial | Query Processor | Aihua Xu | Aihua Xu |
| [HIVE-15303](https://issues.apache.org/jira/browse/HIVE-15303) | Upgrade to Druid 0.9.2 |  Major | Druid integration | Jesus Camacho Rodriguez | slim bouguerra |
| [HIVE-15470](https://issues.apache.org/jira/browse/HIVE-15470) | Catch Throwable instead of Exception in driver.execute. |  Minor | . | zhihai xu | zhihai xu |
| [HIVE-15528](https://issues.apache.org/jira/browse/HIVE-15528) | Expose Spark job error in SparkTask |  Minor | Spark | zhihai xu | zhihai xu |
| [HIVE-15543](https://issues.apache.org/jira/browse/HIVE-15543) | Don't try to get memory/cores to decide parallelism when Spark dynamic allocation is enabled |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-15076](https://issues.apache.org/jira/browse/HIVE-15076) | Improve scalability of LDAP authentication provider group filter |  Major | Authentication | Illya Yalovyy | Illya Yalovyy |
| [HIVE-5469](https://issues.apache.org/jira/browse/HIVE-5469) | support nullif |  Minor | . | N Campbell | Navis |
| [HIVE-15564](https://issues.apache.org/jira/browse/HIVE-15564) | set task's jobID with hadoop map reduce job ID for PartialScanTask, MergeFileTask and ColumnTruncateTask. |  Minor | Hive | zhihai xu | zhihai xu |
| [HIVE-15629](https://issues.apache.org/jira/browse/HIVE-15629) | Set DDLTask’s exception with its subtask’s exception |  Minor | Hive | zhihai xu | zhihai xu |
| [HIVE-15580](https://issues.apache.org/jira/browse/HIVE-15580) | Eliminate unbounded memory usage for orderBy and groupBy in Hive on Spark |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-15713](https://issues.apache.org/jira/browse/HIVE-15713) | add ldap authentication related configuration to restricted list |  Minor | HiveServer2 | anishek | anishek |
| [HIVE-15712](https://issues.apache.org/jira/browse/HIVE-15712) | new HiveConf in SQLOperation.getSerDe() impacts CPU on hiveserver2 |  Major | HiveServer2 | anishek | anishek |
| [HIVE-15772](https://issues.apache.org/jira/browse/HIVE-15772) | set the exception into SparkJobStatus if exception happened in RemoteSparkJobMonitor and LocalSparkJobMonitor |  Major | Spark | zhihai xu | zhihai xu |
| [HIVE-15682](https://issues.apache.org/jira/browse/HIVE-15682) | Eliminate per-row based dummy iterator creation |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-15815](https://issues.apache.org/jira/browse/HIVE-15815) | Allow to pass some Oozie properties to Spark in HoS |  Minor | Diagnosability, Spark | Chaoyu Tang | Chaoyu Tang |
| [HIVE-15683](https://issues.apache.org/jira/browse/HIVE-15683) | Make what's done in HIVE-15580 for group by configurable |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-15792](https://issues.apache.org/jira/browse/HIVE-15792) | Hive should raise SemanticException when LPAD/RPAD pad character's length is 0 |  Minor | . | Zoltan Chovan | Nanda kumar |
| [HIVE-15915](https://issues.apache.org/jira/browse/HIVE-15915) | Emit progress percentage in getting operation status |  Minor | HiveServer2 | Jimmy Xiang | Jimmy Xiang |
| [HIVE-15489](https://issues.apache.org/jira/browse/HIVE-15489) | Alternatively use table scan stats for HoS |  Major | Spark, Statistics | Chao Sun | Chao Sun |
| [HIVE-15796](https://issues.apache.org/jira/browse/HIVE-15796) | HoS: poor reducer parallelism when operator stats are not accurate |  Major | Statistics | Chao Sun | Chao Sun |
| [HIVE-15879](https://issues.apache.org/jira/browse/HIVE-15879) | Fix HiveMetaStoreChecker.checkPartitionDirs method |  Major | Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16014](https://issues.apache.org/jira/browse/HIVE-16014) | HiveMetastoreChecker should use hive.metastore.fshandler.threads instead of hive.mv.files.thread for pool size |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16045](https://issues.apache.org/jira/browse/HIVE-16045) | Print progress bar along with operation log |  Major | HiveServer2 | anishek | anishek |
| [HIVE-15882](https://issues.apache.org/jira/browse/HIVE-15882) | HS2 generating high memory pressure with many partitions and concurrent queries |  Major | HiveServer2 | Misha Dmitriev | Misha Dmitriev |
| [HIVE-15916](https://issues.apache.org/jira/browse/HIVE-15916) | Add blobstore tests for CTAS |  Major | Test | Juan Rodríguez Hortalá | Juan Rodríguez Hortalá |
| [HIVE-16137](https://issues.apache.org/jira/browse/HIVE-16137) | Default value of hive config hive.auto.convert.join.hashtable.max.entries should be set to 40m instead of 4m |  Major | Configuration | Nita Dembla | Jesus Camacho Rodriguez |
| [HIVE-15920](https://issues.apache.org/jira/browse/HIVE-15920) | Implement a blocking version of a command to compact |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16064](https://issues.apache.org/jira/browse/HIVE-16064) | Allow ALL set quantifier with aggregate functions |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-16098](https://issues.apache.org/jira/browse/HIVE-16098) | Describe table doesn't show stats for partitioned tables |  Major | Diagnosability | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-16119](https://issues.apache.org/jira/browse/HIVE-16119) | HiveMetaStoreChecker: remove singleThread logic duplication |  Minor | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-16115](https://issues.apache.org/jira/browse/HIVE-16115) | Stop printing progress info from operation logs with beeline progress bar |  Minor | HiveServer2 | anishek | anishek |
| [HIVE-16182](https://issues.apache.org/jira/browse/HIVE-16182) | Semijoin: Avoid VectorHashKeyWrapper allocations for the bloom hash aggregate |  Major | Vectorization | Gopal V | Gopal V |
| [HIVE-16127](https://issues.apache.org/jira/browse/HIVE-16127) | Separate database initialization from actual query run in TestBeeLineDriver |  Minor | Testing Infrastructure | Peter Vary | Peter Vary |
| [HIVE-13780](https://issues.apache.org/jira/browse/HIVE-13780) | Allow user to update AVRO table schema via command even if table's definition was defined through schema file |  Minor | CLI | Eric Lin | Adam Szita |
| [HIVE-16210](https://issues.apache.org/jira/browse/HIVE-16210) | Use jvm temporary tmp dir by default |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-15166](https://issues.apache.org/jira/browse/HIVE-15166) | Provide beeline option to set the jline history max size |  Minor | Beeline | Eric Lin | Eric Lin |
| [HIVE-15947](https://issues.apache.org/jira/browse/HIVE-15947) | Enhance Templeton service job operations reliability |  Major | . | Subramanyam Pattipaka | Subramanyam Pattipaka |
| [HIVE-16234](https://issues.apache.org/jira/browse/HIVE-16234) | Add support for quarter in trunc udf |  Major | UDF | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-14016](https://issues.apache.org/jira/browse/HIVE-14016) | Vectorization: Add support for Grouping Sets |  Major | Vectorization | Gopal V | Matt McCline |
| [HIVE-15573](https://issues.apache.org/jira/browse/HIVE-15573) | Vectorization: Non-Uniform shuffle ReduceSink is not specialized |  Major | Transactions, Vectorization | Gopal V | Matt McCline |
| [HIVE-16205](https://issues.apache.org/jira/browse/HIVE-16205) | Improving type safety in Objectstore |  Major | Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16230](https://issues.apache.org/jira/browse/HIVE-16230) | Enable CBO in presence of hints |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-16166](https://issues.apache.org/jira/browse/HIVE-16166) | HS2 may still waste up to 15% of memory on duplicate strings |  Major | . | Misha Dmitriev | Misha Dmitriev |
| [HIVE-16286](https://issues.apache.org/jira/browse/HIVE-16286) | Log canceled query id |  Trivial | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-12274](https://issues.apache.org/jira/browse/HIVE-12274) | Increase width of columns used for general configuration in the metastore. |  Major | Metastore | Elliot West | Naveen Gangam |
| [HIVE-12299](https://issues.apache.org/jira/browse/HIVE-12299) | Hive Column Data Type definition in schema limited to 4000 characters - too small |  Major | Hive | Lakshmi Ramakrishnan | Naveen Gangam |
| [HIVE-14145](https://issues.apache.org/jira/browse/HIVE-14145) | Too small length of column 'PARAM\_VALUE' in table 'SERDE\_PARAMS' |  Major | Metastore | Oleksiy Sayankin | Oleksiy Sayankin |
| [HIVE-15880](https://issues.apache.org/jira/browse/HIVE-15880) | Allow insert overwrite and truncate table query to use auto.purge table property |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16164](https://issues.apache.org/jira/browse/HIVE-16164) | Provide mechanism for passing HMS notification ID between transactional and non-transactional listeners. |  Major | Metastore | Sergio Peña | Sergio Peña |
| [HIVE-16933](https://issues.apache.org/jira/browse/HIVE-16933) | ORA-00060: deadlock detected while waiting on commit |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-1947](https://issues.apache.org/jira/browse/HIVE-1947) | ORDER BY should support column position expressions |  Major | Query Processor | Carl Steinbach |  |
| [HIVE-14256](https://issues.apache.org/jira/browse/HIVE-14256) | CBO: Rewrite aggregate + distinct as 3-stage DAG |  Major | CBO | Gopal V |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13742](https://issues.apache.org/jira/browse/HIVE-13742) | Hive ptest has many failures due to metastore connection refused |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-13855](https://issues.apache.org/jira/browse/HIVE-13855) | select INPUT\_\_FILE\_\_NAME throws NPE exception |  Major | Query Processor | Aihua Xu | Aihua Xu |
| [HIVE-13834](https://issues.apache.org/jira/browse/HIVE-13834) | Use LinkedHashMap instead of HashMap for LockRequestBuilder to maintain predictable iteration order |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-8282](https://issues.apache.org/jira/browse/HIVE-8282) | Potential null deference in ConvertJoinMapJoin#convertJoinBucketMapJoin() |  Minor | . | Ted Yu | Sanghyun Yun |
| [HIVE-13895](https://issues.apache.org/jira/browse/HIVE-13895) | HoS start-up overhead in yarn-client mode |  Major | . | Rui Li | Rui Li |
| [HIVE-13540](https://issues.apache.org/jira/browse/HIVE-13540) | Casts to numeric types don't seem to work in hplsql |  Major | hpl/sql | Carter Shanklin | Dmitry Tolpeko |
| [HIVE-13721](https://issues.apache.org/jira/browse/HIVE-13721) | HPL/SQL COPY FROM FTP Statement: lack of DIR option leads to NPE |  Major | hpl/sql | Carter Shanklin | Dmitry Tolpeko |
| [HIVE-13968](https://issues.apache.org/jira/browse/HIVE-13968) | CombineHiveInputFormat does not honor InputFormat that implements AvoidSplitCombination |  Major | . | Prasanna Rajaperumal | Prasanna Rajaperumal |
| [HIVE-13960](https://issues.apache.org/jira/browse/HIVE-13960) | Session timeout may happen before HIVE\_SERVER2\_IDLE\_SESSION\_TIMEOUT for back-to-back synchronous operations. |  Major | HiveServer2 | zhihai xu | zhihai xu |
| [HIVE-13900](https://issues.apache.org/jira/browse/HIVE-13900) | HiveStatement.executeAsync() may not work properly when hive.server2.async.exec.async.compile is turned on |  Major | JDBC | Aihua Xu | Aihua Xu |
| [HIVE-13866](https://issues.apache.org/jira/browse/HIVE-13866) | flatten callstack for directSQL errors |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13987](https://issues.apache.org/jira/browse/HIVE-13987) | Clarify current error shown when HS2 is down |  Minor | Beeline | Abdullah Yousufi | Abdullah Yousufi |
| [HIVE-14054](https://issues.apache.org/jira/browse/HIVE-14054) | TestHiveMetaStoreChecker fails on master |  Major | Metastore | Ashutosh Chauhan | Pengcheng Xiong |
| [HIVE-14075](https://issues.apache.org/jira/browse/HIVE-14075) | BeeLine.java.orig was accidentally committed during HIVE-14001 patch |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-7443](https://issues.apache.org/jira/browse/HIVE-7443) | Fix HiveConnection to communicate with Kerberized Hive JDBC server and alternative JDKs |  Major | JDBC, Security | Yu Gao | Aihua Xu |
| [HIVE-14013](https://issues.apache.org/jira/browse/HIVE-14013) | Describe table doesn't show unicode properly |  Major | Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-14126](https://issues.apache.org/jira/browse/HIVE-14126) | With ranger enabled, partitioned columns is returned first when you execute select star |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14109](https://issues.apache.org/jira/browse/HIVE-14109) | query execuction throws NPE when hive.exec.submitviachild is set to true |  Major | Query Processor | Aihua Xu | Aihua Xu |
| [HIVE-14142](https://issues.apache.org/jira/browse/HIVE-14142) | java.lang.ClassNotFoundException for the jar in hive.reloadable.aux.jars.path for Hive on Spark |  Major | Spark | Aihua Xu | Aihua Xu |
| [HIVE-14138](https://issues.apache.org/jira/browse/HIVE-14138) | CBO failed for select current\_database() |  Minor | CBO | Peter Vary | Peter Vary |
| [HIVE-13945](https://issues.apache.org/jira/browse/HIVE-13945) | Decimal value is displayed as rounded when selecting where clause with that decimal value. |  Critical | . | Takahiko Saito | Sergey Shelukhin |
| [HIVE-14115](https://issues.apache.org/jira/browse/HIVE-14115) | Custom FetchFormatter is not supported |  Minor | . | Ryu Kobayashi | Ryu Kobayashi |
| [HIVE-13887](https://issues.apache.org/jira/browse/HIVE-13887) | LazySimpleSerDe should parse "NULL" dates faster |  Major | Serializers/Deserializers, Vectorization | Gopal V | Gopal V |
| [HIVE-13625](https://issues.apache.org/jira/browse/HIVE-13625) | Hive Prepared Statement when executed with escape characters in parameter fails |  Major | JDBC | Daya Venkatesan | Zoltan Haindrich |
| [HIVE-14141](https://issues.apache.org/jira/browse/HIVE-14141) | Fix for HIVE-14062 breaks indirect urls in beeline |  Minor | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-14151](https://issues.apache.org/jira/browse/HIVE-14151) | Use of USE\_DEPRECATED\_CLI environment variable does not work |  Major | CLI | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-14200](https://issues.apache.org/jira/browse/HIVE-14200) | Tez: disable auto-reducer parallelism when reducer-count \* min.partition.factor \< 1.0 |  Major | . | Gopal V | Gopal V |
| [HIVE-14234](https://issues.apache.org/jira/browse/HIVE-14234) | TestHiveMetaStorePartitionSpecs does not drop database created in this test causes other test failure |  Minor | Tests | Niklaus Xiao | Niklaus Xiao |
| [HIVE-11863](https://issues.apache.org/jira/browse/HIVE-11863) | FS based stats collection generates wrong results for tez (for union queries) |  Major | . | Prasanth Jayachandran | Pengcheng Xiong |
| [HIVE-14135](https://issues.apache.org/jira/browse/HIVE-14135) | beeline output not formatted correctly for large column widths |  Major | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-12773](https://issues.apache.org/jira/browse/HIVE-12773) | Address current test case failures in Hive |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-13883](https://issues.apache.org/jira/browse/HIVE-13883) | WebHCat leaves token crc file never gets deleted |  Minor | WebHCat | Niklaus Xiao | Niklaus Xiao |
| [HIVE-14254](https://issues.apache.org/jira/browse/HIVE-14254) | Correct the hive version by changing "svn" to "git" |  Minor | CLI | Tao Li | Tao Li |
| [HIVE-14295](https://issues.apache.org/jira/browse/HIVE-14295) | Some metastore event listeners always initialize deleteData as false |  Minor | Metastore | Niklaus Xiao | Niklaus Xiao |
| [HIVE-14286](https://issues.apache.org/jira/browse/HIVE-14286) | ExplainTask#outputMap usage: not desired call |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-12646](https://issues.apache.org/jira/browse/HIVE-12646) | beeline and HIVE CLI do not parse ; in quote properly |  Major | CLI, Clients | Yongzhi Chen | Sahil Takiar |
| [HIVE-11339](https://issues.apache.org/jira/browse/HIVE-11339) | org.apache.hadoop.hive.serde2.io.TimestampWritable.write(DataOutput out) makes incorrect cast |  Major | Serializers/Deserializers | Arnaud Linz | Zoltan Haindrich |
| [HIVE-14294](https://issues.apache.org/jira/browse/HIVE-14294) | HiveSchemaConverter for Parquet doesn't translate TINYINT and SMALLINT into proper Parquet types |  Major | . | Cheng Lian | Gabor Szadovszky |
| [HIVE-14343](https://issues.apache.org/jira/browse/HIVE-14343) | HiveDriverRunHookContext's command is null in HS2 mode |  Major | Query Processor | Chao Sun | Chao Sun |
| [HIVE-14346](https://issues.apache.org/jira/browse/HIVE-14346) | Change the default value for hive.mapred.mode to null |  Major | Configuration | Chao Sun | Chao Sun |
| [HIVE-14259](https://issues.apache.org/jira/browse/HIVE-14259) | remove FileUtils.isSubDir() method |  Minor | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-14375](https://issues.apache.org/jira/browse/HIVE-14375) | hcatalog-pig-adaptor pom.xml uses joda-time 2.2 instead of ${joda.version} that uses 2.8.1 |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-13822](https://issues.apache.org/jira/browse/HIVE-13822) | TestPerfCliDriver throws warning in StatsSetupConst that  JsonParser cannot parse COLUMN\_STATS |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-13813](https://issues.apache.org/jira/browse/HIVE-13813) | Add Metrics for the number of Hive operations waiting for compile |  Major | Query Processor | Chao Sun | Chao Sun |
| [HIVE-12954](https://issues.apache.org/jira/browse/HIVE-12954) | NPE with str\_to\_map on null strings |  Major | . | Charles Pritchard | Marta Kuczora |
| [HIVE-14520](https://issues.apache.org/jira/browse/HIVE-14520) | We should set a timeout for the blocking calls in TestMsgBusConnection |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-14361](https://issues.apache.org/jira/browse/HIVE-14361) | Empty method in TestClientCommandHookFactory |  Trivial | . | Peter Vary | Peter Vary |
| [HIVE-14345](https://issues.apache.org/jira/browse/HIVE-14345) | Beeline result table has erroneous characters |  Minor | Beeline | Jeremy Beard | Miklos Csanady |
| [HIVE-14463](https://issues.apache.org/jira/browse/HIVE-14463) | hcatalog server extensions test cases getting stuck |  Major | . | Rajat Khandelwal | Hari Sankar Sivarama Subramaniyan |
| [HIVE-12656](https://issues.apache.org/jira/browse/HIVE-12656) | Turn hive.compute.query.using.stats on by default |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11459](https://issues.apache.org/jira/browse/HIVE-11459) | LEFT SEMI JOIN with SELECT \* should not include right-side non-key columns |  Critical | Hive | Matt McCline | Jesus Camacho Rodriguez |
| [HIVE-14556](https://issues.apache.org/jira/browse/HIVE-14556) | Load data into text table fail caused by IndexOutOfBoundsException |  Major | File Formats | Niklaus Xiao | Niklaus Xiao |
| [HIVE-14588](https://issues.apache.org/jira/browse/HIVE-14588) | Add S3 credentials to the hidden configuration variable supported on HIVE-14207 |  Major | Hive | Gabor Szadovszky | Gabor Szadovszky |
| [HIVE-13403](https://issues.apache.org/jira/browse/HIVE-13403) | Make Streaming API not create empty buckets |  Critical | HCatalog, Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-14617](https://issues.apache.org/jira/browse/HIVE-14617) | NPE in UDF MapValues() if input is null |  Major | HiveServer2 | Xuefu Zhang | Xuefu Zhang |
| [HIVE-14647](https://issues.apache.org/jira/browse/HIVE-14647) | Typo fixes in Beeline help |  Major | Documentation | Márton Balassi | Márton Balassi |
| [HIVE-14155](https://issues.apache.org/jira/browse/HIVE-14155) | Vectorization: Custom UDF Vectorization annotations are ignored |  Major | UDF, Vectorization | Gopal V | Gopal V |
| [HIVE-14614](https://issues.apache.org/jira/browse/HIVE-14614) | Insert overwrite local directory fails with IllegalStateException |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-14658](https://issues.apache.org/jira/browse/HIVE-14658) | UDF abs throws NPE when input arg type is string |  Minor | UDF | Niklaus Xiao | Niklaus Xiao |
| [HIVE-10809](https://issues.apache.org/jira/browse/HIVE-10809) | HCat FileOutputCommitterContainer leaves behind empty \_SCRATCH directories |  Major | HCatalog | Selina Zhang | Selina Zhang |
| [HIVE-14570](https://issues.apache.org/jira/browse/HIVE-14570) | Create table with column names ROW\_\_ID, INPUT\_\_FILE\_\_NAME, BLOCK\_\_OFFSET\_\_INSIDE\_\_FILE sucess but query fails |  Major | HiveServer2 | Niklaus Xiao | Niklaus Xiao |
| [HIVE-14694](https://issues.apache.org/jira/browse/HIVE-14694) | UDF rand throws NPE when input data is NULL |  Minor | UDF | Niklaus Xiao | Niklaus Xiao |
| [HIVE-14710](https://issues.apache.org/jira/browse/HIVE-14710) | unify DB product type treatment in directsql and txnhandler |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14716](https://issues.apache.org/jira/browse/HIVE-14716) | Duplicate pom.xml entries for mockito |  Trivial | Beeline | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-14686](https://issues.apache.org/jira/browse/HIVE-14686) | Get unexpected command type when execute query "CREATE TABLE IF NOT EXISTS ... AS" |  Major | . | Fan Yunbo | Fan Yunbo |
| [HIVE-14728](https://issues.apache.org/jira/browse/HIVE-14728) | Redundant orig files |  Minor | . | Rui Li | Rui Li |
| [HIVE-14011](https://issues.apache.org/jira/browse/HIVE-14011) | MessageFactory is not pluggable |  Major | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [HIVE-14727](https://issues.apache.org/jira/browse/HIVE-14727) | llap-server may case file descriptor leak in BuddyAllocator class |  Major | llap | Yechao Chen | Yechao Chen |
| [HIVE-14714](https://issues.apache.org/jira/browse/HIVE-14714) | Avoid misleading "java.io.IOException: Stream closed" when shutting down HoS |  Major | HiveServer2 | Gabor Szadovszky | Gabor Szadovszky |
| [HIVE-14820](https://issues.apache.org/jira/browse/HIVE-14820) | RPC server for spark inside HS2 is not getting server address properly |  Major | Spark | Aihua Xu | Aihua Xu |
| [HIVE-3173](https://issues.apache.org/jira/browse/HIVE-3173) | implement getTypeInfo database metadata method |  Major | JDBC | N Campbell | Xiu (Joe) Guo |
| [HIVE-7224](https://issues.apache.org/jira/browse/HIVE-7224) | Set incremental printing to true by default in Beeline |  Major | Beeline, Clients, JDBC | Vaibhav Gumashta | Sahil Takiar |
| [HIVE-14029](https://issues.apache.org/jira/browse/HIVE-14029) | Update Spark version to 2.0.0 |  Major | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-14778](https://issues.apache.org/jira/browse/HIVE-14778) | document threading model of Streaming API |  Major | HCatalog, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-14784](https://issues.apache.org/jira/browse/HIVE-14784) | Operation logs are disabled automatically if the parent directory does not exist. |  Major | HiveServer2 | Naveen Gangam | Naveen Gangam |
| [HIVE-14100](https://issues.apache.org/jira/browse/HIVE-14100) | Adding a new logged\_in\_user() UDF which returns the user provided when connecting |  Minor | Authentication, Beeline | Peter Vary | Peter Vary |
| [HIVE-14874](https://issues.apache.org/jira/browse/HIVE-14874) | Master: Update errata.txt for the missing JIRA number in HIVE-9423 commit msg |  Trivial | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14858](https://issues.apache.org/jira/browse/HIVE-14858) | Analyze command should support custom input formats |  Minor | Statistics | Chao Sun | Chao Sun |
| [HIVE-14146](https://issues.apache.org/jira/browse/HIVE-14146) | Column comments with "\\n" character "corrupts" table metadata |  Major | Beeline | Peter Vary | Peter Vary |
| [HIVE-14930](https://issues.apache.org/jira/browse/HIVE-14930) | RuntimeException was seen in explainanalyze\_3.q test log |  Minor | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14876](https://issues.apache.org/jira/browse/HIVE-14876) | make the number of rows to fetch from various HS2 clients/servers configurable |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14839](https://issues.apache.org/jira/browse/HIVE-14839) | Improve the stability of TestSessionManagerMetrics |  Minor | Test | Marta Kuczora | Marta Kuczora |
| [HIVE-14822](https://issues.apache.org/jira/browse/HIVE-14822) | Add support for credential provider for jobs launched from Hiveserver2 |  Major | HiveServer2 | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-13046](https://issues.apache.org/jira/browse/HIVE-13046) | DependencyResolver should not lowercase the dependency URI's authority |  Major | . | Anthony Hsu | Anthony Hsu |
| [HIVE-14991](https://issues.apache.org/jira/browse/HIVE-14991) | JDBC result set iterator has useless DEBUG log |  Major | JDBC | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-13589](https://issues.apache.org/jira/browse/HIVE-13589) | beeline support prompt for password with '-p' option |  Major | Beeline | Thejas M Nair | Vihang Karajgaonkar |
| [HIVE-15030](https://issues.apache.org/jira/browse/HIVE-15030) | Fixes in inference of collation for Tez cost model |  Major | Statistics | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14964](https://issues.apache.org/jira/browse/HIVE-14964) | Failing Test: Fix TestBeelineArgParsing tests |  Major | Tests | Jason Dere | Zoltan Haindrich |
| [HIVE-15091](https://issues.apache.org/jira/browse/HIVE-15091) | Master: Update errata.txt for the missing JIRA number in HIVE-14909 commit msg |  Trivial | Hive | Chaoyu Tang | Chaoyu Tang |
| [HIVE-15081](https://issues.apache.org/jira/browse/HIVE-15081) | RetryingMetaStoreClient.getProxy(HiveConf, Boolean) doesn't match constructor of HiveMetaStoreClient |  Major | . | Rui Li | Rui Li |
| [HIVE-15054](https://issues.apache.org/jira/browse/HIVE-15054) | Hive insertion query execution fails on Hive on Spark |  Major | Spark | Aihua Xu | Aihua Xu |
| [HIVE-13947](https://issues.apache.org/jira/browse/HIVE-13947) | HoS print wrong number for hash table size in map join scenario |  Minor | Spark | wangwenli | Aihua Xu |
| [HIVE-15155](https://issues.apache.org/jira/browse/HIVE-15155) | Change Hive version shortname to 2.2.0 |  Minor | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15140](https://issues.apache.org/jira/browse/HIVE-15140) | Fix logger name in PartitionColumnsSeparator |  Minor | . | Teruyoshi Zenmyo |  |
| [HIVE-15139](https://issues.apache.org/jira/browse/HIVE-15139) | HoS local mode fails with NumberFormatException |  Major | . | Rui Li | Rui Li |
| [HIVE-12891](https://issues.apache.org/jira/browse/HIVE-12891) | Hive fails when java.io.tmpdir is set to a relative location |  Major | . | Reuben Kuhnert | Barna Zsombor Klara |
| [HIVE-15062](https://issues.apache.org/jira/browse/HIVE-15062) | create backward compat checking for metastore APIs |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15038](https://issues.apache.org/jira/browse/HIVE-15038) | Reuse OrcTail in OrcEncodedDataReader::ReaderOptions in Llap |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15096](https://issues.apache.org/jira/browse/HIVE-15096) | hplsql registerUDF conflicts with pom.xml |  Major | hpl/sql | Fei Hui | Fei Hui |
| [HIVE-15167](https://issues.apache.org/jira/browse/HIVE-15167) | remove SerDe interface; undeprecate Deserializer and Serializer |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15191](https://issues.apache.org/jira/browse/HIVE-15191) | Fix typo in conf/hive-env.sh.template |  Trivial | . | Lee Dongjin | Lee Dongjin |
| [HIVE-15220](https://issues.apache.org/jira/browse/HIVE-15220) | WebHCat test driver not capturing end time of test accurately |  Trivial | Tests | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-11208](https://issues.apache.org/jira/browse/HIVE-11208) | Can not drop a default partition \_\_HIVE\_DEFAULT\_PARTITION\_\_ which is not a "string" type |  Major | Parser | Yongzhi Chen | Aihua Xu |
| [HIVE-15231](https://issues.apache.org/jira/browse/HIVE-15231) | query on view with CTE and alias fails with table not found error |  Major | Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-15233](https://issues.apache.org/jira/browse/HIVE-15233) | UDF UUID() should be non-deterministic |  Major | UDF | Chao Sun | Chao Sun |
| [HIVE-15148](https://issues.apache.org/jira/browse/HIVE-15148) | disallow loading data into bucketed tables (by default) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15266](https://issues.apache.org/jira/browse/HIVE-15266) | Edit test output of negative blobstore tests to match HIVE-15226 |  Major | Tests | Thomas Poepping | Thomas Poepping |
| [HIVE-14923](https://issues.apache.org/jira/browse/HIVE-14923) | DATE and TIMESTAMP comparisons do not work |  Critical | Hive | Matt McCline | Ashutosh Chauhan |
| [HIVE-15247](https://issues.apache.org/jira/browse/HIVE-15247) | Pass the purge option for drop table to storage handlers |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-15199](https://issues.apache.org/jira/browse/HIVE-15199) | INSERT INTO data on S3 is replacing the old rows with the new ones |  Critical | Hive | Sergio Peña | Sergio Peña |
| [HIVE-15252](https://issues.apache.org/jira/browse/HIVE-15252) | hive.security.command.whitelist doesn't work for 'reload function' |  Minor | Authorization | Chao Sun | Chao Sun |
| [HIVE-15237](https://issues.apache.org/jira/browse/HIVE-15237) | Propagate Spark job failure to Hive |  Major | Spark | Xuefu Zhang | Rui Li |
| [HIVE-15257](https://issues.apache.org/jira/browse/HIVE-15257) | remove useless cleanupReaders in OrcEncodedDataReader |  Major | llap | Fei Hui | Fei Hui |
| [HIVE-15280](https://issues.apache.org/jira/browse/HIVE-15280) | Hive.mvFile() misses the "." char when joining the filename + extension |  Critical | Hive | Sergio Peña | Sergio Peña |
| [HIVE-15276](https://issues.apache.org/jira/browse/HIVE-15276) | CLIs spell "substitution" as "subsitution" and "auxiliary" as "auxillary" |  Trivial | CLI | Grant Sohn | Grant Sohn |
| [HIVE-15293](https://issues.apache.org/jira/browse/HIVE-15293) | add toString to OpTraits |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15334](https://issues.apache.org/jira/browse/HIVE-15334) | HIVE-13945 changed scale rules for division |  Major | Types | Jason Dere | Jason Dere |
| [HIVE-15239](https://issues.apache.org/jira/browse/HIVE-15239) | hive on spark combine equivalent work get wrong result because of  TS operation compare |  Major | Spark | wangwenli | Rui Li |
| [HIVE-15351](https://issues.apache.org/jira/browse/HIVE-15351) | Disable vectorized VectorUDFAdaptor usage with non-column or constant parameters |  Blocker | Hive | Matt McCline | Matt McCline |
| [HIVE-15362](https://issues.apache.org/jira/browse/HIVE-15362) | Add the missing fields for 2.2.0 upgrade scripts |  Major | Transactions | Wei Zheng | Wei Zheng |
| [HIVE-15341](https://issues.apache.org/jira/browse/HIVE-15341) | Get work path instead of attempted task path in HiveHFileOutputFormat |  Minor | HBase Handler | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14895](https://issues.apache.org/jira/browse/HIVE-14895) | CompactorMR.CompactorOutputCommitter race condition |  Major | . | Eugene Koifman | Eugene Koifman |
| [HIVE-15275](https://issues.apache.org/jira/browse/HIVE-15275) | "beeline -f \<file\>" will throw NPE |  Major | Beeline | Aihua Xu | Aihua Xu |
| [HIVE-15361](https://issues.apache.org/jira/browse/HIVE-15361) | INSERT dynamic partition on S3 fails with a MoveTask failure |  Critical | Hive | Sergio Peña | Sergio Peña |
| [HIVE-15359](https://issues.apache.org/jira/browse/HIVE-15359) | skip.footer.line.count doesnt work properly for certain situations |  Major | Reader | Yongzhi Chen | Yongzhi Chen |
| [HIVE-15381](https://issues.apache.org/jira/browse/HIVE-15381) | don't log the callstack for reduce.xml-doesn't-exist |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15367](https://issues.apache.org/jira/browse/HIVE-15367) | CTAS with LOCATION should write temp data under location directory rather than database location |  Major | Hive | Sahil Takiar | Sahil Takiar |
| [HIVE-15385](https://issues.apache.org/jira/browse/HIVE-15385) | Failure to inherit permissions when running HdfsUtils.setFullFileStatus(..., false) causes queries to fail |  Major | Hive | Sahil Takiar | Sahil Takiar |
| [HIVE-15329](https://issues.apache.org/jira/browse/HIVE-15329) | NullPointerException might occur when create table |  Major | Metastore | Meilong Huang | Meilong Huang |
| [HIVE-15338](https://issues.apache.org/jira/browse/HIVE-15338) | Wrong result from non-vectorized DATEDIFF with scalar parameter of type DATE/TIMESTAMP |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-14960](https://issues.apache.org/jira/browse/HIVE-14960) | Improve the stability of TestNotificationListener |  Minor | Test | Marta Kuczora | Marta Kuczora |
| [HIVE-15283](https://issues.apache.org/jira/browse/HIVE-15283) | Index is dropped from wrong table in the index\_auto\_mult\_tables.q and index\_auto\_mult\_tables\_compact.q tests |  Trivial | Tests | Marta Kuczora | Marta Kuczora |
| [HIVE-13452](https://issues.apache.org/jira/browse/HIVE-13452) | StatsOptimizer should return no rows on empty table with group by |  Major | Logical Optimizer | Ashutosh Chauhan | Pengcheng Xiong |
| [HIVE-15386](https://issues.apache.org/jira/browse/HIVE-15386) | Expose Spark task counts and stage Ids information in SparkTask from SparkJobMonitor |  Major | Spark | zhihai xu | zhihai xu |
| [HIVE-15421](https://issues.apache.org/jira/browse/HIVE-15421) | Assumption in exception handling can be wrong in DagUtils.localizeResource |  Major | Tez | Wei Zheng | Wei Zheng |
| [HIVE-14998](https://issues.apache.org/jira/browse/HIVE-14998) | Fix and update test: TestPluggableHiveSessionImpl |  Major | Tests | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-15378](https://issues.apache.org/jira/browse/HIVE-15378) | clean up HADOOP\_USER\_CLASSPATH\_FIRST in bin scripts |  Major | Build Infrastructure | Fei Hui | Fei Hui |
| [HIVE-15438](https://issues.apache.org/jira/browse/HIVE-15438) | avrocountemptytbl.q should use SORT\_QUERY\_RESULTS |  Major | . | Anthony Hsu | Anthony Hsu |
| [HIVE-15428](https://issues.apache.org/jira/browse/HIVE-15428) | HoS DPP doesn't remove cyclic dependency |  Major | . | Rui Li | Rui Li |
| [HIVE-15463](https://issues.apache.org/jira/browse/HIVE-15463) | EncodedReaderImpl::readEncodedColumns in io elevator path printing lots of logs |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-13278](https://issues.apache.org/jira/browse/HIVE-13278) | Avoid FileNotFoundException when map/reduce.xml is not available |  Minor | . | Xin Hao | Chao Sun |
| [HIVE-15298](https://issues.apache.org/jira/browse/HIVE-15298) | Unit test failures in TestCliDriver sample[2,4,6,7,9] |  Major | Tests | Jason Dere | Barna Zsombor Klara |
| [HIVE-15345](https://issues.apache.org/jira/browse/HIVE-15345) | Spelling errors in logging and exceptions for query language code |  Trivial | Query Processor | Grant Sohn | Grant Sohn |
| [HIVE-15484](https://issues.apache.org/jira/browse/HIVE-15484) | Fix PerfCliDriver test failures in master |  Major | . | Prasanth Jayachandran | Jesus Camacho Rodriguez |
| [HIVE-15446](https://issues.apache.org/jira/browse/HIVE-15446) | Hive fails in recursive debug |  Minor | Diagnosability | Chaoyu Tang | Chaoyu Tang |
| [HIVE-15471](https://issues.apache.org/jira/browse/HIVE-15471) | LLAP UI: NPE when getting thread metrics |  Minor | llap | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15476](https://issues.apache.org/jira/browse/HIVE-15476) | ObjectStore.getMTableColumnStatistics() should check if colNames is empty |  Minor | Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-8373](https://issues.apache.org/jira/browse/HIVE-8373) | OOM for a simple query with spark.master=local [Spark Branch] |  Major | Spark | Xuefu Zhang | liyunzhang |
| [HIVE-15313](https://issues.apache.org/jira/browse/HIVE-15313) | Add export spark.yarn.archive or spark.yarn.jars variable in Hive on Spark document |  Minor | . | liyunzhang | liyunzhang |
| [HIVE-15494](https://issues.apache.org/jira/browse/HIVE-15494) | Create perfLogger in method execute instead of class initialization for SparkTask |  Minor | Spark | zhihai xu | zhihai xu |
| [HIVE-15299](https://issues.apache.org/jira/browse/HIVE-15299) | Yarn-cluster and yarn-client deprecated in Spark 2.0 |  Minor | . | Rui Li | Rui Li |
| [HIVE-15530](https://issues.apache.org/jira/browse/HIVE-15530) | Optimize the column stats update logic in table alteration |  Major | Hive, Metastore | Yibing Shi | Yibing Shi |
| [HIVE-15563](https://issues.apache.org/jira/browse/HIVE-15563) | Ignore Illegal Operation state transition exception in SQLOperation.runQuery to expose real exception. |  Minor | . | zhihai xu | zhihai xu |
| [HIVE-14384](https://issues.apache.org/jira/browse/HIVE-14384) | CBO: Decimal constant folding is failing |  Major | CBO | Gopal V | Jesus Camacho Rodriguez |
| [HIVE-14303](https://issues.apache.org/jira/browse/HIVE-14303) | CommonJoinOperator.checkAndGenObject should return directly to avoid NPE if ExecReducer.close is called twice. |  Major | . | zhihai xu | zhihai xu |
| [HIVE-15576](https://issues.apache.org/jira/browse/HIVE-15576) | Fix bug in QTestUtil where lines after a partial mask will not be masked |  Major | Testing Infrastructure | Thomas Poepping | Thomas Poepping |
| [HIVE-15390](https://issues.apache.org/jira/browse/HIVE-15390) | Orc reader unnecessarily reading stripe footers with hive.optimize.index.filter set to true |  Major | ORC | Abhishek Somani | Abhishek Somani |
| [HIVE-15554](https://issues.apache.org/jira/browse/HIVE-15554) | Add task information to LLAP AM heartbeat |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15625](https://issues.apache.org/jira/browse/HIVE-15625) | escape1 test fails on Mac |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14707](https://issues.apache.org/jira/browse/HIVE-14707) | ACID: Insert shuffle sort-merges on blank KEY |  Major | Transactions | Gopal V | Eugene Koifman |
| [HIVE-15519](https://issues.apache.org/jira/browse/HIVE-15519) | BitSet not computed properly for ColumnBuffer subset |  Critical | Hive, JDBC | Bharat Viswanadham | Rui Li |
| [HIVE-15579](https://issues.apache.org/jira/browse/HIVE-15579) | Support HADOOP\_PROXY\_USER for secure impersonation in hive metastore client |  Major | . | Thejas M Nair | Nanda kumar |
| [HIVE-15662](https://issues.apache.org/jira/browse/HIVE-15662) | check startTime in SparkTask to make sure startTime is not less than submitTime |  Minor | . | zhihai xu | zhihai xu |
| [HIVE-15679](https://issues.apache.org/jira/browse/HIVE-15679) | Some metastore metrics always contains column=null (write\_column\_statistics, write\_partition\_column\_statistics) |  Trivial | Metastore | Peter Vary | Peter Vary |
| [HIVE-14634](https://issues.apache.org/jira/browse/HIVE-14634) | TxnHandler.heartbeatTxnRange() can be done in 1 SQL statement |  Major | Metastore, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15485](https://issues.apache.org/jira/browse/HIVE-15485) | Investigate the DoAs failure in HoS |  Major | Spark | Chaoyu Tang | Chaoyu Tang |
| [HIVE-15387](https://issues.apache.org/jira/browse/HIVE-15387) | NPE in HiveServer2 webUI Historical SQL Operations section |  Minor | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-15653](https://issues.apache.org/jira/browse/HIVE-15653) | Some ALTER TABLE commands drop table stats |  Critical | Metastore, Statistics | Alexander Behm | Chaoyu Tang |
| [HIVE-15709](https://issues.apache.org/jira/browse/HIVE-15709) | Vectorization: Fix performance issue with using LazyBinaryUtils.writeVInt and locking / thread local storage |  Major | Hive | Matt McCline | Matt McCline |
| [HIVE-15735](https://issues.apache.org/jira/browse/HIVE-15735) | In some cases, view objects inside a view do not have parents |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-15763](https://issues.apache.org/jira/browse/HIVE-15763) | Subquery in both LHS and RHS of IN/NOT IN throws misleading error |  Major | Query Planning | Vineet Garg | Vineet Garg |
| [HIVE-15778](https://issues.apache.org/jira/browse/HIVE-15778) | DROP INDEX (non-existent) throws NPE when using DbNotificationListener |  Major | Metastore | Vamsee Yarlagadda | Vamsee Yarlagadda |
| [HIVE-15765](https://issues.apache.org/jira/browse/HIVE-15765) | Support bracketed comments |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-15746](https://issues.apache.org/jira/browse/HIVE-15746) | Fix default delimiter2 in str\_to\_map UDF or in method description |  Trivial | UDF | Alexander Pivovarov | Alexander Pivovarov |
| [HIVE-15675](https://issues.apache.org/jira/browse/HIVE-15675) | ql.hooks.TestQueryHooks failure |  Major | Tests | Jun He | Jun He |
| [HIVE-14007](https://issues.apache.org/jira/browse/HIVE-14007) | Replace ORC module with ORC release |  Major | ORC | Owen O'Malley | Owen O'Malley |
| [HIVE-15790](https://issues.apache.org/jira/browse/HIVE-15790) | Remove unused beeline golden files |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-15809](https://issues.apache.org/jira/browse/HIVE-15809) | Typo in the PostgreSQL database name for druid service |  Trivial | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-664](https://issues.apache.org/jira/browse/HIVE-664) | optimize UDF split |  Major | UDF | Namit Jain | Teddy Choi |
| [HIVE-15782](https://issues.apache.org/jira/browse/HIVE-15782) | query on parquet table returns incorrect result when hive.optimize.index.filter is set to true |  Major | File Formats | Aihua Xu | Aihua Xu |
| [HIVE-15560](https://issues.apache.org/jira/browse/HIVE-15560) | clean up out files that do not correspond to any q files |  Major | . | Sergey Shelukhin | Gunther Hagleitner |
| [HIVE-14573](https://issues.apache.org/jira/browse/HIVE-14573) | Vectorization: Implement StringExpr::find() |  Major | . | Gopal V | Teddy Choi |
| [HIVE-15817](https://issues.apache.org/jira/browse/HIVE-15817) | Fix LlapDump classpath in llapdum.sh |  Major | . | Takanobu Asanuma | Takanobu Asanuma |
| [HIVE-15840](https://issues.apache.org/jira/browse/HIVE-15840) | Webhcat test TestPig\_5 failing with Pig on Tez at check for percent complete of job |  Major | HCatalog | Daniel Dai | Daniel Dai |
| [HIVE-15626](https://issues.apache.org/jira/browse/HIVE-15626) | beeline should not exit after canceling the query on ctrl-c |  Major | . | Sergey Shelukhin | Vihang Karajgaonkar |
| [HIVE-15754](https://issues.apache.org/jira/browse/HIVE-15754) | exchange partition is not generating notifications |  Critical | HCatalog | Nachiket Vaidya | Nachiket Vaidya |
| [HIVE-15730](https://issues.apache.org/jira/browse/HIVE-15730) | JDBC should use SQLFeatureNotSupportedException where appropriate instead of  SQLException |  Major | JDBC | Thejas M Nair | Sankar Hariappan |
| [HIVE-15791](https://issues.apache.org/jira/browse/HIVE-15791) | Remove unused ant files |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-15855](https://issues.apache.org/jira/browse/HIVE-15855) | throws NPE when using Hplsql UDF |  Major | hpl/sql | Fei Hui | Fei Hui |
| [HIVE-15688](https://issues.apache.org/jira/browse/HIVE-15688) | LlapServiceDriver - an option to start the cluster immediately |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15831](https://issues.apache.org/jira/browse/HIVE-15831) | LLAP: Fix a problem of the output of LlapDump |  Major | llap | Takanobu Asanuma | Takanobu Asanuma |
| [HIVE-15873](https://issues.apache.org/jira/browse/HIVE-15873) | Remove Windows-specific code |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-15860](https://issues.apache.org/jira/browse/HIVE-15860) | RemoteSparkJobMonitor may hang when RemoteDriver exits abnormally |  Major | . | Rui Li | Rui Li |
| [HIVE-15671](https://issues.apache.org/jira/browse/HIVE-15671) | RPCServer.registerClient() erroneously uses server/client handshake timeout for connection timeout |  Major | Spark | Xuefu Zhang | Xuefu Zhang |
| [HIVE-15858](https://issues.apache.org/jira/browse/HIVE-15858) | Beeline ^C doesn't close the session in HTTP mode |  Major | Beeline | Sankar Hariappan | Sankar Hariappan |
| [HIVE-15878](https://issues.apache.org/jira/browse/HIVE-15878) | LLAP text cache: bug in last merge |  Major | . | Gopal V | Sergey Shelukhin |
| [HIVE-15799](https://issues.apache.org/jira/browse/HIVE-15799) | LLAP: rename VertorDeserializeOrcWriter |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15930](https://issues.apache.org/jira/browse/HIVE-15930) | Syntax error in the MySQL metastore schema definition |  Critical | Metastore | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-15710](https://issues.apache.org/jira/browse/HIVE-15710) | HS2 Stopped when running in background |  Major | . | Rui Li | Rui Li |
| [HIVE-15941](https://issues.apache.org/jira/browse/HIVE-15941) | Fix o.a.h.hive.ql.exec.tez.TezTask compilation issue with tez master |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15992](https://issues.apache.org/jira/browse/HIVE-15992) | LLAP: NPE in LlapTaskCommunicator.getCompletedLogsUrl for unsuccessful attempt |  Minor | llap | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-15847](https://issues.apache.org/jira/browse/HIVE-15847) | In Progress update refreshes seem slow |  Major | Hive | anishek | anishek |
| [HIVE-15953](https://issues.apache.org/jira/browse/HIVE-15953) | better error messages for LLAP registry properties |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15934](https://issues.apache.org/jira/browse/HIVE-15934) | Downgrade Maven surefire plugin from 2.19.1 to 2.18.1 |  Major | Tests | Wei Zheng | Wei Zheng |
| [HIVE-15570](https://issues.apache.org/jira/browse/HIVE-15570) | LLAP: Exception in HostAffinitySplitLocationProvider when running in container mode |  Minor | llap | Rajesh Balamohan | Zhiyuan Yang |
| [HIVE-15964](https://issues.apache.org/jira/browse/HIVE-15964) | LLAP: Llap IO codepath not getting invoked due to file column id mismatch |  Minor | llap | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-16004](https://issues.apache.org/jira/browse/HIVE-16004) | OutOfMemory in SparkReduceRecordHandler with vectorization mode |  Major | . | Colin Ma | Colin Ma |
| [HIVE-16019](https://issues.apache.org/jira/browse/HIVE-16019) | Query fails when group by/order by on same column with uppercase name |  Major | Query Processor | Chaoyu Tang | Chaoyu Tang |
| [HIVE-15859](https://issues.apache.org/jira/browse/HIVE-15859) | HoS: Write RPC messages in event loop |  Major | Hive, Spark | KaiXu | Rui Li |
| [HIVE-15743](https://issues.apache.org/jira/browse/HIVE-15743) | vectorized text parsing: speed up double parse |  Major | . | Sergey Shelukhin | Teddy Choi |
| [HIVE-13864](https://issues.apache.org/jira/browse/HIVE-13864) | Beeline ignores the command that follows a semicolon and comment |  Major | . | Muthu Manickam | Yongzhi Chen |
| [HIVE-7517](https://issues.apache.org/jira/browse/HIVE-7517) | RecordIdentifier overrides equals() but not hashCode() |  Major | Query Processor, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16047](https://issues.apache.org/jira/browse/HIVE-16047) | Shouldn't try to get KeyProvider unless encryption is enabled |  Minor | . | Rui Li | Rui Li |
| [HIVE-16074](https://issues.apache.org/jira/browse/HIVE-16074) | Parser can not deal with complex sql |  Major | Parser | jinzheng | Pengcheng Xiong |
| [HIVE-16043](https://issues.apache.org/jira/browse/HIVE-16043) | TezConfiguration.TEZ\_QUEUE\_NAME instead of tez.queue.name |  Major | Tez | Fei Hui | Fei Hui |
| [HIVE-15844](https://issues.apache.org/jira/browse/HIVE-15844) | Make ReduceSinkOperator independent of Acid |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-13335](https://issues.apache.org/jira/browse/HIVE-13335) | tune TxnHandler.performTimeOuts() batch size |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15848](https://issues.apache.org/jira/browse/HIVE-15848) | count or sum distinct incorrect when hive.optimize.reducededuplication set to true |  Critical | . | Biao Wu | Zoltan Haindrich |
| [HIVE-15952](https://issues.apache.org/jira/browse/HIVE-15952) | Add blobstore integration test for CREATE LIKE |  Major | Test | Juan Rodríguez Hortalá | Juan Rodríguez Hortalá |
| [HIVE-16070](https://issues.apache.org/jira/browse/HIVE-16070) | fix nonReserved list in IdentifiersParser.g |  Major | Query Planning, Query Processor, Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16081](https://issues.apache.org/jira/browse/HIVE-16081) | allow "0.23" shim creation for Hadoop 3 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16086](https://issues.apache.org/jira/browse/HIVE-16086) | Fix HiveMetaStoreChecker.checkPartitionDirsSingleThreaded method |  Major | Metastore | Kiran Kumar Kolli | Kiran Kumar Kolli |
| [HIVE-16109](https://issues.apache.org/jira/browse/HIVE-16109) | TestDbTxnManager generates a huge hive.log |  Major | Tests, Transactions | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16106](https://issues.apache.org/jira/browse/HIVE-16106) | Upgrade to Datanucleus 4.2.12 |  Major | Metastore | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-16097](https://issues.apache.org/jira/browse/HIVE-16097) | minor fixes to metrics and logs in LlapTaskScheduler |  Major | llap | Siddharth Seth | Siddharth Seth |
| [HIVE-11394](https://issues.apache.org/jira/browse/HIVE-11394) | Enhance EXPLAIN display for vectorization |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-16087](https://issues.apache.org/jira/browse/HIVE-16087) | Remove multi append of log4j.configurationFile in hive script |  Trivial | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-16101](https://issues.apache.org/jira/browse/HIVE-16101) | QTest failure BeeLine escape\_comments after HIVE-16045 |  Minor | Test | Peter Vary | Peter Vary |
| [HIVE-16102](https://issues.apache.org/jira/browse/HIVE-16102) | Grouping sets do not conform to SQL standard |  Critical | Operators, Parser | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-16054](https://issues.apache.org/jira/browse/HIVE-16054) | AMReporter should use application token instead of ugi.getCurrentUser |  Major | llap | Rajesh Balamohan | Prasanth Jayachandran |
| [HIVE-15282](https://issues.apache.org/jira/browse/HIVE-15282) | Different modification times are used when an index is built and when its staleness is checked |  Major | Indexing | Marta Kuczora | Marta Kuczora |
| [HIVE-16122](https://issues.apache.org/jira/browse/HIVE-16122) | NPE Hive Druid split introduced by HIVE-15928 |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-16124](https://issues.apache.org/jira/browse/HIVE-16124) | Drop the segments data as soon it is pushed to HDFS |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-16123](https://issues.apache.org/jira/browse/HIVE-16123) | Let user pick the granularity of bucketing and max in row memory |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-15997](https://issues.apache.org/jira/browse/HIVE-15997) | Resource leaks when query is cancelled |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-16142](https://issues.apache.org/jira/browse/HIVE-16142) | ATSHook NPE via LLAP |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16131](https://issues.apache.org/jira/browse/HIVE-16131) | Hive building with Hadoop 3 - additional stuff broken recently |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16078](https://issues.apache.org/jira/browse/HIVE-16078) | improve abort checking in Tez/LLAP |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16072](https://issues.apache.org/jira/browse/HIVE-16072) | LLAP: Add some additional jvm metrics for hadoop-metrics2 |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15903](https://issues.apache.org/jira/browse/HIVE-15903) | Compute table stats when user computes column stats |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16114](https://issues.apache.org/jira/browse/HIVE-16114) | NullPointerException in TezSessionPoolManager when getting the session |  Minor | HiveServer2 | Zhihua Deng | Zhihua Deng |
| [HIVE-16150](https://issues.apache.org/jira/browse/HIVE-16150) | LLAP: HiveInputFormat:getRecordReader: Fix log statements to reduce memory pressure |  Major | Logging | Rajesh Balamohan | Prasanth Jayachandran |
| [HIVE-16135](https://issues.apache.org/jira/browse/HIVE-16135) | Vectorization: unhandled constant type for scalar argument |  Major | Vectorization | Teddy Choi | Teddy Choi |
| [HIVE-16103](https://issues.apache.org/jira/browse/HIVE-16103) | LLAP: Scheduler timeout monitor never stops with slot nodes |  Major | llap | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-16076](https://issues.apache.org/jira/browse/HIVE-16076) | LLAP packaging - include aux libs |  Major | . | Gunther Hagleitner | Sergey Shelukhin |
| [HIVE-16170](https://issues.apache.org/jira/browse/HIVE-16170) | Exclude relocation of org.apache.hadoop.security.\* in the JDBC standalone jar |  Major | . | Tao Li | Tao Li |
| [HIVE-16172](https://issues.apache.org/jira/browse/HIVE-16172) | Switch to a fairness lock to synchronize HS2 thrift client |  Major | . | Tao Li | Tao Li |
| [HIVE-14864](https://issues.apache.org/jira/browse/HIVE-14864) | Distcp is not called from MoveTask when src is a directory |  Major | . | Vihang Karajgaonkar | Sahil Takiar |
| [HIVE-16161](https://issues.apache.org/jira/browse/HIVE-16161) | Disable "packaging.minimizeJar" for JDBC build |  Critical | . | Tao Li | Tao Li |
| [HIVE-16175](https://issues.apache.org/jira/browse/HIVE-16175) | Possible race condition in InstanceCache |  Major | Serializers/Deserializers | Chao Sun | Chao Sun |
| [HIVE-15407](https://issues.apache.org/jira/browse/HIVE-15407) | add distcp to classpath by default, because hive depends on it. |  Major | Beeline, CLI | Fei Hui | Fei Hui |
| [HIVE-16156](https://issues.apache.org/jira/browse/HIVE-16156) | FileSinkOperator should delete existing output target when renaming |  Major | Operators | Xuefu Zhang | Xuefu Zhang |
| [HIVE-16133](https://issues.apache.org/jira/browse/HIVE-16133) | Footer cache in Tez AM can take too much memory |  Major | . | Siddharth Seth | Sergey Shelukhin |
| [HIVE-16155](https://issues.apache.org/jira/browse/HIVE-16155) | No need for ConditionalTask if no conditional map join is created |  Minor | . | Rui Li | Rui Li |
| [HIVE-16132](https://issues.apache.org/jira/browse/HIVE-16132) | DataSize stats don't seem correct in semijoin opt branch |  Major | HiveServer2 | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-16104](https://issues.apache.org/jira/browse/HIVE-16104) | LLAP: preemption may be too aggressive if the pre-empted task doesn't die immediately |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16187](https://issues.apache.org/jira/browse/HIVE-16187) | Flaky Tests:TestHostAffinitySplitLocationProvider#testConsistentHashingFallback usually timed out |  Major | Tests | Fei Hui | Fei Hui |
| [HIVE-16192](https://issues.apache.org/jira/browse/HIVE-16192) | QTestUtil doesn't correctly set the last command when running "test" commands |  Major | . | Sahil Takiar | Sahil Takiar |
| [HIVE-16163](https://issues.apache.org/jira/browse/HIVE-16163) | Remove unnecessary parentheses in HiveParser |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16190](https://issues.apache.org/jira/browse/HIVE-16190) | Support expression in merge statement |  Major | Parser, Transactions | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16168](https://issues.apache.org/jira/browse/HIVE-16168) | llap log links should use the NM nodeId port instead of web port |  Major | llap | Siddharth Seth | Siddharth Seth |
| [HIVE-16080](https://issues.apache.org/jira/browse/HIVE-16080) | Add parquet to possible values for hive.default.fileformat and hive.default.fileformat.managed |  Major | . | Sahil Takiar | Sahil Takiar |
| [HIVE-16215](https://issues.apache.org/jira/browse/HIVE-16215) | counter recording for text cache may not fully work |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16211](https://issues.apache.org/jira/browse/HIVE-16211) | MERGE statement failing with ClassCastException |  Major | HiveServer2 | Deepak Jaiswal | Deepak Jaiswal |
| [HIVE-16160](https://issues.apache.org/jira/browse/HIVE-16160) | OutOfMemoryError: GC overhead limit exceeded on Hiveserver2 |  Critical | HiveServer2 | Kavan Suresh | Sushanth Sowmyan |
| [HIVE-16196](https://issues.apache.org/jira/browse/HIVE-16196) | UDFJson having thread-safety issues |  Major | UDF | Xuefu Zhang | Xuefu Zhang |
| [HIVE-15849](https://issues.apache.org/jira/browse/HIVE-15849) | hplsql should add enterGlobalScope func to UDF |  Major | hpl/sql | Fei Hui | Fei Hui |
| [HIVE-16183](https://issues.apache.org/jira/browse/HIVE-16183) | Fix potential thread safety issues with static variables |  Major | HiveServer2 | Xuefu Zhang | Xuefu Zhang |
| [HIVE-16189](https://issues.apache.org/jira/browse/HIVE-16189) | Table column stats might be invalidated in a failed table rename |  Major | Statistics | Chaoyu Tang | Chaoyu Tang |
| [HIVE-16236](https://issues.apache.org/jira/browse/HIVE-16236) | BuddyAllocator fragmentation - short-term fix |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16071](https://issues.apache.org/jira/browse/HIVE-16071) | HoS RPCServer misuses the timeout in its RPC handshake |  Major | Spark | Chaoyu Tang | Chaoyu Tang |
| [HIVE-15857](https://issues.apache.org/jira/browse/HIVE-15857) | Vectorization: Add string conversion case for UDFToInteger, etc |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-16110](https://issues.apache.org/jira/browse/HIVE-16110) | Vectorization: Support 2 Value CASE WHEN instead of fall back to VectorUDFAdaptor |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-16024](https://issues.apache.org/jira/browse/HIVE-16024) | MSCK Repair Requires nonstrict hive.mapred.mode |  Major | Metastore | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-15766](https://issues.apache.org/jira/browse/HIVE-15766) | DBNotificationlistener leaks JDOPersistenceManager |  Major | Metastore | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-16251](https://issues.apache.org/jira/browse/HIVE-16251) | Vectorization: new octet\_length function (HIVE-15979) get NPE |  Critical | Hive | Matt McCline | Teddy Choi |
| [HIVE-16180](https://issues.apache.org/jira/browse/HIVE-16180) | LLAP: Native memory leak in EncodedReader |  Critical | llap | Prasanth Jayachandran | Sergey Shelukhin |
| [HIVE-16107](https://issues.apache.org/jira/browse/HIVE-16107) | JDBC: HttpClient should retry one more time on NoHttpResponseException |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-15784](https://issues.apache.org/jira/browse/HIVE-15784) | Vectorization: Turn on text vectorization by default (vector serde) |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-15789](https://issues.apache.org/jira/browse/HIVE-15789) | Vectorization: limit reduce vectorization to 32Mb chunks |  Major | Vectorization | Gopal V | Teddy Choi |
| [HIVE-15867](https://issues.apache.org/jira/browse/HIVE-15867) | Add blobstore tests for import/export |  Major | . | Thomas Poepping | Juan Rodríguez Hortalá |
| [HIVE-16229](https://issues.apache.org/jira/browse/HIVE-16229) | Wrong result for correlated scalar subquery with aggregate |  Major | . | Vineet Garg | Vineet Garg |
| [HIVE-14606](https://issues.apache.org/jira/browse/HIVE-14606) | Beeline fails if quoted string ends with \\\\ |  Major | Beeline | Sahil Takiar | Sahil Takiar |
| [HIVE-16208](https://issues.apache.org/jira/browse/HIVE-16208) | Vectorization: ProcessingModeHashAggregate::sumBatchSize is never reset |  Minor | . | Gopal V | Gopal V |
| [HIVE-16278](https://issues.apache.org/jira/browse/HIVE-16278) | LLAP: metadata cache may incorrectly decrease memory usage in mem manager |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16154](https://issues.apache.org/jira/browse/HIVE-16154) | Determine when dynamic runtime filtering should be disabled |  Major | Query Planning | Jason Dere | Jason Dere |
| [HIVE-15841](https://issues.apache.org/jira/browse/HIVE-15841) | Upgrade Hive to ORC 1.3.3 |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-15644](https://issues.apache.org/jira/browse/HIVE-15644) | Collect LLAP's JVM metrics via Hive's JvmPauseMonitor |  Major | Hive | Wei Zheng | Wei Zheng |
| [HIVE-16273](https://issues.apache.org/jira/browse/HIVE-16273) | Vectorization: Make non-column key expressions work in MERGEPARTIAL mode |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-14801](https://issues.apache.org/jira/browse/HIVE-14801) | improve TestPartitionNameWhitelistValidation stability |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-16274](https://issues.apache.org/jira/browse/HIVE-16274) | Support tuning of NDV of columns using lower/upper bounds |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-9815](https://issues.apache.org/jira/browse/HIVE-9815) | Metastore column"SERDE\_PARAMS"."PARAM\_VALUE"  limited to 4000 bytes |  Critical | Metastore | Naveen Gangam | Naveen Gangam |
| [HIVE-15249](https://issues.apache.org/jira/browse/HIVE-15249) | HIve 2.1.0 is throwing InvalidObjectException(message:Invalid column type name is too long |  Major | Hive | vishal.rajan | Naveen Gangam |
| [HIVE-16292](https://issues.apache.org/jira/browse/HIVE-16292) | SparkUtilities upload to HDFS doesn't work with viewfs |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-16219](https://issues.apache.org/jira/browse/HIVE-16219) | metastore notification\_log contains serialized message with  non functional fields |  Major | Metastore | anishek | anishek |
| [HIVE-16188](https://issues.apache.org/jira/browse/HIVE-16188) | beeline should block the connection if given invalid database name. |  Minor | Hive | Pavas Garg | Sahil Takiar |
| [HIVE-16007](https://issues.apache.org/jira/browse/HIVE-16007) | When the query does not complie the LogRunnable never stops |  Major | Beeline | Peter Vary | Peter Vary |
| [HIVE-16310](https://issues.apache.org/jira/browse/HIVE-16310) | Get the output operators of Reducesink when vectorization is on |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14077](https://issues.apache.org/jira/browse/HIVE-14077) | add implicit decimal arithmetic q test, fix issues if found |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15829](https://issues.apache.org/jira/browse/HIVE-15829) | LLAP text cache: disable memory tracking on the writer |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16305](https://issues.apache.org/jira/browse/HIVE-16305) | Additional Datanucleus ClassLoaderResolverImpl leaks causing HS2 OOM |  Major | HiveServer2 | Daniel Dai | Daniel Dai |
| [HIVE-16318](https://issues.apache.org/jira/browse/HIVE-16318) | LLAP cache: address some issues in 2.2/2.3 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16301](https://issues.apache.org/jira/browse/HIVE-16301) | Preparing for 2.3 development. |  Blocker | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-16315](https://issues.apache.org/jira/browse/HIVE-16315) | Describe table doesn't show num of partitions |  Major | . | Rui Li | Rui Li |
| [HIVE-16308](https://issues.apache.org/jira/browse/HIVE-16308) | PreExecutePrinter and PostExecutePrinter should log to INFO level instead of ERROR |  Major | Test | Sahil Takiar | Sahil Takiar |
| [HIVE-16348](https://issues.apache.org/jira/browse/HIVE-16348) | HoS query is canceled but error message shows RPC is closed |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HIVE-15923](https://issues.apache.org/jira/browse/HIVE-15923) | Hive default partition causes errors in get partitions |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14348](https://issues.apache.org/jira/browse/HIVE-14348) | Add tests for alter table exchange partition |  Blocker | . | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-16341](https://issues.apache.org/jira/browse/HIVE-16341) | Tez Task Execution Summary has incorrect input record counts on some operators |  Major | Tez | Jason Dere | Jason Dere |
| [HIVE-16385](https://issues.apache.org/jira/browse/HIVE-16385) | StatsNoJobTask could exit early before all partitions have been processed |  Major | Statistics | Chao Sun | Chao Sun |
| [HIVE-16380](https://issues.apache.org/jira/browse/HIVE-16380) | removing global test dependency of jsonassert |  Minor | HiveServer2 | anishek | anishek |
| [HIVE-16403](https://issues.apache.org/jira/browse/HIVE-16403) | LLAP UI shows the wrong number of executors |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16193](https://issues.apache.org/jira/browse/HIVE-16193) | Hive show compactions not reflecting the status of the application |  Major | Transactions | Kavan Suresh | Wei Zheng |
| [HIVE-16390](https://issues.apache.org/jira/browse/HIVE-16390) | LLAP IO should take job config into account; also LLAP config should load defaults |  Major | . | Siddharth Seth | Sergey Shelukhin |
| [HIVE-15035](https://issues.apache.org/jira/browse/HIVE-15035) | Clean up Hive licenses for binary distribution |  Blocker | distribution | Alan Gates | Alan Gates |
| [HIVE-16473](https://issues.apache.org/jira/browse/HIVE-16473) | Hive-on-Tez may fail to write to an HBase table |  Major | . | Mahesh Balakrishnan | Sergey Shelukhin |
| [HIVE-16461](https://issues.apache.org/jira/browse/HIVE-16461) | DagUtils checks local resource size on the remote fs |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16459](https://issues.apache.org/jira/browse/HIVE-16459) | Forward channelInactive to RpcDispatcher |  Major | Spark | Rui Li | Rui Li |
| [HIVE-16287](https://issues.apache.org/jira/browse/HIVE-16287) | Alter table partition rename with location - moves partition back to hive warehouse |  Minor | Metastore | Ying Chen | Vihang Karajgaonkar |
| [HIVE-16321](https://issues.apache.org/jira/browse/HIVE-16321) | Possible deadlock in metastore with Acid enabled |  Blocker | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16519](https://issues.apache.org/jira/browse/HIVE-16519) | Fix exception thrown by checkOutputSpecs |  Major | Druid integration | slim bouguerra | slim bouguerra |
| [HIVE-12614](https://issues.apache.org/jira/browse/HIVE-12614) | RESET command does not close spark session |  Minor | Spark | Nemon Lou | Sahil Takiar |
| [HIVE-16547](https://issues.apache.org/jira/browse/HIVE-16547) | LLAP: may not unlock buffers in some cases |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16545](https://issues.apache.org/jira/browse/HIVE-16545) | LLAP: bug in arena size determination logic |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16399](https://issues.apache.org/jira/browse/HIVE-16399) | create an index for tc\_txnid in TXN\_COMPONENTS |  Major | Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-16465](https://issues.apache.org/jira/browse/HIVE-16465) | NullPointer Exception when enable vectorization for Parquet file format |  Critical | . | Colin Ma | Colin Ma |
| [HIVE-16577](https://issues.apache.org/jira/browse/HIVE-16577) | Syntax error in the metastore init scripts for mssql |  Blocker | Metastore | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16640](https://issues.apache.org/jira/browse/HIVE-16640) | The ASF Headers have some errors in some class |  Minor | . | ZhangBing Lin | ZhangBing Lin |
| [HIVE-16667](https://issues.apache.org/jira/browse/HIVE-16667) | PostgreSQL metastore handling of CLOB types for COLUMNS\_V2.TYPE\_NAME and other field is incorrect |  Major | . | Remus Rusanu | Naveen Gangam |
| [HIVE-16864](https://issues.apache.org/jira/browse/HIVE-16864) | add validation to stream position search in LLAP IO |  Major | . | Prasanth Jayachandran | Sergey Shelukhin |
| [HIVE-16847](https://issues.apache.org/jira/browse/HIVE-16847) | LLAP queue order issue |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16915](https://issues.apache.org/jira/browse/HIVE-16915) | partition column count is not determined correctly in LLAP IO non-vectorized wrapper |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16761](https://issues.apache.org/jira/browse/HIVE-16761) | LLAP IO: SMB joins fail elevator |  Major | . | Gopal V | Sergey Shelukhin |
| [HIVE-15144](https://issues.apache.org/jira/browse/HIVE-15144) | JSON.org license is now CatX |  Blocker | . | Robert Kanter | Owen O'Malley |
| [HIVE-16366](https://issues.apache.org/jira/browse/HIVE-16366) | Hive 2.3 release planning |  Blocker | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-17411](https://issues.apache.org/jira/browse/HIVE-17411) | LLAP IO may incorrectly release a refcount in some rare cases |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-13989](https://issues.apache.org/jira/browse/HIVE-13989) | Extended ACLs are not handled according to specification |  Major | HCatalog | Chris Drome | Chris Drome |
| [HIVE-17333](https://issues.apache.org/jira/browse/HIVE-17333) | Schema changes in HIVE-12274 for Oracle may not work for upgrade |  Major | Metastore | Naveen Gangam | Naveen Gangam |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13921](https://issues.apache.org/jira/browse/HIVE-13921) | Fix constprog\_partitioner for HoS |  Major | . | Rui Li | Rui Li |
| [HIVE-14523](https://issues.apache.org/jira/browse/HIVE-14523) | ACID performance improvement patches |  Trivial | . | Saket Saurabh | Saket Saurabh |
| [HIVE-14896](https://issues.apache.org/jira/browse/HIVE-14896) | Stabilize golden files for currently failing tests |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-14875](https://issues.apache.org/jira/browse/HIVE-14875) | Enhancement and refactoring of TestLdapAtnProviderWithMiniDS |  Major | Authentication, Tests | Illya Yalovyy | Illya Yalovyy |
| [HIVE-15034](https://issues.apache.org/jira/browse/HIVE-15034) | Fix orc\_ppd\_basic & current\_date\_timestamp tests |  Major | Test | Vineet Garg | Vineet Garg |
| [HIVE-15109](https://issues.apache.org/jira/browse/HIVE-15109) | Set MaxPermSize to 256M for maven tests with JDKs prior to 8 |  Minor | Test | Chaoyu Tang | Chaoyu Tang |
| [HIVE-15357](https://issues.apache.org/jira/browse/HIVE-15357) | Fix and re-enable the spark-only tests |  Major | . | Rui Li | Rui Li |
| [HIVE-15526](https://issues.apache.org/jira/browse/HIVE-15526) | Some tests need SORT\_QUERY\_RESULTS |  Minor | . | Rui Li | Rui Li |
| [HIVE-15736](https://issues.apache.org/jira/browse/HIVE-15736) | Add unit tests to Utilities.getInputSummary() method for multi-threading cases |  Minor | Query Planning | Sergio Peña | Sergio Peña |
| [HIVE-15910](https://issues.apache.org/jira/browse/HIVE-15910) | Improvements in Hive Unit Test by using In-memory Derby DB |  Major | Tests | Sankar Hariappan | Sankar Hariappan |
| [HIVE-16140](https://issues.apache.org/jira/browse/HIVE-16140) | Stabilize few randomly failing tests |  Major | Testing Infrastructure, Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-16181](https://issues.apache.org/jira/browse/HIVE-16181) | Make logic for hdfs directory location extraction more generic, in webhcat test driver |  Minor | WebHCat | Aswathy Chellammal Sreekumar | Aswathy Chellammal Sreekumar |
| [HIVE-16288](https://issues.apache.org/jira/browse/HIVE-16288) | Add blobstore tests for ORC and RCFILE file formats |  Major | Tests | Thomas Poepping | Thomas Poepping |
| [HIVE-16415](https://issues.apache.org/jira/browse/HIVE-16415) | Add tests covering single inserts of zero rows |  Major | Tests | Thomas Poepping | Thomas Poepping |
| [HIVE-16454](https://issues.apache.org/jira/browse/HIVE-16454) | Add blobstore tests for inserting empty into dynamic partition/list bucket tables & inserting cross blobstore tables |  Major | Tests | Rentao Wu | Rentao Wu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13149](https://issues.apache.org/jira/browse/HIVE-13149) | Remove some unnecessary HMS connections from HS2 |  Major | HiveServer2 | Aihua Xu | Aihua Xu |
| [HIVE-13453](https://issues.apache.org/jira/browse/HIVE-13453) | Support ORDER BY and windowing clause in partitioning clause with distinct function |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-13792](https://issues.apache.org/jira/browse/HIVE-13792) | Show create table should not show stats info in the table properties |  Major | Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-13894](https://issues.apache.org/jira/browse/HIVE-13894) | Fix more json related JDK8 test failures Part 2 |  Major | . | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-13916](https://issues.apache.org/jira/browse/HIVE-13916) | Reduce the max runtime of a test further |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14014](https://issues.apache.org/jira/browse/HIVE-14014) | zero length file is being created for empty bucket in tez mode (II) |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14070](https://issues.apache.org/jira/browse/HIVE-14070) | hive.tez.exec.print.summary=true returns wrong performance numbers on HS2 |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14209](https://issues.apache.org/jira/browse/HIVE-14209) | Add some logging info for session and operation management |  Minor | Query Processor | Aihua Xu | Aihua Xu |
| [HIVE-14196](https://issues.apache.org/jira/browse/HIVE-14196) | Disable LLAP IO when complex types are involved |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14442](https://issues.apache.org/jira/browse/HIVE-14442) | CBO: Calcite Operator To Hive Operator(Calcite Return Path): Wrong result/plan in group by with hive.map.aggr=false |  Major | CBO | Vineet Garg | Vineet Garg |
| [HIVE-14501](https://issues.apache.org/jira/browse/HIVE-14501) | MiniTez test for union\_type\_chk.q is slow |  Major | Test | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14376](https://issues.apache.org/jira/browse/HIVE-14376) | Schema evolution tests takes a long time |  Minor | Test | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14270](https://issues.apache.org/jira/browse/HIVE-14270) | Write temporary data to HDFS when doing inserts on tables located on S3 |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-14478](https://issues.apache.org/jira/browse/HIVE-14478) | Remove seemingly unused common/src/test/resources/core-site.xml |  Trivial | Tests | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-14506](https://issues.apache.org/jira/browse/HIVE-14506) | TestQueryLifeTimeHook fail |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-14460](https://issues.apache.org/jira/browse/HIVE-14460) | AccumuloCliDriver migration to junit4 |  Major | Tests | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-14527](https://issues.apache.org/jira/browse/HIVE-14527) | Schema evolution tests are not running in TestCliDriver |  Major | Test | Matt McCline | Prasanth Jayachandran |
| [HIVE-12335](https://issues.apache.org/jira/browse/HIVE-12335) | CBO (Calcite Return Path): Support for unique join |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-10463](https://issues.apache.org/jira/browse/HIVE-10463) | CBO (Calcite Return Path): Insert overwrite... select \* from... queries failing for bucketed tables |  Major | CBO | Jesus Camacho Rodriguez | Laljo John Pullokkaran |
| [HIVE-14552](https://issues.apache.org/jira/browse/HIVE-14552) | TestParseNegative fix |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-14522](https://issues.apache.org/jira/browse/HIVE-14522) | CBO: Calcite Operator To Hive Operator(Calcite Return Path): Fix test failure for auto\_join\_filters |  Major | CBO | Vineet Garg | Vineet Garg |
| [HIVE-14562](https://issues.apache.org/jira/browse/HIVE-14562) | CBO (Calcite Return Path) Wrong results for limit + offset |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-14565](https://issues.apache.org/jira/browse/HIVE-14565) | CBO (Calcite Return Path) Handle field access for nested column |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-14502](https://issues.apache.org/jira/browse/HIVE-14502) | Convert MiniTez tests to MiniLlap tests |  Major | Test | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14613](https://issues.apache.org/jira/browse/HIVE-14613) | Move schema evolution tests to MiniLlap and disable LLAP IO |  Major | Tests | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14553](https://issues.apache.org/jira/browse/HIVE-14553) | Remove tez golden files after HIVE-14502 |  Major | Test | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14610](https://issues.apache.org/jira/browse/HIVE-14610) | CBO: Calcite Operator To Hive Operator(Calcite Return Path): Fix wrong result in input30 |  Major | CBO | Vineet Garg | Vineet Garg |
| [HIVE-14561](https://issues.apache.org/jira/browse/HIVE-14561) | Minor ptest2 improvements |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14440](https://issues.apache.org/jira/browse/HIVE-14440) | Fix default value of USE\_DEPRECATED\_CLI in cli.cmd |  Minor | CLI | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-14515](https://issues.apache.org/jira/browse/HIVE-14515) | Schema evolution uses slow INSERT INTO .. VALUES |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-14170](https://issues.apache.org/jira/browse/HIVE-14170) | Beeline IncrementalRows should buffer rows and incrementally re-calculate width if TableOutputFormat is used |  Major | Beeline | Sahil Takiar | Sahil Takiar |
| [HIVE-14670](https://issues.apache.org/jira/browse/HIVE-14670) | org.apache.hadoop.hive.ql.TestMTQueries failure |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-14673](https://issues.apache.org/jira/browse/HIVE-14673) | Orc orc\_merge\_diff\_fs.q and orc\_llap.q test improvement |  Major | Tests | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14576](https://issues.apache.org/jira/browse/HIVE-14576) | Testing: Fixes to TestHBaseMinimrCliDriver |  Major | . | Vaibhav Gumashta | Hari Sankar Sivarama Subramaniyan |
| [HIVE-13555](https://issues.apache.org/jira/browse/HIVE-13555) | Add nullif udf |  Major | UDF | Ashutosh Chauhan | Zoltan Haindrich |
| [HIVE-13556](https://issues.apache.org/jira/browse/HIVE-13556) | Support for double precision data type |  Major | Types | Ashutosh Chauhan | Zoltan Haindrich |
| [HIVE-14438](https://issues.apache.org/jira/browse/HIVE-14438) | Create Table on Druid data source |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14464](https://issues.apache.org/jira/browse/HIVE-14464) | Add property for default Druid broker address |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14465](https://issues.apache.org/jira/browse/HIVE-14465) | Recognize scan of Druid table in Calcite optimizer |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14466](https://issues.apache.org/jira/browse/HIVE-14466) | Extend Calcite capabilities to transform plan into Druid query |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14467](https://issues.apache.org/jira/browse/HIVE-14467) | Translate Druid query back from Calcite plan |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14468](https://issues.apache.org/jira/browse/HIVE-14468) | Implement Druid query based input format |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14469](https://issues.apache.org/jira/browse/HIVE-14469) | Read results for Druid Timeseries query |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14470](https://issues.apache.org/jira/browse/HIVE-14470) | Read results for Druid TopN query |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14471](https://issues.apache.org/jira/browse/HIVE-14471) | Read results for Druid GroupBy query |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14472](https://issues.apache.org/jira/browse/HIVE-14472) | Read results for Druid Select query |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14626](https://issues.apache.org/jira/browse/HIVE-14626) | Support Trash in Truncate Table |  Minor | Query Processor | Chaoyu Tang | Chaoyu Tang |
| [HIVE-14663](https://issues.apache.org/jira/browse/HIVE-14663) | Change ptest java language version to 1.7, other version changes and fixes |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14485](https://issues.apache.org/jira/browse/HIVE-14485) | Create 'materialized view' table type |  Major | Materialized views | Jesus Camacho Rodriguez | Alan Gates |
| [HIVE-14486](https://issues.apache.org/jira/browse/HIVE-14486) | Add CREATE MATERIALIZED VIEW statement |  Major | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14488](https://issues.apache.org/jira/browse/HIVE-14488) | Add DROP MATERIALIZED VIEW statement |  Major | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14489](https://issues.apache.org/jira/browse/HIVE-14489) | Add tests for DESCRIBE [EXTENDED\|FORMATTED] statement on materialized views |  Major | Materialized views | Jesus Camacho Rodriguez | Alan Gates |
| [HIVE-14490](https://issues.apache.org/jira/browse/HIVE-14490) | Block ACID for materialized views |  Major | Materialized views | Jesus Camacho Rodriguez | Alan Gates |
| [HIVE-14491](https://issues.apache.org/jira/browse/HIVE-14491) | Implement access control for materialized views |  Major | Materialized views | Jesus Camacho Rodriguez | Alan Gates |
| [HIVE-14492](https://issues.apache.org/jira/browse/HIVE-14492) | Optimize query in CREATE MATERIALIZED VIEW statement in Calcite |  Major | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14769](https://issues.apache.org/jira/browse/HIVE-14769) | TestVectorRowObject test takes \>12 mins |  Major | Test | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14540](https://issues.apache.org/jira/browse/HIVE-14540) | Add support in ptest to create batches for non qfile tests |  Major | Testing Infrastructure | Siddharth Seth | Siddharth Seth |
| [HIVE-14720](https://issues.apache.org/jira/browse/HIVE-14720) | Fix TestJdbcDriver2 runtime |  Major | . | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-14734](https://issues.apache.org/jira/browse/HIVE-14734) | Detect ptest profile and submit to ptest-server from jenkins-execute-build.sh |  Major | Hive, Testing Infrastructure | Sergio Peña | Sergio Peña |
| [HIVE-14781](https://issues.apache.org/jira/browse/HIVE-14781) | ptest killall command does not work |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14790](https://issues.apache.org/jira/browse/HIVE-14790) | Jenkins is not displaying test results because 'set -e' is aborting the script too soon |  Major | Hive, Testing Infrastructure | Sergio Peña | Sergio Peña |
| [HIVE-14793](https://issues.apache.org/jira/browse/HIVE-14793) | Allow ptest branch to be specified, PROFILE override |  Major | Hive, Testing Infrastructure | Siddharth Seth | Siddharth Seth |
| [HIVE-14461](https://issues.apache.org/jira/browse/HIVE-14461) | Move hbase\_bulk to run via TestCliDriver. |  Major | Tests | Zoltan Haindrich | Siddharth Seth |
| [HIVE-14818](https://issues.apache.org/jira/browse/HIVE-14818) | Reduce number of retries while starting HiveServer for tests |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14775](https://issues.apache.org/jira/browse/HIVE-14775) | Cleanup IOException usage in Metrics APIs |  Major | Hive, HiveServer2, Metastore | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-14810](https://issues.apache.org/jira/browse/HIVE-14810) | Failing test: TestMetaStoreMetrics.testMetaDataCounts |  Major | . | Siddharth Seth | Barna Zsombor Klara |
| [HIVE-14830](https://issues.apache.org/jira/browse/HIVE-14830) | Move a majority of the MiniLlapCliDriver tests to use an inline AM |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14882](https://issues.apache.org/jira/browse/HIVE-14882) | Lean qtest initialization for CliDrivers |  Major | Tests | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14892](https://issues.apache.org/jira/browse/HIVE-14892) | Test that explicitly submit jobs via child process are slow |  Major | Tests | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14917](https://issues.apache.org/jira/browse/HIVE-14917) | explainanalyze\_2.q fails after HIVE-14861 |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14914](https://issues.apache.org/jira/browse/HIVE-14914) | Improve the 'TestClass' did not produce a TEST-\*.xml file message |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14915](https://issues.apache.org/jira/browse/HIVE-14915) | Add an option to skip log collection for successful tests |  Major | Testing Infrastructure | Siddharth Seth | Siddharth Seth |
| [HIVE-14850](https://issues.apache.org/jira/browse/HIVE-14850) | Fix TestJdbcDriver2 set up time |  Major | . | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-14721](https://issues.apache.org/jira/browse/HIVE-14721) | Fix TestJdbcWithMiniHS2 runtime |  Major | . | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-14877](https://issues.apache.org/jira/browse/HIVE-14877) | Move slow CliDriver tests to MiniLlap |  Major | Tests | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14761](https://issues.apache.org/jira/browse/HIVE-14761) | Remove TestJdbcWithMiniMr after merging tests with TestJdbcWithMiniHS2 |  Major | . | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-14373](https://issues.apache.org/jira/browse/HIVE-14373) | Add integration tests for hive on S3 |  Major | . | Sergio Peña | Thomas Poepping |
| [HIVE-14916](https://issues.apache.org/jira/browse/HIVE-14916) | Reduce the memory requirements for Spark tests |  Major | . | Ferdinand Xu | Dapeng Sun |
| [HIVE-14958](https://issues.apache.org/jira/browse/HIVE-14958) | Improve the 'TestClass' did not produce a TEST-\*.xml file message to include list of all qfiles in a batch, batch id |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14891](https://issues.apache.org/jira/browse/HIVE-14891) | Parallelize TestHCatStorer |  Major | HCatalog, Testing Infrastructure | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-14973](https://issues.apache.org/jira/browse/HIVE-14973) | Flaky test: TestJdbcWithSQLAuthorization.testBlackListedUdfUsage |  Major | Tests | Gopal V | Zoltan Haindrich |
| [HIVE-15000](https://issues.apache.org/jira/browse/HIVE-15000) | Remove addlocaldriverjar, and addlocaldrivername from command line help |  Trivial | Beeline | Peter Vary | Peter Vary |
| [HIVE-14921](https://issues.apache.org/jira/browse/HIVE-14921) | Move slow CliDriver tests to MiniLlap - part 2 |  Major | Tests | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-14974](https://issues.apache.org/jira/browse/HIVE-14974) | TestBeeLineHistory throws NPE in ShutdownHook |  Major | Tests | Gopal V | Prasanth Jayachandran |
| [HIVE-14977](https://issues.apache.org/jira/browse/HIVE-14977) | Flaky test: fix order\_null.q and union\_fast\_stats.q |  Major | Tests | Gopal V | Prasanth Jayachandran |
| [HIVE-15009](https://issues.apache.org/jira/browse/HIVE-15009) | ptest - avoid unnecessary cleanup from previous test runs in batch-exec.vm |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-15008](https://issues.apache.org/jira/browse/HIVE-15008) | Cleanup local workDir when MiniHS2 starts up in FS\_ONLY mode |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-15006](https://issues.apache.org/jira/browse/HIVE-15006) | Flaky test: TestBeelineWithHS2ConnectionFile |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14835](https://issues.apache.org/jira/browse/HIVE-14835) | Improve ptest2 build time |  Major | Testing Infrastructure | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-15013](https://issues.apache.org/jira/browse/HIVE-15013) | Config dir generated for tests should not be under the test tmp directory |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14985](https://issues.apache.org/jira/browse/HIVE-14985) | Remove UDF-s created during test runs |  Minor | Testing Infrastructure | Peter Vary | Peter Vary |
| [HIVE-14753](https://issues.apache.org/jira/browse/HIVE-14753) | Track the number of open/closed/abandoned sessions in HS2 |  Major | Hive, HiveServer2 | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-14391](https://issues.apache.org/jira/browse/HIVE-14391) | TestAccumuloCliDriver is not executed during precommit tests |  Major | Testing Infrastructure | Zoltan Haindrich | Peter Vary |
| [HIVE-13873](https://issues.apache.org/jira/browse/HIVE-13873) | Support column pruning for struct fields in select statement |  Major | Logical Optimizer | Xuefu Zhang | Ferdinand Xu |
| [HIVE-15056](https://issues.apache.org/jira/browse/HIVE-15056) | Support index shifting for struct fields |  Major | File Formats, Physical Optimizer, Serializers/Deserializers | Chao Sun | Chao Sun |
| [HIVE-14908](https://issues.apache.org/jira/browse/HIVE-14908) | Upgrade ANTLR to 3.5.2 |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15023](https://issues.apache.org/jira/browse/HIVE-15023) | SimpleFetchOptimizer needs to optimize limit=0 |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15085](https://issues.apache.org/jira/browse/HIVE-15085) | Reduce the memory used by unit tests, MiniCliDriver, MiniLlapLocal, MiniSpark |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14815](https://issues.apache.org/jira/browse/HIVE-14815) | Implement Parquet vectorization reader for Primitive types |  Major | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-15207](https://issues.apache.org/jira/browse/HIVE-15207) | Implement a capability to detect incorrect sequence numbers |  Major | Metastore | Aihua Xu | Aihua Xu |
| [HIVE-15072](https://issues.apache.org/jira/browse/HIVE-15072) | Schematool should recognize missing tables in metastore |  Major | Metastore | Yongzhi Chen | Naveen Gangam |
| [HIVE-15073](https://issues.apache.org/jira/browse/HIVE-15073) | Schematool should detect malformed URIs |  Major | . | Yongzhi Chen | Yongzhi Chen |
| [HIVE-15168](https://issues.apache.org/jira/browse/HIVE-15168) | Flaky test: TestSparkClient.testJobSubmission (still flaky) |  Major | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-15263](https://issues.apache.org/jira/browse/HIVE-15263) | Detect the values for incorrect NULL values |  Major | Metastore | Aihua Xu | Aihua Xu |
| [HIVE-15114](https://issues.apache.org/jira/browse/HIVE-15114) | Remove extra MoveTask operators from the ConditionalTask |  Major | Hive | Sahil Takiar | Sergio Peña |
| [HIVE-14582](https://issues.apache.org/jira/browse/HIVE-14582) | Add trunc(numeric) udf |  Major | SQL | Ashutosh Chauhan | Chinna Rao Lalam |
| [HIVE-15130](https://issues.apache.org/jira/browse/HIVE-15130) | Fixing shifting index issue related to object inspector caching |  Major | Reader | Chao Sun | Chao Sun |
| [HIVE-15057](https://issues.apache.org/jira/browse/HIVE-15057) | Nested column pruning: support all operators |  Major | Logical Optimizer, Physical Optimizer | Chao Sun | Chao Sun |
| [HIVE-15074](https://issues.apache.org/jira/browse/HIVE-15074) | Schematool provides a way to detect invalid entries in VERSION table |  Minor | Metastore | Yongzhi Chen | Chaoyu Tang |
| [HIVE-15346](https://issues.apache.org/jira/browse/HIVE-15346) | "values temp table" should not be an input source for the query |  Major | Query Planning | Aihua Xu | Aihua Xu |
| [HIVE-15392](https://issues.apache.org/jira/browse/HIVE-15392) | Refactoring the validate function of HiveSchemaTool to make the output consistent |  Minor | Metastore | Aihua Xu | Aihua Xu |
| [HIVE-15401](https://issues.apache.org/jira/browse/HIVE-15401) | Import constraints into HBase metastore |  Major | HBase Metastore | Alan Gates | Alan Gates |
| [HIVE-15391](https://issues.apache.org/jira/browse/HIVE-15391) | Location validation for table should ignore the values for view. |  Minor | Beeline | Yongzhi Chen | Yongzhi Chen |
| [HIVE-14496](https://issues.apache.org/jira/browse/HIVE-14496) | Enable Calcite rewriting with materialized views |  Major | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-14497](https://issues.apache.org/jira/browse/HIVE-14497) | Fine control for using materialized views in rewriting |  Major | Materialized views | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15460](https://issues.apache.org/jira/browse/HIVE-15460) | Fix ptest2 test failures |  Minor | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-15425](https://issues.apache.org/jira/browse/HIVE-15425) | Eliminate conflicting output from schematool's table validator. |  Minor | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-15453](https://issues.apache.org/jira/browse/HIVE-15453) | Fix failing tests in master |  Major | . | Sushanth Sowmyan | Prasanth Jayachandran |
| [HIVE-15360](https://issues.apache.org/jira/browse/HIVE-15360) | Nested column pruning: add pruned column paths to explain output |  Minor | Query Planning | Chao Sun | Chao Sun |
| [HIVE-15499](https://issues.apache.org/jira/browse/HIVE-15499) | Nested column pruning: don't prune paths when a SerDe is used only for serializing |  Major | Serializers/Deserializers | Chao Sun | Chao Sun |
| [HIVE-14956](https://issues.apache.org/jira/browse/HIVE-14956) | Parallelize TestHCatLoader |  Major | . | Vaibhav Gumashta | Vihang Karajgaonkar |
| [HIVE-15112](https://issues.apache.org/jira/browse/HIVE-15112) | Implement Parquet vectorization reader for Struct type |  Major | . | Ferdinand Xu | Ferdinand Xu |
| [HIVE-15507](https://issues.apache.org/jira/browse/HIVE-15507) | Nested column pruning: fix issue when selecting struct field from array/map element |  Major | Logical Optimizer, Physical Optimizer, Serializers/Deserializers | Chao Sun | Chao Sun |
| [HIVE-15518](https://issues.apache.org/jira/browse/HIVE-15518) | Refactoring rows and range related classes to put the window type on Window |  Minor | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-15536](https://issues.apache.org/jira/browse/HIVE-15536) | Tests failing due to unexpected q.out outputs : udf\_coalesce,case\_sensitivity,input\_testxpath |  Major | . | Sushanth Sowmyan | Chao Sun |
| [HIVE-15520](https://issues.apache.org/jira/browse/HIVE-15520) | Improve the sum performance for Range based window |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-15537](https://issues.apache.org/jira/browse/HIVE-15537) | Nested column pruning: fix issue when selecting struct field from array/map element (part 2) |  Major | Logical Optimizer | Chao Sun | Chao Sun |
| [HIVE-15674](https://issues.apache.org/jira/browse/HIVE-15674) | Add more setOp tests to HivePerfCliDriver |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15617](https://issues.apache.org/jira/browse/HIVE-15617) | Improve the avg performance for Range based window |  Major | PTF-Windowing | Aihua Xu | Aihua Xu |
| [HIVE-15591](https://issues.apache.org/jira/browse/HIVE-15591) | Hive can not use "," in quoted column name |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15546](https://issues.apache.org/jira/browse/HIVE-15546) | Optimize Utilities.getInputPaths() so each listStatus of a partition is done in parallel |  Major | Hive | Sahil Takiar | Sahil Takiar |
| [HIVE-15716](https://issues.apache.org/jira/browse/HIVE-15716) | Add TPCDS query14.q to HivePerfCliDriver |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15587](https://issues.apache.org/jira/browse/HIVE-15587) | Using ChangeManager to copy files in ReplCopyTask |  Major | repl | Daniel Dai | Daniel Dai |
| [HIVE-15132](https://issues.apache.org/jira/browse/HIVE-15132) | Document SQL Merge Statement on Wiki |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-15805](https://issues.apache.org/jira/browse/HIVE-15805) | Some minor improvement on the validation tool |  Minor | Database/Schema | Aihua Xu | Aihua Xu |
| [HIVE-15745](https://issues.apache.org/jira/browse/HIVE-15745) | TestMiniLlapLocalCliDriver. vector\_varchar\_simple,vector\_char\_simple |  Major | . | Thejas M Nair | Matt McCline |
| [HIVE-14827](https://issues.apache.org/jira/browse/HIVE-14827) | Micro benchmark for Parquet vectorized reader |  Major | . | Ferdinand Xu | Colin Ma |
| [HIVE-14754](https://issues.apache.org/jira/browse/HIVE-14754) | Track the queries execution lifecycle times |  Major | Hive, HiveServer2 | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-15718](https://issues.apache.org/jira/browse/HIVE-15718) | Fix the NullPointer problem caused by split phase |  Critical | . | Colin Ma | Colin Ma |
| [HIVE-15161](https://issues.apache.org/jira/browse/HIVE-15161) | migrate ColumnStats to use jackson |  Major | . | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-15928](https://issues.apache.org/jira/browse/HIVE-15928) | Parallelization of Select queries in Druid handler |  Major | Druid integration | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-15991](https://issues.apache.org/jira/browse/HIVE-15991) | Flaky Test: TestEncryptedHDFSCliDriver encryption\_join\_with\_different\_encryption\_keys |  Major | . | Sahil Takiar | Sahil Takiar |
| [HIVE-15993](https://issues.apache.org/jira/browse/HIVE-15993) | Hive REPL STATUS is not returning last event ID |  Major | repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-15702](https://issues.apache.org/jira/browse/HIVE-15702) | Test timeout : TestDerbyConnector |  Major | . | Thejas M Nair | slim bouguerra |
| [HIVE-15430](https://issues.apache.org/jira/browse/HIVE-15430) | Change SchemaTool table validator to test based on the dbType |  Minor | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-14459](https://issues.apache.org/jira/browse/HIVE-14459) | TestBeeLineDriver - migration and re-enable |  Major | Tests | Zoltan Haindrich | Peter Vary |
| [HIVE-15864](https://issues.apache.org/jira/browse/HIVE-15864) | Fix typo introduced in HIVE-14754 |  Major | Hive, HiveServer2, Metastore | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-16006](https://issues.apache.org/jira/browse/HIVE-16006) | Incremental REPL LOAD Inserts doesn't operate on the target database if name differs from source database. |  Major | repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-15696](https://issues.apache.org/jira/browse/HIVE-15696) | TestEncryptedHDFSCliDriver encryption\_join\_with\_different\_encryption\_keys.q is failing on master |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15744](https://issues.apache.org/jira/browse/HIVE-15744) | Flaky test: TestPerfCliDriver.query23, query14 |  Major | . | Thejas M Nair | Ashutosh Chauhan |
| [HIVE-15975](https://issues.apache.org/jira/browse/HIVE-15975) | Support the MOD function |  Major | SQL | Carter Shanklin | Teddy Choi |
| [HIVE-15751](https://issues.apache.org/jira/browse/HIVE-15751) | Make it possible to run findbugs for itest modules as well |  Minor | Testing Infrastructure | Peter Vary | Peter Vary |
| [HIVE-15001](https://issues.apache.org/jira/browse/HIVE-15001) | Remove showConnectedUrl from command line help |  Trivial | Beeline | Peter Vary | Peter Vary |
| [HIVE-15981](https://issues.apache.org/jira/browse/HIVE-15981) | Allow empty grouping sets |  Major | SQL | Carter Shanklin | Zoltan Haindrich |
| [HIVE-16091](https://issues.apache.org/jira/browse/HIVE-16091) | Support subqueries in project/select |  Major | Logical Optimizer | Vineet Garg | Vineet Garg |
| [HIVE-15556](https://issues.apache.org/jira/browse/HIVE-15556) | Replicate views |  Major | repl | Vaibhav Gumashta | Sankar Hariappan |
| [HIVE-15983](https://issues.apache.org/jira/browse/HIVE-15983) | Support the named columns join |  Major | SQL | Carter Shanklin | Pengcheng Xiong |
| [HIVE-15978](https://issues.apache.org/jira/browse/HIVE-15978) | Support regr\_\* functions |  Major | SQL | Carter Shanklin | Zoltan Haindrich |
| [HIVE-15979](https://issues.apache.org/jira/browse/HIVE-15979) | Support character\_length and octet\_length |  Major | SQL | Carter Shanklin | Teddy Choi |
| [HIVE-16176](https://issues.apache.org/jira/browse/HIVE-16176) | SchemaTool should exit with non-zero exit code when one or more validator's fail. |  Minor | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-16244](https://issues.apache.org/jira/browse/HIVE-16244) | Flaky test : dynamic\_semijoin\_reduction\_3.q |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-16232](https://issues.apache.org/jira/browse/HIVE-16232) | Support stats computation for column in QuotedIdentifier |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16227](https://issues.apache.org/jira/browse/HIVE-16227) | GenMRFileSink1.java may refer to a wrong MR task in multi-insert case |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16178](https://issues.apache.org/jira/browse/HIVE-16178) | corr/covar\_samp UDAF standard compliance |  Minor | SQL | Zoltan Haindrich | Zoltan Haindrich |
| [HIVE-16246](https://issues.apache.org/jira/browse/HIVE-16246) | Support auto gather column stats for columns with trailing white spaces |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16186](https://issues.apache.org/jira/browse/HIVE-16186) | REPL DUMP shows last event ID of the database even if we use LIMIT option. |  Major | repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-16249](https://issues.apache.org/jira/browse/HIVE-16249) | With column stats, mergejoin.q throws NPE |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16293](https://issues.apache.org/jira/browse/HIVE-16293) | Column pruner should continue to work when SEL has more than 1 child |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16387](https://issues.apache.org/jira/browse/HIVE-16387) | Fix failing test org.apache.hive.jdbc.TestJdbcDriver2.testResultSetMetaData |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16440](https://issues.apache.org/jira/browse/HIVE-16440) | Fix failing test columnstats\_partlvl\_invalid\_values when autogather column stats is on |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-15535](https://issues.apache.org/jira/browse/HIVE-15535) | Flaky test : TestHS2HttpServer.testContextRootUrlRewrite |  Major | . | Sushanth Sowmyan | Barna Zsombor Klara |
| [HIVE-14807](https://issues.apache.org/jira/browse/HIVE-14807) | analyze table compute statistics fails due to presence of Infinity value in double column |  Critical | . | Edi Bice | Pengcheng Xiong |
| [HIVE-16535](https://issues.apache.org/jira/browse/HIVE-16535) | Hive fails to build from source code tarball |  Blocker | . | Alan Gates | Pengcheng Xiong |
| [HIVE-16504](https://issues.apache.org/jira/browse/HIVE-16504) | Addition of binary licenses broke rat check |  Blocker | . | Alan Gates | Alan Gates |
| [HIVE-16537](https://issues.apache.org/jira/browse/HIVE-16537) | Add missing AL files |  Blocker | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16542](https://issues.apache.org/jira/browse/HIVE-16542) | make merge that targets acid 2.0 table fail-fast |  Critical | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-16765](https://issues.apache.org/jira/browse/HIVE-16765) | ParquetFileReader should be closed to avoid resource leak |  Critical | . | Colin Ma | Colin Ma |
| [HIVE-16672](https://issues.apache.org/jira/browse/HIVE-16672) | Parquet vectorization doesn't work for tables with partition info |  Critical | . | Colin Ma | Colin Ma |
| [HIVE-17071](https://issues.apache.org/jira/browse/HIVE-17071) | Make hive 2.3 depend on storage-api-2.4 |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-17096](https://issues.apache.org/jira/browse/HIVE-17096) | Fix test failures in 2.3 branch |  Major | . | Pengcheng Xiong | Pengcheng Xiong |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-13868](https://issues.apache.org/jira/browse/HIVE-13868) | Include derby.log file in the Hive ptest logs |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-13839](https://issues.apache.org/jira/browse/HIVE-13839) | [Refactor] Remove SHIMS.listLocatedStatus |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-13919](https://issues.apache.org/jira/browse/HIVE-13919) | TestHWISessionManager 'did not produce TEST-\*.xml' is reported incorrectly |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-13917](https://issues.apache.org/jira/browse/HIVE-13917) | Investigate and fix tests which are timing out in the precommit build |  Critical | Testing Infrastructure | Siddharth Seth | Siddharth Seth |
| [HIVE-14056](https://issues.apache.org/jira/browse/HIVE-14056) | Golden file updates for few tests |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-14148](https://issues.apache.org/jira/browse/HIVE-14148) | Add branch-2.1 branch to pre-commit tests |  Major | Testing Infrastructure | Sergio Peña | Sergio Peña |
| [HIVE-14328](https://issues.apache.org/jira/browse/HIVE-14328) | Change branch1 to branch-1 for pre-commit tests |  Major | . | Sergio Peña | Sergio Peña |
| [HIVE-14320](https://issues.apache.org/jira/browse/HIVE-14320) | Fix table\_access\_key\_stats with returnpath feature on |  Major | Hive | Vineet Garg | Vineet Garg |
| [HIVE-14554](https://issues.apache.org/jira/browse/HIVE-14554) | Download the spark-assembly file on itests only if the MD5 checksum file is different |  Major | Testing Infrastructure | Sergio Peña | Sergio Peña |
| [HIVE-14817](https://issues.apache.org/jira/browse/HIVE-14817) | Shutdown the SessionManager timeoutChecker thread properly upon shutdown |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14358](https://issues.apache.org/jira/browse/HIVE-14358) | Add metrics for number of queries executed for each execution engine (mr, spark, tez) |  Major | HiveServer2 | Lenni Kuff | Barna Zsombor Klara |
| [HIVE-14849](https://issues.apache.org/jira/browse/HIVE-14849) | Support google-compute-engine provider on Hive ptest framework |  Major | Hive | Sergio Peña | Sergio Peña |
| [HIVE-14938](https://issues.apache.org/jira/browse/HIVE-14938) | Add deployed ptest properties file to repo, update to remove isolated tests |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-14913](https://issues.apache.org/jira/browse/HIVE-14913) | Add new unit tests |  Major | Tests | Vineet Garg | Vineet Garg |
| [HIVE-15003](https://issues.apache.org/jira/browse/HIVE-15003) | Update 'ALTER TABLE...UPDATE STATISTICS FOR COLUMN..' statement to support more data types |  Major | Statistics | Vineet Garg | Vineet Garg |
| [HIVE-14910](https://issues.apache.org/jira/browse/HIVE-14910) | Flaky test: TestSparkClient.testJobSubmission |  Major | . | Siddharth Seth | Barna Zsombor Klara |
| [HIVE-15226](https://issues.apache.org/jira/browse/HIVE-15226) | Add a different masking comment to qtests blobstore output |  Minor | Hive | Sergio Peña | Sergio Peña |
| [HIVE-15246](https://issues.apache.org/jira/browse/HIVE-15246) | Add a making comment to blobstore staging paths on qtest output |  Minor | Hive | Sergio Peña | Sergio Peña |
| [HIVE-15330](https://issues.apache.org/jira/browse/HIVE-15330) | Bump JClouds version to 2.0.0 on Hive/Ptest |  Major | Hive, Testing Infrastructure | Sergio Peña | Sergio Peña |
| [HIVE-15363](https://issues.apache.org/jira/browse/HIVE-15363) | Execute hive-blobstore tests using ProxyLocalFileSystem |  Major | Hive | Sergio Peña | Sergio Peña |
| [HIVE-15621](https://issues.apache.org/jira/browse/HIVE-15621) | Use Hive's own JvmPauseMonitor instead of Hadoop's in LLAP |  Major | llap | Wei Zheng | Wei Zheng |
| [HIVE-15623](https://issues.apache.org/jira/browse/HIVE-15623) | Use customized version of netty for llap |  Major | llap | Wei Zheng | Wei Zheng |
| [HIVE-15622](https://issues.apache.org/jira/browse/HIVE-15622) | Remove HWI component from Hive |  Major | Web UI | Wei Zheng | Wei Zheng |
| [HIVE-15749](https://issues.apache.org/jira/browse/HIVE-15749) | Add missing ASF headers |  Minor | . | Peter Vary | Peter Vary |
| [HIVE-15973](https://issues.apache.org/jira/browse/HIVE-15973) | Make interval\_arithmetic.q test robust |  Major | Test | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-15881](https://issues.apache.org/jira/browse/HIVE-15881) | Use hive.exec.input.listing.max.threads variable name instead of mapred.dfsclient.parallelism.max |  Minor | Query Planning | Sergio Peña | Sergio Peña |
| [HIVE-16005](https://issues.apache.org/jira/browse/HIVE-16005) | miscellaneous small fixes to help with llap debuggability |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-16090](https://issues.apache.org/jira/browse/HIVE-16090) | Addendum to HIVE-16014 |  Minor | Hive | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16260](https://issues.apache.org/jira/browse/HIVE-16260) | Remove parallel edges of semijoin with map joins. |  Major | . | Deepak Jaiswal | Deepak Jaiswal |


