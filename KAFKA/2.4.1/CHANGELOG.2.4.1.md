
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

## Release 2.4.1 - 2020-03-10



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9011](https://issues.apache.org/jira/browse/KAFKA-9011) | Add KStream#flatTransform and KStream#flatTransformValues to Scala API |  Major | streams | Alex Kokachev | Alex Kokachev |
| [KAFKA-7052](https://issues.apache.org/jira/browse/KAFKA-7052) | ExtractField SMT throws NPE - needs clearer error message |  Major | KafkaConnect | Robin Moffatt |  |
| [KAFKA-9515](https://issues.apache.org/jira/browse/KAFKA-9515) | Upgrade ZooKeeper to 3.5.7 |  Blocker | . | Ismael Juma | Ismael Juma |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9051](https://issues.apache.org/jira/browse/KAFKA-9051) | Source task source offset reads can block graceful shutdown |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8705](https://issues.apache.org/jira/browse/KAFKA-8705) | NullPointerException was thrown by topology optimization when two MergeNodes have common KeyChaingingNode |  Major | streams | Hiroshi Nakahara | Bill Bejeck |
| [KAFKA-9310](https://issues.apache.org/jira/browse/KAFKA-9310) | StreamThread may die from recoverable UnknownProducerId exception |  Major | streams | John Roesler | John Roesler |
| [KAFKA-9307](https://issues.apache.org/jira/browse/KAFKA-9307) | Transaction coordinator could be left in unknown state after ZK session timeout |  Major | core | Dhruvil Shah | Dhruvil Shah |
| [KAFKA-9232](https://issues.apache.org/jira/browse/KAFKA-9232) | Coordinator new member heartbeat completion does not work for JoinGroup v3 |  Major | . | Jason Gustafson | A. Sophie Blee-Goldman |
| [KAFKA-8933](https://issues.apache.org/jira/browse/KAFKA-8933) | An unhandled SSL handshake exception in polling event - needed a retry logic |  Critical | clients | Remigius | Jason Gustafson |
| [KAFKA-9293](https://issues.apache.org/jira/browse/KAFKA-9293) | NPE in DumpLogSegments with --offsets-decoder |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9335](https://issues.apache.org/jira/browse/KAFKA-9335) | java.lang.IllegalArgumentException: Number of partitions must be at least 1. |  Blocker | streams | Nitay Kufert | Boyang Chen |
| [KAFKA-9065](https://issues.apache.org/jira/browse/KAFKA-9065) | Loading offsets and group metadata loops forever |  Major | . | David Jacot | David Jacot |
| [KAFKA-9068](https://issues.apache.org/jira/browse/KAFKA-9068) | Fix incorrect JavaDocs for \`Stores.xxxSessionStore(...)\` |  Minor | streams | Matthias J. Sax | David Kim |
| [KAFKA-9144](https://issues.apache.org/jira/browse/KAFKA-9144) | Early expiration of producer state can cause coordinator epoch to regress |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9235](https://issues.apache.org/jira/browse/KAFKA-9235) | Transaction state not cleaned up following StopReplica request |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9449](https://issues.apache.org/jira/browse/KAFKA-9449) | Producer's BufferPool may block the producer from closing. |  Major | . | Brian Byrne | Brian Byrne |
| [KAFKA-9083](https://issues.apache.org/jira/browse/KAFKA-9083) | Various parsing issues in Values class |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9024](https://issues.apache.org/jira/browse/KAFKA-9024) | org.apache.kafka.connect.transforms.ValueToKey throws NPE |  Minor | KafkaConnect | Robin Moffatt | Nigel Liang |
| [KAFKA-9143](https://issues.apache.org/jira/browse/KAFKA-9143) | DistributedHerder misleadingly log error on connector task reconfiguration |  Minor | KafkaConnect | Ivan Yurchenko | Ivan Yurchenko |
| [KAFKA-9254](https://issues.apache.org/jira/browse/KAFKA-9254) | Updating Kafka Broker configuration dynamically twice reverts log configuration to default |  Critical | config, log, replication | fenghong | huxihx |
| [KAFKA-8764](https://issues.apache.org/jira/browse/KAFKA-8764) | LogCleanerManager endless loop while compacting/cleaning segments |  Major | log cleaner | Tomislav Rajakovic |  |
| [KAFKA-9492](https://issues.apache.org/jira/browse/KAFKA-9492) | ProducerResponse with record-level errors throw NPE with older client version |  Major | clients | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9074](https://issues.apache.org/jira/browse/KAFKA-9074) | Connect's Values class does not parse time or timestamp values from string literals |  Major | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-9491](https://issues.apache.org/jira/browse/KAFKA-9491) | Fast election during reassignment can lead to replica fetcher failures |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9507](https://issues.apache.org/jira/browse/KAFKA-9507) | AdminClient should check for missing committed offsets |  Major | . | Jason Gustafson | David Mao |
| [KAFKA-9517](https://issues.apache.org/jira/browse/KAFKA-9517) | KTable Joins Without Materialized Argument Yield Results That Further Joins NPE On |  Blocker | streams | Paul Snively | John Roesler |
| [KAFKA-9390](https://issues.apache.org/jira/browse/KAFKA-9390) | Non-key joining of KTable not compatible with confluent avro serdes |  Blocker | streams | Andy Bryant | John Roesler |
| [KAFKA-9503](https://issues.apache.org/jira/browse/KAFKA-9503) | TopologyTestDriver processes intermediate results in the wrong order |  Major | streams-test-utils | John Roesler | John Roesler |
| [KAFKA-9500](https://issues.apache.org/jira/browse/KAFKA-9500) | Foreign-Key Join creates an invalid topology |  Blocker | streams | John Roesler | John Roesler |
| [KAFKA-9192](https://issues.apache.org/jira/browse/KAFKA-9192) | NullPointerException if field in schema not present in value |  Major | KafkaConnect | Mark Tinsley |  |
| [KAFKA-9204](https://issues.apache.org/jira/browse/KAFKA-9204) | ReplaceField transformation fails when encountering tombstone event |  Major | KafkaConnect | Georgios Kalogiros |  |
| [KAFKA-9535](https://issues.apache.org/jira/browse/KAFKA-9535) | Metadata not updated when consumer encounters FENCED\_LEADER\_EPOCH |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-9540](https://issues.apache.org/jira/browse/KAFKA-9540) | Application getting "Could not find the standby task 0\_4 while closing it" error |  Minor | streams | Badai Aqrandista | A. Sophie Blee-Goldman |
| [KAFKA-8025](https://issues.apache.org/jira/browse/KAFKA-8025) | Flaky Test RocksDBGenericOptionsToDbOptionsColumnFamilyOptionsAdapterTest#shouldForwardAllDbOptionsCalls |  Critical | streams, unit tests | Konstantine Karantasis | Matthias J. Sax |
| [KAFKA-9306](https://issues.apache.org/jira/browse/KAFKA-9306) | Kafka Consumer does not clean up all metrics after shutdown |  Major | . | Colin McCabe | Colin McCabe |
| [KAFKA-6266](https://issues.apache.org/jira/browse/KAFKA-6266) | Kafka 1.0.0 : Repeated occurrence of WARN Resetting first dirty offset of \_\_consumer\_offsets-xx to log start offset 203569 since the checkpointed offset 120955 is invalid. (kafka.log.LogCleanerManager$) |  Major | offset manager | VinayKumar | David Mao |
| [KAFKA-9599](https://issues.apache.org/jira/browse/KAFKA-9599) | create unique sensor to record group rebalance |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-9601](https://issues.apache.org/jira/browse/KAFKA-9601) | Workers log raw connector configs, including values |  Critical | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8245](https://issues.apache.org/jira/browse/KAFKA-8245) | Flaky Test DeleteConsumerGroupsTest#testDeleteCmdAllGroups |  Critical | admin, unit tests | Matthias J. Sax | Chia-Ping Tsai |


