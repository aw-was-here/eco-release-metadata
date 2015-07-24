
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

## Release 2.7.2 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12232](https://issues.apache.org/jira/browse/HADOOP-12232) | Upgrade Tomcat dependency to 6.0.44. |  Major | build | Chris Nauroth | Chris Nauroth |
| [HDFS-8727](https://issues.apache.org/jira/browse/HDFS-8727) | Allow using path style addressing for accessing the s3 endpoint |  Major | HDFS | Andrew Baptist | Andrew Baptist |
| [HDFS-8722](https://issues.apache.org/jira/browse/HDFS-8722) | Optimize datanode writes for small writes and flushes |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HDFS-8659](https://issues.apache.org/jira/browse/HDFS-8659) | Block scanner INFO message is spamming logs |  Major | datanode | Yongjun Zhang | Yongjun Zhang |
| [YARN-3170](https://issues.apache.org/jira/browse/YARN-3170) | YARN architecture document needs updating |  Major | documentation | Allen Wittenauer | Brahma Reddy Battula |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12191](https://issues.apache.org/jira/browse/HADOOP-12191) | Bzip2Factory is not thread safe |  Major | io | Jason Lowe | Brahma Reddy Battula |
| [HADOOP-12186](https://issues.apache.org/jira/browse/HADOOP-12186) | ActiveStandbyElector shouldn't call monitorLockNodeAsync multiple times |  Major | ha | zhihai xu | zhihai xu |
| [HDFS-8806](https://issues.apache.org/jira/browse/HDFS-8806) | Inconsistent metrics: number of missing blocks with replication factor 1 not properly cleared |  Major | . | Zhe Zhang | Zhe Zhang |
| [HDFS-8767](https://issues.apache.org/jira/browse/HDFS-8767) | RawLocalFileSystem.listStatus() returns null for UNIX pipefile |  Critical | . | Haohui Mai | kanaka kumar avvaru |
| [HDFS-6945](https://issues.apache.org/jira/browse/HDFS-6945) | BlockManager should remove a block from excessReplicateMap and decrement ExcessBlocks metric when the block is removed |  Critical | namenode | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-6426](https://issues.apache.org/jira/browse/MAPREDUCE-6426) | TestShuffleHandler#testGetMapOutputInfo is failing |  Major | test | Devaraj K | zhihai xu |
| [MAPREDUCE-6425](https://issues.apache.org/jira/browse/MAPREDUCE-6425) | ShuffleHandler passes wrong "base" parameter to getMapOutputInfo if mapId is not in the cache. |  Major | mrv2, nodemanager | zhihai xu | zhihai xu |
| [YARN-3967](https://issues.apache.org/jira/browse/YARN-3967) | Fetch the application report from the AHS if the RM does not know about it |  Major | . | Mit Desai | Mit Desai |
| [YARN-3905](https://issues.apache.org/jira/browse/YARN-3905) | Application History Server UI NPEs when accessing apps run after RM restart |  Major | timelineserver | Eric Payne | Eric Payne |
| [YARN-3878](https://issues.apache.org/jira/browse/YARN-3878) | AsyncDispatcher can hang while stopping if it is configured for draining events on stop |  Critical | . | Varun Saxena | Varun Saxena |
| [YARN-3793](https://issues.apache.org/jira/browse/YARN-3793) | Several NPEs when deleting local files on NM recovery |  Major | nodemanager | Karthik Kambatla | Varun Saxena |
| [YARN-3690](https://issues.apache.org/jira/browse/YARN-3690) | [JDK8] 'mvn site' fails |  Major | api, site | Akira AJISAKA | Brahma Reddy Battula |
| [YARN-3535](https://issues.apache.org/jira/browse/YARN-3535) | Scheduler must re-request container resources when RMContainer transitions from ALLOCATED to KILLED |  Critical | capacityscheduler, fairscheduler, resourcemanager | Peng Zhang | Peng Zhang |
| [YARN-3508](https://issues.apache.org/jira/browse/YARN-3508) | Prevent processing preemption events on the main RM dispatcher |  Major | resourcemanager, scheduler | Jason Lowe | Varun Saxena |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3969](https://issues.apache.org/jira/browse/YARN-3969) | Allow jobs to be submitted to reservation that is active but does not have any allocations |  Major | capacityscheduler, fairscheduler, resourcemanager | Subru Krishnan | Subru Krishnan |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


