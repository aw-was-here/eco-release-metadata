
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

## Release 0.9.0.1 - 2016-02-19



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2978](https://issues.apache.org/jira/browse/KAFKA-2978) | Topic partition is not sometimes consumed after rebalancing of consumer group |  Critical | consumer, core | Michal Turek | Jason Gustafson |
| [KAFKA-3029](https://issues.apache.org/jira/browse/KAFKA-3029) | Make class org.apache.kafka.common.TopicPartition Serializable |  Major | clients | Praveen Devarao | Praveen Devarao |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2761](https://issues.apache.org/jira/browse/KAFKA-2761) | Enable passing regex via whitelist for new-consumer in ConsoleConsumer |  Major | tools | Ashish Singh | Ashish Singh |
| [KAFKA-2882](https://issues.apache.org/jira/browse/KAFKA-2882) | Add constructor cache for Snappy and LZ4 Output/Input stream in Compressor.java |  Major | consumer, producer | Maksim Logvinenko | Maksim Logvinenko |
| [KAFKA-2957](https://issues.apache.org/jira/browse/KAFKA-2957) | Fix typos in Kafka documentation |  Trivial | . | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-2924](https://issues.apache.org/jira/browse/KAFKA-2924) | Add offsets/group metadata decoder so that DumpLogSegments can be used with the offsets topic |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-3002](https://issues.apache.org/jira/browse/KAFKA-3002) | Make available to specify hostname with Uppercase at broker list |  Minor | clients | Sasaki Toru |  |
| [KAFKA-3052](https://issues.apache.org/jira/browse/KAFKA-3052) | broker properties get logged twice if acl is enabled |  Major | core | Jun Rao | Ismael Juma |
| [KAFKA-3051](https://issues.apache.org/jira/browse/KAFKA-3051) | security.protocol documentation is inaccurate |  Major | clients | Jun Rao | Ismael Juma |
| [KAFKA-3048](https://issues.apache.org/jira/browse/KAFKA-3048) | incorrect property name ssl.want.client.auth |  Major | core | Jun Rao | Ismael Juma |
| [KAFKA-3010](https://issues.apache.org/jira/browse/KAFKA-3010) | include error code when logging an error when ack = 0 |  Major | core | Jun Rao | Ismael Juma |
| [KAFKA-3045](https://issues.apache.org/jira/browse/KAFKA-3045) | ZkNodeChangeNotificationListener shouldn\'t log interrupted exception as error |  Major | core | Jun Rao | Dong Lin |
| [KAFKA-2988](https://issues.apache.org/jira/browse/KAFKA-2988) | Change default configuration of the log cleaner |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-3012](https://issues.apache.org/jira/browse/KAFKA-3012) | Avoid reserved.broker.max.id collisions on upgrade |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-3100](https://issues.apache.org/jira/browse/KAFKA-3100) | Broker.createBroker should work if json is version \> 2, but still compatible |  Major | core | Ismael Juma | Ismael Juma |
| [KAFKA-2221](https://issues.apache.org/jira/browse/KAFKA-2221) | Log the entire cause which caused a reconnect in the SimpleConsumer |  Minor | . | jaikiran pai | jaikiran pai |
| [KAFKA-3166](https://issues.apache.org/jira/browse/KAFKA-3166) | Disable SSL client authentication for SASL\_SSL security protocol |  Major | security | Ismael Juma | Ismael Juma |
| [KAFKA-3164](https://issues.apache.org/jira/browse/KAFKA-3164) | Document client and mirrormaker upgrade procedure/requirements |  Minor | . | Grant Henke | Grant Henke |
| [KAFKA-3191](https://issues.apache.org/jira/browse/KAFKA-3191) | Improve offset committing JavaDoc in KafkaConsumer |  Minor | consumer | Adam Kunicki | Adam Kunicki |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2752](https://issues.apache.org/jira/browse/KAFKA-2752) | Add clean bounce system test for distributed Copycat |  Major | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2799](https://issues.apache.org/jira/browse/KAFKA-2799) | WakupException thrown in the followup poll() could lead to data loss |  Blocker | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1862](https://issues.apache.org/jira/browse/KAFKA-1862) | Pass in the Time object into OffsetManager |  Major | . | Guozhang Wang | Aditya Auradkar |
| [KAFKA-2877](https://issues.apache.org/jira/browse/KAFKA-2877) | Messages sometimes not delivered by new consumer after Kafka restart |  Critical | consumer | Rajini Sivaram | Jason Gustafson |
| [KAFKA-2878](https://issues.apache.org/jira/browse/KAFKA-2878) | Kafka broker throws OutOfMemory exception with invalid join group request |  Critical | clients | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-2899](https://issues.apache.org/jira/browse/KAFKA-2899) | Should log unexpected exceptions thrown when reading from local log |  Major | . | Ben Stopford | Ben Stopford |
| [KAFKA-2913](https://issues.apache.org/jira/browse/KAFKA-2913) | GroupMetadataManager unloads all groups in removeGroupsForPartitions |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2880](https://issues.apache.org/jira/browse/KAFKA-2880) | Fetcher.getTopicMetadata NullPointerException when broker cannot be reached |  Major | clients | Ewen Cheslack-Postava | Jason Gustafson |
| [KAFKA-2942](https://issues.apache.org/jira/browse/KAFKA-2942) | Inadvertent auto-commit when pre-fetching can cause message loss |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2950](https://issues.apache.org/jira/browse/KAFKA-2950) | Performance regression in producer |  Major | . | Jay Kreps |  |
| [KAFKA-2973](https://issues.apache.org/jira/browse/KAFKA-2973) | Fix leak of child sensors on remove |  Major | clients | Ismael Juma | Ismael Juma |
| [KAFKA-2972](https://issues.apache.org/jira/browse/KAFKA-2972) | ControlledShutdownResponse always serialises \`partitionsRemaining\` as empty |  Major | network | Ismael Juma | Ismael Juma |
| [KAFKA-2974](https://issues.apache.org/jira/browse/KAFKA-2974) | \`==\` is used incorrectly in a few places in Java code |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-2578](https://issues.apache.org/jira/browse/KAFKA-2578) | Client Metadata internal state should be synchronized |  Trivial | . | Jason Gustafson | Edward Ribeiro |
| [KAFKA-2893](https://issues.apache.org/jira/browse/KAFKA-2893) | Add Negative Partition Seek Check |  Major | clients | Jesse Anderson | jin xing |
| [KAFKA-2926](https://issues.apache.org/jira/browse/KAFKA-2926) | [MirrorMaker] InternalRebalancer calls wrong method of external rebalancer |  Major | tools | Gwen Shapira | Gwen Shapira |
| [KAFKA-2981](https://issues.apache.org/jira/browse/KAFKA-2981) | Fix javadoc in KafkaConsumer |  Minor | clients | Xin Wang |  |
| [KAFKA-2990](https://issues.apache.org/jira/browse/KAFKA-2990) | NoSuchMethodError when Kafka is compiled with 1.8 and run on 1.7 |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-3014](https://issues.apache.org/jira/browse/KAFKA-3014) | Integer overflow causes incorrect node iteration in leastLoadedNode() |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-3055](https://issues.apache.org/jira/browse/KAFKA-3055) | JsonConverter mangles schema during serialization (fromConnectData) |  Major | KafkaConnect | Kishore Senji | Ewen Cheslack-Postava |
| [KAFKA-2937](https://issues.apache.org/jira/browse/KAFKA-2937) | Topics marked for delete in Zookeeper may become undeletable |  Major | core | Rajini Sivaram | Mayuresh Gharat |
| [KAFKA-2993](https://issues.apache.org/jira/browse/KAFKA-2993) | compression-rate-avg always returns 0 even with compression.type being set |  Minor | producer | TAO XIAO | TAO XIAO |
| [KAFKA-2695](https://issues.apache.org/jira/browse/KAFKA-2695) | Handle null string/bytes protocol primitives |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-3098](https://issues.apache.org/jira/browse/KAFKA-3098) | "partition.assignment.strategy" appears twice in documentation |  Major | . | Gwen Shapira | David Jacot |
| [KAFKA-3095](https://issues.apache.org/jira/browse/KAFKA-3095) | No documentation on format of sasl.kerberos.principal.to.local.rules |  Major | core | Thomas Graves | Thomas Graves |
| [KAFKA-3122](https://issues.apache.org/jira/browse/KAFKA-3122) | Memory leak in \`Sender.completeBatch\` on TOPIC\_AUTHORIZATION\_FAILED |  Major | clients | Ismael Juma | Ismael Juma |
| [KAFKA-3134](https://issues.apache.org/jira/browse/KAFKA-3134) | Missing required configuration "value.deserializer" when initializing a KafkaConsumer with a valid "valueDeserializer" |  Major | . | Yifan Ying |  |
| [KAFKA-2478](https://issues.apache.org/jira/browse/KAFKA-2478) | KafkaConsumer javadoc example seems wrong |  Major | consumer | Dmitry Stratiychuk | Dmitry Stratiychuk |
| [KAFKA-3152](https://issues.apache.org/jira/browse/KAFKA-3152) | kafka-acl doesn\'t allow space in principal name |  Major | core | Jun Rao | Ismael Juma |
| [KAFKA-2143](https://issues.apache.org/jira/browse/KAFKA-2143) | Replicas get ahead of leader and fail |  Major | replication | Evan Huus | Jiangjie Qin |
| [KAFKA-3075](https://issues.apache.org/jira/browse/KAFKA-3075) | java.util.HashMap cannot be cast to scala.collection.immutable.Map When using  ZookeeperConsumerConnector.commitOffsets |  Major | consumer | Pengwei | Ismael Juma |
| [KAFKA-2676](https://issues.apache.org/jira/browse/KAFKA-2676) | Incorrect package name in tests (unit and integration prefix) |  Major | core | Jun Rao | chen zhu |
| [KAFKA-3169](https://issues.apache.org/jira/browse/KAFKA-3169) | Kafka broker throws OutOfMemory error with invalid SASL packet |  Critical | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-3068](https://issues.apache.org/jira/browse/KAFKA-3068) | NetworkClient may connect to a different Kafka cluster than originally configured |  Major | clients | Jun Rao | Eno Thereska |
| [KAFKA-3170](https://issues.apache.org/jira/browse/KAFKA-3170) | Default value of fetch\_min\_bytes in new consumer is 1024 while doc says it is 1 |  Major | consumer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-3194](https://issues.apache.org/jira/browse/KAFKA-3194) | Validate security.inter.broker.protocol against the advertised.listeners protocols |  Major | core | Grant Henke | Grant Henke |
| [KAFKA-3198](https://issues.apache.org/jira/browse/KAFKA-3198) | Ticket Renewal Thread exits prematurely due to inverted comparison |  Critical | security | Adam Kunicki | Adam Kunicki |
| [KAFKA-3179](https://issues.apache.org/jira/browse/KAFKA-3179) | Kafka consumer delivers message whose offset is earlier than sought offset. |  Major | clients | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-3003](https://issues.apache.org/jira/browse/KAFKA-3003) | The fetch.wait.max.ms is not honored when new log segment rolled for low volume topics. |  Major | core | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-3157](https://issues.apache.org/jira/browse/KAFKA-3157) | Mirror maker doesn\'t commit offset with new consumer when there is no more messages |  Major | . | TAO XIAO | TAO XIAO |
| [KAFKA-2589](https://issues.apache.org/jira/browse/KAFKA-2589) | Documentation bug: the default value for the "rebalance.backoff.ms" property is not specified correctly |  Major | config | Bogdan Dimitriu | Grant Henke |
| [KAFKA-3216](https://issues.apache.org/jira/browse/KAFKA-3216) | "Modifying topics" section incorrectly says you can\'t change replication factor. |  Major | . | James Cheng | James Cheng |
| [KAFKA-3159](https://issues.apache.org/jira/browse/KAFKA-3159) | Kafka consumer 0.9.0.0  client poll is very CPU intensive under certain conditions |  Major | clients | Rajiv Kurian | Jason Gustafson |
| [KAFKA-3141](https://issues.apache.org/jira/browse/KAFKA-3141) | kafka-acls.sh throws ArrayIndexOutOfBoundsException for an invalid authorizer-property |  Major | . | Ashish Singh | Ashish Singh |
| [KAFKA-2315](https://issues.apache.org/jira/browse/KAFKA-2315) | Kafka binary distribution may contain incorrect dependencies |  Major | packaging | MÓZES Ádám István | Manikumar |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2058](https://issues.apache.org/jira/browse/KAFKA-2058) | ProducerTest.testSendWithDeadBroker transient failure |  Major | . | Guozhang Wang | jin xing |
| [KAFKA-2977](https://issues.apache.org/jira/browse/KAFKA-2977) | Transient Failure in kafka.log.LogCleanerIntegrationTest.cleanerTest |  Major | . | Guozhang Wang | jin xing |
| [KAFKA-2455](https://issues.apache.org/jira/browse/KAFKA-2455) | Test Failure: kafka.consumer.MetricsTest \> testMetricsLeak |  Major | . | Gwen Shapira | jin xing |


