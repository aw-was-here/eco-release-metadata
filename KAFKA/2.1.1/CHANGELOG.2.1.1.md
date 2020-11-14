
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

## Release 2.1.1 - 2019-02-15



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7655](https://issues.apache.org/jira/browse/KAFKA-7655) | Metadata spamming requests from Kafka Streams under some circumstances, potential DOS |  Major | streams | Pasquale Vazzana | Pasquale Vazzana |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7584](https://issues.apache.org/jira/browse/KAFKA-7584) | StreamsConfig throws ClassCastException if max.in.flight.request.per.connect is specified as String |  Minor | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-7671](https://issues.apache.org/jira/browse/KAFKA-7671) | A KStream/GlobalKTable join shouldn't reset the repartition flag |  Major | streams | Andy Bryant | Bill Bejeck |
| [KAFKA-7389](https://issues.apache.org/jira/browse/KAFKA-7389) | Upgrade spotBugs for Java 11 support |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-7610](https://issues.apache.org/jira/browse/KAFKA-7610) | Detect consumer failures in initial JoinGroup |  Major | consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-7734](https://issues.apache.org/jira/browse/KAFKA-7734) | Metrics tags should use LinkedHashMap to guarantee ordering |  Major | metrics | Guozhang Wang | lambdaliu |
| [KAFKA-6928](https://issues.apache.org/jira/browse/KAFKA-6928) | StreamsPartitionAssignor is double retrying within InternalTopicManager |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-7837](https://issues.apache.org/jira/browse/KAFKA-7837) | maybeShrinkIsr may not reflect OfflinePartitions immediately |  Major | . | Jun Rao | Dhruvil Shah |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7532](https://issues.apache.org/jira/browse/KAFKA-7532) | Missing stringification in error message "Removed ArrayBuffer() from list of shutting down brokers. (kafka.controller.KafkaController)" |  Minor | controller | Andreas Kohn | Stanislav Kozlovski |
| [KAFKA-7518](https://issues.apache.org/jira/browse/KAFKA-7518) | FutureRecordMetadata.get deadline calculation from timeout is not using timeunit |  Major | clients | Andras Katona | Andras Katona |
| [KAFKA-7576](https://issues.apache.org/jira/browse/KAFKA-7576) | Dynamic update of replica fetcher threads may fail to start/close fetchers |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7536](https://issues.apache.org/jira/browse/KAFKA-7536) | TopologyTestDriver cannot pre-populate KTable or GlobalKTable |  Minor | streams | Dmitry Minkovsky | Guozhang Wang |
| [KAFKA-7607](https://issues.apache.org/jira/browse/KAFKA-7607) | NetworkClientUtils.sendAndReceive can take a long time to return during shutdown |  Major | . | Bob Barrett | Rajini Sivaram |
| [KAFKA-7620](https://issues.apache.org/jira/browse/KAFKA-7620) | ConfigProvider is broken for KafkaConnect when TTL is not null |  Major | KafkaConnect | Ye Ji | Robert Yokota |
| [KAFKA-7660](https://issues.apache.org/jira/browse/KAFKA-7660) | Stream Metrics - Memory Analysis |  Minor | metrics, streams | Patrik Kleindl | John Roesler |
| [KAFKA-7702](https://issues.apache.org/jira/browse/KAFKA-7702) | Prefixed ACLs don't work with single character prefix |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7697](https://issues.apache.org/jira/browse/KAFKA-7697) | Possible deadlock in kafka.cluster.Partition |  Blocker | . | Gian Merlino | Rajini Sivaram |
| [KAFKA-7678](https://issues.apache.org/jira/browse/KAFKA-7678) | Failed to close producer due to java.lang.NullPointerException |  Minor | streams | Jonathan Santilli | Jonathan Santilli |
| [KAFKA-6388](https://issues.apache.org/jira/browse/KAFKA-6388) | Error while trying to roll a segment that already exists |  Blocker | log | David Hay |  |
| [KAFKA-7704](https://issues.apache.org/jira/browse/KAFKA-7704) | kafka.server.ReplicaFetechManager.MaxLag.Replica metric is reported incorrectly |  Major | metrics | Yu Yang | huxihx |
| [KAFKA-7709](https://issues.apache.org/jira/browse/KAFKA-7709) | ConcurrentModificationException occurs when iterating through multiple partitions in Sender.getExpiredInflightBatches |  Major | core | Mark Cho |  |
| [KAFKA-7549](https://issues.apache.org/jira/browse/KAFKA-7549) | Old ProduceRequest with zstd compression does not return error to client |  Major | compression | Magnus Edenhill | Dongjin Lee |
| [KAFKA-7443](https://issues.apache.org/jira/browse/KAFKA-7443) | OffsetOutOfRangeException in restoring state store from changelog topic when start offset of local checkpoint is smaller than that of changelog topic |  Major | streams | linyue li | linyue li |
| [KAFKA-7705](https://issues.apache.org/jira/browse/KAFKA-7705) | Update javadoc for the values of delivery.timeout.ms or linger.ms |  Minor | clients, documentation, producer | huxihx |  |
| [KAFKA-7759](https://issues.apache.org/jira/browse/KAFKA-7759) | Disable WADL output in Connect REST API |  Major | . | Oleksandr Diachenko | Oleksandr Diachenko |
| [KAFKA-3832](https://issues.apache.org/jira/browse/KAFKA-3832) | Kafka Connect's JSON Converter never outputs a null value |  Major | KafkaConnect | Randall Hauch | Renato Mefi |
| [KAFKA-7768](https://issues.apache.org/jira/browse/KAFKA-7768) | Java doc link 404 |  Critical | documentation | Slim Ouertani |  |
| [KAFKA-7755](https://issues.apache.org/jira/browse/KAFKA-7755) | Kubernetes - Kafka clients are resolving DNS entries only one time |  Blocker | clients | Loïc Monney |  |
| [KAFKA-7253](https://issues.apache.org/jira/browse/KAFKA-7253) | The connector type responded by worker is always null when creating connector |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-6833](https://issues.apache.org/jira/browse/KAFKA-6833) | KafkaProducer throws "Invalid partition given with record" exception |  Minor | . | Arjun Satish | Bob Barrett |
| [KAFKA-7786](https://issues.apache.org/jira/browse/KAFKA-7786) | Fast update of leader epoch may stall partition fetching due to FENCED\_LEADER\_EPOCH |  Critical | . | Anna Povzner | Anna Povzner |
| [KAFKA-5117](https://issues.apache.org/jira/browse/KAFKA-5117) | Kafka Connect REST endpoints reveal Password typed values |  Major | KafkaConnect | Thomas Holmes | Chris Egerton |
| [KAFKA-7741](https://issues.apache.org/jira/browse/KAFKA-7741) | Bad dependency via SBT |  Major | streams | sacha barber | John Roesler |
| [KAFKA-7692](https://issues.apache.org/jira/browse/KAFKA-7692) | updateFirstUnstableOffset NPE due to sequenceId overflow in ProducerStateManager.append |  Major | core | Ming Liu |  |
| [KAFKA-7693](https://issues.apache.org/jira/browse/KAFKA-7693) | "IllegalArgumentException: Invalid negative sequence number used" in Kafka Client |  Major | clients | Ming Liu |  |
| [KAFKA-7840](https://issues.apache.org/jira/browse/KAFKA-7840) | Documentation for cleanup.policy is out of date |  Trivial | documentation | Josh Wiley | Dongjin Lee |
| [KAFKA-7873](https://issues.apache.org/jira/browse/KAFKA-7873) | KafkaBasedLog's consumer should always seek to beginning when starting |  Critical | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-7890](https://issues.apache.org/jira/browse/KAFKA-7890) | Invalidate ClusterConnectionState cache for a broker if the hostname of the broker changes. |  Major | network | Mark Cho | Rajini Sivaram |
| [KAFKA-7902](https://issues.apache.org/jira/browse/KAFKA-7902) | SASL/OAUTHBEARER can become unable to connect: javax.security.sasl.SaslException: Unable to find OAuth Bearer token in Subject's private credentials (size=2) |  Major | clients | Ron Dagostino | Ron Dagostino |
| [KAFKA-7897](https://issues.apache.org/jira/browse/KAFKA-7897) | Invalid use of epoch cache with old message format versions |  Blocker | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-7845](https://issues.apache.org/jira/browse/KAFKA-7845) | Kafka clients do not re-resolve ips when a broker is replaced. |  Major | clients | Jennifer Thompson |  |
| [KAFKA-8057](https://issues.apache.org/jira/browse/KAFKA-8057) | Producer (and probably consumer) retains IP address of broker instead of resolving |  Critical | producer | Bolke de Bruin |  |
| [KAFKA-6582](https://issues.apache.org/jira/browse/KAFKA-6582) | Partitions get underreplicated, with a single ISR, and doesn't recover. Other brokers do not take over and we need to manually restart the broker. |  Major | network | Jurriaan Pruis |  |
| [KAFKA-7958](https://issues.apache.org/jira/browse/KAFKA-7958) | Transactions are broken with kubernetes hosted brokers |  Major | . | Thomas Dickinson |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5503](https://issues.apache.org/jira/browse/KAFKA-5503) | Idempotent producer ignores shutdown while fetching ProducerId |  Major | clients, core, producer | Jason Gustafson | Evgeny Veretennikov |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7503](https://issues.apache.org/jira/browse/KAFKA-7503) | Integration Test Framework for Connect |  Minor | KafkaConnect | Arjun Satish | Arjun Satish |


