
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

## Release 0.13.0 - 2014-04-21

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-6248](https://issues.apache.org/jira/browse/HIVE-6248) | HCatReader/Writer should hide Hadoop and Hive classes |  Major | HCatalog | Alan Gates | Alan Gates |
| [HIVE-6013](https://issues.apache.org/jira/browse/HIVE-6013) | Supporting Quoted Identifiers in Column Names |  Major | Query Processor | Harish Butani | Harish Butani |
| [HIVE-5953](https://issues.apache.org/jira/browse/HIVE-5953) | SQL std auth - authorize grant/revoke on table |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-5356](https://issues.apache.org/jira/browse/HIVE-5356) | Move arithmatic UDFs to generic UDF implementations |  Major | UDF | Xuefu Zhang | Xuefu Zhang |
| [HIVE-3976](https://issues.apache.org/jira/browse/HIVE-3976) | Support specifying scale and precision with Hive decimal type |  Major | Query Processor, Types | Mark Grover | Xuefu Zhang |
| [HIVE-2817](https://issues.apache.org/jira/browse/HIVE-2817) | Drop any table even without privilege |  Major | . | Benyi Wang | Chun Chen |
| [HIVE-1511](https://issues.apache.org/jira/browse/HIVE-1511) | Hive plan serialization is slow |  Major | . | Ning Zhang | Mohammad Kamrul Islam |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-6578](https://issues.apache.org/jira/browse/HIVE-6578) | Use ORC file footer statistics through StatsProvidingRecordReader interface for analyze command |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6500](https://issues.apache.org/jira/browse/HIVE-6500) | Stats collection via filesystem |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6492](https://issues.apache.org/jira/browse/HIVE-6492) | limit partition number involved in a table scan |  Major | Query Processor | Selina Zhang | Selina Zhang |
| [HIVE-6466](https://issues.apache.org/jira/browse/HIVE-6466) | Add support for pluggable authentication modules (PAM) in Hive |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6455](https://issues.apache.org/jira/browse/HIVE-6455) | Scalable dynamic partitioning and bucketing optimization |  Major | Query Processor | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6226](https://issues.apache.org/jira/browse/HIVE-6226) | It should be possible to get hadoop, hive, and pig version being used by WebHCat |  Major | WebHCat | Alan Gates | Alan Gates |
| [HIVE-6192](https://issues.apache.org/jira/browse/HIVE-6192) | Optimize sum(1) to answer query using metadata |  Major | Query Processor, Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6098](https://issues.apache.org/jira/browse/HIVE-6098) | Merge Tez branch into trunk |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6047](https://issues.apache.org/jira/browse/HIVE-6047) | Permanent UDFs in Hive |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-5814](https://issues.apache.org/jira/browse/HIVE-5814) | Add DATE, TIMESTAMP, DECIMAL, CHAR, VARCHAR types support in HCat |  Major | HCatalog | Eugene Koifman | Eugene Koifman |
| [HIVE-5795](https://issues.apache.org/jira/browse/HIVE-5795) | Hive should be able to skip header and footer rows when reading data file for a table |  Major | . | Shuaishuai Nie | Shuaishuai Nie |
| [HIVE-5783](https://issues.apache.org/jira/browse/HIVE-5783) | Native Parquet Support in Hive |  Minor | Serializers/Deserializers | Justin Coffey | Justin Coffey |
| [HIVE-5615](https://issues.apache.org/jira/browse/HIVE-5615) | Subquery support: more tests |  Major | Query Processor | Harish Butani | Harish Butani |
| [HIVE-5614](https://issues.apache.org/jira/browse/HIVE-5614) | Subquery support: allow subquery expressions in having clause |  Major | Query Processor | Harish Butani | Harish Butani |
| [HIVE-5613](https://issues.apache.org/jira/browse/HIVE-5613) | Subquery support: disallow nesting of SubQueries |  Major | Query Processor | Harish Butani | Harish Butani |
| [HIVE-5562](https://issues.apache.org/jira/browse/HIVE-5562) | Provide stripe level column statistics in ORC |  Major | File Formats | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5369](https://issues.apache.org/jira/browse/HIVE-5369) | Annotate hive operator tree with statistics from metastore |  Major | Query Processor, Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5325](https://issues.apache.org/jira/browse/HIVE-5325) | Implement statistics providing ORC writer and reader interfaces |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5324](https://issues.apache.org/jira/browse/HIVE-5324) | Extend record writer and ORC reader/writer interfaces to provide statistics |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5294](https://issues.apache.org/jira/browse/HIVE-5294) | Create collect UDF and make evaluator reusable |  Major | . | Edward Capriolo | Edward Capriolo |
| [HIVE-5191](https://issues.apache.org/jira/browse/HIVE-5191) | Add char data type |  Major | Types | Jason Dere | Jason Dere |
| [HIVE-4943](https://issues.apache.org/jira/browse/HIVE-4943) | An explode function that includes the item's position in the array |  Major | Query Processor | Niko Stahl |  |
| [HIVE-4660](https://issues.apache.org/jira/browse/HIVE-4660) | Let there be Tez |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-2093](https://issues.apache.org/jira/browse/HIVE-2093) | create/drop database should populate inputs/outputs and check concurrency and user permission |  Major | Authorization, Locking, Metastore, Security | Namit Jain | Navis |
| [HIVE-1466](https://issues.apache.org/jira/browse/HIVE-1466) | Add NULL DEFINED AS to ROW FORMAT specification |  Major | SQL | Adam Kramer | Prasad Mujumdar |
| [HIVE-784](https://issues.apache.org/jira/browse/HIVE-784) | Support uncorrelated subqueries in the WHERE clause |  Major | Query Processor | Ning Zhang | Harish Butani |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-6876](https://issues.apache.org/jira/browse/HIVE-6876) | Logging information should include thread id |  Trivial | HiveServer2, Metastore | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6825](https://issues.apache.org/jira/browse/HIVE-6825) | custom jars for Hive query should be uploaded to scratch dir per query; and/or versioned |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6743](https://issues.apache.org/jira/browse/HIVE-6743) | Allow specifying the log level for Tez tasks |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-6738](https://issues.apache.org/jira/browse/HIVE-6738) | HiveServer2 secure Thrift/HTTP needs to accept doAs parameter from proxying intermediary |  Major | HiveServer2 | Dilli Arumugam | Dilli Arumugam |
| [HIVE-6703](https://issues.apache.org/jira/browse/HIVE-6703) | Tez should store SHA of the jar when uploading to cache |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6697](https://issues.apache.org/jira/browse/HIVE-6697) | HiveServer2 secure thrift/http authentication needs to support SPNego |  Major | HiveServer2 | Dilli Arumugam | Dilli Arumugam |
| [HIVE-6613](https://issues.apache.org/jira/browse/HIVE-6613) | Control when spcific Inputs / Outputs are started |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-6587](https://issues.apache.org/jira/browse/HIVE-6587) | allow specifying additional Hive classpath for Hadoop |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6486](https://issues.apache.org/jira/browse/HIVE-6486) | Support secure Subject.doAs() in HiveServer2 JDBC client. |  Major | Authentication, HiveServer2, JDBC | Shivaraju Gowda | Shivaraju Gowda |
| [HIVE-6481](https://issues.apache.org/jira/browse/HIVE-6481) | Add .reviewboardrc file |  Major | Build Infrastructure | Carl Steinbach | Carl Steinbach |
| [HIVE-6459](https://issues.apache.org/jira/browse/HIVE-6459) | Change the precison/scale for intermediate sum result in the avg() udf |  Major | UDF | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6457](https://issues.apache.org/jira/browse/HIVE-6457) | Ensure Parquet integration has good error messages for data types not supported |  Major | Serializers/Deserializers | Brock Noland | Brock Noland |
| [HIVE-6456](https://issues.apache.org/jira/browse/HIVE-6456) | Implement Parquet schema evolution |  Trivial | . | Brock Noland | Brock Noland |
| [HIVE-6429](https://issues.apache.org/jira/browse/HIVE-6429) | MapJoinKey has large memory overhead in typical cases |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6418](https://issues.apache.org/jira/browse/HIVE-6418) | MapJoinRowContainer has large memory overhead in typical cases |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6393](https://issues.apache.org/jira/browse/HIVE-6393) | Support unqualified column references in Joining conditions |  Major | . | Harish Butani | Harish Butani |
| [HIVE-6385](https://issues.apache.org/jira/browse/HIVE-6385) | UDF degrees() doesn't take decimal as input |  Major | UDF | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6378](https://issues.apache.org/jira/browse/HIVE-6378) | HCatClient::createTable() doesn't allow SerDe class to be specified |  Major | HCatalog | Karl D. Gierach | Karl D. Gierach |
| [HIVE-6342](https://issues.apache.org/jira/browse/HIVE-6342) | hive drop partitions should use standard expr filter instead of some custom class |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6339](https://issues.apache.org/jira/browse/HIVE-6339) | Implement new JDK7 schema management APIs in java.sql.Connection |  Major | JDBC | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-6327](https://issues.apache.org/jira/browse/HIVE-6327) | A few mathematic functions don't take decimal input |  Major | . | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6325](https://issues.apache.org/jira/browse/HIVE-6325) | Enable using multiple concurrent sessions in tez |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6288](https://issues.apache.org/jira/browse/HIVE-6288) | MSCK can be slow when adding partitions |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6256](https://issues.apache.org/jira/browse/HIVE-6256) | add batch dropping of partitions to Hive metastore (as well as to dropTable) |  Minor | Metastore | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6228](https://issues.apache.org/jira/browse/HIVE-6228) | Use paths consistently - VII |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6221](https://issues.apache.org/jira/browse/HIVE-6221) | Optimize stats based queries in presence of filter |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6217](https://issues.apache.org/jira/browse/HIVE-6217) | Refactor Beeline's JDBC connection to use property map instead of long url |  Major | CLI, JDBC | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6204](https://issues.apache.org/jira/browse/HIVE-6204) | The result of show grant / show role should be tabular format |  Minor | Authorization | Navis | Navis |
| [HIVE-6201](https://issues.apache.org/jira/browse/HIVE-6201) | Print failed query for qfile tests |  Trivial | Tests | Navis | Navis |
| [HIVE-6193](https://issues.apache.org/jira/browse/HIVE-6193) | change partition pruning request to metastore to use list instead of set |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6188](https://issues.apache.org/jira/browse/HIVE-6188) | Document hive.metastore.try.direct.sql & hive.metastore.try.direct.sql.ddl |  Minor | Documentation | Lefty Leverenz | Sergey Shelukhin |
| [HIVE-6182](https://issues.apache.org/jira/browse/HIVE-6182) | LDAP Authentication errors need to be more informative |  Major | Authentication | Szehon Ho | Szehon Ho |
| [HIVE-6173](https://issues.apache.org/jira/browse/HIVE-6173) | Beeline doesn't accept --hiveconf option as Hive CLI does |  Major | CLI | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6171](https://issues.apache.org/jira/browse/HIVE-6171) | Use Paths consistently - V |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6144](https://issues.apache.org/jira/browse/HIVE-6144) | Implement non-staged MapJoin |  Minor | Query Processor | Navis | Navis |
| [HIVE-6122](https://issues.apache.org/jira/browse/HIVE-6122) | Implement show grant on \<resource\> |  Minor | Authorization | Navis | Navis |
| [HIVE-6121](https://issues.apache.org/jira/browse/HIVE-6121) | Use Paths Consistently - IV |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6118](https://issues.apache.org/jira/browse/HIVE-6118) | PTest2 is banned periodically by AWS because JClouds is too agressive |  Major | . | Brock Noland | Brock Noland |
| [HIVE-6116](https://issues.apache.org/jira/browse/HIVE-6116) | Use Paths consistently III |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6115](https://issues.apache.org/jira/browse/HIVE-6115) | Remove redundant code in HiveHBaseStorageHandler |  Major | . | Brock Noland | Brock Noland |
| [HIVE-6109](https://issues.apache.org/jira/browse/HIVE-6109) | Support customized location for EXTERNAL tables created by Dynamic Partitioning |  Major | HCatalog | Satish Mittal | Satish Mittal |
| [HIVE-6095](https://issues.apache.org/jira/browse/HIVE-6095) | Use paths consistently II |  Minor | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6070](https://issues.apache.org/jira/browse/HIVE-6070) | document HIVE-6052 |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5993](https://issues.apache.org/jira/browse/HIVE-5993) | JDBC Driver should not hard-code the database name |  Major | JDBC | Szehon Ho | Szehon Ho |
| [HIVE-5985](https://issues.apache.org/jira/browse/HIVE-5985) | Make qfile\_regex to accept multiple patterns |  Trivial | Tests | Navis | Navis |
| [HIVE-5982](https://issues.apache.org/jira/browse/HIVE-5982) | Remove redundant filesystem operations and methods in FileSink |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-5951](https://issues.apache.org/jira/browse/HIVE-5951) | improve performance of adding partitions from client |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5946](https://issues.apache.org/jira/browse/HIVE-5946) | DDL authorization task factory should be better tested |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5901](https://issues.apache.org/jira/browse/HIVE-5901) | Query cancel should stop running MR tasks |  Minor | Query Processor | Navis | Navis |
| [HIVE-5879](https://issues.apache.org/jira/browse/HIVE-5879) | Fix spelling errors in hive-default.xml |  Trivial | . | Brock Noland | Lefty Leverenz |
| [HIVE-5872](https://issues.apache.org/jira/browse/HIVE-5872) | Make UDAFs such as GenericUDAFSum report accurate precision/scale for decimal types |  Major | Types, UDF | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5855](https://issues.apache.org/jira/browse/HIVE-5855) | Add deprecated methods back to ColumnProjectionUtils |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-5802](https://issues.apache.org/jira/browse/HIVE-5802) | Hive UDF pow limits the second input to integer when the first input is a decimal |  Major | Types, UDF | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5794](https://issues.apache.org/jira/browse/HIVE-5794) | HiveServer2 should retry startup |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5793](https://issues.apache.org/jira/browse/HIVE-5793) | Update hive-default.xml.template for HIVE-4002 |  Trivial | Configuration | Navis | Navis |
| [HIVE-5753](https://issues.apache.org/jira/browse/HIVE-5753) | Remove collector from Operator base class |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [HIVE-5750](https://issues.apache.org/jira/browse/HIVE-5750) | Queue name should not be hardcoded to 'default' when running Tez jobs |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-5737](https://issues.apache.org/jira/browse/HIVE-5737) | Provide StructObjectInspector for UDTFs rather than ObjectInspect[] |  Trivial | UDF | Navis | Navis |
| [HIVE-5731](https://issues.apache.org/jira/browse/HIVE-5731) | Use new GenericUDF instead of basic UDF for UDFDate* classes |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [HIVE-5728](https://issues.apache.org/jira/browse/HIVE-5728) | Make ORC InputFormat/OutputFormat usable outside Hive |  Major | File Formats | Daniel Dai | Daniel Dai |
| [HIVE-5726](https://issues.apache.org/jira/browse/HIVE-5726) | The DecimalTypeInfo instance associated with a decimal constant is not in line with the precision/scale of the constant |  Major | . | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5722](https://issues.apache.org/jira/browse/HIVE-5722) | Skip generating vectorization code if possible |  Minor | Build Infrastructure | Navis | Navis |
| [HIVE-5721](https://issues.apache.org/jira/browse/HIVE-5721) | Incremental build is disabled by MCOMPILER-209 |  Major | Build Infrastructure | Navis | Navis |
| [HIVE-5708](https://issues.apache.org/jira/browse/HIVE-5708) | PTest2 should trim long logs when posting to jira |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-5707](https://issues.apache.org/jira/browse/HIVE-5707) | Validate values for ConfVar |  Trivial | Configuration | Navis | Navis |
| [HIVE-5700](https://issues.apache.org/jira/browse/HIVE-5700) | enforce single date format for partition column storage |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5679](https://issues.apache.org/jira/browse/HIVE-5679) | add date support to metastore JDO/SQL |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5666](https://issues.apache.org/jira/browse/HIVE-5666) | use Path instead of String for IOContext.inputPath |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-5663](https://issues.apache.org/jira/browse/HIVE-5663) | Refactor ORC RecordReader to operate on direct & wrapped ByteBuffers |  Major | File Formats | Gopal V | Gopal V |
| [HIVE-5655](https://issues.apache.org/jira/browse/HIVE-5655) | Hive incorrecly handles divide-by-zero case |  Major | Types | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5632](https://issues.apache.org/jira/browse/HIVE-5632) | Eliminate splits based on SARGs using stripe statistics in ORC |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5626](https://issues.apache.org/jira/browse/HIVE-5626) | enable metastore direct SQL for drop/similar queries |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5619](https://issues.apache.org/jira/browse/HIVE-5619) | Allow concat() to accept mixed string/binary args |  Major | . | Jason Dere | Jason Dere |
| [HIVE-5605](https://issues.apache.org/jira/browse/HIVE-5605) | AddResourceOperation, DeleteResourceOperation, DfsOperation, SetOperation should be removed from org.apache.hive.service.cli.operation |  Minor | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-5602](https://issues.apache.org/jira/browse/HIVE-5602) | Micro optimize select operator |  Minor | . | Edward Capriolo | Edward Capriolo |
| [HIVE-5554](https://issues.apache.org/jira/browse/HIVE-5554) | add more comments to CombineHiveInputFormat.java, BucketizedHiveInputFormat.java |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-5520](https://issues.apache.org/jira/browse/HIVE-5520) | Use factory methods to instantiate HiveDecimal instead of constructors |  Major | Types | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5514](https://issues.apache.org/jira/browse/HIVE-5514) | webhcat\_server.sh foreground option does not work as expected |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-5512](https://issues.apache.org/jira/browse/HIVE-5512) | metastore filter pushdown should support "between" |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5483](https://issues.apache.org/jira/browse/HIVE-5483) | use metastore statistics to optimize max/min/etc. queries |  Major | . | Sergey Shelukhin | Ashutosh Chauhan |
| [HIVE-5445](https://issues.apache.org/jira/browse/HIVE-5445) | PTest2 should use testonly target |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5423](https://issues.apache.org/jira/browse/HIVE-5423) | Speed up testing of scalar UDFS |  Major | . | Edward Capriolo | Edward Capriolo |
| [HIVE-5395](https://issues.apache.org/jira/browse/HIVE-5395) | Various cleanup in ptf code |  Major | . | Edward Capriolo | Edward Capriolo |
| [HIVE-5391](https://issues.apache.org/jira/browse/HIVE-5391) | make ORC predicate pushdown work with vectorization |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5383](https://issues.apache.org/jira/browse/HIVE-5383) | PTest2 should allow you to specify ant properties which will only be added to the command when a test is executed |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-5372](https://issues.apache.org/jira/browse/HIVE-5372) | Refactor TypeInfo and PrimitiveTypeEntry class hierachy to eliminate info repetition |  Major | Types | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5366](https://issues.apache.org/jira/browse/HIVE-5366) | Refactor a few object inspector class to eliminate redundant information |  Major | Serializers/Deserializers, Types | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5361](https://issues.apache.org/jira/browse/HIVE-5361) | PTest2 should allow a different JVM for compilation versus execution |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-5351](https://issues.apache.org/jira/browse/HIVE-5351) | Secure-Socket-Layer (SSL) support for HiveServer2 |  Major | Authorization, HiveServer2, JDBC | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-5306](https://issues.apache.org/jira/browse/HIVE-5306) | Use new GenericUDF instead of basic UDF for UDFAbs class |  Major | UDF | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [HIVE-5300](https://issues.apache.org/jira/browse/HIVE-5300) | MapredLocalTask logs success message twice |  Trivial | Logging | Navis | Navis |
| [HIVE-5288](https://issues.apache.org/jira/browse/HIVE-5288) | Perflogger should log under single class |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5276](https://issues.apache.org/jira/browse/HIVE-5276) | Skip redundant string encoding/decoding for hiveserver2 |  Minor | HiveServer2 | Navis | Navis |
| [HIVE-5269](https://issues.apache.org/jira/browse/HIVE-5269) | Use thrift binary type for conveying binary values in hiveserver2 |  Trivial | HiveServer2 | Navis | Navis |
| [HIVE-5263](https://issues.apache.org/jira/browse/HIVE-5263) | Query Plan  cloning time could be improved by using Kryo |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5234](https://issues.apache.org/jira/browse/HIVE-5234) | partition name filtering uses suboptimal datastructures |  Major | Metastore | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5223](https://issues.apache.org/jira/browse/HIVE-5223) | explain doesn't show serde used for table |  Major | Diagnosability | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-5220](https://issues.apache.org/jira/browse/HIVE-5220) | Add option for removing intermediate directory for partition, which is empty |  Minor | Query Processor | Navis | Navis |
| [HIVE-5204](https://issues.apache.org/jira/browse/HIVE-5204) | Change type compatibility methods to use PrimitiveCategory rather than TypeInfo |  Major | . | Jason Dere | Jason Dere |
| [HIVE-5193](https://issues.apache.org/jira/browse/HIVE-5193) | Columnar Pushdown for RC/ORC File not happening in HCatLoader |  Major | HCatalog | Viraj Bhat | Viraj Bhat |
| [HIVE-5155](https://issues.apache.org/jira/browse/HIVE-5155) | Support secure proxy user access to HiveServer2 |  Major | Authentication, HiveServer2, JDBC | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-5114](https://issues.apache.org/jira/browse/HIVE-5114) | add a target to run tests without rebuilding them |  Major | Build Infrastructure | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5112](https://issues.apache.org/jira/browse/HIVE-5112) | Upgrade protobuf to 2.5 from 2.4 |  Major | . | Brock Noland | Owen O'Malley |
| [HIVE-4914](https://issues.apache.org/jira/browse/HIVE-4914) | filtering via partition name should be done inside metastore server (implementation) |  Major | Metastore | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-4904](https://issues.apache.org/jira/browse/HIVE-4904) | A little more CP crossing RS boundaries |  Minor | Query Processor | Navis | Navis |
| [HIVE-4888](https://issues.apache.org/jira/browse/HIVE-4888) | listPartitionsByFilter doesn't support lt/gt/lte/gte |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-4880](https://issues.apache.org/jira/browse/HIVE-4880) | Rearrange explain order of stages simpler |  Trivial | Diagnosability | Navis | Navis |
| [HIVE-4741](https://issues.apache.org/jira/browse/HIVE-4741) | Add Hive config API to modify the restrict list |  Major | . | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-4739](https://issues.apache.org/jira/browse/HIVE-4739) | Create public parallel test environment |  Major | . | Brock Noland | Brock Noland |
| [HIVE-4732](https://issues.apache.org/jira/browse/HIVE-4732) | Reduce or eliminate the expensive Schema equals() check for AvroSerde |  Major | Serializers/Deserializers | Mark Wagner | Mohammad Kamrul Islam |
| [HIVE-4693](https://issues.apache.org/jira/browse/HIVE-4693) | If you set hive.optimize.skewjoin=true, and number of identical keys is \< hive.skewjoin.key don't fail with FileNotFoundException |  Major | Query Processor | Robert Justice |  |
| [HIVE-4632](https://issues.apache.org/jira/browse/HIVE-4632) | Use hadoop counter as a stat publisher |  Minor | Statistics | Navis | Navis |
| [HIVE-4568](https://issues.apache.org/jira/browse/HIVE-4568) | Beeline needs to support resolving variables |  Major | . | Xuefu Zhang | Xuefu Zhang |
| [HIVE-4523](https://issues.apache.org/jira/browse/HIVE-4523) | round() function with specified decimal places not consistent with mysql |  Minor | UDF | Fred Desing | Xuefu Zhang |
| [HIVE-4518](https://issues.apache.org/jira/browse/HIVE-4518) | Counter Strike: Operation Operator |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-4395](https://issues.apache.org/jira/browse/HIVE-4395) | Support TFetchOrientation.FIRST for HiveServer2 FetchResults |  Major | HiveServer2, JDBC | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-4340](https://issues.apache.org/jira/browse/HIVE-4340) | ORC should provide raw data size |  Major | File Formats | Kevin Wilfong | Prasanth Jayachandran |
| [HIVE-3990](https://issues.apache.org/jira/browse/HIVE-3990) | Provide input threshold for direct-fetcher (HIVE-2925) |  Trivial | Query Processor | Navis | Navis |
| [HIVE-3959](https://issues.apache.org/jira/browse/HIVE-3959) | Update Partition Statistics in Metastore Layer |  Minor | Metastore, Statistics | Bhushan Mandhani | Ashutosh Chauhan |
| [HIVE-3777](https://issues.apache.org/jira/browse/HIVE-3777) | add a property in the partition to figure out if stats are accurate |  Major | Query Processor | Namit Jain | Ashutosh Chauhan |
| [HIVE-3616](https://issues.apache.org/jira/browse/HIVE-3616) | Use Paths consistently |  Major | Diagnosability | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-3611](https://issues.apache.org/jira/browse/HIVE-3611) | Hive JDBC doesn't support BINARY column |  Major | JDBC | Viji | Xuefu Zhang |
| [HIVE-3420](https://issues.apache.org/jira/browse/HIVE-3420) | Inefficiency in hbase handler when process query including rowkey range scan |  Critical | HBase Handler | Gang Deng | Navis |
| [HIVE-3181](https://issues.apache.org/jira/browse/HIVE-3181) | getDatabaseMajor/Minor version does not return values |  Major | JDBC | N Campbell | Szehon Ho |
| [HIVE-3107](https://issues.apache.org/jira/browse/HIVE-3107) | Improve semantic analyzer to better handle column name references in group by/sort by clauses |  Major | Query Processor | Richard Ding | Harish Butani |
| [HIVE-2599](https://issues.apache.org/jira/browse/HIVE-2599) | Support Composit/Compound Keys with HBaseStorageHandler |  Major | HBase Handler | Hans Uhlig | Swarnim Kulkarni |
| [HIVE-2302](https://issues.apache.org/jira/browse/HIVE-2302) | Allow grant privileges on granting privileges. |  Major | Authorization, Security | Guy Doulberg | Mohammad Kamrul Islam |
| [HIVE-1398](https://issues.apache.org/jira/browse/HIVE-1398) | Support union all without an outer select * |  Major | Query Processor | Ashish Thusoo | Gunther Hagleitner |
| [HIVE-1180](https://issues.apache.org/jira/browse/HIVE-1180) | Support Common Table Expressions (CTEs) in Hive |  Major | Query Processor | Jeff Hammerbacher | Harish Butani |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-7448](https://issues.apache.org/jira/browse/HIVE-7448) | --incremental=true in Beeline is not compatible with Binary columns (at least for select * from ...) |  Minor | Clients | Xingwen Zhang |  |
| [HIVE-6917](https://issues.apache.org/jira/browse/HIVE-6917) | Update Release Notes for Hive 0.13 RC2 |  Trivial | . | Harish Butani |  |
| [HIVE-6907](https://issues.apache.org/jira/browse/HIVE-6907) | HiveServer2 - wrong user gets used for metastore operation with embedded metastore |  Blocker | HiveServer2 | Thejas M Nair | Thejas M Nair |
| [HIVE-6906](https://issues.apache.org/jira/browse/HIVE-6906) | Fix assembly/src.xml so that sr tar ball contains top level pom.xml |  Major | . | Harish Butani | Harish Butani |
| [HIVE-6894](https://issues.apache.org/jira/browse/HIVE-6894) | hcatalog streaming version in 0.13 branch should be "0.13" |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-6887](https://issues.apache.org/jira/browse/HIVE-6887) | Add missing params to hive-default.xml.template |  Major | . | Harish Butani |  |
| [HIVE-6882](https://issues.apache.org/jira/browse/HIVE-6882) | Make upgrade script schemaTool friendly |  Major | Metastore | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6881](https://issues.apache.org/jira/browse/HIVE-6881) | Postgres Upgrade script for hive 0.13 is broken |  Major | . | Harish Butani | Harish Butani |
| [HIVE-6879](https://issues.apache.org/jira/browse/HIVE-6879) | Vectorization: IsNull returns incorrect output column. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6878](https://issues.apache.org/jira/browse/HIVE-6878) | MetaStoreDirectSql may not handle empty filter correctly |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6873](https://issues.apache.org/jira/browse/HIVE-6873) | DISTINCT clause in aggregates is handled incorrectly by vectorized execution |  Major | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-6864](https://issues.apache.org/jira/browse/HIVE-6864) | HiveServer2 concurrency uses incorrect user information in unsecured mode |  Blocker | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6863](https://issues.apache.org/jira/browse/HIVE-6863) | HiveServer2 binary mode throws exception with PAM |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6860](https://issues.apache.org/jira/browse/HIVE-6860) | Issue with FS based stats collection on Tez |  Major | Statistics, Tez | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6856](https://issues.apache.org/jira/browse/HIVE-6856) | ddl commands fail with permissions issue when running using webhcat in secure Tez cluster |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-6855](https://issues.apache.org/jira/browse/HIVE-6855) | A couple of errors in MySQL db creation script for transaction tables |  Major | Metastore | Alan Gates | Alan Gates |
| [HIVE-6850](https://issues.apache.org/jira/browse/HIVE-6850) | For FetchOperator, Driver uses the valid transaction list from the previous query |  Blocker | Clients | Alan Gates | Owen O'Malley |
| [HIVE-6848](https://issues.apache.org/jira/browse/HIVE-6848) | Importing into an existing table fails |  Major | Query Processor | Arpit Gupta | Harish Butani |
| [HIVE-6846](https://issues.apache.org/jira/browse/HIVE-6846) | allow safe set commands with sql standard authorization |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-6845](https://issues.apache.org/jira/browse/HIVE-6845) | TestJdbcDriver.testShowRoleGrant can fail if TestJdbcDriver/TestJdbcDriver2 run together |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-6841](https://issues.apache.org/jira/browse/HIVE-6841) | Vectorized execution throws NPE for partitioning columns with \_\_HIVE\_DEFAULT\_PARTITION\_\_ |  Critical | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6840](https://issues.apache.org/jira/browse/HIVE-6840) | Use Unordered Output for Bucket Map Joins on Tez |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-6838](https://issues.apache.org/jira/browse/HIVE-6838) | q.out files need correction for stats properties - sample8,transform\_ppr1,transform\_ppr2,union\_ppr |  Major | Tests | Thejas M Nair | Thejas M Nair |
| [HIVE-6837](https://issues.apache.org/jira/browse/HIVE-6837) | HiveServer2 thrift/http mode & binary mode proxy user check fails reporting IP null for client |  Major | HiveServer2 | Dilli Arumugam | Vaibhav Gumashta |
| [HIVE-6834](https://issues.apache.org/jira/browse/HIVE-6834) | Dynamic partition optimization bails out after removing file sink operator |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6830](https://issues.apache.org/jira/browse/HIVE-6830) | After major compaction unable to read from partition with MR job |  Critical | File Formats | Alan Gates | Owen O'Malley |
| [HIVE-6829](https://issues.apache.org/jira/browse/HIVE-6829) | alter table foo compact gives an error |  Major | SQL | Alan Gates | Alan Gates |
| [HIVE-6823](https://issues.apache.org/jira/browse/HIVE-6823) | sql std auth - database authorization does not check for role ownership |  Major | Authorization | Deepesh Khandelwal | Thejas M Nair |
| [HIVE-6821](https://issues.apache.org/jira/browse/HIVE-6821) | Fix some non-deterministic tests |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-6818](https://issues.apache.org/jira/browse/HIVE-6818) | Array out of bounds when ORC is used with ACID and predicate push down |  Blocker | File Formats | Owen O'Malley | Owen O'Malley |
| [HIVE-6816](https://issues.apache.org/jira/browse/HIVE-6816) | jar upload path w/o schema is not handled correctly |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6812](https://issues.apache.org/jira/browse/HIVE-6812) | show compactions returns error when there are no compactions |  Major | SQL | Alan Gates | Alan Gates |
| [HIVE-6808](https://issues.apache.org/jira/browse/HIVE-6808) | sql std auth - describe table, show partitions are not being authorized |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-6804](https://issues.apache.org/jira/browse/HIVE-6804) | sql std auth - granting existing table privilege to owner should result in error |  Major | Authorization | Deepesh Khandelwal | Thejas M Nair |
| [HIVE-6802](https://issues.apache.org/jira/browse/HIVE-6802) | Fix metastore.thrift: add partition\_columns.types constant |  Major | . | Harish Butani | Harish Butani |
| [HIVE-6800](https://issues.apache.org/jira/browse/HIVE-6800) | HiveServer2 is not passing proxy user setting through hive-site |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6796](https://issues.apache.org/jira/browse/HIVE-6796) | Create/drop roles is case-sensitive whereas 'set role' is case insensitive |  Major | . | Deepesh Khandelwal | Ashutosh Chauhan |
| [HIVE-6795](https://issues.apache.org/jira/browse/HIVE-6795) | metastore initialization should add default roles with default, SBA |  Major | Authorization | Deepesh Khandelwal | Thejas M Nair |
| [HIVE-6789](https://issues.apache.org/jira/browse/HIVE-6789) | HiveStatement client transport lock should unlock in finally block. |  Major | JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6787](https://issues.apache.org/jira/browse/HIVE-6787) | ORC+ACID assumes all missing buckets are in ACID structure |  Blocker | File Formats | Gopal V | Owen O'Malley |
| [HIVE-6786](https://issues.apache.org/jira/browse/HIVE-6786) | Off by one error in ORC PPD |  Critical | . | Gopal V | Prasanth Jayachandran |
| [HIVE-6782](https://issues.apache.org/jira/browse/HIVE-6782) | HiveServer2Concurrency issue when running with tez intermittently, throwing "org.apache.tez.dag.api.SessionNotRunning: Application not running" error |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6781](https://issues.apache.org/jira/browse/HIVE-6781) | Hive JDBC in http mode is using HiveConf - should be removed |  Major | JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6780](https://issues.apache.org/jira/browse/HIVE-6780) | Set tez credential file property along with MR conf property for Tez jobs |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-6779](https://issues.apache.org/jira/browse/HIVE-6779) | Hive cli may get into inconsistent state when Ctrl-C is hit on hadoop2 |  Major | Diagnosability | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6778](https://issues.apache.org/jira/browse/HIVE-6778) | ql/src/test/queries/clientpositive/pcr.q covers the test which generate 1.0 =1 predicate in partition pruner. |  Major | . | Hari Sankar Sivarama Subramaniyan | Harish Butani |
| [HIVE-6771](https://issues.apache.org/jira/browse/HIVE-6771) | Update WebHCat E2E tests now that comments is reported correctly in "describe table" output |  Major | Tests | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-6766](https://issues.apache.org/jira/browse/HIVE-6766) | HCatLoader always returns Char datatype with maxlength(255)  when table format is ORC |  Critical | HCatalog | Eugene Koifman | Eugene Koifman |
| [HIVE-6763](https://issues.apache.org/jira/browse/HIVE-6763) | HiveServer2 in http mode might send same kerberos client ticket in case of concurrent requests resulting in server throwing a replay exception |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6757](https://issues.apache.org/jira/browse/HIVE-6757) | Remove deprecated parquet classes from outside of org.apache package |  Blocker | . | Owen O'Malley | Harish Butani |
| [HIVE-6753](https://issues.apache.org/jira/browse/HIVE-6753) | Unions on Tez NPE when there's a mapjoin the union work |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6752](https://issues.apache.org/jira/browse/HIVE-6752) | Vectorized Between and IN expressions don't work with decimal, date types. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6750](https://issues.apache.org/jira/browse/HIVE-6750) | Hive printing debug information in stdout after the end of CLI session |  Major | CLI | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6749](https://issues.apache.org/jira/browse/HIVE-6749) | Turn hive.auto.convert.join.use.nonstaged off by default |  Major | Configuration | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6748](https://issues.apache.org/jira/browse/HIVE-6748) | FileSinkOperator needs to cleanup held references for container reuse |  Major | Tez | Gopal V | Gopal V |
| [HIVE-6744](https://issues.apache.org/jira/browse/HIVE-6744) | Permanent UDF lookup fails when current DB has uppercase letters |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-6742](https://issues.apache.org/jira/browse/HIVE-6742) | Tez Outputs need to be started before accessing the writer |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-6740](https://issues.apache.org/jira/browse/HIVE-6740) | Typo in src/ql/pom.xml |  Major | . | Grisha Trubetskoy | Szehon Ho |
| [HIVE-6739](https://issues.apache.org/jira/browse/HIVE-6739) | Hive HBase query fails on Tez due to missing jars and then due to NPE in getSplits |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6734](https://issues.apache.org/jira/browse/HIVE-6734) | DDL locking too course grained in new db txn manager |  Major | Locking | Alan Gates | Alan Gates |
| [HIVE-6733](https://issues.apache.org/jira/browse/HIVE-6733) | Driver context logs every query in the "warn" level |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6732](https://issues.apache.org/jira/browse/HIVE-6732) | Update Release Notes for Hive 0.13 |  Trivial | . | Harish Butani | Harish Butani |
| [HIVE-6728](https://issues.apache.org/jira/browse/HIVE-6728) | Missing file override-container-log4j.properties in Hcatalog |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-6724](https://issues.apache.org/jira/browse/HIVE-6724) | HCatStorer throws ClassCastException while storing tinyint/smallint data |  Major | HCatalog | Eugene Koifman | Eugene Koifman |
| [HIVE-6721](https://issues.apache.org/jira/browse/HIVE-6721) | Streaming ingest needs to be able to send many heartbeats together |  Major | Locking | Alan Gates | Alan Gates |
| [HIVE-6716](https://issues.apache.org/jira/browse/HIVE-6716) | ORC struct throws NPE for tables with inner structs having null values |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6711](https://issues.apache.org/jira/browse/HIVE-6711) | ORC maps uses getMapSize() from MapOI which is unreliable |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6710](https://issues.apache.org/jira/browse/HIVE-6710) | Deadlocks seen in transaction handler using mysql |  Major | Locking | Alan Gates | Alan Gates |
| [HIVE-6708](https://issues.apache.org/jira/browse/HIVE-6708) | ConstantVectorExpression should create copies of data objects rather than referencing them |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-6707](https://issues.apache.org/jira/browse/HIVE-6707) | Lazy maps are broken (LazyMap and LazyBinaryMap) |  Critical | Serializers/Deserializers | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6706](https://issues.apache.org/jira/browse/HIVE-6706) | Tez queries fail when there are no input paths |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6704](https://issues.apache.org/jira/browse/HIVE-6704) | date\_add()/date\_sub()/datediff() fail with NPE with null input |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-6702](https://issues.apache.org/jira/browse/HIVE-6702) | TezMergedLogicalInput needs to inform the framework when it is ready |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-6701](https://issues.apache.org/jira/browse/HIVE-6701) | Analyze table compute statistics for decimal columns. |  Major | . | Jitendra Nath Pandey | Sergey Shelukhin |
| [HIVE-6700](https://issues.apache.org/jira/browse/HIVE-6700) | In some queries inputs are closed on Tez before the operator pipeline is flushed |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6690](https://issues.apache.org/jira/browse/HIVE-6690) | NPE in tez session state |  Critical | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6689](https://issues.apache.org/jira/browse/HIVE-6689) | Provide an option to not display partition columns separately in describe table output |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6687](https://issues.apache.org/jira/browse/HIVE-6687) | JDBC ResultSet fails to get value by qualified projection name |  Major | HiveServer2 | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-6686](https://issues.apache.org/jira/browse/HIVE-6686) | webhcat does not honour -Dlog4j.configuration=$WEBHCAT\_LOG4J of log4j.properties file on local filesystem. |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-6682](https://issues.apache.org/jira/browse/HIVE-6682) | nonstaged mapjoin table memory check may be broken |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6681](https://issues.apache.org/jira/browse/HIVE-6681) | Describe table sometimes shows "from deserializer" for column comments |  Major | Metastore, Serializers/Deserializers | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6680](https://issues.apache.org/jira/browse/HIVE-6680) | Decimal128#update(Decimal128 o, short scale) should adjust the unscaled value. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6676](https://issues.apache.org/jira/browse/HIVE-6676) | hcat cli fails to run when running with hive on tez |  Blocker | HCatalog | Eugene Koifman | Eugene Koifman |
| [HIVE-6674](https://issues.apache.org/jira/browse/HIVE-6674) | "show grant on all" throws NPE |  Major | . | Thejas M Nair | Navis |
| [HIVE-6672](https://issues.apache.org/jira/browse/HIVE-6672) | JARs loaded by permanent functions don't work properly with HiveServer2 |  Major | HiveServer2, UDF | Jason Dere | Jason Dere |
| [HIVE-6671](https://issues.apache.org/jira/browse/HIVE-6671) | WebHCat Job Submission API 'enablelog' parameter is only supported with Hadoop 1 |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-6670](https://issues.apache.org/jira/browse/HIVE-6670) | ClassNotFound with Serde |  Major | . | Abin Shahab | Abin Shahab |
| [HIVE-6668](https://issues.apache.org/jira/browse/HIVE-6668) | When auto join convert is on and noconditionaltask is off, ConditionalResolverCommonJoin fails to resolve map joins. |  Blocker | . | Yin Huai | Navis |
| [HIVE-6666](https://issues.apache.org/jira/browse/HIVE-6666) | Metastore init scripts should always populate the version information at the end |  Major | Metastore | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-6664](https://issues.apache.org/jira/browse/HIVE-6664) | Vectorized variance computation differs from row mode computation. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6662](https://issues.apache.org/jira/browse/HIVE-6662) | Vector Join operations with DATE columns fail |  Major | . | Gopal V | Gopal V |
| [HIVE-6661](https://issues.apache.org/jira/browse/HIVE-6661) | WebHCat E2E test TestPig\_10 fails (Hadoop 2) |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-6660](https://issues.apache.org/jira/browse/HIVE-6660) | HiveServer2 running in non-http mode closes server socket for an SSL connection after the 1st request |  Blocker | HiveServer2, JDBC | Vaibhav Gumashta | Prasad Mujumdar |
| [HIVE-6659](https://issues.apache.org/jira/browse/HIVE-6659) | Update log for list\_bucket\_* to add pre/post DB |  Major | . | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-6658](https://issues.apache.org/jira/browse/HIVE-6658) | Modify Alter\_numbuckets* test to reflect hadoop2 changes |  Major | . | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-6656](https://issues.apache.org/jira/browse/HIVE-6656) | Bug in ORC Timestamp reader returns wrong nanoseconds |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6653](https://issues.apache.org/jira/browse/HIVE-6653) | WebHCat E2E test JOBS\_7 and JOBS\_9 fail as profile.url in job details is being returned as null |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-6650](https://issues.apache.org/jira/browse/HIVE-6650) | hive.optimize.index.filter breaks non-index where with HBaseStorageHandler |  Major | HBase Handler | Nick Dimiduk | Nick Dimiduk |
| [HIVE-6649](https://issues.apache.org/jira/browse/HIVE-6649) | Vectorization: some date expressions throw exception. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6647](https://issues.apache.org/jira/browse/HIVE-6647) | Bump the thrift api version to V7 for HiveServer2 |  Blocker | HiveServer2, JDBC | Vaibhav Gumashta | Prasad Mujumdar |
| [HIVE-6646](https://issues.apache.org/jira/browse/HIVE-6646) | Error in txn handler SQL |  Major | Metastore | Alan Gates | Alan Gates |
| [HIVE-6645](https://issues.apache.org/jira/browse/HIVE-6645) | to\_date()/to\_unix\_timestamp() fail with NPE if input is null |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-6644](https://issues.apache.org/jira/browse/HIVE-6644) | document TestStreaming\_2 e2e test case for webhcat |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-6643](https://issues.apache.org/jira/browse/HIVE-6643) | Add a check for cross products in plans and output a warning |  Major | . | Harish Butani | Harish Butani |
| [HIVE-6642](https://issues.apache.org/jira/browse/HIVE-6642) | Query fails to vectorize when a non string partition column is part of the query expression |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-6641](https://issues.apache.org/jira/browse/HIVE-6641) | optimized HashMap keys won't work correctly with decimals |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6640](https://issues.apache.org/jira/browse/HIVE-6640) | Change hive.version.shortname in hive 0.13 branch to '0.13.0' |  Trivial | . | Harish Butani | Harish Butani |
| [HIVE-6639](https://issues.apache.org/jira/browse/HIVE-6639) | Vectorization: Partition column names are not picked up. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6636](https://issues.apache.org/jira/browse/HIVE-6636) | /user/hive is a bad default for HDFS jars path for Tez |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6635](https://issues.apache.org/jira/browse/HIVE-6635) | Heartbeats are not being sent when DbLockMgr is used and an operation holds locks |  Major | Locking | Alan Gates | Alan Gates |
| [HIVE-6633](https://issues.apache.org/jira/browse/HIVE-6633) | pig -useHCatalog with embedded metastore fails to pass command line args to metastore |  Major | HCatalog | Eric Hanson | Eric Hanson |
| [HIVE-6630](https://issues.apache.org/jira/browse/HIVE-6630) | FS based stats collection have issues for list bucketing case |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6618](https://issues.apache.org/jira/browse/HIVE-6618) | assertion when getting reference key from loader with byte-array mapjoin key |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6611](https://issues.apache.org/jira/browse/HIVE-6611) | Joining multiple union all outputs fails on Tez |  Critical | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6610](https://issues.apache.org/jira/browse/HIVE-6610) | Unit test log needs to reflect DB Name |  Major | . | Laljo John Pullokkaran | Laljo John Pullokkaran |
| [HIVE-6609](https://issues.apache.org/jira/browse/HIVE-6609) | Doing Ctrl-C on hive cli doesn't kill running MR jobs on hadoop-2 |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6608](https://issues.apache.org/jira/browse/HIVE-6608) | Add apache pom as parent pom |  Trivial | . | Harish Butani | Harish Butani |
| [HIVE-6607](https://issues.apache.org/jira/browse/HIVE-6607) | describe extended on a view fails with NPE |  Blocker | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-6606](https://issues.apache.org/jira/browse/HIVE-6606) | Stand alone metastore fails to start if new transaction values not defined in config |  Critical | Metastore | Alan Gates | Alan Gates |
| [HIVE-6605](https://issues.apache.org/jira/browse/HIVE-6605) | Hive does not set the environment correctly when running in Tez mode |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6599](https://issues.apache.org/jira/browse/HIVE-6599) | Document new jdbc url connection parameters for HiveServer2 |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6597](https://issues.apache.org/jira/browse/HIVE-6597) | WebHCat E2E tests doAsTests\_6 and doAsTests\_7 need to be updated |  Major | Tests, WebHCat | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-6594](https://issues.apache.org/jira/browse/HIVE-6594) | UnsignedInt128 addition does not increase internal int array count resulting in corrupted values during serialization |  Major | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-6592](https://issues.apache.org/jira/browse/HIVE-6592) | WebHCat E2E test abort when pointing to https url of webhdfs |  Major | Tests, WebHCat | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-6591](https://issues.apache.org/jira/browse/HIVE-6591) | Importing a table containing hidden dirs fails |  Major | Import/Export | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6585](https://issues.apache.org/jira/browse/HIVE-6585) | bucket map join fails in presence of \_SUCCESS file |  Major | File Formats | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6582](https://issues.apache.org/jira/browse/HIVE-6582) | missing ; in HTML entities like &lt; in conf file |  Trivial | Configuration | Pierre Nerzic |  |
| [HIVE-6580](https://issues.apache.org/jira/browse/HIVE-6580) | Refactor ThriftBinaryCLIService and ThriftHttpCLIService tests. |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6576](https://issues.apache.org/jira/browse/HIVE-6576) | sending user.name as a form parameter in POST doesn't work post HADOOP-10193 |  Blocker | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-6575](https://issues.apache.org/jira/browse/HIVE-6575) | select * fails on parquet table with map datatype |  Major | Serializers/Deserializers | Szehon Ho | Szehon Ho |
| [HIVE-6574](https://issues.apache.org/jira/browse/HIVE-6574) | Type in ql/pom.xml prevents jobs from parquet queries from running on a cluster |  Blocker | Serializers/Deserializers | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6573](https://issues.apache.org/jira/browse/HIVE-6573) | Oracle metastore doesnt come up when hive.cluster.delegation.token.store.class is set to DBTokenStore |  Blocker | Metastore, Security | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6572](https://issues.apache.org/jira/browse/HIVE-6572) | Use shimmed version of hadoop conf names for mapred.{min,max}.split.size{.*} |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-6568](https://issues.apache.org/jira/browse/HIVE-6568) | Vectorized cast of decimal to string and timestamp produces incorrect result. |  Major | Vectorization | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6566](https://issues.apache.org/jira/browse/HIVE-6566) | Incorrect union-all plan with map-joins on Tez |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6563](https://issues.apache.org/jira/browse/HIVE-6563) | hdfs jar being pulled in when creating a hadoop-2 based hive tar ball |  Blocker | Build Infrastructure | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6562](https://issues.apache.org/jira/browse/HIVE-6562) | Protection from exceptions in ORC predicate evaluation |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6559](https://issues.apache.org/jira/browse/HIVE-6559) | sourcing txn-script from schema script results in failure for mysql & oracle |  Major | Metastore | Ashutosh Chauhan | Alan Gates |
| [HIVE-6558](https://issues.apache.org/jira/browse/HIVE-6558) | HiveServer2 Plain SASL authentication broken after hadoop 2.3 upgrade |  Blocker | Authentication, HiveServer2 | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-6555](https://issues.apache.org/jira/browse/HIVE-6555) | TestSchemaTool is failing on trunk after branching |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6552](https://issues.apache.org/jira/browse/HIVE-6552) | Failed to generate new mapJoin operator by exception : Big Table Alias is null |  Major | HiveServer2 | Martin Kudlej |  |
| [HIVE-6551](https://issues.apache.org/jira/browse/HIVE-6551) | group by after join with skew join optimization references invalid task sometimes |  Trivial | . | Navis | Navis |
| [HIVE-6548](https://issues.apache.org/jira/browse/HIVE-6548) | Missing owner name and type fields in schema script for DBS table |  Major | Metastore | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6547](https://issues.apache.org/jira/browse/HIVE-6547) | normalize struct Role in metastore thrift interface |  Major | Metastore, Thrift API | Thejas M Nair | Thejas M Nair |
| [HIVE-6546](https://issues.apache.org/jira/browse/HIVE-6546) | WebHCat job submission for pig with -useHCatalog argument fails on Windows |  Major | WebHCat | Eric Hanson | Eric Hanson |
| [HIVE-6545](https://issues.apache.org/jira/browse/HIVE-6545) | analyze table throws NPE for non-existent tables. |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6539](https://issues.apache.org/jira/browse/HIVE-6539) | Couple of issues in fs based stats collection |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6537](https://issues.apache.org/jira/browse/HIVE-6537) | NullPointerException when loading hashtable for MapJoin directly |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6531](https://issues.apache.org/jira/browse/HIVE-6531) | Runtime errors in vectorized execution. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6530](https://issues.apache.org/jira/browse/HIVE-6530) | JDK 7 trunk build fails after HIVE-6418 patch |  Blocker | Query Processor | Prasad Mujumdar | Navis |
| [HIVE-6528](https://issues.apache.org/jira/browse/HIVE-6528) | Add maven compiler plugin to ptest2 pom |  Major | Testing Infrastructure | Szehon Ho | Szehon Ho |
| [HIVE-6522](https://issues.apache.org/jira/browse/HIVE-6522) | AVG() failure with decimal type |  Major | UDF | Jason Dere |  |
| [HIVE-6519](https://issues.apache.org/jira/browse/HIVE-6519) | Allow optional "as" in subquery definition |  Minor | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6518](https://issues.apache.org/jira/browse/HIVE-6518) | Add a GC canary to the VectorGroupByOperator to flush whenever a GC is triggered |  Minor | Query Processor | Gopal V | Gopal V |
| [HIVE-6512](https://issues.apache.org/jira/browse/HIVE-6512) | HiveServer2 ThriftCLIServiceTest#testDoAs is an invalid test |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6511](https://issues.apache.org/jira/browse/HIVE-6511) | casting from decimal to tinyint,smallint, int and bigint generates different result when vectorization is on |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6508](https://issues.apache.org/jira/browse/HIVE-6508) | Mismatched results between vector and non-vector mode with decimal field |  Major | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-6507](https://issues.apache.org/jira/browse/HIVE-6507) | OrcFile table property names are specified as strings |  Major | HCatalog, Serializers/Deserializers | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-6505](https://issues.apache.org/jira/browse/HIVE-6505) | Make stats optimizer more robust in presence of distinct clause |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6499](https://issues.apache.org/jira/browse/HIVE-6499) | Using Metastore-side Auth errors on non-resolvable IF/OF/SerDe |  Major | Metastore, Security | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-6495](https://issues.apache.org/jira/browse/HIVE-6495) | TableDesc.getDeserializer() should use correct classloader when calling Class.forName() |  Major | Serializers/Deserializers | Jason Dere | Jason Dere |
| [HIVE-6488](https://issues.apache.org/jira/browse/HIVE-6488) | Investigate TestBeeLineWithArgs |  Blocker | Tests | Brock Noland | Jason Dere |
| [HIVE-6485](https://issues.apache.org/jira/browse/HIVE-6485) | Downgrade to httpclient-4.2.5 in JDBC from httpclient-4.3.2 |  Major | JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6482](https://issues.apache.org/jira/browse/HIVE-6482) | Fix NOTICE file: pre release task |  Trivial | . | Harish Butani | Harish Butani |
| [HIVE-6479](https://issues.apache.org/jira/browse/HIVE-6479) | Few .q.out files need to be updated post HIVE-5958 |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6472](https://issues.apache.org/jira/browse/HIVE-6472) | JDBC cancel will not work with current HiveServer2 |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6467](https://issues.apache.org/jira/browse/HIVE-6467) | metastore upgrade script 016-HIVE-6386.derby.sql uses char rather than varchar |  Major | Metastore | Jason Dere | Jason Dere |
| [HIVE-6464](https://issues.apache.org/jira/browse/HIVE-6464) | Test configuration: reduce the duration for which lock attempts are retried |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-6461](https://issues.apache.org/jira/browse/HIVE-6461) | Run Release Audit tool, fix missing license issues |  Trivial | . | Harish Butani | Harish Butani |
| [HIVE-6447](https://issues.apache.org/jira/browse/HIVE-6447) | Bucket map joins in hive-tez |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6414](https://issues.apache.org/jira/browse/HIVE-6414) | ParquetInputFormat provides data values that do not match the object inspectors |  Major | Serializers/Deserializers | Remus Rusanu | Justin Coffey |
| [HIVE-6409](https://issues.apache.org/jira/browse/HIVE-6409) | FileOutputCommitterContainer::commitJob() cancels delegation tokens too early. |  Major | HCatalog | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-6403](https://issues.apache.org/jira/browse/HIVE-6403) | uncorrelated subquery is failing with auto.convert.join=true |  Major | Query Processor | Navis | Navis |
| [HIVE-6400](https://issues.apache.org/jira/browse/HIVE-6400) | Add Apache Rat plugin to pom.xml |  Major | . | Harish Butani | Harish Butani |
| [HIVE-6398](https://issues.apache.org/jira/browse/HIVE-6398) | MapRedTask.configureDebugVariablesForChildJVM mixes HIVE\_CHILD\_CLIENT\_DEBUG\_OPTS and HIVE\_MAIN\_CLIENT\_DEBUG\_OPTS in env check |  Trivial | . | Remus Rusanu | Remus Rusanu |
| [HIVE-6395](https://issues.apache.org/jira/browse/HIVE-6395) | multi-table insert from select transform fails if optimize.ppd enabled |  Major | Query Processor | Szehon Ho | Szehon Ho |
| [HIVE-6392](https://issues.apache.org/jira/browse/HIVE-6392) | Hive (and HCatalog) don't allow super-users to add partitions to tables. |  Major | Authorization | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-6389](https://issues.apache.org/jira/browse/HIVE-6389) | LazyBinaryColumnarSerDe-based RCFile tables break when looking up elements in null-maps. |  Major | Serializers/Deserializers | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-6383](https://issues.apache.org/jira/browse/HIVE-6383) | Newly added tests in TestJdbcDriver2 from HIVE-4395 is not running |  Minor | JDBC | Navis | Prasad Mujumdar |
| [HIVE-6382](https://issues.apache.org/jira/browse/HIVE-6382) | PATCHED\_BLOB encoding in ORC will corrupt data in some cases |  Major | Serializers/Deserializers | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6381](https://issues.apache.org/jira/browse/HIVE-6381) | bin/hcat script won't launch - uses invalid $HIVE\_HOME |  Major | HCatalog | Eugene Koifman | Eugene Koifman |
| [HIVE-6377](https://issues.apache.org/jira/browse/HIVE-6377) | make HADOOP\_HOME setting consistent between hive and webhcat\_config.sh |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-6375](https://issues.apache.org/jira/browse/HIVE-6375) | Fix CTAS for parquet |  Critical | . | Brock Noland | Szehon Ho |
| [HIVE-6373](https://issues.apache.org/jira/browse/HIVE-6373) | TestCliDriverMethods test can cause entire build to fail |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-6372](https://issues.apache.org/jira/browse/HIVE-6372) | getDatabaseMajor/Minor version returns wrong values |  Major | JDBC | Szehon Ho | Szehon Ho |
| [HIVE-6364](https://issues.apache.org/jira/browse/HIVE-6364) | HiveServer2 - Request serving thread should get class loader from existing SessionState |  Major | HiveServer2 | Jaideep Dhok |  |
| [HIVE-6360](https://issues.apache.org/jira/browse/HIVE-6360) | Hadoop 2.3 + Tez 0.3 |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6359](https://issues.apache.org/jira/browse/HIVE-6359) | beeline -f fails on scripts with tabs in them. |  Minor | . | Carter Shanklin | Navis |
| [HIVE-6358](https://issues.apache.org/jira/browse/HIVE-6358) | filterExpr not printed in explain for tablescan operators (ppd) |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6356](https://issues.apache.org/jira/browse/HIVE-6356) | Dependency injection in hbase storage handler is broken |  Minor | HBase Handler | Navis | Xuefu Zhang |
| [HIVE-6354](https://issues.apache.org/jira/browse/HIVE-6354) | Some index test golden files produce non-deterministic stats in explain |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6353](https://issues.apache.org/jira/browse/HIVE-6353) | Update hadoop-2 golden files after HIVE-6267 |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6340](https://issues.apache.org/jira/browse/HIVE-6340) | Beeline outputs error message when HIVE\_AUX\_JARS\_PATH is set |  Major | CLI | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6328](https://issues.apache.org/jira/browse/HIVE-6328) | Hive script should not overwrite AUX\_CLASSPATH with HIVE\_AUX\_JARS\_PATH if the latter is set |  Major | . | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6326](https://issues.apache.org/jira/browse/HIVE-6326) | Split generation in ORC may generate wrong split boundaries because of unaccounted padded bytes |  Major | Serializers/Deserializers | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6320](https://issues.apache.org/jira/browse/HIVE-6320) | Row-based ORC reader with PPD turned on dies on BufferUnderFlowException/IndexOutOfBoundsException |  Major | Serializers/Deserializers | Gopal V | Prasanth Jayachandran |
| [HIVE-6315](https://issues.apache.org/jira/browse/HIVE-6315) | MetaStoreDirectSql ctor should not throw |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6312](https://issues.apache.org/jira/browse/HIVE-6312) | doAs with plain sasl auth should be session aware |  Major | HiveServer2 | Navis | Navis |
| [HIVE-6310](https://issues.apache.org/jira/browse/HIVE-6310) | Fix a few minimr test failures |  Major | Testing Infrastructure | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6309](https://issues.apache.org/jira/browse/HIVE-6309) | Hive incorrectly removes TaskAttempt output files if MRAppMaster fails once |  Critical | . | Chun Chen | Chun Chen |
| [HIVE-6301](https://issues.apache.org/jira/browse/HIVE-6301) | get\_json\_object throw java.lang.IllegalStateException: No match found exception. |  Critical | . | Zhiwen Sun | Zhiwen Sun |
| [HIVE-6298](https://issues.apache.org/jira/browse/HIVE-6298) | Add config flag to turn off fetching partition stats |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6287](https://issues.apache.org/jira/browse/HIVE-6287) | batchSize computation in Vectorized ORC reader can cause BufferUnderFlowException when PPD is enabled |  Major | Vectorization | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6268](https://issues.apache.org/jira/browse/HIVE-6268) | Network resource leak with HiveClientCache when using HCatInputFormat |  Major | HCatalog | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-6267](https://issues.apache.org/jira/browse/HIVE-6267) | Explain explain |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6264](https://issues.apache.org/jira/browse/HIVE-6264) | Unbalanced number of HiveParser msgs.push/msgs.pop calls when doing lookahead |  Major | . | Jason Dere | Jason Dere |
| [HIVE-6263](https://issues.apache.org/jira/browse/HIVE-6263) | Avoid sending input files multiple times on Tez |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6262](https://issues.apache.org/jira/browse/HIVE-6262) | Remove unnecessary copies of schema + table desc from serialized plan |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6261](https://issues.apache.org/jira/browse/HIVE-6261) | Update metadata.q.out file for tez (after change to .q file) |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6260](https://issues.apache.org/jira/browse/HIVE-6260) | Compress plan when sending via RPC (Tez) |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6251](https://issues.apache.org/jira/browse/HIVE-6251) | Add ability to specify delimiter in HCatalog Java API to create tables - HCatCreateTableDesc |  Major | HCatalog, WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-6249](https://issues.apache.org/jira/browse/HIVE-6249) | HiveServer2 JDBC SSL binary client transport should not call a TTransport#open |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6246](https://issues.apache.org/jira/browse/HIVE-6246) | Sign(a) UDF is not supported for decimal type |  Major | UDF | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6233](https://issues.apache.org/jira/browse/HIVE-6233) | JOBS testsuite in WebHCat E2E tests does not work correctly in secure mode |  Major | Tests, WebHCat | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-6231](https://issues.apache.org/jira/browse/HIVE-6231) | NPE when switching to Tez execution mode after session has been initialized |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6229](https://issues.apache.org/jira/browse/HIVE-6229) | Stats are missing sometimes (regression from HIVE-5936) |  Major | Statistics | Navis | Navis |
| [HIVE-6227](https://issues.apache.org/jira/browse/HIVE-6227) | WebHCat E2E test JOBS\_7 fails |  Major | Tests | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-6224](https://issues.apache.org/jira/browse/HIVE-6224) | Remove unneeded tez dependencies from hive |  Minor | Build Infrastructure, Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6218](https://issues.apache.org/jira/browse/HIVE-6218) | Stats for row-count not getting updated with Tez insert + dbclass=counter |  Minor | Statistics, Tez | Gopal V | Gunther Hagleitner |
| [HIVE-6216](https://issues.apache.org/jira/browse/HIVE-6216) | Update datanucleus.connectionPoolingType to BoneCP in hive-default.xml.template |  Trivial | Configuration | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6211](https://issues.apache.org/jira/browse/HIVE-6211) | WebHCat job status E2E tests fail in presence of other jobs |  Major | Testing Infrastructure | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-6209](https://issues.apache.org/jira/browse/HIVE-6209) | 'LOAD DATA INPATH ... OVERWRITE ..' doesn't overwrite current data |  Major | . | Szehon Ho | Szehon Ho |
| [HIVE-6208](https://issues.apache.org/jira/browse/HIVE-6208) | user-defined aggregate functions cannot be used as windowing function |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-6205](https://issues.apache.org/jira/browse/HIVE-6205) | alter \<table\> partition column throws NPE in authorization |  Major | Authorization | Navis | Navis |
| [HIVE-6203](https://issues.apache.org/jira/browse/HIVE-6203) | Privileges of role granted indrectily to user is not applied |  Major | Authorization | Navis | Navis |
| [HIVE-6189](https://issues.apache.org/jira/browse/HIVE-6189) | Support top level union all statements |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6185](https://issues.apache.org/jira/browse/HIVE-6185) | DDLTask is inconsistent in creating a table and adding a partition when dealing with location |  Major | Query Processor | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6184](https://issues.apache.org/jira/browse/HIVE-6184) | Bug in SessionManager.stop() in HiveServer2 |  Major | HiveServer2 | Jaideep Dhok | Navis |
| [HIVE-6180](https://issues.apache.org/jira/browse/HIVE-6180) | Hive JDBC Driver connection fail when no default database passed in the connection string |  Major | HiveServer2 | Sravya Tirukkovalur | Prasad Mujumdar |
| [HIVE-6177](https://issues.apache.org/jira/browse/HIVE-6177) | Fix keyword KW\_REANME which was intended to be KW\_RENAME |  Trivial | Query Processor | Navis | Navis |
| [HIVE-6174](https://issues.apache.org/jira/browse/HIVE-6174) | Beeline "set varible" doesn't show the value of the variable as Hive CLI |  Major | CLI | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6170](https://issues.apache.org/jira/browse/HIVE-6170) | Upgrade to the latest version of bonecp |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-6166](https://issues.apache.org/jira/browse/HIVE-6166) | JsonSerDe is too strict about table schema |  Major | HCatalog, Serializers/Deserializers | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-6164](https://issues.apache.org/jira/browse/HIVE-6164) | Hive build on Windows failed with datanucleus enhancer error "command line is too long" |  Major | Build Infrastructure | shanyu zhao | shanyu zhao |
| [HIVE-6162](https://issues.apache.org/jira/browse/HIVE-6162) | "multiple SLF4J bindings" warning messages when running hive CLI on Hadoop 2.0 |  Major | CLI | shanyu zhao | shanyu zhao |
| [HIVE-6159](https://issues.apache.org/jira/browse/HIVE-6159) | Hive uses deprecated hadoop configuration in Hadoop 2.0 |  Major | Configuration | shanyu zhao | shanyu zhao |
| [HIVE-6157](https://issues.apache.org/jira/browse/HIVE-6157) | Fetching column stats slower than the 101 during rush hour |  Major | . | Gunther Hagleitner | Sergey Shelukhin |
| [HIVE-6154](https://issues.apache.org/jira/browse/HIVE-6154) | HiveServer2 returns a detailed error message to the client only when the underlying exception is a HiveSQLException |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6152](https://issues.apache.org/jira/browse/HIVE-6152) | insert query fails on hdfs federation + viewfs |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6151](https://issues.apache.org/jira/browse/HIVE-6151) | CLIService should use debug log level instead of info |  Minor | . | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6142](https://issues.apache.org/jira/browse/HIVE-6142) | Beeline ignores HIVE\_OPTS |  Major | HiveServer2, JDBC | Vaibhav Gumashta |  |
| [HIVE-6129](https://issues.apache.org/jira/browse/HIVE-6129) | alter exchange is implemented in inverted manner |  Critical | . | Navis | Navis |
| [HIVE-6125](https://issues.apache.org/jira/browse/HIVE-6125) | Tez: Refactoring changes |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-6117](https://issues.apache.org/jira/browse/HIVE-6117) | mapreduce.RecordReader instance needs to be initialized |  Major | HBase Handler | Nick Dimiduk | Nick Dimiduk |
| [HIVE-6110](https://issues.apache.org/jira/browse/HIVE-6110) | schematool errors out when HIVE\_OPTS is set |  Major | Metastore | Venki Korukanti | Venki Korukanti |
| [HIVE-6105](https://issues.apache.org/jira/browse/HIVE-6105) | LongWritable.compareTo needs shimming |  Major | . | Gunther Hagleitner | Navis |
| [HIVE-6104](https://issues.apache.org/jira/browse/HIVE-6104) | Join-key logging in join operator |  Minor | Diagnosability | Steven Wong | Steven Wong |
| [HIVE-6085](https://issues.apache.org/jira/browse/HIVE-6085) | Tez changed test parse tests output |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-6083](https://issues.apache.org/jira/browse/HIVE-6083) | User provided table properties are not assigned to the TableDesc of the FileSinkDesc in a CTAS query |  Major | . | Yin Huai | Yin Huai |
| [HIVE-6082](https://issues.apache.org/jira/browse/HIVE-6082) | Certain KeeperException should be ignored in ZooKeeperHiveLockManage.unlockPrimitive |  Major | . | Chaoyu Tang | Chaoyu Tang |
| [HIVE-6072](https://issues.apache.org/jira/browse/HIVE-6072) | With HCatalog refactoring, Hadoop\_HBase e2e will fail |  Major | HBase Handler, HCatalog | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-6068](https://issues.apache.org/jira/browse/HIVE-6068) | HiveServer2 client on windows does not handle the non-ascii characters properly |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6065](https://issues.apache.org/jira/browse/HIVE-6065) | orc/FileDump and testRCFile should close on appropriate resources |  Major | . | Jason Dere | Jason Dere |
| [HIVE-6054](https://issues.apache.org/jira/browse/HIVE-6054) | HiveServer2 does not log the output of LogUtils.initHiveLog4j(); |  Major | HiveServer2 | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-6052](https://issues.apache.org/jira/browse/HIVE-6052) | metastore JDO filter pushdown for integers may produce unexpected results with non-normalized integer columns |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6048](https://issues.apache.org/jira/browse/HIVE-6048) | Hive load data command rejects file with '+' in the name |  Major | Query Processor | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6045](https://issues.apache.org/jira/browse/HIVE-6045) | Beeline hivevars is broken for more than one hivevar |  Major | CLI | Szehon Ho | Szehon Ho |
| [HIVE-6044](https://issues.apache.org/jira/browse/HIVE-6044) | webhcat should be able to return detailed serde information when show table using "fromat=extended" |  Major | . | Shuaishuai Nie | Shuaishuai Nie |
| [HIVE-6041](https://issues.apache.org/jira/browse/HIVE-6041) | Incorrect task dependency graph for skewed join optimization |  Critical | Query Processor | Adrian Popescu | Navis |
| [HIVE-6039](https://issues.apache.org/jira/browse/HIVE-6039) | Round, AVG and SUM functions reject char/varch input while accepting string input |  Major | UDF | Xuefu Zhang | Xuefu Zhang |
| [HIVE-6036](https://issues.apache.org/jira/browse/HIVE-6036) | A test case for embedded beeline  -  with URL jdbc:hive2:///default |  Major | . | Anandha L Ranganathan | Anandha L Ranganathan |
| [HIVE-6034](https://issues.apache.org/jira/browse/HIVE-6034) | vectorized % doesn't handle zeroes the same way as non-vectorized |  Minor | Vectorization | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6027](https://issues.apache.org/jira/browse/HIVE-6027) | non-vectorized log10 has rounding issue |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6022](https://issues.apache.org/jira/browse/HIVE-6022) | Load statements with incorrect order of partitions put input files to unreadable places |  Major | Query Processor | Teruyoshi Zenmyo | Teruyoshi Zenmyo |
| [HIVE-6021](https://issues.apache.org/jira/browse/HIVE-6021) | Problem in GroupByOperator for handling distinct aggrgations |  Major | Query Processor | Sun Rui | Sun Rui |
| [HIVE-6018](https://issues.apache.org/jira/browse/HIVE-6018) | FetchTask should not reference metastore classes |  Trivial | Query Processor | Navis | Navis |
| [HIVE-6016](https://issues.apache.org/jira/browse/HIVE-6016) | Hadoop23Shims has a bug in listLocatedStatus impl. |  Major | Shims | Sushanth Sowmyan | Prasanth Jayachandran |
| [HIVE-6015](https://issues.apache.org/jira/browse/HIVE-6015) | vectorized logarithm produces results for 0 that are different from a non-vectorized one |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-6012](https://issues.apache.org/jira/browse/HIVE-6012) | restore backward compatibility of arithmetic operations |  Major | Query Processor | Thejas M Nair | Jason Dere |
| [HIVE-6000](https://issues.apache.org/jira/browse/HIVE-6000) | Hive build broken on hadoop2 |  Blocker | . | Sergey Shelukhin | Vikram Dixit K |
| [HIVE-5995](https://issues.apache.org/jira/browse/HIVE-5995) | decimal\_precision.q test case fails in trunk |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5994](https://issues.apache.org/jira/browse/HIVE-5994) | ORC RLEv2 encodes wrongly for large negative BIGINTs  (64 bits ) |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5992](https://issues.apache.org/jira/browse/HIVE-5992) | Hive inconsistently converts timestamp in AVG and SUM UDAF's |  Major | UDF | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5991](https://issues.apache.org/jira/browse/HIVE-5991) | ORC RLEv2 fails with ArrayIndexOutOfBounds exception for PATCHED\_BLOB encoding |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5989](https://issues.apache.org/jira/browse/HIVE-5989) | Hive metastore authorization check is not threadsafe |  Critical | Metastore, Security | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-5983](https://issues.apache.org/jira/browse/HIVE-5983) | Fix name of ColumnProjectionUtils.appendReadColumnIDs |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5981](https://issues.apache.org/jira/browse/HIVE-5981) | Add hive-unit back to itests pom |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5975](https://issues.apache.org/jira/browse/HIVE-5975) | [WebHCat] templeton mapreduce job failed if provide "define" parameters |  Major | HCatalog | shanyu zhao | shanyu zhao |
| [HIVE-5973](https://issues.apache.org/jira/browse/HIVE-5973) | SMB joins produce incorrect results with multiple partitions and buckets |  Major | Query Processor | Vikram Dixit K | Vikram Dixit K |
| [HIVE-5964](https://issues.apache.org/jira/browse/HIVE-5964) | Hive missing a filter predicate causing wrong results joining tables after sort by |  Blocker | Query Processor | dima machlin | Navis |
| [HIVE-5957](https://issues.apache.org/jira/browse/HIVE-5957) | Fix HCatalog Unit tests on Windows |  Major | HCatalog | Eugene Koifman | Eugene Koifman |
| [HIVE-5950](https://issues.apache.org/jira/browse/HIVE-5950) | ORC SARG creation fails with NPE for predicate conditions with decimal/date/char/varchar datatypes |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5947](https://issues.apache.org/jira/browse/HIVE-5947) | Fix test failure in decimal\_udf.q |  Major | Tests | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5945](https://issues.apache.org/jira/browse/HIVE-5945) | ql.plan.ConditionalResolverCommonJoin.resolveMapJoinTask also sums those tables which are not used in the child of this conditional task. |  Critical | Query Processor | Yin Huai | Navis |
| [HIVE-5936](https://issues.apache.org/jira/browse/HIVE-5936) | analyze command failing to collect stats with counter mechanism |  Major | Statistics | Ashutosh Chauhan | Navis |
| [HIVE-5935](https://issues.apache.org/jira/browse/HIVE-5935) | hive.query.string is not provided to FetchTask |  Trivial | Query Processor | Navis | Navis |
| [HIVE-5916](https://issues.apache.org/jira/browse/HIVE-5916) | No need to aggregate statistics collected via counter mechanism |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-5913](https://issues.apache.org/jira/browse/HIVE-5913) | HIVE-5880 - (Rename HCatalog HBase Storage Handler artifact id) breaks packaging |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5912](https://issues.apache.org/jira/browse/HIVE-5912) | Show partition command doesn't support db.table |  Major | . | Yu Zhao |  |
| [HIVE-5911](https://issues.apache.org/jira/browse/HIVE-5911) | Recent change to schema upgrade scripts breaks file naming conventions |  Major | Metastore | Carl Steinbach | Sergey Shelukhin |
| [HIVE-5910](https://issues.apache.org/jira/browse/HIVE-5910) | In HiveConf, the name of mapred.min.split.size.per.rack is MAPREDMINSPLITSIZEPERNODE and the name of mapred.min.split.size.per.node is MAPREDMINSPLITSIZEPERRACK |  Major | . | Yin Huai | Sushanth Sowmyan |
| [HIVE-5909](https://issues.apache.org/jira/browse/HIVE-5909) | locate and instr throw java.nio.BufferUnderflowException when empty string as substring |  Major | UDF | Rafal Wojdyla | Navis |
| [HIVE-5906](https://issues.apache.org/jira/browse/HIVE-5906) | TestGenericUDFPower should use delta to compare doubles |  Major | Tests | Szehon Ho | Szehon Ho |
| [HIVE-5899](https://issues.apache.org/jira/browse/HIVE-5899) | NPE during explain extended with char/varchar columns |  Major | Statistics | Jason Dere | Jason Dere |
| [HIVE-5896](https://issues.apache.org/jira/browse/HIVE-5896) | Insert queries in ORC fails with vectorization on |  Major | . | Ashutosh Chauhan |  |
| [HIVE-5895](https://issues.apache.org/jira/browse/HIVE-5895) | vectorization handles division by zero differently from normal execution |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5894](https://issues.apache.org/jira/browse/HIVE-5894) | Fix minor PTest2 issues |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-5893](https://issues.apache.org/jira/browse/HIVE-5893) | hive-schema-0.13.0.mysql.sql contains reference to nonexistent column |  Major | Metastore | Carl Steinbach | Carl Steinbach |
| [HIVE-5891](https://issues.apache.org/jira/browse/HIVE-5891) | Alias conflict when merging multiple mapjoin tasks into their common child mapred task |  Major | Query Processor | Sun Rui | Sun Rui |
| [HIVE-5887](https://issues.apache.org/jira/browse/HIVE-5887) | metastore direct sql doesn't work with oracle |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5876](https://issues.apache.org/jira/browse/HIVE-5876) | Split elimination in ORC breaks for partitioned tables |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5866](https://issues.apache.org/jira/browse/HIVE-5866) | Hive divide operator generates wrong results in certain cases |  Major | . | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5862](https://issues.apache.org/jira/browse/HIVE-5862) | While running some queries on large data using tez, we OOM. |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-5859](https://issues.apache.org/jira/browse/HIVE-5859) | Create view does not captures inputs |  Minor | Authorization | Navis | Navis |
| [HIVE-5857](https://issues.apache.org/jira/browse/HIVE-5857) | Reduce tasks do not work in uber mode in YARN |  Critical | Query Processor | Adam Kawa | Adam Kawa |
| [HIVE-5846](https://issues.apache.org/jira/browse/HIVE-5846) | Analyze command fails with vectorization on |  Major | . | Ashutosh Chauhan | Remus Rusanu |
| [HIVE-5845](https://issues.apache.org/jira/browse/HIVE-5845) | CTAS failed on vectorized code path |  Major | . | Ashutosh Chauhan | Remus Rusanu |
| [HIVE-5844](https://issues.apache.org/jira/browse/HIVE-5844) | dynamic\_partition\_skip\_default.q test fails on trunk |  Trivial | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5839](https://issues.apache.org/jira/browse/HIVE-5839) | BytesRefArrayWritable compareTo violates contract |  Major | Serializers/Deserializers | Ian Robertson | Xuefu Zhang |
| [HIVE-5835](https://issues.apache.org/jira/browse/HIVE-5835) | Null pointer exception in DeleteDelegator in templeton code |  Major | WebHCat | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-5830](https://issues.apache.org/jira/browse/HIVE-5830) | SubQuery: Not In subqueries should check if subquery contains nulls in matching column |  Major | Query Processor | Harish Butani | Harish Butani |
| [HIVE-5829](https://issues.apache.org/jira/browse/HIVE-5829) | Rewrite Trim and Pad UDFs based on GenericUDF |  Major | UDF | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [HIVE-5827](https://issues.apache.org/jira/browse/HIVE-5827) | Incorrect location of logs for failed tests. |  Major | Tests | Vikram Dixit K | Vikram Dixit K |
| [HIVE-5825](https://issues.apache.org/jira/browse/HIVE-5825) | Case statement type checking too restrictive for parameterized types |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-5817](https://issues.apache.org/jira/browse/HIVE-5817) | column name to index mapping in VectorizationContext is broken |  Critical | Vectorization | Sergey Shelukhin | Remus Rusanu |
| [HIVE-5813](https://issues.apache.org/jira/browse/HIVE-5813) | Multi-way Left outer join fails in vectorized mode |  Major | Vectorization | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-5812](https://issues.apache.org/jira/browse/HIVE-5812) | HiveServer2 SSL connection transport binds to loopback address by default |  Major | HiveServer2 | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-5809](https://issues.apache.org/jira/browse/HIVE-5809) | incorrect stats in some cases with hive.stats.autogather=true |  Major | Statistics | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-5800](https://issues.apache.org/jira/browse/HIVE-5800) | Hive is inconsistent when handling strings in arithmetic operations |  Major | Types | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5791](https://issues.apache.org/jira/browse/HIVE-5791) | TestUseDatabase in hcategory failed to pass when illegal filename in /tmp |  Minor | HCatalog | hellojinjie | hellojinjie |
| [HIVE-5790](https://issues.apache.org/jira/browse/HIVE-5790) | maven test build  failure shows wrong error message |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [HIVE-5788](https://issues.apache.org/jira/browse/HIVE-5788) | select * fails for table after adding new columns using rcfile storage format |  Major | Serializers/Deserializers | Szehon Ho | Szehon Ho |
| [HIVE-5786](https://issues.apache.org/jira/browse/HIVE-5786) | Remove HadoopShims methods that were needed for pre-Hadoop 0.20 |  Major | Shims | Jason Dere | Jason Dere |
| [HIVE-5782](https://issues.apache.org/jira/browse/HIVE-5782) | PTest2 should be able to ride out price spikes |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5780](https://issues.apache.org/jira/browse/HIVE-5780) | Add the missing declaration of HIVE\_CLI\_SERVICE\_PROTOCOL\_V4 in TCLIService.thrift |  Major | HiveServer2 | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-5779](https://issues.apache.org/jira/browse/HIVE-5779) | Subquery in where clause with distinct fails with mapjoin turned on with serialization error. |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-5773](https://issues.apache.org/jira/browse/HIVE-5773) | Fix build due to conflict between HIVE-5711 and HIVE-5713 |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5768](https://issues.apache.org/jira/browse/HIVE-5768) | Beeline connection cannot be closed with !close command |  Trivial | CLI | Navis | Navis |
| [HIVE-5767](https://issues.apache.org/jira/browse/HIVE-5767) | in SemanticAnalyzer#doPhase1, handling for TOK\_UNION falls thru into TOK\_INSERT |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5765](https://issues.apache.org/jira/browse/HIVE-5765) | Beeline throws NPE when -e option is used |  Major | CLI | Szehon Ho | Szehon Ho |
| [HIVE-5763](https://issues.apache.org/jira/browse/HIVE-5763) | ExprNodeGenericFuncDesc.toString() generating unbalanced parenthesises |  Minor | Query Processor | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5745](https://issues.apache.org/jira/browse/HIVE-5745) | TestHiveLogging is failing (at least on mac) |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-5732](https://issues.apache.org/jira/browse/HIVE-5732) | HiveServer2: Duplicated new OperationManager in SessionManager |  Trivial | . | Schubert Zhang | Navis |
| [HIVE-5730](https://issues.apache.org/jira/browse/HIVE-5730) | Beeline throws non-terminal NPE upon starting, after mavenization |  Major | CLI | Szehon Ho | Szehon Ho |
| [HIVE-5729](https://issues.apache.org/jira/browse/HIVE-5729) | Beeline displays version as ???? after mavenization |  Major | CLI | Szehon Ho | Navis |
| [HIVE-5715](https://issues.apache.org/jira/browse/HIVE-5715) | HS2 should not "start" a session for every command |  Major | HiveServer2 | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-5703](https://issues.apache.org/jira/browse/HIVE-5703) | While using tez, Qtest needs to close session before creating a new one |  Major | Testing Infrastructure, Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-5702](https://issues.apache.org/jira/browse/HIVE-5702) | add logging on WebHCat startup to print all env var and Configuration |  Minor | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-5698](https://issues.apache.org/jira/browse/HIVE-5698) | A few test files missing apache license header |  Minor | Documentation | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5696](https://issues.apache.org/jira/browse/HIVE-5696) | WebHCat e2e tests/jobsubmission.conf file is malformed and loosing tests |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-5695](https://issues.apache.org/jira/browse/HIVE-5695) | PTest2 fix shutdown, duplicate runs, and add client retry |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5692](https://issues.apache.org/jira/browse/HIVE-5692) | Make VectorGroupByOperator parameters configurable |  Minor | . | Remus Rusanu | Remus Rusanu |
| [HIVE-5686](https://issues.apache.org/jira/browse/HIVE-5686) | partition column type validation doesn't quite work for dates |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5685](https://issues.apache.org/jira/browse/HIVE-5685) | partition column type validation doesn't work in some cases |  Major | . | Sergey Shelukhin | Vikram Dixit K |
| [HIVE-5684](https://issues.apache.org/jira/browse/HIVE-5684) | Serde support for char |  Major | Serializers/Deserializers, Types | Jason Dere | Jason Dere |
| [HIVE-5683](https://issues.apache.org/jira/browse/HIVE-5683) | JDBC support for char |  Major | JDBC, Types | Jason Dere | Jason Dere |
| [HIVE-5682](https://issues.apache.org/jira/browse/HIVE-5682) | can not display the table's comment in chinese |  Major | CLI, Query Processor | alex.lv |  |
| [HIVE-5676](https://issues.apache.org/jira/browse/HIVE-5676) | Cleanup test cases as done during mavenization |  Major | Build Infrastructure, Testing Infrastructure | Brock Noland | Brock Noland |
| [HIVE-5668](https://issues.apache.org/jira/browse/HIVE-5668) | path normalization in MapOperator is expensive |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-5667](https://issues.apache.org/jira/browse/HIVE-5667) | ThriftCLIService log messages jumbled up |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-5665](https://issues.apache.org/jira/browse/HIVE-5665) | Update PMC status for navis |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-5657](https://issues.apache.org/jira/browse/HIVE-5657) | TopN produces incorrect results with count(distinct) |  Critical | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5656](https://issues.apache.org/jira/browse/HIVE-5656) | Hive produces unclear, confusing SemanticException when dealing with mod or pmod by zero |  Major | Types | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5648](https://issues.apache.org/jira/browse/HIVE-5648) | error when casting partition column to varchar in where clause |  Major | . | Jason Dere | Jason Dere |
| [HIVE-5643](https://issues.apache.org/jira/browse/HIVE-5643) | ZooKeeperHiveLockManager.getQuorumServers incorrectly appends the custom zk port to quorum hosts |  Major | Locking | Venki Korukanti | Venki Korukanti |
| [HIVE-5641](https://issues.apache.org/jira/browse/HIVE-5641) | BeeLineOpts ignores Throwable |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-5636](https://issues.apache.org/jira/browse/HIVE-5636) | Introduce getPartitionColumns() functionality from HCatInputFormat |  Major | HCatalog | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-5635](https://issues.apache.org/jira/browse/HIVE-5635) | WebHCatJTShim23 ignores security/user context |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-5633](https://issues.apache.org/jira/browse/HIVE-5633) | Perflogger broken due to HIVE-5403 |  Major | Logging | Vikram Dixit K | Vikram Dixit K |
| [HIVE-5629](https://issues.apache.org/jira/browse/HIVE-5629) | Fix two javadoc failures in HCatalog |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5628](https://issues.apache.org/jira/browse/HIVE-5628) | ListBucketingPrunnerTest and DynamicMultiDimeCollectionTest should start with Test not end with it |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5625](https://issues.apache.org/jira/browse/HIVE-5625) | Fix issue with metastore version restriction test. |  Major | Tests | Vikram Dixit K | Vikram Dixit K |
| [HIVE-5620](https://issues.apache.org/jira/browse/HIVE-5620) | Tez job progress printing stops after a specific amount of time |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-5618](https://issues.apache.org/jira/browse/HIVE-5618) | Hive local task fails to run when run from oozie in a secure cluster |  Major | . | Venkat Ranganathan | Prasad Mujumdar |
| [HIVE-5601](https://issues.apache.org/jira/browse/HIVE-5601) | NPE in ORC's PPD  when using select * from table with where predicate |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5599](https://issues.apache.org/jira/browse/HIVE-5599) | Change default logging level to INFO |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5598](https://issues.apache.org/jira/browse/HIVE-5598) | Remove dummy new line at the end of non-sql commands |  Trivial | . | Navis | Navis |
| [HIVE-5596](https://issues.apache.org/jira/browse/HIVE-5596) | hive-default.xml.template is invalid |  Critical | Configuration | Killua Huang | Killua Huang |
| [HIVE-5580](https://issues.apache.org/jira/browse/HIVE-5580) | push down predicates with an and-operator between non-SARGable predicates will get NPE |  Major | File Formats | Owen O'Malley | Owen O'Malley |
| [HIVE-5578](https://issues.apache.org/jira/browse/HIVE-5578) | hcat script doesn't include jars from HIVE\_AUX\_JARS\_PATH |  Major | HCatalog | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [HIVE-5577](https://issues.apache.org/jira/browse/HIVE-5577) | Remove TestNegativeCliDriver script\_broken\_pipe1 |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5576](https://issues.apache.org/jira/browse/HIVE-5576) | Blank lines missing from .q.out files created on Windows for testcase=TestCliDriver |  Minor | Testing Infrastructure | Eric Hanson | Remus Rusanu |
| [HIVE-5575](https://issues.apache.org/jira/browse/HIVE-5575) | ZooKeeper connection closed when unlock with retry |  Major | . | Chun Chen | Chun Chen |
| [HIVE-5574](https://issues.apache.org/jira/browse/HIVE-5574) | Unnecessary newline at the end of message of ParserException |  Trivial | Diagnosability | Navis | Navis |
| [HIVE-5572](https://issues.apache.org/jira/browse/HIVE-5572) | Fails of non-sql command are not propagated to jdbc2 client |  Trivial | HiveServer2 | Navis | Navis |
| [HIVE-5567](https://issues.apache.org/jira/browse/HIVE-5567) | Add better protection code for SARGs |  Major | File Formats | Owen O'Malley | Owen O'Malley |
| [HIVE-5560](https://issues.apache.org/jira/browse/HIVE-5560) | Hive produces incorrect results on multi-distinct query |  Major | Query Processor | Vikram Dixit K | Navis |
| [HIVE-5559](https://issues.apache.org/jira/browse/HIVE-5559) | Stats publisher fails for list bucketing when IDs are too long |  Major | Statistics | Jason Dere | Jason Dere |
| [HIVE-5552](https://issues.apache.org/jira/browse/HIVE-5552) | Merging of QBJoinTrees doesn't handle filter pushdowns correctly |  Major | Query Processor | Harish Butani | Harish Butani |
| [HIVE-5550](https://issues.apache.org/jira/browse/HIVE-5550) | Import fails for tables created with default text, sequence and orc file formats using HCatalog API |  Major | HCatalog | Venkatesh Seetharam | Sushanth Sowmyan |
| [HIVE-5548](https://issues.apache.org/jira/browse/HIVE-5548) | Tests under common directory don't run as part of 'ant test' |  Major | Testing Infrastructure, Tests | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5547](https://issues.apache.org/jira/browse/HIVE-5547) | webhcat pig job submission should ship hive tar if -usehcatalog is specified |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-5546](https://issues.apache.org/jira/browse/HIVE-5546) | A change in ORCInputFormat made by HIVE-4113 was reverted by HIVE-5391 |  Major | . | Yin Huai | Yin Huai |
| [HIVE-5543](https://issues.apache.org/jira/browse/HIVE-5543) | Running the mini tez cluster for tez unit tests |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-5542](https://issues.apache.org/jira/browse/HIVE-5542) | Webhcat is failing to run ddl command on a secure cluster |  Major | Authentication, WebHCat | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-5540](https://issues.apache.org/jira/browse/HIVE-5540) | webhcat e2e test failures: "Expect 1 jobs in logs, but get 1" |  Major | WebHCat | Eugene Koifman | Daniel Dai |
| [HIVE-5539](https://issues.apache.org/jira/browse/HIVE-5539) | remove hcatalog wiki tab from hive site |  Major | Website | Thejas M Nair | Thejas M Nair |
| [HIVE-5535](https://issues.apache.org/jira/browse/HIVE-5535) | [WebHCat] Webhcat e2e test JOBS\_2 fail due to permission when hdfs umask setting is 022 |  Major | HCatalog | Daniel Dai | Daniel Dai |
| [HIVE-5531](https://issues.apache.org/jira/browse/HIVE-5531) | Hiverserver2 doesn't honor command line argument when initializing log4j |  Major | . | Shuaishuai Nie | Shuaishuai Nie |
| [HIVE-5526](https://issues.apache.org/jira/browse/HIVE-5526) | NPE in ConstantVectorExpression.evaluate(vrg) |  Minor | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-5524](https://issues.apache.org/jira/browse/HIVE-5524) | Unwanted delay in getting Hive metastore connection with METASTORE\_CLIENT\_CONNECT\_RETRY\_DELAY/ |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-5521](https://issues.apache.org/jira/browse/HIVE-5521) | Remove CommonRCFileInputFormat |  Major | File Formats, Vectorization | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-5519](https://issues.apache.org/jira/browse/HIVE-5519) | Use paging mechanism for templeton get requests. |  Major | WebHCat | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-5515](https://issues.apache.org/jira/browse/HIVE-5515) | Writing to an HBase table throws IllegalArgumentException, failing job submission |  Major | HBase Handler | Nick Dimiduk | Viraj Bhat |
| [HIVE-5513](https://issues.apache.org/jira/browse/HIVE-5513) | Set the short version directly via build script |  Minor | Build Infrastructure, Diagnosability | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-5511](https://issues.apache.org/jira/browse/HIVE-5511) | percentComplete returned by job status from WebHCat is null |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-5510](https://issues.apache.org/jira/browse/HIVE-5510) | [WebHCat] GET job/queue return wrong job information |  Major | WebHCat | Daniel Dai | Daniel Dai |
| [HIVE-5509](https://issues.apache.org/jira/browse/HIVE-5509) | [WebHCat] TestDriverCurl to use string comparison for jobid |  Major | HCatalog | Daniel Dai | Daniel Dai |
| [HIVE-5508](https://issues.apache.org/jira/browse/HIVE-5508) | [WebHCat] ignore log collector e2e tests for Hadoop 2 |  Major | HCatalog | Daniel Dai | Daniel Dai |
| [HIVE-5507](https://issues.apache.org/jira/browse/HIVE-5507) | [WebHCat] test.other.user.name parameter is missing from build.xml in e2e harness |  Major | HCatalog | Daniel Dai | Daniel Dai |
| [HIVE-5506](https://issues.apache.org/jira/browse/HIVE-5506) | Hive SPLIT function does not return array correctly |  Major | SQL, UDF | John Omernik | Vikram Dixit K |
| [HIVE-5504](https://issues.apache.org/jira/browse/HIVE-5504) | OrcOutputFormat honors  compression  properties only from within hive |  Major | HCatalog | Venkat Ranganathan | Sushanth Sowmyan |
| [HIVE-5496](https://issues.apache.org/jira/browse/HIVE-5496) | hcat -e "drop database if exists" fails on authorizing non-existent null db |  Major | Authorization, HCatalog | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-5492](https://issues.apache.org/jira/browse/HIVE-5492) | Explain query fails with NPE if a client doesn't call getResultSetSchema() |  Major | Thrift API | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5490](https://issues.apache.org/jira/browse/HIVE-5490) | SUBSTR(col, 1, 0) returns wrong result in vectorized mode |  Major | Query Processor | Eric Hanson | Teddy Choi |
| [HIVE-5486](https://issues.apache.org/jira/browse/HIVE-5486) | HiveServer2 should create base scratch directories at startup |  Major | HiveServer2 | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-5485](https://issues.apache.org/jira/browse/HIVE-5485) | SBAP errors on null partition being passed into partition level authorization |  Major | Authorization | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-5484](https://issues.apache.org/jira/browse/HIVE-5484) | TestSchemaTool failures when Hive version has more than 3 revision numbers |  Major | . | Jason Dere | Jason Dere |
| [HIVE-5482](https://issues.apache.org/jira/browse/HIVE-5482) | JDBC should depend on httpclient.version and httpcore.version 4.1.3 to be consistent with other modules |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-5481](https://issues.apache.org/jira/browse/HIVE-5481) | WebHCat e2e test: TestStreaming -ve tests should also check for job completion success |  Minor | WebHCat | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-5480](https://issues.apache.org/jira/browse/HIVE-5480) | WebHCat e2e tests for doAs feature are failing |  Major | Tests, WebHCat | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-5479](https://issues.apache.org/jira/browse/HIVE-5479) | SBAP restricts hcat -e 'show databases' |  Major | Authorization, HCatalog | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-5478](https://issues.apache.org/jira/browse/HIVE-5478) | WebHCat e2e testsuite for hcat authorization tests needs some fixes |  Major | Tests, WebHCat | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-5474](https://issues.apache.org/jira/browse/HIVE-5474) | drop table hangs when concurrency=true |  Major | HiveServer2, Locking | Thejas M Nair | Jason Dere |
| [HIVE-5460](https://issues.apache.org/jira/browse/HIVE-5460) | invalid offsets in lag lead should return an exception (per ISO-SQL) |  Minor | . | N Campbell | Edward Capriolo |
| [HIVE-5459](https://issues.apache.org/jira/browse/HIVE-5459) | Add --version option to hive script |  Major | Diagnosability | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-5455](https://issues.apache.org/jira/browse/HIVE-5455) | Add build/ql/gen/vector to source folder in eclipse template |  Trivial | . | Yin Huai | Yin Huai |
| [HIVE-5454](https://issues.apache.org/jira/browse/HIVE-5454) | HCatalog runs a partition listing with an empty filter |  Major | HCatalog | Harsh J | Harsh J |
| [HIVE-5453](https://issues.apache.org/jira/browse/HIVE-5453) | jobsubmission2.conf should use 'timeout' property |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-5452](https://issues.apache.org/jira/browse/HIVE-5452) | HCatalog e2e test Pig\_HBase\_1 and Pig\_HBase\_2 are failing with ClassCastException |  Major | HCatalog | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-5449](https://issues.apache.org/jira/browse/HIVE-5449) | Hive schematool info option incorrectly reports error for Postgres metastore |  Major | Metastore | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-5448](https://issues.apache.org/jira/browse/HIVE-5448) | webhcat duplicate test TestMapReduce\_2 should be removed |  Major | Tests, WebHCat | Thejas M Nair | Thejas M Nair |
| [HIVE-5446](https://issues.apache.org/jira/browse/HIVE-5446) | Hive can CREATE an external table but not SELECT from it when file path have spaces |  Major | . | Shuaishuai Nie | Shuaishuai Nie |
| [HIVE-5441](https://issues.apache.org/jira/browse/HIVE-5441) | Async query execution doesn't return resultset status |  Major | HiveServer2 | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-5440](https://issues.apache.org/jira/browse/HIVE-5440) | HiveServer2 doesn't apply SQL operation's config property |  Major | HiveServer2 | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-5428](https://issues.apache.org/jira/browse/HIVE-5428) | Direct SQL check fails during tests |  Major | . | Brock Noland | Sergey Shelukhin |
| [HIVE-5425](https://issues.apache.org/jira/browse/HIVE-5425) | Provide a configuration option to control the default stripe size for ORC |  Major | File Formats | Owen O'Malley | Owen O'Malley |
| [HIVE-5422](https://issues.apache.org/jira/browse/HIVE-5422) | Upgrade Kyro to 2.22 now that it is released |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5418](https://issues.apache.org/jira/browse/HIVE-5418) | Integer overflow bug in ConditionalResolverCommonJoin.AliasFileSizePair |  Major | . | Steven Wong | Steven Wong |
| [HIVE-5415](https://issues.apache.org/jira/browse/HIVE-5415) | Remove "System.err.println" from vectorization optimization |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-5414](https://issues.apache.org/jira/browse/HIVE-5414) | The result of show grant is not visible via JDBC |  Trivial | Authorization, JDBC | Navis | Navis |
| [HIVE-5411](https://issues.apache.org/jira/browse/HIVE-5411) | Migrate expression serialization to Kryo |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-5407](https://issues.apache.org/jira/browse/HIVE-5407) | show create table creating unusable DDL when some reserved keywords  exist |  Minor | CLI | Zhichun Wu | Zhichun Wu |
| [HIVE-5403](https://issues.apache.org/jira/browse/HIVE-5403) | Move loading of filesystem, ugi, metastore client to hive session |  Major | . | Vikram Dixit K | Vikram Dixit K |
| [HIVE-5385](https://issues.apache.org/jira/browse/HIVE-5385) | StringUtils is not in commons codec 1.3 |  Trivial | . | Yin Huai | Kousuke Saruta |
| [HIVE-5380](https://issues.apache.org/jira/browse/HIVE-5380) | Non-default OI constructors should be supported for backwards compatibility |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-5379](https://issues.apache.org/jira/browse/HIVE-5379) | NoClassDefFoundError is thrown when using lead/lag with kryo serialization |  Minor | PTF-Windowing | Navis | Navis |
| [HIVE-5377](https://issues.apache.org/jira/browse/HIVE-5377) | the error handling in serialize/deserializeExpression is insufficient, some test may pass in error |  Major | . | Sergey Shelukhin | Ashutosh Chauhan |
| [HIVE-5368](https://issues.apache.org/jira/browse/HIVE-5368) | Changes to work creation for tez |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-5360](https://issues.apache.org/jira/browse/HIVE-5360) | fix hcatalog checkstyle issue  introduced in HIVE-5223 |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-5350](https://issues.apache.org/jira/browse/HIVE-5350) | Cleanup exception handling around parallel orderby |  Minor | . | Brock Noland | Navis |
| [HIVE-5349](https://issues.apache.org/jira/browse/HIVE-5349) | QTestutil does not properly set UTF-8 |  Critical | . | Edward Capriolo | Edward Capriolo |
| [HIVE-5345](https://issues.apache.org/jira/browse/HIVE-5345) | Operator::close() leaks Operator::out, holding reference to buffers |  Major | Query Processor | Gopal V | Gopal V |
| [HIVE-5327](https://issues.apache.org/jira/browse/HIVE-5327) | Potential leak and cleanup in utilities.java |  Minor | . | Edward Capriolo | Edward Capriolo |
| [HIVE-5318](https://issues.apache.org/jira/browse/HIVE-5318) | Import Throws Error when Importing from a table export Hive 0.9 to Hive 0.10 |  Critical | Import/Export | Brad Ruderman | Xuefu Zhang |
| [HIVE-5311](https://issues.apache.org/jira/browse/HIVE-5311) | TestHCatPartitionPublish can fail randomly |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-5295](https://issues.apache.org/jira/browse/HIVE-5295) | HiveConnection#configureConnection tries to execute statement even after it is closed |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-5286](https://issues.apache.org/jira/browse/HIVE-5286) | Negative test date\_literal1.q fails on java7 because the syntax is valid |  Major | . | Brock Noland | Szehon Ho |
| [HIVE-5283](https://issues.apache.org/jira/browse/HIVE-5283) | Merge vectorization branch to trunk |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5279](https://issues.apache.org/jira/browse/HIVE-5279) | Kryo cannot instantiate GenericUDAFEvaluator in GroupByDesc |  Critical | Query Processor | Navis | Navis |
| [HIVE-5272](https://issues.apache.org/jira/browse/HIVE-5272) | Column statistics on a invalid column name results in IndexOutOfBoundsException |  Major | Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5270](https://issues.apache.org/jira/browse/HIVE-5270) | Enable hash joins using tez |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-5266](https://issues.apache.org/jira/browse/HIVE-5266) | HCatalog checkstyle failure due to HIVE-5225 |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-5264](https://issues.apache.org/jira/browse/HIVE-5264) | SQL generated by MetaStoreDirectSql.java not compliant with Postgres. |  Major | Metastore | Alexander Behm | Sergey Shelukhin |
| [HIVE-5257](https://issues.apache.org/jira/browse/HIVE-5257) | Add kryo into eclipse template |  Trivial | . | Yin Huai | Yin Huai |
| [HIVE-5249](https://issues.apache.org/jira/browse/HIVE-5249) | Missing test file for HIVE-5199 |  Trivial | Tests | Navis | Navis |
| [HIVE-5248](https://issues.apache.org/jira/browse/HIVE-5248) | WebHCat Proxy User Support (HIVE-4601) requires documentation |  Major | Documentation, WebHCat | Eugene Koifman |  |
| [HIVE-5242](https://issues.apache.org/jira/browse/HIVE-5242) | Trunk fails to compile |  Major | . | Ashutosh Chauhan |  |
| [HIVE-5240](https://issues.apache.org/jira/browse/HIVE-5240) | Column statistics on a partitioned column should fail early with proper error message |  Major | Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5231](https://issues.apache.org/jira/browse/HIVE-5231) | Remove TestSerDe.jar from data/files |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-5225](https://issues.apache.org/jira/browse/HIVE-5225) | There is no database named nonexistentdatabaseusedforhealthcheck |  Major | . | Eugene Koifman | Sergey Shelukhin |
| [HIVE-5224](https://issues.apache.org/jira/browse/HIVE-5224) | When creating table with AVRO serde, the "avro.schema.url" should be about to load serde schema from file system beside HDFS |  Major | . | Shuaishuai Nie | Shuaishuai Nie |
| [HIVE-5216](https://issues.apache.org/jira/browse/HIVE-5216) | Need to annotate public API in HCatalog |  Major | HCatalog, WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-5202](https://issues.apache.org/jira/browse/HIVE-5202) | Support for SettableUnionObjectInspector and implement isSettable/hasAllFieldsSettable APIs for all data types. |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-5181](https://issues.apache.org/jira/browse/HIVE-5181) | RetryingRawStore should not retry on logical failures (e.g. from commit) |  Minor | . | Sergey Shelukhin | Prasad Mujumdar |
| [HIVE-5166](https://issues.apache.org/jira/browse/HIVE-5166) | TestWebHCatE2e is failing intermittently on trunk |  Major | Tests, WebHCat | Ashutosh Chauhan | Eugene Koifman |
| [HIVE-5133](https://issues.apache.org/jira/browse/HIVE-5133) | webhcat jobs that need to access metastore fails in secure mode |  Major | WebHCat | Thejas M Nair | Eugene Koifman |
| [HIVE-5132](https://issues.apache.org/jira/browse/HIVE-5132) | Can't access to hwi due to "No Java compiler available" |  Critical | . | Bing Li | Bing Li |
| [HIVE-5115](https://issues.apache.org/jira/browse/HIVE-5115) | Webhcat e2e tests TestMapReduce\_1 and TestHeartbeat\_2 require changes for Hadoop 2 |  Major | Tests, WebHCat | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-5102](https://issues.apache.org/jira/browse/HIVE-5102) | ORC getSplits should create splits based the stripes |  Major | File Formats | Owen O'Malley | Owen O'Malley |
| [HIVE-5099](https://issues.apache.org/jira/browse/HIVE-5099) | Some partition publish operation cause OOM in metastore backed by SQL Server |  Major | Metastore, Windows | Daniel Dai | Daniel Dai |
| [HIVE-5098](https://issues.apache.org/jira/browse/HIVE-5098) | Fix metastore for SQL Server |  Major | Metastore, Windows | Daniel Dai | Daniel Dai |
| [HIVE-5090](https://issues.apache.org/jira/browse/HIVE-5090) | Remove unwanted file from the trunk. |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-5086](https://issues.apache.org/jira/browse/HIVE-5086) | Fix scriptfile1.q on Windows |  Major | Tests, Windows | Daniel Dai | Daniel Dai |
| [HIVE-5082](https://issues.apache.org/jira/browse/HIVE-5082) | Beeline usage is printed twice when "beeline --help" is executed |  Minor | CLI | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5071](https://issues.apache.org/jira/browse/HIVE-5071) | Address thread safety issues with HiveHistoryUtil |  Minor | . | Thiruvel Thirumoolan | Teddy Choi |
| [HIVE-5070](https://issues.apache.org/jira/browse/HIVE-5070) | Implement listLocatedStatus() in ProxyFileSystem for 0.23 shim |  Major | CLI | shanyu zhao | shanyu zhao |
| [HIVE-5032](https://issues.apache.org/jira/browse/HIVE-5032) | Enable hive creating external table at the root directory of DFS |  Major | . | Shuaishuai Nie | Shuaishuai Nie |
| [HIVE-5022](https://issues.apache.org/jira/browse/HIVE-5022) | Decimal Arithmetic generates NULL value |  Major | Types | Kevin Soo Hoo | Xuefu Zhang |
| [HIVE-5002](https://issues.apache.org/jira/browse/HIVE-5002) | Loosen readRowIndex visibility in ORC's RecordReaderImpl to package private |  Major | File Formats | Owen O'Malley | Owen O'Malley |
| [HIVE-4996](https://issues.apache.org/jira/browse/HIVE-4996) | unbalanced calls to openTransaction/commitTransaction |  Critical | Metastore | wangfeng | Szehon Ho |
| [HIVE-4975](https://issues.apache.org/jira/browse/HIVE-4975) | Reading orc file throws exception after adding new column |  Critical | File Formats | cyril liao | Kevin Wilfong |
| [HIVE-4974](https://issues.apache.org/jira/browse/HIVE-4974) | JDBC2 statements and result sets are not able to return their parents |  Minor | JDBC | Chris Drome | Chris Drome |
| [HIVE-4957](https://issues.apache.org/jira/browse/HIVE-4957) | Restrict number of bit vectors, to prevent out of Java heap memory |  Major | . | Brock Noland | Shreepadma Venugopalan |
| [HIVE-4910](https://issues.apache.org/jira/browse/HIVE-4910) | Hadoop 2 archives broken |  Minor | Query Processor, Tests | Vikram Dixit K | Vikram Dixit K |
| [HIVE-4837](https://issues.apache.org/jira/browse/HIVE-4837) | Union on void type fails with NPE |  Minor | Query Processor | Navis | Navis |
| [HIVE-4831](https://issues.apache.org/jira/browse/HIVE-4831) | QTestUtil based test exiting abnormally on windows fails startup of other QTestUtil tests |  Major | Testing Infrastructure | Thejas M Nair | Thejas M Nair |
| [HIVE-4778](https://issues.apache.org/jira/browse/HIVE-4778) | hive.server2.authentication CUSTOM not working |  Major | Authentication | Zdenek Ott | Azrael |
| [HIVE-4703](https://issues.apache.org/jira/browse/HIVE-4703) | Describe on a table returns "from deserializer" for column comments instead of values supplied in Create Table |  Major | . | Eugene Koifman | Ashutosh Chauhan |
| [HIVE-4669](https://issues.apache.org/jira/browse/HIVE-4669) | Make username available to semantic analyzer hooks |  Major | Query Processor | Shreepadma Venugopalan | Shreepadma Venugopalan |
| [HIVE-4619](https://issues.apache.org/jira/browse/HIVE-4619) | Hive 0.11.0 is not working with pre-cdh3u6 and hadoop-0.23 |  Minor | Query Processor | Navis | Navis |
| [HIVE-4545](https://issues.apache.org/jira/browse/HIVE-4545) | HS2 should return describe table results without space padding |  Major | HiveServer2 | Thejas M Nair | Vaibhav Gumashta |
| [HIVE-4519](https://issues.apache.org/jira/browse/HIVE-4519) | JDBC getColumnTypeName() should respond with the Hive-specifc type name for ARRAY, STRUCT and MAP |  Major | JDBC | Robert Roland | Robert Roland |
| [HIVE-4485](https://issues.apache.org/jira/browse/HIVE-4485) | beeline prints null as empty strings |  Major | HiveServer2 | Thejas M Nair | Thejas M Nair |
| [HIVE-4417](https://issues.apache.org/jira/browse/HIVE-4417) | Make unit tests pass on Windows which use Linux script in query files |  Major | Tests | Shuaishuai Nie | Shuaishuai Nie |
| [HIVE-4388](https://issues.apache.org/jira/browse/HIVE-4388) | Upgrade HBase to 0.96 |  Major | HBase Handler | Gunther Hagleitner | Brock Noland |
| [HIVE-4301](https://issues.apache.org/jira/browse/HIVE-4301) | Bulk retrieval API for column stats |  Major | . | Shreepadma Venugopalan | Shreepadma Venugopalan |
| [HIVE-4293](https://issues.apache.org/jira/browse/HIVE-4293) | Predicates following UDTF operator are removed by PPD |  Critical | Query Processor | Navis | Navis |
| [HIVE-4257](https://issues.apache.org/jira/browse/HIVE-4257) | java.sql.SQLNonTransientConnectionException on JDBCStatsAggregator |  Minor | Statistics | Teddy Choi | Teddy Choi |
| [HIVE-4256](https://issues.apache.org/jira/browse/HIVE-4256) | JDBC2 HiveConnection does not use the specified database |  Major | HiveServer2, JDBC | Chris Drome | Anandha L Ranganathan |
| [HIVE-4216](https://issues.apache.org/jira/browse/HIVE-4216) | TestHBaseMinimrCliDriver throws weird error with HBase 0.94.5 and Hadoop 23 and test is stuck infinitely |  Major | StorageHandler | Viraj Bhat | Jason Dere |
| [HIVE-4144](https://issues.apache.org/jira/browse/HIVE-4144) | Add "select database()" command to show the current database |  Major | SQL | Mark Grover | Navis |
| [HIVE-4116](https://issues.apache.org/jira/browse/HIVE-4116) | Can't use views using map datatype. |  Major | . | Karel Vervaeke | Navis |
| [HIVE-4113](https://issues.apache.org/jira/browse/HIVE-4113) | Optimize select count(1) with RCFile and Orc |  Major | File Formats | Gopal V | Yin Huai |
| [HIVE-4003](https://issues.apache.org/jira/browse/HIVE-4003) | NullPointerException in exec.Utilities |  Blocker | . | Thomas Adam | Mark Grover |
| [HIVE-3969](https://issues.apache.org/jira/browse/HIVE-3969) | Session state for hive server should be cleaned-up |  Trivial | Server Infrastructure | Navis | Navis |
| [HIVE-3949](https://issues.apache.org/jira/browse/HIVE-3949) | Some test failures in hadoop 23 |  Major | . | Gang Tim Liu | Brock Noland |
| [HIVE-3938](https://issues.apache.org/jira/browse/HIVE-3938) | Hive MetaStore should send a single AddPartitionEvent for atomically added partition-set. |  Major | Metastore | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-3936](https://issues.apache.org/jira/browse/HIVE-3936) | Remote debug failed with hadoop 0.23X, hadoop 2.X |  Minor | . | Xie Long | Swarnim Kulkarni |
| [HIVE-3815](https://issues.apache.org/jira/browse/HIVE-3815) | hive table rename fails if filesystem cache is disabled |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-3617](https://issues.apache.org/jira/browse/HIVE-3617) | Predicates pushed down to hbase is not handled properly when constant part is shown first |  Minor | HBase Handler | Navis | Navis |
| [HIVE-3455](https://issues.apache.org/jira/browse/HIVE-3455) | ANSI CORR(X,Y) is incorrect |  Major | UDF | Maxim Bolotin | Maxim Bolotin |
| [HIVE-3383](https://issues.apache.org/jira/browse/HIVE-3383) | MinimrCliDriver test hangs when run on 20S (aka 1.0) hadoop profile |  Major | Testing Infrastructure | Ashutosh Chauhan |  |
| [HIVE-2818](https://issues.apache.org/jira/browse/HIVE-2818) | Create table should check privilege of target database, not default database |  Major | Authorization, Security | Benyi Wang | Navis |
| [HIVE-2752](https://issues.apache.org/jira/browse/HIVE-2752) | Index names are case sensitive |  Minor | Indexing, Metastore, Query Processor | Philip Tromans | Navis |
| [HIVE-2627](https://issues.apache.org/jira/browse/HIVE-2627) | NPE on MAP-JOIN with a UDF in an external JAR |  Major | . | Jonathan Chang |  |
| [HIVE-2055](https://issues.apache.org/jira/browse/HIVE-2055) | Hive should add HBase classpath dependencies when available |  Major | HBase Handler | sajith v | Nick Dimiduk |
| [HIVE-1922](https://issues.apache.org/jira/browse/HIVE-1922) | semantic analysis error, when using group by and order by together |  Critical | Query Processor | Hongwei | Harish Butani |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-6196](https://issues.apache.org/jira/browse/HIVE-6196) | Incorrect package name for few tests. |  Major | Tests, UDF | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6010](https://issues.apache.org/jira/browse/HIVE-6010) | create a test that would ensure vectorization produces same results as non-vectorized execution |  Major | Tests, Vectorization | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5693](https://issues.apache.org/jira/browse/HIVE-5693) | Rewrite some tests to reduce test time |  Trivial | Tests | Navis | Navis |
| [HIVE-5637](https://issues.apache.org/jira/browse/HIVE-5637) | Sporadic minimr test failure |  Trivial | Tests | Navis | Navis |
| [HIVE-5537](https://issues.apache.org/jira/browse/HIVE-5537) | Add a test for ThriftCLIService async execution to ThriftCLIServiceTest |  Major | HiveServer2 | Vaibhav Gumashta |  |
| [HIVE-5290](https://issues.apache.org/jira/browse/HIVE-5290) | Some HCatalog tests have been behaving flaky |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5289](https://issues.apache.org/jira/browse/HIVE-5289) | PTest2 should disable checking of libraries during batch exec |  Major | . | Brock Noland | Brock Noland |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-6797](https://issues.apache.org/jira/browse/HIVE-6797) | Add protection against divide by zero in stats annotation |  Major | Query Processor, Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6761](https://issues.apache.org/jira/browse/HIVE-6761) | Hashcode computation does not use maximum parallelism for scalable dynamic partitioning |  Major | Query Processor | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6760](https://issues.apache.org/jira/browse/HIVE-6760) | Scalable dynamic partitioning should bail out properly for list bucketing |  Major | Query Processor | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6759](https://issues.apache.org/jira/browse/HIVE-6759) | Fix reading partial ORC files while they are being written |  Critical | . | Owen O'Malley | Owen O'Malley |
| [HIVE-6735](https://issues.apache.org/jira/browse/HIVE-6735) | Make scalable dynamic partitioning work in vectorized mode |  Major | Query Processor | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6714](https://issues.apache.org/jira/browse/HIVE-6714) | Fix getMapSize() of LazyMap |  Major | Serializers/Deserializers | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6688](https://issues.apache.org/jira/browse/HIVE-6688) | Fix groupby\_* qfile failures in hadoop-2 |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-6673](https://issues.apache.org/jira/browse/HIVE-6673) | sql std auth - show grant statement for all principals throws NPE |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-6625](https://issues.apache.org/jira/browse/HIVE-6625) | HiveServer2 running in http mode should support trusted proxy access |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6604](https://issues.apache.org/jira/browse/HIVE-6604) | Fix vectorized input to work with ACID |  Blocker | . | Owen O'Malley | Owen O'Malley |
| [HIVE-6567](https://issues.apache.org/jira/browse/HIVE-6567) | "show grant ... on all" fails with NPE |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-6541](https://issues.apache.org/jira/browse/HIVE-6541) | Need to write documentation for ACID work |  Major | Documentation | Alan Gates | Alan Gates |
| [HIVE-6514](https://issues.apache.org/jira/browse/HIVE-6514) | TestExecDriver/HCat Pig tests fails with -Phadoop-2 |  Major | Tests | Jason Dere | Jason Dere |
| [HIVE-6496](https://issues.apache.org/jira/browse/HIVE-6496) | Queries fail to Vectorize. |  Major | Vectorization | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6478](https://issues.apache.org/jira/browse/HIVE-6478) | SQL std auth - pass username from hiveserver2 to sessionstate |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-6475](https://issues.apache.org/jira/browse/HIVE-6475) | Implement support for appending to mutable tables in HCatalog |  Major | HCatalog, Metastore, Query Processor, Thrift API | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-6474](https://issues.apache.org/jira/browse/HIVE-6474) | SQL std auth - only db owner should be allowed to create table within a db |  Major | Authorization | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6460](https://issues.apache.org/jira/browse/HIVE-6460) | Need new "show" functionality for transactions |  Major | SQL | Alan Gates | Alan Gates |
| [HIVE-6458](https://issues.apache.org/jira/browse/HIVE-6458) | Add schema upgrade scripts for metastore changes related to permanent functions |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-6440](https://issues.apache.org/jira/browse/HIVE-6440) | sql std auth - add command to change owner of database |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-6434](https://issues.apache.org/jira/browse/HIVE-6434) | Restrict function create/drop to admin roles |  Major | Authorization, UDF | Jason Dere | Jason Dere |
| [HIVE-6433](https://issues.apache.org/jira/browse/HIVE-6433) | SQL std auth - allow grant/revoke roles if user has ADMIN OPTION |  Major | . | Thejas M Nair | Ashutosh Chauhan |
| [HIVE-6422](https://issues.apache.org/jira/browse/HIVE-6422) | SQL std auth - revert change for view keyword in grant statement |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-6417](https://issues.apache.org/jira/browse/HIVE-6417) | sql std auth - new users in admin role config should get added |  Major | Authorization | Thejas M Nair | Ashutosh Chauhan |
| [HIVE-6416](https://issues.apache.org/jira/browse/HIVE-6416) | Vectorized mathematical functions for decimal type. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6415](https://issues.apache.org/jira/browse/HIVE-6415) | Disallow transform clause in sql std authorization mode |  Major | Authorization | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6407](https://issues.apache.org/jira/browse/HIVE-6407) | Test authorization\_revoke\_table\_priv.q is failing on trunk |  Major | Tests | Ashutosh Chauhan | Thejas M Nair |
| [HIVE-6406](https://issues.apache.org/jira/browse/HIVE-6406) | Introduce immutable-table table property and if set, disallow insert-into |  Major | HCatalog, Metastore, Query Processor, Thrift API | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-6399](https://issues.apache.org/jira/browse/HIVE-6399) | bug in high-precision Decimal128 multiply |  Major | Query Processor, Vectorization | Eric Hanson | Eric Hanson |
| [HIVE-6386](https://issues.apache.org/jira/browse/HIVE-6386) | sql std auth - database should have an owner |  Major | Authorization, Metastore | Thejas M Nair | Ashutosh Chauhan |
| [HIVE-6380](https://issues.apache.org/jira/browse/HIVE-6380) | Specify jars/files when creating permanent UDFs |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-6351](https://issues.apache.org/jira/browse/HIVE-6351) | Support Pluggable Authentication Modules for HiveServer2 running in http mode |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6350](https://issues.apache.org/jira/browse/HIVE-6350) | Support LDAP authentication for HiveServer2 in http mode |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6349](https://issues.apache.org/jira/browse/HIVE-6349) | Column name map is broken |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6345](https://issues.apache.org/jira/browse/HIVE-6345) | Add DECIMAL support to vectorized JOIN operators |  Major | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-6344](https://issues.apache.org/jira/browse/HIVE-6344) | Add DECIMAL support to vectorized group by operator |  Major | . | Remus Rusanu | Remus Rusanu |
| [HIVE-6334](https://issues.apache.org/jira/browse/HIVE-6334) | sql std auth - pass username from sessionstate to v2 authorization interface |  Major | Authentication, Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-6333](https://issues.apache.org/jira/browse/HIVE-6333) | Generate vectorized plan for decimal expressions. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6330](https://issues.apache.org/jira/browse/HIVE-6330) | Metastore support for permanent UDFs |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-6319](https://issues.apache.org/jira/browse/HIVE-6319) | Insert, update, delete functionality needs a compactor |  Major | . | Alan Gates | Alan Gates |
| [HIVE-6318](https://issues.apache.org/jira/browse/HIVE-6318) | Document SSL support added to HiveServer2 |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6306](https://issues.apache.org/jira/browse/HIVE-6306) | HiveServer2 running in http mode should support for doAs functionality |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-6300](https://issues.apache.org/jira/browse/HIVE-6300) | Add documentation for stats configs to hive-default.xml.template |  Minor | Query Processor, Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-6258](https://issues.apache.org/jira/browse/HIVE-6258) | sql std auth - disallow cycles between roles |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-6254](https://issues.apache.org/jira/browse/HIVE-6254) | sql standard auth - use admin option specified in grant/revoke role statement |  Major | Authorization | Thejas M Nair | Ashutosh Chauhan |
| [HIVE-6250](https://issues.apache.org/jira/browse/HIVE-6250) | sql std auth - view authorization should not underlying table. More tests and fixes. |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-6243](https://issues.apache.org/jira/browse/HIVE-6243) | error in high-precision division for Decimal128 |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-6222](https://issues.apache.org/jira/browse/HIVE-6222) | Make Vector Group By operator abandon grouping if too many distinct keys |  Minor | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-6199](https://issues.apache.org/jira/browse/HIVE-6199) | sql std auth - authorize 'show roles' |  Major | Authorization | Thejas M Nair | Ashutosh Chauhan |
| [HIVE-6186](https://issues.apache.org/jira/browse/HIVE-6186) | error in vectorized Column-Column comparison filter for repeating case |  Major | Query Processor | Eric Hanson | Eric Hanson |
| [HIVE-6181](https://issues.apache.org/jira/browse/HIVE-6181) | support grant/revoke on views - parser changes |  Major | Authorization | Thejas M Nair | Ashutosh Chauhan |
| [HIVE-6178](https://issues.apache.org/jira/browse/HIVE-6178) | Implement vectorized reader for DECIMAL datatype for ORC format. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6167](https://issues.apache.org/jira/browse/HIVE-6167) | Allow user-defined functions to be qualified with database name |  Major | UDF | Jason Dere | Jason Dere |
| [HIVE-6161](https://issues.apache.org/jira/browse/HIVE-6161) | Fix TCLIService duplicate thrift definition for TColumn |  Minor | HiveServer2 | Jay Bennett | Xiao Meng |
| [HIVE-6156](https://issues.apache.org/jira/browse/HIVE-6156) | Implement vectorized reader for Date datatype for ORC format. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-6112](https://issues.apache.org/jira/browse/HIVE-6112) | SQL std auth - support new privileges INSERT, DELETE |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-6066](https://issues.apache.org/jira/browse/HIVE-6066) | Wincompat: describe\_comment\_nonascii.q failing on windows |  Major | Tests, Windows | Jason Dere | Jason Dere |
| [HIVE-6064](https://issues.apache.org/jira/browse/HIVE-6064) | Wincompat: windows path substitutions overridden by MiniMrShim.getConfiguration() on hadoop-2 |  Major | Tests, Windows | Jason Dere | Jason Dere |
| [HIVE-6060](https://issues.apache.org/jira/browse/HIVE-6060) | Define API for RecordUpdater and UpdateReader |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-6017](https://issues.apache.org/jira/browse/HIVE-6017) | Contribute Decimal128 high-performance decimal(p, s) package from Microsoft to Hive |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-6004](https://issues.apache.org/jira/browse/HIVE-6004) | Fix statistics annotation related test failures in hadoop2 |  Major | Query Processor, Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5979](https://issues.apache.org/jira/browse/HIVE-5979) | Failure in cast to timestamps. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5978](https://issues.apache.org/jira/browse/HIVE-5978) | Rollups not supported in vector mode. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5966](https://issues.apache.org/jira/browse/HIVE-5966) | Fix eclipse:eclipse post shim aggregation changes |  Major | . | Brock Noland | Szehon Ho |
| [HIVE-5960](https://issues.apache.org/jira/browse/HIVE-5960) | SQL std auth - special handling of PUBLIC role |  Major | Authorization | Thejas M Nair | Ashutosh Chauhan |
| [HIVE-5959](https://issues.apache.org/jira/browse/HIVE-5959) | SQL std auth - bootstrap SUPERUSER roles |  Major | Authorization | Thejas M Nair | Ashutosh Chauhan |
| [HIVE-5958](https://issues.apache.org/jira/browse/HIVE-5958) | SQL std auth - authorize statements that work with paths |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-5955](https://issues.apache.org/jira/browse/HIVE-5955) | SQL std auth - metastore api support for get\_privilege\_set api that checks specific role |  Major | Authorization | Thejas M Nair |  |
| [HIVE-5954](https://issues.apache.org/jira/browse/HIVE-5954) | SQL std auth - get\_privilege\_set should check role hierarchy |  Major | Authorization | Thejas M Nair |  |
| [HIVE-5952](https://issues.apache.org/jira/browse/HIVE-5952) | SQL std auth - authorize grant/revoke roles |  Major | Authorization | Thejas M Nair | Ashutosh Chauhan |
| [HIVE-5944](https://issues.apache.org/jira/browse/HIVE-5944) | SQL std auth - authorize show all roles, create role, drop role |  Major | Authorization | Thejas M Nair | Ashutosh Chauhan |
| [HIVE-5941](https://issues.apache.org/jira/browse/HIVE-5941) | SQL std auth - support 'show roles' |  Major | Authorization | Thejas M Nair | Navis |
| [HIVE-5931](https://issues.apache.org/jira/browse/HIVE-5931) | SQL std auth - add metastore get\_principals\_in\_role api, support SHOW PRINCIPALS role\_name |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-5930](https://issues.apache.org/jira/browse/HIVE-5930) | SQL std auth - implement set roles, show current roles |  Major | Authorization | Thejas M Nair | Ashutosh Chauhan |
| [HIVE-5929](https://issues.apache.org/jira/browse/HIVE-5929) | SQL std auth - Access control statement updates |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-5928](https://issues.apache.org/jira/browse/HIVE-5928) | Add a hive authorization plugin api that does not assume privileges needed |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-5923](https://issues.apache.org/jira/browse/HIVE-5923) | SQL std auth - parser changes |  Major | Authorization | Thejas M Nair | Thejas M Nair |
| [HIVE-5921](https://issues.apache.org/jira/browse/HIVE-5921) | Better heuristics for worst case statistics estimates for join, limit and filter operator |  Major | Query Processor, Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5915](https://issues.apache.org/jira/browse/HIVE-5915) | Shade Kryo dependency |  Blocker | . | Brock Noland | Brock Noland |
| [HIVE-5914](https://issues.apache.org/jira/browse/HIVE-5914) | PTest2 should support build-only args |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5898](https://issues.apache.org/jira/browse/HIVE-5898) | Make fetching of column statistics configurable |  Major | Query Processor, Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5897](https://issues.apache.org/jira/browse/HIVE-5897) | Fix hadoop2 execution environment Milestone 2 |  Major | . | Brock Noland | Vikram Dixit K |
| [HIVE-5880](https://issues.apache.org/jira/browse/HIVE-5880) | Rename HCatalog HBase Storage Handler artifact id |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-5849](https://issues.apache.org/jira/browse/HIVE-5849) | Improve the stats of operators based on heuristics in the absence of any column statistics |  Major | Query Processor, Statistics | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-5843](https://issues.apache.org/jira/browse/HIVE-5843) | Transaction manager for Hive |  Major | . | Alan Gates | Alan Gates |
| [HIVE-5842](https://issues.apache.org/jira/browse/HIVE-5842) | Fix issues with new paths to jar in hcatalog |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5826](https://issues.apache.org/jira/browse/HIVE-5826) | Add https support to HiveServer2 http mode |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-5761](https://issues.apache.org/jira/browse/HIVE-5761) | Implement vectorized support for the DATE data type |  Major | . | Eric Hanson | Teddy Choi |
| [HIVE-5759](https://issues.apache.org/jira/browse/HIVE-5759) | Implement vectorized support for COALESCE conditional expression |  Major | . | Eric Hanson | Jitendra Nath Pandey |
| [HIVE-5758](https://issues.apache.org/jira/browse/HIVE-5758) | Implement vectorized support for NOT IN filter |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-5756](https://issues.apache.org/jira/browse/HIVE-5756) | Implement vectorization support for IF conditional expression for long, double, timestamp, boolean and string inputs |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-5755](https://issues.apache.org/jira/browse/HIVE-5755) | Fix hadoop2 execution environment Milestone 1 |  Major | . | Brock Noland | Vikram Dixit K |
| [HIVE-5752](https://issues.apache.org/jira/browse/HIVE-5752) | log4j properties appear to have been lost in maven upgrade |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5741](https://issues.apache.org/jira/browse/HIVE-5741) | Fix binary packaging build eg include hcatalog, resolve pom issues |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5740](https://issues.apache.org/jira/browse/HIVE-5740) | Tar files should extract to the directory of the same name minus tar.gz |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5717](https://issues.apache.org/jira/browse/HIVE-5717) | Generate javadoc and source jars |  Major | . | Brock Noland | Szehon Ho |
| [HIVE-5716](https://issues.apache.org/jira/browse/HIVE-5716) | Fix broken tests after maven merge (1) |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5713](https://issues.apache.org/jira/browse/HIVE-5713) | Verify versions of libraries post maven merge |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5711](https://issues.apache.org/jira/browse/HIVE-5711) | Fix eclipse:eclipse maven goal |  Critical | Build Infrastructure | Brock Noland | Carl Steinbach |
| [HIVE-5699](https://issues.apache.org/jira/browse/HIVE-5699) | Add unit test for vectorized BETWEEN for timestamp inputs |  Minor | Vectorization | Eric Hanson | Eric Hanson |
| [HIVE-5697](https://issues.apache.org/jira/browse/HIVE-5697) | Correlation Optimizer may generate wrong plans for cases involving outer join |  Major | . | Yin Huai | Yin Huai |
| [HIVE-5691](https://issues.apache.org/jira/browse/HIVE-5691) | Intermediate columns are incorrectly initialized for partitioned tables. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5687](https://issues.apache.org/jira/browse/HIVE-5687) | Streaming support in Hive |  Major | . | Roshan Naik | Roshan Naik |
| [HIVE-5681](https://issues.apache.org/jira/browse/HIVE-5681) | Validation doesn't catch SMBMapJoin |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5675](https://issues.apache.org/jira/browse/HIVE-5675) | Ensure all artifacts are prefixed with hive- |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5674](https://issues.apache.org/jira/browse/HIVE-5674) | Merge latest trunk into branch and fix resulting tests |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5673](https://issues.apache.org/jira/browse/HIVE-5673) | Create profile to generate protobuf |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5653](https://issues.apache.org/jira/browse/HIVE-5653) | Vectorized Shuffle Join produces incorrect results |  Major | . | Remus Rusanu | Remus Rusanu |
| [HIVE-5642](https://issues.apache.org/jira/browse/HIVE-5642) | Exception in UDFs with large number of arguments. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5627](https://issues.apache.org/jira/browse/HIVE-5627) | Document 'usehcatalog' parameter on WebHCat calls |  Major | Documentation, WebHCat | Eugene Koifman | Lefty Leverenz |
| [HIVE-5624](https://issues.apache.org/jira/browse/HIVE-5624) | Create script for removing ant artifacts after merge |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5616](https://issues.apache.org/jira/browse/HIVE-5616) | fix saveVersion.sh to work on mac |  Major | . | Owen O'Malley | Owen O'Malley |
| [HIVE-5612](https://issues.apache.org/jira/browse/HIVE-5612) | Ability to compile odbc and re-generate generated code stored in source control |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5611](https://issues.apache.org/jira/browse/HIVE-5611) | Add assembly (i.e.) tar creation to pom |  Major | Build Infrastructure | Brock Noland | Szehon Ho |
| [HIVE-5610](https://issues.apache.org/jira/browse/HIVE-5610) | Merge maven branch into trunk |  Major | Build Infrastructure | Brock Noland | Brock Noland |
| [HIVE-5604](https://issues.apache.org/jira/browse/HIVE-5604) | Fix validation of nested expressions. |  Major | Vectorization | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5600](https://issues.apache.org/jira/browse/HIVE-5600) | Fix PTest2 Maven support |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5597](https://issues.apache.org/jira/browse/HIVE-5597) | Temporary fix for HIVE-5172 (possible NPE in TUGIContainingTransport) |  Major | Metastore | agate | agate |
| [HIVE-5594](https://issues.apache.org/jira/browse/HIVE-5594) | Exception in vectorized map join. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5583](https://issues.apache.org/jira/browse/HIVE-5583) | Implement support for IN (list-of-constants) filter in vectorized mode |  Major | Query Processor | Eric Hanson | Eric Hanson |
| [HIVE-5582](https://issues.apache.org/jira/browse/HIVE-5582) | Implement BETWEEN filter in vectorized mode |  Major | Query Processor | Eric Hanson | Eric Hanson |
| [HIVE-5566](https://issues.apache.org/jira/browse/HIVE-5566) | Milestone 6: All tests pass under hadoop 1 |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5558](https://issues.apache.org/jira/browse/HIVE-5558) | Support alternate join syntax |  Major | Query Processor | Harish Butani | Harish Butani |
| [HIVE-5557](https://issues.apache.org/jira/browse/HIVE-5557) | Push down qualifying Where clause predicates as join conditions |  Major | Query Processor | Harish Butani | Harish Butani |
| [HIVE-5556](https://issues.apache.org/jira/browse/HIVE-5556) | Pushdown join conditions |  Major | Query Processor | Harish Butani | Harish Butani |
| [HIVE-5525](https://issues.apache.org/jira/browse/HIVE-5525) | Vectorized query failing for partitioned tables. |  Major | Vectorization | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5517](https://issues.apache.org/jira/browse/HIVE-5517) | Implement end-to-end tests for vectorized string and math functions, and casts |  Minor | . | Eric Hanson | Eric Hanson |
| [HIVE-5503](https://issues.apache.org/jira/browse/HIVE-5503) | TopN optimization in VectorReduceSink |  Major | . | Jitendra Nath Pandey | Sergey Shelukhin |
| [HIVE-5494](https://issues.apache.org/jira/browse/HIVE-5494) | Vectorization throws exception with nested UDF. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5435](https://issues.apache.org/jira/browse/HIVE-5435) | Milestone 5: PTest2 maven support |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5430](https://issues.apache.org/jira/browse/HIVE-5430) | Refactor VectorizationContext and handle NOT expression with nulls. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5400](https://issues.apache.org/jira/browse/HIVE-5400) | Allow admins to disable compile and other commands |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5371](https://issues.apache.org/jira/browse/HIVE-5371) | Root pom is malformed |  Major | . | Brock Noland | Edward Capriolo |
| [HIVE-5365](https://issues.apache.org/jira/browse/HIVE-5365) | Boolean constants in the query are not handled correctly. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5335](https://issues.apache.org/jira/browse/HIVE-5335) | Milestone 4: Most tests pass under maven |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5334](https://issues.apache.org/jira/browse/HIVE-5334) | Milestone 3: Some tests pass under maven |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5333](https://issues.apache.org/jira/browse/HIVE-5333) | Milestone 2: Generate tests under maven |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5332](https://issues.apache.org/jira/browse/HIVE-5332) | Milestone 1: Compile source code under maven |  Major | . | Brock Noland | Brock Noland |
| [HIVE-5314](https://issues.apache.org/jira/browse/HIVE-5314) | Commit vectorization test data, comment/rename vectorization tests. |  Major | . | Jitendra Nath Pandey | Tony Murphy |
| [HIVE-5309](https://issues.apache.org/jira/browse/HIVE-5309) | Update hive-default.xml.template for vectorization flag; remove unused imports from MetaStoreUtils.java |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5308](https://issues.apache.org/jira/browse/HIVE-5308) | The code generation should be part of the build process. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5282](https://issues.apache.org/jira/browse/HIVE-5282) | Some tests don't use ${system:test.dfs.mkdir} for mkdir |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-5253](https://issues.apache.org/jira/browse/HIVE-5253) | Create component to compile and jar dynamic code |  Major | . | Edward Capriolo | Edward Capriolo |
| [HIVE-5252](https://issues.apache.org/jira/browse/HIVE-5252) | Add ql syntax for inline java code creation |  Major | . | Edward Capriolo | Edward Capriolo |
| [HIVE-5232](https://issues.apache.org/jira/browse/HIVE-5232) | Make JDBC use the new HiveServer2 async execution API by default |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-5230](https://issues.apache.org/jira/browse/HIVE-5230) | Better error reporting by async threads in HiveServer2 |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-5229](https://issues.apache.org/jira/browse/HIVE-5229) | Better thread management for HiveServer2 async threads |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-5226](https://issues.apache.org/jira/browse/HIVE-5226) | orc\_create.q and other orc tests fail on the branch. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5217](https://issues.apache.org/jira/browse/HIVE-5217) | Add long polling to asynchronous execution in HiveServer2 |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-5187](https://issues.apache.org/jira/browse/HIVE-5187) | Enhance explain to indicate vectorized execution of operators. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5178](https://issues.apache.org/jira/browse/HIVE-5178) | Wincompat : QTestUtil changes |  Major | Windows | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-5174](https://issues.apache.org/jira/browse/HIVE-5174) | Wincompat : junit.file.schema configurability |  Major | Windows | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-5173](https://issues.apache.org/jira/browse/HIVE-5173) | Wincompat : Add .cmd/text/crlf to .gitattributes |  Major | Windows | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-5152](https://issues.apache.org/jira/browse/HIVE-5152) | Vector operators should inherit from non-vector operators for code re-use. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5146](https://issues.apache.org/jira/browse/HIVE-5146) | FilterExprOrExpr changes the order of the rows |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-5126](https://issues.apache.org/jira/browse/HIVE-5126) | Make vector expressions serializable. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4989](https://issues.apache.org/jira/browse/HIVE-4989) | Consolidate and simplify vectorization code and test generation |  Major | Testing Infrastructure | Tony Murphy | Tony Murphy |
| [HIVE-4971](https://issues.apache.org/jira/browse/HIVE-4971) | Unit test failure in TestVectorTimestampExpressions |  Major | Tests, UDF | Jitendra Nath Pandey | Gopal V |
| [HIVE-4961](https://issues.apache.org/jira/browse/HIVE-4961) | Create bridge for custom UDFs to operate in vectorized mode |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-4959](https://issues.apache.org/jira/browse/HIVE-4959) | Vectorized plan generation should be added as an optimization transform. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4945](https://issues.apache.org/jira/browse/HIVE-4945) | Make RLIKE/REGEXP run end-to-end by updating VectorizationContext |  Major | . | Eric Hanson | Teddy Choi |
| [HIVE-4931](https://issues.apache.org/jira/browse/HIVE-4931) | MAX/MIN aggregates yield incorrect results |  Minor | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-4925](https://issues.apache.org/jira/browse/HIVE-4925) | Modify Hive build to enable compiling and running Hive with JDK7 |  Major | Build Infrastructure | Xuefu Zhang | Xuefu Zhang |
| [HIVE-4922](https://issues.apache.org/jira/browse/HIVE-4922) | create template for string scalar compared with string column |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-4909](https://issues.apache.org/jira/browse/HIVE-4909) | Vectorized ORC reader does not set isRepeating flag correctly when 1’s are present is the input stream |  Major | . | Sarvesh Sakalanaga | Sarvesh Sakalanaga |
| [HIVE-4898](https://issues.apache.org/jira/browse/HIVE-4898) | make vectorized math functions work end-to-end (update VectorizationContext.java) |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-4887](https://issues.apache.org/jira/browse/HIVE-4887) | sql standard auth should disable commands that impose security risk |  Major | Authorization, Security | Thejas M Nair | Ashutosh Chauhan |
| [HIVE-4884](https://issues.apache.org/jira/browse/HIVE-4884) | ORC TimestampTreeReader.nextVector() off by a second when time in fractional |  Major | File Formats | Gopal V | Gopal V |
| [HIVE-4859](https://issues.apache.org/jira/browse/HIVE-4859) | String column comparison classes should be renamed. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4850](https://issues.apache.org/jira/browse/HIVE-4850) | Implement vectorized JOIN operators |  Major | . | Remus Rusanu | Remus Rusanu |
| [HIVE-4848](https://issues.apache.org/jira/browse/HIVE-4848) | std, stddev and stddev\_pop aggregates on double/float fail to vectorize |  Trivial | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-4846](https://issues.apache.org/jira/browse/HIVE-4846) | Implement Vectorized Limit Operator |  Major | . | Sarvesh Sakalanaga | Sarvesh Sakalanaga |
| [HIVE-4828](https://issues.apache.org/jira/browse/HIVE-4828) | Make vectorization branch compile under JDK 7 |  Major | . | Dmitriy V. Ryaboy | Ashutosh Chauhan |
| [HIVE-4823](https://issues.apache.org/jira/browse/HIVE-4823) | implement vectorized TRIM(), LTRIM(), RTRIM() |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-4822](https://issues.apache.org/jira/browse/HIVE-4822) | implement vectorized math functions |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-4821](https://issues.apache.org/jira/browse/HIVE-4821) | Implement vectorized type casting for all types |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-4794](https://issues.apache.org/jira/browse/HIVE-4794) | Unit e2e tests for vectorization |  Major | . | Tony Murphy | Tony Murphy |
| [HIVE-4787](https://issues.apache.org/jira/browse/HIVE-4787) | make vectorized LOWER(), UPPER(), LENGTH() work end-to-end; support expression input for vectorized LIKE |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-4786](https://issues.apache.org/jira/browse/HIVE-4786) | Incorrect aggregate results |  Major | . | Tony Murphy | Remus Rusanu |
| [HIVE-4774](https://issues.apache.org/jira/browse/HIVE-4774) | Hive Runtime Error while closing operators: java.lang.NullPointerException |  Major | . | Tony Murphy | Remus Rusanu |
| [HIVE-4770](https://issues.apache.org/jira/browse/HIVE-4770) | Null Pointer Exception in Group By Operator |  Major | . | Tony Murphy | Jitendra Nath Pandey |
| [HIVE-4769](https://issues.apache.org/jira/browse/HIVE-4769) | Vectorized ORC reader does not handle absence of column present stream correctly. |  Major | . | Sarvesh Sakalanaga | Sarvesh Sakalanaga |
| [HIVE-4764](https://issues.apache.org/jira/browse/HIVE-4764) | Support Kerberos HTTP authentication for HiveServer2 running in http mode |  Major | HiveServer2 | Thejas M Nair | Vaibhav Gumashta |
| [HIVE-4758](https://issues.apache.org/jira/browse/HIVE-4758) | NULLs and record separators broken with vectorization branch intermediate outputs |  Major | Query Processor | Gopal V | Gopal V |
| [HIVE-4754](https://issues.apache.org/jira/browse/HIVE-4754) | OrcInputFormat should be enhanced to provide vectorized input. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4745](https://issues.apache.org/jira/browse/HIVE-4745) | java.lang.RuntimeException: Hive Runtime Error while closing operators: java.lang.ClassCastException: org.apache.hadoop.io.NullWritable cannot be cast to org.apache.hadoop.hive.serde2.io.DoubleWritable |  Major | . | Tony Murphy | Jitendra Nath Pandey |
| [HIVE-4744](https://issues.apache.org/jira/browse/HIVE-4744) | Unary Minus Expression Throwing java.lang.NullPointerException |  Major | . | Tony Murphy | Jitendra Nath Pandey |
| [HIVE-4727](https://issues.apache.org/jira/browse/HIVE-4727) | Optimize ORC StringTreeReader::nextVector to not create dictionary of strings for each call to nextVector |  Minor | . | Sarvesh Sakalanaga | Sarvesh Sakalanaga |
| [HIVE-4718](https://issues.apache.org/jira/browse/HIVE-4718) | array out of bounds exception near VectorHashKeyWrapper.getBytes() with 2 column GROUP BY |  Major | Query Processor | Eric Hanson | Remus Rusanu |
| [HIVE-4716](https://issues.apache.org/jira/browse/HIVE-4716) | Classcast exception with two group by keys of types string and tinyint. |  Major | . | Jitendra Nath Pandey | Remus Rusanu |
| [HIVE-4714](https://issues.apache.org/jira/browse/HIVE-4714) | Vectorized Sum of scalar subtract column returns negative result when positive exected |  Major | . | Tony Murphy | Jitendra Nath Pandey |
| [HIVE-4706](https://issues.apache.org/jira/browse/HIVE-4706) | Query on Table with partition columns fail with AlreadyBeingCreatedException |  Major | . | Sarvesh Sakalanaga | Sarvesh Sakalanaga |
| [HIVE-4704](https://issues.apache.org/jira/browse/HIVE-4704) | TestCase FakeVectorRowBatchFromObjectIterables error |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-4702](https://issues.apache.org/jira/browse/HIVE-4702) | Unit test failure TestVectorSelectOperator |  Major | Query Processor | Eric Hanson | Jitendra Nath Pandey |
| [HIVE-4699](https://issues.apache.org/jira/browse/HIVE-4699) | Integrate basic UDFs for Timesamp |  Minor | UDF | Gopal V | Gopal V |
| [HIVE-4695](https://issues.apache.org/jira/browse/HIVE-4695) | Unit test failure in TestColumnColumnOperationVectorExpressionEvaluation |  Major | . | Jitendra Nath Pandey | Eric Hanson |
| [HIVE-4694](https://issues.apache.org/jira/browse/HIVE-4694) | Fix ORC TestVectorizedORCReader testcase for Timestamps |  Minor | Tests | Gopal V | Gopal V |
| [HIVE-4688](https://issues.apache.org/jira/browse/HIVE-4688) | NPE in writing null values. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4686](https://issues.apache.org/jira/browse/HIVE-4686) | Max on float returning wrong results |  Major | . | Tony Murphy | Remus Rusanu |
| [HIVE-4685](https://issues.apache.org/jira/browse/HIVE-4685) | query using LIKE does not vectorize |  Major | Query Processor | Eric Hanson | Eric Hanson |
| [HIVE-4684](https://issues.apache.org/jira/browse/HIVE-4684) | Query with filter constant on left of "=" and column expression on right does not vectorize |  Major | Query Processor | Eric Hanson | Jitendra Nath Pandey |
| [HIVE-4681](https://issues.apache.org/jira/browse/HIVE-4681) | Fix ORC TimestampTreeReader.nextVector() to handle milli-nano math corectly |  Major | . | Gopal V | Gopal V |
| [HIVE-4678](https://issues.apache.org/jira/browse/HIVE-4678) | second clause of AND, OR filter not applied for vectorized execution |  Major | Query Processor | Eric Hanson | Jitendra Nath Pandey |
| [HIVE-4673](https://issues.apache.org/jira/browse/HIVE-4673) | Use VectorExpessionWriter to write column vectors into Writables. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4668](https://issues.apache.org/jira/browse/HIVE-4668) | wrong results for query with modulo (%) in WHERE clause filter |  Major | Query Processor | Eric Hanson | Sarvesh Sakalanaga |
| [HIVE-4667](https://issues.apache.org/jira/browse/HIVE-4667) | tpch query 1 fails with java.lang.ClassCastException |  Major | . | Tony Murphy | Jitendra Nath Pandey |
| [HIVE-4666](https://issues.apache.org/jira/browse/HIVE-4666) | Count(*) over tpch lineitem ORC results in Error: Java heap space |  Major | . | Tony Murphy | Sarvesh Sakalanaga |
| [HIVE-4665](https://issues.apache.org/jira/browse/HIVE-4665) | error at VectorExecMapper.close in group-by-agg query over ORC, vectorized |  Major | Query Processor | Eric Hanson | Jitendra Nath Pandey |
| [HIVE-4655](https://issues.apache.org/jira/browse/HIVE-4655) | Vectorization not working with negative constants, hive doesn't fold constants. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4652](https://issues.apache.org/jira/browse/HIVE-4652) |  VectorHashKeyWrapperBatch.java should be in vector package (instead of exec) |  Minor | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-4651](https://issues.apache.org/jira/browse/HIVE-4651) | TestVectorGroupByOperator causes asserts in StandardStructObjectInspector.init |  Minor | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-4649](https://issues.apache.org/jira/browse/HIVE-4649) | Unit test failure in TestColumnScalarOperationVectorExpressionEvaluation |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4642](https://issues.apache.org/jira/browse/HIVE-4642) | Implement vectorized RLIKE and REGEXP filter expressions |  Major | . | Eric Hanson | Teddy Choi |
| [HIVE-4640](https://issues.apache.org/jira/browse/HIVE-4640) | CommonOrcInputFormat should be the default input format for Orc tables. |  Major | . | Jitendra Nath Pandey | Sarvesh Sakalanaga |
| [HIVE-4637](https://issues.apache.org/jira/browse/HIVE-4637) | Fix VectorUDAFSum.txt to honor the expected vector column type |  Minor | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-4624](https://issues.apache.org/jira/browse/HIVE-4624) | Integrate Vectorized Substr into Vectorized QE |  Major | . | Timothy Chen | Eric Hanson |
| [HIVE-4612](https://issues.apache.org/jira/browse/HIVE-4612) | Vectorized aggregates do not emit proper rows in presence of GROUP BY |  Major | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-4608](https://issues.apache.org/jira/browse/HIVE-4608) | Vectorized UDFs for Timestamp in nanoseconds |  Minor | . | Gopal V | Gopal V |
| [HIVE-4606](https://issues.apache.org/jira/browse/HIVE-4606) | Implement vector group by hash spill |  Major | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-4603](https://issues.apache.org/jira/browse/HIVE-4603) | VectorSelectOperator projections change the index of columns for subsequent operators. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4602](https://issues.apache.org/jira/browse/HIVE-4602) | Enable running all hive e2e tests under vectorization |  Major | . | Tony Murphy | Tony Murphy |
| [HIVE-4599](https://issues.apache.org/jira/browse/HIVE-4599) | VectorGroupByOperator steals the non-vectorized children and crashes query if vectorization fails |  Major | Query Processor | Remus Rusanu | Jitendra Nath Pandey |
| [HIVE-4596](https://issues.apache.org/jira/browse/HIVE-4596) | Fix serialization exceptions in VectorGroupByOperator |  Minor | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-4595](https://issues.apache.org/jira/browse/HIVE-4595) | Support strings in GROUP BY keys |  Major | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-4592](https://issues.apache.org/jira/browse/HIVE-4592) | fix failure to set output isNull to true and other NULL propagation issues; update arithmetic tests |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-4553](https://issues.apache.org/jira/browse/HIVE-4553) | Column Column, and Column Scalar vectorized execution tests |  Major | . | Tony Murphy | Tony Murphy |
| [HIVE-4552](https://issues.apache.org/jira/browse/HIVE-4552) | Vectorized RecordReader for ORC does not set the ColumnVector.IsRepeating correctly |  Major | . | Sarvesh Sakalanaga | Sarvesh Sakalanaga |
| [HIVE-4548](https://issues.apache.org/jira/browse/HIVE-4548) | Speed up vectorized LIKE filter for special cases abc%, %abc and %abc% |  Minor | . | Eric Hanson | Teddy Choi |
| [HIVE-4544](https://issues.apache.org/jira/browse/HIVE-4544) | VectorizedRowBatchCtx::CreateVectorizedRowBatch should create only the projected columns and not all columns |  Minor | . | Sarvesh Sakalanaga | Sarvesh Sakalanaga |
| [HIVE-4541](https://issues.apache.org/jira/browse/HIVE-4541) | Run check-style on the branch and fix style issues. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4539](https://issues.apache.org/jira/browse/HIVE-4539) | Move test utils and fix build to remove false test failures |  Major | Testing Infrastructure, Tests | Tony Murphy | Tony Murphy |
| [HIVE-4537](https://issues.apache.org/jira/browse/HIVE-4537) | select * fails on orc table when vectorization is enabled |  Major | Query Processor | Tony Murphy | Sarvesh Sakalanaga |
| [HIVE-4534](https://issues.apache.org/jira/browse/HIVE-4534) | IsNotNull and NotCol incorrectly handle nulls. |  Major | . | Eric Hanson | Jitendra Nath Pandey |
| [HIVE-4529](https://issues.apache.org/jira/browse/HIVE-4529) | Add partition support for vectorized ORC Input format |  Major | . | Sarvesh Sakalanaga | Sarvesh Sakalanaga |
| [HIVE-4514](https://issues.apache.org/jira/browse/HIVE-4514) | Handle constants in projection |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4512](https://issues.apache.org/jira/browse/HIVE-4512) | The vectorized plan is not picking right expression class for string concatenation. |  Major | . | Jitendra Nath Pandey | Eric Hanson |
| [HIVE-4511](https://issues.apache.org/jira/browse/HIVE-4511) | Vectorized reader support for Byte Boolean and Timestamp. |  Major | File Formats | Jitendra Nath Pandey | Sarvesh Sakalanaga |
| [HIVE-4509](https://issues.apache.org/jira/browse/HIVE-4509) | Integer division should be cast to double. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4495](https://issues.apache.org/jira/browse/HIVE-4495) | Implement vectorized string substr |  Major | . | Timothy Chen | Timothy Chen |
| [HIVE-4493](https://issues.apache.org/jira/browse/HIVE-4493) | Implement vectorized filter for string column compared to string column |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-4483](https://issues.apache.org/jira/browse/HIVE-4483) | Input format to read vector data from RC file |  Major | . | Sarvesh Sakalanaga | Sarvesh Sakalanaga |
| [HIVE-4481](https://issues.apache.org/jira/browse/HIVE-4481) | Vectorized row batch should be initialized with additional columns to hold intermediate output. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4480](https://issues.apache.org/jira/browse/HIVE-4480) | Implement partition support for vectorized query execution |  Major | . | Sarvesh Sakalanaga | Sarvesh Sakalanaga |
| [HIVE-4479](https://issues.apache.org/jira/browse/HIVE-4479) | Child expressions are not being evaluated hierarchically in a few templates. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4477](https://issues.apache.org/jira/browse/HIVE-4477) | remove redundant copy of arithmetic filter unit test testColOpScalarNumericFilterNullAndRepeatingLogic |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-4472](https://issues.apache.org/jira/browse/HIVE-4472) | OR, NOT Filter logic can lose an array, and always takes time O(VectorizedRowBatch.DEFAULT\_SIZE) |  Major | . | Eric Hanson | Jitendra Nath Pandey |
| [HIVE-4462](https://issues.apache.org/jira/browse/HIVE-4462) | Finish support for modulo (%) operator for vectorized arithmetic |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-4457](https://issues.apache.org/jira/browse/HIVE-4457) | Queries not supported by vectorized code path should fall back to non vector path. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4453](https://issues.apache.org/jira/browse/HIVE-4453) | Input format to read vector data from ORC |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4452](https://issues.apache.org/jira/browse/HIVE-4452) | Add support for COUNT(*) in vector aggregates |  Major | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-4451](https://issues.apache.org/jira/browse/HIVE-4451) | Add support for string column type vector aggregates: COUNT, MIN and MAX |  Major | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-4450](https://issues.apache.org/jira/browse/HIVE-4450) | Extend Vector Aggregates to support GROUP BY |  Major | Query Processor | Remus Rusanu | Remus Rusanu |
| [HIVE-4431](https://issues.apache.org/jira/browse/HIVE-4431) | Implement vectorized string concatenation |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-4416](https://issues.apache.org/jira/browse/HIVE-4416) | Vectorized expression for unary minus. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4405](https://issues.apache.org/jira/browse/HIVE-4405) | Generate vectorized execution plan |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4404](https://issues.apache.org/jira/browse/HIVE-4404) | Vectorized filter and select operators |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4385](https://issues.apache.org/jira/browse/HIVE-4385) | Implement vectorized LIKE filter |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-4384](https://issues.apache.org/jira/browse/HIVE-4384) | Implement vectorized string functions UPPER(), LOWER(), LENGTH() |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-4383](https://issues.apache.org/jira/browse/HIVE-4383) | Implement vectorized string column-scalar filters |  Major | . | Eric Hanson | Eric Hanson |
| [HIVE-4381](https://issues.apache.org/jira/browse/HIVE-4381) | Implement vectorized aggregation expressions |  Major | Query Processor | Jitendra Nath Pandey | Remus Rusanu |
| [HIVE-4380](https://issues.apache.org/jira/browse/HIVE-4380) | Implement Vectorized Scalar-Column expressions |  Major | . | Jitendra Nath Pandey | Eric Hanson |
| [HIVE-4379](https://issues.apache.org/jira/browse/HIVE-4379) | Implement Vectorized Column-Column expressions |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4370](https://issues.apache.org/jira/browse/HIVE-4370) | Change ORC tree readers to return batches of rows instead of a row |  Major | . | Sarvesh Sakalanaga | Sarvesh Sakalanaga |
| [HIVE-4284](https://issues.apache.org/jira/browse/HIVE-4284) | Implement class for vectorized row batch |  Major | Query Processor | Jitendra Nath Pandey | Eric Hanson |
| [HIVE-4283](https://issues.apache.org/jira/browse/HIVE-4283) | Implement vectorized logical expressions. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-4282](https://issues.apache.org/jira/browse/HIVE-4282) | Implement vectorized column-scalar expressions |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HIVE-3746](https://issues.apache.org/jira/browse/HIVE-3746) | Fix HS2 ResultSet Serialization Performance Regression |  Major | HiveServer2, Server Infrastructure | Carl Steinbach | Navis |
| [HIVE-2436](https://issues.apache.org/jira/browse/HIVE-2436) | Update project naming and description in Hive website |  Major | . | John Sichi | Brock Noland |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-5938](https://issues.apache.org/jira/browse/HIVE-5938) | Remove apache.mina dependency for test |  Trivial | Tests | Navis | Navis |
| [HIVE-3015](https://issues.apache.org/jira/browse/HIVE-3015) | org.apache.hadoop.hive.jdbc.HiveResultSetMetaData.getColumnClassName Method not supported |  Major | JDBC | Keigun S. Moon | Navis |
| [HIVE-6849](https://issues.apache.org/jira/browse/HIVE-6849) | Golden files update for hadoop-2 |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6827](https://issues.apache.org/jira/browse/HIVE-6827) | Disable insecure commands with std sql auth |  Major | Authorization, Security | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6767](https://issues.apache.org/jira/browse/HIVE-6767) | Golden file updates for hadoop-2 |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6723](https://issues.apache.org/jira/browse/HIVE-6723) | Tez golden files need to be updated |  Major | Tests, Tez | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-6629](https://issues.apache.org/jira/browse/HIVE-6629) | Change SET ROLE NONE to SET ROLE ALL |  Blocker | . | Brock Noland | Brock Noland |
| [HIVE-6368](https://issues.apache.org/jira/browse/HIVE-6368) | Document parquet on hive wiki |  Critical | Serializers/Deserializers | Brock Noland | Brock Noland |
| [HIVE-6197](https://issues.apache.org/jira/browse/HIVE-6197) | Use paths consistently - VI |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-5886](https://issues.apache.org/jira/browse/HIVE-5886) | [Refactor] Remove unused class JobCloseFeedback |  Major | Query Processor | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-5706](https://issues.apache.org/jira/browse/HIVE-5706) | Move a few numeric UDFs to generic implementations |  Major | UDF | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5704](https://issues.apache.org/jira/browse/HIVE-5704) | A couple of generic UDFs are not in the right folder/package |  Trivial | UDF | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5670](https://issues.apache.org/jira/browse/HIVE-5670) | annoying ZK exceptions are annoying |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-5644](https://issues.apache.org/jira/browse/HIVE-5644) | Update PMC status for Thejas and Brock |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-5565](https://issues.apache.org/jira/browse/HIVE-5565) | Limit Hive decimal type maximum precision and scale to 38 |  Major | Types | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5564](https://issues.apache.org/jira/browse/HIVE-5564) | Need to accomodate table decimal columns that were defined prior to HIVE-3976 |  Major | Types | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5500](https://issues.apache.org/jira/browse/HIVE-5500) | Update Brock Noland's username on credits page |  Minor | . | Brock Noland | Brock Noland |
| [HIVE-5450](https://issues.apache.org/jira/browse/HIVE-5450) | pTest2 TestReportParser is failing due to .svn directory |  Major | Testing Infrastructure | Ashutosh Chauhan | Brock Noland |
| [HIVE-5443](https://issues.apache.org/jira/browse/HIVE-5443) | Few hadoop2 .q.out needs to be updated |  Major | . | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-5355](https://issues.apache.org/jira/browse/HIVE-5355) | JDBC support for decimal precision/scale |  Major | Serializers/Deserializers | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5354](https://issues.apache.org/jira/browse/HIVE-5354) | Decimal precision/scale support in ORC file |  Major | Serializers/Deserializers | Xuefu Zhang | Xuefu Zhang |
| [HIVE-5154](https://issues.apache.org/jira/browse/HIVE-5154) | Remove unnecessary array creation in ReduceSinkOperator |  Trivial | Query Processor | Navis | Navis |
| [HIVE-5107](https://issues.apache.org/jira/browse/HIVE-5107) | Change hive's build to maven |  Major | . | Edward Capriolo | Edward Capriolo |
| [HIVE-4862](https://issues.apache.org/jira/browse/HIVE-4862) | Create automatic Precommit testing |  Major | . | Brock Noland | Brock Noland |
| [HIVE-4583](https://issues.apache.org/jira/browse/HIVE-4583) | Make Hive compile and run with JDK7 |  Major | . | Xuefu Zhang | Xuefu Zhang |


