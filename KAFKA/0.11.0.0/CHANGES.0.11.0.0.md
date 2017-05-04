
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

## Release 0.11.0.0 - 2017-06-14



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4864](https://issues.apache.org/jira/browse/KAFKA-4864) | Kafka Secure Migrator tool doesn't secure all the nodes |  Critical | . | Stephane Maarek |  |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4720](https://issues.apache.org/jira/browse/KAFKA-4720) | Add KStream.peek(ForeachAction\<K,V\>) |  Major | streams | Steven Schlansker | Steven Schlansker |
| [KAFKA-4881](https://issues.apache.org/jira/browse/KAFKA-4881) | Add internal leave.group.on.close config to consumer |  Major | clients | Damian Guy | Damian Guy |
| [KAFKA-4586](https://issues.apache.org/jira/browse/KAFKA-4586) | Add purgeDataBefore() API in AdminClient |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-4208](https://issues.apache.org/jira/browse/KAFKA-4208) | Add Record Headers |  Critical | clients, core | Michael Andre Pearce (IG) |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3714](https://issues.apache.org/jira/browse/KAFKA-3714) | Allow users greater access to register custom streams metrics |  Minor | streams | Jeff Klukas | Eno Thereska |
| [KAFKA-4684](https://issues.apache.org/jira/browse/KAFKA-4684) | Kafka does not offer kafka-configs.bat on Windows box |  Minor | tools | huxi | huxi |
| [KAFKA-4636](https://issues.apache.org/jira/browse/KAFKA-4636) | Per listener security setting overrides (KIP-103) |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-4613](https://issues.apache.org/jira/browse/KAFKA-4613) | Treat null-key records the same way for joins and aggreations |  Major | streams | Matthias J. Sax | Jeyhun Karimov |
| [KAFKA-2955](https://issues.apache.org/jira/browse/KAFKA-2955) | Add Prompt to kafka-console-producer |  Major | producer | Jesse Anderson | Manikumar |
| [KAFKA-4733](https://issues.apache.org/jira/browse/KAFKA-4733) | Improve Streams Reset Tool console output |  Minor | streams, tools | Matthias J. Sax | Gwen Shapira |
| [KAFKA-4702](https://issues.apache.org/jira/browse/KAFKA-4702) | Parametrize streams benchmarks to run at scale |  Major | streams | Eno Thereska | Eno Thereska |
| [KAFKA-4709](https://issues.apache.org/jira/browse/KAFKA-4709) | Error message from Struct.validate() should include the name of the offending field. |  Minor | KafkaConnect | Jeremy Custenborder | Aegeaner |
| [KAFKA-4775](https://issues.apache.org/jira/browse/KAFKA-4775) | Fix findbugs warnings in kafka-tools |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4317](https://issues.apache.org/jira/browse/KAFKA-4317) | RocksDB checkpoint files lost on kill -9 |  Critical | streams | Greg Fodor | Damian Guy |
| [KAFKA-4774](https://issues.apache.org/jira/browse/KAFKA-4774) | Inner classes which don't need a reference to the outer class should be static |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4340](https://issues.apache.org/jira/browse/KAFKA-4340) | Change the default value of log.message.timestamp.difference.max.ms to the same as log.retention.ms |  Major | core | Jiangjie Qin | Jiangjie Qin |
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
| [KAFKA-5068](https://issues.apache.org/jira/browse/KAFKA-5068) | Optionally print out metrics after running the perf tests |  Major | tools | Jun Rao | huxi |
| [KAFKA-5094](https://issues.apache.org/jira/browse/KAFKA-5094) | Censor SCRAM config change logging |  Major | log | Johan Ström | Rajini Sivaram |
| [KAFKA-4144](https://issues.apache.org/jira/browse/KAFKA-4144) | Allow per stream/table timestamp extractor |  Major | streams | Elias Levy | Jeyhun Karimov |
| [KAFKA-5111](https://issues.apache.org/jira/browse/KAFKA-5111) | Improve internal Task APIs |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5091](https://issues.apache.org/jira/browse/KAFKA-5091) | ReassignPartitionsCommand should protect against empty replica list assignment |  Major | tools | Ryan P | huxi |
| [KAFKA-5118](https://issues.apache.org/jira/browse/KAFKA-5118) | Improve message for Kafka failed startup with non-Kafka data in data.dirs |  Minor | core | Dustin Cote | huxi |
| [KAFKA-5104](https://issues.apache.org/jira/browse/KAFKA-5104) | DumpLogSegments should not open index files with \`rw\` |  Minor | log | Yeva Byzek | huxi |


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
| [KAFKA-3959](https://issues.apache.org/jira/browse/KAFKA-3959) | \_\_consumer\_offsets wrong number of replicas at startup |  Blocker | consumer, offset manager, replication | Alban Hurtaud | Onur Karaman |
| [KAFKA-4809](https://issues.apache.org/jira/browse/KAFKA-4809) | docker/run\_tests.sh should set up /opt/kafka-dev to be the source directory |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4789](https://issues.apache.org/jira/browse/KAFKA-4789) | ProcessorTopologyTestDriver does not forward extracted timestamps to internal topics |  Major | streams | Hamidreza Afzali | Hamidreza Afzali |
| [KAFKA-4811](https://issues.apache.org/jira/browse/KAFKA-4811) | ReplicaFetchThread may fail to create due to existing metric |  Major | replication | Jun Rao | huxi |
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
| [KAFKA-4783](https://issues.apache.org/jira/browse/KAFKA-4783) | Blackbox or pass through converter or ByteArrayConverter for connect |  Major | KafkaConnect | Antony Stubbs | Ewen Cheslack-Postava |
| [KAFKA-4885](https://issues.apache.org/jira/browse/KAFKA-4885) | processstreamwithcachedstatestore﻿ and other streams benchmarks fail occasionally |  Major | streams | Eno Thereska | Guozhang Wang |
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
| [KAFKA-4866](https://issues.apache.org/jira/browse/KAFKA-4866) | Kafka console consumer property is ignored |  Trivial | core, tools | Frank Lyaruu | huxi |
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
| [KAFKA-5140](https://issues.apache.org/jira/browse/KAFKA-5140) | Flaky ResetIntegrationTest |  Major | streams, unit tests | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-4899](https://issues.apache.org/jira/browse/KAFKA-4899) | Fix findbugs warnings in kafka-core |  Major | core | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-3754](https://issues.apache.org/jira/browse/KAFKA-3754) | Kafka default -Xloggc settings should include GC log rotation flags |  Minor | . | Ryan P | Ryan P |
| [KAFKA-5144](https://issues.apache.org/jira/browse/KAFKA-5144) | MinTimestampTracker uses confusing variable names |  Trivial | streams | Michal Borowiecki | Michal Borowiecki |
| [KAFKA-5055](https://issues.apache.org/jira/browse/KAFKA-5055) | Kafka Streams skipped-records-rate sensor producing nonzero values even when FailOnInvalidTimestamp is used as extractor |  Major | streams | Nikki Thean | Davor Poldrugo |
| [KAFKA-4925](https://issues.apache.org/jira/browse/KAFKA-4925) | Add a configurable delay to the initial consumer group rebalance |  Major | core | Damian Guy | Damian Guy |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4574](https://issues.apache.org/jira/browse/KAFKA-4574) | Transient failure in ZooKeeperSecurityUpgradeTest.test\_zk\_security\_upgrade with security\_protocol = SASL\_PLAINTEXT, SSL |  Major | system tests | Shikhar Bhushan | Apurva Mehta |
| [KAFKA-4703](https://issues.apache.org/jira/browse/KAFKA-4703) | Test with two SASL\_SSL listeners with different JAAS contexts |  Major | . | Ismael Juma | Balint Molnar |


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


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4679](https://issues.apache.org/jira/browse/KAFKA-4679) | Remove unstable markers from Connect APIs |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-5045](https://issues.apache.org/jira/browse/KAFKA-5045) | KTable materialization and improved semantics |  Major | streams | Eno Thereska | Eno Thereska |


