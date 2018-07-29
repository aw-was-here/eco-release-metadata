
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

## Release Impala 2.6.3 - Unreleased (as of 2018-07-29)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-3687](https://issues.apache.org/jira/browse/IMPALA-3687) | Unable to rename string column in schema file in AVRO |  Major | Catalog | Huaisi Xu | Huaisi Xu |
| [IMPALA-1619](https://issues.apache.org/jira/browse/IMPALA-1619) | Support single allocations larger 1GB |  Critical | Backend | Martin Grund | Michael Ho |
| [IMPALA-4170](https://issues.apache.org/jira/browse/IMPALA-4170) | Incorrect double quoting of identifier in SQL generated by COMPUTE INCREMENTAL STATS. |  Blocker | Frontend | Alexander Behm | Alexander Behm |
| [IMPALA-4180](https://issues.apache.org/jira/browse/IMPALA-4180) | Crash: impala::DiskIoRequestContext::Cancel |  Blocker | Backend | Taras Bobrovytsky | Michael Ho |
| [IMPALA-4196](https://issues.apache.org/jira/browse/IMPALA-4196) | Certain builtin functions throw symbol does not exist error when used inside aggregate function |  Major | Backend | Mala Chikka Kempanna | bharath v |
| [IMPALA-4237](https://issues.apache.org/jira/browse/IMPALA-4237) | Incorrect results when materializing a decimal in a data source scan node. |  Blocker | Backend | Alexander Behm | Alexander Behm |
| [IMPALA-4135](https://issues.apache.org/jira/browse/IMPALA-4135) | Thrift threaded server times-out waiting connections during high load |  Critical | Distributed Exec | Henry Robinson | Thomas Tauber-Marshall |

