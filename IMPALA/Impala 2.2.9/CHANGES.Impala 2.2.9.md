
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

## Release Impala 2.2.9 - Unreleased (as of 2018-01-25)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2664](https://issues.apache.org/jira/browse/IMPALA-2664) | prevent INCREMENTAL STATS to run when total size would exceed a threshold |  Major | . | Silvius Rus | bharath v |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-1949](https://issues.apache.org/jira/browse/IMPALA-1949) | Analysis exception when a binary predicate contains an IN operator with values. |  Major | . | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-2141](https://issues.apache.org/jira/browse/IMPALA-2141) | UnionNode::GetNext() doesn't check for query errors |  Major | . | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-2086](https://issues.apache.org/jira/browse/IMPALA-2086) | Incorrect handling of leap years when adding 1 year interval to date |  Blocker | . | Taras Bobrovytsky | casey |
| [IMPALA-2090](https://issues.apache.org/jira/browse/IMPALA-2090) | Incorrect handling of leap years when adding 1 month interval to date |  Critical | . | Taras Bobrovytsky | casey |
| [IMPALA-1675](https://issues.apache.org/jira/browse/IMPALA-1675) | Timestamp: Adding/subtracting very large time intervals to timestamps produces incorrect result |  Major | . | casey | casey |
| [IMPALA-1917](https://issues.apache.org/jira/browse/IMPALA-1917) | Query return empty result if it contains NullLiteral in inlineview |  Blocker | . | Juan Yu | Alexander Behm |
| [IMPALA-2286](https://issues.apache.org/jira/browse/IMPALA-2286) | Check failed: query\_to\_block\_mgrs\_.find(query\_id\_) != query\_to\_block\_mgrs\_.end() |  Blocker | . | casey | Dan Hecht |
| [IMPALA-1746](https://issues.apache.org/jira/browse/IMPALA-1746) | QueryExecState doesn't check for query cancellation or errors |  Critical | . | Skye Wanderman-Milne | Sailesh Mukil |
| [IMPALA-2357](https://issues.apache.org/jira/browse/IMPALA-2357) | Crash: impala::BufferedBlockMgr::Block::BytesRemaining |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2252](https://issues.apache.org/jira/browse/IMPALA-2252) | Crash (likely race) tearing down BufferedBlockMgr on query failure |  Blocker | . | Matthew Jacobs | Sailesh Mukil |
| [IMPALA-2446](https://issues.apache.org/jira/browse/IMPALA-2446) | Incorrect result (left join) |  Blocker | . | Taras Bobrovytsky | Dimitris Tsirogiannis |
| [IMPALA-2265](https://issues.apache.org/jira/browse/IMPALA-2265) | Check failed: buffer\_desc\_ != \_\_null |  Blocker | . | casey | Ippokratis Pandis |
| [IMPALA-2260](https://issues.apache.org/jira/browse/IMPALA-2260) | Crash: timestamp-functions.cc:641 - Check failed: result\_value \> input\_value |  Critical | . | Taras Bobrovytsky | casey |
| [IMPALA-2273](https://issues.apache.org/jira/browse/IMPALA-2273) | Make parquet scanner MAX\_PAGE\_HEADER\_SIZE configurable |  Major | . | Juan Yu | bharath v |
| [IMPALA-2559](https://issues.apache.org/jira/browse/IMPALA-2559) | sorter.cc:1079] Check failed: sorted\_runs\_.back()-\>is\_pinned\_ |  Critical | . | casey | Dan Hecht |
| [IMPALA-2533](https://issues.apache.org/jira/browse/IMPALA-2533) | Impala throws IllegalStateException when inserting data into a partition while select subquery group by partition columns |  Major | . | Yibing Shi | Huaisi Xu |
| [IMPALA-1459](https://issues.apache.org/jira/browse/IMPALA-1459) | Incorrect assignment of predicates through an outer join in an inline view. |  Blocker | . | Alexander Behm | Alexander Behm |
| [IMPALA-2731](https://issues.apache.org/jira/browse/IMPALA-2731) | Hbase scan node uses 2-4x memory after upgrade to impala 2.2.8 |  Major | . | Juan Yu | Martin Grund |


