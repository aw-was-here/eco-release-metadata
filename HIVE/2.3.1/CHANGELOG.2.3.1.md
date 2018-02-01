
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
# Apache Hive Changelog

## Release 2.3.1 - 2017-10-24



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-17048](https://issues.apache.org/jira/browse/HIVE-17048) | Pass HiveOperation info to HiveSemanticAnalyzerHook through HiveSemanticAnalyzerHookContext |  Major | Hooks | Aihua Xu | Aihua Xu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-17562](https://issues.apache.org/jira/browse/HIVE-17562) | ACID 1.0 + ETL strategy should treat empty compacted files as uncovered deltas |  Major | Transactions | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17665](https://issues.apache.org/jira/browse/HIVE-17665) | Update netty-all to latest 4.0.x.Final |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17664](https://issues.apache.org/jira/browse/HIVE-17664) | Refactor and add new tests |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [HIVE-17705](https://issues.apache.org/jira/browse/HIVE-17705) | HIVE-17562 is returning incorrect results |  Blocker | Transactions | Prasanth Jayachandran | Prasanth Jayachandran |
| [HIVE-17985](https://issues.apache.org/jira/browse/HIVE-17985) | When check the partitions size in the partitioned table, it will throw  NullPointerException |  Major | Parser, Physical Optimizer | wan kun | wan kun |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-17514](https://issues.apache.org/jira/browse/HIVE-17514) | Use SHA-256 for cookie signer to improve security |  Major | HiveServer2 | Tao Li | Tao Li |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HIVE-17862](https://issues.apache.org/jira/browse/HIVE-17862) | Update copyright date in NOTICE |  Trivial | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |


