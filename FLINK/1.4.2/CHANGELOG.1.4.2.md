
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

## Release 1.4.2 - 2018-03-08



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8652](https://issues.apache.org/jira/browse/FLINK-8652) | Reduce log level of QueryableStateClient.getKvState() to DEBUG |  Major | Queryable State | Fabian Hueske | Fabian Hueske |
| [FLINK-8576](https://issues.apache.org/jira/browse/FLINK-8576) | Log message for QueryableState loading failure too verbose |  Minor | Queryable State | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8574](https://issues.apache.org/jira/browse/FLINK-8574) | Add timestamps to travis logging messages |  Minor | Travis | Chesnay Schepler | Chesnay Schepler |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8423](https://issues.apache.org/jira/browse/FLINK-8423) | OperatorChain#pushToOperator catch block may fail with NPE |  Critical | Streaming | Chesnay Schepler | zhangminglei |
| [FLINK-8520](https://issues.apache.org/jira/browse/FLINK-8520) | CassandraConnectorITCase.testCassandraTableSink unstable on Travis |  Blocker | Cassandra Connector, Table API & SQL, Tests | Till Rohrmann | Chesnay Schepler |
| [FLINK-8692](https://issues.apache.org/jira/browse/FLINK-8692) | Mistake in MyMapFunction code snippet |  Trivial | Documentation | Matt Hagen | Chesnay Schepler |
| [FLINK-8621](https://issues.apache.org/jira/browse/FLINK-8621) | PrometheusReporterTest.endpointIsUnavailableAfterReporterIsClosed unstable on Travis |  Blocker | Metrics, Tests | Till Rohrmann | Chesnay Schepler |
| [FLINK-8735](https://issues.apache.org/jira/browse/FLINK-8735) | Add savepoint migration ITCase that covers operator state |  Blocker | Tests | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-8772](https://issues.apache.org/jira/browse/FLINK-8772) | FlinkKafkaConsumerBase partitions discover missing a log parameter |  Trivial | Kafka Connector | Matrix42 | Matrix42 |
| [FLINK-8791](https://issues.apache.org/jira/browse/FLINK-8791) | Fix documentation on how to link dependencies |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-8451](https://issues.apache.org/jira/browse/FLINK-8451) | CaseClassSerializer is not backwards compatible in 1.4 |  Blocker | Type Serialization System | Timo Walther | Timo Walther |
| [FLINK-8849](https://issues.apache.org/jira/browse/FLINK-8849) | Wrong link from concepts/runtime to doc on chaining |  Minor | Documentation | Ken Krugler | Ken Krugler |
| [FLINK-8798](https://issues.apache.org/jira/browse/FLINK-8798) | Make commons-logging a parent-first pattern |  Blocker | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8741](https://issues.apache.org/jira/browse/FLINK-8741) | KafkaFetcher09/010/011 uses wrong user code classloader |  Blocker | Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-7756](https://issues.apache.org/jira/browse/FLINK-7756) | RocksDB state backend Checkpointing (Async and Incremental)  is not working with CEP. |  Blocker | CEP, State Backends, Checkpointing, Streaming | Shashank Agarwal | Aljoscha Krettek |
| [FLINK-6321](https://issues.apache.org/jira/browse/FLINK-6321) | RocksDB state backend Checkpointing is not working with KeyedCEP. |  Blocker | CEP | Shashank Agarwal | Kostas Kloudas |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9237](https://issues.apache.org/jira/browse/FLINK-9237) | Some description about The FsStateBackend in the Docs。 |  Minor | Documentation | liuzhixin | yuqi |
| [FLINK-8308](https://issues.apache.org/jira/browse/FLINK-8308) | Update yajl-ruby dependency to 1.3.1 or higher |  Critical | Project Website | Fabian Hueske | Steven Langbroek |


