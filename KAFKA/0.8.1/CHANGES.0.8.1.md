
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

## Release 0.8.1 - 2014-03-12

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1117](https://issues.apache.org/jira/browse/KAFKA-1117) | tool for checking the consistency among replicas |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1092](https://issues.apache.org/jira/browse/KAFKA-1092) | Add server config parameter to separate bind address and ZK hostname |  Major | config | Roger Hoover | Roger Hoover |
| [KAFKA-925](https://issues.apache.org/jira/browse/KAFKA-925) | Add optional partition key override in producer |  Major | producer | Jay Kreps | Jay Kreps |
| [KAFKA-330](https://issues.apache.org/jira/browse/KAFKA-330) | Add delete topic support |  Blocker | controller, log, replication | Neha Narkhede | Neha Narkhede |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1232](https://issues.apache.org/jira/browse/KAFKA-1232) | make TopicCommand more consistent |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1186](https://issues.apache.org/jira/browse/KAFKA-1186) | Add topic regex to the kafka-topics tool |  Major | tools | Neha Narkhede | Neha Narkhede |
| [KAFKA-1171](https://issues.apache.org/jira/browse/KAFKA-1171) | Gradle build for Kafka |  Blocker | packaging | David Arthur | David Arthur |
| [KAFKA-1136](https://issues.apache.org/jira/browse/KAFKA-1136) | Add subAppend in Log4jAppender for generic usage |  Trivial | producer | Jie Huang | Jun Rao |
| [KAFKA-1127](https://issues.apache.org/jira/browse/KAFKA-1127) | kafka and zookeeper server should start in daemon mode and log to correct position |  Minor | core | Raymond Liu | Raymond Liu |
| [KAFKA-995](https://issues.apache.org/jira/browse/KAFKA-995) | Enforce that the value for replica.fetch.max.bytes is always \>= the value for message.max.bytes |  Minor | config | Sam Meder | Sam Meder |
| [KAFKA-918](https://issues.apache.org/jira/browse/KAFKA-918) | Change log.retention.hours to be log.retention.mins |  Major | config | Jason Weiss | Alin Vasile |
| [KAFKA-347](https://issues.apache.org/jira/browse/KAFKA-347) | change number of partitions of a topic online |  Major | core | Jun Rao | Sriram Subramanian |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1417](https://issues.apache.org/jira/browse/KAFKA-1417) | Very slow initial high-level consumer startup in low traffic/blocking fetch scenario |  Major | consumer | Sam Meder | Neha Narkhede |
| [KAFKA-1288](https://issues.apache.org/jira/browse/KAFKA-1288) | add enclosing dir in release tar gz |  Major | packaging | Jun Rao | Jun Rao |
| [KAFKA-1275](https://issues.apache.org/jira/browse/KAFKA-1275) | fixes for quickstart documentation |  Minor | website | Evan Zacks | Jay Kreps |
| [KAFKA-1228](https://issues.apache.org/jira/browse/KAFKA-1228) | Socket Leak on ReplicaFetcherThread |  Critical | consumer | Ahmy Yulrizka | Ahmy Yulrizka |
| [KAFKA-1202](https://issues.apache.org/jira/browse/KAFKA-1202) | optimize ZK access in KafkaController |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1200](https://issues.apache.org/jira/browse/KAFKA-1200) | inconsistent log levels when consumed offset is reset |  Major | consumer | Jason Rosenberg | Neha Narkhede |
| [KAFKA-1170](https://issues.apache.org/jira/browse/KAFKA-1170) | ISR can be inconsistent during partition reassignment for low throughput partitions |  Critical | controller | Neha Narkhede | Neha Narkhede |
| [KAFKA-1169](https://issues.apache.org/jira/browse/KAFKA-1169) | missing synchronization in access to leaderCache in KafkaApis |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1156](https://issues.apache.org/jira/browse/KAFKA-1156) | Improve reassignment tool to output the existing assignment to facilitate rollbacks |  Critical | tools | Neha Narkhede | Neha Narkhede |
| [KAFKA-1154](https://issues.apache.org/jira/browse/KAFKA-1154) | replicas may not have consistent data after becoming follower |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1112](https://issues.apache.org/jira/browse/KAFKA-1112) | broker can not start itself after kafka is killed with -9 |  Critical | log | Kane Kim | Jay Kreps |
| [KAFKA-1097](https://issues.apache.org/jira/browse/KAFKA-1097) | Race condition while reassigning low throughput partition leads to incorrect ISR information in zookeeper |  Critical | controller | Neha Narkhede | Neha Narkhede |
| [KAFKA-1090](https://issues.apache.org/jira/browse/KAFKA-1090) | testPipelinedRequestOrdering has transient failures |  Minor | core | Jun Rao | Jun Rao |
| [KAFKA-1074](https://issues.apache.org/jira/browse/KAFKA-1074) | Reassign partitions should delete the old replicas from disk |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1052](https://issues.apache.org/jira/browse/KAFKA-1052) | integrate add-partitions command into topicCommand |  Major | core | Jun Rao | Sriram Subramanian |
| [KAFKA-1009](https://issues.apache.org/jira/browse/KAFKA-1009) | DumpLogSegments tool should return error on non-existing files |  Minor | log | Jun Rao | Guozhang Wang |
| [KAFKA-985](https://issues.apache.org/jira/browse/KAFKA-985) | Increasing log retention quickly overflows scala Int |  Minor | log | Frank Fejes | Jay Kreps |
| [KAFKA-897](https://issues.apache.org/jira/browse/KAFKA-897) | NullPointerException in ConsoleConsumer |  Minor | consumer | Colin B. | Neha Narkhede |
| [KAFKA-852](https://issues.apache.org/jira/browse/KAFKA-852) | Remove clientId from OffsetFetchResponse and OffsetCommitResponse |  Minor | core | David Arthur | David Arthur |
| [KAFKA-759](https://issues.apache.org/jira/browse/KAFKA-759) | Commit/FetchOffset APIs should not return versionId |  Minor | core | David Arthur | David Arthur |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-965](https://issues.apache.org/jira/browse/KAFKA-965) | merge c39d37e9dd97bf2462ffbd1a96c0b2cb05034bae from 0.8 to trunk |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-823](https://issues.apache.org/jira/browse/KAFKA-823) | merge 0.8 (51421fcc0111031bb77f779a6f6c00520d526a34) to trunk |  Major | core | Jun Rao | Jun Rao |


