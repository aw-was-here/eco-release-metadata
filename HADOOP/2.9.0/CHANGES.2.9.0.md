
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

## Release 2.9.0 - Unreleased (as of 2016-01-04)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12321](https://issues.apache.org/jira/browse/HADOOP-12321) | Make JvmPauseMonitor an AbstractService |  Major | . | Steve Loughran | Sunil G |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12625](https://issues.apache.org/jira/browse/HADOOP-12625) | Add a config to disable the /logs endpoints |  Major | security | Robert Kanter | Robert Kanter |
| [HADOOP-12566](https://issues.apache.org/jira/browse/HADOOP-12566) | Add NullGroupMapping |  Major | . | Daniel Templeton | Daniel Templeton |
| [HDFS-9491](https://issues.apache.org/jira/browse/HDFS-9491) | Tests should get the number of pending async delets via FsDatasetTestUtils |  Minor | test | Tony Wu | Tony Wu |
| [HDFS-9350](https://issues.apache.org/jira/browse/HDFS-9350) | Avoid creating temprorary strings in Block.toString() and getBlockName() |  Minor | performance | Staffan Friberg | Staffan Friberg |
| [HDFS-9281](https://issues.apache.org/jira/browse/HDFS-9281) | Change TestDeleteBlockPool to not explicitly use File to check block pool existence. |  Minor | test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-9267](https://issues.apache.org/jira/browse/HDFS-9267) | TestDiskError should get stored replicas through FsDatasetTestUtils. |  Minor | test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-8947](https://issues.apache.org/jira/browse/HDFS-8947) | NameNode, DataNode and NFS gateway to support JvmPauseMonitor as a service |  Minor | datanode, namenode, nfs | Sunil G | Sunil G |
| [HDFS-8477](https://issues.apache.org/jira/browse/HDFS-8477) | describe dfs.ha.zkfc.port in hdfs-default.xml |  Minor | . | Kanaka Kumar Avvaru | Kanaka Kumar Avvaru |
| [MAPREDUCE-6462](https://issues.apache.org/jira/browse/MAPREDUCE-6462) | JobHistoryServer to support JvmPauseMonitor as a service |  Minor | jobhistoryserver | Sunil G | Sunil G |
| [YARN-4341](https://issues.apache.org/jira/browse/YARN-4341) | add doc about timeline performance tool usage |  Major | . | Chang Li | Chang Li |
| [YARN-4072](https://issues.apache.org/jira/browse/YARN-4072) | ApplicationHistoryServer, WebAppProxyServer, NodeManager and ResourceManager to support JvmPauseMonitor as a service |  Minor | nodemanager, resourcemanager | Sunil G | Sunil G |
| [YARN-2934](https://issues.apache.org/jira/browse/YARN-2934) | Improve handling of container's stderr |  Critical | . | Gera Shegalov | Naganarasimha G R |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-4530](https://issues.apache.org/jira/browse/YARN-4530) | LocalizedResource trigger a NPE Cause the NodeManager exit |  Major | . | tangshangwen | tangshangwen |
| [YARN-4524](https://issues.apache.org/jira/browse/YARN-4524) | Cleanup AppSchedulingInfo |  Major | scheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-4522](https://issues.apache.org/jira/browse/YARN-4522) | Queue acl can be checked at app submission |  Major | . | Jian He | Jian He |
| [YARN-4417](https://issues.apache.org/jira/browse/YARN-4417) | Make RM and Timeline-server REST APIs more consistent |  Major | . | Wangda Tan | Wangda Tan |
| [YARN-4156](https://issues.apache.org/jira/browse/YARN-4156) | TestAMRestart#testAMBlacklistPreventsRestartOnSameNode assumes CapacityScheduler |  Major | . | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-4109](https://issues.apache.org/jira/browse/YARN-4109) | Exception on RM scheduler page loading with labels |  Minor | . | Bibin A Chundatt | Mohammad Shahid Khan |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-9300](https://issues.apache.org/jira/browse/HDFS-9300) | TestDirectoryScanner.testThrottle() is still a little flakey |  Major | balancer & mover, test | Daniel Templeton | Daniel Templeton |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-9414](https://issues.apache.org/jira/browse/HDFS-9414) | Refactor reconfiguration of ClientDatanodeProtocol for reusability |  Major | . | Xiaobing Zhou | Xiaobing Zhou |
| [HDFS-9371](https://issues.apache.org/jira/browse/HDFS-9371) | Code cleanup for DatanodeManager |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-9129](https://issues.apache.org/jira/browse/HDFS-9129) | Move the safemode block count into BlockManager |  Major | namenode | Haohui Mai | Mingliang Liu |
| [YARN-3480](https://issues.apache.org/jira/browse/YARN-3480) | Recovery may get very slow with lots of services with lots of app-attempts |  Major | resourcemanager | Jun Gong | Jun Gong |
| [YARN-1856](https://issues.apache.org/jira/browse/YARN-1856) | cgroups based memory monitoring for containers |  Major | nodemanager | Karthik Kambatla | Varun Vasudev |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


