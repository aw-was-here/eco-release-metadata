
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

## Release 1.0.0 - 2015-02-04

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-8933](https://issues.apache.org/jira/browse/HIVE-8933) | Check release builds for SNAPSHOT dependencies |  Major | Build Infrastructure | Carl Steinbach | Carl Steinbach |
| [HIVE-3280](https://issues.apache.org/jira/browse/HIVE-3280) | Make HiveMetaStoreClient a public API |  Major | Metastore | Carl Steinbach | Thejas M Nair |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-9886](https://issues.apache.org/jira/browse/HIVE-9886) | Hive on tez: NPE when converting join to SMB in sub-query |  Critical | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-9684](https://issues.apache.org/jira/browse/HIVE-9684) | Incorrect disk range computation in ORC because of optional stream kind |  Critical | File Formats | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9514](https://issues.apache.org/jira/browse/HIVE-9514) | schematool is broken in hive 1.0.0 |  Major | Metastore | Thejas M Nair | Thejas M Nair |
| [HIVE-9473](https://issues.apache.org/jira/browse/HIVE-9473) | sql std auth should disallow built-in udfs that allow any java methods to be called |  Major | Authorization, SQLStandardAuthorization | Thejas M Nair | Thejas M Nair |
| [HIVE-9436](https://issues.apache.org/jira/browse/HIVE-9436) | RetryingMetaStoreClient does not retry JDOExceptions |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-9404](https://issues.apache.org/jira/browse/HIVE-9404) | NPE in org.apache.hadoop.hive.metastore.txn.TxnHandler.determineDatabaseProduct() |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-9401](https://issues.apache.org/jira/browse/HIVE-9401) | Backport: Fastpath for limited fetches from unpartitioned tables |  Minor | Physical Optimizer | Gopal V | Gopal V |
| [HIVE-9390](https://issues.apache.org/jira/browse/HIVE-9390) | Enhance retry logic wrt DB access in TxnHandler |  Major | Transactions | Eugene Koifman | Eugene Koifman |
| [HIVE-9361](https://issues.apache.org/jira/browse/HIVE-9361) | Intermittent NPE in SessionHiveMetaStoreClient.alterTempTable |  Major | Metastore | Eugene Koifman | Eugene Koifman |
| [HIVE-9359](https://issues.apache.org/jira/browse/HIVE-9359) | Export of a large table causes OOM in Metastore and Client |  Major | Import/Export, Metastore | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-9317](https://issues.apache.org/jira/browse/HIVE-9317) | move Microsoft copyright to NOTICE file |  Blocker | . | Owen O'Malley | Owen O'Malley |
| [HIVE-9278](https://issues.apache.org/jira/browse/HIVE-9278) | Cached expression feature broken in one case |  Blocker | Query Processor | Matt McCline | Navis |
| [HIVE-9249](https://issues.apache.org/jira/browse/HIVE-9249) | java.lang.ClassCastException: org.apache.hadoop.hive.serde2.io.HiveVarcharWritable cannot be cast to org.apache.hadoop.hive.common.type.HiveVarchar when joining tables |  Critical | Vectorization | Matt McCline | Matt McCline |
| [HIVE-9234](https://issues.apache.org/jira/browse/HIVE-9234) | HiveServer2 leaks FileSystem objects in FileSystem.CACHE |  Major | HiveServer2 | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-9205](https://issues.apache.org/jira/browse/HIVE-9205) | Change default tez install directory to use /tmp instead of /user and create the directory if it does not exist |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-9168](https://issues.apache.org/jira/browse/HIVE-9168) | Vectorized Coalesce for strings is broken |  Critical | Vectorization | Matt McCline | Matt McCline |
| [HIVE-9166](https://issues.apache.org/jira/browse/HIVE-9166) | Place an upper bound for SARG CNF conversion |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9162](https://issues.apache.org/jira/browse/HIVE-9162) | stats19 test is environment-dependant |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-9155](https://issues.apache.org/jira/browse/HIVE-9155) | HIVE\_LOCKS uses int instead of bigint hive-txn-schema-0.14.0.mssql.sql |  Major | Metastore | Eugene Koifman | Eugene Koifman |
| [HIVE-9141](https://issues.apache.org/jira/browse/HIVE-9141) | HiveOnTez: mix of union all, distinct, group by generates error |  Major | Tez | Pengcheng Xiong | Navis |
| [HIVE-9114](https://issues.apache.org/jira/browse/HIVE-9114) | union all query in cbo test has undefined ordering |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-9112](https://issues.apache.org/jira/browse/HIVE-9112) | Query may generate different results depending on the number of reducers |  Major | Logical Optimizer | Chao | Ted Xu |
| [HIVE-9111](https://issues.apache.org/jira/browse/HIVE-9111) | Potential NPE in OrcStruct for list and map types |  Major | File Formats | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9108](https://issues.apache.org/jira/browse/HIVE-9108) | Fix for HIVE-8735 is incorrect (stats with long paths) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-9090](https://issues.apache.org/jira/browse/HIVE-9090) | Rename "Tez File Merge Work" to smaller name |  Trivial | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9067](https://issues.apache.org/jira/browse/HIVE-9067) | OrcFileMergeOperator may create merge file that does not match properties of input files |  Minor | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9053](https://issues.apache.org/jira/browse/HIVE-9053) | select constant in union all followed by group by gives wrong result |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-9051](https://issues.apache.org/jira/browse/HIVE-9051) | TezJobMonitor in-place updates logs too often to logfile |  Major | Logging | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-9038](https://issues.apache.org/jira/browse/HIVE-9038) | Join tests fail on Tez |  Major | Tests, Tez | Ashutosh Chauhan | Vikram Dixit K |
| [HIVE-9025](https://issues.apache.org/jira/browse/HIVE-9025) | join38.q (without map join) produces incorrect result when testing with multiple reducers |  Blocker | Logical Optimizer | Chao | Ted Xu |
| [HIVE-9003](https://issues.apache.org/jira/browse/HIVE-9003) | Vectorized IF expr broken for the scalar and scalar case |  Critical | Vectorization | Matt McCline | Matt McCline |
| [HIVE-8966](https://issues.apache.org/jira/browse/HIVE-8966) | Delta files created by hive hcatalog streaming cannot be compacted |  Critical | HCatalog | Jihong Liu | Alan Gates |
| [HIVE-8953](https://issues.apache.org/jira/browse/HIVE-8953) | 0.5.2-SNAPSHOT Dependency |  Major | . | Olaf Flebbe |  |
| [HIVE-8947](https://issues.apache.org/jira/browse/HIVE-8947) | HIVE-8876 also affects Postgres \< 9.2 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8888](https://issues.apache.org/jira/browse/HIVE-8888) | Mapjoin with LateralViewJoin generates wrong plan in Tez |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-8886](https://issues.apache.org/jira/browse/HIVE-8886) | Some Vectorized String CONCAT expressions result in runtime error Vectorization: Unsuported vector output type: StringGroup |  Critical | Vectorization | Matt McCline | Matt McCline |
| [HIVE-8880](https://issues.apache.org/jira/browse/HIVE-8880) | non-synchronized access to split list in OrcInputFormat |  Major | . | Alan Gates | Alan Gates |
| [HIVE-8876](https://issues.apache.org/jira/browse/HIVE-8876) | incorrect upgrade script for Oracle (13-\>14) |  Critical | Metastore | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8873](https://issues.apache.org/jira/browse/HIVE-8873) | Switch to calcite 0.9.2 |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8870](https://issues.apache.org/jira/browse/HIVE-8870) | errors when selecting a struct field within an array from ORC based tables |  Major | File Formats, Query Processor | Michael Haeusler | Sergio Peña |
| [HIVE-8866](https://issues.apache.org/jira/browse/HIVE-8866) | Vectorization on partitioned table throws ArrayIndexOutOfBoundsException when partitions are not of same #of columns |  Critical | Vectorization | Matt McCline | Matt McCline |
| [HIVE-8845](https://issues.apache.org/jira/browse/HIVE-8845) | Switch to Tez 0.5.2 |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8830](https://issues.apache.org/jira/browse/HIVE-8830) | hcatalog process don't exit because of non daemon thread |  Major | . | Thejas M Nair | Thejas M Nair |
| [HIVE-8827](https://issues.apache.org/jira/browse/HIVE-8827) | Remove SSLv2Hello from list of disabled protocols |  Major | HiveServer2, JDBC | Brock Noland | Brock Noland |
| [HIVE-8811](https://issues.apache.org/jira/browse/HIVE-8811) | Dynamic partition pruning can result in NPE during query compilation |  Major | . | Gunther Hagleitner | Gunther Hagleitner |
| [HIVE-8807](https://issues.apache.org/jira/browse/HIVE-8807) | Obsolete default values in webhcat-default.xml |  Major | WebHCat | Lefty Leverenz | Eugene Koifman |
| [HIVE-8805](https://issues.apache.org/jira/browse/HIVE-8805) | CBO skipped due to SemanticException: Line 0:-1 Both left and right aliases encountered in JOIN 'avg\_cs\_ext\_discount\_amt' |  Major | CBO | Mostafa Mokhtar | Laljo John Pullokkaran |
| [HIVE-8784](https://issues.apache.org/jira/browse/HIVE-8784) | Querying partition does not work with JDO enabled against PostgreSQL |  Major | Metastore | Chaoyu Tang | Chaoyu Tang |
| [HIVE-8739](https://issues.apache.org/jira/browse/HIVE-8739) | handle Derby and Oracle errors with joins and filters in Direct SQL in a invalid-DB-specific path |  Major | Metastore | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8715](https://issues.apache.org/jira/browse/HIVE-8715) | Hive 14 upgrade scripts can fail for statistics if database was created using auto-create |  Critical | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-8706](https://issues.apache.org/jira/browse/HIVE-8706) | Table statistic collection on counter failed due to table name character case. |  Major | . | Chengxiang Li | Chengxiang Li |
| [HIVE-8532](https://issues.apache.org/jira/browse/HIVE-8532) | return code of "source xxx" clause is missing |  Major | Clients | Gordon Wang | vitthal (Suhas) Gogate |
| [HIVE-8485](https://issues.apache.org/jira/browse/HIVE-8485) | HMS on Oracle incompatibility |  Major | Metastore | Ryan Pridgeon | Sushanth Sowmyan |
| [HIVE-8374](https://issues.apache.org/jira/browse/HIVE-8374) | schematool fails on Postgres versions \< 9.2 |  Major | Database/Schema | Mohit Sabharwal | Mohit Sabharwal |
| [HIVE-8295](https://issues.apache.org/jira/browse/HIVE-8295) | Add batch retrieve partition objects for metastore direct sql |  Major | . | Selina Zhang | Selina Zhang |
| [HIVE-8099](https://issues.apache.org/jira/browse/HIVE-8099) | IN operator for partition column fails when the partition column type is DATE |  Major | Query Processor | Venki Korukanti | Venki Korukanti |
| [HIVE-7270](https://issues.apache.org/jira/browse/HIVE-7270) | SerDe Properties are not considered by show create table Command |  Minor | CLI | R J | Navis |
| [HIVE-6468](https://issues.apache.org/jira/browse/HIVE-6468) | HS2 & Metastore using SASL out of memory error when curl sends a get request |  Major | HiveServer2, Metastore | Abin Shahab | Navis |
| [HIVE-5664](https://issues.apache.org/jira/browse/HIVE-5664) | Drop cascade database fails when the db has any tables with indexes |  Major | Indexing, Metastore | Venki Korukanti | Venki Korukanti |
| [HIVE-5631](https://issues.apache.org/jira/browse/HIVE-5631) | Index creation on a skew table fails |  Major | Indexing | Venki Korukanti | Venki Korukanti |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-6977](https://issues.apache.org/jira/browse/HIVE-6977) | Delete Hiveserver1 |  Major | JDBC, Server Infrastructure | Ashutosh Chauhan | Ashutosh Chauhan |


