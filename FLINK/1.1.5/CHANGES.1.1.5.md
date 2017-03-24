
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

## Release 1.1.5 - Unreleased (as of 2017-03-24)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5466](https://issues.apache.org/jira/browse/FLINK-5466) | Make production environment default in gulpfile |  Major | Webfrontend | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5639](https://issues.apache.org/jira/browse/FLINK-5639) | Clarify License implications of RabbitMQ Connector |  Major | Streaming Connectors | Stephan Ewen | Stephan Ewen |
| [FLINK-5575](https://issues.apache.org/jira/browse/FLINK-5575) | in old releases, warn users and guide them to the latest stable docs |  Major | Documentation | David Anderson | David Anderson |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5518](https://issues.apache.org/jira/browse/FLINK-5518) | HadoopInputFormat throws NPE when close() is called before open() |  Major | Batch Connectors and Input/Output Formats | Jakub Havlik | Jakub Havlik |
| [FLINK-2662](https://issues.apache.org/jira/browse/FLINK-2662) | CompilerException: "Bug: Plan generation for Unions picked a ship strategy between binary plan operators." |  Critical | Optimizer | Gabor Gevay | Fabian Hueske |
| [FLINK-5585](https://issues.apache.org/jira/browse/FLINK-5585) | NullPointer Exception in JobManager.updateAccumulators |  Major | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-5647](https://issues.apache.org/jira/browse/FLINK-5647) | Fix RocksDB Backend Cleanup |  Major | State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-4651](https://issues.apache.org/jira/browse/FLINK-4651) | Re-register processing time timers at the WindowOperator upon recovery. |  Major | DataStream API | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5771](https://issues.apache.org/jira/browse/FLINK-5771) | DelimitedInputFormat does not correctly handle multi-byte delimiters |  Major | filesystem-connector | Colin Breame | Fabian Hueske |
| [FLINK-5934](https://issues.apache.org/jira/browse/FLINK-5934) | Scheduler in ExecutionGraph null if failure happens in ExecutionGraph.restoreLatestCheckpointedState |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-5945](https://issues.apache.org/jira/browse/FLINK-5945) | Close function in OuterJoinOperatorBase#executeOnCollections |  Major | Core | Greg Hogan | Greg Hogan |
| [FLINK-6025](https://issues.apache.org/jira/browse/FLINK-6025) | User code ClassLoader not used when KryoSerializer fallbacks to serialization for copying |  Major | Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-5942](https://issues.apache.org/jira/browse/FLINK-5942) | Harden ZooKeeperStateHandleStore to deal with corrupted data |  Major | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5940](https://issues.apache.org/jira/browse/FLINK-5940) | ZooKeeperCompletedCheckpointStore cannot handle broken state handles |  Major | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-6006](https://issues.apache.org/jira/browse/FLINK-6006) | Kafka Consumer can lose state if queried partition list is incomplete on restore |  Blocker | Kafka Connector, Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-5701](https://issues.apache.org/jira/browse/FLINK-5701) | FlinkKafkaProducer should check asyncException on checkpoints |  Critical | Kafka Connector, Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |


