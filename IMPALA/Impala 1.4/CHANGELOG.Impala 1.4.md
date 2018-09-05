
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
# Apache Impala Changelog

## Release Impala 1.4 - 2014-07-17



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-670](https://issues.apache.org/jira/browse/IMPALA-670) | missing statistical aggregate functions |  Major | . | Greg Rahn | Victor Bittorf |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-951](https://issues.apache.org/jira/browse/IMPALA-951) | Handle syntax errors in ALTER TABLE for bad combinations of partition-related keywords |  Minor | . | John Russell | Lenni Kuff |
| [IMPALA-1003](https://issues.apache.org/jira/browse/IMPALA-1003) | Improve compute stats performance |  Major | . | Matthew Jacobs | Ippokratis Pandis |
| [IMPALA-887](https://issues.apache.org/jira/browse/IMPALA-887) | Improve partition pruning time |  Minor | . | Alan Choi | Dimitris Tsirogiannis |
| [IMPALA-978](https://issues.apache.org/jira/browse/IMPALA-978) | Admission control error messages should have more actionable details |  Major | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-973](https://issues.apache.org/jira/browse/IMPALA-973) | Improve Invalidate Metadata \<table\> error message |  Minor | . | Alan Choi | Anusha Dasarakothapalli |
| [IMPALA-608](https://issues.apache.org/jira/browse/IMPALA-608) | Make PROFILE more precise for memory figures |  Minor | . | John Russell |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-923](https://issues.apache.org/jira/browse/IMPALA-923) | Weird plans for predicates on bool slots |  Major | . | Nong Li | Henry Robinson |
| [IMPALA-979](https://issues.apache.org/jira/browse/IMPALA-979) | Abort service if statestore subscriber heartbeat\_server\_ fails to start successfully |  Major | . | Lenni Kuff | Henry Robinson |
| [IMPALA-982](https://issues.apache.org/jira/browse/IMPALA-982) | Unresolved parent in cdh4-extras pom.xml |  Minor | . | David Z. Chen | Matthew Jacobs |
| [IMPALA-990](https://issues.apache.org/jira/browse/IMPALA-990) | Impala services should fail to start if there is an error starting any ThriftServer |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-964](https://issues.apache.org/jira/browse/IMPALA-964) | Full outer join on values() followed by group by hits a preconditions check. |  Major | . | Alexander Behm | Dimitris Tsirogiannis |
| [IMPALA-989](https://issues.apache.org/jira/browse/IMPALA-989) | Average on decimals is not correct. |  Major | . | Ishaan Joshi | Nong Li |
| [IMPALA-185](https://issues.apache.org/jira/browse/IMPALA-185) | When I run CREATE TABLE new\_table LIKE avro\_table, the schema does not get mapped properly from an avro schema to a hive schema |  Major | . | Uri Laserson | Lenni Kuff |
| [IMPALA-981](https://issues.apache.org/jira/browse/IMPALA-981) | The Impala hiveserver2 implementation does not work with a DECIMAL result. |  Major | . | Ishaan Joshi | Nong Li |
| [IMPALA-969](https://issues.apache.org/jira/browse/IMPALA-969) | Impalad crashes with a dcheck in decimal multiplication while running tpcds-q65 |  Major | . | Ishaan Joshi | Nong Li |
| [IMPALA-963](https://issues.apache.org/jira/browse/IMPALA-963) | Repeated inserts cause Impala to crash in ClearResultCache(). Possible race with tearing down mem trackers. |  Major | . | Alexander Behm | Srinath |
| [IMPALA-962](https://issues.apache.org/jira/browse/IMPALA-962) | The extended view definition SQL text in Views created by Impala should always have fully-qualified table names. |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-994](https://issues.apache.org/jira/browse/IMPALA-994) | Crash selecting from partitioned view created in Hive |  Blocker | . | Henry Robinson | Alexander Behm |
| [IMPALA-996](https://issues.apache.org/jira/browse/IMPALA-996) | Row size estimate for view is wrong |  Major | . | Alan Choi | Alexander Behm |
| [IMPALA-938](https://issues.apache.org/jira/browse/IMPALA-938) | Timestamp interval arithmetic with smallint is often wrong |  Major | . | Henry Robinson | Victor Bittorf |
| [IMPALA-1011](https://issues.apache.org/jira/browse/IMPALA-1011) | Handle SHOW DATA SOURCES when no sources configured |  Blocker | . | John Russell | Matthew Jacobs |
| [IMPALA-1010](https://issues.apache.org/jira/browse/IMPALA-1010) | impalad crashes because of a use-after-free error in the ASAN build. |  Major | . | Ishaan Joshi | Nong Li |
| [IMPALA-1016](https://issues.apache.org/jira/browse/IMPALA-1016) | Projecting only the column from adding a column causes the parquet scanner to return infinite values. |  Major | . | Nong Li | Ippokratis Pandis |
| [IMPALA-1019](https://issues.apache.org/jira/browse/IMPALA-1019) | Failed DCHECK in disk-io-mgr-reader-context.cc:174] num\_used\_buffers\_ \< 0: #used=-1 during cancellation HDFS cached data |  Blocker | . | Lenni Kuff | Nong Li |
| [IMPALA-999](https://issues.apache.org/jira/browse/IMPALA-999) | Casting (legally) to decimal is broken. |  Major | . | Ishaan Joshi | Nong Li |
| [IMPALA-1007](https://issues.apache.org/jira/browse/IMPALA-1007) | Cannot read metadata of a decimal partitioned table if a partition has data |  Major | . | Ishaan Joshi | Nong Li |
| [IMPALA-895](https://issues.apache.org/jira/browse/IMPALA-895) | SELECT with LIMIT on Avro table results in "Backend N:Cancelled" errors in Impala-shell |  Blocker | . | Lenni Kuff | Nong Li |
| [IMPALA-984](https://issues.apache.org/jira/browse/IMPALA-984) | DCHECK in decimal-operators.cc while running an explain query with a lot of decimal exprs |  Major | . | Ishaan Joshi | Nong Li |
| [IMPALA-741](https://issues.apache.org/jira/browse/IMPALA-741) | Impala forgets about partitions with non-existant locations |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-1027](https://issues.apache.org/jira/browse/IMPALA-1027) | Row count overflow in CTAS summary |  Major | . | Nong Li | Henry Robinson |
| [IMPALA-1026](https://issues.apache.org/jira/browse/IMPALA-1026) | Wrong results when DECIMAL is used as a partition key on an HDFS table |  Blocker | . | Dimitris Tsirogiannis | Nong Li |
| [IMPALA-825](https://issues.apache.org/jira/browse/IMPALA-825) | Concurrent connections to the Hive Metastore from the Catalog Server can fail in a kerberized enviroment. |  Major | . | Ishaan Joshi | Lenni Kuff |
| [IMPALA-943](https://issues.apache.org/jira/browse/IMPALA-943) | Frontend tests cannot be run independently. |  Major | . | Ishaan Joshi | Victor Bittorf |
| [IMPALA-931](https://issues.apache.org/jira/browse/IMPALA-931) | impala-shell verbose (-V) defaults to true but is not indicated in the help |  Minor | Clients | Matthew Jacobs | Abdullah Yousufi |
| [IMPALA-1029](https://issues.apache.org/jira/browse/IMPALA-1029) | DROP DATA SOURCE should remove the cached jar from all Impalad lib caches |  Critical | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-1033](https://issues.apache.org/jira/browse/IMPALA-1033) | SOURCE keyword is a common identifier |  Blocker | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-286](https://issues.apache.org/jira/browse/IMPALA-286) | explicitly set query option also shows up in the defaults section of 'set' command |  Critical | Clients | Marcel Kornacker | Abdullah Yousufi |
| [IMPALA-1006](https://issues.apache.org/jira/browse/IMPALA-1006) | Nested union all with an order by column that is not in the outer select list fails. |  Major | . | Srinath | Srinath |
| [IMPALA-1025](https://issues.apache.org/jira/browse/IMPALA-1025) | Data source predicates should use operator converse when val before slot |  Blocker | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-1009](https://issues.apache.org/jira/browse/IMPALA-1009) | Queries should not be failed due to UDFs/UDAs that leak. |  Major | . | Nong Li | Skye Wanderman-Milne |
| [IMPALA-1022](https://issues.apache.org/jira/browse/IMPALA-1022) | Handle cases where in parquet the expected number of rows per metadata is not equal to the actual number of rows in the file |  Major | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-1013](https://issues.apache.org/jira/browse/IMPALA-1013) | FrontTest.TestGetFunctions is unreasonably slow |  Major | . | Nong Li | Alan Choi |
| [IMPALA-1038](https://issues.apache.org/jira/browse/IMPALA-1038) | gerrit verify merge should abort if any tests fail |  Major | . | Nong Li | Lenni Kuff |
| [IMPALA-1030](https://issues.apache.org/jira/browse/IMPALA-1030) | INSERT into partitioned table crashes impalad in impala::NativeUdfExpr::ComputeFn  @ be/src/exprs/native-udf-expr.cc:90 |  Major | . | John Russell | Skye Wanderman-Milne |
| [IMPALA-834](https://issues.apache.org/jira/browse/IMPALA-834) | CREATE TABLE LIKE fails if source is a view |  Major | . | John Russell | Anusha Dasarakothapalli |
| [IMPALA-1035](https://issues.apache.org/jira/browse/IMPALA-1035) | Aggregation estimated row size is not correct |  Major | . | Nong Li | Dimitris Tsirogiannis |
| [IMPALA-1039](https://issues.apache.org/jira/browse/IMPALA-1039) | Impalad is crashing in the cluster runs |  Blocker | . | Nong Li | Ippokratis Pandis |
| [IMPALA-1036](https://issues.apache.org/jira/browse/IMPALA-1036) | If there is a non existing or non writable directory in the list of scratch directories that is passed in as parameter, impala should exit gracefully |  Minor | . | Taras Bobrovytsky | Srinath |
| [IMPALA-877](https://issues.apache.org/jira/browse/IMPALA-877) | impala-shell prints certain runtime errors twice |  Major | . | Lenni Kuff | Skye Wanderman-Milne |
| [IMPALA-1046](https://issues.apache.org/jira/browse/IMPALA-1046) | Race condition in IoMgr. Blocked ranges enqueued after cancel. |  Major | . | Nong Li | Nong Li |
| [IMPALA-1043](https://issues.apache.org/jira/browse/IMPALA-1043) | Instability running queries on a cluster with low mem limit |  Major | . | Nong Li | Nong Li |
| [IMPALA-1050](https://issues.apache.org/jira/browse/IMPALA-1050) | NPE error when pool placement policy cannot map user to pool |  Critical | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-1028](https://issues.apache.org/jira/browse/IMPALA-1028) | Cardinality estimate is wrong for partitioned tables if we filter out all partitions |  Major | . | Nong Li | Dimitris Tsirogiannis |
| [IMPALA-1005](https://issues.apache.org/jira/browse/IMPALA-1005) | Plan Fragment numbering in the query profile does not patch EXPLAIN output |  Major | . | Alan Choi | Alexander Behm |
| [IMPALA-1054](https://issues.apache.org/jira/browse/IMPALA-1054) | impalad crashes in tpcds-q7 (without the limit) |  Critical | . | Ishaan Joshi | Srinath |
| [IMPALA-1041](https://issues.apache.org/jira/browse/IMPALA-1041) | Some catalog failures are not propagated back to impalad |  Major | . | Nong Li | Lenni Kuff |
| [IMPALA-1040](https://issues.apache.org/jira/browse/IMPALA-1040) | Reading a decimal partitioned column with invalid values breaks |  Major | . | Nong Li | Dimitris Tsirogiannis |
| [IMPALA-1055](https://issues.apache.org/jira/browse/IMPALA-1055) | Compute stats query statements don't quote DBs clashing with keywords. |  Blocker | . | Alexander Behm | Ippokratis Pandis |
| [IMPALA-950](https://issues.apache.org/jira/browse/IMPALA-950) | Running compute Stats does not produce any stats for decimal columns. |  Critical | . | Ishaan Joshi | Nong Li |
| [IMPALA-881](https://issues.apache.org/jira/browse/IMPALA-881) | Distributed joins with unions inside (inline) views. |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-1062](https://issues.apache.org/jira/browse/IMPALA-1062) | Impalad Crash When 20 Concurrent Query On The In Memory Cached Hdfs File |  Major | . | sun tiancheng |  |
| [IMPALA-960](https://issues.apache.org/jira/browse/IMPALA-960) | count() over inline view with limit appears to ship entire row over exchange node |  Major | . | Lenni Kuff |  |
| [IMPALA-1061](https://issues.apache.org/jira/browse/IMPALA-1061) | Unqualified implicit table alias does not work with '\*' expr or views. |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-1065](https://issues.apache.org/jira/browse/IMPALA-1065) | Running explain on attached (TPC-DS) query throws IllegalStateExcpetion. |  Blocker | . | Dileep Kumar | Dimitris Tsirogiannis |
| [IMPALA-1066](https://issues.apache.org/jira/browse/IMPALA-1066) | GCC doesn't like ByteSwap |  Major | . | Nong Li | Nong Li |
| [IMPALA-1060](https://issues.apache.org/jira/browse/IMPALA-1060) | UDF memory error |  Blocker | . | Nong Li | Nong Li |
| [IMPALA-1068](https://issues.apache.org/jira/browse/IMPALA-1068) | Compute Stats should place -1 in #Nulls |  Major | . | Ippokratis Pandis | Ippokratis Pandis |
| [IMPALA-489](https://issues.apache.org/jira/browse/IMPALA-489) | impala-shell only works with ascii characters |  Blocker | . | Lenni Kuff | Ishaan Joshi |
| [IMPALA-1083](https://issues.apache.org/jira/browse/IMPALA-1083) | Deadlock in scan node |  Major | . | Alan Choi | Skye Wanderman-Milne |
| [IMPALA-738](https://issues.apache.org/jira/browse/IMPALA-738) | Non-ASCII character in table name causes impala-shell to disconnect |  Minor | . | John Russell | Ishaan Joshi |
| [IMPALA-4209](https://issues.apache.org/jira/browse/IMPALA-4209) | Incorrect timezone conversion with 'from\_utc\_timestamp' function in Impala |  Blocker | Backend | Lars Volker |  |
| [IMPALA-4211](https://issues.apache.org/jira/browse/IMPALA-4211) | Impala query on an HBase table takes almost same time as Hive |  Blocker | Frontend | Lars Volker |  |
| [IMPALA-4218](https://issues.apache.org/jira/browse/IMPALA-4218) | Query planning failed in HdfsScanNode.evalBinaryPredicate |  Blocker | Frontend | Lars Volker |  |
| [IMPALA-4220](https://issues.apache.org/jira/browse/IMPALA-4220) | Incorrect query result in Impala |  Blocker | Frontend | Lars Volker |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-997](https://issues.apache.org/jira/browse/IMPALA-997) | cast(string as Decimal(x,y)) can be wrong even if the string conforms to the type of decimal it's being cast to. |  Major | . | Ishaan Joshi | Nong Li |
| [IMPALA-1000](https://issues.apache.org/jira/browse/IMPALA-1000) | Casting all integer types to a legal Decimal is broken. |  Major | . | Ishaan Joshi | Nong Li |
| [IMPALA-974](https://issues.apache.org/jira/browse/IMPALA-974) | cast(float/double to Decimal(x,y)) yields unexpected results. |  Major | . | Ishaan Joshi | Nong Li |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-334](https://issues.apache.org/jira/browse/IMPALA-334) | Add support for "SHOW PARTITIONS" to view partitions for a table |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-1014](https://issues.apache.org/jira/browse/IMPALA-1014) | Disable Decimal in CREATE \* on CDH4 |  Blocker | . | Nong Li | Skye Wanderman-Milne |
| [IMPALA-986](https://issues.apache.org/jira/browse/IMPALA-986) | Allow creating a parquet table from an existing parquet file. |  Major | . | Nong Li | Victor Bittorf |
| [IMPALA-1052](https://issues.apache.org/jira/browse/IMPALA-1052) | Display a warning when an order-by without limit is ignored |  Major | . | Srinath | Srinath |


