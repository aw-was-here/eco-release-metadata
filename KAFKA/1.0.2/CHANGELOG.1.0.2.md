
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

## Release 1.0.2 - 2018-07-08



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6634](https://issues.apache.org/jira/browse/KAFKA-6634) | Delay initiating the txn on producers until initializeTopology with EOS turned on |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-6772](https://issues.apache.org/jira/browse/KAFKA-6772) | Broker should load credentials from ZK before requests are allowed |  Major | . | Ismael Juma | Rajini Sivaram |
| [KAFKA-6364](https://issues.apache.org/jira/browse/KAFKA-6364) | Add Second Check for End Offset During Restore |  Major | streams | Bill Bejeck | Bill Bejeck |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6360](https://issues.apache.org/jira/browse/KAFKA-6360) | RocksDB segments not removed when store is closed causes re-initialization to fail |  Blocker | streams | Damian Guy | Damian Guy |
| [KAFKA-5996](https://issues.apache.org/jira/browse/KAFKA-5996) | JsonConverter generates "Mismatching schema" DataException |  Major | KafkaConnect | Yuqi Li |  |
| [KAFKA-6536](https://issues.apache.org/jira/browse/KAFKA-6536) | Streams quickstart pom.xml is missing versions for a bunch of plugins |  Major | streams | Ewen Cheslack-Postava | Yaswanth Kumar |
| [KAFKA-6568](https://issues.apache.org/jira/browse/KAFKA-6568) | LogCleanerManager.doneDeleting() should check the partition state before deleting the in progress partition |  Blocker | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-6661](https://issues.apache.org/jira/browse/KAFKA-6661) | Sink connectors that explicitly 'resume' topic partitions can resume a paused task |  Critical | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-6739](https://issues.apache.org/jira/browse/KAFKA-6739) | Down-conversion fails for records with headers |  Critical | core | Koelli Mungee | Dhruvil Shah |
| [KAFKA-6748](https://issues.apache.org/jira/browse/KAFKA-6748) | Scheduler cannot be cancelled from Punctuator |  Major | streams | Frederic Arno | Frederic Arno |
| [KAFKA-6747](https://issues.apache.org/jira/browse/KAFKA-6747) | kafka-streams Invalid transition attempted from state READY to state ABORTING\_TRANSACTION |  Major | streams | Frederic Arno | Ted Yu |
| [KAFKA-6857](https://issues.apache.org/jira/browse/KAFKA-6857) | LeaderEpochFileCache.endOffsetFor() should check for UNDEFINED\_EPOCH explicitly |  Major | core | Jun Rao | Anna Povzner |
| [KAFKA-6566](https://issues.apache.org/jira/browse/KAFKA-6566) | SourceTask#stop() not called after exception raised in poll() |  Blocker | KafkaConnect | Gunnar Morling | Robert Yokota |
| [KAFKA-6937](https://issues.apache.org/jira/browse/KAFKA-6937) | In-sync replica delayed during fetch if replica throttle is exceeded |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-6054](https://issues.apache.org/jira/browse/KAFKA-6054) | ERROR "SubscriptionInfo - unable to decode subscription data: version=2" when upgrading from 0.10.0.0 to 0.10.2.1 |  Major | streams | James Cheng | Matthias J. Sax |
| [KAFKA-6925](https://issues.apache.org/jira/browse/KAFKA-6925) | Memory leak in org.apache.kafka.streams.processor.internals.StreamThread$StreamsMetricsThreadImpl |  Major | streams | Marcin Kuthan | John Roesler |
| [KAFKA-6906](https://issues.apache.org/jira/browse/KAFKA-6906) | Kafka Streams does not commit transactions if data is produced via wall-clock punctuation |  Major | streams | Matthias J. Sax | Jagadesh Adireddi |
| [KAFKA-6782](https://issues.apache.org/jira/browse/KAFKA-6782) | GlobalKTable GlobalStateStore never finishes restoring when consuming aborted messages |  Major | streams | Lingxiao WANG | Lingxiao WANG |
| [KAFKA-6711](https://issues.apache.org/jira/browse/KAFKA-6711) | GlobalStateManagerImpl should not write offsets of in-memory stores in checkpoint file |  Major | streams | Cemalettin Koç | Cemalettin Koç |
| [KAFKA-6975](https://issues.apache.org/jira/browse/KAFKA-6975) | AdminClient.deleteRecords() may cause replicas unable to fetch from beginning |  Blocker | . | Anna Povzner | Anna Povzner |
| [KAFKA-7021](https://issues.apache.org/jira/browse/KAFKA-7021) | Source KTable checkpoint is not correct |  Major | streams | Matthias J. Sax | Guozhang Wang |
| [KAFKA-7058](https://issues.apache.org/jira/browse/KAFKA-7058) | ConnectSchema#equals() broken for array-typed default values |  Major | KafkaConnect | Gunnar Morling | Ewen Cheslack-Postava |
| [KAFKA-7012](https://issues.apache.org/jira/browse/KAFKA-7012) | Performance issue upgrading to kafka 1.0.1 or 1.1 |  Critical | . | rajadayalan perumalsamy | Rajini Sivaram |
| [KAFKA-7104](https://issues.apache.org/jira/browse/KAFKA-7104) | ReplicaFetcher thread may die because of inconsistent log start offset in fetch response |  Major | . | Anna Povzner | Anna Povzner |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6564](https://issues.apache.org/jira/browse/KAFKA-6564) | Fix broken links in Dockerfile |  Minor | . | Andriy Sorokhtey |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6854](https://issues.apache.org/jira/browse/KAFKA-6854) | Log cleaner fails with transaction markers that are deleted during clean |  Blocker | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6917](https://issues.apache.org/jira/browse/KAFKA-6917) | Request handler deadlocks attempting to acquire group metadata lock |  Blocker | core | Rajini Sivaram | Rajini Sivaram |


