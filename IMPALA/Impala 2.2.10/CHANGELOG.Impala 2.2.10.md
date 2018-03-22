
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

## Release Impala 2.2.10 - Unreleased (as of 2018-03-22)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [IMPALA-2264](https://issues.apache.org/jira/browse/IMPALA-2264) | Implicit casts to integers from decimals with higher precision sometimes allowed |  Blocker | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2473](https://issues.apache.org/jira/browse/IMPALA-2473) | Excessive memory usage by scan nodes |  Major | . | Tim Armstrong | Tim Armstrong |
| [IMPALA-2765](https://issues.apache.org/jira/browse/IMPALA-2765) | AnalysisException: operands of type BOOLEAN and TIMESTAMP are not comparable when OUTER JOIN with CASE statement |  Major | Frontend | Eric Lin | bharath v |
| [IMPALA-2798](https://issues.apache.org/jira/browse/IMPALA-2798) | After adding a column to avro table, Impala returns weird result if codegen is enabled. |  Major | Backend | Juan Yu | Juan Yu |
| [IMPALA-2643](https://issues.apache.org/jira/browse/IMPALA-2643) | Nested inline view produces incorrect result when referencing the same column implicitly |  Blocker | Frontend | Huaisi Xu | Huaisi Xu |
| [IMPALA-3034](https://issues.apache.org/jira/browse/IMPALA-3034) | MemTracker leak on PHJ failure to spill |  Blocker | Backend | Matthew Jacobs | Michael Ho |
| [IMPALA-2914](https://issues.apache.org/jira/browse/IMPALA-2914) | Hit DCHECK Check failed: HasDateOrTime() |  Blocker | Backend | Juan Yu | Juan Yu |
| [IMPALA-3085](https://issues.apache.org/jira/browse/IMPALA-3085) | DataSinks' MemTrackers need to unregister themselves from parent |  Blocker | Backend | Michael Ho | Michael Ho |
| [IMPALA-3093](https://issues.apache.org/jira/browse/IMPALA-3093) | ReopenClient() could NULL out 'client\_key' causing a crash |  Blocker | Distributed Exec | Sailesh Mukil | Sailesh Mukil |
| [IMPALA-3095](https://issues.apache.org/jira/browse/IMPALA-3095) | Allow additional Kerberos users to be authorized to access internal APIs |  Blocker | Security | Henry Robinson | Henry Robinson |


