
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

## Release 1.2.1 - 2015-06-26

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10636](https://issues.apache.org/jira/browse/HIVE-10636) | CASE comparison operator rotation optimization |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-10716](https://issues.apache.org/jira/browse/HIVE-10716) | Fold case/when udf for expression involving nulls in filter operator. |  Major | Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-8769](https://issues.apache.org/jira/browse/HIVE-8769) | Physical optimizer : Incorrect CE results in a shuffle join instead of a Map join (PK/FK pattern not detected) |  Major | Physical Optimizer | Mostafa Mokhtar | Pengcheng Xiong |
| [HIVE-10812](https://issues.apache.org/jira/browse/HIVE-10812) | Scaling PK/FK's selectivity for stats annotation |  Major | Physical Optimizer, Statistics | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-10900](https://issues.apache.org/jira/browse/HIVE-10900) | Fix the indeterministic stats for some hive queries |  Minor | Tests | Pengcheng Xiong | Pengcheng Xiong |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10605](https://issues.apache.org/jira/browse/HIVE-10605) | Make hive version number update automatically in webhcat-default.xml during hive tar generation |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-9828](https://issues.apache.org/jira/browse/HIVE-9828) | Semantic analyzer does not capture view parent entity for tables referred in view with union all |  Major | Parser | Prasad Mujumdar | Prasad Mujumdar |
| [HIVE-10606](https://issues.apache.org/jira/browse/HIVE-10606) | Divide by zero error in HybridHashTableContainer |  Major | Query Processor | Jason Dere | Jason Dere |
| [HIVE-10672](https://issues.apache.org/jira/browse/HIVE-10672) | Analyze command on a table using row format serde JsonSerDe fails with NoClassDefFoundError |  Major | Serializers/Deserializers | Jason Dere | Jason Dere |
| [HIVE-10688](https://issues.apache.org/jira/browse/HIVE-10688) | constant folding is broken for case-when udf |  Major | Logical Optimizer | Jagruti Varia | Ashutosh Chauhan |
| [HIVE-10679](https://issues.apache.org/jira/browse/HIVE-10679) | JsonSerde ignores varchar and char size limit specified during table creation |  Major | Serializers/Deserializers | Jagruti Varia | Jason Dere |
| [HIVE-10559](https://issues.apache.org/jira/browse/HIVE-10559) | IndexOutOfBoundsException with RemoveDynamicPruningBySize |  Major | Tez | Wei Zheng | Wei Zheng |
| [HIVE-10696](https://issues.apache.org/jira/browse/HIVE-10696) | TestAddResource tests are non-portable |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10719](https://issues.apache.org/jira/browse/HIVE-10719) | Hive metastore failure when alter table rename is attempted. |  Major | Metastore | Vikram Dixit K | Vikram Dixit K |
| [HIVE-10675](https://issues.apache.org/jira/browse/HIVE-10675) | Provide option to skip Accumulo related Hive tests in itests directory |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10727](https://issues.apache.org/jira/browse/HIVE-10727) | Import throws error message "org.apache.thrift.protocol.TProtocolException: Required field 'filesAdded' is unset!" |  Major | . | Balu Vellanki | Sushanth Sowmyan |
| [HIVE-10628](https://issues.apache.org/jira/browse/HIVE-10628) | Incorrect result when vectorized native mapjoin is enabled using null safe operators \<=\> |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-10745](https://issues.apache.org/jira/browse/HIVE-10745) | Better null handling by Vectorizer |  Major | Vectorization | Jagruti Varia | Ashutosh Chauhan |
| [HIVE-10627](https://issues.apache.org/jira/browse/HIVE-10627) | Queries fail with Failed to breakup Windowing invocations into Groups |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-10686](https://issues.apache.org/jira/browse/HIVE-10686) | java.lang.IndexOutOfBoundsException for query with rank() over(partition ...) |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-10741](https://issues.apache.org/jira/browse/HIVE-10741) | count distinct rewrite is not firing |  Major | Query Planning | Mostafa Mokhtar | Ashutosh Chauhan |
| [HIVE-10659](https://issues.apache.org/jira/browse/HIVE-10659) | Beeline command which contains semi-colon as a non-command terminator will fail |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10664](https://issues.apache.org/jira/browse/HIVE-10664) | Unit tests run fail in windows because of  illegal escape character in file path |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10724](https://issues.apache.org/jira/browse/HIVE-10724) | WebHCat e2e test TestStreaming\_5 fails on Windows |  Major | Tests | Deepesh Khandelwal | Deepesh Khandelwal |
| [HIVE-10776](https://issues.apache.org/jira/browse/HIVE-10776) | Schema on insert for bucketed tables throwing NullPointerException |  Major | Hive | Aswathy Chellammal Sreekumar | Eugene Koifman |
| [HIVE-10789](https://issues.apache.org/jira/browse/HIVE-10789) | union distinct query with NULL constant on both the sides throws "Unsuported vector output type: void" error |  Critical | Hive | Matt McCline | Matt McCline |
| [HIVE-10677](https://issues.apache.org/jira/browse/HIVE-10677) | hive.exec.parallel=true has problem when it is used for analyze table column stats |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-10107](https://issues.apache.org/jira/browse/HIVE-10107) | Union All : Vertex missing stats resulting in OOM and in-efficient plans |  Major | Physical Optimizer | Mostafa Mokhtar | Pengcheng Xiong |
| [HIVE-10805](https://issues.apache.org/jira/browse/HIVE-10805) | OOM in vectorized reduce |  Blocker | . | Matt McCline | Matt McCline |
| [HIVE-10801](https://issues.apache.org/jira/browse/HIVE-10801) | 'drop view' fails throwing java.lang.NullPointerException |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10813](https://issues.apache.org/jira/browse/HIVE-10813) | Fix current test failures after HIVE-8769 |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-10753](https://issues.apache.org/jira/browse/HIVE-10753) | hs2 jdbc url - wrong connection string cause  error on beeline/jdbc/odbc client, misleading message |  Major | Beeline, JDBC | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10768](https://issues.apache.org/jira/browse/HIVE-10768) | In QTestGenTask.execute() we should not throw an exception right away if we are unable to clean any old files |  Major | Testing Infrastructure | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10760](https://issues.apache.org/jira/browse/HIVE-10760) | Templeton: HCatalog Get Column for Non-existent column returns Server Error (500) rather than Not Found(404) |  Minor | HCatalog, Hive, WebHCat | Lekha Thota | Lekha Thota |
| [HIVE-10711](https://issues.apache.org/jira/browse/HIVE-10711) | Tez HashTableLoader attempts to allocate more memory than available when HIVECONVERTJOINNOCONDITIONALTASKTHRESHOLD exceeds process max mem |  Major | Tez | Jason Dere | Mostafa Mokhtar |
| [HIVE-10828](https://issues.apache.org/jira/browse/HIVE-10828) | Insert with schema and dynamic partitions NullPointerException |  Major | Hive | Aswathy Chellammal Sreekumar | Eugene Koifman |
| [HIVE-10829](https://issues.apache.org/jira/browse/HIVE-10829) | ATS hook fails for explainTask |  Minor | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-10840](https://issues.apache.org/jira/browse/HIVE-10840) | NumberFormatException while running analyze table partition compute statics query |  Major | Statistics | Jagruti Varia | Ashutosh Chauhan |
| [HIVE-10811](https://issues.apache.org/jira/browse/HIVE-10811) | RelFieldTrimmer throws NoSuchElementException in some cases |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-10244](https://issues.apache.org/jira/browse/HIVE-10244) | Vectorization : TPC-DS Q80 fails with java.lang.ClassCastException when hive.vectorized.execution.reduce.enabled is enabled |  Major | Vectorization | Mostafa Mokhtar | Matt McCline |
| [HIVE-10684](https://issues.apache.org/jira/browse/HIVE-10684) | Fix the unit test failures for HIVE-7553 after HIVE-10674 removed the binary jar files |  Major | Tests | Ferdinand Xu | Ferdinand Xu |
| [HIVE-10839](https://issues.apache.org/jira/browse/HIVE-10839) | TestHCatLoaderEncryption.\* tests fail in windows because of path related issues |  Major | Tests | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10689](https://issues.apache.org/jira/browse/HIVE-10689) | HS2 metadata api calls should use HiveAuthorizer interface for authorization |  Major | Authorization, SQLStandardAuthorization | Thejas M Nair | Thejas M Nair |
| [HIVE-10678](https://issues.apache.org/jira/browse/HIVE-10678) | update sql standard authorization configuration whitelist - more optimization flags |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-10563](https://issues.apache.org/jira/browse/HIVE-10563) | MiniTezCliDriver tests ordering issues |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10858](https://issues.apache.org/jira/browse/HIVE-10858) | WebHCat specific resources should be added to HADOOP\_CLASSPATH first |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-10819](https://issues.apache.org/jira/browse/HIVE-10819) | SearchArgumentImpl for Timestamp is broken by HIVE-10286 |  Major | . | Daniel Dai | Daniel Dai |
| [HIVE-10528](https://issues.apache.org/jira/browse/HIVE-10528) | Hiveserver2 in HTTP mode is not applying auth\_to\_local rules |  Major | HiveServer2 | Abdelrahman Shettia | Abdelrahman Shettia |
| [HIVE-10862](https://issues.apache.org/jira/browse/HIVE-10862) | TestHiveAuthorizerShowFilters tests fail when run in sequence |  Major | Tests | Thejas M Nair | Thejas M Nair |
| [HIVE-9842](https://issues.apache.org/jira/browse/HIVE-9842) | Enable session/operation timeout by default in HiveServer2 |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-10843](https://issues.apache.org/jira/browse/HIVE-10843) | desc database and show tables commands don't pass db to HiveAuthorizer check |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-10875](https://issues.apache.org/jira/browse/HIVE-10875) | Select query with view in subquery adds underlying table as direct input |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-10877](https://issues.apache.org/jira/browse/HIVE-10877) | TestUtil class name confuses ptest2 |  Major | Tests | Thejas M Nair | Thejas M Nair |
| [HIVE-10845](https://issues.apache.org/jira/browse/HIVE-10845) | TezJobMonitor uses killedTaskCount instead of killedTaskAttemptCount |  Major | . | Siddharth Seth | Siddharth Seth |
| [HIVE-10885](https://issues.apache.org/jira/browse/HIVE-10885) | with vectorization enabled join operation involving interval\_day\_time fails |  Major | . | Jagruti Varia | Matt McCline |
| [HIVE-10887](https://issues.apache.org/jira/browse/HIVE-10887) | TestCliDriver tests ordering issues with Mac and CentOS |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10892](https://issues.apache.org/jira/browse/HIVE-10892) | TestHCatClient should not accept external metastore param from -Dhive.metastore.uris |  Minor | Tests | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-10919](https://issues.apache.org/jira/browse/HIVE-10919) | Windows: create table with JsonSerDe failed via beeline unless you add hcatalog core jar to classpath |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10735](https://issues.apache.org/jira/browse/HIVE-10735) | Cached plan race condition - VectorMapJoinCommonOperator has no closeOp() |  Critical | Vectorization | Gopal V | Matt McCline |
| [HIVE-10922](https://issues.apache.org/jira/browse/HIVE-10922) | In HS2 doAs=false mode, file system related errors in one query causes other failures |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-9069](https://issues.apache.org/jira/browse/HIVE-9069) | Simplify filter predicates for CBO |  Major | CBO | Mostafa Mokhtar | Jesus Camacho Rodriguez |
| [HIVE-10874](https://issues.apache.org/jira/browse/HIVE-10874) | Fail in TestMinimrCliDriver.testCliDriver\_ql\_rewrite\_gbtoidx\_cbo\_2.q due to duplicate column name |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-10934](https://issues.apache.org/jira/browse/HIVE-10934) | Restore support for DROP PARTITION PURGE |  Major | Parser | Eugene Koifman | Eugene Koifman |
| [HIVE-10925](https://issues.apache.org/jira/browse/HIVE-10925) | Non-static threadlocals in metastore code can potentially cause memory leak |  Major | Metastore | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-10941](https://issues.apache.org/jira/browse/HIVE-10941) | Provide option to disable spark tests outside itests |  Major | Tests | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10736](https://issues.apache.org/jira/browse/HIVE-10736) | HiveServer2 shutdown of cached tez app-masters is not clean |  Major | HiveServer2 | Gopal V | Vikram Dixit K |
| [HIVE-10929](https://issues.apache.org/jira/browse/HIVE-10929) | In Tez mode,dynamic partitioning query with union all fails at moveTask,Invalid partition key & values |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-8931](https://issues.apache.org/jira/browse/HIVE-8931) | Test TestAccumuloCliDriver is not completing |  Major | . | Brock Noland | Josh Elser |
| [HIVE-10958](https://issues.apache.org/jira/browse/HIVE-10958) | Centos: TestMiniTezCliDriver.testCliDriver\_mergejoin fails |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-10857](https://issues.apache.org/jira/browse/HIVE-10857) | Accumulo storage handler fail throwing java.lang.IllegalArgumentException: Cannot determine SASL mechanism for token class: class org.apache.accumulo.core.client.security.tokens.PasswordToken |  Major | . | Takahiko Saito | Josh Elser |
| [HIVE-10957](https://issues.apache.org/jira/browse/HIVE-10957) | QueryPlan's start time is incorrect in certain cases |  Major | . | Gunther Hagleitner | Wei Zheng |
| [HIVE-10967](https://issues.apache.org/jira/browse/HIVE-10967) | add mapreduce.job.tags to sql std authorization config whitelist |  Major | Authorization, SQLStandardAuthorization | Thejas M Nair | Thejas M Nair |
| [HIVE-10966](https://issues.apache.org/jira/browse/HIVE-10966) | direct SQL for stats has a cast exception on some databases |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-10971](https://issues.apache.org/jira/browse/HIVE-10971) | count(\*) with count(distinct) gives wrong results when hive.groupby.skewindata=true |  Major | Logical Optimizer | WangMeng | WangMeng |
| [HIVE-10965](https://issues.apache.org/jira/browse/HIVE-10965) | direct SQL for stats fails in 0-column case |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-10949](https://issues.apache.org/jira/browse/HIVE-10949) | Disable hive-minikdc tests in Windows |  Major | . | Hari Sankar Sivarama Subramaniyan | Hari Sankar Sivarama Subramaniyan |
| [HIVE-10959](https://issues.apache.org/jira/browse/HIVE-10959) | webhcat launcher job should reconnect to the running child job on task retry |  Major | WebHCat | Ivan Mitic | Ivan Mitic |
| [HIVE-10992](https://issues.apache.org/jira/browse/HIVE-10992) | WebHCat should not create delegation tokens when Kerberos is not enabled |  Major | WebHCat | Eugene Koifman | Eugene Koifman |
| [HIVE-10968](https://issues.apache.org/jira/browse/HIVE-10968) | Windows: analyze json table via beeline failed throwing Class org.apache.hive.hcatalog.data.JsonSerDe not found |  Major | HiveServer2 | Takahiko Saito | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11001](https://issues.apache.org/jira/browse/HIVE-11001) | HS2 http cookie mode does not honor doAs url parameter |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-10841](https://issues.apache.org/jira/browse/HIVE-10841) | [WHERE col is not null] does not work sometimes for queries with many JOIN statements |  Major | Query Planning, Query Processor | Alexander Pivovarov | Laljo John Pullokkaran |
| [HIVE-10994](https://issues.apache.org/jira/browse/HIVE-10994) | Hive.moveFile should not fail on a no-op move |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-10685](https://issues.apache.org/jira/browse/HIVE-10685) | Alter table concatenate oparetor will cause duplicate data |  Critical | . | guoliming | guoliming |
| [HIVE-10704](https://issues.apache.org/jira/browse/HIVE-10704) | Errors in Tez HashTableLoader when estimated table size is 0 |  Major | Query Processor | Jason Dere | Jason Dere |
| [HIVE-10907](https://issues.apache.org/jira/browse/HIVE-10907) | Hive on Tez: Classcast exception in some cases with SMB joins |  Major | . | Vikram Dixit K | Vikram Dixit K |
| [HIVE-11006](https://issues.apache.org/jira/browse/HIVE-11006) | improve logging wrt ACID module |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-10674](https://issues.apache.org/jira/browse/HIVE-10674) | jars should not be checked in to the source control repo |  Blocker | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-11023](https://issues.apache.org/jira/browse/HIVE-11023) | Disable directSQL if datanucleus.identifierFactory = datanucleus2 |  Critical | Metastore | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-11027](https://issues.apache.org/jira/browse/HIVE-11027) | Hive on tez: Bucket map joins fail when hashcode goes negative |  Major | Tez | Vikram Dixit K | Prasanth Jayachandran |
| [HIVE-11035](https://issues.apache.org/jira/browse/HIVE-11035) | PPD: Orc Split elimination fails because filterColumns=[-1] |  Major | . | Gopal V | Prasanth Jayachandran |
| [HIVE-11033](https://issues.apache.org/jira/browse/HIVE-11033) | BloomFilter index is not honored by ORC reader |  Major | . | Allan Yan | Prasanth Jayachandran |
| [HIVE-11031](https://issues.apache.org/jira/browse/HIVE-11031) | ORC concatenation of old files can fail while merging column statistics |  Critical | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-11040](https://issues.apache.org/jira/browse/HIVE-11040) | Change Derby dependency version to 10.10.2.0 |  Major | Metastore | Jason Dere | Jason Dere |
| [HIVE-11047](https://issues.apache.org/jira/browse/HIVE-11047) | Update versions of branch-1.2 to 1.2.1 |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-10746](https://issues.apache.org/jira/browse/HIVE-10746) |  Hive 1.2.0+Tez produces 1-byte FileSplits from mapred.TextInputFormat |  Critical | Hive, Tez | Greg Senia | Gopal V |
| [HIVE-11041](https://issues.apache.org/jira/browse/HIVE-11041) | Update tests for HIVE-9302 after removing binaries |  Major | Tests | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-10453](https://issues.apache.org/jira/browse/HIVE-10453) | HS2 leaking open file descriptors when using UDFs |  Major | UDF | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11102](https://issues.apache.org/jira/browse/HIVE-11102) | ReaderImpl: getColumnIndicesFromNames does not work for some cases |  Major | File Formats | Gopal V | Sergey Shelukhin |
| [HIVE-11313](https://issues.apache.org/jira/browse/HIVE-11313) | dynamic partition with null key from union select will fail |  Major | Tez | Jay Lee |  |
| [HIVE-11456](https://issues.apache.org/jira/browse/HIVE-11456) | HCatStorer should honor mapreduce.output.basename |  Critical | . | Rohini Palaniswamy | Mithun Radhakrishnan |
| [HIVE-11498](https://issues.apache.org/jira/browse/HIVE-11498) | HIVE Authorization v2 should not check permission for dummy entity |  Major | Authorization | Dapeng Sun | Dapeng Sun |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10869](https://issues.apache.org/jira/browse/HIVE-10869) | fold\_case.q failing on trunk |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-10909](https://issues.apache.org/jira/browse/HIVE-10909) | Make TestFilterHooks robust |  Major | Metastore, Tests | Hari Sankar Sivarama Subramaniyan | Ashutosh Chauhan |
| [HIVE-10939](https://issues.apache.org/jira/browse/HIVE-10939) | Make TestFileDump robust |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-10955](https://issues.apache.org/jira/browse/HIVE-10955) | CliDriver leaves tables behind at end of test run |  Major | Testing Infrastructure | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11026](https://issues.apache.org/jira/browse/HIVE-11026) | Make vector\_outer\_join\* test more robust |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10747](https://issues.apache.org/jira/browse/HIVE-10747) | Enable the cleanup of side effect for the Encryption related qfile test |  Major | Testing Infrastructure | Ferdinand Xu | Ferdinand Xu |
| [HIVE-10629](https://issues.apache.org/jira/browse/HIVE-10629) | Dropping table in an encrypted zone does not drop warehouse directory |  Major | Security | Deepesh Khandelwal | Eugene Koifman |
| [HIVE-10658](https://issues.apache.org/jira/browse/HIVE-10658) | Insert with values clause may expose data that should be encrypted |  Major | Security | Eugene Koifman | Eugene Koifman |
| [HIVE-10910](https://issues.apache.org/jira/browse/HIVE-10910) | Alter table drop partition queries in encrypted zone failing to remove data from HDFS |  Major | Hive | Aswathy Chellammal Sreekumar | Eugene Koifman |
| [HIVE-11016](https://issues.apache.org/jira/browse/HIVE-11016) | MiniTez mergejoin test fails with Tez input error (issue in merge join under certain conditions) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-10327](https://issues.apache.org/jira/browse/HIVE-10327) | Remove ExprNodeNullDesc |  Major | Query Planning | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11018](https://issues.apache.org/jira/browse/HIVE-11018) | Turn on cbo in more q files |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |


