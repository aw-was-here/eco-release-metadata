
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
# Changelog

## Release 0.7.1 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2478](https://issues.apache.org/jira/browse/TEZ-2478) | Move OneToOne routing to store events in Tasks |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1961](https://issues.apache.org/jira/browse/TEZ-1961) | Remove misleading exception "No running dag" from AM logs |  Critical | . | Siddharth Seth | Jeff Zhang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2554](https://issues.apache.org/jira/browse/TEZ-2554) | Tez UI: View log link does not correctly propagate login crendential to read log from yarn web. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2548](https://issues.apache.org/jira/browse/TEZ-2548) | TezClient submitDAG can hang if the AM is in the process of shutting down |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2547](https://issues.apache.org/jira/browse/TEZ-2547) | Tez UI: Download Data fails on secure, cross-origin clusters |  Critical | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2545](https://issues.apache.org/jira/browse/TEZ-2545) | It is not necessary to start the vertex group commit when DAG is in TERMINATING |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2541](https://issues.apache.org/jira/browse/TEZ-2541) | DAGClientImpl enable TimelineClient check is wrong. |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2537](https://issues.apache.org/jira/browse/TEZ-2537) | mapreduce.map.env and mapreduce.reduce.env need to fall back to mapred.child.env for compatibility |  Major | . | Jonathan Eagles | Rohini Palaniswamy |
| [TEZ-2534](https://issues.apache.org/jira/browse/TEZ-2534) | Error handling summary event when shutting down AM |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2533](https://issues.apache.org/jira/browse/TEZ-2533) | AM deadlock when shutdown |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2527](https://issues.apache.org/jira/browse/TEZ-2527) | Tez UI: Application hangs on entering erroneous RegEx in counter table search box. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2523](https://issues.apache.org/jira/browse/TEZ-2523) | Tez UI: derive applicationId from dag/vertex id instead of relying on json data |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2509](https://issues.apache.org/jira/browse/TEZ-2509) | YarnTaskSchedulerService should not try to allocate containers if AM is shutting down |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2505](https://issues.apache.org/jira/browse/TEZ-2505) | PipelinedSorter uses Comparator objects concurrently from multiple threads |  Major | . | Cyrille Chépélov | Rajesh Balamohan |
| [TEZ-2504](https://issues.apache.org/jira/browse/TEZ-2504) | Tez UI: tables - show status column without scrolling, numeric 0 shown as Not available |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2489](https://issues.apache.org/jira/browse/TEZ-2489) | Disable warn log for Timeline ACL error when tez.allow.disabled.timeline-domains set to true |  Major | . | Hitesh Shah | Chang Li |
| [TEZ-2483](https://issues.apache.org/jira/browse/TEZ-2483) | Tez should close task if processor fail |  Major | . | Daniel Dai | Jeff Zhang |
| [TEZ-2482](https://issues.apache.org/jira/browse/TEZ-2482) | Tez UI: Mouse events not working on IE11 |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2481](https://issues.apache.org/jira/browse/TEZ-2481) | Tez UI: graphical view does not render properly on IE11 |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2475](https://issues.apache.org/jira/browse/TEZ-2475) | Tez local mode hanging in big testsuite |  Major | . | André Kelpe | Siddharth Seth |
| [TEZ-2474](https://issues.apache.org/jira/browse/TEZ-2474) | The old taskNum is logged incorrectly when parallelism is changed |  Minor | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2460](https://issues.apache.org/jira/browse/TEZ-2460) | Temporary solution for issue due to YARN-2560 |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2455](https://issues.apache.org/jira/browse/TEZ-2455) | Tez UI: Dag view caching, error handling and minor layout changes |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2453](https://issues.apache.org/jira/browse/TEZ-2453) | Tez UI: show the dagInfo is the application has set the same. |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2391](https://issues.apache.org/jira/browse/TEZ-2391) | TestVertexImpl timing out at times on jenkins builds |  Blocker | . | Hitesh Shah | Mit Desai |
| [TEZ-2304](https://issues.apache.org/jira/browse/TEZ-2304) | InvalidStateTransitonException TA\_SCHEDULE at START\_WAIT during recovery |  Major | . | Jason Lowe | Jeff Zhang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2511](https://issues.apache.org/jira/browse/TEZ-2511) | Add exitCode to diagnostics when container fails |  Major | . | Jeff Zhang | Jeff Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2546](https://issues.apache.org/jira/browse/TEZ-2546) | Tez UI: Fetch hive query text from timeline if dagInfo is not set |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2513](https://issues.apache.org/jira/browse/TEZ-2513) | Tez UI: Allow filtering by DAG ID on All dags table |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2447](https://issues.apache.org/jira/browse/TEZ-2447) | Tez UI: Generic changes based on feedbacks. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2409](https://issues.apache.org/jira/browse/TEZ-2409) | Allow different edges to have different routing plugins |  Critical | . | Bikas Saha | Bikas Saha |


