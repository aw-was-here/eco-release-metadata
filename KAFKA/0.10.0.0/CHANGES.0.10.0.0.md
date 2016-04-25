
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

## Release 0.10.0.0 - Unreleased (as of 2016-04-25)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3044](https://issues.apache.org/jira/browse/KAFKA-3044) | Consumer.poll doesnot return messages when poll interval is less |  Major | clients | Praveen Devarao | Praveen Devarao |
| [KAFKA-3029](https://issues.apache.org/jira/browse/KAFKA-3029) | Make class org.apache.kafka.common.TopicPartition Serializable |  Major | clients | Praveen Devarao | Praveen Devarao |
| [KAFKA-3372](https://issues.apache.org/jira/browse/KAFKA-3372) | Trailing space in Kafka ConsumerConfig |  Major | consumer | Kundan | Manikumar Reddy |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3046](https://issues.apache.org/jira/browse/KAFKA-3046) | add ByteBuffer Serializer&Deserializer |  Major | clients | Xin Wang |  |
| [KAFKA-2832](https://issues.apache.org/jira/browse/KAFKA-2832) | support exclude.internal.topics in new consumer |  Blocker | clients | Jun Rao | Vahid Hashemian |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2879](https://issues.apache.org/jira/browse/KAFKA-2879) | Make MiniKDC test service slightly more generic |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-2881](https://issues.apache.org/jira/browse/KAFKA-2881) | Documentation improvement |  Major | . | Gwen Shapira | Guozhang Wang |
| [KAFKA-2958](https://issues.apache.org/jira/browse/KAFKA-2958) | Remove duplicate API key mapping functionality |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-2957](https://issues.apache.org/jira/browse/KAFKA-2957) | Fix typos in Kafka documentation |  Trivial | . | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-2668](https://issues.apache.org/jira/browse/KAFKA-2668) | Add a metric that records the total number of metrics |  Major | . | Joel Koshy | Dong Lin |
| [KAFKA-2992](https://issues.apache.org/jira/browse/KAFKA-2992) | Trace log statements in the replica fetcher inner loop create large amounts of garbage |  Minor | core | Cory Kolbeck |  |
| [KAFKA-2964](https://issues.apache.org/jira/browse/KAFKA-2964) | Split Security Rolling Upgrade Test By Client and Broker Protocols |  Minor | . | Ben Stopford | Ben Stopford |
| [KAFKA-3024](https://issues.apache.org/jira/browse/KAFKA-3024) | Remove old patch review tools |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-3002](https://issues.apache.org/jira/browse/KAFKA-3002) | Make available to specify hostname with Uppercase at broker list |  Minor | clients | Sasaki Toru |  |
| [KAFKA-3043](https://issues.apache.org/jira/browse/KAFKA-3043) | Replace request.required.acks with acks in docs |  Major | website | Sasaki Toru |  |
| [KAFKA-3058](https://issues.apache.org/jira/browse/KAFKA-3058) | remove the usage of deprecated config properties |  Major | core | Jun Rao | Konrad Kalita |
| [KAFKA-2929](https://issues.apache.org/jira/browse/KAFKA-2929) | Migrate server side error mapping functionality |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-3084](https://issues.apache.org/jira/browse/KAFKA-3084) | Topic existence checks in topic commands (create, alter, delete) |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-3019](https://issues.apache.org/jira/browse/KAFKA-3019) | Add an exceptionName method to Errors |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-3077](https://issues.apache.org/jira/browse/KAFKA-3077) | Enable KafkaLog4jAppender to work with SASL enabled brokers. |  Major | clients | Ashish K Singh | Ashish K Singh |
| [KAFKA-3105](https://issues.apache.org/jira/browse/KAFKA-3105) | Use `Utils.atomicMoveWithFallback` instead of `File.rename` |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-3119](https://issues.apache.org/jira/browse/KAFKA-3119) | Adding -daemon option to zookeeper-server-start.sh USAGE |  Minor | config | Atul Soman | Atul Soman |
| [KAFKA-3012](https://issues.apache.org/jira/browse/KAFKA-3012) | Avoid reserved.broker.max.id collisions on upgrade |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-3076](https://issues.apache.org/jira/browse/KAFKA-3076) | BrokerChangeListener should log the brokers in order |  Major | core | Jun Rao | Konrad Kalita |
| [KAFKA-3116](https://issues.apache.org/jira/browse/KAFKA-3116) | Failure to build |  Major | build | edwardt | Vahid Hashemian |
| [KAFKA-3086](https://issues.apache.org/jira/browse/KAFKA-3086) | unused handle method in MirrorMakerMessageHandler |  Major | . | Jun Rao | Jakub Nowak |
| [KAFKA-3164](https://issues.apache.org/jira/browse/KAFKA-3164) | Document client and mirrormaker upgrade procedure/requirements |  Minor | . | Grant Henke | Grant Henke |
| [KAFKA-3092](https://issues.apache.org/jira/browse/KAFKA-3092) | Rename SinkTask.onPartitionsAssigned/onPartitionsRevoked and Clarify Contract |  Major | KafkaConnect | Jason Gustafson | Jason Gustafson |
| [KAFKA-3191](https://issues.apache.org/jira/browse/KAFKA-3191) | Improve offset committing JavaDoc in KafkaConsumer |  Minor | consumer | Adam Kunicki | Adam Kunicki |
| [KAFKA-3162](https://issues.apache.org/jira/browse/KAFKA-3162) | KIP-42: Add Producer and Consumer Interceptors |  Major | . | Anna Povzner | Anna Povzner |
| [KAFKA-3227](https://issues.apache.org/jira/browse/KAFKA-3227) | Conservative update of Kafka dependencies |  Major | build | Ismael Juma | Ismael Juma |
| [KAFKA-3007](https://issues.apache.org/jira/browse/KAFKA-3007) | Implement max.poll.records for new consumer (KIP-41) |  Major | consumer | aarti gupta | Jason Gustafson |
| [KAFKA-3272](https://issues.apache.org/jira/browse/KAFKA-3272) | Add debugging options to kafka-run-class.sh so we can easily run remote debugging |  Minor | tools | Christian Posta |  |
| [KAFKA-3093](https://issues.apache.org/jira/browse/KAFKA-3093) | Keep track of connector and task status info, expose it via the REST API |  Major | KafkaConnect | jin xing | Jason Gustafson |
| [KAFKA-3259](https://issues.apache.org/jira/browse/KAFKA-3259) | KIP-31/KIP-32 clean-ups |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-3253](https://issues.apache.org/jira/browse/KAFKA-3253) | Skip duplicate message size check if there is no re-compression during log appending. |  Major | . | Jiangjie Qin | Ismael Juma |
| [KAFKA-3291](https://issues.apache.org/jira/browse/KAFKA-3291) | DumpLogSegment tool should also provide an option to only verify index sanity. |  Major | tools | Parth Brahmbhatt | Parth Brahmbhatt |
| [KAFKA-3273](https://issues.apache.org/jira/browse/KAFKA-3273) | MessageFormatter and MessageReader interfaces should be resilient to changes |  Major | tools | Ismael Juma | Ismael Juma |
| [KAFKA-3196](https://issues.apache.org/jira/browse/KAFKA-3196) | KIP-42 (part 2): add record size and CRC to RecordMetadata and ConsumerRecords |  Major | . | Anna Povzner | Anna Povzner |
| [KAFKA-3314](https://issues.apache.org/jira/browse/KAFKA-3314) | Add CDDL license to LICENSE and NOTICE file |  Blocker | . | Jun Rao | Jun Rao |
| [KAFKA-3339](https://issues.apache.org/jira/browse/KAFKA-3339) | org.apache.kafka.clients.consumer.KafkaConsumer javadoc for seekToBeginning, seekToEnd incomplete |  Major | clients | Harald Kirsch | Ashish K Singh |
| [KAFKA-3352](https://issues.apache.org/jira/browse/KAFKA-3352) | Avoid DNS reverse lookups |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-3318](https://issues.apache.org/jira/browse/KAFKA-3318) | Improve consumer rebalance error messaging |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-3375](https://issues.apache.org/jira/browse/KAFKA-3375) | Suppress and fix compiler warnings where reasonable and tweak compiler settings |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-3013](https://issues.apache.org/jira/browse/KAFKA-3013) | Display the topic-partition in the exception message for expired batches in recordAccumulator |  Trivial | clients | Mayuresh Gharat | Mayuresh Gharat |
| [KAFKA-1215](https://issues.apache.org/jira/browse/KAFKA-1215) | Rack-Aware replica assignment option |  Critical | replication | Joris Van Remoortere | Allen Wang |
| [KAFKA-3260](https://issues.apache.org/jira/browse/KAFKA-3260) | Increase the granularity of commit for SourceTask |  Major | KafkaConnect | Jeremy Custenborder | Ewen Cheslack-Postava |
| [KAFKA-3403](https://issues.apache.org/jira/browse/KAFKA-3403) | Upgrade ZkClient to 0.8 |  Critical | . | Grant Henke | Grant Henke |
| [KAFKA-3303](https://issues.apache.org/jira/browse/KAFKA-3303) | Pass partial record metadata to Interceptor onAcknowledgement in case of errors |  Blocker | . | Anna Povzner | Anna Povzner |
| [KAFKA-3411](https://issues.apache.org/jira/browse/KAFKA-3411) | Streams: stop using "job" terminology, rename job.id to application.id |  Minor | streams | Michael Noll |  |
| [KAFKA-3006](https://issues.apache.org/jira/browse/KAFKA-3006) | Make collection default container type for sequences in the consumer API |  Blocker | clients | Pierre-Yves Ritschard | Pierre-Yves Ritschard |
| [KAFKA-2511](https://issues.apache.org/jira/browse/KAFKA-2511) | KIP-31 & KIP-32: message format change + adding timestamp to messages |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-3426](https://issues.apache.org/jira/browse/KAFKA-3426) | Improve protocol type errors when invalid sizes are received |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-3319](https://issues.apache.org/jira/browse/KAFKA-3319) | Improve session timeout broker and client configuration documentation |  Major | config, consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-3301](https://issues.apache.org/jira/browse/KAFKA-3301) | CommonClientConfigs.METRICS\_SAMPLE\_WINDOW\_MS\_DOC  is incorrect |  Major | . | Jun Rao | Grant Henke |
| [KAFKA-3447](https://issues.apache.org/jira/browse/KAFKA-3447) | partitionState in UpdateMetadataRequest not logged properly state-change log |  Major | . | Jun Rao | Ismael Juma |
| [KAFKA-3431](https://issues.apache.org/jira/browse/KAFKA-3431) | Remove `o.a.k.common.BrokerEndPoint` in favour of `Node` |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-3432](https://issues.apache.org/jira/browse/KAFKA-3432) | Cluster.update() thread-safety |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-3445](https://issues.apache.org/jira/browse/KAFKA-3445) | ConnectorConfig should validate TASKS\_MAX\_CONFIG's lower bound limit |  Trivial | config | Ryan P |  |
| [KAFKA-3407](https://issues.apache.org/jira/browse/KAFKA-3407) | ErrorLoggingCallback trims helpful diagnostic information. |  Minor | . | Jeremy Custenborder |  |
| [KAFKA-3463](https://issues.apache.org/jira/browse/KAFKA-3463) | Change default consumer receive buffer size to 64K |  Major | consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-3425](https://issues.apache.org/jira/browse/KAFKA-3425) | Add missing notes to upgrade docs |  Blocker | consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-3475](https://issues.apache.org/jira/browse/KAFKA-3475) | Introduce our own `MiniKdc` |  Major | security | Ismael Juma | Ismael Juma |
| [KAFKA-2930](https://issues.apache.org/jira/browse/KAFKA-2930) | Update references to ZooKeeper in the docs |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [KAFKA-3419](https://issues.apache.org/jira/browse/KAFKA-3419) | New consumer javadoc unclear on topic subscription vs partition assignment |  Major | consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-3495](https://issues.apache.org/jira/browse/KAFKA-3495) | `NetworkClient.blockingSendAndReceive` should rely on requestTimeout |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-3483](https://issues.apache.org/jira/browse/KAFKA-3483) | Restructure ducktape tests to simplify running subsets of tests |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-3470](https://issues.apache.org/jira/browse/KAFKA-3470) | Consumer group coordinator should take commit requests as effective as heartbeats |  Major | . | Zaiming Shi | Jason Gustafson |
| [KAFKA-3067](https://issues.apache.org/jira/browse/KAFKA-3067) | Fix producer API documentation for case when RequiredAcks \> 1 |  Trivial | producer | Sergiy Zuban | Manikumar Reddy |
| [KAFKA-3582](https://issues.apache.org/jira/browse/KAFKA-3582) | remove references to Copcyat from connect property files |  Minor | KafkaConnect | Jun Rao | Liquan Pei |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2815](https://issues.apache.org/jira/browse/KAFKA-2815) | unit test failure in org.apache.kafka.streams.processor.internals.KafkaStreamingPartitionAssignorTest |  Major | . | Jun Rao | Grant Henke |
| [KAFKA-2814](https://issues.apache.org/jira/browse/KAFKA-2814) | Kafka Connect system tests using REST interface fail on AWS |  Major | KafkaConnect, system tests | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2826](https://issues.apache.org/jira/browse/KAFKA-2826) | Make Kafka Connect ducktape services easier to extend |  Minor | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2859](https://issues.apache.org/jira/browse/KAFKA-2859) | Deadlock in WorkerSourceTask |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2820](https://issues.apache.org/jira/browse/KAFKA-2820) | System tests: log level is no longer propagating from service classes |  Major | . | Geoff Anderson | Geoff Anderson |
| [KAFKA-2824](https://issues.apache.org/jira/browse/KAFKA-2824) | MiniKDC based tests don't run in VirtualBox |  Major | . | Ben Stopford | Ben Stopford |
| [KAFKA-2862](https://issues.apache.org/jira/browse/KAFKA-2862) | Incorrect help description for MirrorMaker's message.handler.args |  Major | . | Ashish K Singh | Ashish K Singh |
| [KAFKA-2872](https://issues.apache.org/jira/browse/KAFKA-2872) | Error starting KafkaStream caused by sink not being connected to parent source/processor nodes |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-2803](https://issues.apache.org/jira/browse/KAFKA-2803) | Add hard bounce system test for distributed Kafka Connect |  Major | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2878](https://issues.apache.org/jira/browse/KAFKA-2878) | Kafka broker throws OutOfMemory exception with invalid join group request |  Critical | clients | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-2892](https://issues.apache.org/jira/browse/KAFKA-2892) | Consumer Docs Use Wrong Method |  Major | clients | Jesse Anderson |  |
| [KAFKA-2906](https://issues.apache.org/jira/browse/KAFKA-2906) | Kafka Connect javadocs not built properly |  Major | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2911](https://issues.apache.org/jira/browse/KAFKA-2911) | Replace Utils.sleep() with Time.sleep() whenever possible |  Major | . | Guozhang Wang | Jason Gustafson |
| [KAFKA-2915](https://issues.apache.org/jira/browse/KAFKA-2915) | System Tests that use bootstrap.servers embedded in jinja files are not working |  Major | . | Ben Stopford |  |
| [KAFKA-2421](https://issues.apache.org/jira/browse/KAFKA-2421) | Upgrade LZ4 to version 1.3 to avoid crashing with IBM Java 7 |  Major | . | Rajini Sivaram | Grant Henke |
| [KAFKA-2902](https://issues.apache.org/jira/browse/KAFKA-2902) | StreamingConfig getConsumerConfiigs uses getRestoreConsumerConfigs instead of  getBaseConsumerConfigs |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-2399](https://issues.apache.org/jira/browse/KAFKA-2399) | Replace Stream.continually with Iterator.continually |  Minor | . | Ismael Juma | Ismael Juma |
| [KAFKA-2973](https://issues.apache.org/jira/browse/KAFKA-2973) | Fix leak of child sensors on remove |  Major | clients | Ismael Juma | Ismael Juma |
| [KAFKA-2965](https://issues.apache.org/jira/browse/KAFKA-2965) | Two variables should be exchanged. |  Minor | controller | Bo Wang |  |
| [KAFKA-2578](https://issues.apache.org/jira/browse/KAFKA-2578) | Client Metadata internal state should be synchronized |  Trivial | . | Jason Gustafson | Edward Ribeiro |
| [KAFKA-2926](https://issues.apache.org/jira/browse/KAFKA-2926) | [MirrorMaker] InternalRebalancer calls wrong method of external rebalancer |  Major | tools | Gwen Shapira | Gwen Shapira |
| [KAFKA-2928](https://issues.apache.org/jira/browse/KAFKA-2928) | system tests: failures in version-related sanity checks |  Major | . | Geoff Anderson | Geoff Anderson |
| [KAFKA-2927](https://issues.apache.org/jira/browse/KAFKA-2927) | System tests: reduce storage footprint of collected logs |  Major | . | Geoff Anderson | Geoff Anderson |
| [KAFKA-2990](https://issues.apache.org/jira/browse/KAFKA-2990) | NoSuchMethodError when Kafka is compiled with 1.8 and run on 1.7 |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-3009](https://issues.apache.org/jira/browse/KAFKA-3009) | Disallow star imports |  Major | . | Gwen Shapira | Manasvi Gupta |
| [KAFKA-3055](https://issues.apache.org/jira/browse/KAFKA-3055) | JsonConverter mangles schema during serialization (fromConnectData) |  Major | KafkaConnect | Kishore Senji | Ewen Cheslack-Postava |
| [KAFKA-2850](https://issues.apache.org/jira/browse/KAFKA-2850) | SslTransportLayerTest.testInvalidEndpointIdentification fails consistently |  Major | clients, security | Flavio Junqueira | Rajini Sivaram |
| [KAFKA-2874](https://issues.apache.org/jira/browse/KAFKA-2874) | zookeeper-server-stop.sh may fail to shutdown ZK and/or may stop unrelated processes |  Major | . | Michael Noll |  |
| [KAFKA-3069](https://issues.apache.org/jira/browse/KAFKA-3069) | Fix recursion in ZkSecurityMigrator |  Major | security | Flavio Junqueira | Flavio Junqueira |
| [KAFKA-2886](https://issues.apache.org/jira/browse/KAFKA-2886) | WorkerSinkTask doesn't catch exceptions from rebalance callbacks |  Major | KafkaConnect | Ewen Cheslack-Postava | Jason Gustafson |
| [KAFKA-3085](https://issues.apache.org/jira/browse/KAFKA-3085) | BrokerChangeListener computes inconsistent live/dead broker list |  Major | core | Jun Rao | David Jacot |
| [KAFKA-3098](https://issues.apache.org/jira/browse/KAFKA-3098) | "partition.assignment.strategy" appears twice in documentation |  Major | . | Gwen Shapira | David Jacot |
| [KAFKA-3095](https://issues.apache.org/jira/browse/KAFKA-3095) | No documentation on format of sasl.kerberos.principal.to.local.rules |  Major | core | Thomas Graves | Thomas Graves |
| [KAFKA-2999](https://issues.apache.org/jira/browse/KAFKA-2999) | Errors enum should be a 1 to 1 mapping of error codes and exceptions |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-3091](https://issues.apache.org/jira/browse/KAFKA-3091) | Broker with an invalid id would not start when its id is updated to a new valid one |  Minor | . | Vahid Hashemian | Grant Henke |
| [KAFKA-3080](https://issues.apache.org/jira/browse/KAFKA-3080) | ConsoleConsumerTest.test\_version system test fails consistently |  Major | system tests | Ewen Cheslack-Postava |  |
| [KAFKA-2146](https://issues.apache.org/jira/browse/KAFKA-2146) | adding partition did not find the correct startIndex |  Minor | admin | chenshangan | chenshangan |
| [KAFKA-3140](https://issues.apache.org/jira/browse/KAFKA-3140) | PatternSyntaxException thrown in MM, causes MM to hang |  Major | tools | Ashish K Singh | Ashish K Singh |
| [KAFKA-3134](https://issues.apache.org/jira/browse/KAFKA-3134) | Missing required configuration "value.deserializer" when initializing a KafkaConsumer with a valid "valueDeserializer" |  Major | . | Yifan Ying |  |
| [KAFKA-3138](https://issues.apache.org/jira/browse/KAFKA-3138) | 0.9.0 docs still say that log compaction doesn't work on compressed topics. |  Major | . | James Cheng |  |
| [KAFKA-3132](https://issues.apache.org/jira/browse/KAFKA-3132) | URI scheme in "listeners" property should not be case-sensitive |  Minor | config | Jake Robb | Grant Henke |
| [KAFKA-1860](https://issues.apache.org/jira/browse/KAFKA-1860) | File system errors are not detected unless Kafka tries to write |  Major | . | Guozhang Wang | Mayuresh Gharat |
| [KAFKA-3068](https://issues.apache.org/jira/browse/KAFKA-3068) | NetworkClient may connect to a different Kafka cluster than originally configured |  Major | clients | Jun Rao | Eno Thereska |
| [KAFKA-3195](https://issues.apache.org/jira/browse/KAFKA-3195) | Transient test failure in OffsetCheckpointTest.testReadWrite |  Major | streams | Ewen Cheslack-Postava | Ismael Juma |
| [KAFKA-3194](https://issues.apache.org/jira/browse/KAFKA-3194) | Validate security.inter.broker.protocol against the advertised.listeners protocols |  Major | core | Grant Henke | Grant Henke |
| [KAFKA-3198](https://issues.apache.org/jira/browse/KAFKA-3198) | Ticket Renewal Thread exits prematurely due to inverted comparison |  Critical | security | Adam Kunicki | Adam Kunicki |
| [KAFKA-3207](https://issues.apache.org/jira/browse/KAFKA-3207) | StateStore seems to be writing state to one topic but restoring from another |  Blocker | streams | Tom Dearman | Guozhang Wang |
| [KAFKA-3179](https://issues.apache.org/jira/browse/KAFKA-3179) | Kafka consumer delivers message whose offset is earlier than sought offset. |  Major | clients | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-3211](https://issues.apache.org/jira/browse/KAFKA-3211) | Handle Connect WorkerTask shutdown before startup correctly |  Major | KafkaConnect | Jason Gustafson | Jason Gustafson |
| [KAFKA-3037](https://issues.apache.org/jira/browse/KAFKA-3037) | Number of alive brokers not known after single node cluster startup |  Minor | . | Stevo Slavic | Grant Henke |
| [KAFKA-2589](https://issues.apache.org/jira/browse/KAFKA-2589) | Documentation bug: the default value for the "rebalance.backoff.ms" property is not specified correctly |  Major | config | Bogdan Dimitriu | Grant Henke |
| [KAFKA-3217](https://issues.apache.org/jira/browse/KAFKA-3217) | Unit tests which dont close producers auto-create topics in Kafka brokers of other tests when port is reused |  Major | unit tests | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-3189](https://issues.apache.org/jira/browse/KAFKA-3189) | Kafka server returns UnknownServerException for inherited exceptions |  Major | core | Jiangjie Qin | Grant Henke |
| [KAFKA-3216](https://issues.apache.org/jira/browse/KAFKA-3216) | "Modifying topics" section incorrectly says you can't change replication factor. |  Major | . | James Cheng | James Cheng |
| [KAFKA-3141](https://issues.apache.org/jira/browse/KAFKA-3141) | kafka-acls.sh throws ArrayIndexOutOfBoundsException for an invalid authorizer-property |  Major | . | Ashish K Singh | Ashish K Singh |
| [KAFKA-3229](https://issues.apache.org/jira/browse/KAFKA-3229) | Root statestore is not registered with ProcessorStateManager, inner state store is registered instead |  Major | streams | Tom Dearman | Tom Dearman |
| [KAFKA-3147](https://issues.apache.org/jira/browse/KAFKA-3147) | Memory records is not writable in MirrorMaker |  Major | . | Meghana Narasimhan | Mayuresh Gharat |
| [KAFKA-3088](https://issues.apache.org/jira/browse/KAFKA-3088) | 0.9.0.0 broker crash on receipt of produce request with empty client ID |  Major | producer | Dave Peterson | Grant Henke |
| [KAFKA-2757](https://issues.apache.org/jira/browse/KAFKA-2757) | Consolidate BrokerEndPoint and EndPoint |  Major | . | Guozhang Wang | chen zhu |
| [KAFKA-3225](https://issues.apache.org/jira/browse/KAFKA-3225) | Method commit() of class SourceTask never invoked |  Major | KafkaConnect | Krzysztof Dębski | Ewen Cheslack-Postava |
| [KAFKA-3235](https://issues.apache.org/jira/browse/KAFKA-3235) | Unclosed stream in AppInfoParser static block |  Minor | . | Ted Yu |  |
| [KAFKA-3256](https://issues.apache.org/jira/browse/KAFKA-3256) | Large number of system test failures |  Major | . | Geoff Anderson | Jiangjie Qin |
| [KAFKA-3242](https://issues.apache.org/jira/browse/KAFKA-3242) | "Add Partition" log message doesn't actually indicate adding a partition |  Major | . | Gwen Shapira |  |
| [KAFKA-3292](https://issues.apache.org/jira/browse/KAFKA-3292) | ClientQuotaManager.getOrCreateQuotaSensors() may return a null ClientSensors.throttleTimeSensor |  Major | . | Jun Rao | Ismael Juma |
| [KAFKA-3280](https://issues.apache.org/jira/browse/KAFKA-3280) | KafkaConsumer Javadoc contains misleading description of heartbeat behavior and correct use |  Major | consumer | Richard Whaling | Neha Narkhede |
| [KAFKA-3243](https://issues.apache.org/jira/browse/KAFKA-3243) | Fix Kafka basic ops documentation for Mirror maker, blacklist is not supported for new consumers |  Major | . | Ashish K Singh | Ashish K Singh |
| [KAFKA-3278](https://issues.apache.org/jira/browse/KAFKA-3278) | clientId is not unique in producer/consumer registration leads to mbean warning |  Minor | streams | Tom Dearman | Tom Dearman |
| [KAFKA-2923](https://issues.apache.org/jira/browse/KAFKA-2923) | Improve 0.9.0 Upgrade Documents |  Major | . | Guozhang Wang | Grant Henke |
| [KAFKA-3257](https://issues.apache.org/jira/browse/KAFKA-3257) | bootstrap-test-env.sh version check fails when grep has --colour option enabled. |  Major | system tests | Jiangjie Qin | chen zhu |
| [KAFKA-2784](https://issues.apache.org/jira/browse/KAFKA-2784) | Mirror maker should swallow exceptions during shutdown. |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-3324](https://issues.apache.org/jira/browse/KAFKA-3324) | NullPointerException in StreamPartitionAssignor (Kafka Streams) |  Major | streams | Michael Noll |  |
| [KAFKA-2934](https://issues.apache.org/jira/browse/KAFKA-2934) | Offset storage file configuration in Connect standalone mode is not included in StandaloneConfig |  Major | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-3325](https://issues.apache.org/jira/browse/KAFKA-3325) | Out of date instructions in quickstart guide |  Trivial | . | Duncan Sands |  |
| [KAFKA-3310](https://issues.apache.org/jira/browse/KAFKA-3310) | fetch requests can trigger repeated NPE when quota is enabled |  Blocker | . | Jun Rao | Aditya Auradkar |
| [KAFKA-3299](https://issues.apache.org/jira/browse/KAFKA-3299) | KafkaConnect: DistributedHerder shouldn't wait forever to read configs after rebalance |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-3233](https://issues.apache.org/jira/browse/KAFKA-3233) | Per topic consumer metrics missing in new consumer's metrics reporter |  Major | . | Yifan Ying |  |
| [KAFKA-3341](https://issues.apache.org/jira/browse/KAFKA-3341) | Improve error handling on invalid requests |  Major | network | Ismael Juma | Ismael Juma |
| [KAFKA-3197](https://issues.apache.org/jira/browse/KAFKA-3197) | Producer can send message out of order even when in flight request is set to 1. |  Blocker | clients, producer | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-3343](https://issues.apache.org/jira/browse/KAFKA-3343) | GroupMetadataManager should use NoTimestamp for message v0 |  Blocker | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-3237](https://issues.apache.org/jira/browse/KAFKA-3237) | ConfigDef validators require a default value |  Minor | config | Jeremy Custenborder | Jeremy Custenborder |
| [KAFKA-3279](https://issues.apache.org/jira/browse/KAFKA-3279) | SASL implementation checks for unused System property java.security.auth.login.config |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-3354](https://issues.apache.org/jira/browse/KAFKA-3354) | Streams system tests fail in trunk |  Blocker | . | Geoff Anderson | Guozhang Wang |
| [KAFKA-3357](https://issues.apache.org/jira/browse/KAFKA-3357) | Update to Scala 2.11.8 |  Major | build | Ismael Juma | Ismael Juma |
| [KAFKA-3344](https://issues.apache.org/jira/browse/KAFKA-3344) | Remove previous system test's leftover test-log4j.properties |  Major | . | Ashish K Singh | Ashish K Singh |
| [KAFKA-2960](https://issues.apache.org/jira/browse/KAFKA-2960) | DelayedProduce may cause message loss during repeated leader change |  Critical | core | Xing Huang | Jiangjie Qin |
| [KAFKA-1148](https://issues.apache.org/jira/browse/KAFKA-1148) | Delayed fetch/producer requests should be satisfied on a leader change |  Major | . | Joel Koshy |  |
| [KAFKA-3047](https://issues.apache.org/jira/browse/KAFKA-3047) | Explicit offset assignment in Log.append can corrupt the log |  Major | log | Maciek Makowski | Ismael Juma |
| [KAFKA-2551](https://issues.apache.org/jira/browse/KAFKA-2551) | Unclean leader election docs outdated |  Trivial | website | Stevo Slavic | Manikumar Reddy |
| [KAFKA-3373](https://issues.apache.org/jira/browse/KAFKA-3373) | Add `log` prefix to KIP-31/32 configs |  Blocker | . | Ismael Juma | Jiangjie Qin |
| [KAFKA-3402](https://issues.apache.org/jira/browse/KAFKA-3402) | Restore behaviour of MetadataCache.getTopicMetadata when unsupported security protocol is received |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-3392](https://issues.apache.org/jira/browse/KAFKA-3392) | ConsumerRecords iterator throws NoSuchElementException when a TopicPartition is empty |  Major | clients, consumer | Drausin Wulsin | Drausin Wulsin |
| [KAFKA-3315](https://issues.apache.org/jira/browse/KAFKA-3315) | Add Connect API to expose connector configuration info |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Liquan Pei |
| [KAFKA-3414](https://issues.apache.org/jira/browse/KAFKA-3414) | Return of MetadataCache.getAliveBrokers should not be mutated by cache updates |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-3250](https://issues.apache.org/jira/browse/KAFKA-3250) | release tarball is unnecessarily large due to duplicate libraries |  Major | . | Gwen Shapira | Grant Henke |
| [KAFKA-3330](https://issues.apache.org/jira/browse/KAFKA-3330) | Truncate log cleaner offset checkpoint if the log is truncated |  Critical | . | Dong Lin | Dong Lin |
| [KAFKA-3394](https://issues.apache.org/jira/browse/KAFKA-3394) | Broker fails to parse Null Metadata in OffsetCommit requests |  Blocker | core | Magnus Edenhill | Jason Gustafson |
| [KAFKA-3397](https://issues.apache.org/jira/browse/KAFKA-3397) | use -1(latest) as time default value for tools.GetOffsetShell |  Minor | tools | Xin Wang |  |
| [KAFKA-3427](https://issues.apache.org/jira/browse/KAFKA-3427) | broker can return incorrect version of fetch response when the broker hits an unknown exception |  Blocker | . | Jun Rao | Jun Rao |
| [KAFKA-3424](https://issues.apache.org/jira/browse/KAFKA-3424) | Add CORS support to Connect REST API |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-3328](https://issues.apache.org/jira/browse/KAFKA-3328) | SimpleAclAuthorizer can lose ACLs with frequent add/remove calls |  Critical | . | Grant Henke | Grant Henke |
| [KAFKA-3378](https://issues.apache.org/jira/browse/KAFKA-3378) | Client blocks forever if SocketChannel connects instantly |  Blocker | clients | Larkin Lowrey | Larkin Lowrey |
| [KAFKA-3285](https://issues.apache.org/jira/browse/KAFKA-3285) | Mirror Maker whitelist behavior differs between old and new consumer |  Major | tools | Luke Steensen | Grant Henke |
| [KAFKA-3412](https://issues.apache.org/jira/browse/KAFKA-3412) | Multiple commitAsync() calls causes SendFailedException in commit callback |  Blocker | consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-3219](https://issues.apache.org/jira/browse/KAFKA-3219) | Long topic names mess up broker topic state |  Major | . | Magnus Edenhill | Vahid Hashemian |
| [KAFKA-3442](https://issues.apache.org/jira/browse/KAFKA-3442) | FetchResponse size exceeds max.partition.fetch.bytes |  Blocker | . | Dana Powers | Jiangjie Qin |
| [KAFKA-3409](https://issues.apache.org/jira/browse/KAFKA-3409) | Mirror maker hangs indefinitely due to commit |  Blocker | tools | TAO XIAO | Jason Gustafson |
| [KAFKA-3441](https://issues.apache.org/jira/browse/KAFKA-3441) | 0.10.0 documentation still says "0.9.0" |  Blocker | . | Gwen Shapira | Grant Henke |
| [KAFKA-3434](https://issues.apache.org/jira/browse/KAFKA-3434) | Add old ConsumerRecord constructor for compatibility |  Major | consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-3454](https://issues.apache.org/jira/browse/KAFKA-3454) | Add Kafka Streams section in documentation |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-3316](https://issues.apache.org/jira/browse/KAFKA-3316) | Add Connect REST API to list available connector classes |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Liquan Pei |
| [KAFKA-3388](https://issues.apache.org/jira/browse/KAFKA-3388) | Producer should only timeout a batch in the accumulator when metadata is missing. |  Critical | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-3453](https://issues.apache.org/jira/browse/KAFKA-3453) | Transient test failures due to MiniKDC port allocation strategy |  Major | . | Ewen Cheslack-Postava | Ismael Juma |
| [KAFKA-2844](https://issues.apache.org/jira/browse/KAFKA-2844) | Use different keyTab for client and server in SASL tests |  Major | security | Ismael Juma | Ismael Juma |
| [KAFKA-3486](https://issues.apache.org/jira/browse/KAFKA-3486) | Autocommit does not execute periodically when partitions are manually assigned |  Critical | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-3464](https://issues.apache.org/jira/browse/KAFKA-3464) | Connect security system tests |  Major | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2998](https://issues.apache.org/jira/browse/KAFKA-2998) | New Consumer should not retry indefinitely if no broker is available |  Minor | clients | Florian Hussonnois | Jason Gustafson |
| [KAFKA-3384](https://issues.apache.org/jira/browse/KAFKA-3384) | bin scripts may not be portable/POSIX compliant |  Major | . | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-3510](https://issues.apache.org/jira/browse/KAFKA-3510) | OffsetIndex thread safety |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-3489](https://issues.apache.org/jira/browse/KAFKA-3489) | Update request metrics if client closes connection while broker response is in flight |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-3488](https://issues.apache.org/jira/browse/KAFKA-3488) | commitAsync() fails if metadata update creates new SASL/SSL connection |  Major | consumer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-2672](https://issues.apache.org/jira/browse/KAFKA-2672) | SendFailedException when new consumer is run with SSL |  Major | consumer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-3512](https://issues.apache.org/jira/browse/KAFKA-3512) | Add a foreach() operator in Kafka Streams DSL |  Major | streams | Guozhang Wang | Eno Thereska |
| [KAFKA-725](https://issues.apache.org/jira/browse/KAFKA-725) | Broker Exception: Attempt to read with a maximum offset less than start offset |  Major | log | Chris Riccomini | Stig Rohde Døssing |
| [KAFKA-3528](https://issues.apache.org/jira/browse/KAFKA-3528) | AbstractCoordinator wakeup during rebalance can cause spurious rebalances |  Major | consumer, KafkaConnect | Jason Gustafson | Jason Gustafson |
| [KAFKA-3521](https://issues.apache.org/jira/browse/KAFKA-3521) | Better handling NPEs in Streams DSL implementation |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-3519](https://issues.apache.org/jira/browse/KAFKA-3519) | Refactor Transformer templates to return the same strong-typed value. |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-3547](https://issues.apache.org/jira/browse/KAFKA-3547) | Broker does not disconnect client on unknown request |  Critical | core | Magnus Edenhill | Grant Henke |
| [KAFKA-3557](https://issues.apache.org/jira/browse/KAFKA-3557) | Update rocksdb to 4.4.1 and patch updates to snappy and slf4j |  Major | build | Ismael Juma | Ismael Juma |
| [KAFKA-2181](https://issues.apache.org/jira/browse/KAFKA-2181) | online doc issues |  Minor | . | Jason Rosenberg |  |
| [KAFKA-3342](https://issues.apache.org/jira/browse/KAFKA-3342) | https://cwiki.apache.org/confluence/display/KAFKA/Log+Compaction has log.cleaner.min.cleanable.ratio listed twice in error |  Minor | . | Michael Graff | Manikumar Reddy |
| [KAFKA-2157](https://issues.apache.org/jira/browse/KAFKA-2157) | kafka-console-consumer.sh: Mismatch in CLI "usage" docs vs. Scala Option parsing |  Minor | core | Thomas Vaughan | Manikumar Reddy |
| [KAFKA-2912](https://issues.apache.org/jira/browse/KAFKA-2912) | Add error code 4 (InvalidFetchSize) to Errors.java |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-2524](https://issues.apache.org/jira/browse/KAFKA-2524) | Examples in class javadoc use unimplemented subscribe method |  Minor | consumer | Phil Steitz | Neha Narkhede |
| [KAFKA-3589](https://issues.apache.org/jira/browse/KAFKA-3589) | KTable.count(final KeyValueMapper\<K, V, K1\> selector, String name) throw NPE |  Major | streams | Damian Guy | Guozhang Wang |
| [KAFKA-3594](https://issues.apache.org/jira/browse/KAFKA-3594) | Kafka new producer retries doesn't work in 0.9.0.1 |  Critical | producer | Nicolas PHUNG | Manikumar Reddy |
| [KAFKA-3606](https://issues.apache.org/jira/browse/KAFKA-3606) | Traverse CLASSPATH during herder start to list connectors |  Blocker | KafkaConnect | Liquan Pei | Liquan Pei |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2732](https://issues.apache.org/jira/browse/KAFKA-2732) | Add test cases with ZK Auth, SASL and SSL |  Major | security | Flavio Junqueira | Flavio Junqueira |
| [KAFKA-2825](https://issues.apache.org/jira/browse/KAFKA-2825) | Add controller failover to existing replication tests |  Major | . | Anna Povzner | Anna Povzner |
| [KAFKA-2905](https://issues.apache.org/jira/browse/KAFKA-2905) | System test for rolling upgrade to enable ZooKeeper ACLs with SASL |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [KAFKA-2989](https://issues.apache.org/jira/browse/KAFKA-2989) | Verify all partitions consumed after rebalancing in system tests |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2949](https://issues.apache.org/jira/browse/KAFKA-2949) | Make EndToEndAuthorizationTest replicated |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [KAFKA-2979](https://issues.apache.org/jira/browse/KAFKA-2979) | Enable authorizer and ACLs in ducktape tests |  Major | system tests | Flavio Junqueira | Flavio Junqueira |
| [KAFKA-2846](https://issues.apache.org/jira/browse/KAFKA-2846) | Add Ducktape test for kafka-consumer-groups |  Major | . | Ashish K Singh | Ashish K Singh |
| [KAFKA-3255](https://issues.apache.org/jira/browse/KAFKA-3255) | Extra unit tests for NetworkClient.connectionDelay(Node node, long now) |  Trivial | core | Frank Scholten |  |
| [KAFKA-3214](https://issues.apache.org/jira/browse/KAFKA-3214) | Add consumer system tests for compressed topics |  Major | consumer | Jason Gustafson | Anna Povzner |
| [KAFKA-3371](https://issues.apache.org/jira/browse/KAFKA-3371) | ClientCompatibilityTest system test failing since KIP-31/KIP-32 was merged |  Blocker | . | Ismael Juma | Eno Thereska |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2591](https://issues.apache.org/jira/browse/KAFKA-2591) | Remove Persistent Data before Restoringafter a Fault |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-2600](https://issues.apache.org/jira/browse/KAFKA-2600) | Make KStream interfaces compatible with Java 8 java.util.function |  Major | . | Guozhang Wang | Randall Hauch |
| [KAFKA-2593](https://issues.apache.org/jira/browse/KAFKA-2593) | KeyValueStores should not require use of the context's default serializers and deserializers |  Major | streams | Randall Hauch | Randall Hauch |
| [KAFKA-2654](https://issues.apache.org/jira/browse/KAFKA-2654) | Avoid calling Consumer.poll(0) in each iteration |  Major | . | Guozhang Wang | Yasuhiro Matsuda |
| [KAFKA-2594](https://issues.apache.org/jira/browse/KAFKA-2594) | Add a key-value store that is a fixed-capacity in-memory LRU cache |  Major | streams | Randall Hauch | Randall Hauch |
| [KAFKA-2652](https://issues.apache.org/jira/browse/KAFKA-2652) | Incorporate the new consumer protocol with partition-group interface |  Major | . | Guozhang Wang | Yasuhiro Matsuda |
| [KAFKA-2694](https://issues.apache.org/jira/browse/KAFKA-2694) | Make a task id be a composite id of a topic group id and a partition id |  Major | streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2706](https://issues.apache.org/jira/browse/KAFKA-2706) | Make state stores first class citizens in the processor DAG |  Major | streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2707](https://issues.apache.org/jira/browse/KAFKA-2707) | Make KStream processor names deterministic |  Major | . | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2727](https://issues.apache.org/jira/browse/KAFKA-2727) | initialize only the part of the topology relevant to the task |  Major | streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2763](https://issues.apache.org/jira/browse/KAFKA-2763) | Reduce stream task migrations and initialization costs |  Major | streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2811](https://issues.apache.org/jira/browse/KAFKA-2811) | Add standby tasks |  Major | streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2643](https://issues.apache.org/jira/browse/KAFKA-2643) | Run mirror maker tests in ducktape with SSL and SASL |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-2642](https://issues.apache.org/jira/browse/KAFKA-2642) | Run replication tests in ducktape with SSL for clients |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-2856](https://issues.apache.org/jira/browse/KAFKA-2856) | add KTable |  Major | streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2804](https://issues.apache.org/jira/browse/KAFKA-2804) | Create / Update changelog topics upon state store initialization |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-2667](https://issues.apache.org/jira/browse/KAFKA-2667) | Copycat KafkaBasedLogTest.testSendAndReadToEnd transient failure |  Major | KafkaConnect | Jason Gustafson | Ewen Cheslack-Postava |
| [KAFKA-2962](https://issues.apache.org/jira/browse/KAFKA-2962) | Add Simple Join API |  Major | streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2733](https://issues.apache.org/jira/browse/KAFKA-2733) | Distinguish metric names inside the sensor registry |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-2070](https://issues.apache.org/jira/browse/KAFKA-2070) | Replace OffsetRequest/response with ListOffsetRequest/response from org.apache.kafka.common.requests |  Major | . | Gwen Shapira | Grant Henke |
| [KAFKA-2837](https://issues.apache.org/jira/browse/KAFKA-2837) | FAILING TEST: kafka.api.ProducerBounceTest \> testBrokerFailure |  Major | . | Gwen Shapira | jin xing |
| [KAFKA-2509](https://issues.apache.org/jira/browse/KAFKA-2509) | Replace LeaderAndIsr{Request,Response} with org.apache.kafka.common.network.requests equivalent |  Major | . | Ismael Juma | Grant Henke |
| [KAFKA-2984](https://issues.apache.org/jira/browse/KAFKA-2984) | KTable should send old values along with new values to downstreams |  Major | streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-3020](https://issues.apache.org/jira/browse/KAFKA-3020) | Ensure Checkstyle runs on all Java code |  Major | build | Grant Henke | Grant Henke |
| [KAFKA-3030](https://issues.apache.org/jira/browse/KAFKA-3030) | Remove unused scala dependencies |  Major | build | Grant Henke | Grant Henke |
| [KAFKA-2422](https://issues.apache.org/jira/browse/KAFKA-2422) | Allow copycat connector plugins to be aliased to simpler names |  Minor | KafkaConnect | Ewen Cheslack-Postava | Gwen Shapira |
| [KAFKA-3016](https://issues.apache.org/jira/browse/KAFKA-3016) | Add KStream-KStream window joins |  Major | streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2072](https://issues.apache.org/jira/browse/KAFKA-2072) | Add StopReplica request/response to o.a.k.common.requests and replace the usage in core module |  Major | . | Gwen Shapira | David Jacot |
| [KAFKA-3022](https://issues.apache.org/jira/browse/KAFKA-3022) | Deduplicate common project configurations |  Major | build | Grant Henke | Grant Henke |
| [KAFKA-2649](https://issues.apache.org/jira/browse/KAFKA-2649) | Add support for custom partitioner in sink nodes |  Major | streams | Randall Hauch | Randall Hauch |
| [KAFKA-2653](https://issues.apache.org/jira/browse/KAFKA-2653) | Stateful operations in the KStream DSL layer |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-3021](https://issues.apache.org/jira/browse/KAFKA-3021) | Centralize dependency version managment |  Major | build | Grant Henke | Grant Henke |
| [KAFKA-3078](https://issues.apache.org/jira/browse/KAFKA-3078) | Add ducktape tests for KafkaLog4jAppender producing to SASL enabled Kafka cluster |  Major | clients | Ashish K Singh | Ashish K Singh |
| [KAFKA-3063](https://issues.apache.org/jira/browse/KAFKA-3063) | LogRecoveryTest exits with -1 occasionally |  Major | . | Guozhang Wang | Ismael Juma |
| [KAFKA-3081](https://issues.apache.org/jira/browse/KAFKA-3081) | KTable Aggregation Implementation |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-3108](https://issues.apache.org/jira/browse/KAFKA-3108) | KStream custom StreamPartitioner for windowed key |  Minor | streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-3104](https://issues.apache.org/jira/browse/KAFKA-3104) | Windowed Stream Aggregation Implementation |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-2071](https://issues.apache.org/jira/browse/KAFKA-2071) | Replace Produce Request/Response with their org.apache.kafka.common.requests equivalents |  Major | . | Gwen Shapira | David Jacot |
| [KAFKA-3136](https://issues.apache.org/jira/browse/KAFKA-3136) | Rename KafkaStreaming to KafkaStreams |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-3066](https://issues.apache.org/jira/browse/KAFKA-3066) | Add Demo Examples for Kafka Streams |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-3125](https://issues.apache.org/jira/browse/KAFKA-3125) | Exception Hierarchy for Streams |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-3142](https://issues.apache.org/jira/browse/KAFKA-3142) | Improve error message in kstreams |  Major | . | Jay Kreps | Guozhang Wang |
| [KAFKA-3060](https://issues.apache.org/jira/browse/KAFKA-3060) | Refactor MeteredXXStore |  Minor | streams | Yasuhiro Matsuda | Guozhang Wang |
| [KAFKA-3121](https://issues.apache.org/jira/browse/KAFKA-3121) | KStream DSL API Improvement |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-3165](https://issues.apache.org/jira/browse/KAFKA-3165) | Fix ignored parameters in the gradle "All" tasks |  Major | build | Grant Henke | Grant Henke |
| [KAFKA-2718](https://issues.apache.org/jira/browse/KAFKA-2718) | Reuse of temporary directories leading to transient unit test failures |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-2508](https://issues.apache.org/jira/browse/KAFKA-2508) | Replace UpdateMetadata{Request,Response} with org.apache.kafka.common.requests equivalent |  Major | . | Ismael Juma | Grant Henke |
| [KAFKA-3025](https://issues.apache.org/jira/browse/KAFKA-3025) | KIP-31&KIP-32 (part 1): Add timestamp field to message, configs, and Producer/ConsumerRecord |  Major | . | Anna Povzner | Jiangjie Qin |
| [KAFKA-2802](https://issues.apache.org/jira/browse/KAFKA-2802) | Add integration tests for Kafka Streams |  Major | . | Guozhang Wang | Yasuhiro Matsuda |
| [KAFKA-3245](https://issues.apache.org/jira/browse/KAFKA-3245) | need a way to specify the number of replicas for change log topics |  Major | streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-3026](https://issues.apache.org/jira/browse/KAFKA-3026) | KIP-32 (part 2): Changes in broker to over-write timestamp or reject message |  Major | . | Anna Povzner | Jiangjie Qin |
| [KAFKA-3036](https://issues.apache.org/jira/browse/KAFKA-3036) | Add up-conversion and down-conversion of ProducerRequest and FetchRequest to broker. |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-3276](https://issues.apache.org/jira/browse/KAFKA-3276) | Rename 0.10.0.0 to 0.10.1.0 and 0.9.1.0 to 0.10.0.0 in JIRA |  Major | . | Ismael Juma | Ewen Cheslack-Postava |
| [KAFKA-3277](https://issues.apache.org/jira/browse/KAFKA-3277) | Update trunk version to be 0.10.0.0-SNAPSHOT |  Major | build | Ismael Juma | Ismael Juma |
| [KAFKA-2698](https://issues.apache.org/jira/browse/KAFKA-2698) | add paused API |  Critical | consumer | Onur Karaman | Jason Gustafson |
| [KAFKA-3133](https://issues.apache.org/jira/browse/KAFKA-3133) | Add putIfAbsent function to KeyValueStore |  Major | . | Guozhang Wang | Kim Christensen |
| [KAFKA-3192](https://issues.apache.org/jira/browse/KAFKA-3192) | Add implicit unlimited windowed aggregation for KStream |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-3289](https://issues.apache.org/jira/browse/KAFKA-3289) | Update Kafka protocol guide wiki for KIP-31 / KIP-32 |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-3311](https://issues.apache.org/jira/browse/KAFKA-3311) | Move co-partition checking to PartitionAssignor and auto-create internal topics |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-3286](https://issues.apache.org/jira/browse/KAFKA-3286) | Add plugin to quickly check for outdated dependencies |  Major | build | Grant Henke | Grant Henke |
| [KAFKA-3187](https://issues.apache.org/jira/browse/KAFKA-3187) | Make kafka-acls.sh help messages more generic. |  Major | . | Ashish K Singh | Ashish K Singh |
| [KAFKA-2068](https://issues.apache.org/jira/browse/KAFKA-2068) | Replace OffsetCommit Request/Response with  org.apache.kafka.common.requests  equivalent |  Major | . | Gwen Shapira | Grant Henke |
| [KAFKA-2069](https://issues.apache.org/jira/browse/KAFKA-2069) | Replace OffsetFetch request/response with their   org.apache.kafka.common.requests  equivalent |  Major | . | Gwen Shapira | Grant Henke |
| [KAFKA-3201](https://issues.apache.org/jira/browse/KAFKA-3201) | Add system test for KIP-31 and KIP-32 - Upgrade Test |  Blocker | system tests | Jiangjie Qin | Anna Povzner |
| [KAFKA-3361](https://issues.apache.org/jira/browse/KAFKA-3361) | Initial protocol documentation page and generation |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-2073](https://issues.apache.org/jira/browse/KAFKA-2073) | Replace TopicMetadata request/response with o.a.k.requests.metadata |  Major | . | Gwen Shapira | Jason Gustafson |
| [KAFKA-3380](https://issues.apache.org/jira/browse/KAFKA-3380) | Add system test for GetOffsetShell tool |  Major | . | Ashish K Singh | Ashish K Singh |
| [KAFKA-3395](https://issues.apache.org/jira/browse/KAFKA-3395) | prefix job id to internal topic names |  Major | streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-3188](https://issues.apache.org/jira/browse/KAFKA-3188) | Add system test for KIP-31 and KIP-32 - Compatibility Test |  Blocker | . | Jiangjie Qin | Eno Thereska |
| [KAFKA-3202](https://issues.apache.org/jira/browse/KAFKA-3202) | Add system test for KIP-31 and KIP-32 - Change message format version on the fly |  Blocker | system tests | Jiangjie Qin | Eno Thereska |
| [KAFKA-3336](https://issues.apache.org/jira/browse/KAFKA-3336) | Unify ser/de pair classes into one serde class |  Blocker | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-2982](https://issues.apache.org/jira/browse/KAFKA-2982) | Mark the old Scala producer and related classes as deprecated |  Critical | . | Grant Henke | Ismael Juma |
| [KAFKA-3422](https://issues.apache.org/jira/browse/KAFKA-3422) | Add overloading functions for each operator not requiring serialization |  Blocker | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-3449](https://issues.apache.org/jira/browse/KAFKA-3449) | Rename filterOut() to filterNot() to achieve better terminology |  Major | . | Michael Noll | Andrea Cosentino |
| [KAFKA-3381](https://issues.apache.org/jira/browse/KAFKA-3381) | Add system test for SimpleConsumerShell |  Major | . | Ashish K Singh | Ashish K Singh |
| [KAFKA-3451](https://issues.apache.org/jira/browse/KAFKA-3451) | Add basic HTML coverage report generation to gradle |  Major | security | Grant Henke | Grant Henke |
| [KAFKA-2910](https://issues.apache.org/jira/browse/KAFKA-2910) | Failure in kafka.api.SslEndToEndAuthorizationTest.testNoGroupAcl |  Major | . | Guozhang Wang | Rajini Sivaram |
| [KAFKA-3508](https://issues.apache.org/jira/browse/KAFKA-3508) | Transient failure in kafka.security.auth.SimpleAclAuthorizerTest.testHighConcurrencyModificationOfResourceAcls |  Major | . | Guozhang Wang | Grant Henke |
| [KAFKA-3477](https://issues.apache.org/jira/browse/KAFKA-3477) | Add customizable StreamPartition into #to functions of Streams DSL |  Major | streams | Guozhang Wang | Matthias J. Sax |
| [KAFKA-3497](https://issues.apache.org/jira/browse/KAFKA-3497) | Streams ProcessorContext should support forward() based on child name |  Major | streams | Yuto Kawamura | Eno Thereska |
| [KAFKA-3505](https://issues.apache.org/jira/browse/KAFKA-3505) | Set curRecord in punctuate() functions |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-3338](https://issues.apache.org/jira/browse/KAFKA-3338) | Add print and writeAsText functions to the Streams DSL |  Major | streams | Guozhang Wang | Bill Bejeck |
| [KAFKA-3504](https://issues.apache.org/jira/browse/KAFKA-3504) | Changelog partition configured to enable log compaction |  Major | streams | Guozhang Wang | Eno Thereska |
| [KAFKA-3430](https://issues.apache.org/jira/browse/KAFKA-3430) | Allow users to set key in KTable.toStream() and KStream |  Major | streams | Guozhang Wang | Bill Bejeck |
| [KAFKA-3337](https://issues.apache.org/jira/browse/KAFKA-3337) | Extract selector as a separate groupBy operator for KTable aggregations |  Major | streams | Guozhang Wang | Matthias J. Sax |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2830](https://issues.apache.org/jira/browse/KAFKA-2830) | Change default fix version to 0.9.1.0 in kafka-merge-pr.py |  Major | build | Ismael Juma | Ismael Juma |
| [KAFKA-2845](https://issues.apache.org/jira/browse/KAFKA-2845) | Add 0.9 clients vs 0.8 brokers compatibility test |  Major | . | Geoff Anderson | Geoff Anderson |
| [KAFKA-2896](https://issues.apache.org/jira/browse/KAFKA-2896) | System test for partition re-assignment |  Major | . | Gwen Shapira | Anna Povzner |
| [KAFKA-3435](https://issues.apache.org/jira/browse/KAFKA-3435) | Remove `Unstable` annotation from new Java Consumer |  Major | . | Ismael Juma | Grant Henke |
| [KAFKA-3460](https://issues.apache.org/jira/browse/KAFKA-3460) | Remove old 0.7 KafkaMigrationTool |  Major | . | Grant Henke | Grant Henke |


