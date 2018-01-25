
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

## Release Impala 2.0.1 - 2014-12-02



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-1400](https://issues.apache.org/jira/browse/IMPALA-1400) | Window function insert issue (LAG() + OVER) |  Critical | . | Steven | Dimitris Tsirogiannis |
| [IMPALA-1401](https://issues.apache.org/jira/browse/IMPALA-1401) | Many read errors with parquet files |  Blocker | . | Colin Marc | Skye Wanderman-Milne |
| [IMPALA-1410](https://issues.apache.org/jira/browse/IMPALA-1410) | regex functions no longer accept shorthand character classes |  Major | . | Skye Wanderman-Milne | Dan Hecht |
| [IMPALA-1397](https://issues.apache.org/jira/browse/IMPALA-1397) | Memory leak with string functions |  Major | . | S Y Zhang | Skye Wanderman-Milne |
| [IMPALA-1360](https://issues.apache.org/jira/browse/IMPALA-1360) | TPC-DS Query (16,94,95) - FE Exception ( BETWEEN Expression) |  Major | . | Martin Grund | Dimitris Tsirogiannis |
| [IMPALA-1361](https://issues.apache.org/jira/browse/IMPALA-1361) | TPC-DS Query 51 - FE Exception (With Clause) |  Major | . | Martin Grund | Dimitris Tsirogiannis |
| [IMPALA-1411](https://issues.apache.org/jira/browse/IMPALA-1411) | CREATE TABLE AS SELECT produces incorrect results |  Major | . | Taras Bobrovytsky | Dimitris Tsirogiannis |
| [IMPALA-1445](https://issues.apache.org/jira/browse/IMPALA-1445) | Bug in ClientCacheHelper can cause impalad to crash |  Major | . | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-1446](https://issues.apache.org/jira/browse/IMPALA-1446) | Create view statement throws an error when containing a subquery |  Major | . | Dimitris Tsirogiannis | Dimitris Tsirogiannis |
| [IMPALA-1442](https://issues.apache.org/jira/browse/IMPALA-1442) | Thrift w/sasl does not use buffered transport |  Major | . | Henry Robinson | Henry Robinson |
| [IMPALA-1386](https://issues.apache.org/jira/browse/IMPALA-1386) | Bad plan generated for TPC-DS query 1 |  Major | . | David Rorke | Dimitris Tsirogiannis |
| [IMPALA-1447](https://issues.apache.org/jira/browse/IMPALA-1447) | Document workaround for Hive issue to manually set table stats |  Major | Docs | Matthew Jacobs | John Russell |


