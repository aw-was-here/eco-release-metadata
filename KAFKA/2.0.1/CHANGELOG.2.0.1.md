
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

## Release 2.0.1 - 2018-11-09



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7126](https://issues.apache.org/jira/browse/KAFKA-7126) | Reduce number of rebalance for large consumer groups after a topic is created |  Major | . | Dong Lin | Jon Lee |
| [KAFKA-7285](https://issues.apache.org/jira/browse/KAFKA-7285) | Streams should be more fencing-sensitive during task suspension under EOS |  Major | streams | Guozhang Wang | Matthias J. Sax |
| [KAFKA-7278](https://issues.apache.org/jira/browse/KAFKA-7278) | replaceSegments() should not call asyncDeleteSegment() for segments which have been removed from segments list |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-7414](https://issues.apache.org/jira/browse/KAFKA-7414) | Do not fail broker on out of range offsets in replica fetcher |  Major | replication | Jason Gustafson | Jason Gustafson |
| [KAFKA-7454](https://issues.apache.org/jira/browse/KAFKA-7454) | Use lazy allocation for SslTransportLayer buffers |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6914](https://issues.apache.org/jira/browse/KAFKA-6914) | Kafka Connect - Plugins class should have a constructor that can take in parent ClassLoader |  Minor | KafkaConnect | Sriram KS | Konstantine Karantasis |
| [KAFKA-7198](https://issues.apache.org/jira/browse/KAFKA-7198) | Enhance KafkaStreams start method javadoc |  Major | streams | Bill Bejeck | Kamal Chandraprakash |
| [KAFKA-7131](https://issues.apache.org/jira/browse/KAFKA-7131) | Update release script to generate announcement email text |  Minor | . | Matthias J. Sax | bibin sebastian |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7144](https://issues.apache.org/jira/browse/KAFKA-7144) | Kafka Streams doesn't properly balance partition assignment |  Major | streams | James Cheng | Bill Bejeck |
| [KAFKA-7192](https://issues.apache.org/jira/browse/KAFKA-7192) | State-store can desynchronise with changelog |  Critical | streams | Jon Bates | Guozhang Wang |
| [KAFKA-7180](https://issues.apache.org/jira/browse/KAFKA-7180) | In testHWCheckpointWithFailuresSingleLogSegment, wait until server1 has joined the ISR before shutting down server2 |  Minor | . | Lucas Wang | Lucas Wang |
| [KAFKA-6648](https://issues.apache.org/jira/browse/KAFKA-6648) | Fetcher.getTopicMetadata() should return all partitions for each requested topic |  Major | clients | radai rosenblatt | radai rosenblatt |
| [KAFKA-7250](https://issues.apache.org/jira/browse/KAFKA-7250) | Kafka-Streams-Scala DSL transform shares transformer instance |  Major | streams | Michal | Michal Dziemianko |
| [KAFKA-7225](https://issues.apache.org/jira/browse/KAFKA-7225) | Kafka Connect ConfigProvider not invoked before validation |  Minor | KafkaConnect | Nacho Munoz | Robert Yokota |
| [KAFKA-7158](https://issues.apache.org/jira/browse/KAFKA-7158) | Duplicates when searching kafka stream state store with caching |  Major | streams | Christian Henry | John Roesler |
| [KAFKA-4950](https://issues.apache.org/jira/browse/KAFKA-4950) | ConcurrentModificationException when iterating over Kafka Metrics |  Minor | consumer | Dumitru Postoronca | Sébastien Launay |
| [KAFKA-7255](https://issues.apache.org/jira/browse/KAFKA-7255) | Timing issue in SimpleAclAuthorizer with concurrent create/update |  Blocker | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7261](https://issues.apache.org/jira/browse/KAFKA-7261) | Request and response total metrics record bytes instead of request count |  Major | metrics | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7164](https://issues.apache.org/jira/browse/KAFKA-7164) | Follower should truncate after every leader epoch change |  Major | . | Jason Gustafson | Bob Barrett |
| [KAFKA-7284](https://issues.apache.org/jira/browse/KAFKA-7284) | Producer getting fenced may cause Streams to shut down |  Critical | streams | John Roesler | John Roesler |
| [KAFKA-7119](https://issues.apache.org/jira/browse/KAFKA-7119) | Intermittent test failure with GSSAPI authentication failure |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7296](https://issues.apache.org/jira/browse/KAFKA-7296) | Producer should handle COORDINATOR\_LOADING error in TxnOffsetCommit |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-7298](https://issues.apache.org/jira/browse/KAFKA-7298) | Concurrent DeleteRecords can lead to fatal OutOfSequence error in producer |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-5891](https://issues.apache.org/jira/browse/KAFKA-5891) | Cast transformation fails if record schema contains timestamp field |  Major | KafkaConnect | Artem Plotnikov | Maciej Bryński |
| [KAFKA-7301](https://issues.apache.org/jira/browse/KAFKA-7301) | KTable to KTable join invocation does not resolve in Scala DSL |  Major | streams | Michal | Joan Goyeau |
| [KAFKA-7128](https://issues.apache.org/jira/browse/KAFKA-7128) | Lagging high watermark can lead to committed data loss after ISR expansion |  Major | . | Jason Gustafson | Anna Povzner |
| [KAFKA-7242](https://issues.apache.org/jira/browse/KAFKA-7242) | Externalized secrets are revealed in task configuration |  Major | . | Bahdan Siamionau | Robert Yokota |
| [KAFKA-7354](https://issues.apache.org/jira/browse/KAFKA-7354) | Fix IdlePercent and NetworkProcessorAvgIdlePercent metric calculation |  Major | core | huxihx | huxihx |
| [KAFKA-7287](https://issues.apache.org/jira/browse/KAFKA-7287) | Set open ACL permissions for old consumer znode path |  Major | . | Manikumar | Manikumar |
| [KAFKA-7369](https://issues.apache.org/jira/browse/KAFKA-7369) | Retry when possible in AdminClient.listConsumerGroups |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-7353](https://issues.apache.org/jira/browse/KAFKA-7353) | Connect logs 'this' for anonymous inner classes |  Minor | KafkaConnect | Kevin Lafferty | Kevin Lafferty |
| [KAFKA-7385](https://issues.apache.org/jira/browse/KAFKA-7385) | Log cleaner crashes when empty batches are retained with idempotent or transactional producers |  Major | . | Dhruvil Shah | Dhruvil Shah |
| [KAFKA-7286](https://issues.apache.org/jira/browse/KAFKA-7286) | Loading offsets and group metadata hangs with large group metadata records |  Minor | . | Flavien Raynaud | Flavien Raynaud |
| [KAFKA-7044](https://issues.apache.org/jira/browse/KAFKA-7044) | kafka-consumer-groups.sh NullPointerException describing round robin or sticky assignors |  Major | tools | Terra Field | Anna Povzner |
| [KAFKA-7386](https://issues.apache.org/jira/browse/KAFKA-7386) | Streams Scala wrapper should not cache serdes |  Major | streams | John Roesler | John Roesler |
| [KAFKA-7280](https://issues.apache.org/jira/browse/KAFKA-7280) | ConcurrentModificationException in FetchSessionHandler in heartbeat thread |  Critical | consumer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7316](https://issues.apache.org/jira/browse/KAFKA-7316) | Use of filter method in KTable.scala may result in StackOverflowError |  Major | streams | Ted Yu | Joan Goyeau |
| [KAFKA-7216](https://issues.apache.org/jira/browse/KAFKA-7216) | Exception while running kafka-acls.sh from 1.0 env on target Kafka env with 1.1.1 |  Major | admin | Satish Duggana | Manikumar |
| [KAFKA-7453](https://issues.apache.org/jira/browse/KAFKA-7453) | Enable idle expiry of connections which are never selected |  Major | network | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7434](https://issues.apache.org/jira/browse/KAFKA-7434) | DeadLetterQueueReporter throws NPE if transform throws NPE |  Major | KafkaConnect | Michal Borowiecki | Michal Borowiecki |
| [KAFKA-7460](https://issues.apache.org/jira/browse/KAFKA-7460) | Connect Values converter uses incorrect date format string |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-7459](https://issues.apache.org/jira/browse/KAFKA-7459) | Concurrency bug in updating RequestsPerSec metric |  Critical | . | Zhanxiang (Patrick) Huang | Zhanxiang (Patrick) Huang |
| [KAFKA-7415](https://issues.apache.org/jira/browse/KAFKA-7415) | OffsetsForLeaderEpoch may incorrectly respond with undefined epoch causing truncation to HW |  Major | replication | Anna Povzner | Jason Gustafson |
| [KAFKA-7476](https://issues.apache.org/jira/browse/KAFKA-7476) | SchemaProjector is not properly handling Date-based logical types |  Major | KafkaConnect | Robert Yokota | Robert Yokota |
| [KAFKA-7467](https://issues.apache.org/jira/browse/KAFKA-7467) | NoSuchElementException is raised because controlBatch is empty |  Major | core | Badai Aqrandista | Bob Barrett |
| [KAFKA-7196](https://issues.apache.org/jira/browse/KAFKA-7196) | Remove heartbeat delayed operation for those removed consumers at the end of each rebalance |  Minor | core, purgatory | Lincong Li | Lincong Li |
| [KAFKA-7464](https://issues.apache.org/jira/browse/KAFKA-7464) | Fail to shutdown ReplicaManager during broker cleaned shutdown |  Critical | . | Zhanxiang (Patrick) Huang | Zhanxiang (Patrick) Huang |
| [KAFKA-7519](https://issues.apache.org/jira/browse/KAFKA-7519) | Transactional Ids Left in Pending State by TransactionStateManager During Transactional Id Expiration Are Unusable |  Blocker | core, producer | Bridger Howell | Bridger Howell |
| [KAFKA-7535](https://issues.apache.org/jira/browse/KAFKA-7535) | KafkaConsumer doesn't report records-lag if isolation.level is read\_committed |  Major | clients | Alexey Vakhrenev | lambdaliu |
| [KAFKA-7231](https://issues.apache.org/jira/browse/KAFKA-7231) | NetworkClient.newClientRequest() ignores custom request timeout in favor of the default |  Minor | clients | Ron Dagostino | Jason Gustafson |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7299](https://issues.apache.org/jira/browse/KAFKA-7299) | batch LeaderAndIsr requests during auto preferred leader election |  Major | core | Jun Rao | huxihx |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7228](https://issues.apache.org/jira/browse/KAFKA-7228) | DeadLetterQueue throws a NullPointerException |  Major | KafkaConnect | Arjun Satish | Arjun Satish |


