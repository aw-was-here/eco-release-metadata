
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

## Release Impala 1.1 - 2013-07-23



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-374](https://issues.apache.org/jira/browse/IMPALA-374) | Support WITH clause to factor out subqueries out of main query. |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-394](https://issues.apache.org/jira/browse/IMPALA-394) | add memory usage tracking |  Major | . | Greg Rahn | Alan Choi |
| [IMPALA-373](https://issues.apache.org/jira/browse/IMPALA-373) | Add support for 'LOAD DATA' statements |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-403](https://issues.apache.org/jira/browse/IMPALA-403) | Add support for DESCRIBE FORMATTED \<table name\> |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-434](https://issues.apache.org/jira/browse/IMPALA-434) | Impala Read and Write HBase Binary Encoded values. |  Major | . | Alan Choi |  |
| [IMPALA-387](https://issues.apache.org/jira/browse/IMPALA-387) | Make "REFRESH" command a SQL statement rather than RPC |  Major | . | Lenni Kuff | Alan Choi |
| [IMPALA-372](https://issues.apache.org/jira/browse/IMPALA-372) | Support virtual views using CREATE VIEW statement. |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-455](https://issues.apache.org/jira/browse/IMPALA-455) | add function NVL() |  Minor | . | Greg Rahn | Alexander Behm |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-370](https://issues.apache.org/jira/browse/IMPALA-370) | Add HDFS read metrics to runtime profiles |  Major | . | Nong Li | Nong Li |
| [IMPALA-86](https://issues.apache.org/jira/browse/IMPALA-86) | Add password protection / https support to debug webserver |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-375](https://issues.apache.org/jira/browse/IMPALA-375) | Support column permutations on INSERT |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-418](https://issues.apache.org/jira/browse/IMPALA-418) | "translate" UDF exists in Hive but not in Impala |  Minor | . | Gwen Shapira |  |
| [IMPALA-381](https://issues.apache.org/jira/browse/IMPALA-381) | Tuning parameters for Impala HBase Integration |  Minor | . | Justin Hancock | Alan Choi |
| [IMPALA-339](https://issues.apache.org/jira/browse/IMPALA-339) | Improve table refresh time |  Major | . | Alan Choi | Alan Choi |
| [IMPALA-401](https://issues.apache.org/jira/browse/IMPALA-401) | Impala Avro doesn't support Avro schema evolution |  Major | . | Benyi Wang | Skye Wanderman-Milne |
| [IMPALA-188](https://issues.apache.org/jira/browse/IMPALA-188) | Please improve the error message displayed when you don't use -k with impala-shell in an kerberos secured cluster. |  Major | Clients | Robert Justice | Ishaan Joshi |
| [IMPALA-441](https://issues.apache.org/jira/browse/IMPALA-441) | support default values for Avro tables |  Major | . | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-202](https://issues.apache.org/jira/browse/IMPALA-202) | Clean up locking in HdfsScanNode/ScannerContext |  Major | . | Nong Li | Nong Li |
| [IMPALA-192](https://issues.apache.org/jira/browse/IMPALA-192) | Comments in impala-shell in interactive mode are not handled properly causing syntax errors or wrong results |  Minor | Clients | John Russell | Lenni Kuff |
| [IMPALA-257](https://issues.apache.org/jira/browse/IMPALA-257) | Parquet writer uses excessive memory with partitions |  Blocker | . | Nong Li | Nong Li |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-87](https://issues.apache.org/jira/browse/IMPALA-87) | Support INSERT without FROM |  Major | . | Henry Robinson | Alexander Behm |
| [IMPALA-379](https://issues.apache.org/jira/browse/IMPALA-379) | Impala does not close all opened files in test\_limit.py |  Major | . | Alan Choi | Nong Li |
| [IMPALA-350](https://issues.apache.org/jira/browse/IMPALA-350) | Wrong results of regexp |  Major | . | Alan Choi | Nong Li |
| [IMPALA-355](https://issues.apache.org/jira/browse/IMPALA-355) | Impala crashes when attempting to read from hdfs immediately after starting (possibly within libhdfs) |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-396](https://issues.apache.org/jira/browse/IMPALA-396) | Impala's 1.0.1 Shell Broke Python 2.4 Compatibility (AttributeError: 'module' object has no attribute 'field\_size\_limit) |  Blocker | Clients | Ricky Saltzer | Ishaan Joshi |
| [IMPALA-406](https://issues.apache.org/jira/browse/IMPALA-406) | Writing a NULL to the first column in an HBase table crashes Impala in debug mode |  Major | . | Henry Robinson | Alan Choi |
| [IMPALA-321](https://issues.apache.org/jira/browse/IMPALA-321) | Add millisecond granularity to start / end times in profile summary |  Minor | . | Kyle Vigen | Henry Robinson |
| [IMPALA-368](https://issues.apache.org/jira/browse/IMPALA-368) | Confusing error message when attempting to execute query from impala-shell if not connected to an impalad server: Unknown Exception : 'NoneType' object has no attribute 'query' |  Major | Clients | Lenni Kuff | Ishaan Joshi |
| [IMPALA-384](https://issues.apache.org/jira/browse/IMPALA-384) | In the profile the DecompressionTime is always 0ns for RCfile format |  Minor | . | Jordan Lee | Nong Li |
| [IMPALA-367](https://issues.apache.org/jira/browse/IMPALA-367) | For secure HS2 connection, Impala needs to populate TSessionState with username info |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-410](https://issues.apache.org/jira/browse/IMPALA-410) | Fix overflow in ReadWriteUtil::GetLongInt() |  Major | . | Nong Li | Nong Li |
| [IMPALA-419](https://issues.apache.org/jira/browse/IMPALA-419) | Impala is missing dayofweek() timestamp function. |  Major | . | Alexander Behm |  |
| [IMPALA-364](https://issues.apache.org/jira/browse/IMPALA-364) | Cancelled queries sometimes aren't removed from the inflight query list |  Critical | . | Kyle Vigen | Henry Robinson |
| [IMPALA-404](https://issues.apache.org/jira/browse/IMPALA-404) | Bigint and float's compatible type is double. |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-399](https://issues.apache.org/jira/browse/IMPALA-399) | Impala doesn't recognize primitives as type names in Avro schemas |  Major | . | Tom White | Skye Wanderman-Milne |
| [IMPALA-413](https://issues.apache.org/jira/browse/IMPALA-413) | Impala server calls CancelInternal during statestore subscriber callback |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-429](https://issues.apache.org/jira/browse/IMPALA-429) | Queries that have syntax errors should not go in the query log |  Major | . | Nong Li | Henry Robinson |
| [IMPALA-309](https://issues.apache.org/jira/browse/IMPALA-309) | State store subscriber heartbeat intervals sometimes very large, causing error "Connection with state-store lost, entering recovery mode" |  Major | . | Lenni Kuff | Henry Robinson |
| [IMPALA-446](https://issues.apache.org/jira/browse/IMPALA-446) | HBaseScanNode counters are not right |  Major | . | Nong Li | Nong Li |
| [IMPALA-438](https://issues.apache.org/jira/browse/IMPALA-438) | The command-line option -r no longer works in impala-shell. |  Blocker | Clients | Ishaan Joshi | Alan Choi |
| [IMPALA-448](https://issues.apache.org/jira/browse/IMPALA-448) | Hive queries fail against table when Impala INSERT is in progress on same table |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-327](https://issues.apache.org/jira/browse/IMPALA-327) | Cannot exit impala shell while a multi-line command is in progress |  Major | Clients | Lenni Kuff | Ishaan Joshi |
| [IMPALA-453](https://issues.apache.org/jira/browse/IMPALA-453) | CRC hash produces non-uniformly distributed values |  Major | . | Aaron Davidson | Aaron Davidson |
| [IMPALA-248](https://issues.apache.org/jira/browse/IMPALA-248) | impala shell doesn't handle multiple commands (delimited by semi-colons) in the same line in interactive mode |  Critical | Clients | Lenni Kuff | Ishaan Joshi |
| [IMPALA-313](https://issues.apache.org/jira/browse/IMPALA-313) | Debug option 'WAIT' does not do the right thing. |  Major | . | Nong Li | Skye Wanderman-Milne |
| [IMPALA-468](https://issues.apache.org/jira/browse/IMPALA-468) | impalad coredump executing targeted perf @ impala::ScannerContext::Stream::GetBytesInternal () |  Blocker | . | Lenni Kuff | Nong Li |
| [IMPALA-85](https://issues.apache.org/jira/browse/IMPALA-85) | planner fails with "Join requires at least one equality predicate between the two tables" when "from" table order does not match "where" join order |  Critical | . | Greg Rahn | Marcel Kornacker |
| [IMPALA-412](https://issues.apache.org/jira/browse/IMPALA-412) | Impala might hang when an impalad die during query execution |  Major | . | Alan Choi | Skye Wanderman-Milne |
| [IMPALA-474](https://issues.apache.org/jira/browse/IMPALA-474) | Statestore not properly detecting and evicting subscribers during failure leading to endless "Duplicate registration of subscriber: subscriber-id" messages |  Major | . | Lenni Kuff | Henry Robinson |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-346](https://issues.apache.org/jira/browse/IMPALA-346) | Update last\_DdlTime after performing dynamic partition insert (if partitions are created) |  Major | . | Alan Choi | Alexander Behm |
| [IMPALA-390](https://issues.apache.org/jira/browse/IMPALA-390) | Verify that log dir is writable by Impala at startup |  Major | . | Alan Choi | Alan Choi |
| [IMPALA-442](https://issues.apache.org/jira/browse/IMPALA-442) | Test HDFS communication test at startup |  Major | . | Alan Choi | Alan Choi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-70](https://issues.apache.org/jira/browse/IMPALA-70) | Respect tbl properties to allow empty strings to be treated as NULL |  Minor | . | Nong Li | Alexander Behm |
| [IMPALA-284](https://issues.apache.org/jira/browse/IMPALA-284) | Support string literals as column aliases |  Minor | . | Lenni Kuff | Alexander Behm |
| [IMPALA-279](https://issues.apache.org/jira/browse/IMPALA-279) | Add unit tests for the impala shell |  Blocker | . | Lenni Kuff | Ishaan Joshi |
| [IMPALA-223](https://issues.apache.org/jira/browse/IMPALA-223) | Tests should validate metrics after runs |  Blocker | . | Nong Li | Ishaan Joshi |


