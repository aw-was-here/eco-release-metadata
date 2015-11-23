
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

## Release 0.9.1.0 - Unreleased (as of 2015-11-23)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2860](https://issues.apache.org/jira/browse/KAFKA-2860) | New consumer should handle auto-commit errors more gracefully |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2800](https://issues.apache.org/jira/browse/KAFKA-2800) | Update outdated dependencies |  Major | . | Grant Henke | Grant Henke |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2872](https://issues.apache.org/jira/browse/KAFKA-2872) | Error starting KafkaStream caused by sink not being connected to parent source/processor nodes |  Major | kafka streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-2862](https://issues.apache.org/jira/browse/KAFKA-2862) | Incorrect help description for MirrorMaker's message.handler.args |  Major | . | Ashish K Singh | Ashish K Singh |
| [KAFKA-2859](https://issues.apache.org/jira/browse/KAFKA-2859) | Deadlock in WorkerSourceTask |  Blocker | copycat | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2826](https://issues.apache.org/jira/browse/KAFKA-2826) | Make Kafka Connect ducktape services easier to extend |  Minor | copycat | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2824](https://issues.apache.org/jira/browse/KAFKA-2824) | MiniKDC based tests don't run in VirtualBox |  Major | . | Ben Stopford | Ben Stopford |
| [KAFKA-2820](https://issues.apache.org/jira/browse/KAFKA-2820) | System tests: log level is no longer propagating from service classes |  Major | . | Geoff Anderson | Geoff Anderson |
| [KAFKA-2815](https://issues.apache.org/jira/browse/KAFKA-2815) | unit test failure in org.apache.kafka.streams.processor.internals.KafkaStreamingPartitionAssignorTest |  Major | . | Jun Rao | Grant Henke |
| [KAFKA-2814](https://issues.apache.org/jira/browse/KAFKA-2814) | Kafka Connect system tests using REST interface fail on AWS |  Major | copycat, system tests | Ewen Cheslack-Postava | Ewen Cheslack-Postava |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2811](https://issues.apache.org/jira/browse/KAFKA-2811) | Add standby tasks |  Major | kafka streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2763](https://issues.apache.org/jira/browse/KAFKA-2763) | Reduce stream task migrations and initialization costs |  Major | kafka streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2727](https://issues.apache.org/jira/browse/KAFKA-2727) | initialize only the part of the topology relevant to the task |  Major | kafka streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2707](https://issues.apache.org/jira/browse/KAFKA-2707) | Make KStream processor names deterministic |  Major | . | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2706](https://issues.apache.org/jira/browse/KAFKA-2706) | Make state stores first class citizens in the processor DAG |  Major | kafka streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2694](https://issues.apache.org/jira/browse/KAFKA-2694) | Make a task id be a composite id of a topic group id and a partition id |  Major | kafka streams | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2654](https://issues.apache.org/jira/browse/KAFKA-2654) | Avoid calling Consumer.poll(0) in each iteration |  Major | . | Guozhang Wang | Yasuhiro Matsuda |
| [KAFKA-2652](https://issues.apache.org/jira/browse/KAFKA-2652) | Incorporate the new consumer protocol with partition-group interface |  Major | . | Guozhang Wang | Yasuhiro Matsuda |
| [KAFKA-2600](https://issues.apache.org/jira/browse/KAFKA-2600) | Make KStream interfaces compatible with Java 8 java.util.function |  Major | . | Guozhang Wang | Randall Hauch |
| [KAFKA-2594](https://issues.apache.org/jira/browse/KAFKA-2594) | Add a key-value store that is a fixed-capacity in-memory LRU cache |  Major | kafka streams | Randall Hauch | Randall Hauch |
| [KAFKA-2593](https://issues.apache.org/jira/browse/KAFKA-2593) | KeyValueStores should not require use of the context's default serializers and deserializers |  Major | kafka streams | Randall Hauch | Randall Hauch |
| [KAFKA-2591](https://issues.apache.org/jira/browse/KAFKA-2591) | Remove Persistent Data before Restoringafter a Fault |  Major | . | Guozhang Wang | Guozhang Wang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2845](https://issues.apache.org/jira/browse/KAFKA-2845) | Add 0.9 clients vs 0.8 brokers compatibility test |  Major | . | Geoff Anderson | Geoff Anderson |
| [KAFKA-2830](https://issues.apache.org/jira/browse/KAFKA-2830) | Change default fix version to 0.9.1.0 in kafka-merge-pr.py |  Major | build | Ismael Juma | Ismael Juma |


