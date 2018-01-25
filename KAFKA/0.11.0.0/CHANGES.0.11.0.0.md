
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

## Release 0.11.0.0 - 2017-06-28



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4864](https://issues.apache.org/jira/browse/KAFKA-4864) | Kafka Secure Migrator tool doesn't secure all the nodes |  Critical | . | Stephane Maarek |  |
| [KAFKA-5289](https://issues.apache.org/jira/browse/KAFKA-5289) | One StopReplicaRequest will caused two Responses |  Critical | core | xuzq | Ismael Juma |
| [KAFKA-3123](https://issues.apache.org/jira/browse/KAFKA-3123) | Follower Broker cannot start if offsets are already out of range |  Critical | core, replication | Soumyajit Sahu | Mickael Maison |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4720](https://issues.apache.org/jira/browse/KAFKA-4720) | Add KStream.peek(ForeachAction\<K,V\>) |  Major | streams | Steven Schlansker | Steven Schlansker |
| [KAFKA-4881](https://issues.apache.org/jira/browse/KAFKA-4881) | Add internal leave.group.on.close config to consumer |  Major | clients | Damian Guy | Damian Guy |
| [KAFKA-4586](https://issues.apache.org/jira/browse/KAFKA-4586) | Add purgeDataBefore() API in AdminClient |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-4208](https://issues.apache.org/jira/browse/KAFKA-4208) | Add Record Headers |  Critical | clients, core | Michael Andre Pearce | Michael Andre Pearce |
| [KAFKA-4923](https://issues.apache.org/jira/browse/KAFKA-4923) | Add Exactly-Once Semantics to Streams |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-4743](https://issues.apache.org/jira/browse/KAFKA-4743) | Add a tool to Reset Consumer Group Offsets |  Major | consumer, core, tools | Jorge Quilcate | Jorge Quilcate |
| [KAFKA-3487](https://issues.apache.org/jira/browse/KAFKA-3487) | KIP-146: Support per-connector/per-task classloaders in Connect |  Critical | KafkaConnect | Ewen Cheslack-Postava | Konstantine Karantasis |
| [KAFKA-5192](https://issues.apache.org/jira/browse/KAFKA-5192) | Range Scan for Windowed State Stores |  Major | streams | Xavier Léauté | Xavier Léauté |
| [KAFKA-5059](https://issues.apache.org/jira/browse/KAFKA-5059) | Implement Transactional Coordinator |  Major | core | Damian Guy | Damian Guy |
| [KAFKA-4815](https://issues.apache.org/jira/browse/KAFKA-4815) | Idempotent/transactional Producer (KIP-98) |  Major | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-2590](https://issues.apache.org/jira/browse/KAFKA-2590) | KIP-28: Kafka Streams Checklist |  Major | streams | Guozhang Wang | Guozhang Wang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3714](https://issues.apache.org/jira/browse/KAFKA-3714) | Allow users greater access to register custom streams metrics |  Minor | streams | Jeff Klukas | Eno Thereska |
| [KAFKA-4684](https://issues.apache.org/jira/browse/KAFKA-4684) | Kafka does not offer kafka-configs.bat on Windows box |  Minor | tools | huxihx | huxihx |
| [KAFKA-4636](https://issues.apache.org/jira/browse/KAFKA-4636) | Per listener security setting overrides (KIP-103) |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-4613](https://issues.apache.org/jira/browse/KAFKA-4613) | Treat null-key records the same way for joins and aggreations |  Major | streams | Matthias J. Sax | Jeyhun Karimov |
| [KAFKA-2955](https://issues.apache.org/jira/browse/KAFKA-2955) | Add Prompt to kafka-console-producer |  Major | producer | Jesse Anderson | Manikumar |
| [KAFKA-4733](https://issues.apache.org/jira/browse/KAFKA-4733) | Improve Streams Reset Tool console output |  Minor | streams, tools | Matthias J. Sax | Gwen Shapira |
| [KAFKA-4702](https://issues.apache.org/jira/browse/KAFKA-4702) | Parametrize streams benchmarks to run at scale |  Major | streams | Eno Thereska | Eno Thereska |
| [KAFKA-4709](https://issues.apache.org/jira/browse/KAFKA-4709) | Error message from Struct.validate() should include the name of the offending field. |  Minor | KafkaConnect | Jeremy Custenborder | Aegeaner |
| [KAFKA-4775](https://issues.apache.org/jira/browse/KAFKA-4775) | Fix findbugs warnings in kafka-tools |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4317](https://issues.apache.org/jira/browse/KAFKA-4317) | RocksDB checkpoint files lost on kill -9 |  Critical | streams | Greg Fodor | Damian Guy |
| [KAFKA-4774](https://issues.apache.org/jira/browse/KAFKA-4774) | Inner classes which don't need a reference to the outer class should be static |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4773](https://issues.apache.org/jira/browse/KAFKA-4773) | The Kafka build should run findbugs |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4276](https://issues.apache.org/jira/browse/KAFKA-4276) | REST configuration not visible in connector properties config files |  Major | KafkaConnect | Gwen Shapira | Akhilesh Naidu |
| [KAFKA-3989](https://issues.apache.org/jira/browse/KAFKA-3989) | Add JMH module for Benchmarks |  Major | . | Bill Bejeck | Bill Bejeck |
| [KAFKA-4266](https://issues.apache.org/jira/browse/KAFKA-4266) | Replication Quota Tests: Ensure ZK updated before tests start |  Major | . | Ben Stopford | Ben Stopford |
| [KAFKA-4722](https://issues.apache.org/jira/browse/KAFKA-4722) | Add application.id to StreamThread name |  Minor | streams | Steven Schlansker | Sharad |
| [KAFKA-4769](https://issues.apache.org/jira/browse/KAFKA-4769) | Add Float serializer, deserializer, serde |  Minor | clients | Michael Noll | Michael Noll |
| [KAFKA-1449](https://issues.apache.org/jira/browse/KAFKA-1449) | Extend wire protocol to allow CRC32C |  Major | consumer | Albert Strasheim | Ismael Juma |
| [KAFKA-4843](https://issues.apache.org/jira/browse/KAFKA-4843) | Stream round-robin scheduler is inneficient |  Major | streams | Eno Thereska | Eno Thereska |
| [KAFKA-4943](https://issues.apache.org/jira/browse/KAFKA-4943) | SCRAM secret's should be better protected with Zookeeper ACLs |  Major | security | Johan Ström | Rajini Sivaram |
| [KAFKA-5052](https://issues.apache.org/jira/browse/KAFKA-5052) | We shouldn't pass the underlying exception to RetriableCommitFailedException when an async offset commit fails. |  Major | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-4965](https://issues.apache.org/jira/browse/KAFKA-4965) | set internal.leave.group.on.close to false in KafkaStreams |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5068](https://issues.apache.org/jira/browse/KAFKA-5068) | Optionally print out metrics after running the perf tests |  Major | tools | Jun Rao | huxihx |
| [KAFKA-5094](https://issues.apache.org/jira/browse/KAFKA-5094) | Censor SCRAM config change logging |  Major | log | Johan Ström | Rajini Sivaram |
| [KAFKA-4144](https://issues.apache.org/jira/browse/KAFKA-4144) | Allow per stream/table timestamp extractor |  Major | streams | Elias Levy | Jeyhun Karimov |
| [KAFKA-5111](https://issues.apache.org/jira/browse/KAFKA-5111) | Improve internal Task APIs |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5091](https://issues.apache.org/jira/browse/KAFKA-5091) | ReassignPartitionsCommand should protect against empty replica list assignment |  Major | tools | Ryan P | huxihx |
| [KAFKA-5118](https://issues.apache.org/jira/browse/KAFKA-5118) | Improve message for Kafka failed startup with non-Kafka data in data.dirs |  Minor | core | Dustin Cote | huxihx |
| [KAFKA-5104](https://issues.apache.org/jira/browse/KAFKA-5104) | DumpLogSegments should not open index files with \`rw\` |  Minor | log | Yeva Byzek | huxihx |
| [KAFKA-5137](https://issues.apache.org/jira/browse/KAFKA-5137) | Controlled shutdown timeout message improvement |  Minor | . | Dustin Cote | Umesh Chaudhary |
| [KAFKA-5161](https://issues.apache.org/jira/browse/KAFKA-5161) | reassign-partitions to check if broker of ID exists in cluster |  Minor | . | Lawrence Weikum | huxihx |
| [KAFKA-4839](https://issues.apache.org/jira/browse/KAFKA-4839) | throw NoOffsetForPartitionException once for all assigned partitions from poll |  Major | clients | radai rosenblatt | radai rosenblatt |
| [KAFKA-5176](https://issues.apache.org/jira/browse/KAFKA-5176) | AdminClient: add controller and clusterId methods to DescribeClusterResults |  Major | admin | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5194](https://issues.apache.org/jira/browse/KAFKA-5194) | KIP-153: Include only client traffic in BytesOutPerSec metric |  Major | metrics | Mickael Maison | Mickael Maison |
| [KAFKA-4982](https://issues.apache.org/jira/browse/KAFKA-4982) | Add listener tag to socket-server-metrics.connection-... metrics (KIP-136) |  Major | . | Edoardo Comar | Edoardo Comar |
| [KAFKA-5257](https://issues.apache.org/jira/browse/KAFKA-5257) | Change Default unclean.leader.election.enabled from True to False |  Major | . | Ben Stopford | Sharad |
| [KAFKA-5166](https://issues.apache.org/jira/browse/KAFKA-5166) | Add option "dry run" to Streams application reset tool |  Minor | streams, tools | Matthias J. Sax | Bharat Viswanadham |
| [KAFKA-4772](https://issues.apache.org/jira/browse/KAFKA-4772) | Exploit #peek to implement #print() and other methods |  Minor | streams | Matthias J. Sax | james chien |
| [KAFKA-5036](https://issues.apache.org/jira/browse/KAFKA-5036) | Followups from KIP-101 |  Major | . | Jun Rao | Ben Stopford |
| [KAFKA-5210](https://issues.apache.org/jira/browse/KAFKA-5210) | Application Reset Tool does not need to seek for internal topics |  Trivial | streams, tools | Matthias J. Sax | Bharat Viswanadham |
| [KAFKA-3878](https://issues.apache.org/jira/browse/KAFKA-3878) | Exponential backoff for broker reconnect attempts (KIP-144) |  Major | clients, network | Dana Powers | Dana Powers |
| [KAFKA-3995](https://issues.apache.org/jira/browse/KAFKA-3995) | Split the ProducerBatch and resend when received RecordTooLargeException |  Major | clients | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-5277](https://issues.apache.org/jira/browse/KAFKA-5277) | Sticky Assignor should not cache the calculated assignment (KIP-54 follow-up) |  Minor | . | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-5108](https://issues.apache.org/jira/browse/KAFKA-5108) | Add support for reading PID snapshot files to DumpLogSegments |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-4922](https://issues.apache.org/jira/browse/KAFKA-4922) | Fix several FindBugs warnings in Clients and Connect |  Minor | clients, KafkaConnect | Daan Rennings |  |
| [KAFKA-5333](https://issues.apache.org/jira/browse/KAFKA-5333) | Remove Broker ACL resource type |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-5218](https://issues.apache.org/jira/browse/KAFKA-5218) | New Short serializer, deserializer, serde |  Minor | clients, streams | Mario Molina | Mario Molina |
| [KAFKA-4195](https://issues.apache.org/jira/browse/KAFKA-4195) | support throttling on request rate |  Major | . | Jun Rao | Rajini Sivaram |
| [KAFKA-2358](https://issues.apache.org/jira/browse/KAFKA-2358) | Cluster collection returning methods should never return null |  Minor | . | Stevo Slavic | Stevo Slavic |
| [KAFKA-5311](https://issues.apache.org/jira/browse/KAFKA-5311) | Support ExtendedDeserializer in Kafka Streams |  Major | streams | Dale Peakall | Dale Peakall |
| [KAFKA-4291](https://issues.apache.org/jira/browse/KAFKA-4291) | TopicCommand --describe shows topics marked for deletion as under-replicated and unavailable (KIP-137) |  Major | admin | Mickael Maison | Mickael Maison |
| [KAFKA-5112](https://issues.apache.org/jira/browse/KAFKA-5112) | Trunk compatibility tests should test against 0.10.2 |  Blocker | . | Colin P. McCabe | Ismael Juma |
| [KAFKA-5411](https://issues.apache.org/jira/browse/KAFKA-5411) | Generate javadoc for AdminClient and show configs in documentation |  Blocker | . | Ismael Juma | Ismael Juma |
| [KAFKA-5405](https://issues.apache.org/jira/browse/KAFKA-5405) | Request log should log throttle time |  Major | . | Jun Rao | huxihx |
| [KAFKA-5446](https://issues.apache.org/jira/browse/KAFKA-5446) | Annoying braces showed on log.error using streams |  Trivial | streams | Paolo Patierno | Paolo Patierno |
| [KAFKA-4829](https://issues.apache.org/jira/browse/KAFKA-4829) | Improve logging of StreamTask commits |  Minor | streams | Steven Schlansker | Guozhang Wang |
| [KAFKA-4520](https://issues.apache.org/jira/browse/KAFKA-4520) | Kafka broker fails with not so user-friendly error msg when log.dirs is not set |  Trivial | . | Buchi Reddy B |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4672](https://issues.apache.org/jira/browse/KAFKA-4672) | KIP-100 api changes break Java 8 lambda expressions in some cases |  Major | streams | Xavier Léauté | Xavier Léauté |
| [KAFKA-4671](https://issues.apache.org/jira/browse/KAFKA-4671) | Fix Streams window retention policy |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-4673](https://issues.apache.org/jira/browse/KAFKA-4673) | Python VerifiableConsumer service has thread-safety bug for event\_handlers |  Major | system tests | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-3835](https://issues.apache.org/jira/browse/KAFKA-3835) | Streams is creating two ProducerRecords for each send via RecordCollector |  Minor | streams | Damian Guy | Jeyhun Karimov |
| [KAFKA-2000](https://issues.apache.org/jira/browse/KAFKA-2000) | Delete consumer offsets from kafka once the topic is deleted |  Major | . | Sriharsha Chintalapani | Manikumar |
| [KAFKA-4700](https://issues.apache.org/jira/browse/KAFKA-4700) | StreamsKafkaClient drops security configs |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-4717](https://issues.apache.org/jira/browse/KAFKA-4717) | connect jars are missing LICENSE/NOTICE files |  Blocker | KafkaConnect | dan norwood | Ewen Cheslack-Postava |
| [KAFKA-4677](https://issues.apache.org/jira/browse/KAFKA-4677) | Avoid unnecessary task movement across threads during rebalance |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4719](https://issues.apache.org/jira/browse/KAFKA-4719) | Timed out waiting for consumption in OffsetValidationTest.test\_broker\_failure |  Major | system tests | Jason Gustafson | Jason Gustafson |
| [KAFKA-4039](https://issues.apache.org/jira/browse/KAFKA-4039) | Exit Strategy: using exceptions instead of inline invocation of exit/halt |  Critical | core | Maysam Yabandeh | Maysam Yabandeh |
| [KAFKA-4724](https://issues.apache.org/jira/browse/KAFKA-4724) | Clean up of state directories can possibly remove stores that are about to be used by another thread |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4461](https://issues.apache.org/jira/browse/KAFKA-4461) | When using ProcessorTopologyTestDriver, the combination of map and .groupByKey does not produce any result |  Major | streams | Hamidreza Afzali | Adrian McCague |
| [KAFKA-4728](https://issues.apache.org/jira/browse/KAFKA-4728) | KafkaConsumer#commitSync should clone its input |  Major | . | Jan Lukavský |  |
| [KAFKA-4735](https://issues.apache.org/jira/browse/KAFKA-4735) | Fix deadlock issue during MM shutdown |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-4741](https://issues.apache.org/jira/browse/KAFKA-4741) | Memory leak in RecordAccumulator.append |  Major | clients | Satish Duggana | Satish Duggana |
| [KAFKA-4749](https://issues.apache.org/jira/browse/KAFKA-4749) | fix join-time-max and sync-time-max MeasurableStat type |  Major | . | Onur Karaman | Onur Karaman |
| [KAFKA-4716](https://issues.apache.org/jira/browse/KAFKA-4716) | Fix logic for re-checking if internal topic is ready |  Blocker | streams | Eno Thereska | Eno Thereska |
| [KAFKA-4617](https://issues.apache.org/jira/browse/KAFKA-4617) | gradle-generated core eclipse project has incorrect source folder structure |  Minor | build | Edoardo Comar | Dhwani Katagade |
| [KAFKA-4525](https://issues.apache.org/jira/browse/KAFKA-4525) | Kafka should not require SSL trust store password |  Major | security | Grant Henke | Grant Henke |
| [KAFKA-4758](https://issues.apache.org/jira/browse/KAFKA-4758) | Connect WorkerSinkTask is missing checks for NO\_TIMESTAMP |  Major | KafkaConnect | Jason Gustafson | Ryan P |
| [KAFKA-4765](https://issues.apache.org/jira/browse/KAFKA-4765) | org.apache.kafka.clients.producer.KafkaProducerTest#testConstructorFailureCloseResource and Similar Tests are Failing on some Systems (127.0.53.53 Collision Warning) |  Major | unit tests | Armin Braun |  |
| [KAFKA-4484](https://issues.apache.org/jira/browse/KAFKA-4484) | Set more conservative default values on RocksDB for memory usage |  Major | streams | Guozhang Wang | Damian Guy |
| [KAFKA-4777](https://issues.apache.org/jira/browse/KAFKA-4777) | Kafka client Heartbeat thread use all the cpu. |  Major | . | Allen Xiang |  |
| [KAFKA-4776](https://issues.apache.org/jira/browse/KAFKA-4776) | Implement graceful handling for improperly formed compressed message sets |  Minor | log | Jason Gustafson | Jason Gustafson |
| [KAFKA-4752](https://issues.apache.org/jira/browse/KAFKA-4752) | Streams Simple Benchmark MB/sec calculation is not correct for Join operations |  Minor | streams | Damian Guy | Eno Thereska |
| [KAFKA-4757](https://issues.apache.org/jira/browse/KAFKA-4757) | Improve NetworkClient trace logging of request details |  Major | . | Onur Karaman | Colin P. McCabe |
| [KAFKA-4708](https://issues.apache.org/jira/browse/KAFKA-4708) | Fix Transient failure in BrokerApiVersionsCommandTest.checkBrokerApiVersionCommandOutput |  Major | unit tests | Jason Gustafson | Colin P. McCabe |
| [KAFKA-4788](https://issues.apache.org/jira/browse/KAFKA-4788) | Broker level configuration 'log.segment.bytes' not used when 'segment.bytes' not configured per topic. |  Major | log | Ciprian Pascu |  |
| [KAFKA-4494](https://issues.apache.org/jira/browse/KAFKA-4494) | Significant startup delays in KStreams app |  Major | streams | j yeargers | Damian Guy |
| [KAFKA-4806](https://issues.apache.org/jira/browse/KAFKA-4806) | KafkaConsumer: ConsumerConfig gets logged twice. |  Minor | clients, consumer, log | Marco Ebert |  |
| [KAFKA-4744](https://issues.apache.org/jira/browse/KAFKA-4744) | Streams\_bounce test failing occassionally |  Major | streams | Eno Thereska |  |
| [KAFKA-3959](https://issues.apache.org/jira/browse/KAFKA-3959) | KIP-115: \_\_consumer\_offsets wrong number of replicas at startup |  Blocker | consumer, offset manager, replication | Alban Hurtaud | Onur Karaman |
| [KAFKA-4809](https://issues.apache.org/jira/browse/KAFKA-4809) | docker/run\_tests.sh should set up /opt/kafka-dev to be the source directory |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4789](https://issues.apache.org/jira/browse/KAFKA-4789) | ProcessorTopologyTestDriver does not forward extracted timestamps to internal topics |  Major | streams | Hamidreza Afzali | Hamidreza Afzali |
| [KAFKA-4811](https://issues.apache.org/jira/browse/KAFKA-4811) | ReplicaFetchThread may fail to create due to existing metric |  Major | replication | Jun Rao | huxihx |
| [KAFKA-4800](https://issues.apache.org/jira/browse/KAFKA-4800) | Streams State transition ASCII diagrams need fixing and polishing |  Minor | streams | Eno Thereska | Clemens Valiente |
| [KAFKA-4631](https://issues.apache.org/jira/browse/KAFKA-4631) | Refresh consumer metadata more frequently for unknown subscribed topics |  Minor | consumer | Jason Gustafson | Rajini Sivaram |
| [KAFKA-2857](https://issues.apache.org/jira/browse/KAFKA-2857) | ConsumerGroupCommand throws GroupCoordinatorNotAvailableException when describing a non-existent group before the offset topic is created |  Minor | tools | Ismael Juma | Vahid Hashemian |
| [KAFKA-4796](https://issues.apache.org/jira/browse/KAFKA-4796) | Fix some findbugs warnings in Kafka Java client |  Major | clients | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4826](https://issues.apache.org/jira/browse/KAFKA-4826) | Fix some findbugs warnings in Kafka Streams |  Major | streams | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4567](https://issues.apache.org/jira/browse/KAFKA-4567) | Connect Producer and Consumer ignore ssl parameters configured for worker |  Minor | KafkaConnect | Sönke Liebau |  |
| [KAFKA-4828](https://issues.apache.org/jira/browse/KAFKA-4828) | ProcessorTopologyTestDriver does not work when using .through() |  Major | streams | Hamidreza Afzali | Hamidreza Afzali |
| [KAFKA-4408](https://issues.apache.org/jira/browse/KAFKA-4408) | KTable doesn't work with ProcessorTopologyTestDriver in Kafka 0.10.1.0 |  Major | streams | Byron Nikolaidis | Hamidreza Afzali |
| [KAFKA-4851](https://issues.apache.org/jira/browse/KAFKA-4851) | SessionStore.fetch(key) is a performance bottleneck |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4841](https://issues.apache.org/jira/browse/KAFKA-4841) | NetworkClient should only consider a connection to be fail after attempt to connect |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-4738](https://issues.apache.org/jira/browse/KAFKA-4738) | Remove generic type of class ClientState |  Minor | streams | Matthias J. Sax | Sharad |
| [KAFKA-4891](https://issues.apache.org/jira/browse/KAFKA-4891) | kafka.request.logger TRACE regression |  Major | . | Onur Karaman | Onur Karaman |
| [KAFKA-4783](https://issues.apache.org/jira/browse/KAFKA-4783) | KIP-128: Blackbox or pass through converter or ByteArrayConverter for connect |  Major | KafkaConnect | Antony Stubbs | Ewen Cheslack-Postava |
| [KAFKA-4885](https://issues.apache.org/jira/browse/KAFKA-4885) | processstreamwithcachedstatestore and other streams benchmarks fail occasionally |  Major | streams | Eno Thereska | Guozhang Wang |
| [KAFKA-4895](https://issues.apache.org/jira/browse/KAFKA-4895) | Fix findbugs "format string should use %n rather than \\n" in tools |  Major | tools | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4607](https://issues.apache.org/jira/browse/KAFKA-4607) | Kafka Streams allows you to provide strings with illegal characters for internal topic names |  Minor | . | Nikki Thean | Nikki Thean |
| [KAFKA-4894](https://issues.apache.org/jira/browse/KAFKA-4894) | Fix findbugs "default character set in use" warnings |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4848](https://issues.apache.org/jira/browse/KAFKA-4848) | Stream thread getting into deadlock state while trying to get rocksdb lock in retryWithBackoff |  Major | streams | Sachin Mittal | Sachin Mittal |
| [KAFKA-4594](https://issues.apache.org/jira/browse/KAFKA-4594) | Annotate integration tests and provide gradle build targets to run subsets of tests |  Minor | unit tests | Ewen Cheslack-Postava | Damian Guy |
| [KAFKA-4863](https://issues.apache.org/jira/browse/KAFKA-4863) | Querying window store may return unwanted keys |  Critical | streams | Xavier Léauté | Damian Guy |
| [KAFKA-4924](https://issues.apache.org/jira/browse/KAFKA-4924) | Fix findbugs warnings in Kafka-Connect-API |  Major | KafkaConnect | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4779](https://issues.apache.org/jira/browse/KAFKA-4779) | Failure in kafka/tests/kafkatest/tests/core/security\_rolling\_upgrade\_test.py |  Major | . | Apurva Mehta | Rajini Sivaram |
| [KAFKA-4929](https://issues.apache.org/jira/browse/KAFKA-4929) | Transformation Key/Value type references should be to class name(), not canonicalName() |  Minor | KafkaConnect | bruce szalwinski |  |
| [KAFKA-4919](https://issues.apache.org/jira/browse/KAFKA-4919) | Document that stores must not be closed when Processors are closed |  Major | streams | Elias Levy | Damian Guy |
| [KAFKA-4790](https://issues.apache.org/jira/browse/KAFKA-4790) | Kafka cannot recover after a disk full |  Major | . | Pengwei |  |
| [KAFKA-4959](https://issues.apache.org/jira/browse/KAFKA-4959) | remove controller concurrent access to non-threadsafe NetworkClient, Selector, and SSLEngine |  Major | . | Onur Karaman | Onur Karaman |
| [KAFKA-4903](https://issues.apache.org/jira/browse/KAFKA-4903) | Remove unused code for reading Shell command stdout and add unit test |  Major | clients | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4945](https://issues.apache.org/jira/browse/KAFKA-4945) | Suppress findbugs warnings about machine-generated code in jmh-benchmarks |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4944](https://issues.apache.org/jira/browse/KAFKA-4944) | Fix an "unread field" findbugs warning in streams examples |  Minor | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4902](https://issues.apache.org/jira/browse/KAFKA-4902) | Utils#delete should correctly handle I/O errors and symlinks |  Major | clients | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4791](https://issues.apache.org/jira/browse/KAFKA-4791) | Kafka Streams - unable to add state stores when using wildcard topics on the source |  Major | streams | Bart Vercammen | Bill Bejeck |
| [KAFKA-4689](https://issues.apache.org/jira/browse/KAFKA-4689) | OffsetValidationTest fails validation with "Current position greater than the total number of consumed records" |  Major | clients, consumer, system tests | Ewen Cheslack-Postava | Jason Gustafson |
| [KAFKA-4964](https://issues.apache.org/jira/browse/KAFKA-4964) | Delete the kafka to prefix the name of the keystore and truststore file will be more suitable |  Minor | documentation | shuguo zheng |  |
| [KAFKA-4878](https://issues.apache.org/jira/browse/KAFKA-4878) | Kafka Connect does not log connector configuration errors |  Blocker | . | Gwen Shapira | Armin Braun |
| [KAFKA-4977](https://issues.apache.org/jira/browse/KAFKA-4977) | kafka-connect: fix findbugs issues in connect/runtime |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4855](https://issues.apache.org/jira/browse/KAFKA-4855) | Struct SchemaBuilder should not allow duplicate fields. |  Major | KafkaConnect | Jeremy Custenborder | Balint Molnar |
| [KAFKA-4810](https://issues.apache.org/jira/browse/KAFKA-4810) | SchemaBuilder should be more lax about checking that fields are unset if they are being set to the same value |  Major | KafkaConnect | Ewen Cheslack-Postava | Vitaly Pushkar |
| [KAFKA-4837](https://issues.apache.org/jira/browse/KAFKA-4837) | Config validation in Connector plugins need to compare against both canonical and simple class names |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-4993](https://issues.apache.org/jira/browse/KAFKA-4993) | Fix findbugs warnings in kafka-clients |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4916](https://issues.apache.org/jira/browse/KAFKA-4916) | Add streams tests with brokers failing |  Blocker | streams | Eno Thereska | Eno Thereska |
| [KAFKA-1211](https://issues.apache.org/jira/browse/KAFKA-1211) | Hold the produce request with ack \> 1 in purgatory until replicas' HW has larger than the produce offset (KIP-101) |  Major | . | Guozhang Wang | Ben Stopford |
| [KAFKA-5003](https://issues.apache.org/jira/browse/KAFKA-5003) | StreamThread should catch InvalidTopicException |  Blocker | streams | Eno Thereska | Matthias J. Sax |
| [KAFKA-4995](https://issues.apache.org/jira/browse/KAFKA-4995) | Fix remaining findbugs warnings in Kafka Streams |  Major | streams | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5040](https://issues.apache.org/jira/browse/KAFKA-5040) | Increase number of Streams producer retries from the default of 0 |  Blocker | streams | Eno Thereska | Eno Thereska |
| [KAFKA-3919](https://issues.apache.org/jira/browse/KAFKA-3919) | Broker faills to start after ungraceful shutdown due to non-monotonically incrementing offsets in logs |  Major | core | Andy Coates | Ben Stopford |
| [KAFKA-5042](https://issues.apache.org/jira/browse/KAFKA-5042) | InFlightRequests#isEmpty() always returns false |  Major | clients | Tommy Becker | Ismael Juma |
| [KAFKA-4901](https://issues.apache.org/jira/browse/KAFKA-4901) | Make ProduceRequest thread-safe |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-5043](https://issues.apache.org/jira/browse/KAFKA-5043) | Add FindCoordinatorRequest RPC stub and update InitPidRequest for KIP-98 |  Major | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-4866](https://issues.apache.org/jira/browse/KAFKA-4866) | Kafka console consumer property is ignored |  Trivial | core, tools | Frank Lyaruu | huxihx |
| [KAFKA-5013](https://issues.apache.org/jira/browse/KAFKA-5013) | Fail the build when findbugs fails |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5038](https://issues.apache.org/jira/browse/KAFKA-5038) | running multiple kafka streams instances causes one or more instance to get into file contention |  Blocker | streams | Bharad Tirumala | Eno Thereska |
| [KAFKA-5075](https://issues.apache.org/jira/browse/KAFKA-5075) | Defer exception to the next pollOnce() if consumer's fetch position has already increased |  Major | clients, consumer | Jiangjie Qin | Dong Lin |
| [KAFKA-5049](https://issues.apache.org/jira/browse/KAFKA-5049) | Chroot check should be done for each ZkUtils instance |  Major | . | Ismael Juma | anugrah |
| [KAFKA-4814](https://issues.apache.org/jira/browse/KAFKA-4814) | ZookeeperLeaderElector not respecting zookeeper.set.acl |  Major | security | Stevo Slavic | Rajini Sivaram |
| [KAFKA-4937](https://issues.apache.org/jira/browse/KAFKA-4937) | Batch resetting offsets in Streams' StoreChangelogReader |  Major | streams | Guozhang Wang | Damian Guy |
| [KAFKA-5014](https://issues.apache.org/jira/browse/KAFKA-5014) | SSL Channel not ready but tcp is established and the server is hung will not sending metadata |  Minor | . | Pengwei |  |
| [KAFKA-5047](https://issues.apache.org/jira/browse/KAFKA-5047) | NullPointerException while using GlobalKTable in KafkaStreams |  Major | streams | Ivan Ursul | Damian Guy |
| [KAFKA-5073](https://issues.apache.org/jira/browse/KAFKA-5073) | Kafka Streams stuck rebalancing after exception thrown in rebalance listener |  Major | streams | Xavier Léauté | Matthias J. Sax |
| [KAFKA-5095](https://issues.apache.org/jira/browse/KAFKA-5095) | ThreadCacheTest.cacheOverheadsSmallValues fails intermittently |  Major | streams | Damian Guy | Eno Thereska |
| [KAFKA-4980](https://issues.apache.org/jira/browse/KAFKA-4980) | testReprocessingFromScratch unit test failure |  Major | streams | Eno Thereska | Matthias J. Sax |
| [KAFKA-5088](https://issues.apache.org/jira/browse/KAFKA-5088) | some spelling error in code comment |  Trivial | streams, tools | Xin | Xin |
| [KAFKA-4564](https://issues.apache.org/jira/browse/KAFKA-4564) | When the destination brokers are down or misconfigured in config, Streams should fail fast |  Major | streams | Guozhang Wang | Matthias J. Sax |
| [KAFKA-5100](https://issues.apache.org/jira/browse/KAFKA-5100) | ProducerPerformanceService failing due to parsing error |  Blocker | . | Ismael Juma |  |
| [KAFKA-5090](https://issues.apache.org/jira/browse/KAFKA-5090) | Kafka Streams SessionStore.findSessions javadoc broken |  Trivial | streams | Michal Borowiecki | Michal Borowiecki |
| [KAFKA-3940](https://issues.apache.org/jira/browse/KAFKA-3940) | Log should check the return value of dir.mkdirs() |  Major | log | Jun Rao | Colin P. McCabe |
| [KAFKA-4755](https://issues.apache.org/jira/browse/KAFKA-4755) | SimpleBenchmark test fails for streams |  Blocker | streams | Eno Thereska | Eno Thereska |
| [KAFKA-5086](https://issues.apache.org/jira/browse/KAFKA-5086) | Update topic expiry time in Metadata every time the topic metadata is requested |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-5119](https://issues.apache.org/jira/browse/KAFKA-5119) | Transient test failure SocketServerTest.testMetricCollectionAfterShutdown |  Major | unit tests | Jason Gustafson |  |
| [KAFKA-5101](https://issues.apache.org/jira/browse/KAFKA-5101) | Remove KafkaController's incrementControllerEpoch method parameter |  Trivial | controller | Balint Molnar | Balint Molnar |
| [KAFKA-5005](https://issues.apache.org/jira/browse/KAFKA-5005) | JoinIntegrationTest fails occasionally |  Major | streams, unit tests | Matthias J. Sax | Armin Braun |
| [KAFKA-4899](https://issues.apache.org/jira/browse/KAFKA-4899) | Fix findbugs warnings in kafka-core |  Major | core | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-3754](https://issues.apache.org/jira/browse/KAFKA-3754) | Kafka default -Xloggc settings should include GC log rotation flags |  Minor | . | Ryan P | Ryan P |
| [KAFKA-5144](https://issues.apache.org/jira/browse/KAFKA-5144) | MinTimestampTracker uses confusing variable names |  Trivial | streams | Michal Borowiecki | Michal Borowiecki |
| [KAFKA-5055](https://issues.apache.org/jira/browse/KAFKA-5055) | Kafka Streams skipped-records-rate sensor producing nonzero values even when FailOnInvalidTimestamp is used as extractor |  Major | streams | Nikki Thean | Davor Poldrugo |
| [KAFKA-4925](https://issues.apache.org/jira/browse/KAFKA-4925) | Add a configurable delay to the initial consumer group rebalance |  Major | core | Damian Guy | Damian Guy |
| [KAFKA-5170](https://issues.apache.org/jira/browse/KAFKA-5170) | KafkaAdminClientIntegration test should wait until metadata is propagated to all brokers |  Major | admin | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5169](https://issues.apache.org/jira/browse/KAFKA-5169) | KafkaConsumer.close should be idempotent |  Major | clients | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5143](https://issues.apache.org/jira/browse/KAFKA-5143) | Windows platform does not offer kafka-broker-api-versions.bat |  Minor | admin | huxihx | huxihx |
| [KAFKA-5172](https://issues.apache.org/jira/browse/KAFKA-5172) | CachingSessionStore doesn't fetchPrevious correctly. |  Major | streams | Kyle Winkelman | Kyle Winkelman |
| [KAFKA-5174](https://issues.apache.org/jira/browse/KAFKA-5174) | RocksDb might stall in environments with 1 core only |  Major | streams | Eno Thereska | Eno Thereska |
| [KAFKA-3353](https://issues.apache.org/jira/browse/KAFKA-3353) | Remove deprecated producer configs. |  Major | . | Ashish Singh | Ismael Juma |
| [KAFKA-4927](https://issues.apache.org/jira/browse/KAFKA-4927) | KStreamsTestDriver fails with NPE when KStream.to() sinks are used |  Major | streams | Wim Van Leuven | Wim Van Leuven |
| [KAFKA-5099](https://issues.apache.org/jira/browse/KAFKA-5099) | Replica Deletion Regression from KIP-101 |  Blocker | . | Onur Karaman | Onur Karaman |
| [KAFKA-5213](https://issues.apache.org/jira/browse/KAFKA-5213) | IllegalStateException in ensureOpenForRecordAppend |  Critical | . | dan norwood | Apurva Mehta |
| [KAFKA-4343](https://issues.apache.org/jira/browse/KAFKA-4343) | KIP-151: Connect REST API should expose whether each connector is a source or sink |  Major | KafkaConnect | Ewen Cheslack-Postava | dan norwood |
| [KAFKA-5173](https://issues.apache.org/jira/browse/KAFKA-5173) | SASL tests failing with Could not find a 'KafkaServer' or 'sasl\_plaintext.KafkaServer' entry in the JAAS configuration |  Major | . | Ismael Juma | Rajini Sivaram |
| [KAFKA-5216](https://issues.apache.org/jira/browse/KAFKA-5216) | Cached Session/Window store may return error on iterator.peekNextKey() |  Major | streams | Xavier Léauté | Xavier Léauté |
| [KAFKA-5198](https://issues.apache.org/jira/browse/KAFKA-5198) | RocksDbStore#openIterators should be synchronized, since it is accessed from multiple threads |  Major | streams | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5230](https://issues.apache.org/jira/browse/KAFKA-5230) | Recommended values for Connect transformations contain the wrong class name |  Major | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-5232](https://issues.apache.org/jira/browse/KAFKA-5232) | Kafka broker fails to start if a topic containing dot in its name is marked for delete but hasn't been deleted during previous uptime |  Critical | core | jaikiran pai | jaikiran pai |
| [KAFKA-5203](https://issues.apache.org/jira/browse/KAFKA-5203) | Percentilles are calculated incorrectly |  Minor | metrics | Ivan A. Melnikov |  |
| [KAFKA-5206](https://issues.apache.org/jira/browse/KAFKA-5206) | RocksDBSessionStore doesn't use default aggSerde. |  Major | streams | Kyle Winkelman | Kyle Winkelman |
| [KAFKA-5205](https://issues.apache.org/jira/browse/KAFKA-5205) | CachingSessionStore doesn't use the default keySerde. |  Major | streams | Kyle Winkelman | Kyle Winkelman |
| [KAFKA-5244](https://issues.apache.org/jira/browse/KAFKA-5244) | Tests which delete singleton metrics break subsequent metrics tests |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5215](https://issues.apache.org/jira/browse/KAFKA-5215) | Small JavaDoc fix for AdminClient#describeTopics |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-977](https://issues.apache.org/jira/browse/KAFKA-977) | Implement generation/term per leader to reconcile messages correctly |  Major | . | Sriram Subramanian | Sriram Subramanian |
| [KAFKA-5241](https://issues.apache.org/jira/browse/KAFKA-5241) | GlobalKTable does not checkpoint offsets after restoring state |  Minor | streams | Tommy Becker | Tommy Becker |
| [KAFKA-4714](https://issues.apache.org/jira/browse/KAFKA-4714) | Implement remaining KIP-66 SMTs |  Major | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-3070](https://issues.apache.org/jira/browse/KAFKA-3070) | SASL unit tests dont work with IBM JDK |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-4667](https://issues.apache.org/jira/browse/KAFKA-4667) | KIP-154: Connect should create internal topics |  Critical | KafkaConnect | Emanuele Cesena | Randall Hauch |
| [KAFKA-5294](https://issues.apache.org/jira/browse/KAFKA-5294) | PlainSaslServerFactory should allow a null Map in getMechanismNames |  Major | . | Bryan Bende | Mickael Maison |
| [KAFKA-5303](https://issues.apache.org/jira/browse/KAFKA-5303) | FetchRequest doesn't implement toString |  Major | . | Andrey | Ismael Juma |
| [KAFKA-5305](https://issues.apache.org/jira/browse/KAFKA-5305) | Missing logging information in ReplicaFetcher |  Major | . | Andrey | Ismael Juma |
| [KAFKA-5135](https://issues.apache.org/jira/browse/KAFKA-5135) | Controller Health Metrics (KIP-143) |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-5081](https://issues.apache.org/jira/browse/KAFKA-5081) | two versions of jackson-annotations-xxx.jar in distribution tgz |  Minor | build | Edoardo Comar | Ewen Cheslack-Postava |
| [KAFKA-5263](https://issues.apache.org/jira/browse/KAFKA-5263) | kakfa-clients consume 100% CPU with manual partition assignment when network connection is lost |  Major | clients | Konstantin Smirnov | Rajini Sivaram |
| [KAFKA-5250](https://issues.apache.org/jira/browse/KAFKA-5250) | handleFetchRequest should do down conversion after throttling |  Critical | . | Ismael Juma | Rajini Sivaram |
| [KAFKA-5309](https://issues.apache.org/jira/browse/KAFKA-5309) | Stores not queryable after one thread died |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5078](https://issues.apache.org/jira/browse/KAFKA-5078) | PartitionRecords.fetchRecords(...) should defer exception to the next call if iterator has already moved across any valid record |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-5316](https://issues.apache.org/jira/browse/KAFKA-5316) | Log cleaning can increase message size and cause cleaner to crash with buffer overflow |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-5338](https://issues.apache.org/jira/browse/KAFKA-5338) | There is a Misspell in ResetIntegrationTest |  Major | . | JieFang.He | JieFang.He |
| [KAFKA-5278](https://issues.apache.org/jira/browse/KAFKA-5278) | kafka-console-consumer: \`--value-deserializer\` is not working but \`--property value.deserializer\` does |  Minor | clients | Yeva Byzek | huxihx |
| [KAFKA-5344](https://issues.apache.org/jira/browse/KAFKA-5344) | Change message.timestamp.difference.max.ms back to Long.MaxValue |  Major | core | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-4603](https://issues.apache.org/jira/browse/KAFKA-4603) | the argument of shell in doc wrong and command parsed error |  Minor | admin, documentation | Xin | Xin |
| [KAFKA-5324](https://issues.apache.org/jira/browse/KAFKA-5324) | AdminClient: add close with timeout, fix some timeout bugs |  Major | admin | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5211](https://issues.apache.org/jira/browse/KAFKA-5211) | KafkaConsumer should not skip a corrupted record after throwing an exception. |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-5334](https://issues.apache.org/jira/browse/KAFKA-5334) | rocksdb.config.setter must be a class instance, not a class name |  Minor | streams | Tommy Becker | Tommy Becker |
| [KAFKA-5266](https://issues.apache.org/jira/browse/KAFKA-5266) | Follow-up improvements for consumer offset reset tool (KIP-122) |  Major | tools | Jason Gustafson | Jorge Quilcate |
| [KAFKA-5349](https://issues.apache.org/jira/browse/KAFKA-5349) | KafkaConsumer occasionally hits IllegalStateException |  Blocker | . | Apurva Mehta | Jason Gustafson |
| [KAFKA-5265](https://issues.apache.org/jira/browse/KAFKA-5265) | Move ACLs, Config, NodeVersions classes into org.apache.kafka.common |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5353](https://issues.apache.org/jira/browse/KAFKA-5353) | baseTimestamp should always have a create timestamp |  Blocker | . | Ismael Juma | Ismael Juma |
| [KAFKA-5350](https://issues.apache.org/jira/browse/KAFKA-5350) | Modify Unstable annotations in Streams API |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-5226](https://issues.apache.org/jira/browse/KAFKA-5226) | NullPointerException (NPE) in SourceNodeRecordDeserializer.deserialize |  Major | streams | Ian Springer | Bill Bejeck |
| [KAFKA-5321](https://issues.apache.org/jira/browse/KAFKA-5321) | MemoryRecords.filterTo can return corrupt data if output buffer is not large enough |  Blocker | log | Jason Gustafson | Jason Gustafson |
| [KAFKA-4459](https://issues.apache.org/jira/browse/KAFKA-4459) | rat license check not running in Jenkins |  Major | . | Ismael Juma | Ewen Cheslack-Postava |
| [KAFKA-5360](https://issues.apache.org/jira/browse/KAFKA-5360) | Down-converted uncompressed batches should respect fetch offset |  Blocker | . | Ismael Juma | Ismael Juma |
| [KAFKA-5150](https://issues.apache.org/jira/browse/KAFKA-5150) | LZ4 decompression is 4-5x slower than Snappy on small batches / messages |  Major | consumer | Xavier Léauté | Xavier Léauté |
| [KAFKA-2818](https://issues.apache.org/jira/browse/KAFKA-2818) | Clean up Controller Object on forced Resignation |  Minor | controller | Matthew Bruce | Flavio Junqueira |
| [KAFKA-5361](https://issues.apache.org/jira/browse/KAFKA-5361) | Add EOS integration tests for Streams API |  Blocker | streams, unit tests | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5293](https://issues.apache.org/jira/browse/KAFKA-5293) | Do not apply exponential backoff if users have overridden reconnect.backoff.ms |  Critical | . | Ismael Juma | Colin P. McCabe |
| [KAFKA-5229](https://issues.apache.org/jira/browse/KAFKA-5229) | Reflections logs excessive warnings when scanning classpaths |  Major | KafkaConnect | Ewen Cheslack-Postava | Bharat Viswanadham |
| [KAFKA-5345](https://issues.apache.org/jira/browse/KAFKA-5345) | Some socket connections not closed after restart of Kafka Streams |  Major | streams | Jeroen van Wilgenburg | Rajini Sivaram |
| [KAFKA-5164](https://issues.apache.org/jira/browse/KAFKA-5164) | SetSchemaMetadata does not replace the schemas in structs correctly |  Major | KafkaConnect | Ewen Cheslack-Postava | Randall Hauch |
| [KAFKA-5368](https://issues.apache.org/jira/browse/KAFKA-5368) | Kafka Streams skipped-records-rate sensor produces nonzero values when the timestamps are valid |  Major | streams | Hamidreza Afzali | Hamidreza Afzali |
| [KAFKA-3982](https://issues.apache.org/jira/browse/KAFKA-3982) | Issue with processing order of consumer properties in console consumer |  Minor | consumer | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-5236](https://issues.apache.org/jira/browse/KAFKA-5236) | Regression in on-disk log size when using Snappy compression with 0.8.2 log message format |  Major | core | Nick Travers | Ismael Juma |
| [KAFKA-4595](https://issues.apache.org/jira/browse/KAFKA-4595) | Controller send thread can't stop when broker change listener event trigger for  dead brokers |  Critical | . | Pengwei | Onur Karaman |
| [KAFKA-5373](https://issues.apache.org/jira/browse/KAFKA-5373) | ConsoleConsumer prints out object addresses rather than what is expected |  Blocker | . | Colin P. McCabe | Apurva Mehta |
| [KAFKA-5374](https://issues.apache.org/jira/browse/KAFKA-5374) | AdminClient gets "server returned information about unknown correlation ID" when communicating with older brokers |  Blocker | admin | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5325](https://issues.apache.org/jira/browse/KAFKA-5325) | Connection Lose during Kafka Kerberos Renewal process |  Major | producer | MuthuKumar | Rajini Sivaram |
| [KAFKA-5051](https://issues.apache.org/jira/browse/KAFKA-5051) | Avoid DNS reverse lookup in security-critical TLS code path |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5375](https://issues.apache.org/jira/browse/KAFKA-5375) | Transactions: Concurrent transactional consumer loses messages when there are broker bounces |  Blocker | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-4942](https://issues.apache.org/jira/browse/KAFKA-4942) | Kafka Connect: Offset committing times out before expected |  Major | KafkaConnect | Stephane Maarek |  |
| [KAFKA-5380](https://issues.apache.org/jira/browse/KAFKA-5380) | Transient test failure: KafkaConsumerTest.testChangingRegexSubscription |  Major | consumer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5395](https://issues.apache.org/jira/browse/KAFKA-5395) | Distributed Herder Deadlocks on Shutdown |  Critical | KafkaConnect | Michael Jaschob | Rajini Sivaram |
| [KAFKA-5394](https://issues.apache.org/jira/browse/KAFKA-5394) | KafkaAdminClient#timeoutCallsInFlight does not work as expected |  Major | admin | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5385](https://issues.apache.org/jira/browse/KAFKA-5385) | Transactional Producer allows batches to expire and commits transactions regardless |  Blocker | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5329](https://issues.apache.org/jira/browse/KAFKA-5329) | Replica list in the metadata cache on the broker may have different order from zookeeper |  Major | . | Jiangjie Qin | Ismael Juma |
| [KAFKA-5362](https://issues.apache.org/jira/browse/KAFKA-5362) | Add EOS system tests for Streams API |  Blocker | streams, system tests | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5382](https://issues.apache.org/jira/browse/KAFKA-5382) | Log recovery can fail if topic names contain one of the index suffixes |  Major | . | Jason Gustafson |  |
| [KAFKA-5414](https://issues.apache.org/jira/browse/KAFKA-5414) | Console consumer offset commit regression |  Critical | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-5422](https://issues.apache.org/jira/browse/KAFKA-5422) | Multiple produce request failures causes invalid state transition in TransactionManager |  Major | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5415](https://issues.apache.org/jira/browse/KAFKA-5415) | TransactionCoordinator doesn't complete transition to PrepareCommit state |  Blocker | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5433](https://issues.apache.org/jira/browse/KAFKA-5433) | Transient test failure: SaslPlainSslEndToEndAuthorizationTest.testNoProduceWithDescribeAcl |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5416](https://issues.apache.org/jira/browse/KAFKA-5416) | TransactionCoordinator doesn't complete transition to CompleteCommit |  Blocker | . | Apurva Mehta | Guozhang Wang |
| [KAFKA-5404](https://issues.apache.org/jira/browse/KAFKA-5404) | Add more AdminClient checks to ClientCompatibilityTest |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5418](https://issues.apache.org/jira/browse/KAFKA-5418) | ZkUtils.getAllPartitions() may fail if a topic is marked for deletion |  Major | core | Edoardo Comar | Mickael Maison |
| [KAFKA-5354](https://issues.apache.org/jira/browse/KAFKA-5354) | MirrorMaker not preserving headers |  Blocker | . | Jun Rao | Michael Andre Pearce |
| [KAFKA-5448](https://issues.apache.org/jira/browse/KAFKA-5448) | TimestampConverter's "type" config conflicts with the basic Transformation "type" config |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-5450](https://issues.apache.org/jira/browse/KAFKA-5450) | Scripts to startup Connect in system tests have too short a timeout |  Major | system tests | Randall Hauch | Randall Hauch |
| [KAFKA-5442](https://issues.apache.org/jira/browse/KAFKA-5442) | Streams producer \`client.id\` are not unique for EOS |  Blocker | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5449](https://issues.apache.org/jira/browse/KAFKA-5449) | Flaky test TransactionsTest.testReadCommittedConsumerShouldNotSeeUndecidedData |  Blocker | core, unit tests | Matthias J. Sax | Jason Gustafson |
| [KAFKA-5457](https://issues.apache.org/jira/browse/KAFKA-5457) | MemoryRecordsBuilder.hasRoomfor doesn't take into account the headers while computing available space |  Blocker | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5456](https://issues.apache.org/jira/browse/KAFKA-5456) | Producer fails with NPE if compressed V0 or V1 record is larger than batch size |  Blocker | producer | Matthias J. Sax | Jason Gustafson |
| [KAFKA-5463](https://issues.apache.org/jira/browse/KAFKA-5463) | Controller incorrectly logs rack information when new brokers are added |  Minor | config, controller | Jeff Chao |  |
| [KAFKA-5455](https://issues.apache.org/jira/browse/KAFKA-5455) | Update java docs for consumer and producer to be up to date for EOS |  Major | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5336](https://issues.apache.org/jira/browse/KAFKA-5336) | ListGroup requires Describe on Cluster, but the command-line AclCommand tool does not allow this to be set |  Minor | security | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-5472](https://issues.apache.org/jira/browse/KAFKA-5472) | Connector validate REST endpoint returning duplicate entries in "groups" |  Blocker | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-5413](https://issues.apache.org/jira/browse/KAFKA-5413) | Log cleaner fails due to large offset in segment file |  Critical | core | Nicholas Ngorok | Kelvin Rutt |
| [KAFKA-5477](https://issues.apache.org/jira/browse/KAFKA-5477) | TransactionalProducer sleeps unnecessarily long during back to back transactions |  Blocker | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5475](https://issues.apache.org/jira/browse/KAFKA-5475) | Connector config validation REST API endpoint not including fields for transformations |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Konstantine Karantasis |
| [KAFKA-5491](https://issues.apache.org/jira/browse/KAFKA-5491) | The ProducerPerformance tool should support transactions |  Major | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5486](https://issues.apache.org/jira/browse/KAFKA-5486) | org.apache.kafka logging should go to server.log |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-4059](https://issues.apache.org/jira/browse/KAFKA-4059) | Documentation still refers to AsyncProducer and SyncProducer |  Major | producer | Andrew B | Tom Bentley |
| [KAFKA-5498](https://issues.apache.org/jira/browse/KAFKA-5498) | Connect validation API stops returning recommendations for some fields after the right sequence of requests |  Major | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-5577](https://issues.apache.org/jira/browse/KAFKA-5577) | WindowedStreamPartitioner does not provide topic name to serializer |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5154](https://issues.apache.org/jira/browse/KAFKA-5154) | Kafka Streams throws NPE during rebalance |  Major | streams | Lukas Gemela | Damian Guy |
| [KAFKA-4840](https://issues.apache.org/jira/browse/KAFKA-4840) | There are are still cases where producer buffer pool will not remove waiters. |  Major | clients | Sean McCauliff | Sean McCauliff |
| [KAFKA-5961](https://issues.apache.org/jira/browse/KAFKA-5961) | NullPointerException when consumer restore read messages with null key. |  Major | streams | Andres Gomez Ferrer |  |
| [KAFKA-6088](https://issues.apache.org/jira/browse/KAFKA-6088) | Kafka Consumer slows down when reading from highly compacted topics |  Major | clients | James Cheng |  |
| [KAFKA-4](https://issues.apache.org/jira/browse/KAFKA-4) | Confusing Error mesage from producer when no kafka brokers are available |  Minor | . |  |  |
| [KAFKA-1561](https://issues.apache.org/jira/browse/KAFKA-1561) | Data Loss for Incremented Replica Factor and Leader Election |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-6334](https://issues.apache.org/jira/browse/KAFKA-6334) | Minor documentation typo |  Trivial | documentation | Andrew Olson | Andrew Olson |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4574](https://issues.apache.org/jira/browse/KAFKA-4574) | Transient failure in ZooKeeperSecurityUpgradeTest.test\_zk\_security\_upgrade with security\_protocol = SASL\_PLAINTEXT, SSL |  Major | system tests | Shikhar Bhushan | Apurva Mehta |
| [KAFKA-4703](https://issues.apache.org/jira/browse/KAFKA-4703) | Test with two SASL\_SSL listeners with different JAAS contexts |  Major | . | Ismael Juma | Balint Molnar |
| [KAFKA-5126](https://issues.apache.org/jira/browse/KAFKA-5126) | Implement KIP-98 transactional methods in the MockProducer |  Major | . | Apurva Mehta | Matthias J. Sax |
| [KAFKA-5371](https://issues.apache.org/jira/browse/KAFKA-5371) | SyncProducerTest.testReachableServer has become flaky |  Major | . | Apurva Mehta | Ismael Juma |
| [KAFKA-5366](https://issues.apache.org/jira/browse/KAFKA-5366) | Add cases for concurrent transactional reads and writes in system tests |  Blocker | . | Apurva Mehta | Apurva Mehta |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4588](https://issues.apache.org/jira/browse/KAFKA-4588) | QueryableStateIntegrationTest.shouldNotMakeStoreAvailableUntilAllStoresAvailable is occasionally failing on jenkins |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-3896](https://issues.apache.org/jira/browse/KAFKA-3896) | Unstable test KStreamRepartitionJoinTest.shouldCorrectlyRepartitionOnJoinOperations |  Major | unit tests | Ashish Singh | Guozhang Wang |
| [KAFKA-4644](https://issues.apache.org/jira/browse/KAFKA-4644) | Improve test coverage of StreamsPartitionAssignor |  Minor | streams | Damian Guy | Damian Guy |
| [KAFKA-4642](https://issues.apache.org/jira/browse/KAFKA-4642) | Improve test coverage of ProcessorStateManager |  Minor | streams | Damian Guy | Damian Guy |
| [KAFKA-4647](https://issues.apache.org/jira/browse/KAFKA-4647) | Improve test coverage of GlobalStreamThread |  Minor | streams | Damian Guy | Damian Guy |
| [KAFKA-4645](https://issues.apache.org/jira/browse/KAFKA-4645) | Improve test coverage of ProcessorTopology |  Minor | streams | Damian Guy | Damian Guy |
| [KAFKA-4662](https://issues.apache.org/jira/browse/KAFKA-4662) | Improve test coverage TopologyBuilder |  Minor | streams | Damian Guy | Bill Bejeck |
| [KAFKA-4649](https://issues.apache.org/jira/browse/KAFKA-4649) | Improve test coverage GlobalStateManagerImpl |  Minor | streams | Damian Guy | Damian Guy |
| [KAFKA-4646](https://issues.apache.org/jira/browse/KAFKA-4646) | Improve test coverage AbstractProcessorContext |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4648](https://issues.apache.org/jira/browse/KAFKA-4648) | Improve test coverage StreamTask |  Minor | streams | Damian Guy | Damian Guy |
| [KAFKA-4654](https://issues.apache.org/jira/browse/KAFKA-4654) | Improve test coverage MemoryLRUCache |  Minor | streams | Damian Guy | Bill Bejeck |
| [KAFKA-4786](https://issues.apache.org/jira/browse/KAFKA-4786) | Transient test failure: ConsumerCoordinatorTest.testHeartbeatThreadClose |  Major | . | Ismael Juma | Rajini Sivaram |
| [KAFKA-4198](https://issues.apache.org/jira/browse/KAFKA-4198) | Transient test failure: ConsumerBounceTest.testConsumptionWithBrokerFailures |  Major | . | Ismael Juma | Armin Braun |
| [KAFKA-4652](https://issues.apache.org/jira/browse/KAFKA-4652) | Improve test coverage KStreamBuilder |  Minor | streams | Damian Guy | Bill Bejeck |
| [KAFKA-3155](https://issues.apache.org/jira/browse/KAFKA-3155) | Transient Failure in kafka.api.PlaintextProducerSendTest.testFlush |  Major | . | Guozhang Wang | Armin Braun |
| [KAFKA-4467](https://issues.apache.org/jira/browse/KAFKA-4467) | Run tests on travis-ci using docker |  Major | system tests | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [KAFKA-4657](https://issues.apache.org/jira/browse/KAFKA-4657) | Improve test coverage of CompositeReadOnlyWindowStore |  Major | streams | Damian Guy |  |
| [KAFKA-4859](https://issues.apache.org/jira/browse/KAFKA-4859) | Transient test failure: org.apache.kafka.streams.integration.JoinIntegrationTest.shouldCountClicksPerRegion (again) |  Major | streams | Armin Braun | Armin Braun |
| [KAFKA-4816](https://issues.apache.org/jira/browse/KAFKA-4816) | Message format changes for idempotent/transactional producer |  Major | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-4569](https://issues.apache.org/jira/browse/KAFKA-4569) | Transient failure in org.apache.kafka.clients.consumer.KafkaConsumerTest.testWakeupWithFetchDataAvailable |  Major | unit tests | Guozhang Wang | Umesh Chaudhary |
| [KAFKA-2363](https://issues.apache.org/jira/browse/KAFKA-2363) | ProducerSendTest.testCloseWithZeroTimeoutFromCallerThread Transient Failure |  Major | . | Fangmin Lv | Armin Braun |
| [KAFKA-3875](https://issues.apache.org/jira/browse/KAFKA-3875) | Transient test failure: kafka.api.SslProducerSendTest.testSendNonCompressedMessageWithCreateTime |  Major | unit tests | Ismael Juma | Jun Rao |
| [KAFKA-4817](https://issues.apache.org/jira/browse/KAFKA-4817) | Implement idempotent producer |  Major | clients, core, producer | Jason Gustafson | Apurva Mehta |
| [KAFKA-4990](https://issues.apache.org/jira/browse/KAFKA-4990) | Add request/response classes for transactions (KIP-98) |  Major | clients, core, producer | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-4986](https://issues.apache.org/jira/browse/KAFKA-4986) | Add producer per task support |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5069](https://issues.apache.org/jira/browse/KAFKA-5069) | add controller integration tests |  Major | . | Onur Karaman | Onur Karaman |
| [KAFKA-5124](https://issues.apache.org/jira/browse/KAFKA-5124) | shouldInnerLeftJoin unit test fails |  Major | streams | Eno Thereska | Armin Braun |
| [KAFKA-5028](https://issues.apache.org/jira/browse/KAFKA-5028) | convert kafka controller to a single-threaded event queue model |  Major | . | Onur Karaman | Onur Karaman |
| [KAFKA-4818](https://issues.apache.org/jira/browse/KAFKA-4818) | Implement transactional clients |  Major | clients, core, producer | Jason Gustafson | Apurva Mehta |
| [KAFKA-5103](https://issues.apache.org/jira/browse/KAFKA-5103) | Refactor AdminUtils to use zkUtils methods instad of zkUtils.zkClient |  Major | admin | Balint Molnar | Balint Molnar |
| [KAFKA-4954](https://issues.apache.org/jira/browse/KAFKA-4954) | Implementation and unit tests for request handler thread utilization quota |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-3265](https://issues.apache.org/jira/browse/KAFKA-3265) | Create Java Admin Client |  Major | . | Grant Henke | Colin P. McCabe |
| [KAFKA-5136](https://issues.apache.org/jira/browse/KAFKA-5136) | Move coordinatorEpoch from WriteTxnMarkerRequest to TxnMarkerEntry |  Major | core | Damian Guy | Damian Guy |
| [KAFKA-5107](https://issues.apache.org/jira/browse/KAFKA-5107) | remove preferred replica election state from ControllerContext |  Major | . | Onur Karaman | Onur Karaman |
| [KAFKA-4955](https://issues.apache.org/jira/browse/KAFKA-4955) | Add network handler thread utilization to request quota calculation |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5131](https://issues.apache.org/jira/browse/KAFKA-5131) | WriteTxnMarkers and complete commit/abort on partition immigration |  Major | core | Damian Guy | Damian Guy |
| [KAFKA-4378](https://issues.apache.org/jira/browse/KAFKA-4378) | Address 2.12 eta-expansion warnings |  Major | core | Bernard Leach | Bernard Leach |
| [KAFKA-5162](https://issues.apache.org/jira/browse/KAFKA-5162) | Add a reference to AdminClient to docs/api.html |  Major | documentation | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5121](https://issues.apache.org/jira/browse/KAFKA-5121) | Implement transaction index for KIP-98 |  Major | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5132](https://issues.apache.org/jira/browse/KAFKA-5132) | Abort long running transactions |  Major | core | Damian Guy | Damian Guy |
| [KAFKA-5196](https://issues.apache.org/jira/browse/KAFKA-5196) | LogCleaner should be transaction-aware |  Critical | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5130](https://issues.apache.org/jira/browse/KAFKA-5130) | Change InterBrokerSendThread to use a Queue per broker |  Major | core | Damian Guy | Guozhang Wang |
| [KAFKA-5160](https://issues.apache.org/jira/browse/KAFKA-5160) | KIP-98 : broker side handling for the TxnOffsetCommitRequest |  Major | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5227](https://issues.apache.org/jira/browse/KAFKA-5227) | SaslScramSslEndToEndAuthorizationTest.testNoConsumeWithoutDescribeAclViaSubscribe |  Major | . | Xavier Léauté | Rajini Sivaram |
| [KAFKA-5180](https://issues.apache.org/jira/browse/KAFKA-5180) | Transient failure: ControllerIntegrationTest.testControllerMoveIncrementsControllerEpoch |  Major | . | Ismael Juma | Onur Karaman |
| [KAFKA-5248](https://issues.apache.org/jira/browse/KAFKA-5248) | Remove retention time from TxnOffsetCommit RPC |  Major | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5179](https://issues.apache.org/jira/browse/KAFKA-5179) | Log connection termination during authentication |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5249](https://issues.apache.org/jira/browse/KAFKA-5249) | Transaction index recovery does not snapshot properly |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-5252](https://issues.apache.org/jira/browse/KAFKA-5252) | Fix flaky test LogCleanerTest.testCommitMarkerRemoval |  Major | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5175](https://issues.apache.org/jira/browse/KAFKA-5175) | Transient failure: ControllerIntegrationTest.testPreferredReplicaLeaderElection |  Major | . | Ismael Juma | Onur Karaman |
| [KAFKA-5151](https://issues.apache.org/jira/browse/KAFKA-5151) | Refactor TransactionCoordinator in-memory structure and error handling logic |  Major | core | Guozhang Wang | Guozhang Wang |
| [KAFKA-5129](https://issues.apache.org/jira/browse/KAFKA-5129) | TransactionCoordinator - Add ACL check for each request |  Major | . | Damian Guy | Damian Guy |
| [KAFKA-4957](https://issues.apache.org/jira/browse/KAFKA-4957) | Add documentation for request quotas |  Major | documentation | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5182](https://issues.apache.org/jira/browse/KAFKA-5182) | Transient failure: RequestQuotaTest.testResponseThrottleTime |  Major | . | Xavier Léauté | Rajini Sivaram |
| [KAFKA-5188](https://issues.apache.org/jira/browse/KAFKA-5188) | Add Integration tests for transactional producer |  Critical | clients, core, producer | Jason Gustafson | Apurva Mehta |
| [KAFKA-5231](https://issues.apache.org/jira/browse/KAFKA-5231) | TransactinoCoordinator does not bump epoch when aborting open transactions |  Blocker | . | Apurva Mehta | Guozhang Wang |
| [KAFKA-3266](https://issues.apache.org/jira/browse/KAFKA-3266) | Implement KIP-140 RPCs and APIs for creating, altering, and listing ACLs |  Major | . | Grant Henke | Colin P. McCabe |
| [KAFKA-2273](https://issues.apache.org/jira/browse/KAFKA-2273) | KIP-54: Add rebalance with a minimal number of reassignments to server-defined strategy list |  Major | consumer | Olof Johansson | Vahid Hashemian |
| [KAFKA-3267](https://issues.apache.org/jira/browse/KAFKA-3267) | Describe/Alter Configs protocol, server and client (KIP-133) |  Major | . | Grant Henke | Ismael Juma |
| [KAFKA-5258](https://issues.apache.org/jira/browse/KAFKA-5258) | move all partition and replica state transition rules into their states |  Minor | . | Onur Karaman | Onur Karaman |
| [KAFKA-4222](https://issues.apache.org/jira/browse/KAFKA-4222) | Transient failure in QueryableStateIntegrationTest.queryOnRebalance |  Major | streams, unit tests | Jason Gustafson | Damian Guy |
| [KAFKA-5268](https://issues.apache.org/jira/browse/KAFKA-5268) | TransactionsBounceTest occasionally sees INVALID\_TXN\_STATE errors |  Major | . | Apurva Mehta | Jason Gustafson |
| [KAFKA-5171](https://issues.apache.org/jira/browse/KAFKA-5171) | TC should not accept empty string transactional id |  Major | core | Guozhang Wang | Umesh Chaudhary |
| [KAFKA-5033](https://issues.apache.org/jira/browse/KAFKA-5033) | Reconsider default retries for idempotent producer |  Blocker | clients, core, producer | Ismael Juma | Apurva Mehta |
| [KAFKA-5269](https://issues.apache.org/jira/browse/KAFKA-5269) | TransactionBounceTest occasionally fails due to partition errors |  Blocker | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5186](https://issues.apache.org/jira/browse/KAFKA-5186) | Avoid expensive initialization of producer state when upgrading |  Blocker | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5247](https://issues.apache.org/jira/browse/KAFKA-5247) | Consumer GroupCoordinator should continue to materialize committed offsets in offset order even for transactional offset commits |  Blocker | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5280](https://issues.apache.org/jira/browse/KAFKA-5280) | Protect concurrent access to the cached transaction status |  Blocker | clients, core, producer | Apurva Mehta | Guozhang Wang |
| [KAFKA-5310](https://issues.apache.org/jira/browse/KAFKA-5310) | reset ControllerContext during resignation |  Major | . | Onur Karaman | Onur Karaman |
| [KAFKA-5273](https://issues.apache.org/jira/browse/KAFKA-5273) | KafkaConsumer.committed() should get latest committed offsets from the server |  Blocker | clients, core, producer | Apurva Mehta | Apurva Mehta |
| [KAFKA-5259](https://issues.apache.org/jira/browse/KAFKA-5259) | TransactionalId authorization should imply ProducerId authorization |  Blocker | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-4935](https://issues.apache.org/jira/browse/KAFKA-4935) | Consider disabling record level CRC checks for message format V2 |  Blocker | . | Apurva Mehta | Jason Gustafson |
| [KAFKA-5279](https://issues.apache.org/jira/browse/KAFKA-5279) | TransactionCoordinator must expire transactionalIds |  Blocker | . | Apurva Mehta | Damian Guy |
| [KAFKA-5320](https://issues.apache.org/jira/browse/KAFKA-5320) | Update produce/fetch throttle time metrics for any request throttle |  Major | clients | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5147](https://issues.apache.org/jira/browse/KAFKA-5147) | KafkaProducer's TransactionManager needs a review on synchronization |  Blocker | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-4421](https://issues.apache.org/jira/browse/KAFKA-4421) | Update release process so that Scala 2.12 artifacts are published |  Major | build | Ismael Juma | Ewen Cheslack-Postava |
| [KAFKA-4973](https://issues.apache.org/jira/browse/KAFKA-4973) | Transient failure of AdminClientTest.testDeleteRecordsWithException |  Major | . | Ismael Juma | Dong Lin |
| [KAFKA-5128](https://issues.apache.org/jira/browse/KAFKA-5128) | TransactionCoordinator - Check inter broker protocol and message format and raise errors if incompatible |  Blocker | . | Damian Guy | Damian Guy |
| [KAFKA-4660](https://issues.apache.org/jira/browse/KAFKA-4660) | Improve test coverage KafkaStreams |  Minor | streams | Damian Guy | Umesh Chaudhary |
| [KAFKA-5191](https://issues.apache.org/jira/browse/KAFKA-5191) | Autogenerate Consumer Fetcher metrics |  Major | . | James Cheng | James Cheng |
| [KAFKA-5260](https://issues.apache.org/jira/browse/KAFKA-5260) | Producer should not send AbortTxn unless transaction has actually begun |  Blocker | clients, core, producer | Jason Gustafson | Damian Guy |
| [KAFKA-5202](https://issues.apache.org/jira/browse/KAFKA-5202) | Handle topic deletion for ongoing transactions |  Blocker | clients, core, producer | Jason Gustafson | Guozhang Wang |
| [KAFKA-5251](https://issues.apache.org/jira/browse/KAFKA-5251) | Producer should drop queued sends when transaction is aborted |  Blocker | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5308](https://issues.apache.org/jira/browse/KAFKA-5308) | TC should handle UNSUPPORTED\_FOR\_MESSAGE\_FORMAT in WriteTxnMarker response |  Blocker | clients, core, producer | Jason Gustafson | Damian Guy |
| [KAFKA-5093](https://issues.apache.org/jira/browse/KAFKA-5093) | Load only batch header when rebuilding producer ID map |  Blocker | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-5291](https://issues.apache.org/jira/browse/KAFKA-5291) | AdminClient should not trigger auto creation of topics |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-5340](https://issues.apache.org/jira/browse/KAFKA-5340) | Add additional test cases for batch splitting to ensure idempotent/transactional metadata is preserved |  Blocker | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5351](https://issues.apache.org/jira/browse/KAFKA-5351) | Broker clean bounce test puts the broker into a 'CONCURRENT\_TRANSACTIONS' state permanently |  Blocker | clients, core, producer | Apurva Mehta | Apurva Mehta |
| [KAFKA-5281](https://issues.apache.org/jira/browse/KAFKA-5281) | System tests for KIP-98 / transactions |  Blocker | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5283](https://issues.apache.org/jira/browse/KAFKA-5283) | Update clients and server code to make sure that epoch and sequence numbers wrap around |  Blocker | clients, core, producer | Apurva Mehta | Jason Gustafson |
| [KAFKA-5365](https://issues.apache.org/jira/browse/KAFKA-5365) | Fix regression in compressed message iteration affecting magic v0 and v1 |  Blocker | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5282](https://issues.apache.org/jira/browse/KAFKA-5282) | Transactions integration test: Use factory methods to keep track of open producers and consumers and close them all on tearDown |  Major | clients, core, producer | Apurva Mehta | Vahid Hashemian |
| [KAFKA-3264](https://issues.apache.org/jira/browse/KAFKA-3264) | Mark the old Scala consumer and related classes as deprecated |  Major | . | Grant Henke | Vahid Hashemian |
| [KAFKA-5322](https://issues.apache.org/jira/browse/KAFKA-5322) | Resolve AddPartitions response error code inconsistency |  Blocker | clients, core, producer | Jason Gustafson | Apurva Mehta |
| [KAFKA-5019](https://issues.apache.org/jira/browse/KAFKA-5019) | Exactly-once upgrade notes |  Blocker | clients, core, producer | Ismael Juma | Jason Gustafson |
| [KAFKA-5355](https://issues.apache.org/jira/browse/KAFKA-5355) | Broker returns messages beyond "latest stable offset" to transactional consumer in read\_committed mode |  Blocker | core | Matthias J. Sax | Jason Gustafson |
| [KAFKA-5357](https://issues.apache.org/jira/browse/KAFKA-5357) | StackOverFlow error in transaction coordinator |  Blocker | . | Apurva Mehta | Damian Guy |
| [KAFKA-5376](https://issues.apache.org/jira/browse/KAFKA-5376) | Transactions: Concurrent transactional consumer reads aborted messages |  Blocker | . | Apurva Mehta | Jason Gustafson |
| [KAFKA-4948](https://issues.apache.org/jira/browse/KAFKA-4948) | Failure in kafka.admin.DescribeConsumerGroupTest.testDescribeExistingGroupWithNoMembersWithNewConsumer |  Major | unit tests | Guozhang Wang | Rajini Sivaram |
| [KAFKA-5364](https://issues.apache.org/jira/browse/KAFKA-5364) | Producer attempts to send transactional messages before adding partitions to transaction |  Blocker | clients, core, producer | Apurva Mehta | Apurva Mehta |
| [KAFKA-5339](https://issues.apache.org/jira/browse/KAFKA-5339) | Transactions system test with hard broker bounces fails sporadically |  Major | clients, core, producer | Apurva Mehta | Apurva Mehta |
| [KAFKA-5378](https://issues.apache.org/jira/browse/KAFKA-5378) | Last Stable Offset not returned in Fetch request |  Critical | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5292](https://issues.apache.org/jira/browse/KAFKA-5292) | Fix authorization checks in AdminClient |  Blocker | . | Ismael Juma | Colin P. McCabe |
| [KAFKA-5427](https://issues.apache.org/jira/browse/KAFKA-5427) | Transactional producer cannot find coordinator when trying to abort transaction after error |  Blocker | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5437](https://issues.apache.org/jira/browse/KAFKA-5437) | TransactionalMessageCopier should be force killed on test shutdown |  Major | clients, core, producer | Jason Gustafson | Apurva Mehta |
| [KAFKA-5429](https://issues.apache.org/jira/browse/KAFKA-5429) | Producer IllegalStateException: Batch has already been completed |  Major | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5428](https://issues.apache.org/jira/browse/KAFKA-5428) | Transactional producer aborts batches incorrectly in abortable error state |  Blocker | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5438](https://issues.apache.org/jira/browse/KAFKA-5438) | UnsupportedOperationException in WriteTxnMarkers handler |  Blocker | clients, core, producer | Jason Gustafson | Apurva Mehta |
| [KAFKA-5317](https://issues.apache.org/jira/browse/KAFKA-5317) | Update KIP-98 to reflect changes during implementation. |  Blocker | clients, core, producer | Apurva Mehta | Apurva Mehta |
| [KAFKA-5274](https://issues.apache.org/jira/browse/KAFKA-5274) | Review and improve AdminClient Javadoc for the first release (KIP-117) |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-5443](https://issues.apache.org/jira/browse/KAFKA-5443) | Consumer should use last offset from batch to set next fetch offset |  Major | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5275](https://issues.apache.org/jira/browse/KAFKA-5275) | Review and potentially tweak AdminClient API for the initial release (KIP-117) |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-5031](https://issues.apache.org/jira/browse/KAFKA-5031) | Additional validation in validateMessagesAndAssignOffsets |  Critical | clients, core, producer | Ismael Juma |  |
| [KAFKA-5435](https://issues.apache.org/jira/browse/KAFKA-5435) | Produce state lost if no snapshot retained |  Blocker | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5021](https://issues.apache.org/jira/browse/KAFKA-5021) | Update Message Delivery Semantics section to take into account KIP-98 |  Critical | clients, core, producer | Ismael Juma | Jason Gustafson |
| [KAFKA-5502](https://issues.apache.org/jira/browse/KAFKA-5502) | read current brokers from zookeeper upon processing broker change |  Major | . | Onur Karaman | Onur Karaman |
| [KAFKA-5032](https://issues.apache.org/jira/browse/KAFKA-5032) | Think through implications of max.message.size affecting record batches in message format V2 |  Critical | clients, core, producer | Ismael Juma | Apurva Mehta |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4679](https://issues.apache.org/jira/browse/KAFKA-4679) | Remove unstable markers from Connect APIs |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-5045](https://issues.apache.org/jira/browse/KAFKA-5045) | KTable materialization and improved semantics |  Major | streams | Eno Thereska | Eno Thereska |
| [KAFKA-3763](https://issues.apache.org/jira/browse/KAFKA-3763) | Remove deprecated APIs for 0.11.0.0 |  Major | . | Ismael Juma |  |
| [KAFKA-4422](https://issues.apache.org/jira/browse/KAFKA-4422) | Drop support for Scala 2.10 (KIP-119) |  Major | . | Ismael Juma | Ismael Juma |


