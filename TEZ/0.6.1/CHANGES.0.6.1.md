
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

## Release 0.6.1 - 2015-05-18

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2437](https://issues.apache.org/jira/browse/TEZ-2437) | FilterLinesByWord NPEs when run in Localmode |  Major | . | Amit Tiwari |  |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2018](https://issues.apache.org/jira/browse/TEZ-2018) | App Tracking and History URL should point to the Tez UI |  Critical | UI | Rohini Palaniswamy | Prakash Ramachandran |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2091](https://issues.apache.org/jira/browse/TEZ-2091) | Add support for hosting TEZ\_UI with nodejs |  Major | UI | Chang Li | Chang Li |
| [TEZ-2043](https://issues.apache.org/jira/browse/TEZ-2043) | Tez UI: add progress info from am webservice to dag and vertex views |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2189](https://issues.apache.org/jira/browse/TEZ-2189) | Tez UI live AM tracking url only works for localhost addresses |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2165](https://issues.apache.org/jira/browse/TEZ-2165) | Tez UI: DAG shows running status if killed by RM in some cases. |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2160](https://issues.apache.org/jira/browse/TEZ-2160) | Tez UI: App tracking URL should support navigation back |  Major | UI | Ram Venkatesh | Prakash Ramachandran |
| [TEZ-2147](https://issues.apache.org/jira/browse/TEZ-2147) | Swimlanes: Improved tooltip |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2136](https://issues.apache.org/jira/browse/TEZ-2136) | Some enhancements to the new Tez UI |  Major | UI | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [TEZ-2116](https://issues.apache.org/jira/browse/TEZ-2116) | Tez UI: dags page filter does not work if more than one filter is specified. |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2114](https://issues.apache.org/jira/browse/TEZ-2114) | Tez UI: task/task attempt status is not available when its running |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2101](https://issues.apache.org/jira/browse/TEZ-2101) | Tez UI: Issues on displaying a table |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2098](https://issues.apache.org/jira/browse/TEZ-2098) | Tez UI: Dag details should be the default page for dag, fix invalid time entries for failed Vertices |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2079](https://issues.apache.org/jira/browse/TEZ-2079) | Tez UI: trailing slash in timelineBaseUrl in ui should be handled |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2078](https://issues.apache.org/jira/browse/TEZ-2078) | Tez UI: Task logs url use in-progress url causing various errors |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2077](https://issues.apache.org/jira/browse/TEZ-2077) | Tez UI: No diagnostics on Task Attempt Details page if task attempt failed |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2069](https://issues.apache.org/jira/browse/TEZ-2069) | Tez UI: appId should link to application in dag details view |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2065](https://issues.apache.org/jira/browse/TEZ-2065) | Setting up tez.tez-ui.history-url.base with a trailing slash can result in failures to redirect correctly |  Major | UI | Hitesh Shah | Prakash Ramachandran |
| [TEZ-2063](https://issues.apache.org/jira/browse/TEZ-2063) | Tez UI: Flaky log url in tasks table |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2061](https://issues.apache.org/jira/browse/TEZ-2061) | Tez UI: vertex id column and filter on tasks page should be changed to vertex name |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2038](https://issues.apache.org/jira/browse/TEZ-2038) | TEZ-UI DAG is always running in tez-ui when the app is failed but no DAGFinishedEvent is logged |  Major | UI | Jeff Zhang | Prakash Ramachandran |
| [TEZ-2031](https://issues.apache.org/jira/browse/TEZ-2031) | Tez UI: horizontal scrollbars do not appear in tables, causing them to look truncated |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-1988](https://issues.apache.org/jira/browse/TEZ-1988) | Tez UI: does not work when using file:// in a browser |  Major | UI | Hitesh Shah | Prakash Ramachandran |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


