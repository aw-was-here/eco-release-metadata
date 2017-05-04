
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

## Release 2.3.0 - Unreleased (as of 2017-05-04)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-15691](https://issues.apache.org/jira/browse/HIVE-15691) | Create StrictRegexWriter to work with RegexSerializer for Flume Hive Sink |  Critical | HCatalog, Transactions | Kalyan | Kalyan |
| [HIVE-15434](https://issues.apache.org/jira/browse/HIVE-15434) | Add UDF to allow interrogation of uniontype values |  Major | UDF | David Maughan | David Maughan |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16115](https://issues.apache.org/jira/browse/HIVE-16115) | Stop printing progress info from operation logs with beeline progress bar |  Minor | HiveServer2 | anishek | anishek |
| [HIVE-12274](https://issues.apache.org/jira/browse/HIVE-12274) | Increase width of columns used for general configuration in the metastore. |  Major | Metastore | Elliot West | Naveen Gangam |
| [HIVE-12299](https://issues.apache.org/jira/browse/HIVE-12299) | Hive Column Data Type definition in schema limited to 4000 characters - too small |  Major | Hive | Lakshmi Ramakrishnan | Naveen Gangam |
| [HIVE-14145](https://issues.apache.org/jira/browse/HIVE-14145) | Too small length of column 'PARAM\_VALUE' in table 'SERDE\_PARAMS' |  Major | Metastore | Oleksiy Sayankin | Oleksiy Sayankin |
| [HIVE-15880](https://issues.apache.org/jira/browse/HIVE-15880) | Allow insert overwrite and truncate table query to use auto.purge table property |  Major | . | Vihang Karajgaonkar | Vihang Karajgaonkar |
| [HIVE-16164](https://issues.apache.org/jira/browse/HIVE-16164) | Provide mechanism for passing HMS notification ID between transactional and non-transactional listeners. |  Major | Metastore | Sergio Peña | Sergio Peña |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-14801](https://issues.apache.org/jira/browse/HIVE-14801) | improve TestPartitionNameWhitelistValidation stability |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-16274](https://issues.apache.org/jira/browse/HIVE-16274) | Support tuning of NDV of columns using lower/upper bounds |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-9815](https://issues.apache.org/jira/browse/HIVE-9815) | Metastore column"SERDE\_PARAMS"."PARAM\_VALUE"  limited to 4000 bytes |  Critical | Metastore | Naveen Gangam | Naveen Gangam |
| [HIVE-15249](https://issues.apache.org/jira/browse/HIVE-15249) | HIve 2.1.0 is throwing InvalidObjectException(message:Invalid column type name is too long |  Major | Hive | vishal.rajan | Naveen Gangam |
| [HIVE-16219](https://issues.apache.org/jira/browse/HIVE-16219) | metastore notification\_log contains serialized message with  non functional fields |  Major | Metastore | anishek | anishek |
| [HIVE-16188](https://issues.apache.org/jira/browse/HIVE-16188) | beeline should block the connection if given invalid database name. |  Minor | Hive | Pavas Garg | Sahil Takiar |
| [HIVE-16007](https://issues.apache.org/jira/browse/HIVE-16007) | When the query does not complie the LogRunnable never stops |  Major | Beeline | Peter Vary | Peter Vary |
| [HIVE-16310](https://issues.apache.org/jira/browse/HIVE-16310) | Get the output operators of Reducesink when vectorization is on |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16231](https://issues.apache.org/jira/browse/HIVE-16231) | Parquet timestamp may be stored differently since HIVE-12767 |  Critical | . | Barna Zsombor Klara | Barna Zsombor Klara |
| [HIVE-14077](https://issues.apache.org/jira/browse/HIVE-14077) | add implicit decimal arithmetic q test, fix issues if found |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-15829](https://issues.apache.org/jira/browse/HIVE-15829) | LLAP text cache: disable memory tracking on the writer |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16305](https://issues.apache.org/jira/browse/HIVE-16305) | Additional Datanucleus ClassLoaderResolverImpl leaks causing HS2 OOM |  Major | HiveServer2 | Daniel Dai | Daniel Dai |
| [HIVE-16318](https://issues.apache.org/jira/browse/HIVE-16318) | LLAP cache: address some issues in 2.2/2.3 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16301](https://issues.apache.org/jira/browse/HIVE-16301) | Preparing for 2.3 development. |  Blocker | Hive | Naveen Gangam | Naveen Gangam |
| [HIVE-16315](https://issues.apache.org/jira/browse/HIVE-16315) | Describe table doesn't show num of partitions |  Major | . | Rui Li | Rui Li |
| [HIVE-16308](https://issues.apache.org/jira/browse/HIVE-16308) | PreExecutePrinter and PostExecutePrinter should log to INFO level instead of ERROR |  Major | Test | Sahil Takiar | Sahil Takiar |
| [HIVE-16336](https://issues.apache.org/jira/browse/HIVE-16336) | Rename hive.spark.use.file.size.for.mapjoin to hive.spark.use.ts.stats.for.mapjoin |  Major | Configuration | Chao Sun | Chao Sun |
| [HIVE-15923](https://issues.apache.org/jira/browse/HIVE-15923) | Hive default partition causes errors in get partitions |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
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
| [HIVE-16547](https://issues.apache.org/jira/browse/HIVE-16547) | LLAP: may not unlock buffers in some cases |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16545](https://issues.apache.org/jira/browse/HIVE-16545) | LLAP: bug in arena size determination logic |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-16399](https://issues.apache.org/jira/browse/HIVE-16399) | create an index for tc\_txnid in TXN\_COMPONENTS |  Major | Transactions | Eugene Koifman | Wei Zheng |
| [HIVE-16465](https://issues.apache.org/jira/browse/HIVE-16465) | NullPointer Exception when enable vectorization for Parquet file format |  Critical | . | Colin Ma | Colin Ma |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16288](https://issues.apache.org/jira/browse/HIVE-16288) | Add blobstore tests for ORC and RCFILE file formats |  Major | Tests | Thomas Poepping | Thomas Poepping |
| [HIVE-16415](https://issues.apache.org/jira/browse/HIVE-16415) | Add tests covering single inserts of zero rows |  Major | Tests | Thomas Poepping | Thomas Poepping |
| [HIVE-16454](https://issues.apache.org/jira/browse/HIVE-16454) | Add blobstore tests for inserting empty into dynamic partition/list bucket tables & inserting cross blobstore tables |  Major | Tests | Rentao Wu | Rentao Wu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-15556](https://issues.apache.org/jira/browse/HIVE-15556) | Replicate views |  Major | repl | Vaibhav Gumashta | Sankar Hariappan |
| [HIVE-16186](https://issues.apache.org/jira/browse/HIVE-16186) | REPL DUMP shows last event ID of the database even if we use LIMIT option. |  Major | repl | Sankar Hariappan | Sankar Hariappan |
| [HIVE-16249](https://issues.apache.org/jira/browse/HIVE-16249) | With column stats, mergejoin.q throws NPE |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16293](https://issues.apache.org/jira/browse/HIVE-16293) | Column pruner should continue to work when SEL has more than 1 child |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16387](https://issues.apache.org/jira/browse/HIVE-16387) | Fix failing test org.apache.hive.jdbc.TestJdbcDriver2.testResultSetMetaData |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16440](https://issues.apache.org/jira/browse/HIVE-16440) | Fix failing test columnstats\_partlvl\_invalid\_values when autogather column stats is on |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-14807](https://issues.apache.org/jira/browse/HIVE-14807) | analyze table compute statistics fails due to presence of Infinity value in double column |  Critical | . | Edi Bice | Pengcheng Xiong |
| [HIVE-16535](https://issues.apache.org/jira/browse/HIVE-16535) | Hive fails to build from source code tarball |  Blocker | . | Alan Gates | Pengcheng Xiong |
| [HIVE-16504](https://issues.apache.org/jira/browse/HIVE-16504) | Addition of binary licenses broke rat check |  Blocker | . | Alan Gates | Alan Gates |
| [HIVE-16537](https://issues.apache.org/jira/browse/HIVE-16537) | Add missing AL files |  Blocker | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-16542](https://issues.apache.org/jira/browse/HIVE-16542) | make merge that targets acid 2.0 table fail-fast |  Critical | Transactions | Eugene Koifman | Eugene Koifman |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-16260](https://issues.apache.org/jira/browse/HIVE-16260) | Remove parallel edges of semijoin with map joins. |  Major | . | Deepak Jaiswal | Deepak Jaiswal |


