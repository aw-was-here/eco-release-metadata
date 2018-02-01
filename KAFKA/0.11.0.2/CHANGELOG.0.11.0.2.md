
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

## Release 0.11.0.2 - 2017-11-16



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6280](https://issues.apache.org/jira/browse/KAFKA-6280) | Allow for additional archive types to be loaded from plugin.path in Connect |  Minor | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5986](https://issues.apache.org/jira/browse/KAFKA-5986) | Streams State Restoration never completes when logging is disabled |  Critical | . | Damian Guy | Damian Guy |
| [KAFKA-5967](https://issues.apache.org/jira/browse/KAFKA-5967) | Ineffective check of negative value in CompositeReadOnlyKeyValueStore#approximateNumEntries() |  Minor | streams | Ted Yu | siva santhalingam |
| [KAFKA-6003](https://issues.apache.org/jira/browse/KAFKA-6003) | Replication Fetcher thread for a partition with no data fails to start |  Blocker | replication | Stanislav Chizhov | Apurva Mehta |
| [KAFKA-6030](https://issues.apache.org/jira/browse/KAFKA-6030) | Integer overflow in log cleaner cleanable ratio computation |  Major | . | Jason Gustafson | Xin Li |
| [KAFKA-6026](https://issues.apache.org/jira/browse/KAFKA-6026) | KafkaFuture timeout fails to fire if a narrow race condition is hit |  Blocker | admin | Bart De Vylder |  |
| [KAFKA-6087](https://issues.apache.org/jira/browse/KAFKA-6087) | Scanning plugin.path needs to support relative symlinks |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-5970](https://issues.apache.org/jira/browse/KAFKA-5970) | Deadlock due to locking of DelayedProduce and group |  Blocker | clients | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6042](https://issues.apache.org/jira/browse/KAFKA-6042) | Kafka Request Handler deadlocks and brings down the cluster. |  Blocker | . | Ben Corlett | Rajini Sivaram |
| [KAFKA-5140](https://issues.apache.org/jira/browse/KAFKA-5140) | Flaky ResetIntegrationTest |  Major | streams, unit tests | Matthias J. Sax | Guozhang Wang |
| [KAFKA-6116](https://issues.apache.org/jira/browse/KAFKA-6116) | Major performance issue due to excessive logging during leader election |  Blocker | controller | Ismael Juma | Onur Karaman |
| [KAFKA-6131](https://issues.apache.org/jira/browse/KAFKA-6131) | Transaction markers are sometimes discarded if txns complete concurrently |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6134](https://issues.apache.org/jira/browse/KAFKA-6134) | High memory usage on controller during partition reassignment |  Critical | controller | Jason Gustafson | Jason Gustafson |
| [KAFKA-6119](https://issues.apache.org/jira/browse/KAFKA-6119) | Silent Data Loss in Kafka011 Transactional Producer |  Blocker | core, producer | Gary Y. | Apurva Mehta |
| [KAFKA-6179](https://issues.apache.org/jira/browse/KAFKA-6179) | RecordQueue.clear() does not clear MinTimestampTracker's maintained list |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-6190](https://issues.apache.org/jira/browse/KAFKA-6190) | GlobalKTable never finishes restoring when consuming transactional messages |  Blocker | streams | Alex Good | Alex Good |
| [KAFKA-5721](https://issues.apache.org/jira/browse/KAFKA-5721) | Kafka broker stops after network failure |  Major | . | Val Feron |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5725](https://issues.apache.org/jira/browse/KAFKA-5725) | Additional failure testing for streams with bouncing brokers |  Major | streams | Eno Thereska | Eno Thereska |


