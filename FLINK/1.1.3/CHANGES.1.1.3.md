
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

## Release 1.1.3 - 2016-10-12



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4723](https://issues.apache.org/jira/browse/FLINK-4723) | Unify behaviour of committed offsets to Kafka / ZK for Kafka 0.8 and 0.9 consumer |  Major | Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4566](https://issues.apache.org/jira/browse/FLINK-4566) | ProducerFailedException does not properly preserve Exception causes |  Major | Network | Stephan Ewen | Stephan Ewen |
| [FLINK-4589](https://issues.apache.org/jira/browse/FLINK-4589) | Fix Merging of Covering Window in MergingWindowSet |  Blocker | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-4640](https://issues.apache.org/jira/browse/FLINK-4640) | Serialization of the initialValue of a Fold on WindowedStream fails |  Blocker | Streaming | Fabian Hueske | Stephan Ewen |
| [FLINK-4663](https://issues.apache.org/jira/browse/FLINK-4663) | Flink JDBCOutputFormat logs wrong WARN message |  Minor | Batch Connectors and Input/Output Formats | Swapnil Chougule | Swapnil Chougule |
| [FLINK-4485](https://issues.apache.org/jira/browse/FLINK-4485) | Finished jobs in yarn session fill /tmp filesystem |  Blocker | JobManager | Niels Basjes | Maximilian Michels |
| [FLINK-4672](https://issues.apache.org/jira/browse/FLINK-4672) | TaskManager accidentally decorates Kill messages |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-4702](https://issues.apache.org/jira/browse/FLINK-4702) | Kafka consumer must commit offsets asynchronously |  Blocker | Kafka Connector | Stephan Ewen | Stephan Ewen |
| [FLINK-4618](https://issues.apache.org/jira/browse/FLINK-4618) | FlinkKafkaConsumer09 should start from the next record on startup from offsets in Kafka |  Major | Kafka Connector | static-max |  |
| [FLINK-4732](https://issues.apache.org/jira/browse/FLINK-4732) | Maven junction plugin security threat |  Critical | Build System | Maximilian Michels | Maximilian Michels |
| [FLINK-4677](https://issues.apache.org/jira/browse/FLINK-4677) | Jars with no job executions produces NullPointerException in ClusterClient |  Minor | Client | Maximilian Michels | Maximilian Michels |
| [FLINK-4329](https://issues.apache.org/jira/browse/FLINK-4329) | Fix Streaming File Source Timestamps/Watermarks Handling |  Major | Streaming Connectors | Aljoscha Krettek | Kostas Kloudas |
| [FLINK-4777](https://issues.apache.org/jira/browse/FLINK-4777) | ContinuousFileMonitoringFunction may throw IOException when files are moved |  Critical | Streaming Connectors | Maximilian Michels | Maximilian Michels |
| [FLINK-4788](https://issues.apache.org/jira/browse/FLINK-4788) | State backend class cannot be loaded, because fully qualified name converted to lower-case |  Blocker | State Backends, Checkpointing | Florian Koenig | Stephan Ewen |
| [FLINK-4311](https://issues.apache.org/jira/browse/FLINK-4311) | TableInputFormat fails when reused on next split |  Critical | . | Niels Basjes | Niels Basjes |
| [FLINK-4100](https://issues.apache.org/jira/browse/FLINK-4100) | RocksDBStateBackend#close() can throw NPE |  Trivial | State Backends, Checkpointing, Tests | Chesnay Schepler |  |


