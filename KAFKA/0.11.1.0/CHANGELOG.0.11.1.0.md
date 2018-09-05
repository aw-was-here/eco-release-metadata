
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

## Release 0.11.1.0 - Unreleased (as of 2017-06-30)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5289](https://issues.apache.org/jira/browse/KAFKA-5289) | One StopReplicaRequest will caused two Responses |  Critical | core | xuzq | Ismael Juma |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5411](https://issues.apache.org/jira/browse/KAFKA-5411) | Generate javadoc for AdminClient and show configs in documentation |  Blocker | . | Ismael Juma | Ismael Juma |
| [KAFKA-5439](https://issues.apache.org/jira/browse/KAFKA-5439) | Add checks in integration tests to verify that threads have been shutdown |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5233](https://issues.apache.org/jira/browse/KAFKA-5233) | Changes to punctuate semantics (KIP-138) |  Major | streams | Michal Borowiecki | Michal Borowiecki |
| [KAFKA-5485](https://issues.apache.org/jira/browse/KAFKA-5485) | Streams should not suspend tasks twice |  Minor | streams | Matthias J. Sax | Matthias J. Sax |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5294](https://issues.apache.org/jira/browse/KAFKA-5294) | PlainSaslServerFactory should allow a null Map in getMechanismNames |  Major | . | Bryan Bende | Mickael Maison |
| [KAFKA-5303](https://issues.apache.org/jira/browse/KAFKA-5303) | FetchRequest doesn't implement toString |  Major | . | Andrey | Ismael Juma |
| [KAFKA-5305](https://issues.apache.org/jira/browse/KAFKA-5305) | Missing logging information in ReplicaFetcher |  Major | . | Andrey | Ismael Juma |
| [KAFKA-5135](https://issues.apache.org/jira/browse/KAFKA-5135) | Controller Health Metrics (KIP-143) |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-5081](https://issues.apache.org/jira/browse/KAFKA-5081) | two versions of jackson-annotations-xxx.jar in distribution tgz |  Minor | build | Edoardo Comar | Ewen Cheslack-Postava |
| [KAFKA-5263](https://issues.apache.org/jira/browse/KAFKA-5263) | kakfa-clients consume 100% CPU with manual partition assignment when network connection is lost |  Major | clients | Konstantin Smirnov | Rajini Sivaram |
| [KAFKA-4459](https://issues.apache.org/jira/browse/KAFKA-4459) | rat license check not running in Jenkins |  Major | . | Ismael Juma | Ewen Cheslack-Postava |
| [KAFKA-5229](https://issues.apache.org/jira/browse/KAFKA-5229) | Reflections logs excessive warnings when scanning classpaths |  Major | KafkaConnect | Ewen Cheslack-Postava | Bharat Viswanadham |
| [KAFKA-5164](https://issues.apache.org/jira/browse/KAFKA-5164) | SetSchemaMetadata does not replace the schemas in structs correctly |  Major | KafkaConnect | Ewen Cheslack-Postava | Randall Hauch |
| [KAFKA-5051](https://issues.apache.org/jira/browse/KAFKA-5051) | Avoid DNS reverse lookup in security-critical TLS code path |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-4942](https://issues.apache.org/jira/browse/KAFKA-4942) | Kafka Connect: Offset committing times out before expected |  Major | KafkaConnect | Stephane Maarek |  |
| [KAFKA-5380](https://issues.apache.org/jira/browse/KAFKA-5380) | Transient test failure: KafkaConsumerTest.testChangingRegexSubscription |  Major | consumer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5433](https://issues.apache.org/jira/browse/KAFKA-5433) | Transient test failure: SaslPlainSslEndToEndAuthorizationTest.testNoProduceWithDescribeAcl |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5448](https://issues.apache.org/jira/browse/KAFKA-5448) | TimestampConverter's "type" config conflicts with the basic Transformation "type" config |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-5450](https://issues.apache.org/jira/browse/KAFKA-5450) | Scripts to startup Connect in system tests have too short a timeout |  Major | system tests | Randall Hauch | Randall Hauch |
| [KAFKA-5412](https://issues.apache.org/jira/browse/KAFKA-5412) | Using connect-console-sink/source.properties raises an exception related to "file" property not found |  Major | KafkaConnect | Paolo Patierno | Paolo Patierno |
| [KAFKA-5472](https://issues.apache.org/jira/browse/KAFKA-5472) | Connector validate REST endpoint returning duplicate entries in "groups" |  Blocker | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-5475](https://issues.apache.org/jira/browse/KAFKA-5475) | Connector config validation REST API endpoint not including fields for transformations |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Konstantine Karantasis |
| [KAFKA-4785](https://issues.apache.org/jira/browse/KAFKA-4785) | Records from internal repartitioning topics should always use RecordMetadataTimestampExtractor |  Major | streams | Matthias J. Sax | Jeyhun Karimov |
| [KAFKA-5486](https://issues.apache.org/jira/browse/KAFKA-5486) | org.apache.kafka logging should go to server.log |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-5498](https://issues.apache.org/jira/browse/KAFKA-5498) | Connect validation API stops returning recommendations for some fields after the right sequence of requests |  Major | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-4913](https://issues.apache.org/jira/browse/KAFKA-4913) | creating a window store with one segment throws division by zero error |  Major | streams | Xavier Léauté | Damian Guy |
| [KAFKA-5487](https://issues.apache.org/jira/browse/KAFKA-5487) | Rolling upgrade test for streams |  Major | streams | Eno Thereska | Eno Thereska |
| [KAFKA-5506](https://issues.apache.org/jira/browse/KAFKA-5506) | bin/kafka-consumer-groups.sh failing to query offsets |  Major | consumer | Yousef Amar | Ismael Juma |
| [KAFKA-5402](https://issues.apache.org/jira/browse/KAFKA-5402) | JmxReporter Fetch metrics for kafka.server should not be created when client quotas are not enabled |  Major | core | Koelli Mungee | Rajini Sivaram |
| [KAFKA-5484](https://issues.apache.org/jira/browse/KAFKA-5484) | Refactor kafkatest docker support |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5544](https://issues.apache.org/jira/browse/KAFKA-5544) | The LastStableOffsetLag metric should be removed when partition is deleted |  Major | . | Dong Lin | Dong Lin |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4935](https://issues.apache.org/jira/browse/KAFKA-4935) | Consider disabling record level CRC checks for message format V2 |  Blocker | . | Apurva Mehta | Jason Gustafson |
| [KAFKA-5147](https://issues.apache.org/jira/browse/KAFKA-5147) | KafkaProducer's TransactionManager needs a review on synchronization |  Blocker | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-4948](https://issues.apache.org/jira/browse/KAFKA-4948) | Failure in kafka.admin.DescribeConsumerGroupTest.testDescribeExistingGroupWithNoMembersWithNewConsumer |  Major | unit tests | Guozhang Wang | Rajini Sivaram |
| [KAFKA-5389](https://issues.apache.org/jira/browse/KAFKA-5389) | Replace zkClient.exists method with zkUtils.pathExists |  Major | core | Balint Molnar | Balint Molnar |
| [KAFKA-5314](https://issues.apache.org/jira/browse/KAFKA-5314) | Improve exception handling for state stores |  Major | streams | Eno Thereska | Eno Thereska |
| [KAFKA-5391](https://issues.apache.org/jira/browse/KAFKA-5391) | Replace zkClient.delete\* method with an equivalent zkUtils method |  Major | core | Balint Molnar | Balint Molnar |
| [KAFKA-4661](https://issues.apache.org/jira/browse/KAFKA-4661) | Improve test coverage UsePreviousTimeOnInvalidTimestamp |  Minor | streams | Damian Guy | Jeyhun Karimov |
| [KAFKA-5274](https://issues.apache.org/jira/browse/KAFKA-5274) | Review and improve AdminClient Javadoc for the first release (KIP-117) |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-4659](https://issues.apache.org/jira/browse/KAFKA-4659) | Improve test coverage of CachingKeyValueStore |  Minor | streams | Damian Guy | Jeyhun Karimov |
| [KAFKA-4655](https://issues.apache.org/jira/browse/KAFKA-4655) | Improve test coverage of CompositeReadOnlySessionStore |  Major | streams | Damian Guy | Jeyhun Karimov |
| [KAFKA-4658](https://issues.apache.org/jira/browse/KAFKA-4658) | Improve test coverage InMemoryKeyValueLoggedStore |  Major | streams | Damian Guy | Jeyhun Karimov |
| [KAFKA-4656](https://issues.apache.org/jira/browse/KAFKA-4656) | Improve test coverage of CompositeReadOnlyKeyValueStore |  Minor | streams | Damian Guy | Jeyhun Karimov |
| [KAFKA-4653](https://issues.apache.org/jira/browse/KAFKA-4653) | Improve test coverage of RocksDBStore |  Minor | streams | Damian Guy | Jeyhun Karimov |


