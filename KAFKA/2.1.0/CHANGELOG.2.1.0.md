
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

## Release 2.1.0 - 2018-11-20



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7027](https://issues.apache.org/jira/browse/KAFKA-7027) | Overloaded StreamsBuilder Build Method to Accept java.util.Properties |  Major | streams | Bill Bejeck | Bill Bejeck |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7009](https://issues.apache.org/jira/browse/KAFKA-7009) | Mute logger for reflections.org at the warn level in system tests |  Critical | KafkaConnect, system tests | Randall Hauch | Randall Hauch |
| [KAFKA-6978](https://issues.apache.org/jira/browse/KAFKA-6978) | Make Streams Window retention time strict |  Major | streams | John Roesler | John Roesler |
| [KAFKA-6591](https://issues.apache.org/jira/browse/KAFKA-6591) | Move check for super user in SimpleAclProvider before ACL evaluation |  Minor | core, security | Sönke Liebau | Sönke Liebau |
| [KAFKA-6986](https://issues.apache.org/jira/browse/KAFKA-6986) | Export Admin Client metrics through Stream Threads |  Minor | streams | Boyang Chen | Yishun Guan |
| [KAFKA-7101](https://issues.apache.org/jira/browse/KAFKA-7101) | Session Window store should set topic policy \`compact,cleanup\` |  Major | streams | Matthias J. Sax | Guozhang Wang |
| [KAFKA-6884](https://issues.apache.org/jira/browse/KAFKA-6884) | ConsumerGroupCommand should use new AdminClient |  Major | . | Jason Gustafson | Attila Sasvári |
| [KAFKA-6437](https://issues.apache.org/jira/browse/KAFKA-6437) | Streams does not warn about missing input topics, but hangs |  Minor | streams | Chris Schwarzfischer | Zhihong Yu |
| [KAFKA-7152](https://issues.apache.org/jira/browse/KAFKA-7152) | replica should be in-sync if its LEO equals leader's LEO |  Major | . | Dong Lin | Zhanxiang (Patrick) Huang |
| [KAFKA-5886](https://issues.apache.org/jira/browse/KAFKA-5886) | Introduce delivery.timeout.ms producer config (KIP-91) |  Major | producer | Sumant Tambe | Yu Yang |
| [KAFKA-7126](https://issues.apache.org/jira/browse/KAFKA-7126) | Reduce number of rebalance for large consumer groups after a topic is created |  Major | . | Dong Lin | Jon Lee |
| [KAFKA-6999](https://issues.apache.org/jira/browse/KAFKA-6999) | Document read-write lock usage of caching enabled stores |  Minor | streams | Matthias J. Sax | Dongjin Lee |
| [KAFKA-7161](https://issues.apache.org/jira/browse/KAFKA-7161) | KTable Reduce should check for invalid conditions |  Major | . | John Roesler | John Roesler |
| [KAFKA-5928](https://issues.apache.org/jira/browse/KAFKA-5928) | Avoid redundant requests to zookeeper when reassign topic partition |  Major | admin | Genmao Yu | Genmao Yu |
| [KAFKA-7207](https://issues.apache.org/jira/browse/KAFKA-7207) | Make rate & total metrics documentation consistent |  Trivial | documentation | Kevin Lu | Kevin Lu |
| [KAFKA-6432](https://issues.apache.org/jira/browse/KAFKA-6432) | Lookup indices may cause unnecessary page fault |  Major | core, log | Ying Zheng | Ying Zheng |
| [KAFKA-6751](https://issues.apache.org/jira/browse/KAFKA-6751) | Make max.connections.per.ip.overrides a dynamic config |  Major | . | Jason Gustafson | Manikumar |
| [KAFKA-7147](https://issues.apache.org/jira/browse/KAFKA-7147) | Allow kafka-reassign-partitions.sh and kafka-log-dirs.sh to take admin client property file |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-7169](https://issues.apache.org/jira/browse/KAFKA-7169) | Add support for Custom SASL extensions in OAuth authentication |  Minor | . | Stanislav Kozlovski | Stanislav Kozlovski |
| [KAFKA-7222](https://issues.apache.org/jira/browse/KAFKA-7222) | KIP-328: Add Window Grace Period (and deprecate Window Retention) |  Major | streams | John Roesler | John Roesler |
| [KAFKA-7019](https://issues.apache.org/jira/browse/KAFKA-7019) | Reduction the contention between metadata update and metadata read operation |  Major | core | Dong Lin | Radai Rosenblatt |
| [KAFKA-7285](https://issues.apache.org/jira/browse/KAFKA-7285) | Streams should be more fencing-sensitive during task suspension under EOS |  Major | streams | Guozhang Wang | Matthias J. Sax |
| [KAFKA-6998](https://issues.apache.org/jira/browse/KAFKA-6998) | Remove caching wrapper stores if cache-size is configured to zero bytes |  Major | streams | Matthias J. Sax | Guozhang Wang |
| [KAFKA-7210](https://issues.apache.org/jira/browse/KAFKA-7210) | Add system test for log compaction |  Major | . | Manikumar | Manikumar |
| [KAFKA-7278](https://issues.apache.org/jira/browse/KAFKA-7278) | replaceSegments() should not call asyncDeleteSegment() for segments which have been removed from segments list |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-6753](https://issues.apache.org/jira/browse/KAFKA-6753) | Speed up event processing on the controller |  Minor | . | Lucas Wang | Lucas Wang |
| [KAFKA-7269](https://issues.apache.org/jira/browse/KAFKA-7269) | KStream.merge is not documented |  Major | documentation, streams | John Roesler | Luca Pette |
| [KAFKA-7326](https://issues.apache.org/jira/browse/KAFKA-7326) | Let KStream.print() to flush on each printed line |  Major | streams | Guozhang Wang | huxihx |
| [KAFKA-7211](https://issues.apache.org/jira/browse/KAFKA-7211) | MM should handle timeouts in commitSync |  Major | . | Jason Gustafson | huxihx |
| [KAFKA-7117](https://issues.apache.org/jira/browse/KAFKA-7117) | Allow AclCommand to use AdminClient API |  Major | . | Manikumar | Manikumar |
| [KAFKA-4932](https://issues.apache.org/jira/browse/KAFKA-4932) | Add UUID Serde |  Minor | clients, streams | Jeff Klukas | Brandon Kirchner |
| [KAFKA-7396](https://issues.apache.org/jira/browse/KAFKA-7396) | KIP-365: Materialized, Serialized, Joined, Consumed and Produced with implicit Serde |  Major | streams | Joan Goyeau | Joan Goyeau |
| [KAFKA-7394](https://issues.apache.org/jira/browse/KAFKA-7394) | Allow OffsetsForLeaderEpoch requests with topic describe ACL (KIP-320) |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-6926](https://issues.apache.org/jira/browse/KAFKA-6926) | Reduce NPath exceptions in Connect |  Major | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-7414](https://issues.apache.org/jira/browse/KAFKA-7414) | Do not fail broker on out of range offsets in replica fetcher |  Major | replication | Jason Gustafson | Jason Gustafson |
| [KAFKA-7332](https://issues.apache.org/jira/browse/KAFKA-7332) | Improve error message when trying to produce message without key for compacted topic |  Trivial | producer | Patrik Kleindl | Manikumar |
| [KAFKA-7399](https://issues.apache.org/jira/browse/KAFKA-7399) | FunctionConversions in Streams-Scala should be private |  Minor | streams | John Roesler | Joan Goyeau |
| [KAFKA-6923](https://issues.apache.org/jira/browse/KAFKA-6923) | Consolidate ExtendedSerializer/Serializer and ExtendedDeserializer/Deserializer |  Major | clients | Ismael Juma | Viktor Somogyi-Vass |
| [KAFKA-7430](https://issues.apache.org/jira/browse/KAFKA-7430) | Improve Transformer interface JavaDoc |  Trivial | streams | Eugen Feller | Eugen Feller |
| [KAFKA-6950](https://issues.apache.org/jira/browse/KAFKA-6950) | Add mechanism to delay response to failed client authentication |  Major | core | Dhruvil Shah | Dhruvil Shah |
| [KAFKA-7437](https://issues.apache.org/jira/browse/KAFKA-7437) | Store leader epoch in offset commit metadata |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-7454](https://issues.apache.org/jira/browse/KAFKA-7454) | Use lazy allocation for SslTransportLayer buffers |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6684](https://issues.apache.org/jira/browse/KAFKA-6684) | Support casting values with bytes schema to string |  Critical | KafkaConnect | Amit Sela |  |
| [KAFKA-7456](https://issues.apache.org/jira/browse/KAFKA-7456) | Serde Inheritance in Streams DSL |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-7406](https://issues.apache.org/jira/browse/KAFKA-7406) | Naming Join and Grouping Repartition Topics |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-6761](https://issues.apache.org/jira/browse/KAFKA-6761) | Reduce Kafka Streams Footprint |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-7429](https://issues.apache.org/jira/browse/KAFKA-7429) | Enable dynamic key/truststore update with same filename/password |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7277](https://issues.apache.org/jira/browse/KAFKA-7277) | Migrate Streams API to Duration instead of longMs times |  Major | streams | John Roesler | Nikolay Izhikov |
| [KAFKA-7441](https://issues.apache.org/jira/browse/KAFKA-7441) | Allow LogCleanerManager.resumeCleaning() to be used concurrently |  Blocker | . | xiongqi wu | xiongqi wu |
| [KAFKA-7266](https://issues.apache.org/jira/browse/KAFKA-7266) | Fix MetricsTest test flakiness |  Minor | . | Stanislav Kozlovski | Stanislav Kozlovski |
| [KAFKA-6914](https://issues.apache.org/jira/browse/KAFKA-6914) | Kafka Connect - Plugins class should have a constructor that can take in parent ClassLoader |  Minor | KafkaConnect | Sriram KS | Konstantine Karantasis |
| [KAFKA-7395](https://issues.apache.org/jira/browse/KAFKA-7395) | Add fencing to replication protocol (KIP-320) |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-6880](https://issues.apache.org/jira/browse/KAFKA-6880) | Zombie replicas must be fenced |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-7215](https://issues.apache.org/jira/browse/KAFKA-7215) | Improve LogCleaner behavior on error |  Minor | . | Stanislav Kozlovski | Stanislav Kozlovski |
| [KAFKA-7198](https://issues.apache.org/jira/browse/KAFKA-7198) | Enhance KafkaStreams start method javadoc |  Major | streams | Bill Bejeck | Kamal Chandraprakash |
| [KAFKA-7477](https://issues.apache.org/jira/browse/KAFKA-7477) | Improve Streams close timeout semantics |  Minor | streams | John Roesler | Nikolay Izhikov |
| [KAFKA-4514](https://issues.apache.org/jira/browse/KAFKA-4514) | Add Codec for ZStandard Compression |  Major | compression | Thomas Graves | Dongjin Lee |
| [KAFKA-7475](https://issues.apache.org/jira/browse/KAFKA-7475) | print the actual cluster bootstrap address on authentication failures |  Major | . | radai rosenblatt | radai rosenblatt |
| [KAFKA-6863](https://issues.apache.org/jira/browse/KAFKA-6863) | Kafka clients should try to use multiple DNS resolved IP addresses if the first one fails |  Major | clients | Edoardo Comar | Edoardo Comar |
| [KAFKA-7264](https://issues.apache.org/jira/browse/KAFKA-7264) | Initial Kafka support for Java 11 |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-6195](https://issues.apache.org/jira/browse/KAFKA-6195) | DNS alias support for secured connections |  Major | clients | Jonathan Skrzypek |  |
| [KAFKA-7131](https://issues.apache.org/jira/browse/KAFKA-7131) | Update release script to generate announcement email text |  Minor | . | Matthias J. Sax | bibin sebastian |
| [KAFKA-7559](https://issues.apache.org/jira/browse/KAFKA-7559) | ConnectStandaloneFileTest system tests do not pass |  Major | . | Stanislav Kozlovski | Randall Hauch |
| [KAFKA-7313](https://issues.apache.org/jira/browse/KAFKA-7313) | StopReplicaRequest should attempt to remove future replica for the partition only if future replica exists |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-4325](https://issues.apache.org/jira/browse/KAFKA-4325) | Improve processing of late records for window operations |  Minor | streams | Matthias J. Sax |  |
| [KAFKA-7223](https://issues.apache.org/jira/browse/KAFKA-7223) | KIP-328: Add in-memory Suppression |  Major | streams | John Roesler | John Roesler |
| [KAFKA-7142](https://issues.apache.org/jira/browse/KAFKA-7142) | Rebalancing large consumer group can block the coordinator broker for several seconds |  Major | . | Ying Zheng | Ying Zheng |
| [KAFKA-7201](https://issues.apache.org/jira/browse/KAFKA-7201) | Optimize repartition operations |  Major | streams | Bill Bejeck | Bill Bejeck |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6991](https://issues.apache.org/jira/browse/KAFKA-6991) | Connect Rest Extension Plugin issue with Class Loader |  Major | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |
| [KAFKA-7043](https://issues.apache.org/jira/browse/KAFKA-7043) | Connect isolation whitelist does not include new primitive converters (KIP-305) |  Blocker | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-7031](https://issues.apache.org/jira/browse/KAFKA-7031) | Kafka Connect API module depends on Jersey |  Blocker | KafkaConnect | Randall Hauch | Magesh kumar Nandakumar |
| [KAFKA-7056](https://issues.apache.org/jira/browse/KAFKA-7056) | Connect's new numeric converters should be in a different package |  Critical | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-7047](https://issues.apache.org/jira/browse/KAFKA-7047) | Connect isolation whitelist does not include SimpleHeaderConverter |  Critical | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-7058](https://issues.apache.org/jira/browse/KAFKA-7058) | ConnectSchema#equals() broken for array-typed default values |  Major | KafkaConnect | Gunnar Morling | Ewen Cheslack-Postava |
| [KAFKA-7068](https://issues.apache.org/jira/browse/KAFKA-7068) | ConfigTransformer doesn't handle null values |  Blocker | KafkaConnect | Magesh kumar Nandakumar |  |
| [KAFKA-7072](https://issues.apache.org/jira/browse/KAFKA-7072) | Kafka Streams may drop rocksb window segments before they expire |  Minor | streams | John Roesler | John Roesler |
| [KAFKA-4682](https://issues.apache.org/jira/browse/KAFKA-4682) | Committed offsets should not be deleted if a consumer is still active (KIP-211) |  Major | . | James Cheng | Vahid Hashemian |
| [KAFKA-7097](https://issues.apache.org/jira/browse/KAFKA-7097) | VerifiableProducer does not work properly with --message-create-time argument |  Major | core | Jasper Knulst | Zhihong Yu |
| [KAFKA-7080](https://issues.apache.org/jira/browse/KAFKA-7080) | WindowStoreBuilder incorrectly initializes CachingWindowStore |  Major | streams | John Roesler | John Roesler |
| [KAFKA-7103](https://issues.apache.org/jira/browse/KAFKA-7103) | Use bulkloading for RocksDBSegmentedBytesStore during init |  Major | streams | Liquan Pei | Liquan Pei |
| [KAFKA-5098](https://issues.apache.org/jira/browse/KAFKA-5098) | KafkaProducer.send() blocks and generates TimeoutException if topic name has illegal char |  Major | producer | Jeff Larsen | Ahmed Al-Mehdi |
| [KAFKA-4994](https://issues.apache.org/jira/browse/KAFKA-4994) | Fix findbugs warning about OffsetStorageWriter#currentFlushId |  Major | . | Colin McCabe |  |
| [KAFKA-1420](https://issues.apache.org/jira/browse/KAFKA-1420) | Replace AdminUtils.createOrUpdateTopicPartitionAssignmentPathInZK with TestUtils.createTopic in unit tests |  Major | . | Guozhang Wang | Jonathan Natkins |
| [KAFKA-5037](https://issues.apache.org/jira/browse/KAFKA-5037) | Infinite loop if all input topics are unknown at startup |  Major | streams | Matthias J. Sax | Zhihong Yu |
| [KAFKA-6587](https://issues.apache.org/jira/browse/KAFKA-6587) | Kafka Streams hangs when not able to access internal topics |  Minor | security, streams | Chris Medved | Zhihong Yu |
| [KAFKA-7141](https://issues.apache.org/jira/browse/KAFKA-7141) | kafka-consumer-group doesn't describe existing group |  Major | admin | Bohdana Panchenko | huxihx |
| [KAFKA-7144](https://issues.apache.org/jira/browse/KAFKA-7144) | Kafka Streams doesn't properly balance partition assignment |  Major | streams | James Cheng | Bill Bejeck |
| [KAFKA-7192](https://issues.apache.org/jira/browse/KAFKA-7192) | State-store can desynchronise with changelog |  Critical | streams | Jon Bates | Guozhang Wang |
| [KAFKA-7180](https://issues.apache.org/jira/browse/KAFKA-7180) | In testHWCheckpointWithFailuresSingleLogSegment, wait until server1 has joined the ISR before shutting down server2 |  Minor | . | Lucas Wang | Lucas Wang |
| [KAFKA-6648](https://issues.apache.org/jira/browse/KAFKA-6648) | Fetcher.getTopicMetadata() should return all partitions for each requested topic |  Major | clients | radai rosenblatt | radai rosenblatt |
| [KAFKA-7250](https://issues.apache.org/jira/browse/KAFKA-7250) | Kafka-Streams-Scala DSL transform shares transformer instance |  Major | streams | Michal | Michal Dziemianko |
| [KAFKA-7225](https://issues.apache.org/jira/browse/KAFKA-7225) | Kafka Connect ConfigProvider not invoked before validation |  Minor | KafkaConnect | Nacho Munoz | Robert Yokota |
| [KAFKA-6327](https://issues.apache.org/jira/browse/KAFKA-6327) | IllegalArgumentException in RocksDB when RocksDBException being generated |  Minor | streams | Anthony May |  |
| [KAFKA-7247](https://issues.apache.org/jira/browse/KAFKA-7247) | A link to Apache BookKeeper project is broken |  Trivial | documentation | okumin |  |
| [KAFKA-7158](https://issues.apache.org/jira/browse/KAFKA-7158) | Duplicates when searching kafka stream state store with caching |  Major | streams | Christian Henry | John Roesler |
| [KAFKA-4950](https://issues.apache.org/jira/browse/KAFKA-4950) | ConcurrentModificationException when iterating over Kafka Metrics |  Minor | consumer | Dumitru Postoronca | Sébastien Launay |
| [KAFKA-6966](https://issues.apache.org/jira/browse/KAFKA-6966) | Extend \`TopologyDescription.Sink\` to return \`TopicNameExtractor\` |  Major | streams | Matthias J. Sax | Nishanth Pradeep |
| [KAFKA-7255](https://issues.apache.org/jira/browse/KAFKA-7255) | Timing issue in SimpleAclAuthorizer with concurrent create/update |  Blocker | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7261](https://issues.apache.org/jira/browse/KAFKA-7261) | Request and response total metrics record bytes instead of request count |  Major | metrics | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7164](https://issues.apache.org/jira/browse/KAFKA-7164) | Follower should truncate after every leader epoch change |  Major | . | Jason Gustafson | Bob Barrett |
| [KAFKA-5638](https://issues.apache.org/jira/browse/KAFKA-5638) | Inconsistency in consumer group related ACLs |  Minor | security | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-7284](https://issues.apache.org/jira/browse/KAFKA-7284) | Producer getting fenced may cause Streams to shut down |  Critical | streams | John Roesler | John Roesler |
| [KAFKA-7119](https://issues.apache.org/jira/browse/KAFKA-7119) | Intermittent test failure with GSSAPI authentication failure |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7311](https://issues.apache.org/jira/browse/KAFKA-7311) | Sender should reset next batch expiry time between poll loops |  Major | clients | Rohan Desai | Rohan Desai |
| [KAFKA-7301](https://issues.apache.org/jira/browse/KAFKA-7301) | KTable to KTable join invocation does not resolve in Scala DSL |  Major | streams | Michal | Joan Goyeau |
| [KAFKA-6343](https://issues.apache.org/jira/browse/KAFKA-6343) | OOM as the result of creation of 5k topics |  Major | core | Alex Dunayevsky | Alex Dunayevsky |
| [KAFKA-5975](https://issues.apache.org/jira/browse/KAFKA-5975) | No response when deleting topics and delete.topic.enable=false |  Minor | core | Mario Molina | Mario Molina |
| [KAFKA-7240](https://issues.apache.org/jira/browse/KAFKA-7240) | -total metrics in Streams are incorrect |  Major | metrics, streams | Sam Lendle | Sam Lendle |
| [KAFKA-7347](https://issues.apache.org/jira/browse/KAFKA-7347) | Wrong error code returned for OffsetsForLeaderEpoch from non-replica |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-7128](https://issues.apache.org/jira/browse/KAFKA-7128) | Lagging high watermark can lead to committed data loss after ISR expansion |  Major | . | Jason Gustafson | Anna Povzner |
| [KAFKA-7242](https://issues.apache.org/jira/browse/KAFKA-7242) | Externalized secrets are revealed in task configuration |  Major | . | Bahdan Siamionau | Robert Yokota |
| [KAFKA-7324](https://issues.apache.org/jira/browse/KAFKA-7324) | NPE due to lack of SASLExtensions in SASL/OAUTHBEARER |  Major | clients | Ron Dagostino | Ron Dagostino |
| [KAFKA-7354](https://issues.apache.org/jira/browse/KAFKA-7354) | Fix IdlePercent and NetworkProcessorAvgIdlePercent metric calculation |  Major | core | huxihx | huxihx |
| [KAFKA-7134](https://issues.apache.org/jira/browse/KAFKA-7134) | KafkaLog4jAppender - Appender exceptions are propagated to caller |  Major | clients | venkata praveen | Andras Katona |
| [KAFKA-6859](https://issues.apache.org/jira/browse/KAFKA-6859) | Follower should not send OffsetForLeaderEpoch for undefined leader epochs |  Major | . | Anna Povzner | Stanislav Kozlovski |
| [KAFKA-7287](https://issues.apache.org/jira/browse/KAFKA-7287) | Set open ACL permissions for old consumer znode path |  Major | . | Manikumar | Manikumar |
| [KAFKA-7369](https://issues.apache.org/jira/browse/KAFKA-7369) | Retry when possible in AdminClient.listConsumerGroups |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-7353](https://issues.apache.org/jira/browse/KAFKA-7353) | Connect logs 'this' for anonymous inner classes |  Minor | KafkaConnect | Kevin Lafferty | Kevin Lafferty |
| [KAFKA-7333](https://issues.apache.org/jira/browse/KAFKA-7333) | Protocol changes for KIP-320 |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-7286](https://issues.apache.org/jira/browse/KAFKA-7286) | Loading offsets and group metadata hangs with large group metadata records |  Minor | . | Flavien Raynaud | Flavien Raynaud |
| [KAFKA-7044](https://issues.apache.org/jira/browse/KAFKA-7044) | kafka-consumer-groups.sh NullPointerException describing round robin or sticky assignors |  Major | tools | Terra Field | Anna Povzner |
| [KAFKA-7386](https://issues.apache.org/jira/browse/KAFKA-7386) | Streams Scala wrapper should not cache serdes |  Major | streams | John Roesler | John Roesler |
| [KAFKA-7280](https://issues.apache.org/jira/browse/KAFKA-7280) | ConcurrentModificationException in FetchSessionHandler in heartbeat thread |  Critical | consumer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7316](https://issues.apache.org/jira/browse/KAFKA-7316) | Use of filter method in KTable.scala may result in StackOverflowError |  Major | streams | Ted Yu | Joan Goyeau |
| [KAFKA-5690](https://issues.apache.org/jira/browse/KAFKA-5690) | kafka-acls command should be able to list per principal |  Major | core | Koelli Mungee | Manikumar |
| [KAFKA-7322](https://issues.apache.org/jira/browse/KAFKA-7322) | Fix race condition between log cleaner thread and log retention thread when topic cleanup policy is updated |  Major | log | xiongqi wu | xiongqi wu |
| [KAFKA-7388](https://issues.apache.org/jira/browse/KAFKA-7388) | An equal sign in a property value causes the broker to fail |  Major | . | Andre Araujo |  |
| [KAFKA-7379](https://issues.apache.org/jira/browse/KAFKA-7379) | send.buffer.bytes should be allowed to set -1 in KafkaStreams |  Minor | streams | Badai Aqrandista | Aleksei Izmalkin |
| [KAFKA-7400](https://issues.apache.org/jira/browse/KAFKA-7400) | Compacted topic segments that precede the log start offset are not cleaned up |  Minor | log | Bob Barrett | Bob Barrett |
| [KAFKA-5066](https://issues.apache.org/jira/browse/KAFKA-5066) | KafkaMetricsConfig properties and description notably missing from documentation |  Major | documentation | Ryan P |  |
| [KAFKA-7403](https://issues.apache.org/jira/browse/KAFKA-7403) | Offset commit failure after upgrading brokers past KIP-211/KAFKA-4682 |  Blocker | core | Jon Lee | Vahid Hashemian |
| [KAFKA-7216](https://issues.apache.org/jira/browse/KAFKA-7216) | Exception while running kafka-acls.sh from 1.0 env on target Kafka env with 1.1.1 |  Major | admin | Satish Duggana | Manikumar |
| [KAFKA-7409](https://issues.apache.org/jira/browse/KAFKA-7409) | Validate topic configs prior to topic creation |  Major | . | Jason Gustafson | huxihx |
| [KAFKA-6620](https://issues.apache.org/jira/browse/KAFKA-6620) | Documentation about "exactly\_once" doesn't mention "transaction.state.log.min.isr" |  Major | documentation, streams | Daniel Qian | Dongjin Lee |
| [KAFKA-3514](https://issues.apache.org/jira/browse/KAFKA-3514) | Stream timestamp computation needs some further thoughts |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-7453](https://issues.apache.org/jira/browse/KAFKA-7453) | Enable idle expiry of connections which are never selected |  Major | network | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7434](https://issues.apache.org/jira/browse/KAFKA-7434) | DeadLetterQueueReporter throws NPE if transform throws NPE |  Major | KafkaConnect | Michal Borowiecki | Michal Borowiecki |
| [KAFKA-7460](https://issues.apache.org/jira/browse/KAFKA-7460) | Connect Values converter uses incorrect date format string |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-7459](https://issues.apache.org/jira/browse/KAFKA-7459) | Concurrency bug in updating RequestsPerSec metric |  Critical | . | Zhanxiang (Patrick) Huang | Zhanxiang (Patrick) Huang |
| [KAFKA-6415](https://issues.apache.org/jira/browse/KAFKA-6415) | KafkaLog4jAppender deadlocks when logging from producer network thread |  Major | log | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6123](https://issues.apache.org/jira/browse/KAFKA-6123) | Give client MetricsReporter auto-generated client.id |  Minor | clients, metrics | Kevin Lu | Kevin Lu |
| [KAFKA-7415](https://issues.apache.org/jira/browse/KAFKA-7415) | OffsetsForLeaderEpoch may incorrectly respond with undefined epoch causing truncation to HW |  Major | replication | Anna Povzner | Jason Gustafson |
| [KAFKA-7476](https://issues.apache.org/jira/browse/KAFKA-7476) | SchemaProjector is not properly handling Date-based logical types |  Major | KafkaConnect | Robert Yokota | Robert Yokota |
| [KAFKA-7467](https://issues.apache.org/jira/browse/KAFKA-7467) | NoSuchElementException is raised because controlBatch is empty |  Major | core | Badai Aqrandista | Bob Barrett |
| [KAFKA-7462](https://issues.apache.org/jira/browse/KAFKA-7462) | Kafka brokers cannot provide OAuth without a token |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7366](https://issues.apache.org/jira/browse/KAFKA-7366) | topic level segment.bytes and segment.ms not taking effect immediately |  Major | . | Jun Rao | Manikumar |
| [KAFKA-3097](https://issues.apache.org/jira/browse/KAFKA-3097) | Acls for PrincipalType User are case sensitive |  Major | core | Thomas Graves | Manikumar |
| [KAFKA-7483](https://issues.apache.org/jira/browse/KAFKA-7483) | Streams should allow headers to be passed to Serializer |  Major | streams | Kamal Chandraprakash | Kamal Chandraprakash |
| [KAFKA-7482](https://issues.apache.org/jira/browse/KAFKA-7482) | LeaderAndIsrRequest should be sent to the shutting down broker |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-7485](https://issues.apache.org/jira/browse/KAFKA-7485) | Flaky test \`DyanamicBrokerReconfigurationTest.testTrustStoreAlter\` |  Major | . | Jason Gustafson | Rajini Sivaram |
| [KAFKA-7498](https://issues.apache.org/jira/browse/KAFKA-7498) | common.requests.CreatePartitionsRequest uses clients.admin.NewPartitions |  Major | clients | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7496](https://issues.apache.org/jira/browse/KAFKA-7496) | KafkaAdminClient#describeAcls should handle invalid filters gracefully |  Minor | admin | Colin McCabe | Colin McCabe |
| [KAFKA-7513](https://issues.apache.org/jira/browse/KAFKA-7513) | Flaky test SaslAuthenticatorFailureDelayTest.testInvalidPasswordSaslPlain |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7196](https://issues.apache.org/jira/browse/KAFKA-7196) | Remove heartbeat delayed operation for those removed consumers at the end of each rebalance |  Minor | core, purgatory | Lincong Li | Lincong Li |
| [KAFKA-7505](https://issues.apache.org/jira/browse/KAFKA-7505) | Flaky test: SslTransportLayerTest.testListenerConfigOverride |  Major | . | Ismael Juma | Rajini Sivaram |
| [KAFKA-7464](https://issues.apache.org/jira/browse/KAFKA-7464) | Fail to shutdown ReplicaManager during broker cleaned shutdown |  Critical | . | Zhanxiang (Patrick) Huang | Zhanxiang (Patrick) Huang |
| [KAFKA-7521](https://issues.apache.org/jira/browse/KAFKA-7521) | [kafka-streams-scala\_2.11] Foreach results in StackOverflowError |  Critical | streams | Bogdan Iordache | Joan Goyeau |
| [KAFKA-7501](https://issues.apache.org/jira/browse/KAFKA-7501) | double deallocation of producer batch upon expiration of inflight requests and error response |  Critical | clients | xiongqi wu | xiongqi wu |
| [KAFKA-7519](https://issues.apache.org/jira/browse/KAFKA-7519) | Transactional Ids Left in Pending State by TransactionStateManager During Transactional Id Expiration Are Unusable |  Blocker | core, producer | Bridger Howell | Bridger Howell |
| [KAFKA-7535](https://issues.apache.org/jira/browse/KAFKA-7535) | KafkaConsumer doesn't report records-lag if isolation.level is read\_committed |  Major | clients | Alexey Vakhrenev | lambdaliu |
| [KAFKA-7534](https://issues.apache.org/jira/browse/KAFKA-7534) | Error during CachingKeyValueStore.flush may not allow RocksDB to close |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-7552](https://issues.apache.org/jira/browse/KAFKA-7552) | StatefulProcessorNode tries to connect state store to processor before it is added |  Minor | streams | Adam Bellemare |  |
| [KAFKA-7561](https://issues.apache.org/jira/browse/KAFKA-7561) | Console Consumer - system test fails |  Major | . | Stanislav Kozlovski |  |
| [KAFKA-7579](https://issues.apache.org/jira/browse/KAFKA-7579) | System Test Failure - security\_test.SecurityTest.test\_client\_ssl\_endpoint\_validation\_failure |  Major | . | Stanislav Kozlovski |  |
| [KAFKA-7560](https://issues.apache.org/jira/browse/KAFKA-7560) | PushHttpMetricsReporter should not convert metric value to double |  Blocker | . | Stanislav Kozlovski | Dong Lin |
| [KAFKA-7231](https://issues.apache.org/jira/browse/KAFKA-7231) | NetworkClient.newClientRequest() ignores custom request timeout in favor of the default |  Minor | clients | Ron Dagostino | Jason Gustafson |
| [KAFKA-5784](https://issues.apache.org/jira/browse/KAFKA-5784) | Add a sensor for dropped records in window stores |  Major | streams | Guozhang Wang | siva santhalingam |
| [KAFKA-8208](https://issues.apache.org/jira/browse/KAFKA-8208) | Broken link for out-of-order data in KStreams Core Concepts doc |  Minor | documentation | Michael Drogalis | Bill Bejeck |
| [KAFKA-8210](https://issues.apache.org/jira/browse/KAFKA-8210) | Missing link for KStreams in Streams DSL docs |  Minor | documentation | Michael Drogalis | Bill Bejeck |
| [KAFKA-8209](https://issues.apache.org/jira/browse/KAFKA-8209) | Wrong link for KStreams DSL in Core Concepts doc |  Minor | documentation | Michael Drogalis | Bill Bejeck |
| [KAFKA-8198](https://issues.apache.org/jira/browse/KAFKA-8198) | KStreams testing docs use non-existent method "pipe" |  Minor | documentation, streams | Michael Drogalis | Slim Ouertani |
| [KAFKA-7484](https://issues.apache.org/jira/browse/KAFKA-7484) | Fix test SuppressionDurabilityIntegrationTest.shouldRecoverBufferAfterShutdown() |  Major | streams | Dong Lin | John Roesler |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7299](https://issues.apache.org/jira/browse/KAFKA-7299) | batch LeaderAndIsr requests during auto preferred leader election |  Major | core | Jun Rao | huxihx |
| [KAFKA-7308](https://issues.apache.org/jira/browse/KAFKA-7308) | Fix rat and checkstyle plugins configuration for Java 11 support |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-7309](https://issues.apache.org/jira/browse/KAFKA-7309) | Upgrade Jacoco for Java 11 support |  Major | packaging | Ismael Juma | Ismael Juma |
| [KAFKA-7310](https://issues.apache.org/jira/browse/KAFKA-7310) | Fix SSL tests when running with Java 11 |  Critical | packaging, unit tests | Ismael Juma | Ismael Juma |
| [KAFKA-7338](https://issues.apache.org/jira/browse/KAFKA-7338) | Fix SASL Kerberos tests with Java 11 |  Major | . | Ismael Juma | Rajini Sivaram |
| [KAFKA-6082](https://issues.apache.org/jira/browse/KAFKA-6082) | consider fencing zookeeper updates with controller epoch zkVersion |  Major | . | Onur Karaman | Zhanxiang (Patrick) Huang |
| [KAFKA-7372](https://issues.apache.org/jira/browse/KAFKA-7372) | Upgrade Jetty for preliminary Java 11 and TLS 1.3 support |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-4601](https://issues.apache.org/jira/browse/KAFKA-4601) | Avoid duplicated repartitioning in KStream DSL |  Major | streams | Guozhang Wang |  |
| [KAFKA-7439](https://issues.apache.org/jira/browse/KAFKA-7439) | Replace EasyMock and PowerMock with Mockito in clients module |  Major | . | Ismael Juma | Ismael Juma |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7001](https://issues.apache.org/jira/browse/KAFKA-7001) | Rename errors.allowed.max property in Connect to errors.tolerance |  Minor | KafkaConnect | Arjun Satish | Arjun Satish |
| [KAFKA-7002](https://issues.apache.org/jira/browse/KAFKA-7002) | Allow replication factor to be set via a configuration property for the Connect DLQ topic |  Major | KafkaConnect | Arjun Satish | Arjun Satish |
| [KAFKA-7003](https://issues.apache.org/jira/browse/KAFKA-7003) | Add headers with error context in messages written to the Connect DeadLetterQueue topic |  Major | . | Arjun Satish |  |
| [KAFKA-7177](https://issues.apache.org/jira/browse/KAFKA-7177) | Update 2.0 documentation to reflect changed quota behaviors by KIP-219 |  Minor | documentation | Jon Lee | Jon Lee |
| [KAFKA-7228](https://issues.apache.org/jira/browse/KAFKA-7228) | DeadLetterQueue throws a NullPointerException |  Major | KafkaConnect | Arjun Satish | Arjun Satish |
| [KAFKA-6835](https://issues.apache.org/jira/browse/KAFKA-6835) | Enable topic unclean leader election to be enabled without controller change |  Major | core | Rajini Sivaram | Manikumar |
| [KAFKA-7139](https://issues.apache.org/jira/browse/KAFKA-7139) | Support to exclude the internal topics in kafka-topics.sh command |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-5887](https://issues.apache.org/jira/browse/KAFKA-5887) | Replace findBugs with spotBugs for Java 9+ support |  Major | build | Ismael Juma | Ismael Juma |


