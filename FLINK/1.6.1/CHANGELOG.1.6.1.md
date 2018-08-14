
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

## Release 1.6.1 - Unreleased (as of 2018-08-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10094](https://issues.apache.org/jira/browse/FLINK-10094) | Always backup default config for end-to-end tests |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9795](https://issues.apache.org/jira/browse/FLINK-9795) | Update Mesos documentation for flip6 |  Major | Documentation | Leonid Ishimnikov | Gary Yao |
| [FLINK-10006](https://issues.apache.org/jira/browse/FLINK-10006) | Improve logging in BarrierBuffer |  Major | Logging, Network | Nico Kruber | Nico Kruber |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9446](https://issues.apache.org/jira/browse/FLINK-9446) | Compatibility table not up-to-date |  Major | Documentation | Razvan | Chesnay Schepler |
| [FLINK-9972](https://issues.apache.org/jira/browse/FLINK-9972) | Debug memory logging not working |  Critical | TaskManager | Piotr Nowojski | Piotr Nowojski |
| [FLINK-10063](https://issues.apache.org/jira/browse/FLINK-10063) | Jepsen: Automatically restart Mesos Processes |  Critical | Tests | Gary Yao | Gary Yao |
| [FLINK-10105](https://issues.apache.org/jira/browse/FLINK-10105) | Test failure because of jobmanager.execution.failover-strategy is outdated |  Major | Tests | vinoyang | Dawid Wysakowicz |
| [FLINK-9693](https://issues.apache.org/jira/browse/FLINK-9693) | Possible memory leak in jobmanager retaining archived checkpoints |  Major | JobManager, State Backends, Checkpointing | Steven Zhen Wu | Till Rohrmann |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10084](https://issues.apache.org/jira/browse/FLINK-10084) | Migration tests weren't updated for 1.5 |  Critical | Tests | Chesnay Schepler | Chesnay Schepler |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9637](https://issues.apache.org/jira/browse/FLINK-9637) | Add public user documentation for TTL feature |  Major | State Backends, Checkpointing | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-10087](https://issues.apache.org/jira/browse/FLINK-10087) | Update BucketingSinkMigrationTest |  Major | filesystem-connector | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10085](https://issues.apache.org/jira/browse/FLINK-10085) | Update AbstractOperatorRestoreTestBase |  Critical | State Backends, Checkpointing, Streaming, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10089](https://issues.apache.org/jira/browse/FLINK-10089) | Update FlinkKafkaConsumerBaseMigrationTest |  Major | Kafka Connector | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10090](https://issues.apache.org/jira/browse/FLINK-10090) | Update ContinuousFileProcessingMigrationTest |  Major | filesystem-connector | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10091](https://issues.apache.org/jira/browse/FLINK-10091) | Update WindowOperatorMigrationTest |  Major | Streaming | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10092](https://issues.apache.org/jira/browse/FLINK-10092) | Update StatefulJobSavepointMigrationITCase |  Major | State Backends, Checkpointing | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10109](https://issues.apache.org/jira/browse/FLINK-10109) | Add documentation for StreamingFileSink |  Major | Streaming Connectors | Aljoscha Krettek | Aljoscha Krettek |

