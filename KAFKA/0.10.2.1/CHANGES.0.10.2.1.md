
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

## Release 0.10.2.1 - 2017-04-26



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4864](https://issues.apache.org/jira/browse/KAFKA-4864) | Kafka Secure Migrator tool doesn't secure all the nodes |  Critical | . | Stephane Maarek |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4943](https://issues.apache.org/jira/browse/KAFKA-4943) | SCRAM secret's should be better protected with Zookeeper ACLs |  Major | security | Johan Ström | Rajini Sivaram |


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
| [KAFKA-4848](https://issues.apache.org/jira/browse/KAFKA-4848) | Stream thread getting into deadlock state while trying to get rocksdb lock in retryWithBackoff |  Major | streams | Sachin Mittal | Sachin Mittal |
| [KAFKA-4863](https://issues.apache.org/jira/browse/KAFKA-4863) | Querying window store may return unwanted keys |  Critical | streams | Xavier Léauté | Damian Guy |
| [KAFKA-4779](https://issues.apache.org/jira/browse/KAFKA-4779) | Failure in kafka/tests/kafkatest/tests/core/security\_rolling\_upgrade\_test.py |  Major | . | Apurva Mehta | Rajini Sivaram |
| [KAFKA-4919](https://issues.apache.org/jira/browse/KAFKA-4919) | Document that stores must not be closed when Processors are closed |  Major | streams | Elias Levy | Damian Guy |
| [KAFKA-4959](https://issues.apache.org/jira/browse/KAFKA-4959) | remove controller concurrent access to non-threadsafe NetworkClient, Selector, and SSLEngine |  Major | . | Onur Karaman | Onur Karaman |
| [KAFKA-4791](https://issues.apache.org/jira/browse/KAFKA-4791) | Kafka Streams - unable to add state stores when using wildcard topics on the source |  Major | streams | Bart Vercammen | Bill Bejeck |
| [KAFKA-4689](https://issues.apache.org/jira/browse/KAFKA-4689) | OffsetValidationTest fails validation with "Current position greater than the total number of consumed records" |  Major | clients, consumer, system tests | Ewen Cheslack-Postava | Jason Gustafson |
| [KAFKA-4878](https://issues.apache.org/jira/browse/KAFKA-4878) | Kafka Connect does not log connector configuration errors |  Blocker | . | Gwen Shapira | Armin Braun |
| [KAFKA-4837](https://issues.apache.org/jira/browse/KAFKA-4837) | Config validation in Connector plugins need to compare against both canonical and simple class names |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-4916](https://issues.apache.org/jira/browse/KAFKA-4916) | Add streams tests with brokers failing |  Blocker | streams | Eno Thereska | Eno Thereska |
| [KAFKA-5003](https://issues.apache.org/jira/browse/KAFKA-5003) | StreamThread should catch InvalidTopicException |  Blocker | streams | Eno Thereska | Matthias J. Sax |
| [KAFKA-5040](https://issues.apache.org/jira/browse/KAFKA-5040) | Increase number of Streams producer retries from the default of 0 |  Blocker | streams | Eno Thereska | Eno Thereska |
| [KAFKA-4901](https://issues.apache.org/jira/browse/KAFKA-4901) | Make ProduceRequest thread-safe |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-5038](https://issues.apache.org/jira/browse/KAFKA-5038) | running multiple kafka streams instances causes one or more instance to get into file contention |  Blocker | streams | Bharad Tirumala | Eno Thereska |
| [KAFKA-5075](https://issues.apache.org/jira/browse/KAFKA-5075) | Defer exception to the next pollOnce() if consumer's fetch position has already increased |  Major | clients, consumer | Jiangjie Qin | Dong Lin |
| [KAFKA-5097](https://issues.apache.org/jira/browse/KAFKA-5097) | KafkaConsumer.poll throws IllegalStateException |  Blocker | . | Ismael Juma | Eno Thereska |
| [KAFKA-5095](https://issues.apache.org/jira/browse/KAFKA-5095) | ThreadCacheTest.cacheOverheadsSmallValues fails intermittently |  Major | streams | Damian Guy | Eno Thereska |
| [KAFKA-4980](https://issues.apache.org/jira/browse/KAFKA-4980) | testReprocessingFromScratch unit test failure |  Major | streams | Eno Thereska | Matthias J. Sax |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4786](https://issues.apache.org/jira/browse/KAFKA-4786) | Transient test failure: ConsumerCoordinatorTest.testHeartbeatThreadClose |  Major | . | Ismael Juma | Rajini Sivaram |
| [KAFKA-4198](https://issues.apache.org/jira/browse/KAFKA-4198) | Transient test failure: ConsumerBounceTest.testConsumptionWithBrokerFailures |  Major | . | Ismael Juma | Armin Braun |


