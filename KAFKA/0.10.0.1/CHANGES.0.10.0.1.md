
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

## Release 0.10.0.1 - Unreleased (as of 2016-07-22)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3747](https://issues.apache.org/jira/browse/KAFKA-3747) | Close `RecordBatch.records` when append to batch fails |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-3683](https://issues.apache.org/jira/browse/KAFKA-3683) | Add file descriptor recommendation to ops guide |  Trivial | website | Dustin Cote | Dustin Cote |
| [KAFKA-3785](https://issues.apache.org/jira/browse/KAFKA-3785) | Fetcher spending unnecessary time during metrics recording |  Major | consumer | Greg Fodor | Greg Fodor |
| [KAFKA-3699](https://issues.apache.org/jira/browse/KAFKA-3699) | Update protocol page on website to explain how KIP-35 should be used |  Major | . | Ismael Juma | Ashish K Singh |
| [KAFKA-3880](https://issues.apache.org/jira/browse/KAFKA-3880) | Disallow Join Windows with size zero |  Minor | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-3836](https://issues.apache.org/jira/browse/KAFKA-3836) | RocksDBStore.get() should not pass nulls to Deserializers |  Trivial | streams | Avi Flax | Jeyhun Karimov |
| [KAFKA-3725](https://issues.apache.org/jira/browse/KAFKA-3725) | Update documentation with regards to XFS |  Major | . | Ismael Juma | Todd Palino |
| [KAFKA-3922](https://issues.apache.org/jira/browse/KAFKA-3922) | Add a copy-constructor to AbstractStream |  Trivial | streams | Florian Hussonnois | Florian Hussonnois |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3258](https://issues.apache.org/jira/browse/KAFKA-3258) | BrokerTopicMetrics of deleted topics are never deleted |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-3393](https://issues.apache.org/jira/browse/KAFKA-3393) | Update site docs and javadoc based on max.block.ms changes |  Major | . | Grant Henke | Mayuresh Gharat |
| [KAFKA-3718](https://issues.apache.org/jira/browse/KAFKA-3718) | propagate all KafkaConfig \_\_consumer\_offsets configs to OffsetConfig instantiation |  Major | . | Onur Karaman | Onur Karaman |
| [KAFKA-3784](https://issues.apache.org/jira/browse/KAFKA-3784) | TimeWindows#windowsFor misidentifies some windows if TimeWindows#advanceBy is used |  Minor | streams | Tom Rybak | Tom Rybak |
| [KAFKA-3728](https://issues.apache.org/jira/browse/KAFKA-3728) | EndToEndAuthorizationTest offsets\_topic misconfigured |  Major | . | Edoardo Comar | Edoardo Comar |
| [KAFKA-3789](https://issues.apache.org/jira/browse/KAFKA-3789) | Upgrade Snappy to fix snappy decompression errors |  Critical | core | Grant Henke | Grant Henke |
| [KAFKA-3787](https://issues.apache.org/jira/browse/KAFKA-3787) | Preserve message timestamp in mirror mkaer |  Major | tools | TAO XIAO | TAO XIAO |
| [KAFKA-3783](https://issues.apache.org/jira/browse/KAFKA-3783) | Race condition on last ACL removal for a resource fails with a ZkBadVersionException |  Minor | . | Sébastien Launay | Sébastien Launay |
| [KAFKA-3781](https://issues.apache.org/jira/browse/KAFKA-3781) | Errors.exceptionName() can throw NPE |  Major | . | Grant Henke | Ismael Juma |
| [KAFKA-3817](https://issues.apache.org/jira/browse/KAFKA-3817) | KTableRepartitionMap should handle null inputs |  Major | streams | Jeff Klukas | Guozhang Wang |
| [KAFKA-3830](https://issues.apache.org/jira/browse/KAFKA-3830) | getTGT() debug logging exposes confidential information |  Major | security | Ismael Juma | Ismael Juma |
| [KAFKA-3805](https://issues.apache.org/jira/browse/KAFKA-3805) | Running multiple instances of a Streams app on the same machine results in Java\_org\_rocksdb\_RocksDB\_write error |  Critical | streams | Andres Gomez Ferrer | Eno Thereska |
| [KAFKA-3850](https://issues.apache.org/jira/browse/KAFKA-3850) | WorkerSinkTask should retry commits if woken up during rebalance or shutdown |  Major | KafkaConnect | Jason Gustafson | Jason Gustafson |
| [KAFKA-3864](https://issues.apache.org/jira/browse/KAFKA-3864) | Kafka Connect Struct.get returning defaultValue from Struct not the field schema |  Blocker | KafkaConnect | Andrew Stevenson | Ewen Cheslack-Postava |
| [KAFKA-3890](https://issues.apache.org/jira/browse/KAFKA-3890) | Kafka Streams: task assignment is not maintained on cluster restart or rolling restart |  Major | streams | Henry Cai | Henry Cai |
| [KAFKA-3902](https://issues.apache.org/jira/browse/KAFKA-3902) | Optimize KTable.filter() to reduce unnecessary traffic |  Major | streams | Guozhang Wang | Phil Derome |
| [KAFKA-3854](https://issues.apache.org/jira/browse/KAFKA-3854) | Subsequent regex subscription calls fail |  Major | consumer | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-3802](https://issues.apache.org/jira/browse/KAFKA-3802) | log mtimes reset on broker restart |  Major | . | Andrew Otto | Moritz Siuts |
| [KAFKA-3941](https://issues.apache.org/jira/browse/KAFKA-3941) | Avoid applying eviction listener in InMemoryKeyValueLoggedStore |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-3952](https://issues.apache.org/jira/browse/KAFKA-3952) | VerifyConsumerRebalance cannot succeed when checking partition owner |  Minor | core | Simon Wan Wenli | Simon Wan Wenli |
| [KAFKA-3855](https://issues.apache.org/jira/browse/KAFKA-3855) | Guard race conditions in TopologyBuilder |  Major | streams | Guozhang Wang | Damian Guy |
| [KAFKA-3915](https://issues.apache.org/jira/browse/KAFKA-3915) | LogCleaner IO buffers do not account for potential size difference due to message format change |  Blocker | log | Tommy Becker | Ismael Juma |
| [KAFKA-3782](https://issues.apache.org/jira/browse/KAFKA-3782) | Transient failure with kafkatest.tests.connect.connect\_distributed\_test.ConnectDistributedTest.test\_bounce.clean=True |  Minor | KafkaConnect | Liquan Pei | Jason Gustafson |
| [KAFKA-3983](https://issues.apache.org/jira/browse/KAFKA-3983) | It would be helpful if SocketServer's Acceptors logged both the SocketChannel port and the processor ID upon registra |  Minor | core | Ryan P | Ryan P |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3863](https://issues.apache.org/jira/browse/KAFKA-3863) | Add system test for connector failure/restart |  Major | KafkaConnect, system tests | Jason Gustafson | Jason Gustafson |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3660](https://issues.apache.org/jira/browse/KAFKA-3660) | Log exception message in ControllerBrokerRequestBatch |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [KAFKA-3865](https://issues.apache.org/jira/browse/KAFKA-3865) | Transient failures in org.apache.kafka.connect.runtime.WorkerSourceTaskTest.testSlowTaskStart |  Major | unit tests | Guozhang Wang | Jason Gustafson |
| [KAFKA-3931](https://issues.apache.org/jira/browse/KAFKA-3931) | kafka.api.PlaintextConsumerTest.testPatternUnsubscription transient failure |  Major | . | Vahid Hashemian | Vahid Hashemian |


