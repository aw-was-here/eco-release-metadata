
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

## Release 1.0.4 - Unreleased (as of 2017-05-04)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3912](https://issues.apache.org/jira/browse/FLINK-3912) | Typos in Batch Scala API Documentation |  Trivial | DataSet API, Documentation, Scala API | Ignacio N. Lucero Ascencio |  |
| [FLINK-5575](https://issues.apache.org/jira/browse/FLINK-5575) | in old releases, warn users and guide them to the latest stable docs |  Major | Documentation | David Anderson | David Anderson |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3878](https://issues.apache.org/jira/browse/FLINK-3878) | File cache doesn\'t support multiple duplicate temp directories |  Major | Distributed Coordination, Local Runtime | Ken Krugler | Ken Krugler |
| [FLINK-3926](https://issues.apache.org/jira/browse/FLINK-3926) | Incorrect implementation of getFieldIndex in TupleTypeInfo |  Minor | Core | Yijie Shen | Yijie Shen |
| [FLINK-3914](https://issues.apache.org/jira/browse/FLINK-3914) | BlobServer.createTemporaryFilename() has concurrency safety problem |  Major | . | ZhengBowen | Mark Reddy |
| [FLINK-3975](https://issues.apache.org/jira/browse/FLINK-3975) | Override baseurl when serving docs locally |  Trivial | Documentation | Dyana Rose |  |
| [FLINK-4056](https://issues.apache.org/jira/browse/FLINK-4056) | SavepointITCase.testCheckpointHasBeenRemoved failed on Travis |  Critical | Tests | Till Rohrmann | Ufuk Celebi |
| [FLINK-4089](https://issues.apache.org/jira/browse/FLINK-4089) | Ineffective null check in YarnClusterClient#getApplicationStatus() |  Major | . | Ted Yu | Maximilian Michels |
| [FLINK-4079](https://issues.apache.org/jira/browse/FLINK-4079) | YARN properties file used for per-job cluster |  Major | Client | Ufuk Celebi | Maximilian Michels |
| [FLINK-4038](https://issues.apache.org/jira/browse/FLINK-4038) | Impossible to set more than 1 JVM argument in env.java.opts |  Critical | Startup Shell Scripts | Gyula Fora | Ufuk Celebi |
| [FLINK-3838](https://issues.apache.org/jira/browse/FLINK-3838) | CLI parameter parser is munging application params |  Minor | Client | Ken Krugler | Maximilian Michels |
| [FLINK-4113](https://issues.apache.org/jira/browse/FLINK-4113) | Always copy first value in ChainedAllReduceDriver |  Critical | Local Runtime | Greg Hogan | Greg Hogan |
| [FLINK-4589](https://issues.apache.org/jira/browse/FLINK-4589) | Fix Merging of Covering Window in MergingWindowSet |  Blocker | DataStream API | Aljoscha Krettek | Aljoscha Krettek |


