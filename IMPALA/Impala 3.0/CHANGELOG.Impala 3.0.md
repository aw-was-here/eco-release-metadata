
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

## Release Impala 3.0 - Unreleased (as of 2018-02-01)



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


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-4886](https://issues.apache.org/jira/browse/IMPALA-4886) | Expose per table partition/files/blocks count in web UI |  Major | Catalog | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-6356](https://issues.apache.org/jira/browse/IMPALA-6356) | Excessive synchronous logging in RpczStore::LogTrace causes severe slowdown for exchange operators spanning 2-3 minutes |  Critical | Distributed Exec | Mostafa Mokhtar | Michael Ho |


