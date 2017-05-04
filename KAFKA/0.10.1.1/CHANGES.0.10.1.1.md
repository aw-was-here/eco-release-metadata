
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

## Release 0.10.1.1 - 2016-12-20



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4331](https://issues.apache.org/jira/browse/KAFKA-4331) | Kafka Streams resetter is slow because it joins the same group for each topic |  Major | streams | Roger Hoover | Matthias J. Sax |
| [KAFKA-4302](https://issues.apache.org/jira/browse/KAFKA-4302) | Simplify KTableSource |  Minor | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-4379](https://issues.apache.org/jira/browse/KAFKA-4379) | Remove caching of dirty and removed keys from StoreChangeLogger |  Minor | streams | Damian Guy | Damian Guy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4025](https://issues.apache.org/jira/browse/KAFKA-4025) | build fails on windows due to rat target output encoding |  Minor | . | radai rosenblatt | radai rosenblatt |
| [KAFKA-4275](https://issues.apache.org/jira/browse/KAFKA-4275) | Check of State-Store-assignment to Processor-Nodes is not enabled |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-4269](https://issues.apache.org/jira/browse/KAFKA-4269) | Multiple KStream instances with at least one Regex source causes NPE when using multiple consumers |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-4313](https://issues.apache.org/jira/browse/KAFKA-4313) | ISRs may thrash when replication quota is enabled |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-4309](https://issues.apache.org/jira/browse/KAFKA-4309) | Allow "pluggable" properties in KafkaService in System Tests |  Major | . | Ben Stopford |  |
| [KAFKA-4361](https://issues.apache.org/jira/browse/KAFKA-4361) | Streams does not respect user configs for "default" params |  Major | streams | Roger Hoover | Damian Guy |
| [KAFKA-4311](https://issues.apache.org/jira/browse/KAFKA-4311) | Multi layer cache eviction causes forwarding to incorrect ProcessorNode |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4409](https://issues.apache.org/jira/browse/KAFKA-4409) | ZK consumer shutdown/topic event deadlock |  Major | consumer, core | Joel Koshy | Joel Koshy |
| [KAFKA-4355](https://issues.apache.org/jira/browse/KAFKA-4355) | StreamThread intermittently dies with "Topic not found during partition assignment" when broker restarted |  Major | streams | Michal Borowiecki | Eno Thereska |
| [KAFKA-4362](https://issues.apache.org/jira/browse/KAFKA-4362) | Consumer can fail after reassignment of the offsets topic partition |  Major | . | Joel Koshy | Mayuresh Gharat |
| [KAFKA-4395](https://issues.apache.org/jira/browse/KAFKA-4395) | KafkaConfig and LogConfig should not have static initialization order dependencies |  Major | . | Sumant Tambe | Sumant Tambe |
| [KAFKA-4384](https://issues.apache.org/jira/browse/KAFKA-4384) | ReplicaFetcherThread stopped after ReplicaFetcherThread received a corrupted message |  Major | core | Jun He | Jun He |
| [KAFKA-4271](https://issues.apache.org/jira/browse/KAFKA-4271) | The console consumer fails on Windows with new consumer is used |  Major | . | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-4469](https://issues.apache.org/jira/browse/KAFKA-4469) | Consumer throughput regression caused by inefficient list removal and copy |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-4438](https://issues.apache.org/jira/browse/KAFKA-4438) | BACKPORT - Add scala 2.12 support |  Major | build | Bernard Leach | Bernard Leach |
| [KAFKA-4399](https://issues.apache.org/jira/browse/KAFKA-4399) | Deadlock between cleanupGroupMetadata and offset commit |  Blocker | . | Alexey Ozeritskiy | Alexey Ozeritskiy |
| [KAFKA-4205](https://issues.apache.org/jira/browse/KAFKA-4205) | NullPointerException in fetchOffsetsBefore |  Major | core | Andrew Grasso | Anton Karamanov |
| [KAFKA-3994](https://issues.apache.org/jira/browse/KAFKA-3994) | Deadlock between consumer heartbeat expiration and offset commit. |  Critical | core | Jiangjie Qin | Jason Gustafson |
| [KAFKA-4472](https://issues.apache.org/jira/browse/KAFKA-4472) | offsetRetentionMs miscalculated in GroupCoordinator |  Major | . | Jason Aliyetti | Kim Christensen |
| [KAFKA-4488](https://issues.apache.org/jira/browse/KAFKA-4488) | UnsupportedOperationException during initialization of StandbyTask |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4431](https://issues.apache.org/jira/browse/KAFKA-4431) | HeartbeatThread should be a daemon thread |  Major | clients | David Judd | Rajini Sivaram |
| [KAFKA-4529](https://issues.apache.org/jira/browse/KAFKA-4529) | tombstone may be removed earlier than it should |  Major | . | Jun Rao | Jiangjie Qin |
| [KAFKA-4477](https://issues.apache.org/jira/browse/KAFKA-4477) | Node reduces its ISR to itself, and doesn\'t recover. Other nodes do not take leadership, cluster remains sick until node is restarted. |  Critical | core | Michael Andre Pearce (IG) | Apurva Mehta |
| [KAFKA-4497](https://issues.apache.org/jira/browse/KAFKA-4497) | log cleaner breaks on timeindex |  Critical | log | Robert Schumann | Jiangjie Qin |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4352](https://issues.apache.org/jira/browse/KAFKA-4352) | Failure in org.apache.kafka.streams.integration.ResetIntegrationTest.testReprocessingFromScratchAfterReset |  Major | . | Guozhang Wang | Matthias J. Sax |


