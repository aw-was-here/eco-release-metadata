
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
# Apache Hadoop Changelog

## Release 2.6.3 - Unreleased (as of 2015-11-12)

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
| [HADOOP-12413](https://issues.apache.org/jira/browse/HADOOP-12413) | AccessControlList should avoid calling getGroupNames in isUserInList with empty groups. |  Major | security | zhihai xu | zhihai xu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12526](https://issues.apache.org/jira/browse/HADOOP-12526) | [Branch-2] there are duplicate dependency definitions in pom's |  Major | build | Sangjin Lee | Sangjin Lee |
| [HADOOP-12230](https://issues.apache.org/jira/browse/HADOOP-12230) | hadoop-project declares duplicate, conflicting curator dependencies |  Minor | build | Steve Loughran | Rakesh R |
| [HADOOP-11267](https://issues.apache.org/jira/browse/HADOOP-11267) | TestSecurityUtil fails when run with JDK8 because of empty principal names |  Minor | security, test | Stephen Chu | Stephen Chu |
| [HADOOP-10134](https://issues.apache.org/jira/browse/HADOOP-10134) | [JDK8] Fix Javadoc errors caused by incorrect or illegal tags in doc comments |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HADOOP-9242](https://issues.apache.org/jira/browse/HADOOP-9242) | Duplicate surefire plugin config in hadoop-common |  Major | test | Andrey Klochkov | Andrey Klochkov |
| [MAPREDUCE-6540](https://issues.apache.org/jira/browse/MAPREDUCE-6540) | TestMRTimelineEventHandling fails |  Major | test | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-6528](https://issues.apache.org/jira/browse/MAPREDUCE-6528) | Memory leak for HistoryFileManager.getJobSummary() |  Critical | jobhistoryserver | Junping Du | Junping Du |
| [MAPREDUCE-6273](https://issues.apache.org/jira/browse/MAPREDUCE-6273) | HistoryFileManager should check whether summaryFile exists to avoid FileNotFoundException causing HistoryFileInfo into MOVE\_FAILED state |  Minor | jobhistoryserver | zhihai xu | zhihai xu |
| [YARN-4326](https://issues.apache.org/jira/browse/YARN-4326) | Fix TestDistributedShell timeout as AHS in MiniYarnCluster no longer binds to default port 8188 |  Major | . | MENG DING | MENG DING |
| [YARN-4320](https://issues.apache.org/jira/browse/YARN-4320) | TestJobHistoryEventHandler fails as AHS in MiniYarnCluster no longer binds to default port 8188 |  Major | . | Varun Saxena | Varun Saxena |
| [YARN-4312](https://issues.apache.org/jira/browse/YARN-4312) | TestSubmitApplicationWithRMHA fails on branch-2.7 and branch-2.6 as some of the test cases time out |  Major | . | Varun Saxena | Varun Saxena |
| [YARN-4241](https://issues.apache.org/jira/browse/YARN-4241) | Fix typo of property name in yarn-default.xml |  Major | documentation | Anthony Rojas | Anthony Rojas |
| [YARN-2859](https://issues.apache.org/jira/browse/YARN-2859) | ApplicationHistoryServer binds to default port 8188 in MiniYARNCluster |  Critical | timelineserver | Hitesh Shah | Vinod Kumar Vavilapalli |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10668](https://issues.apache.org/jira/browse/HADOOP-10668) | TestZKFailoverControllerStress#testExpireBackAndForth occasionally fails |  Major | test | Ted Yu | Ming Ma |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


