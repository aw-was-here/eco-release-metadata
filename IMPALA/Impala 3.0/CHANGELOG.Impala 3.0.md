
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

## Release Impala 3.0 - Unreleased (as of 2018-02-06)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-6395](https://issues.apache.org/jira/browse/IMPALA-6395) | Allow the accumulated row batch size of a data sink to be tunable |  Minor | Distributed Exec | Michael Ho | Michael Ho |
| [IMPALA-2963](https://issues.apache.org/jira/browse/IMPALA-2963) | Deprecate query option: disable\_cached\_reads |  Minor | Backend | Lars Volker | Tim Armstrong |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-4371](https://issues.apache.org/jira/browse/IMPALA-4371) | Incorrect DCHECK-s in hdfs-parquet-table-writer |  Major | Backend | Zoltan Ivanfi | Zoltan Ivanfi |
| [IMPALA-5191](https://issues.apache.org/jira/browse/IMPALA-5191) | Behavior of GROUP BY, HAVING, ORDER BY with column aliases should be more standard conforming |  Major | Frontend | Adriano | Zoltán Borók-Nagy |
| [IMPALA-6322](https://issues.apache.org/jira/browse/IMPALA-6322) | Group by expression fails when expression includes a CAST |  Major | Frontend | N Campbell | Zoltán Borók-Nagy |
| [IMPALA-6447](https://issues.apache.org/jira/browse/IMPALA-6447) | Failure in tests.stress.concurrent\_select |  Blocker | Infrastructure | Dimitris Tsirogiannis | Michael Brown |
| [IMPALA-6215](https://issues.apache.org/jira/browse/IMPALA-6215) | Race between lib\_cache and java udf class loading |  Major | Backend, Frontend | Vuk Ercegovac | Vuk Ercegovac |
| [IMPALA-6303](https://issues.apache.org/jira/browse/IMPALA-6303) | [DOCS] Incorrect mention of DataNodes in Impala docs |  Minor | Docs | Balazs Jeszenszky |  |
| [IMPALA-4319](https://issues.apache.org/jira/browse/IMPALA-4319) | Remove unused query options in compat-breaking version |  Minor | Backend | Michael Ho | Tim Armstrong |
| [IMPALA-6441](https://issues.apache.org/jira/browse/IMPALA-6441) | concurrent select binary search explain string pattern match is wrong |  Major | Infrastructure | Michael Brown | Michael Brown |
| [IMPALA-6429](https://issues.apache.org/jira/browse/IMPALA-6429) | Decimal division returns an incorrect result |  Blocker | Backend | Taras Bobrovytsky | Taras Bobrovytsky |
| [IMPALA-6472](https://issues.apache.org/jira/browse/IMPALA-6472) | Builds broken because test\_exprs uses a reserved word |  Blocker | Infrastructure | Tim Armstrong | Tianyi Wang |
| [IMPALA-5293](https://issues.apache.org/jira/browse/IMPALA-5293) | Turn insert clustering on by default |  Major | Frontend | Lars Volker | Lars Volker |
| [IMPALA-6338](https://issues.apache.org/jira/browse/IMPALA-6338) | test\_profile\_fragment\_instances failing |  Critical | Backend | David Knupp | Thomas Tauber-Marshall |
| [IMPALA-4924](https://issues.apache.org/jira/browse/IMPALA-4924) | Remove DECIMAL V1 code at next compatibility breaking version |  Major | Frontend | Dan Hecht | Taras Bobrovytsky |
| [IMPALA-6471](https://issues.apache.org/jira/browse/IMPALA-6471) | Incorrect Impala ALTER TABLE statement documentation |  Minor | Docs | Jeremy Beard | Alex Rodoni |
| [IMPALA-6473](https://issues.apache.org/jira/browse/IMPALA-6473) | Error in analytic sort with same expr in 'partition by' and 'order by' |  Critical | Frontend | Thomas Tauber-Marshall | Thomas Tauber-Marshall |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-4886](https://issues.apache.org/jira/browse/IMPALA-4886) | Expose per table partition/files/blocks count in web UI |  Major | Catalog | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-6356](https://issues.apache.org/jira/browse/IMPALA-6356) | Excessive synchronous logging in RpczStore::LogTrace causes severe slowdown for exchange operators spanning 2-3 minutes |  Critical | Distributed Exec | Mostafa Mokhtar | Michael Ho |
| [IMPALA-3562](https://issues.apache.org/jira/browse/IMPALA-3562) | Extend "compute stats" syntax to support a list of columns |  Minor | Frontend | Mostafa Mokhtar | Vuk Ercegovac |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-3916](https://issues.apache.org/jira/browse/IMPALA-3916) | Reserve SQL:2016 keywords |  Minor | Frontend | Justin Erickson | Tianyi Wang |


