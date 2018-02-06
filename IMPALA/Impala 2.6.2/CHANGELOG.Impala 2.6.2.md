
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

## Release Impala 2.6.2 - Unreleased (as of 2018-02-06)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-3633](https://issues.apache.org/jira/browse/IMPALA-3633) | ImpalaServer::ReportExecStatus   return\_val   forget  \_\_isset.status |  Critical | Backend | fishing | Tim Armstrong |
| [IMPALA-1346](https://issues.apache.org/jira/browse/IMPALA-1346) | Sorter fails with out-of-memory in queries with multiple spilling operators |  Critical | Backend | Nong Li | Tim Armstrong |
| [IMPALA-3670](https://issues.apache.org/jira/browse/IMPALA-3670) | Block is not deleted by sorter in some cases when spilling is disabled |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3646](https://issues.apache.org/jira/browse/IMPALA-3646) | stress: rle-encoding.h:260] Check failed: literal\_count\_ \> 0 (0 vs. 0) |  Critical | Backend | Michael Brown | Alexander Behm |
| [IMPALA-3441](https://issues.apache.org/jira/browse/IMPALA-3441) | Impala should not crash for invalid avro serialized data |  Critical | Backend | Anuj Phadke | Tim Armstrong |
| [IMPALA-3732](https://issues.apache.org/jira/browse/IMPALA-3732) | Avro scanner can break on strings \>= 2GB |  Critical | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3745](https://issues.apache.org/jira/browse/IMPALA-3745) | Corrupt encoded values in parquet files can cause crashes |  Blocker | Backend | Tim Armstrong | Tim Armstrong |
| [IMPALA-3754](https://issues.apache.org/jira/browse/IMPALA-3754) | TestParquet.test\_corrupt\_rle\_counts fails |  Blocker | Backend | casey | Tim Armstrong |
| [IMPALA-3680](https://issues.apache.org/jira/browse/IMPALA-3680) | Reset the file offset after failed cache reads |  Major | Backend | bharath v | bharath v |
| [IMPALA-3628](https://issues.apache.org/jira/browse/IMPALA-3628) | Cancellation via shell may hang over SSL |  Critical | Clients | Matthew Jacobs | Henry Robinson |
| [IMPALA-3678](https://issues.apache.org/jira/browse/IMPALA-3678) | Preconditions check in SortNode when planning query that has union operands with order by + limit |  Blocker | Frontend | fishing | Alexander Behm |
| [IMPALA-3159](https://issues.apache.org/jira/browse/IMPALA-3159) | impala-shell does not accept wildcard or SAN certificates |  Critical | Security | Henry Robinson | Sailesh Mukil |
| [IMPALA-3861](https://issues.apache.org/jira/browse/IMPALA-3861) | Cannot resolve correlated column reference inside a BETWEEN predicate. |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-3965](https://issues.apache.org/jira/browse/IMPALA-3965) | TSSLSocketWithWildcardSAN.py not exported as part of impala-shell build lib |  Blocker | Clients | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3940](https://issues.apache.org/jira/browse/IMPALA-3940) | Different query plans produced when accessing base tables or identical views. |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-3820](https://issues.apache.org/jira/browse/IMPALA-3820) | Handle linkage errors gracefully while loading java udfs from Hive |  Critical | Catalog | bharath v | bharath v |
| [IMPALA-3776](https://issues.apache.org/jira/browse/IMPALA-3776) | 'describe formatted' broken for avro tables with mismatching column information in hive metastore |  Critical | Frontend | Lars Volker | Lars Volker |
| [IMPALA-3930](https://issues.apache.org/jira/browse/IMPALA-3930) | Impala throws IllegalStateException when [SHUFFLE] inserting data into a partition while select subquery group by partition columns |  Critical | Frontend | Huaisi Xu | Alexander Behm |
| [IMPALA-2570](https://issues.apache.org/jira/browse/IMPALA-2570) | Insert into/overwrite [SHUFFLE] hint is not applied unless the partition is not specified |  Critical | Frontend | Peter Ebert | Alexander Behm |
| [IMPALA-4049](https://issues.apache.org/jira/browse/IMPALA-4049) | Incorrect results from non-grouping aggregation on nested collection when on the build side of a nested-loop join. |  Blocker | Backend | Alexander Behm | Tim Armstrong |
| [IMPALA-4020](https://issues.apache.org/jira/browse/IMPALA-4020) | Catalog update can fail due to database creation/deletion in Hive. |  Major | Catalog | Anuj Phadke | bharath v |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-3344](https://issues.apache.org/jira/browse/IMPALA-3344) | Simplify and document invariants in Sorter |  Major | Backend | Tim Armstrong | Tim Armstrong |


