
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

## Release 1.4.3 - Unreleased (as of 2018-03-22)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8890](https://issues.apache.org/jira/browse/FLINK-8890) | Compare checkpoints with order in CompletedCheckpoint.checkpointsMatch() |  Major | State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8543](https://issues.apache.org/jira/browse/FLINK-8543) | Output Stream closed at org.apache.hadoop.fs.s3a.S3AOutputStream.checkOpen |  Blocker | Streaming Connectors | chris snow |  |
| [FLINK-8857](https://issues.apache.org/jira/browse/FLINK-8857) | HBase connector read example throws exception at the end. |  Trivial | Batch Connectors and Input/Output Formats | Xu Zhang | Xu Zhang |
| [FLINK-8847](https://issues.apache.org/jira/browse/FLINK-8847) | Modules containing package-info.java are always recompiled |  Minor | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8487](https://issues.apache.org/jira/browse/FLINK-8487) | State loss after multiple restart attempts |  Blocker | State Backends, Checkpointing | Fabian Hueske | Aljoscha Krettek |
| [FLINK-8807](https://issues.apache.org/jira/browse/FLINK-8807) | ZookeeperCompleted checkpoint store can get stuck in infinite loop |  Blocker | State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-8856](https://issues.apache.org/jira/browse/FLINK-8856) | Move all interrupt() calls to TaskCanceler |  Blocker | TaskManager | Stephan Ewen | Stephan Ewen |
| [FLINK-8896](https://issues.apache.org/jira/browse/FLINK-8896) | Kafka08Fetcher trying to look up topic "n/a" on partiton "-1" |  Critical | Kafka Connector | Nico Kruber | Nico Kruber |
| [FLINK-8801](https://issues.apache.org/jira/browse/FLINK-8801) | S3's eventual consistent read-after-write may fail yarn deployment of resources to S3 |  Blocker | FileSystem, ResourceManager, YARN | Nico Kruber | Nico Kruber |


