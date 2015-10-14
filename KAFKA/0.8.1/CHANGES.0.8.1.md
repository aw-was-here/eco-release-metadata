
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


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1117](https://issues.apache.org/jira/browse/KAFKA-1117) | tool for checking the consistency among replicas |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1092](https://issues.apache.org/jira/browse/KAFKA-1092) | Add server config parameter to separate bind address and ZK hostname |  Major | config | Roger Hoover | Roger Hoover |
| [KAFKA-925](https://issues.apache.org/jira/browse/KAFKA-925) | Add optional partition key override in producer |  Major | producer | Jay Kreps | Jay Kreps |
| [KAFKA-657](https://issues.apache.org/jira/browse/KAFKA-657) | Add an API to commit offsets |  Major | . | Jay Kreps |  |
| [KAFKA-615](https://issues.apache.org/jira/browse/KAFKA-615) | Avoid fsync on log segment roll |  Major | . | Jay Kreps | Jay Kreps |
| [KAFKA-554](https://issues.apache.org/jira/browse/KAFKA-554) | Move all per-topic configuration into ZK and add to the CreateTopicCommand |  Major | . | Jay Kreps | Jay Kreps |
| [KAFKA-330](https://issues.apache.org/jira/browse/KAFKA-330) | Add delete topic support |  Blocker | controller, log, replication | Neha Narkhede | Neha Narkhede |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1232](https://issues.apache.org/jira/browse/KAFKA-1232) | make TopicCommand more consistent |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1186](https://issues.apache.org/jira/browse/KAFKA-1186) | Add topic regex to the kafka-topics tool |  Major | tools | Neha Narkhede | Neha Narkhede |
| [KAFKA-1171](https://issues.apache.org/jira/browse/KAFKA-1171) | Gradle build for Kafka |  Blocker | packaging | David Arthur | David Arthur |
| [KAFKA-1158](https://issues.apache.org/jira/browse/KAFKA-1158) | remove bin/run-rat.sh |  Major | . | Joe Stein |  |
| [KAFKA-1136](https://issues.apache.org/jira/browse/KAFKA-1136) | Add subAppend in Log4jAppender for generic usage |  Trivial | producer | Jie Huang | Jun Rao |
| [KAFKA-1131](https://issues.apache.org/jira/browse/KAFKA-1131) | copy some more files into the release tar and zip that are needed/desired |  Major | . | Joe Stein |  |
| [KAFKA-1127](https://issues.apache.org/jira/browse/KAFKA-1127) | kafka and zookeeper server should start in daemon mode and log to correct position |  Minor | core | Raymond Liu | Raymond Liu |
| [KAFKA-1084](https://issues.apache.org/jira/browse/KAFKA-1084) | Validate properties for custom serializers |  Minor | . | Francois Saint-Jacques | Francois Saint-Jacques |
| [KAFKA-1001](https://issues.apache.org/jira/browse/KAFKA-1001) | Handle follower transition in batch |  Major | . | Jay Kreps | Guozhang Wang |
| [KAFKA-995](https://issues.apache.org/jira/browse/KAFKA-995) | Enforce that the value for replica.fetch.max.bytes is always \>= the value for message.max.bytes |  Minor | config | Sam Meder | Sam Meder |
| [KAFKA-918](https://issues.apache.org/jira/browse/KAFKA-918) | Change log.retention.hours to be log.retention.mins |  Major | config | Jason Weiss | Alin Vasile |
| [KAFKA-561](https://issues.apache.org/jira/browse/KAFKA-561) | Rebuild index file for a log segment if there is none |  Major | . | Jay Kreps | Jay Kreps |
| [KAFKA-347](https://issues.apache.org/jira/browse/KAFKA-347) | change number of partitions of a topic online |  Major | core | Jun Rao | Sriram Subramanian |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1417](https://issues.apache.org/jira/browse/KAFKA-1417) | Very slow initial high-level consumer startup in low traffic/blocking fetch scenario |  Major | consumer | Sam Meder | Neha Narkhede |
| [KAFKA-1319](https://issues.apache.org/jira/browse/KAFKA-1319) | kafka jar doesn't depend on metrics-annotation any more |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-1289](https://issues.apache.org/jira/browse/KAFKA-1289) | Misc. nitpicks in log cleaner |  Major | . | Jay Kreps |  |
| [KAFKA-1288](https://issues.apache.org/jira/browse/KAFKA-1288) | add enclosing dir in release tar gz |  Major | packaging | Jun Rao | Jun Rao |
| [KAFKA-1275](https://issues.apache.org/jira/browse/KAFKA-1275) | fixes for quickstart documentation |  Minor | website | Evan Zacks | Jay Kreps |
| [KAFKA-1271](https://issues.apache.org/jira/browse/KAFKA-1271) | controller logs exceptions during ZK session expiration |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-1263](https://issues.apache.org/jira/browse/KAFKA-1263) | Snazzy up the README markdown for better visibility on github |  Major | . | Joe Stein |  |
| [KAFKA-1243](https://issues.apache.org/jira/browse/KAFKA-1243) | Gradle issues for release |  Blocker | . | Joe Stein |  |
| [KAFKA-1228](https://issues.apache.org/jira/browse/KAFKA-1228) | Socket Leak on ReplicaFetcherThread |  Critical | consumer | Ahmy Yulrizka | Ahmy Yulrizka |
| [KAFKA-1214](https://issues.apache.org/jira/browse/KAFKA-1214) | Support arguments to zookeeper-shell.sh script |  Trivial | . | Philip K. Warren | Philip K. Warren |
| [KAFKA-1208](https://issues.apache.org/jira/browse/KAFKA-1208) | Update system test still to use kafka-topics instead of kafka-create-topics shell |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1205](https://issues.apache.org/jira/browse/KAFKA-1205) | README in examples not update |  Minor | . | Ailing Zhang | Ailing Zhang |
| [KAFKA-1202](https://issues.apache.org/jira/browse/KAFKA-1202) | optimize ZK access in KafkaController |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1200](https://issues.apache.org/jira/browse/KAFKA-1200) | inconsistent log levels when consumed offset is reset |  Major | consumer | Jason Rosenberg | Neha Narkhede |
| [KAFKA-1198](https://issues.apache.org/jira/browse/KAFKA-1198) | NullPointerException in describe topic |  Major | . | Jun Rao | Guozhang Wang |
| [KAFKA-1170](https://issues.apache.org/jira/browse/KAFKA-1170) | ISR can be inconsistent during partition reassignment for low throughput partitions |  Critical | controller | Neha Narkhede | Neha Narkhede |
| [KAFKA-1169](https://issues.apache.org/jira/browse/KAFKA-1169) | missing synchronization in access to leaderCache in KafkaApis |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1168](https://issues.apache.org/jira/browse/KAFKA-1168) | OfflinePartitionCount in JMX can be incorrect during controlled shutdown |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-1164](https://issues.apache.org/jira/browse/KAFKA-1164) | kafka should depend on snappy 1.0.5 (instead of 1.0.4.1) |  Major | . | Jason Rosenberg | Jason Rosenberg |
| [KAFKA-1157](https://issues.apache.org/jira/browse/KAFKA-1157) | Clean up Per-topic Configuration from Kafka properties |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1156](https://issues.apache.org/jira/browse/KAFKA-1156) | Improve reassignment tool to output the existing assignment to facilitate rollbacks |  Critical | tools | Neha Narkhede | Neha Narkhede |
| [KAFKA-1154](https://issues.apache.org/jira/browse/KAFKA-1154) | replicas may not have consistent data after becoming follower |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1152](https://issues.apache.org/jira/browse/KAFKA-1152) | ReplicaManager's handling of the leaderAndIsrRequest should gracefully handle leader == -1 |  Major | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-1151](https://issues.apache.org/jira/browse/KAFKA-1151) | The Hadoop consumer API doc is not referencing the contrib consumer |  Major | . | Joe Stein |  |
| [KAFKA-1141](https://issues.apache.org/jira/browse/KAFKA-1141) | make changes to downloads for the archive old releases to new old\_releases folder |  Blocker | . | Joe Stein | Joe Stein |
| [KAFKA-1140](https://issues.apache.org/jira/browse/KAFKA-1140) | Move the decoding logic from ConsumerIterator.makeNext to next |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1135](https://issues.apache.org/jira/browse/KAFKA-1135) | Code cleanup - use Json.encode() to write json data to zk |  Major | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-1133](https://issues.apache.org/jira/browse/KAFKA-1133) | LICENSE and NOTICE files need to get into  META-INF when jars are built before they're signed for publishing to maven |  Major | . | Joe Stein | Joe Stein |
| [KAFKA-1128](https://issues.apache.org/jira/browse/KAFKA-1128) | Github is still showing 0.7 as the default branch |  Major | . | Joe Stein |  |
| [KAFKA-1121](https://issues.apache.org/jira/browse/KAFKA-1121) | DumpLogSegments tool should print absolute file name to report inconsistencies |  Major | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-1112](https://issues.apache.org/jira/browse/KAFKA-1112) | broker can not start itself after kafka is killed with -9 |  Critical | log | Kane Kim | Jay Kreps |
| [KAFKA-1103](https://issues.apache.org/jira/browse/KAFKA-1103) | Consumer uses two zkclients |  Major | . | Joel Koshy | Guozhang Wang |
| [KAFKA-1097](https://issues.apache.org/jira/browse/KAFKA-1097) | Race condition while reassigning low throughput partition leads to incorrect ISR information in zookeeper |  Critical | controller | Neha Narkhede | Neha Narkhede |
| [KAFKA-1091](https://issues.apache.org/jira/browse/KAFKA-1091) | full topic list can be read from metadata cache in the broker instead of ZK |  Minor | . | Jun Rao | Jun Rao |
| [KAFKA-1090](https://issues.apache.org/jira/browse/KAFKA-1090) | testPipelinedRequestOrdering has transient failures |  Minor | core | Jun Rao | Jun Rao |
| [KAFKA-1074](https://issues.apache.org/jira/browse/KAFKA-1074) | Reassign partitions should delete the old replicas from disk |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1060](https://issues.apache.org/jira/browse/KAFKA-1060) | Break-down sendTime into responseQueueTime and the real sendTime |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1055](https://issues.apache.org/jira/browse/KAFKA-1055) | BrokerTopicStats is updated before checking for MessageSizeTooLarge |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1052](https://issues.apache.org/jira/browse/KAFKA-1052) | integrate add-partitions command into topicCommand |  Major | core | Jun Rao | Sriram Subramanian |
| [KAFKA-1036](https://issues.apache.org/jira/browse/KAFKA-1036) | Unable to rename replication offset checkpoint in windows |  Critical | . | Timothy Chen |  |
| [KAFKA-1020](https://issues.apache.org/jira/browse/KAFKA-1020) | Remove getAllReplicasOnBroker from KafkaController |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1009](https://issues.apache.org/jira/browse/KAFKA-1009) | DumpLogSegments tool should return error on non-existing files |  Minor | log | Jun Rao | Guozhang Wang |
| [KAFKA-1004](https://issues.apache.org/jira/browse/KAFKA-1004) | Handle topic event for trivial whitelist topic filters |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-985](https://issues.apache.org/jira/browse/KAFKA-985) | Increasing log retention quickly overflows scala Int |  Minor | log | Frank Fejes | Jay Kreps |
| [KAFKA-933](https://issues.apache.org/jira/browse/KAFKA-933) | Hadoop example running DataGenerator causes kafka.message.Message cannot be cast to [B exception |  Minor | contrib | Andrew Milkowski |  |
| [KAFKA-930](https://issues.apache.org/jira/browse/KAFKA-930) | Integrate preferred replica election logic into kafka |  Major | . | Sriram Subramanian | Sriram Subramanian |
| [KAFKA-897](https://issues.apache.org/jira/browse/KAFKA-897) | NullPointerException in ConsoleConsumer |  Minor | consumer | Colin B. | Neha Narkhede |
| [KAFKA-852](https://issues.apache.org/jira/browse/KAFKA-852) | Remove clientId from OffsetFetchResponse and OffsetCommitResponse |  Minor | core | David Arthur | David Arthur |
| [KAFKA-759](https://issues.apache.org/jira/browse/KAFKA-759) | Commit/FetchOffset APIs should not return versionId |  Minor | core | David Arthur | David Arthur |
| [KAFKA-739](https://issues.apache.org/jira/browse/KAFKA-739) | Handle null values in Message payload |  Major | . | Jay Kreps | Jay Kreps |
| [KAFKA-723](https://issues.apache.org/jira/browse/KAFKA-723) | Scala's default case class toString() is very inefficient |  Critical | core | Neha Narkhede |  |
| [KAFKA-671](https://issues.apache.org/jira/browse/KAFKA-671) | DelayedProduce requests should not hold full producer request data |  Blocker | . | Joel Koshy | Sriram Subramanian |
| [KAFKA-648](https://issues.apache.org/jira/browse/KAFKA-648) | Use uniform convention for naming properties keys |  Blocker | . | Swapnil Ghike | Sriram Subramanian |
| [KAFKA-515](https://issues.apache.org/jira/browse/KAFKA-515) | Log cleanup can close a file channel opnened by Log.read before the transfer completes |  Major | . | Swapnil Ghike | Jay Kreps |
| [KAFKA-184](https://issues.apache.org/jira/browse/KAFKA-184) | Log retention size and file size should be a long |  Minor | . | Joel Koshy |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1274](https://issues.apache.org/jira/browse/KAFKA-1274) | gradle.properties needs the variables used in the build.gradle |  Blocker | . | Joe Stein |  |
| [KAFKA-1254](https://issues.apache.org/jira/browse/KAFKA-1254) | remove vestigial sbt |  Major | . | Joe Stein |  |
| [KAFKA-1249](https://issues.apache.org/jira/browse/KAFKA-1249) | release tar name is different than 0.8.0 |  Minor | . | Joe Stein | Jun Rao |
| [KAFKA-1246](https://issues.apache.org/jira/browse/KAFKA-1246) | The 2.10 version is showing up as 2.10.1 |  Major | . | Joe Stein | Jun Rao |
| [KAFKA-1245](https://issues.apache.org/jira/browse/KAFKA-1245) | the jar files and pom are not being signed so nexus is failing to publish them |  Blocker | . | Joe Stein |  |
| [KAFKA-1244](https://issues.apache.org/jira/browse/KAFKA-1244) | The LICENSE and NOTICE are missing from the jar files |  Blocker | . | Joe Stein | Jun Rao |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1051](https://issues.apache.org/jira/browse/KAFKA-1051) | merge from 0.8 da4512174b6f7c395ffe053a86d2c6bb19d2538a to trunk |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-965](https://issues.apache.org/jira/browse/KAFKA-965) | merge c39d37e9dd97bf2462ffbd1a96c0b2cb05034bae from 0.8 to trunk |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-896](https://issues.apache.org/jira/browse/KAFKA-896) | merge 0.8 (988d4d8e65a14390abd748318a64e281e4a37c19) to trunk |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-823](https://issues.apache.org/jira/browse/KAFKA-823) | merge 0.8 (51421fcc0111031bb77f779a6f6c00520d526a34) to trunk |  Major | core | Jun Rao | Jun Rao |


