
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

## Release 0.10.1.0 - Unreleased (as of 2016-04-19)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3490](https://issues.apache.org/jira/browse/KAFKA-3490) | Multiple version support for ducktape performance tests |  Major | . | Ismael Juma | Ismael Juma |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-855](https://issues.apache.org/jira/browse/KAFKA-855) | Ant+Ivy build for Kafka |  Major | . | David Arthur |  |
| [KAFKA-322](https://issues.apache.org/jira/browse/KAFKA-322) | Remove one-off Send objects |  Minor | core | Jay Kreps | Jay Kreps |
| [KAFKA-1483](https://issues.apache.org/jira/browse/KAFKA-1483) | Split Brain about Leader Partitions |  Major | . | Guozhang Wang | Sriharsha Chintalapani |
| [KAFKA-1054](https://issues.apache.org/jira/browse/KAFKA-1054) | Eliminate Compilation Warnings for 0.8 Final Release |  Major | . | Guozhang Wang | Ismael Juma |
| [KAFKA-3426](https://issues.apache.org/jira/browse/KAFKA-3426) | Improve protocol type errors when invalid sizes are received |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-3431](https://issues.apache.org/jira/browse/KAFKA-3431) | Remove `o.a.k.common.BrokerEndPoint` in favour of `Node` |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-3445](https://issues.apache.org/jira/browse/KAFKA-3445) | ConnectorConfig should validate TASKS\_MAX\_CONFIG's lower bound limit |  Trivial | config | Ryan P |  |
| [KAFKA-3407](https://issues.apache.org/jira/browse/KAFKA-3407) | ErrorLoggingCallback trims helpful diagnostic information. |  Minor | . | Jeremy Custenborder |  |
| [KAFKA-2930](https://issues.apache.org/jira/browse/KAFKA-2930) | Update references to ZooKeeper in the docs |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [KAFKA-3495](https://issues.apache.org/jira/browse/KAFKA-3495) | `NetworkClient.blockingSendAndReceive` should rely on requestTimeout |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-3483](https://issues.apache.org/jira/browse/KAFKA-3483) | Restructure ducktape tests to simplify running subsets of tests |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-3549](https://issues.apache.org/jira/browse/KAFKA-3549) | Close consumers instantiated in consumer tests |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-3506](https://issues.apache.org/jira/browse/KAFKA-3506) | Kafka Connect Task Restart API |  Major | KafkaConnect | Jason Gustafson | Jason Gustafson |
| [KAFKA-3563](https://issues.apache.org/jira/browse/KAFKA-3563) | Maintain MessageAndMetadata constructor compatibility |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-3558](https://issues.apache.org/jira/browse/KAFKA-3558) | Add compression\_type parameter to benchmarks in benchmark\_test.py |  Major | system tests | Ismael Juma | Ismael Juma |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-771](https://issues.apache.org/jira/browse/KAFKA-771) | NPE in handleOffsetCommitRequest |  Major | core | David Arthur | David Arthur |
| [KAFKA-409](https://issues.apache.org/jira/browse/KAFKA-409) | Refactor DefaultEventHandler |  Major | . | Neha Narkhede | Jay Kreps |
| [KAFKA-1320](https://issues.apache.org/jira/browse/KAFKA-1320) | Change compression.codec to compression.type in new producer configs of system tests |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-803](https://issues.apache.org/jira/browse/KAFKA-803) | Offset returned to producer is not consistent |  Major | . | Jun Rao |  |
| [KAFKA-1032](https://issues.apache.org/jira/browse/KAFKA-1032) | Messages sent to the old leader will be lost on broker GC resulted failure |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1445](https://issues.apache.org/jira/browse/KAFKA-1445) | New Producer should send all partitions that have non-empty batches when on of them is ready |  Major | . | Guozhang Wang |  |
| [KAFKA-1067](https://issues.apache.org/jira/browse/KAFKA-1067) | the default partitioner should be randomizing messages and a new partition for the meta refresh requirements created |  Major | . | Joe Stein |  |
| [KAFKA-1258](https://issues.apache.org/jira/browse/KAFKA-1258) | Delete temporary data directory after unit test finishes |  Major | . | Guozhang Wang | Manikumar Reddy |
| [KAFKA-1536](https://issues.apache.org/jira/browse/KAFKA-1536) | Change the status of the JIRA to "Patch Available" in the kafka-review-tool |  Major | . | Guozhang Wang | Manikumar Reddy |
| [KAFKA-1147](https://issues.apache.org/jira/browse/KAFKA-1147) | Consumer socket timeout should be greater than fetch max wait |  Major | . | Joel Koshy | Guozhang Wang |
| [KAFKA-1305](https://issues.apache.org/jira/browse/KAFKA-1305) | Controller can hang on controlled shutdown with auto leader balance enabled |  Blocker | . | Joel Koshy | Sriharsha Chintalapani |
| [KAFKA-1720](https://issues.apache.org/jira/browse/KAFKA-1720) | [Renaming / Comments] Delayed Operations |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-665](https://issues.apache.org/jira/browse/KAFKA-665) | Outgoing responses delayed on a busy Kafka broker |  Critical | . | Neha Narkhede |  |
| [KAFKA-1072](https://issues.apache.org/jira/browse/KAFKA-1072) | Allow mulitple topics selected with a TopicFilter to be balanced among consumers |  Major | . | Jason Rosenberg |  |
| [KAFKA-1863](https://issues.apache.org/jira/browse/KAFKA-1863) | Exception categories / hierarchy in clients |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-2294](https://issues.apache.org/jira/browse/KAFKA-2294) | javadoc compile error due to illegal \<p/\> , build failing (jdk 8) |  Major | . | Jeremy Fields | Jeff Maxwell |
| [KAFKA-1735](https://issues.apache.org/jira/browse/KAFKA-1735) | MemoryRecords.Iterator needs to handle partial reads from compressed stream |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-3412](https://issues.apache.org/jira/browse/KAFKA-3412) | Multiple commitAsync() calls causes SendFailedException in commit callback |  Blocker | consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-3219](https://issues.apache.org/jira/browse/KAFKA-3219) | Long topic names mess up broker topic state |  Major | . | Magnus Edenhill | Vahid Hashemian |
| [KAFKA-3441](https://issues.apache.org/jira/browse/KAFKA-3441) | 0.10.0 documentation still says "0.9.0" |  Blocker | . | Gwen Shapira | Grant Henke |
| [KAFKA-3434](https://issues.apache.org/jira/browse/KAFKA-3434) | Add old ConsumerRecord constructor for compatibility |  Major | consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-3316](https://issues.apache.org/jira/browse/KAFKA-3316) | Add Connect REST API to list available connector classes |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Liquan Pei |
| [KAFKA-2844](https://issues.apache.org/jira/browse/KAFKA-2844) | Use different keyTab for client and server in SASL tests |  Major | security | Ismael Juma | Ismael Juma |
| [KAFKA-3486](https://issues.apache.org/jira/browse/KAFKA-3486) | Autocommit does not execute periodically when partitions are manually assigned |  Critical | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-3464](https://issues.apache.org/jira/browse/KAFKA-3464) | Connect security system tests |  Major | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-3384](https://issues.apache.org/jira/browse/KAFKA-3384) | bin scripts may not be portable/POSIX compliant |  Major | . | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-3488](https://issues.apache.org/jira/browse/KAFKA-3488) | commitAsync() fails if metadata update creates new SASL/SSL connection |  Major | consumer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-2672](https://issues.apache.org/jira/browse/KAFKA-2672) | SendFailedException when new consumer is run with SSL |  Major | consumer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-3528](https://issues.apache.org/jira/browse/KAFKA-3528) | AbstractCoordinator wakeup during rebalance can cause spurious rebalances |  Major | consumer, KafkaConnect | Jason Gustafson | Jason Gustafson |
| [KAFKA-3461](https://issues.apache.org/jira/browse/KAFKA-3461) | Fix typos in Kafka web documentations |  Trivial | website | Dongjoon Hyun |  |
| [KAFKA-3526](https://issues.apache.org/jira/browse/KAFKA-3526) | REST APIs return object representation instead of string for config values, default values and recommended values |  Major | KafkaConnect | Liquan Pei | Liquan Pei |
| [KAFKA-3421](https://issues.apache.org/jira/browse/KAFKA-3421) | Update docs with new connector features |  Blocker | . | Gwen Shapira | Liquan Pei |
| [KAFKA-3569](https://issues.apache.org/jira/browse/KAFKA-3569) | commitAsync() sometimes fails with errors |  Major | clients | Greg Zoller |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1236](https://issues.apache.org/jira/browse/KAFKA-1236) | Change producer performance tool to optionally use the new producer |  Critical | producer | Neha Narkhede | Jay Kreps |
| [KAFKA-1237](https://issues.apache.org/jira/browse/KAFKA-1237) | Add mirror maker using 08 consumer and 09 producer |  Major | tools | Neha Narkhede | Neha Narkhede |
| [KAFKA-1233](https://issues.apache.org/jira/browse/KAFKA-1233) | Integration test for the new producer |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1281](https://issues.apache.org/jira/browse/KAFKA-1281) | add the new producer to existing tools |  Major | producer | Jun Rao | Neha Narkhede |
| [KAFKA-2239](https://issues.apache.org/jira/browse/KAFKA-2239) | Allow coordinator to aggresively remove group when it is no longer owning the group |  Major | consumer | Guozhang Wang | Guozhang Wang |
| [KAFKA-3381](https://issues.apache.org/jira/browse/KAFKA-3381) | Add system test for SimpleConsumerShell |  Major | . | Ashish K Singh | Ashish K Singh |
| [KAFKA-3451](https://issues.apache.org/jira/browse/KAFKA-3451) | Add basic HTML coverage report generation to gradle |  Major | security | Grant Henke | Grant Henke |
| [KAFKA-2910](https://issues.apache.org/jira/browse/KAFKA-2910) | Failure in kafka.api.SslEndToEndAuthorizationTest.testNoGroupAcl |  Major | . | Guozhang Wang | Rajini Sivaram |
| [KAFKA-3508](https://issues.apache.org/jira/browse/KAFKA-3508) | Transient failure in kafka.security.auth.SimpleAclAuthorizerTest.testHighConcurrencyModificationOfResourceAcls |  Major | . | Guozhang Wang | Grant Henke |
| [KAFKA-3505](https://issues.apache.org/jira/browse/KAFKA-3505) | Set curRecord in punctuate() functions |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-3439](https://issues.apache.org/jira/browse/KAFKA-3439) | Document possible exception thrown in public APIs |  Major | streams | Guozhang Wang | Eno Thereska |
| [KAFKA-3529](https://issues.apache.org/jira/browse/KAFKA-3529) | Transient kafka.api.PlaintextConsumerTest.testAsyncCommit failures |  Major | . | Ismael Juma | Jason Gustafson |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3435](https://issues.apache.org/jira/browse/KAFKA-3435) | Remove `Unstable` annotation from new Java Consumer |  Major | . | Ismael Juma | Grant Henke |


