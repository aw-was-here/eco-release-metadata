
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

## Release 2.8.0 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-10092](https://issues.apache.org/jira/browse/KAFKA-10092) | Remove unnecessary enum modifier in NioEchoServer |  Trivial | . | Jakob Homan | Andrey Falko |
| [KAFKA-10036](https://issues.apache.org/jira/browse/KAFKA-10036) | Improve error message if user violates \`Supplier\` pattern |  Minor | streams | Matthias J. Sax | Igor Soarez |
| [KAFKA-10673](https://issues.apache.org/jira/browse/KAFKA-10673) | ConnectionQuotas should cache interbroker listener name |  Minor | core | David Mao | David Mao |
| [KAFKA-10438](https://issues.apache.org/jira/browse/KAFKA-10438) | Lazy initialization of record header to reduce memory usage in validating records |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-6687](https://issues.apache.org/jira/browse/KAFKA-6687) | Allow to read a topic multiple times |  Major | streams | Matthias J. Sax | A. Sophie Blee-Goldman |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-10454](https://issues.apache.org/jira/browse/KAFKA-10454) | Kafka Streams Stuck in infinite REBALANCING loop when stream \<\> table join partitions don't match |  Major | streams | Levani Kokhreidze | Levani Kokhreidze |
| [KAFKA-10471](https://issues.apache.org/jira/browse/KAFKA-10471) | TimeIndex handling may cause data loss in certain back to back failure |  Critical | core, log | Rohit Shekhar | Raman Verma |
| [KAFKA-7987](https://issues.apache.org/jira/browse/KAFKA-7987) | a broker's ZK session may die on transient auth failure |  Critical | . | Jun Rao |  |
| [KAFKA-10469](https://issues.apache.org/jira/browse/KAFKA-10469) | Respect logging hierarchy (KIP-676) |  Major | core | Tom Bentley | Tom Bentley |
| [KAFKA-10470](https://issues.apache.org/jira/browse/KAFKA-10470) | zstd decompression with small batches is slow and causes excessive GC |  Major | . | Robert Wagner | James Yuzawa |
| [KAFKA-10693](https://issues.apache.org/jira/browse/KAFKA-10693) | Tests instantiate QuotaManagers without closing the managers in teardown |  Minor | . | David Mao | David Mao |
| [KAFKA-10705](https://issues.apache.org/jira/browse/KAFKA-10705) | Avoid World Readable RocksDB |  Minor | . | Walker Carlson | Leah Thomas |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-10181](https://issues.apache.org/jira/browse/KAFKA-10181) | Create Envelope RPC and redirection template for configuration change RPCs |  Major | admin | Boyang Chen | Boyang Chen |
| [KAFKA-10624](https://issues.apache.org/jira/browse/KAFKA-10624) | [Easy] FeatureZNodeStatus should use sealed trait instead of Enumeration |  Minor | . | Kowshik Prakasam | Kowshik Prakasam |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-10583](https://issues.apache.org/jira/browse/KAFKA-10583) | Thread-safety of AdminClient is not documented |  Trivial | . | Adem Efe Gencer | Adem Efe Gencer |


