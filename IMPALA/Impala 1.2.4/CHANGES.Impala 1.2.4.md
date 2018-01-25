
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

## Release Impala 1.2.4 - 2014-03-06



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-136](https://issues.apache.org/jira/browse/IMPALA-136) | GROUP BY float/double. |  Major | . | Alexander Behm | Alexander Behm |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-138](https://issues.apache.org/jira/browse/IMPALA-138) | Error messages for unknown column types are particularly bad |  Major | . | Henry Robinson | Alexander Behm |
| [IMPALA-820](https://issues.apache.org/jira/browse/IMPALA-820) | Missed pushdown opportunity when HAVING predicates refer to non-aggregates |  Major | . | Henry Robinson |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-285](https://issues.apache.org/jira/browse/IMPALA-285) | Multiple outer joins with nesting crash impalad. |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-287](https://issues.apache.org/jira/browse/IMPALA-287) | Full outer join is missing results. |  Major | . | Alexander Behm | Alexander Behm |
| [IMPALA-715](https://issues.apache.org/jira/browse/IMPALA-715) | ArrayIndexOutOfBoundsException / Invalid query handle when reading large HBase cell |  Major | . | Alan Choi |  |
| [IMPALA-723](https://issues.apache.org/jira/browse/IMPALA-723) | Union queries give Wrong result in a UNION followed by SIGSEGV in another union |  Blocker | . | Manoj Samel |  |
| [IMPALA-735](https://issues.apache.org/jira/browse/IMPALA-735) | select with distinct and full outer join, impalad coredump |  Critical | . | qiushanggao | Nong Li |
| [IMPALA-736](https://issues.apache.org/jira/browse/IMPALA-736) | invalidate metadata \<table name\> should add the table to the catalog if it doesn't already exist |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-805](https://issues.apache.org/jira/browse/IMPALA-805) | Join predicate incorrectly ignored |  Blocker | . | casey | Marcel Kornacker |
| [IMPALA-809](https://issues.apache.org/jira/browse/IMPALA-809) | Statestore seems send concurrent heartbeats to the same subscriber leading to repeated "Subscriber '\<hostname\>' is registering with statestore, ignoring update" messages |  Major | . | Lenni Kuff | Henry Robinson |
| [IMPALA-823](https://issues.apache.org/jira/browse/IMPALA-823) | Catalog Server does not properly handle Hive Metastore connection failures when performing background table loading |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-818](https://issues.apache.org/jira/browse/IMPALA-818) | The Catalog Server exits with an OOM error after a certain number of CREATE statements |  Blocker | . | Ishaan Joshi | Lenni Kuff |
| [IMPALA-828](https://issues.apache.org/jira/browse/IMPALA-828) | Query against Avro table crashes Impala with codegen enabled. |  Major | . | Alexander Behm | Nong Li |
| [IMPALA-749](https://issues.apache.org/jira/browse/IMPALA-749) | Impala cannot load tables with more than Short.MAX\_VALUE number of partitions |  Major | . | Alan Choi | Lenni Kuff |
| [IMPALA-846](https://issues.apache.org/jira/browse/IMPALA-846) | Illegal state exception in query when HAVING predicate compares aggergate of columns from different tables |  Major | . | casey |  |
| [IMPALA-737](https://issues.apache.org/jira/browse/IMPALA-737) | Catalog Service should load table metadata lazily |  Major | . | Lenni Kuff | Lenni Kuff |
| [IMPALA-4214](https://issues.apache.org/jira/browse/IMPALA-4214) | Remove import of Parquet Hive SerDe class that no longer exists |  Blocker | Frontend | Lars Volker |  |


