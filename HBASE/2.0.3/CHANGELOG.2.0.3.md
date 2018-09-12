
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
# Apache HBase Changelog

## Release 2.0.3 - Unreleased (as of 2018-09-12)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21157](https://issues.apache.org/jira/browse/HBASE-21157) | Split TableInputFormatScan to individual tests |  Minor | test | Duo Zhang | Duo Zhang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20940](https://issues.apache.org/jira/browse/HBASE-20940) | HStore.cansplit should not allow split to happen if it has references |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-21132](https://issues.apache.org/jira/browse/HBASE-21132) | return wrong result in rest multiget |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-20892](https://issues.apache.org/jira/browse/HBASE-20892) | [UI] Start / End keys are empty on table.jsp |  Major | . | Ted Yu | Guangxu Cheng |
| [HBASE-21127](https://issues.apache.org/jira/browse/HBASE-21127) | TableRecordReader need to handle cursor result too |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20307](https://issues.apache.org/jira/browse/HBASE-20307) | LoadTestTool prints too much zookeeper logging |  Major | tooling | Mike Drob | Colin Garcia |
| [HBASE-21001](https://issues.apache.org/jira/browse/HBASE-21001) | ReplicationObserver fails to load in HBase 2.0.0 |  Major | . | Wei-Chiu Chuang | Guangxu Cheng |
| [HBASE-21143](https://issues.apache.org/jira/browse/HBASE-21143) | Update findbugs-maven-plugin to 3.0.4 |  Major | pom | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21144](https://issues.apache.org/jira/browse/HBASE-21144) | AssignmentManager.waitForAssignment is not stable |  Major | amv2, test | Duo Zhang | Duo Zhang |
| [HBASE-21158](https://issues.apache.org/jira/browse/HBASE-21158) | Empty qualifier cell is always returned when using QualifierFilter |  Major | Filters | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21181](https://issues.apache.org/jira/browse/HBASE-21181) | Use the same filesystem for wal archive directory and wal directory |  Major | . | Tak Lon (Stephen) Wu | Tak Lon (Stephen) Wu |
| [HBASE-21174](https://issues.apache.org/jira/browse/HBASE-21174) | [REST] Failed to parse empty qualifier in TableResource#getScanResource |  Major | REST | Guangxu Cheng | Guangxu Cheng |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21190](https://issues.apache.org/jira/browse/HBASE-21190) | Log files and count of entries in each as we load from the MasterProcWAL store |  Major | amv2 | stack | stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20482](https://issues.apache.org/jira/browse/HBASE-20482) | Print a link to the ref guide chapter for the shell during startup |  Minor | documentation, shell | Sakthi | Sakthi |


