
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

## Release 0.8.2 - Unreleased (as of 2015-10-22)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2886](https://issues.apache.org/jira/browse/TEZ-2886) | Ability to merge AM credentials with DAG credentials |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-2096](https://issues.apache.org/jira/browse/TEZ-2096) | TEZ-UI : Add link to view AM log of finished & running apps |  Major | UI | Rajesh Balamohan | Jonathan Eagles |
| [TEZ-1692](https://issues.apache.org/jira/browse/TEZ-1692) | Reduce code duplication between TezMapredSplitsGrouper and TezMapreduceSplitsGrouper |  Major | . | Siddharth Seth | Siddharth Seth |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2896](https://issues.apache.org/jira/browse/TEZ-2896) | Fix thread names used during Input/Output initialization |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2887](https://issues.apache.org/jira/browse/TEZ-2887) | Tez build failure due to missing dependency in pom files |  Major | . | Ashish Singh | Ashish Singh |
| [TEZ-2885](https://issues.apache.org/jira/browse/TEZ-2885) | Remove counter logs from AMWebController |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2875](https://issues.apache.org/jira/browse/TEZ-2875) | Enable missing tests in TestAnalyzer |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2874](https://issues.apache.org/jira/browse/TEZ-2874) | Improved logging for caller context |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2866](https://issues.apache.org/jira/browse/TEZ-2866) | Tez UI: Newly added columns wont be displayed by default in tables |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2850](https://issues.apache.org/jira/browse/TEZ-2850) | Tez MergeManager OOM for small Map Outputs |  Major | . | Saikat | Jonathan Eagles |
| [TEZ-2781](https://issues.apache.org/jira/browse/TEZ-2781) | Fallback to send only TaskAttemptFailedEvent if taskFailed heartbeat fails |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1888](https://issues.apache.org/jira/browse/TEZ-1888) | Fix javac warnings all over codebase |  Critical | . | Hitesh Shah | Chetna Chaudhari |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2882](https://issues.apache.org/jira/browse/TEZ-2882) | Consider improving fetch failure handling |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1788](https://issues.apache.org/jira/browse/TEZ-1788) | Test allowing vertex level disabling of speculation |  Major | . | Bikas Saha | Bikas Saha |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2903](https://issues.apache.org/jira/browse/TEZ-2903) | Avoid using proprietary APIs where possible |  Major | . | Siddharth Seth | Chetna Chaudhari |
| [TEZ-2883](https://issues.apache.org/jira/browse/TEZ-2883) | changes for 0.8.1-alpha release |  Major | . | Siddharth Seth | Siddharth Seth |


