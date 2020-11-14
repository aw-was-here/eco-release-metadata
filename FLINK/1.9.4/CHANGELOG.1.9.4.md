
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
# Apache Flink Changelog

## Release 1.9.4 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-17945](https://issues.apache.org/jira/browse/FLINK-17945) | Improve error reporting of Python CI tests |  Major | API / Python, Tests | Robert Metzger | Dian Fu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-16113](https://issues.apache.org/jira/browse/FLINK-16113) | ExpressionReducer shouldn't escape the reduced string value |  Critical | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-17308](https://issues.apache.org/jira/browse/FLINK-17308) | ExecutionGraphCache cachedExecutionGraphs not cleanup cause OOM Bug |  Critical | Runtime / REST | yujunyong | Till Rohrmann |
| [FLINK-17471](https://issues.apache.org/jira/browse/FLINK-17471) | Move LICENSE and NOTICE files to root directory of python distribution |  Blocker | API / Python | Yu Li | Wei Zhong |
| [FLINK-17555](https://issues.apache.org/jira/browse/FLINK-17555) | docstring of pyflink.table.descriptors.FileSystem:1:duplicate object description of pyflink.table.descriptors.FileSystem |  Major | API / Python | Piotr Nowojski | Shuiqiang Chen |
| [FLINK-16346](https://issues.apache.org/jira/browse/FLINK-16346) | BlobsCleanupITCase.testBlobServerCleanupCancelledJob fails on Travis |  Critical | Runtime / Coordination | Till Rohrmann | Chesnay Schepler |
| [FLINK-17562](https://issues.apache.org/jira/browse/FLINK-17562) | POST /jars/:jarid/plan is not working |  Minor | Documentation, Runtime / Web Frontend | AT-Fieldless | Nicholas Jiang |
| [FLINK-17643](https://issues.apache.org/jira/browse/FLINK-17643) | LaunchCoordinatorTest fails |  Major | Deployment / Mesos | Arvid Heise | Till Rohrmann |
| [FLINK-17700](https://issues.apache.org/jira/browse/FLINK-17700) | The callback client of JavaGatewayServer should run in a daemon thread |  Major | API / Python | Shuiqiang Chen | Shuiqiang Chen |
| [FLINK-17763](https://issues.apache.org/jira/browse/FLINK-17763) | No log files when starting scala-shell |  Minor | Scala Shell | Jeff Zhang | Chesnay Schepler |
| [FLINK-18012](https://issues.apache.org/jira/browse/FLINK-18012) | Deactivate slot timeout if TaskSlotTable.tryMarkSlotActive is called |  Critical | Runtime / Coordination | Till Rohrmann | Till Rohrmann |


