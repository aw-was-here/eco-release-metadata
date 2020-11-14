
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

## Release 1.1.2 - Unreleased (as of 2020-11-14)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6292](https://issues.apache.org/jira/browse/KAFKA-6292) | KafkaConsumer ran into Unknown error fetching data for topic-partition caused by integer overflow in FileLogInputStream |  Major | log | Terence Yi |  |
| [KAFKA-6290](https://issues.apache.org/jira/browse/KAFKA-6290) | Kafka Connect cast transformation should support logical types |  Major | KafkaConnect | Sudhir Pradhan | Nigel Liang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7285](https://issues.apache.org/jira/browse/KAFKA-7285) | Streams should be more fencing-sensitive during task suspension under EOS |  Major | streams | Guozhang Wang | Matthias J. Sax |
| [KAFKA-7278](https://issues.apache.org/jira/browse/KAFKA-7278) | replaceSegments() should not call asyncDeleteSegment() for segments which have been removed from segments list |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-7414](https://issues.apache.org/jira/browse/KAFKA-7414) | Do not fail broker on out of range offsets in replica fetcher |  Major | replication | Jason Gustafson | Jason Gustafson |
| [KAFKA-7454](https://issues.apache.org/jira/browse/KAFKA-7454) | Use lazy allocation for SslTransportLayer buffers |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6914](https://issues.apache.org/jira/browse/KAFKA-6914) | Kafka Connect - Plugins class should have a constructor that can take in parent ClassLoader |  Minor | KafkaConnect | Sriram KS | Konstantine Karantasis |
| [KAFKA-7198](https://issues.apache.org/jira/browse/KAFKA-7198) | Enhance KafkaStreams start method javadoc |  Major | streams | Bill Bejeck | Kamal Chandraprakash |
| [KAFKA-7671](https://issues.apache.org/jira/browse/KAFKA-7671) | A KStream/GlobalKTable join shouldn't reset the repartition flag |  Major | streams | Andy Bryant | Bill Bejeck |
| [KAFKA-8348](https://issues.apache.org/jira/browse/KAFKA-8348) | Document of kafkaStreams improvement |  Minor | documentation, streams | Lifei Chen | Lifei Chen |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7192](https://issues.apache.org/jira/browse/KAFKA-7192) | State-store can desynchronise with changelog |  Critical | streams | Jon Bates | Guozhang Wang |
| [KAFKA-4950](https://issues.apache.org/jira/browse/KAFKA-4950) | ConcurrentModificationException when iterating over Kafka Metrics |  Minor | consumer | Dumitru Postoronca | Sébastien Launay |
| [KAFKA-7255](https://issues.apache.org/jira/browse/KAFKA-7255) | Timing issue in SimpleAclAuthorizer with concurrent create/update |  Blocker | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7261](https://issues.apache.org/jira/browse/KAFKA-7261) | Request and response total metrics record bytes instead of request count |  Major | metrics | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7164](https://issues.apache.org/jira/browse/KAFKA-7164) | Follower should truncate after every leader epoch change |  Major | . | Jason Gustafson | Bob Barrett |
| [KAFKA-7284](https://issues.apache.org/jira/browse/KAFKA-7284) | Producer getting fenced may cause Streams to shut down |  Critical | streams | John Roesler | John Roesler |
| [KAFKA-7119](https://issues.apache.org/jira/browse/KAFKA-7119) | Intermittent test failure with GSSAPI authentication failure |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5891](https://issues.apache.org/jira/browse/KAFKA-5891) | Cast transformation fails if record schema contains timestamp field |  Major | KafkaConnect | Artem Plotnikov | Maciej Bryński |
| [KAFKA-7128](https://issues.apache.org/jira/browse/KAFKA-7128) | Lagging high watermark can lead to committed data loss after ISR expansion |  Major | . | Jason Gustafson | Anna Povzner |
| [KAFKA-7354](https://issues.apache.org/jira/browse/KAFKA-7354) | Fix IdlePercent and NetworkProcessorAvgIdlePercent metric calculation |  Major | core | huxihx | huxihx |
| [KAFKA-7287](https://issues.apache.org/jira/browse/KAFKA-7287) | Set open ACL permissions for old consumer znode path |  Major | . | Manikumar | Manikumar |
| [KAFKA-7353](https://issues.apache.org/jira/browse/KAFKA-7353) | Connect logs 'this' for anonymous inner classes |  Minor | KafkaConnect | Kevin Lafferty | Kevin Lafferty |
| [KAFKA-7044](https://issues.apache.org/jira/browse/KAFKA-7044) | kafka-consumer-groups.sh NullPointerException describing round robin or sticky assignors |  Major | tools | Terra Field | Anna Povzner |
| [KAFKA-7280](https://issues.apache.org/jira/browse/KAFKA-7280) | ConcurrentModificationException in FetchSessionHandler in heartbeat thread |  Critical | consumer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7216](https://issues.apache.org/jira/browse/KAFKA-7216) | Exception while running kafka-acls.sh from 1.0 env on target Kafka env with 1.1.1 |  Major | admin | Satish Duggana | Manikumar |
| [KAFKA-7453](https://issues.apache.org/jira/browse/KAFKA-7453) | Enable idle expiry of connections which are never selected |  Major | network | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7460](https://issues.apache.org/jira/browse/KAFKA-7460) | Connect Values converter uses incorrect date format string |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-7415](https://issues.apache.org/jira/browse/KAFKA-7415) | OffsetsForLeaderEpoch may incorrectly respond with undefined epoch causing truncation to HW |  Major | replication | Anna Povzner | Jason Gustafson |
| [KAFKA-7476](https://issues.apache.org/jira/browse/KAFKA-7476) | SchemaProjector is not properly handling Date-based logical types |  Major | KafkaConnect | Robert Yokota | Robert Yokota |
| [KAFKA-7467](https://issues.apache.org/jira/browse/KAFKA-7467) | NoSuchElementException is raised because controlBatch is empty |  Major | core | Badai Aqrandista | Bob Barrett |
| [KAFKA-7196](https://issues.apache.org/jira/browse/KAFKA-7196) | Remove heartbeat delayed operation for those removed consumers at the end of each rebalance |  Minor | core, purgatory | Lincong Li | Lincong Li |
| [KAFKA-7534](https://issues.apache.org/jira/browse/KAFKA-7534) | Error during CachingKeyValueStore.flush may not allow RocksDB to close |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-7561](https://issues.apache.org/jira/browse/KAFKA-7561) | Console Consumer - system test fails |  Major | . | Stanislav Kozlovski |  |
| [KAFKA-7576](https://issues.apache.org/jira/browse/KAFKA-7576) | Dynamic update of replica fetcher threads may fail to start/close fetchers |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7607](https://issues.apache.org/jira/browse/KAFKA-7607) | NetworkClientUtils.sendAndReceive can take a long time to return during shutdown |  Major | . | Bob Barrett | Rajini Sivaram |
| [KAFKA-7660](https://issues.apache.org/jira/browse/KAFKA-7660) | Stream Metrics - Memory Analysis |  Minor | metrics, streams | Patrik Kleindl | John Roesler |
| [KAFKA-7678](https://issues.apache.org/jira/browse/KAFKA-7678) | Failed to close producer due to java.lang.NullPointerException |  Minor | streams | Jonathan Santilli | Jonathan Santilli |
| [KAFKA-6388](https://issues.apache.org/jira/browse/KAFKA-6388) | Error while trying to roll a segment that already exists |  Blocker | log | David Hay |  |
| [KAFKA-7443](https://issues.apache.org/jira/browse/KAFKA-7443) | OffsetOutOfRangeException in restoring state store from changelog topic when start offset of local checkpoint is smaller than that of changelog topic |  Major | streams | linyue li | linyue li |
| [KAFKA-7692](https://issues.apache.org/jira/browse/KAFKA-7692) | updateFirstUnstableOffset NPE due to sequenceId overflow in ProducerStateManager.append |  Major | core | Ming Liu |  |
| [KAFKA-7693](https://issues.apache.org/jira/browse/KAFKA-7693) | "IllegalArgumentException: Invalid negative sequence number used" in Kafka Client |  Major | clients | Ming Liu |  |
| [KAFKA-7897](https://issues.apache.org/jira/browse/KAFKA-7897) | Invalid use of epoch cache with old message format versions |  Blocker | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-7401](https://issues.apache.org/jira/browse/KAFKA-7401) | Broker fails to start when recovering a segment from before the log start offset |  Major | log | Bob Barrett | Anna Povzner |
| [KAFKA-8002](https://issues.apache.org/jira/browse/KAFKA-8002) | Replica reassignment to new log dir may not complete if future and current replicas segment files have different base offsets |  Critical | core | Anna Povzner | Bob Barrett |
| [KAFKA-8026](https://issues.apache.org/jira/browse/KAFKA-8026) | Flaky Test RegexSourceIntegrationTest#testRegexMatchesTopicsAWhenDeleted |  Critical | streams, unit tests | Matthias J. Sax | Bill Bejeck |
| [KAFKA-8277](https://issues.apache.org/jira/browse/KAFKA-8277) | Fix NPE in ConnectHeaders |  Major | KafkaConnect | Randall Hauch |  |
| [KAFKA-8418](https://issues.apache.org/jira/browse/KAFKA-8418) | Connect System tests are not waiting for REST resources to be registered |  Blocker | KafkaConnect | Oleksandr Diachenko | Oleksandr Diachenko |
| [KAFKA-8570](https://issues.apache.org/jira/browse/KAFKA-8570) | Downconversion could fail when log contains out of order message formats |  Major | clients | Dhruvil Shah | Dhruvil Shah |
| [KAFKA-6605](https://issues.apache.org/jira/browse/KAFKA-6605) | Flatten SMT does not properly handle fields that are null |  Major | KafkaConnect | Randall Hauch | Michal Borowiecki |
| [KAFKA-7157](https://issues.apache.org/jira/browse/KAFKA-7157) | Connect TimestampConverter SMT doesn't handle null values |  Major | KafkaConnect | Randall Hauch | Valeria Vasylieva |
| [KAFKA-8602](https://issues.apache.org/jira/browse/KAFKA-8602) | StreamThread Dies Because Restore Consumer is not Subscribed to Any Topic |  Critical | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-8550](https://issues.apache.org/jira/browse/KAFKA-8550) | Connector validation fails with aliased converters |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8586](https://issues.apache.org/jira/browse/KAFKA-8586) | Source task producers silently fail to send records |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8523](https://issues.apache.org/jira/browse/KAFKA-8523) | InsertField transformation fails when encountering tombstone event |  Major | KafkaConnect | Gunnar Morling |  |
| [KAFKA-9014](https://issues.apache.org/jira/browse/KAFKA-9014) | AssertionError thrown by SourceRecordWriteCounter when SourceTask.poll returns an empty list |  Major | KafkaConnect | Richard Wise | Konstantine Karantasis |
| [KAFKA-8340](https://issues.apache.org/jira/browse/KAFKA-8340) | ServiceLoader fails when used from isolated plugin path directory |  Major | KafkaConnect | Chris Egerton | Greg Harris |
| [KAFKA-8819](https://issues.apache.org/jira/browse/KAFKA-8819) | Plugin path for converters not working as intended |  Major | KafkaConnect | Magesh kumar Nandakumar | Greg Harris |
| [KAFKA-9057](https://issues.apache.org/jira/browse/KAFKA-9057) | Backport KAFKA-8819 and KAFKA-8340 to 1.1 and 1.0 branches |  Critical | KafkaConnect | Randall Hauch | Greg Harris |
| [KAFKA-1714](https://issues.apache.org/jira/browse/KAFKA-1714) | more better bootstrapping of the gradle-wrapper.jar |  Major | build | Joe Stein | Grant Henke |
| [KAFKA-9254](https://issues.apache.org/jira/browse/KAFKA-9254) | Updating Kafka Broker configuration dynamically twice reverts log configuration to default |  Critical | config, log, replication | fenghong | huxihx |
| [KAFKA-9601](https://issues.apache.org/jira/browse/KAFKA-9601) | Workers log raw connector configs, including values |  Critical | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-5972](https://issues.apache.org/jira/browse/KAFKA-5972) | Flatten SMT does not work with null values |  Minor | KafkaConnect | Tomas Zuklys | siva santhalingam |
| [KAFKA-9707](https://issues.apache.org/jira/browse/KAFKA-9707) | InsertField.Key transformation should apply to tombstone records |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-8011](https://issues.apache.org/jira/browse/KAFKA-8011) | Flaky Test RegexSourceIntegrationTest#testRegexMatchesTopicsAWhenCreated |  Blocker | streams | Bill Bejeck | Matthias J. Sax |
| [KAFKA-9763](https://issues.apache.org/jira/browse/KAFKA-9763) | Recent changes to Connect's InsertField will fail to inject field on key of tombstone record |  Major | KafkaConnect | Randall Hauch | Randall Hauch |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7299](https://issues.apache.org/jira/browse/KAFKA-7299) | batch LeaderAndIsr requests during auto preferred leader election |  Major | core | Jun Rao | huxihx |


