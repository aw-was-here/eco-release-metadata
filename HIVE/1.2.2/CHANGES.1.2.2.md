
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

## Release 1.2.2 - 2017-04-06



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-15691](https://issues.apache.org/jira/browse/HIVE-15691) | Create StrictRegexWriter to work with RegexSerializer for Flume Hive Sink |  Critical | HCatalog, Transactions | Kalyan | Kalyan |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-11076](https://issues.apache.org/jira/browse/HIVE-11076) | Explicitly set hive.cbo.enable=true for some tests |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-9583](https://issues.apache.org/jira/browse/HIVE-9583) | Rolling upgrade of Hive MetaStore Server |  Major | HCatalog, Metastore | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HIVE-11780](https://issues.apache.org/jira/browse/HIVE-11780) | Add "set role none" support |  Major | Authorization | Dapeng Sun | Dapeng Sun |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-11028](https://issues.apache.org/jira/browse/HIVE-11028) | Tez: table self join and join with another table fails with IndexOutOfBoundsException |  Major | Query Planning | Jason Dere | Jason Dere |
| [HIVE-11050](https://issues.apache.org/jira/browse/HIVE-11050) | testCliDriver\_vector\_outer\_join.\* failures in Unit tests due to unstable data creation queries |  Blocker | Hive | Matt McCline | Matt McCline |
| [HIVE-11066](https://issues.apache.org/jira/browse/HIVE-11066) | Ensure tests don\'t share directories on FS |  Major | Tests | Eugene Koifman | Eugene Koifman |
| [HIVE-11059](https://issues.apache.org/jira/browse/HIVE-11059) | hcatalog-server-extensions tests scope should depend on hive-exec |  Minor | Tests | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-11060](https://issues.apache.org/jira/browse/HIVE-11060) | Make test windowing.q robust |  Major | Tests | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11074](https://issues.apache.org/jira/browse/HIVE-11074) | Update tests for HIVE-9302 after removing binaries |  Major | Tests | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-10996](https://issues.apache.org/jira/browse/HIVE-10996) | Aggregation / Projection over Multi-Join Inner Query producing incorrect results |  Critical | Query Planning | Gautam Kowshik | Jesus Camacho Rodriguez |
| [HIVE-11151](https://issues.apache.org/jira/browse/HIVE-11151) | Calcite transitive predicate inference rule should not transitively add not null filter on non-nullable input |  Major | CBO, Logical Optimizer | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11171](https://issues.apache.org/jira/browse/HIVE-11171) | Join reordering algorithm might introduce projects between joins |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-11224](https://issues.apache.org/jira/browse/HIVE-11224) | AggregateStatsCache triggers java.util.ConcurrentModificationException under some conditions |  Major | . | Pengcheng Xiong | Pengcheng Xiong |
| [HIVE-11216](https://issues.apache.org/jira/browse/HIVE-11216) | UDF GenericUDFMapKeys throws NPE when a null map value is passed in |  Major | UDF | Yibing Shi | Yibing Shi |
| [HIVE-11172](https://issues.apache.org/jira/browse/HIVE-11172) | Vectorization wrong results for aggregate query with where clause without group by |  Critical | Hive | Yi Zhang | Hari Sankar Sivarama Subramaniyan |
| [HIVE-11301](https://issues.apache.org/jira/browse/HIVE-11301) | thrift metastore issue when getting stats results in disconnect |  Major | Metastore | Sergey Shelukhin | Pengcheng Xiong |
| [HIVE-11344](https://issues.apache.org/jira/browse/HIVE-11344) | HIVE-9845 makes HCatSplit.write modify the split so that PartInfo objects are unusable after it |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-11606](https://issues.apache.org/jira/browse/HIVE-11606) | Bucket map joins fail at hash table construction time |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-11605](https://issues.apache.org/jira/browse/HIVE-11605) | Incorrect results with bucket map join in tez. |  Critical | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-11802](https://issues.apache.org/jira/browse/HIVE-11802) | Float-point numbers are displayed with different precision in Beeline/JDBC |  Major | . | Sergio Peña | lijp |
| [HIVE-11745](https://issues.apache.org/jira/browse/HIVE-11745) | Alter table Exchange partition with multiple partition\_spec is not working |  Major | Metastore | Yongzhi Chen | Yongzhi Chen |
| [HIVE-11832](https://issues.apache.org/jira/browse/HIVE-11832) | HIVE-11802 breaks compilation in JDK 8 |  Major | . | Prasanth Jayachandran | Sergio Peña |
| [HIVE-11841](https://issues.apache.org/jira/browse/HIVE-11841) | KeyValuesInputMerger creates huge logs |  Major | Logging | Rajesh Balamohan | Rajesh Balamohan |
| [HIVE-11517](https://issues.apache.org/jira/browse/HIVE-11517) | Vectorized auto\_smb\_mapjoin\_14.q produces different results |  Critical | . | Matt McCline | Matt McCline |
| [HIVE-12021](https://issues.apache.org/jira/browse/HIVE-12021) | HivePreFilteringRule may introduce wrong common operands |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12083](https://issues.apache.org/jira/browse/HIVE-12083) | HIVE-10965 introduces thrift error if partNames or colNames are empty |  Major | Metastore | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-11829](https://issues.apache.org/jira/browse/HIVE-11829) | Create test for HIVE-11216 |  Major | Tests | Vikram Dixit K | Vikram Dixit K |
| [HIVE-9013](https://issues.apache.org/jira/browse/HIVE-9013) | Hive set command exposes metastore db password |  Major | . | Binglin Chang | Binglin Chang |
| [HIVE-11988](https://issues.apache.org/jira/browse/HIVE-11988) | [hive] security issue with hive & ranger for import table command |  Critical | Hive | Deepak Sharma | Sushanth Sowmyan |
| [HIVE-12344](https://issues.apache.org/jira/browse/HIVE-12344) | Wrong types inferred for SemiJoin generation in CBO |  Major | CBO | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-12345](https://issues.apache.org/jira/browse/HIVE-12345) | Followup for HIVE-9013 : Hidden conf vars still visible through beeline |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-11975](https://issues.apache.org/jira/browse/HIVE-11975) | mssql scripts contains invalid \'GO\' statement |  Minor | Metastore | Huan Huang | Sushanth Sowmyan |
| [HIVE-12875](https://issues.apache.org/jira/browse/HIVE-12875) | Verify sem.getInputs() and sem.getOutputs() |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-11470](https://issues.apache.org/jira/browse/HIVE-11470) | NPE in DynamicPartFileRecordWriterContainer on null part-keys. |  Major | HCatalog | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HIVE-13020](https://issues.apache.org/jira/browse/HIVE-13020) | Hive Metastore and HiveServer2 to Zookeeper fails with IBM JDK |  Major | HiveServer2, Metastore, Shims | Greg Senia | Greg Senia |
| [HIVE-12981](https://issues.apache.org/jira/browse/HIVE-12981) | ThriftCLIService uses incompatible getShortName() implementation |  Critical | Authentication, Authorization, CLI, Security | Bolke de Bruin | Bolke de Bruin |
| [HIVE-13115](https://issues.apache.org/jira/browse/HIVE-13115) | MetaStore Direct SQL getPartitions call fail when the columns schemas for a partition are null |  Major | Hive | Ratandeep Ratti | Ratandeep Ratti |
| [HIVE-12992](https://issues.apache.org/jira/browse/HIVE-12992) | Hive on tez: Bucket map join plan is incorrect |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-12937](https://issues.apache.org/jira/browse/HIVE-12937) | DbNotificationListener unable to clean up old notification events |  Major | . | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-13394](https://issues.apache.org/jira/browse/HIVE-13394) | Analyze table fails in tez on empty partitions/files/tables |  Major | Tez | Vikram Dixit K | Vikram Dixit K |
| [HIVE-13645](https://issues.apache.org/jira/browse/HIVE-13645) | Beeline needs null-guard around hiveVars and hiveConfVars read |  Minor | Beeline | Sushanth Sowmyan | Sushanth Sowmyan |
| [HIVE-13390](https://issues.apache.org/jira/browse/HIVE-13390) | HiveServer2: Add more test to ZK service discovery using MiniHS2 |  Major | HiveServer2, JDBC | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-13948](https://issues.apache.org/jira/browse/HIVE-13948) | Incorrect timezone handling in Writable results in wrong dates in queries |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HIVE-14210](https://issues.apache.org/jira/browse/HIVE-14210) | ExecDriver should call jobclient.close() to trigger cleanup |  Major | Hive, HiveServer2 | Thomas Friedrich | Thomas Friedrich |
| [HIVE-14964](https://issues.apache.org/jira/browse/HIVE-14964) | Failing Test: Fix TestBeelineArgParsing tests |  Major | Tests | Jason Dere | Zoltan Haindrich |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-11048](https://issues.apache.org/jira/browse/HIVE-11048) | Make test cbo\_windowing robust |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |
| [HIVE-11083](https://issues.apache.org/jira/browse/HIVE-11083) | Make test cbo\_windowing robust |  Major | Tests | Ashutosh Chauhan | Ashutosh Chauhan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-15133](https://issues.apache.org/jira/browse/HIVE-15133) | Branch-1.2: Investigate TestBeelineArgParsing |  Major | Beeline | Vaibhav Gumashta | Vaibhav Gumashta |
| [HIVE-15126](https://issues.apache.org/jira/browse/HIVE-15126) | Branch-1.2: Fix TestCliDriver.join\_merge\_multi\_expressions.q |  Blocker | Test | Vaibhav Gumashta | Vaibhav Gumashta |


