
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

## Release 0.9.0.1 - Unreleased (as of 2016-01-18)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2978](https://issues.apache.org/jira/browse/KAFKA-2978) | Topic partition is not sometimes consumed after rebalancing of consumer group |  Critical | consumer, core | Michal Turek | Jason Gustafson |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3052](https://issues.apache.org/jira/browse/KAFKA-3052) | broker properties get logged twice if acl is enabled |  Major | core | Jun Rao | Ismael Juma |
| [KAFKA-3051](https://issues.apache.org/jira/browse/KAFKA-3051) | security.protocol documentation is inaccurate |  Major | clients | Jun Rao | Ismael Juma |
| [KAFKA-3048](https://issues.apache.org/jira/browse/KAFKA-3048) | incorrect property name ssl.want.client.auth |  Major | core | Jun Rao | Ismael Juma |
| [KAFKA-3045](https://issues.apache.org/jira/browse/KAFKA-3045) | ZkNodeChangeNotificationListener shouldn't log interrupted exception as error |  Major | core | Jun Rao | Dong Lin |
| [KAFKA-3010](https://issues.apache.org/jira/browse/KAFKA-3010) | include error code when logging an error when ack = 0 |  Major | core | Jun Rao | Ismael Juma |
| [KAFKA-3002](https://issues.apache.org/jira/browse/KAFKA-3002) | Make available to specify hostname with Uppercase at broker list |  Minor | clients | Sasaki Toru |  |
| [KAFKA-2988](https://issues.apache.org/jira/browse/KAFKA-2988) | Change default configuration of the log cleaner |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-2957](https://issues.apache.org/jira/browse/KAFKA-2957) | Fix typos in Kafka documentation |  Trivial | . | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-2924](https://issues.apache.org/jira/browse/KAFKA-2924) | Add offsets/group metadata decoder so that DumpLogSegments can be used with the offsets topic |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2882](https://issues.apache.org/jira/browse/KAFKA-2882) | Add constructor cache for Snappy and LZ4 Output/Input stream in Compressor.java |  Major | consumer, producer | Maksim Logvinenko | Maksim Logvinenko |
| [KAFKA-2761](https://issues.apache.org/jira/browse/KAFKA-2761) | Enable passing regex via whitelist for new-consumer in ConsoleConsumer |  Major | tools | Ashish K Singh | Ashish K Singh |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3098](https://issues.apache.org/jira/browse/KAFKA-3098) | "partition.assignment.strategy" appears twice in documentation |  Major | . | Gwen Shapira | David Jacot |
| [KAFKA-3095](https://issues.apache.org/jira/browse/KAFKA-3095) | No documentation on format of sasl.kerberos.principal.to.local.rules |  Major | core | Thomas Graves | Thomas Graves |
| [KAFKA-3055](https://issues.apache.org/jira/browse/KAFKA-3055) | JsonConverter mangles schema during serialization (fromConnectData) |  Major | copycat | Kishore Senji | Ewen Cheslack-Postava |
| [KAFKA-3014](https://issues.apache.org/jira/browse/KAFKA-3014) | Integer overflow causes incorrect node iteration in leastLoadedNode() |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2993](https://issues.apache.org/jira/browse/KAFKA-2993) | compression-rate-avg always returns 0 even with compression.type being set |  Minor | producer | TAO XIAO | TAO XIAO |
| [KAFKA-2990](https://issues.apache.org/jira/browse/KAFKA-2990) | NoSuchMethodError when Kafka is compiled with 1.8 and run on 1.7 |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2981](https://issues.apache.org/jira/browse/KAFKA-2981) | Fix javadoc in KafkaConsumer |  Minor | clients | Xin Wang |  |
| [KAFKA-2974](https://issues.apache.org/jira/browse/KAFKA-2974) | `==` is used incorrectly in a few places in Java code |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-2973](https://issues.apache.org/jira/browse/KAFKA-2973) | Fix leak of child sensors on remove |  Major | clients | Ismael Juma | Ismael Juma |
| [KAFKA-2972](https://issues.apache.org/jira/browse/KAFKA-2972) | ControlledShutdownResponse always serialises `partitionsRemaining` as empty |  Major | network | Ismael Juma | Ismael Juma |
| [KAFKA-2950](https://issues.apache.org/jira/browse/KAFKA-2950) | Performance regression in producer |  Major | . | Jay Kreps |  |
| [KAFKA-2942](https://issues.apache.org/jira/browse/KAFKA-2942) | Inadvertent auto-commit when pre-fetching can cause message loss |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2937](https://issues.apache.org/jira/browse/KAFKA-2937) | Topics marked for delete in Zookeeper may become undeletable |  Major | core | Rajini Sivaram | Mayuresh Gharat |
| [KAFKA-2926](https://issues.apache.org/jira/browse/KAFKA-2926) | [MirrorMaker] InternalRebalancer calls wrong method of external rebalancer |  Major | tools | Gwen Shapira | Gwen Shapira |
| [KAFKA-2913](https://issues.apache.org/jira/browse/KAFKA-2913) | GroupMetadataManager unloads all groups in removeGroupsForPartitions |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2899](https://issues.apache.org/jira/browse/KAFKA-2899) | Should log unexpected exceptions thrown when reading from local log |  Major | . | Ben Stopford | Ben Stopford |
| [KAFKA-2893](https://issues.apache.org/jira/browse/KAFKA-2893) | Add Negative Partition Seek Check |  Major | clients | Jesse Anderson | jin xing |
| [KAFKA-2880](https://issues.apache.org/jira/browse/KAFKA-2880) | Fetcher.getTopicMetadata NullPointerException when broker cannot be reached |  Major | clients | Ewen Cheslack-Postava | Jason Gustafson |
| [KAFKA-2877](https://issues.apache.org/jira/browse/KAFKA-2877) | Messages sometimes not delivered by new consumer after Kafka restart |  Critical | consumer | Rajini Sivaram | Jason Gustafson |
| [KAFKA-2799](https://issues.apache.org/jira/browse/KAFKA-2799) | WakupException thrown in the followup poll() could lead to data loss |  Blocker | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-2752](https://issues.apache.org/jira/browse/KAFKA-2752) | Add clean bounce system test for distributed Copycat |  Major | copycat | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2695](https://issues.apache.org/jira/browse/KAFKA-2695) | Handle null string/bytes protocol primitives |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2578](https://issues.apache.org/jira/browse/KAFKA-2578) | Client Metadata internal state should be synchronized |  Trivial | . | Jason Gustafson | Edward Ribeiro |
| [KAFKA-1862](https://issues.apache.org/jira/browse/KAFKA-1862) | Pass in the Time object into OffsetManager |  Major | . | Guozhang Wang | Aditya Auradkar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2977](https://issues.apache.org/jira/browse/KAFKA-2977) | Transient Failure in kafka.log.LogCleanerIntegrationTest.cleanerTest |  Major | . | Guozhang Wang | jin xing |
| [KAFKA-2455](https://issues.apache.org/jira/browse/KAFKA-2455) | Test Failure: kafka.consumer.MetricsTest \> testMetricsLeak |  Major | . | Gwen Shapira | jin xing |
| [KAFKA-2058](https://issues.apache.org/jira/browse/KAFKA-2058) | ProducerTest.testSendWithDeadBroker transient failure |  Major | . | Guozhang Wang | jin xing |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


