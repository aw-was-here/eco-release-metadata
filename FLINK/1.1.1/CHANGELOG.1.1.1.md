
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

## Release 1.1.1 - 2016-08-08



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4251](https://issues.apache.org/jira/browse/FLINK-4251) | Add possiblity for the RMQ Streaming Sink to customize the queue |  Minor | Streaming Connectors | Philipp Grulich |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4290](https://issues.apache.org/jira/browse/FLINK-4290) | CassandraConnectorTest deadlocks |  Critical | Streaming Connectors | Stephan Ewen | Stephan Ewen |
| [FLINK-4285](https://issues.apache.org/jira/browse/FLINK-4285) | Non-existing example in Flink quickstart setup documentation |  Minor | Documentation, Examples | Tzu-Li (Gordon) Tai | Stephan Ewen |
| [FLINK-4292](https://issues.apache.org/jira/browse/FLINK-4292) | HCatalog project incorrectly set up |  Critical | Batch Connectors and Input/Output Formats | Stephan Ewen | Stephan Ewen |
| [FLINK-4219](https://issues.apache.org/jira/browse/FLINK-4219) | Quote PDSH opts in start-cluster.sh |  Major | Startup Shell Scripts | Greg Hogan | Greg Hogan |
| [FLINK-4314](https://issues.apache.org/jira/browse/FLINK-4314) | Test instability in JobManagerHAJobGraphRecoveryITCase.testJobPersistencyWhenJobManagerShutdown |  Major | . | Ufuk Celebi |  |
| [FLINK-4297](https://issues.apache.org/jira/browse/FLINK-4297) | Yarn client can't determine fat jar location if path contains spaces |  Major | YARN | Maximilian Michels | Maximilian Michels |
| [FLINK-4332](https://issues.apache.org/jira/browse/FLINK-4332) | Savepoint Serializer mixed read()/readFully() |  Critical | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |


