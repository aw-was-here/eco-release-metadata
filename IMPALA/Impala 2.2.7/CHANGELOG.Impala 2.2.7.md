
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

## Release Impala 2.2.7 - Unreleased (as of 2018-02-06)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-1983](https://issues.apache.org/jira/browse/IMPALA-1983) | Impala should handle corrupted table stats better |  Critical | . | Juan Yu | Martin Grund |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-1987](https://issues.apache.org/jira/browse/IMPALA-1987) | Wrong results when query has an outer join, inline views and null-generating functions like coalesce |  Blocker | . | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-1898](https://issues.apache.org/jira/browse/IMPALA-1898) | Substituting the agg output in analysis has issues with explicit select-list aliases. |  Critical | . | Alexander Behm | Tim Armstrong |
| [IMPALA-1756](https://issues.apache.org/jira/browse/IMPALA-1756) | Constant expressions not checked for errors, no state cleanup on exception. |  Major | . | Grant Henke | Sailesh Mukil |
| [IMPALA-2088](https://issues.apache.org/jira/browse/IMPALA-2088) | Incorrect result (Analytic Functions) |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-1737](https://issues.apache.org/jira/browse/IMPALA-1737) | invalid tuple\_idx when combining INSERT INTO with analytic subquery |  Blocker | . | Tristan Stevens | Alexander Behm |
| [IMPALA-2199](https://issues.apache.org/jira/browse/IMPALA-2199) | Row count not updated when compute incremental stats is used with a partition spec that contains no data |  Minor | . | Chris Channing | Chris Channing |
| [IMPALA-2201](https://issues.apache.org/jira/browse/IMPALA-2201) | Compute [incremental] stats may not persist the stats if the data was loaded from Hive with hive.stats.autogather=true. |  Blocker | . | Alexander Behm | Alexander Behm |
| [IMPALA-2203](https://issues.apache.org/jira/browse/IMPALA-2203) | CTAS and IAS produce different results vs SELECT when using FULL JOIN |  Blocker | . | Juan Yu | Alexander Behm |
| [IMPALA-2216](https://issues.apache.org/jira/browse/IMPALA-2216) | TestLastDdlTimeUpdate fails with "Illegal reference to unmaterialized slot" |  Blocker | . | Henry Robinson | Alexander Behm |
| [IMPALA-2089](https://issues.apache.org/jira/browse/IMPALA-2089) | Predicate from the ON clause of an inner join is dropped during planning |  Blocker | . | Taras Bobrovytsky | Alexander Behm |
| [IMPALA-2239](https://issues.apache.org/jira/browse/IMPALA-2239) | Failed test: query\_test.test\_queries.TestQueries.test\_misc in impala-master-cdh5-exhaustive |  Blocker | . | Dimitris Tsirogiannis | Taras Bobrovytsky |
| [IMPALA-2178](https://issues.apache.org/jira/browse/IMPALA-2178) | Impala returns incorrect value when group by multiple CHAR column |  Blocker | . | Juan Yu | Skye Wanderman-Milne |
| [IMPALA-2266](https://issues.apache.org/jira/browse/IMPALA-2266) | IllegalStateException: Illegal reference to non-materialized tuple: tid=3 |  Blocker | . | casey | Alexander Behm |
| [IMPALA-2227](https://issues.apache.org/jira/browse/IMPALA-2227) | S3:query\_test.test\_queries.TestQueries.test\_exprs failure |  Blocker | . | Dimitris Tsirogiannis | Juan Yu |


