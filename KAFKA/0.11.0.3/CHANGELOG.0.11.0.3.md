
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

## Release 0.11.0.3 - 2018-07-02



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6205](https://issues.apache.org/jira/browse/KAFKA-6205) | Have State Stores Restore Before Initializing Toplogy |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-6634](https://issues.apache.org/jira/browse/KAFKA-6634) | Delay initiating the txn on producers until initializeTopology with EOS turned on |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-7009](https://issues.apache.org/jira/browse/KAFKA-7009) | Mute logger for reflections.org at the warn level in system tests |  Critical | KafkaConnect, system tests | Randall Hauch | Randall Hauch |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4827](https://issues.apache.org/jira/browse/KAFKA-4827) | Kafka connect: error with special characters in connector name |  Minor | KafkaConnect | Aymeric Bouvet | Arjun Satish |
| [KAFKA-6360](https://issues.apache.org/jira/browse/KAFKA-6360) | RocksDB segments not removed when store is closed causes re-initialization to fail |  Blocker | streams | Damian Guy | Damian Guy |
| [KAFKA-4767](https://issues.apache.org/jira/browse/KAFKA-4767) | KafkaProducer is not joining its IO thread properly |  Minor | producer | Buğra Gedik | huxihx |
| [KAFKA-6307](https://issues.apache.org/jira/browse/KAFKA-6307) | mBeanName should be removed before returning from JmxReporter#removeAttribute() |  Major | . | Ted Yu | siva santhalingam |
| [KAFKA-6277](https://issues.apache.org/jira/browse/KAFKA-6277) | Make loadClass thread-safe for class loaders of Connect plugins |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-6467](https://issues.apache.org/jira/browse/KAFKA-6467) | Enforce layout of dependencies within a Connect plugin to be deterministic |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-6148](https://issues.apache.org/jira/browse/KAFKA-6148) | ClassCastException in BigQuery connector |  Major | KafkaConnect | Eugene Burd | Konstantine Karantasis |
| [KAFKA-6288](https://issues.apache.org/jira/browse/KAFKA-6288) | Broken symlink interrupts scanning the plugin path |  Major | KafkaConnect | Yeva Byzek | Konstantine Karantasis |
| [KAFKA-6529](https://issues.apache.org/jira/browse/KAFKA-6529) | Broker leaks memory and file descriptors after sudden client disconnects |  Major | network | Graham Campbell |  |
| [KAFKA-6536](https://issues.apache.org/jira/browse/KAFKA-6536) | Streams quickstart pom.xml is missing versions for a bunch of plugins |  Major | streams | Ewen Cheslack-Postava | Yaswanth Kumar |
| [KAFKA-6568](https://issues.apache.org/jira/browse/KAFKA-6568) | LogCleanerManager.doneDeleting() should check the partition state before deleting the in progress partition |  Blocker | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-6661](https://issues.apache.org/jira/browse/KAFKA-6661) | Sink connectors that explicitly 'resume' topic partitions can resume a paused task |  Critical | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-6747](https://issues.apache.org/jira/browse/KAFKA-6747) | kafka-streams Invalid transition attempted from state READY to state ABORTING\_TRANSACTION |  Major | streams | Frederic Arno | Ted Yu |
| [KAFKA-6857](https://issues.apache.org/jira/browse/KAFKA-6857) | LeaderEpochFileCache.endOffsetFor() should check for UNDEFINED\_EPOCH explicitly |  Major | core | Jun Rao | Anna Povzner |
| [KAFKA-6566](https://issues.apache.org/jira/browse/KAFKA-6566) | SourceTask#stop() not called after exception raised in poll() |  Blocker | KafkaConnect | Gunnar Morling | Robert Yokota |
| [KAFKA-6054](https://issues.apache.org/jira/browse/KAFKA-6054) | ERROR "SubscriptionInfo - unable to decode subscription data: version=2" when upgrading from 0.10.0.0 to 0.10.2.1 |  Major | streams | James Cheng | Matthias J. Sax |
| [KAFKA-6925](https://issues.apache.org/jira/browse/KAFKA-6925) | Memory leak in org.apache.kafka.streams.processor.internals.StreamThread$StreamsMetricsThreadImpl |  Major | streams | Marcin Kuthan | John Roesler |
| [KAFKA-6906](https://issues.apache.org/jira/browse/KAFKA-6906) | Kafka Streams does not commit transactions if data is produced via wall-clock punctuation |  Major | streams | Matthias J. Sax | Jagadesh Adireddi |
| [KAFKA-6782](https://issues.apache.org/jira/browse/KAFKA-6782) | GlobalKTable GlobalStateStore never finishes restoring when consuming aborted messages |  Major | streams | Lingxiao WANG | Lingxiao WANG |
| [KAFKA-6711](https://issues.apache.org/jira/browse/KAFKA-6711) | GlobalStateManagerImpl should not write offsets of in-memory stores in checkpoint file |  Major | streams | Cemalettin Koç | Cemalettin Koç |
| [KAFKA-7021](https://issues.apache.org/jira/browse/KAFKA-7021) | Source KTable checkpoint is not correct |  Major | streams | Matthias J. Sax | Guozhang Wang |
| [KAFKA-7058](https://issues.apache.org/jira/browse/KAFKA-7058) | ConnectSchema#equals() broken for array-typed default values |  Major | KafkaConnect | Gunnar Morling | Ewen Cheslack-Postava |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6118](https://issues.apache.org/jira/browse/KAFKA-6118) | Transient failure in kafka.api.SaslScramSslEndToEndAuthorizationTest.testTwoConsumersWithDifferentSaslCredentials |  Major | core, unit tests | Guozhang Wang | Jason Gustafson |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6917](https://issues.apache.org/jira/browse/KAFKA-6917) | Request handler deadlocks attempting to acquire group metadata lock |  Blocker | core | Rajini Sivaram | Rajini Sivaram |


