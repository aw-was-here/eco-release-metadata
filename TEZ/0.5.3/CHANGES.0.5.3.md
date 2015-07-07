
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
# Apache Tez Changelog

## Release 0.5.3 - 2014-12-10

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1750](https://issues.apache.org/jira/browse/TEZ-1750) | Add a DAGScheduler which schedules tasks only when sources have been scheduled |  Critical | . | Siddharth Seth | Siddharth Seth |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1818](https://issues.apache.org/jira/browse/TEZ-1818) | Problem loading tez-api-version-info.properties in case current context classloader in not pointing to Tez jars |  Major | . | Johannes Zillmann | Johannes Zillmann |
| [TEZ-1808](https://issues.apache.org/jira/browse/TEZ-1808) | Job can fail since name of intermediate files can be too long in specific situation |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [TEZ-1796](https://issues.apache.org/jira/browse/TEZ-1796) | Use of DeprecationDelta broke build against 2.2 Hadoop |  Blocker | . | Bikas Saha | Siddharth Seth |
| [TEZ-1780](https://issues.apache.org/jira/browse/TEZ-1780) | tez-api is missing jersey dependencies |  Blocker | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1774](https://issues.apache.org/jira/browse/TEZ-1774) | AppLaunched event for Timeline does not have start time set |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1770](https://issues.apache.org/jira/browse/TEZ-1770) | Handle ConnectExceptions correctly when establishing connections to an NM which may be down |  Critical | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1761](https://issues.apache.org/jira/browse/TEZ-1761) | TestRecoveryParser::testGetLastInProgressDAG fails in similar manner to TEZ-1686 |  Major | . | Hitesh Shah | Jeff Zhang |
| [TEZ-1758](https://issues.apache.org/jira/browse/TEZ-1758) | TezClient should provide YARN diagnostics when the AM crashes |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1749](https://issues.apache.org/jira/browse/TEZ-1749) | Increase test timeout for TestLocalMode.testMultipleClientsWithSession |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1747](https://issues.apache.org/jira/browse/TEZ-1747) | Increase test timeout for TestSecureShuffle |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1746](https://issues.apache.org/jira/browse/TEZ-1746) | Flaky test in TestVertexImpl and TestExceptionPropagation |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1745](https://issues.apache.org/jira/browse/TEZ-1745) | TestATSHistoryLoggingService::testATSHistoryLoggingServiceShutdown can be flaky |  Major | . | Hitesh Shah | Hitesh Shah |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1742](https://issues.apache.org/jira/browse/TEZ-1742) | Improve response time of internal preemption |  Major | . | Bikas Saha | Bikas Saha |


