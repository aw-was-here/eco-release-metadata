
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

## Release 1.8.4 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-12040](https://issues.apache.org/jira/browse/FLINK-12040) | Remove unused akka dependencies in pom.xml |  Major | Build System | Zili Chen | Zili Chen |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-14846](https://issues.apache.org/jira/browse/FLINK-14846) | Correct the default writerbuffer size documentation of RocksDB |  Major | Documentation, Runtime / State Backends | Yun Tang | Yun Tang |
| [FLINK-11835](https://issues.apache.org/jira/browse/FLINK-11835) | ZooKeeperLeaderElectionITCase.testJobExecutionOnClusterWithLeaderChange failed |  Critical | Runtime / Coordination | Gary Yao | chunpinghe |
| [FLINK-10377](https://issues.apache.org/jira/browse/FLINK-10377) | Remove precondition in TwoPhaseCommitSinkFunction.notifyCheckpointComplete |  Major | Connectors / Common | Stefan Richter | Stefan Richter |
| [FLINK-13862](https://issues.apache.org/jira/browse/FLINK-13862) | Update Execution Plan docs |  Minor | Documentation | Stephan Ewen | Chesnay Schepler |
| [FLINK-14951](https://issues.apache.org/jira/browse/FLINK-14951) | State TTL backend end-to-end test fail when taskManager has multiple slot |  Major | Runtime / State Backends, Tests | Yangze Guo | Yangze Guo |
| [FLINK-15065](https://issues.apache.org/jira/browse/FLINK-15065) | RocksDB configurable options doc description error |  Major | Documentation | YufeiLiu | Yun Tang |
| [FLINK-15543](https://issues.apache.org/jira/browse/FLINK-15543) | Apache Camel not bundled but listed in flink-dist NOTICE |  Blocker | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15523](https://issues.apache.org/jira/browse/FLINK-15523) | ConfigConstants generally excluded from japicmp |  Blocker | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15549](https://issues.apache.org/jira/browse/FLINK-15549) | Integer overflow in SpillingResettableMutableObjectIterator |  Major | API / DataSet | caojian0613 | caojian0613 |
| [FLINK-15863](https://issues.apache.org/jira/browse/FLINK-15863) | Fix docs stating that savepoints are relocatable |  Blocker | Documentation | Nico Kruber | Bastien DINE |
| [FLINK-11193](https://issues.apache.org/jira/browse/FLINK-11193) | Rocksdb timer service factory configuration option is not settable per job |  Minor | Runtime / State Backends | Fan weiwen | Aitozi |
| [FLINK-16707](https://issues.apache.org/jira/browse/FLINK-16707) | Fix potential memory leak of rest server when using session/standalone cluster for version 1.8 |  Major | Runtime / REST | jiangbo | jiangbo |
| [FLINK-16916](https://issues.apache.org/jira/browse/FLINK-16916) | The logic of NullableSerializer#copy is wrong |  Blocker | API / Type Serialization System | Congxian Qiu | Congxian Qiu |


