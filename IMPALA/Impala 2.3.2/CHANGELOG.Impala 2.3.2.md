
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

## Release Impala 2.3.2 - Unreleased (as of 2018-07-29)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2664](https://issues.apache.org/jira/browse/IMPALA-2664) | prevent INCREMENTAL STATS to run when total size would exceed a threshold |  Major | . | Silvius Rus | bharath v |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2535](https://issues.apache.org/jira/browse/IMPALA-2535) | PAGG fails to acquire buffers despite sufficient memory limit |  Blocker | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2113](https://issues.apache.org/jira/browse/IMPALA-2113) | Uninformative error message when combining SELECT DISTINCT with aggregate function in HAVING clause |  Major | . | Charlie Flowers | Chris Channing |
| [IMPALA-2225](https://issues.apache.org/jira/browse/IMPALA-2225) | Poor error message when group by missing on select t.\* |  Major | . | Philip Zeyliger | Chris Channing |
| [IMPALA-2103](https://issues.apache.org/jira/browse/IMPALA-2103) | test\_authorization.py test\_impersonation effective\_user testcase failure |  Critical | . | Dan Hecht | Henry Robinson |
| [IMPALA-2226](https://issues.apache.org/jira/browse/IMPALA-2226) | Impala should throw AnalysisError if table properties are too large |  Major | . | Martin Grund | Jim Apple |
| [IMPALA-2273](https://issues.apache.org/jira/browse/IMPALA-2273) | Make parquet scanner MAX\_PAGE\_HEADER\_SIZE configurable |  Major | . | Juan Yu | bharath v |
| [IMPALA-2591](https://issues.apache.org/jira/browse/IMPALA-2591) | DataStreamSender::Send() does not return an error status if SendBatch() failed |  Major | . | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-2559](https://issues.apache.org/jira/browse/IMPALA-2559) | sorter.cc:1079] Check failed: sorted\_runs\_.back()-\>is\_pinned\_ |  Critical | . | casey | Dan Hecht |
| [IMPALA-2614](https://issues.apache.org/jira/browse/IMPALA-2614) | ExchangeNode::Open() ignores DataStreamRecvr::CreateMerger() return status |  Major | . | Dan Hecht | Dan Hecht |
| [IMPALA-2558](https://issues.apache.org/jira/browse/IMPALA-2558) | Hit DCHECK in parquet scanner after block read error |  Critical | . | Tim Armstrong | Skye Wanderman-Milne |
| [IMPALA-2473](https://issues.apache.org/jira/browse/IMPALA-2473) | Excessive memory usage by scan nodes |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-1459](https://issues.apache.org/jira/browse/IMPALA-1459) | Incorrect assignment of predicates through an outer join in an inline view. |  Blocker | . | Alexander Behm | Alexander Behm |
| [IMPALA-2612](https://issues.apache.org/jira/browse/IMPALA-2612) | free-pool.h:75] Check failed: allocation != \_\_null |  Critical | . | casey | Michael Ho |
| [IMPALA-2731](https://issues.apache.org/jira/browse/IMPALA-2731) | Hbase scan node uses 2-4x memory after upgrade to impala 2.2.8 |  Major | . | Juan Yu | Martin Grund |
| [IMPALA-2695](https://issues.apache.org/jira/browse/IMPALA-2695) | Catalog stores URI in lowercase and cause sentry authorization fail |  Critical | . | Juan Yu | bharath v |
| [IMPALA-2776](https://issues.apache.org/jira/browse/IMPALA-2776) | Integration build broken: hive.serde2.SerDeException \\r and \\n cannot be used as escaping characters or separators |  Blocker | . | casey | Alexander Behm |
| [IMPALA-2630](https://issues.apache.org/jira/browse/IMPALA-2630) | query\_test.test\_scanners.TestParquet.test\_continue\_on\_error fails non-partititioned aggs / join |  Major | . | Martin Grund | Skye Wanderman-Milne |
| [IMPALA-2829](https://issues.apache.org/jira/browse/IMPALA-2829) | SEGV in AnalyticEvalNode touching NULL input\_stream\_ |  Blocker | Backend | Matthew Jacobs | Matthew Jacobs |
| [IMPALA-2643](https://issues.apache.org/jira/browse/IMPALA-2643) | Nested inline view produces incorrect result when referencing the same column implicitly |  Blocker | Frontend | Huaisi Xu | Huaisi Xu |
| [IMPALA-2598](https://issues.apache.org/jira/browse/IMPALA-2598) | Server\<-\>Server SSL and Kerberos do not work together |  Critical | Security | Henry Robinson | Sailesh Mukil |
| [IMPALA-2722](https://issues.apache.org/jira/browse/IMPALA-2722) | TestTPCHJoinQueries.test\_outer\_joins exceeds memory limit with non-partitioned hash joins |  Major | . | Michael Ho | Michael Ho |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2747](https://issues.apache.org/jira/browse/IMPALA-2747) | Thrift-client cleans openSSL state before using it in the case of the catalog |  Blocker | Security | Sailesh Mukil | Sailesh Mukil |


