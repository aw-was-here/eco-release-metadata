
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

## Release Impala 1.2.1 - 2013-11-25



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-395](https://issues.apache.org/jira/browse/IMPALA-395) | Impala "show create table" statement |  Major | . | Hari Sekhon | Matthew Jacobs |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-631](https://issues.apache.org/jira/browse/IMPALA-631) | Enable proxy load balance to work with Kerberos enabled Impala |  Major | . | Alan Choi | Alan Choi |
| [IMPALA-644](https://issues.apache.org/jira/browse/IMPALA-644) | Impala shell takes a long time pre-process query file |  Major | . | Alan Choi | Ishaan Joshi |
| [IMPALA-513](https://issues.apache.org/jira/browse/IMPALA-513) | add a cpu time counter and time-series to the runtime profile |  Minor | . | Chris Leroy | Matthew Jacobs |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-620](https://issues.apache.org/jira/browse/IMPALA-620) | A StateStore subscriber registering with the same network address as an existing subscriber should succeed, overwriting the existing registration |  Blocker | . | Lenni Kuff | Henry Robinson |
| [IMPALA-636](https://issues.apache.org/jira/browse/IMPALA-636) | Failed DCHECK during 10-Node TPC-H stress run (50 clients) in simple-scheduler.cc:342] Check failed: !entry-\>second.empty() |  Major | . | Lenni Kuff | Nong Li |
| [IMPALA-597](https://issues.apache.org/jira/browse/IMPALA-597) | Impala crash at HdfsScanNode::InitTemplateTuple when partition metadata is corrupt. |  Blocker | . | Alan Choi | Lenni Kuff |
| [IMPALA-525](https://issues.apache.org/jira/browse/IMPALA-525) | Scanners use too much memory when reading past scan range |  Critical | . | Skye Wanderman-Milne | Skye Wanderman-Milne |
| [IMPALA-652](https://issues.apache.org/jira/browse/IMPALA-652) | Excessive memory consumption when query tables with 1k columns (Parquet file) |  Major | . | Alan Choi | Skye Wanderman-Milne |
| [IMPALA-657](https://issues.apache.org/jira/browse/IMPALA-657) | Join node consumes memory way beyond mem-limit |  Blocker | . | Alan Choi | Skye Wanderman-Milne |
| [IMPALA-371](https://issues.apache.org/jira/browse/IMPALA-371) | Shell does not make it clear that options are not set when disconnected |  Minor | . | Henry Robinson | Ishaan Joshi |
| [IMPALA-645](https://issues.apache.org/jira/browse/IMPALA-645) | Improve Impala shell query pre-processing time |  Blocker | Clients | Alan Choi | Ishaan Joshi |
| [IMPALA-664](https://issues.apache.org/jira/browse/IMPALA-664) | Perf regression on cluster runs |  Blocker | . | Nong Li | Nong Li |
| [IMPALA-571](https://issues.apache.org/jira/browse/IMPALA-571) | Impala shell does not cancel query immediately |  Blocker | Clients | Alan Choi | Ishaan Joshi |
| [IMPALA-160](https://issues.apache.org/jira/browse/IMPALA-160) | Impala crashes on startup on AMD machines without ssse3 support. |  Major | . | Vladimir Nicolici | Nong Li |
| [IMPALA-574](https://issues.apache.org/jira/browse/IMPALA-574) | parquet-hive-1.0.jar missing in hive jar path in v1.1.1 |  Blocker | . | Greg Rahn | Ishaan Joshi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-470](https://issues.apache.org/jira/browse/IMPALA-470) | Impala needs to cancel queries that are "inactive" after some timeout period. |  Major | . | Nong Li | Henry Robinson |


