
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

## Release 0.10.1.0 - Unreleased (as of 2016-07-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3176](https://issues.apache.org/jira/browse/KAFKA-3176) | Allow console consumer to consume from particular partitions when new consumer is used. |  Major | tools | Jiangjie Qin | Vahid Hashemian |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3644](https://issues.apache.org/jira/browse/KAFKA-3644) | Use Boolean protocol type for StopReplicaRequest delete\_partitions |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-2800](https://issues.apache.org/jira/browse/KAFKA-2800) | Update outdated dependencies |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-2547](https://issues.apache.org/jira/browse/KAFKA-2547) | Make DynamicConfigManager to use the ZkNodeChangeNotificationListener introduced as part of KAFKA-2211 |  Major | . | Parth Brahmbhatt | Parth Brahmbhatt |
| [KAFKA-3683](https://issues.apache.org/jira/browse/KAFKA-3683) | Add file descriptor recommendation to ops guide |  Trivial | website | Dustin Cote | Dustin Cote |
| [KAFKA-3732](https://issues.apache.org/jira/browse/KAFKA-3732) | Add an auto accept option to kafka-acls.sh |  Minor | admin | Mickael Maison | Mickael Maison |
| [KAFKA-3760](https://issues.apache.org/jira/browse/KAFKA-3760) | Set broker state as running after publishing to ZooKeeper |  Minor | core | Roger Hoover | Roger Hoover |
| [KAFKA-3749](https://issues.apache.org/jira/browse/KAFKA-3749) | "BOOSTRAP\_SERVERS\_DOC" typo in CommonClientConfigs |  Trivial | config | Manu Zhang | Manu Zhang |
| [KAFKA-3158](https://issues.apache.org/jira/browse/KAFKA-3158) | ConsumerGroupCommand should tell whether group is actually dead |  Minor | admin, consumer | Jason Gustafson | Ishita Mandhan |
| [KAFKA-3765](https://issues.apache.org/jira/browse/KAFKA-3765) | Code style issues in Kafka |  Minor | core | Rekha Joshi | Rekha Joshi |
| [KAFKA-3768](https://issues.apache.org/jira/browse/KAFKA-3768) | Replace all pattern match on boolean value by if/elase block. |  Minor | . | Satendra Kumar | Satendra Kumar |
| [KAFKA-3771](https://issues.apache.org/jira/browse/KAFKA-3771) | Improving Kafka code |  Major | core | Rekha Joshi | Rekha Joshi |
| [KAFKA-724](https://issues.apache.org/jira/browse/KAFKA-724) | Allow automatic socket.send.buffer from operating system |  Major | . | Pablo Barrera | Rekha Joshi |
| [KAFKA-3748](https://issues.apache.org/jira/browse/KAFKA-3748) | Add consumer-property to console tools consumer (similar to --producer-property) |  Major | core | Bharat Viswanadham | Bharat Viswanadham |
| [KAFKA-3711](https://issues.apache.org/jira/browse/KAFKA-3711) | Allow configuration of MetricsReporter subclasses |  Minor | clients, streams | Jeff Klukas | Guozhang Wang |
| [KAFKA-3699](https://issues.apache.org/jira/browse/KAFKA-3699) | Update protocol page on website to explain how KIP-35 should be used |  Major | . | Ismael Juma | Ashish K Singh |
| [KAFKA-3762](https://issues.apache.org/jira/browse/KAFKA-3762) | Log.loadSegments() should log the message in exception |  Major | core | Jun Rao | Ishita Mandhan |
| [KAFKA-3842](https://issues.apache.org/jira/browse/KAFKA-3842) | Add Helper Functions Into TestUtils |  Major | . | Bill Bejeck | Bill Bejeck |
| [KAFKA-3846](https://issues.apache.org/jira/browse/KAFKA-3846) | Connect record types should include timestamps |  Major | KafkaConnect | Ewen Cheslack-Postava | Shikhar Bhushan |
| [KAFKA-3753](https://issues.apache.org/jira/browse/KAFKA-3753) | Add approximateNumEntries() to the StateStore interface for metrics reporting |  Minor | streams | Jeff Klukas | Jeff Klukas |
| [KAFKA-3920](https://issues.apache.org/jira/browse/KAFKA-3920) | Add Schema source connector to Kafka Connect |  Major | KafkaConnect | Liquan Pei | Liquan Pei |
| [KAFKA-3844](https://issues.apache.org/jira/browse/KAFKA-3844) | Sort configuration items in log |  Trivial | clients | Xing Huang | Rekha Joshi |
| [KAFKA-3849](https://issues.apache.org/jira/browse/KAFKA-3849) | Add explanation on why polling every second in MirrorMaker is required |  Major | . | Ashish K Singh | Ashish K Singh |
| [KAFKA-3942](https://issues.apache.org/jira/browse/KAFKA-3942) | Change IntegrationTestUtils.purgeLocalStreamsState to use java.io.tmpdir |  Trivial | streams | Damian Guy | Damian Guy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3650](https://issues.apache.org/jira/browse/KAFKA-3650) | AWS test script fails to install vagrant |  Trivial | . | Roger Hoover | Roger Hoover |
| [KAFKA-2684](https://issues.apache.org/jira/browse/KAFKA-2684) | Add force option to TopicCommand & ConfigCommand to suppress console prompts |  Trivial | . | Ben Stopford | Ben Stopford |
| [KAFKA-3525](https://issues.apache.org/jira/browse/KAFKA-3525) | max.reserved.broker.id off-by-one error |  Major | config | Alan Braithwaite | Manikumar Reddy |
| [KAFKA-3716](https://issues.apache.org/jira/browse/KAFKA-3716) | Check against negative timestamps |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-2935](https://issues.apache.org/jira/browse/KAFKA-2935) | Remove vestigial CLUSTER\_CONFIG in WorkerConfig |  Major | KafkaConnect | Ewen Cheslack-Postava | Shikhar Bhushan |
| [KAFKA-3735](https://issues.apache.org/jira/browse/KAFKA-3735) | RocksDB objects needs to be disposed after usage |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-3723](https://issues.apache.org/jira/browse/KAFKA-3723) | Cannot change size of schema cache for JSON converter |  Major | KafkaConnect | Christian Posta | Ewen Cheslack-Postava |
| [KAFKA-3710](https://issues.apache.org/jira/browse/KAFKA-3710) | MemoryOffsetBackingStore creates a non-daemon thread that prevents clean shutdown |  Major | KafkaConnect | Peter Davis | Ewen Cheslack-Postava |
| [KAFKA-3682](https://issues.apache.org/jira/browse/KAFKA-3682) | ArrayIndexOutOfBoundsException thrown by SkimpyOffsetMap.get() when full |  Major | core | Edoardo Comar | Edoardo Comar |
| [KAFKA-3767](https://issues.apache.org/jira/browse/KAFKA-3767) | Failed Kafka Connect's unit test with Unknown license. |  Major | KafkaConnect, unit tests | Sasaki Toru | Sasaki Toru |
| [KAFKA-3774](https://issues.apache.org/jira/browse/KAFKA-3774) | GetOffsetShell tool reports 'Missing required argument "[time]"' despite the default |  Minor | tools | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-3645](https://issues.apache.org/jira/browse/KAFKA-3645) | NPE in ConsumerGroupCommand and ConsumerOffsetChecker when running in a secure env |  Minor | . | Arun Mahadevan | Arun Mahadevan |
| [KAFKA-2948](https://issues.apache.org/jira/browse/KAFKA-2948) | Kafka producer does not cope well with topic deletions |  Major | producer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-3781](https://issues.apache.org/jira/browse/KAFKA-3781) | Errors.exceptionName() can throw NPE |  Major | . | Grant Henke | Ismael Juma |
| [KAFKA-3501](https://issues.apache.org/jira/browse/KAFKA-3501) | Console consumer process hangs on SIGINT |  Major | consumer, core | Sébastien Launay | Neha Narkhede |
| [KAFKA-3786](https://issues.apache.org/jira/browse/KAFKA-3786) | Avoid unused property from parent configs causing WARN entries |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-3830](https://issues.apache.org/jira/browse/KAFKA-3830) | getTGT() debug logging exposes confidential information |  Major | security | Ismael Juma | Ismael Juma |
| [KAFKA-3840](https://issues.apache.org/jira/browse/KAFKA-3840) | OS auto tuning for socket buffer size in clients not allowed through configuration |  Minor | . | Sébastien Launay |  |
| [KAFKA-3561](https://issues.apache.org/jira/browse/KAFKA-3561) | Auto create through topic for KStream aggregation and join |  Major | streams | Guozhang Wang | Damian Guy |
| [KAFKA-3691](https://issues.apache.org/jira/browse/KAFKA-3691) | Confusing logging during metadata update timeout |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-3810](https://issues.apache.org/jira/browse/KAFKA-3810) | replication of internal topics should not be limited by replica.fetch.max.bytes |  Major | . | Onur Karaman | Onur Karaman |
| [KAFKA-3850](https://issues.apache.org/jira/browse/KAFKA-3850) | WorkerSinkTask should retry commits if woken up during rebalance or shutdown |  Major | KafkaConnect | Jason Gustafson | Jason Gustafson |
| [KAFKA-3864](https://issues.apache.org/jira/browse/KAFKA-3864) | Kafka Connect Struct.get returning defaultValue from Struct not the field schema |  Blocker | KafkaConnect | Andrew Stevenson | Ewen Cheslack-Postava |
| [KAFKA-3896](https://issues.apache.org/jira/browse/KAFKA-3896) | Unstable test KStreamRepartitionJoinTest.shouldCorrectlyRepartitionOnJoinOperations |  Major | unit tests | Ashish K Singh | Damian Guy |
| [KAFKA-3761](https://issues.apache.org/jira/browse/KAFKA-3761) | Controller has RunningAsBroker instead of RunningAsController state |  Major | . | Ismael Juma | Roger Hoover |
| [KAFKA-3854](https://issues.apache.org/jira/browse/KAFKA-3854) | Subsequent regex subscription calls fail |  Major | consumer | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-3794](https://issues.apache.org/jira/browse/KAFKA-3794) | Add Stream / Table prefix in print functions |  Major | streams | Guozhang Wang | Bill Bejeck |
| [KAFKA-3111](https://issues.apache.org/jira/browse/KAFKA-3111) | java.lang.ArithmeticException: / by zero in ConsumerPerformance |  Major | core | Jun Rao | Vahid Hashemian |
| [KAFKA-2941](https://issues.apache.org/jira/browse/KAFKA-2941) | Docs for key/value converter in Kafka connect are unclear |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-3562](https://issues.apache.org/jira/browse/KAFKA-3562) | Null Pointer Exception Found when delete topic and Using New Producer |  Minor | . | Pengwei | Rajini Sivaram |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3863](https://issues.apache.org/jira/browse/KAFKA-3863) | Add system test for connector failure/restart |  Major | KafkaConnect, system tests | Jason Gustafson | Jason Gustafson |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3678](https://issues.apache.org/jira/browse/KAFKA-3678) | Fix stream integration test timeouts |  Major | . | Eno Thereska | Eno Thereska |
| [KAFKA-3660](https://issues.apache.org/jira/browse/KAFKA-3660) | Log exception message in ControllerBrokerRequestBatch |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [KAFKA-3443](https://issues.apache.org/jira/browse/KAFKA-3443) | Support regex topics in addSource() and stream() |  Major | streams | Guozhang Wang | Bill Bejeck |
| [KAFKA-2720](https://issues.apache.org/jira/browse/KAFKA-2720) | Periodic purging groups in the coordinator |  Major | consumer | Guozhang Wang | Jason Gustafson |
| [KAFKA-3865](https://issues.apache.org/jira/browse/KAFKA-3865) | Transient failures in org.apache.kafka.connect.runtime.WorkerSourceTaskTest.testSlowTaskStart |  Major | unit tests | Guozhang Wang | Jason Gustafson |
| [KAFKA-3874](https://issues.apache.org/jira/browse/KAFKA-3874) | Transient test failure: org.apache.kafka.streams.integration.JoinIntegrationTest.shouldCountClicksPerRegion |  Major | streams, unit tests | Ismael Juma | Damian Guy |
| [KAFKA-3872](https://issues.apache.org/jira/browse/KAFKA-3872) | OOM while running Kafka Streams integration tests |  Major | streams, unit tests | Ismael Juma | Eno Thereska |
| [KAFKA-3926](https://issues.apache.org/jira/browse/KAFKA-3926) | Transient failures in org.apache.kafka.streams.integration.RegexSourceIntegrationTest |  Major | streams, unit tests | Guozhang Wang | Bill Bejeck |
| [KAFKA-2945](https://issues.apache.org/jira/browse/KAFKA-2945) | CreateTopic - protocol and server side implementation |  Major | . | Grant Henke | Grant Henke |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3905](https://issues.apache.org/jira/browse/KAFKA-3905) | Check for null in KafkaConsumer#{subscribe, assign} |  Minor | clients | Xing Huang | Rekha Joshi |


