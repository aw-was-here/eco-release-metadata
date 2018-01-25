
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

## Release Impala 1.3.1 - 2014-05-01



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-762](https://issues.apache.org/jira/browse/IMPALA-762) | Compute stats doesn't propagate underlying error correctly. |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-812](https://issues.apache.org/jira/browse/IMPALA-812) | Incorrect aggregate result involving tiny int / boolean colum with null values |  Major | . | casey | Nong Li |
| [IMPALA-909](https://issues.apache.org/jira/browse/IMPALA-909) | Parquet will spew with thrift deserialize errors even if the error is expected. |  Major | . | Nong Li | Nong Li |
| [IMPALA-925](https://issues.apache.org/jira/browse/IMPALA-925) | JDBC driver returns so results from getTables() and getColumns with null tableNamePattern |  Major | . | Alan Choi | Lenni Kuff |
| [IMPALA-827](https://issues.apache.org/jira/browse/IMPALA-827) | Impala should provide an option for new sub directories to automatically inherit the permissions of the parent directory |  Major | . | Shreepadma Venugopalan | Henry Robinson |
| [IMPALA-904](https://issues.apache.org/jira/browse/IMPALA-904) | Impalad crashes when left joining inline view that has aggregate using distinct |  Major | . | casey | Alexander Behm |
| [IMPALA-935](https://issues.apache.org/jira/browse/IMPALA-935) | NPE when planning a query |  Blocker | . | Iván de Prado | Alexander Behm |
| [IMPALA-901](https://issues.apache.org/jira/browse/IMPALA-901) | Incorrect result with group by query with null value in group by data |  Major | . | casey | Henry Robinson |
| [IMPALA-13](https://issues.apache.org/jira/browse/IMPALA-13) | Text data with carriage returns generates wrong results for count(\*) |  Critical | . | Nong Li | Skye Wanderman-Milne |
| [IMPALA-932](https://issues.apache.org/jira/browse/IMPALA-932) | String Concat executes child expr twice; it's inefficient and can be wrong when child expr is non-deterministic |  Major | . | Alan Choi | Skye Wanderman-Milne |
| [IMPALA-940](https://issues.apache.org/jira/browse/IMPALA-940) | Impalad segfaults when writing text data containing null char in impala::StringCompare (...) @ runtime/string-value.inline.h:43 |  Major | . | Lenni Kuff | Skye Wanderman-Milne |
| [IMPALA-924](https://issues.apache.org/jira/browse/IMPALA-924) | Coordinator Wait() appears to return before rows are available in some cases leading to client timeouts during fetches. |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-488](https://issues.apache.org/jira/browse/IMPALA-488) | IO Mgr should take instance memory limit into account when creating io buffers |  Major | . | Alan Choi | Nong Li |
| [IMPALA-949](https://issues.apache.org/jira/browse/IMPALA-949) | Impalad crashes in DiskIoMgr::AddScanRanges |  Major | . | Ishaan Joshi | Nong Li |
| [IMPALA-945](https://issues.apache.org/jira/browse/IMPALA-945) | INSERT column reordering doesn't work with SELECT clause |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-912](https://issues.apache.org/jira/browse/IMPALA-912) | Planner generates redundant hash exprs for data stream senders |  Major | . | Nong Li | Alexander Behm |
| [IMPALA-914](https://issues.apache.org/jira/browse/IMPALA-914) | NULL\_TYPE is mapped to JDBC's USER\_DEFINED\_TYPE which causes problems for the Hive JDBC driver. |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-922](https://issues.apache.org/jira/browse/IMPALA-922) | Yarn policy to use user's group returns unhelpful error when users not on local OS |  Major | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-956](https://issues.apache.org/jira/browse/IMPALA-956) | RequestPoolService should use short username of principal |  Major | . | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-939](https://issues.apache.org/jira/browse/IMPALA-939) | Regex should match anywhere in string |  Minor | . | Henry Robinson | Victor Bittorf |
| [IMPALA-888](https://issues.apache.org/jira/browse/IMPALA-888) | Illegal state exception (or crash) in query with UNION in inline view |  Blocker | . | casey | Alexander Behm |
| [IMPALA-934](https://issues.apache.org/jira/browse/IMPALA-934) | cached UDF libraries should be refreshed when a new function is created |  Major | . | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-977](https://issues.apache.org/jira/browse/IMPALA-977) | AsyncTimer runtime profile counter breaks QueryMonitoring |  Blocker | . | Nong Li | Nong Li |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-911](https://issues.apache.org/jira/browse/IMPALA-911) | Create maintenance thread for tcmalloc |  Major | . | Nong Li | Nong Li |
| [IMPALA-913](https://issues.apache.org/jira/browse/IMPALA-913) | Revisit Use of FNV Hash in exchange |  Major | . | Srinath | Srinath |
| [IMPALA-839](https://issues.apache.org/jira/browse/IMPALA-839) | Update tests to be more thorough when run exhaustively |  Critical | . | Nong Li | Lenni Kuff |


