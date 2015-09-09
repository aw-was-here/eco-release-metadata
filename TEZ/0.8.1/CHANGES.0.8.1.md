
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

## Release 0.8.1 - Unreleased (as of 2015-09-09)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2784](https://issues.apache.org/jira/browse/TEZ-2784) | optimize TaskImpl.isFinished() |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2768](https://issues.apache.org/jira/browse/TEZ-2768) | Log a useful error message when the summary stream cannot be closed when shutting down an AM |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2767](https://issues.apache.org/jira/browse/TEZ-2767) | Make TezMxBeanResourceCalculator the default resource calculator |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2754](https://issues.apache.org/jira/browse/TEZ-2754) | Tez UI: StartTime & EndTime is not displayed with right format in Graphical View |  Major | . | Jeff Zhang | Sreenath Somarajapuram |
| [TEZ-2662](https://issues.apache.org/jira/browse/TEZ-2662) | Provide a way to check whether AM or task opts are valid and error if not |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2643](https://issues.apache.org/jira/browse/TEZ-2643) | Minimize number of empty spills in Pipelined Sorter |  Major | . | Saikat | Saikat |
| [TEZ-2294](https://issues.apache.org/jira/browse/TEZ-2294) | Add tez-site-template.xml with description of config properties |  Major | . | Rajesh Balamohan | Hitesh Shah |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2788](https://issues.apache.org/jira/browse/TEZ-2788) | Allow TezAnalyzerBase to parse SimpleHistory logs |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2783](https://issues.apache.org/jira/browse/TEZ-2783) | Refactor analyzers to extend TezAnalyzerBase |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2765](https://issues.apache.org/jira/browse/TEZ-2765) | Change Xmlwriter to use defaultValue instead of value tag |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2757](https://issues.apache.org/jira/browse/TEZ-2757) | Fix download links for Tez releases |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2755](https://issues.apache.org/jira/browse/TEZ-2755) | Fix findbugs warning in TezClient |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2750](https://issues.apache.org/jira/browse/TEZ-2750) | Shuffle may not shutdown in case of a fetch failure, causing it to hang |  Major | . | André Kelpe | Siddharth Seth |
| [TEZ-2745](https://issues.apache.org/jira/browse/TEZ-2745) | ClassNotFoundException of user code should fail dag |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2742](https://issues.apache.org/jira/browse/TEZ-2742) | VertexImpl.finished() terminationCause hides member var of the same name |  Major | . | Bikas Saha | Bikas Saha |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2782](https://issues.apache.org/jira/browse/TEZ-2782) | VertexInfo.getAvgExecutionTimeInterval throws NPE when task does not have any valid attempts info |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2778](https://issues.apache.org/jira/browse/TEZ-2778) | Improvements to handle multiple read errors with complex DAGs |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2766](https://issues.apache.org/jira/browse/TEZ-2766) | Tez UI: Add vertex in-progress info in DAG details. |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2761](https://issues.apache.org/jira/browse/TEZ-2761) | Tez UI: update the progress on the dag and vertices pages with info from AM |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2739](https://issues.apache.org/jira/browse/TEZ-2739) | Improve handling of read errors in critical path analyzer |  Major | . | Bikas Saha | Bikas Saha |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2762](https://issues.apache.org/jira/browse/TEZ-2762) | 0.8.0-alpha post release vote changes |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2747](https://issues.apache.org/jira/browse/TEZ-2747) | Update master to reflect 0.8.0-alpha release |  Major | . | Siddharth Seth | Siddharth Seth |


