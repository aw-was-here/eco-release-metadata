
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
# Apache Kafka Changelog

## Release 0.10.2.1 - Unreleased (as of 2017-03-24)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4864](https://issues.apache.org/jira/browse/KAFKA-4864) | Kafka Secure Migrator tool doesn't secure all the nodes |  Critical | . | Stephane Maarek |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4788](https://issues.apache.org/jira/browse/KAFKA-4788) | Broker level configuration 'log.segment.bytes' not used when 'segment.bytes' not configured per topic. |  Major | log | Ciprian Pascu |  |
| [KAFKA-4806](https://issues.apache.org/jira/browse/KAFKA-4806) | KafkaConsumer: ConsumerConfig gets logged twice. |  Minor | clients, consumer, log | Marco Ebert |  |
| [KAFKA-4809](https://issues.apache.org/jira/browse/KAFKA-4809) | docker/run\_tests.sh should set up /opt/kafka-dev to be the source directory |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4800](https://issues.apache.org/jira/browse/KAFKA-4800) | Streams State transition ASCII diagrams need fixing and polishing |  Minor | streams | Eno Thereska | Clemens Valiente |
| [KAFKA-4631](https://issues.apache.org/jira/browse/KAFKA-4631) | Refresh consumer metadata more frequently for unknown subscribed topics |  Minor | consumer | Jason Gustafson | Rajini Sivaram |
| [KAFKA-4851](https://issues.apache.org/jira/browse/KAFKA-4851) | SessionStore.fetch(key) is a performance bottleneck |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4861](https://issues.apache.org/jira/browse/KAFKA-4861) | log.message.timestamp.type=LogAppendTime breaks Kafka based consumers |  Blocker | consumer | Dustin Cote | Ismael Juma |
| [KAFKA-4863](https://issues.apache.org/jira/browse/KAFKA-4863) | Querying window store may return unwanted keys |  Critical | streams | Xavier Léauté | Damian Guy |
| [KAFKA-4779](https://issues.apache.org/jira/browse/KAFKA-4779) | Failure in kafka/tests/kafkatest/tests/core/security\_rolling\_upgrade\_test.py |  Major | . | Apurva Mehta | Rajini Sivaram |
| [KAFKA-4919](https://issues.apache.org/jira/browse/KAFKA-4919) | Document that stores must not be closed when Processors are closed |  Major | streams | Elias Levy | Damian Guy |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4786](https://issues.apache.org/jira/browse/KAFKA-4786) | Transient test failure: ConsumerCoordinatorTest.testHeartbeatThreadClose |  Major | . | Ismael Juma | Rajini Sivaram |
| [KAFKA-4198](https://issues.apache.org/jira/browse/KAFKA-4198) | Transient test failure: ConsumerBounceTest.testConsumptionWithBrokerFailures |  Major | . | Ismael Juma | Armin Braun |


