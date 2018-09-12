
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

## Release 1.1.1 - 2018-07-19



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6982](https://issues.apache.org/jira/browse/KAFKA-6982) | java.lang.ArithmeticException: / by zero |  Major | network | wade wu |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6106](https://issues.apache.org/jira/browse/KAFKA-6106) | Postpone normal processing of tasks within a thread until restoration of all tasks have completed |  Major | streams | Guozhang Wang | Kamal Chandraprakash |
| [KAFKA-6772](https://issues.apache.org/jira/browse/KAFKA-6772) | Broker should load credentials from ZK before requests are allowed |  Major | . | Ismael Juma | Rajini Sivaram |
| [KAFKA-6930](https://issues.apache.org/jira/browse/KAFKA-6930) | Update KafkaZkClient debug log |  Trivial | core, zkclient | darion yaphet |  |
| [KAFKA-6760](https://issues.apache.org/jira/browse/KAFKA-6760) | responses not logged properly in controller |  Major | core | Jun Rao | Mickael Maison |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6661](https://issues.apache.org/jira/browse/KAFKA-6661) | Sink connectors that explicitly 'resume' topic partitions can resume a paused task |  Critical | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-6052](https://issues.apache.org/jira/browse/KAFKA-6052) | Windows: Consumers not polling when isolation.level=read\_committed |  Major | consumer, producer | Ansel Zandegran | Vahid Hashemian |
| [KAFKA-6728](https://issues.apache.org/jira/browse/KAFKA-6728) | Kafka Connect Header Null Pointer Exception |  Critical | KafkaConnect | Philippe Hong | Randall Hauch |
| [KAFKA-6739](https://issues.apache.org/jira/browse/KAFKA-6739) | Down-conversion fails for records with headers |  Critical | core | Koelli Mungee | Dhruvil Shah |
| [KAFKA-6748](https://issues.apache.org/jira/browse/KAFKA-6748) | Scheduler cannot be cancelled from Punctuator |  Major | streams | Frederic Arno | Frederic Arno |
| [KAFKA-6747](https://issues.apache.org/jira/browse/KAFKA-6747) | kafka-streams Invalid transition attempted from state READY to state ABORTING\_TRANSACTION |  Major | streams | Frederic Arno | Ted Yu |
| [KAFKA-6752](https://issues.apache.org/jira/browse/KAFKA-6752) | Unclean leader election metric no longer working |  Major | controller | Jason Gustafson | Manikumar |
| [KAFKA-6765](https://issues.apache.org/jira/browse/KAFKA-6765) | Intermittent test failure in CustomQuotaCallbackTest |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6742](https://issues.apache.org/jira/browse/KAFKA-6742) | TopologyTestDriver error when dealing with stores from GlobalKTable |  Minor | streams | Valentino Proietti | Valentino Proietti |
| [KAFKA-6855](https://issues.apache.org/jira/browse/KAFKA-6855) | Kafka fails to start with Java 10 due to faulty Java version detection |  Major | core | Anders Tornblad | Ismael Juma |
| [KAFKA-6853](https://issues.apache.org/jira/browse/KAFKA-6853) | ResponseMetadata calculates latency incorrectly (and therefore ZooKeeperRequestLatencyMs is incorrect) |  Minor | core | Fuud |  |
| [KAFKA-6857](https://issues.apache.org/jira/browse/KAFKA-6857) | LeaderEpochFileCache.endOffsetFor() should check for UNDEFINED\_EPOCH explicitly |  Major | core | Jun Rao | Anna Povzner |
| [KAFKA-6879](https://issues.apache.org/jira/browse/KAFKA-6879) | Controller deadlock following session expiration |  Critical | controller | Jason Gustafson | Jason Gustafson |
| [KAFKA-6878](https://issues.apache.org/jira/browse/KAFKA-6878) | NPE when querying global state store not in READY state |  Major | streams | Salazar |  |
| [KAFKA-6870](https://issues.apache.org/jira/browse/KAFKA-6870) | Concurrency conflicts in SampledStat |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-6825](https://issues.apache.org/jira/browse/KAFKA-6825) | DEFAULT\_PRODUCTION\_EXCEPTION\_HANDLER\_CLASS\_CONFIG is private |  Minor | streams | Anna O | Guozhang Wang |
| [KAFKA-6893](https://issues.apache.org/jira/browse/KAFKA-6893) | Processors created after acceptor started which can cause in a brief refusal to accept connections |  Minor | . | Ryan P | Rajini Sivaram |
| [KAFKA-6566](https://issues.apache.org/jira/browse/KAFKA-6566) | SourceTask#stop() not called after exception raised in poll() |  Blocker | KafkaConnect | Gunnar Morling | Robert Yokota |
| [KAFKA-6937](https://issues.apache.org/jira/browse/KAFKA-6937) | In-sync replica delayed during fetch if replica throttle is exceeded |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-6929](https://issues.apache.org/jira/browse/KAFKA-6929) | ZkData - Consumers offsets Zookeeper path is not correct |  Major | core | maytal |  |
| [KAFKA-6054](https://issues.apache.org/jira/browse/KAFKA-6054) | ERROR "SubscriptionInfo - unable to decode subscription data: version=2" when upgrading from 0.10.0.0 to 0.10.2.1 |  Major | streams | James Cheng | Matthias J. Sax |
| [KAFKA-6925](https://issues.apache.org/jira/browse/KAFKA-6925) | Memory leak in org.apache.kafka.streams.processor.internals.StreamThread$StreamsMetricsThreadImpl |  Major | streams | Marcin Kuthan | John Roesler |
| [KAFKA-6906](https://issues.apache.org/jira/browse/KAFKA-6906) | Kafka Streams does not commit transactions if data is produced via wall-clock punctuation |  Major | streams | Matthias J. Sax | Jagadesh Adireddi |
| [KAFKA-6782](https://issues.apache.org/jira/browse/KAFKA-6782) | GlobalKTable GlobalStateStore never finishes restoring when consuming aborted messages |  Major | streams | Lingxiao WANG | Lingxiao WANG |
| [KAFKA-6749](https://issues.apache.org/jira/browse/KAFKA-6749) | TopologyTestDriver fails when topoloy under test uses EXACTLY\_ONCE |  Minor | streams | Frederic Arno | Jagadesh Adireddi |
| [KAFKA-6860](https://issues.apache.org/jira/browse/KAFKA-6860) | NPE when reinitializeStateStores with eos enabled |  Major | streams | ko byoung kwon | Matthias J. Sax |
| [KAFKA-6711](https://issues.apache.org/jira/browse/KAFKA-6711) | GlobalStateManagerImpl should not write offsets of in-memory stores in checkpoint file |  Major | streams | Cemalettin Koç | Cemalettin Koç |
| [KAFKA-6975](https://issues.apache.org/jira/browse/KAFKA-6975) | AdminClient.deleteRecords() may cause replicas unable to fetch from beginning |  Blocker | . | Anna Povzner | Anna Povzner |
| [KAFKA-7021](https://issues.apache.org/jira/browse/KAFKA-7021) | Source KTable checkpoint is not correct |  Major | streams | Matthias J. Sax | Guozhang Wang |
| [KAFKA-7047](https://issues.apache.org/jira/browse/KAFKA-7047) | Connect isolation whitelist does not include SimpleHeaderConverter |  Critical | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-7058](https://issues.apache.org/jira/browse/KAFKA-7058) | ConnectSchema#equals() broken for array-typed default values |  Major | KafkaConnect | Gunnar Morling | Ewen Cheslack-Postava |
| [KAFKA-7012](https://issues.apache.org/jira/browse/KAFKA-7012) | Performance issue upgrading to kafka 1.0.1 or 1.1 |  Critical | . | rajadayalan perumalsamy | Rajini Sivaram |
| [KAFKA-7082](https://issues.apache.org/jira/browse/KAFKA-7082) | Concurrent createTopics calls may throw NodeExistsException |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-7104](https://issues.apache.org/jira/browse/KAFKA-7104) | ReplicaFetcher thread may die because of inconsistent log start offset in fetch response |  Major | . | Anna Povzner | Anna Povzner |
| [KAFKA-7136](https://issues.apache.org/jira/browse/KAFKA-7136) | PushHttpMetricsReporter may deadlock when processing metrics changes |  Blocker | metrics | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6918](https://issues.apache.org/jira/browse/KAFKA-6918) | Kafka server fails to start with IBM JAVA |  Critical | . | Nayana Thorat |  |
| [KAFKA-5882](https://issues.apache.org/jira/browse/KAFKA-5882) | NullPointerException in StreamTask |  Major | streams | Seweryn Habdank-Wojewodzki |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6854](https://issues.apache.org/jira/browse/KAFKA-6854) | Log cleaner fails with transaction markers that are deleted during clean |  Blocker | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6917](https://issues.apache.org/jira/browse/KAFKA-6917) | Request handler deadlocks attempting to acquire group metadata lock |  Blocker | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6911](https://issues.apache.org/jira/browse/KAFKA-6911) | Incorrect check for keystore/truststore dynamic update |  Major | core | Rajini Sivaram | Rajini Sivaram |


