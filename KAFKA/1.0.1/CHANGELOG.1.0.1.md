
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

## Release 1.0.1 - Unreleased (as of 2018-02-06)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6157](https://issues.apache.org/jira/browse/KAFKA-6157) | Fix repeated words words in JavaDoc and comments. |  Trivial | . | Adem Efe Gencer | Adem Efe Gencer |
| [KAFKA-6172](https://issues.apache.org/jira/browse/KAFKA-6172) | Cache lastEntry in TimeIndex to avoid unnecessary disk access |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-6175](https://issues.apache.org/jira/browse/KAFKA-6175) | AbstractIndex should cache index file to avoid unnecessary disk access during resize() |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-6274](https://issues.apache.org/jira/browse/KAFKA-6274) | Improve KTable Source state store auto-generated names |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-6102](https://issues.apache.org/jira/browse/KAFKA-6102) | Consolidate MockTime implementations between connect and clients |  Minor | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-6258](https://issues.apache.org/jira/browse/KAFKA-6258) | SSLTransportLayer should keep reading from socket until either the buffer is full or the socket has no more data |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-6205](https://issues.apache.org/jira/browse/KAFKA-6205) | Have State Stores Restore Before Initializing Toplogy |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-5987](https://issues.apache.org/jira/browse/KAFKA-5987) | Kafka metrics templates used in document generation should maintain order of tags |  Blocker | clients | Randall Hauch | Randall Hauch |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6069](https://issues.apache.org/jira/browse/KAFKA-6069) | Streams metrics tagged incorrectly |  Minor | streams | Tommy Becker | Tommy Becker |
| [KAFKA-6179](https://issues.apache.org/jira/browse/KAFKA-6179) | RecordQueue.clear() does not clear MinTimestampTracker's maintained list |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-6185](https://issues.apache.org/jira/browse/KAFKA-6185) | Selector memory leak with high likelihood of OOM in case of down conversion |  Blocker | core | Brett Rann | Rajini Sivaram |
| [KAFKA-6164](https://issues.apache.org/jira/browse/KAFKA-6164) | ClientQuotaManager threads prevent shutdown when encountering an error loading logs |  Major | . | Xavier Léauté | Rajini Sivaram |
| [KAFKA-6190](https://issues.apache.org/jira/browse/KAFKA-6190) | GlobalKTable never finishes restoring when consuming transactional messages |  Blocker | streams | Alex Good | Alex Good |
| [KAFKA-6210](https://issues.apache.org/jira/browse/KAFKA-6210) | IllegalArgumentException if 1.0.0 is used for inter.broker.protocol.version or log.message.format.version |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-6167](https://issues.apache.org/jira/browse/KAFKA-6167) | Timestamp on streams directory contains a colon, which is an illegal character |  Blocker | streams | Justin Manchester | Matthias J. Sax |
| [KAFKA-6214](https://issues.apache.org/jira/browse/KAFKA-6214) | Using standby replicas with an in memory state store causes Streams to crash |  Major | streams | Matt Farmer | Damian Guy |
| [KAFKA-4827](https://issues.apache.org/jira/browse/KAFKA-4827) | Kafka connect: error with special characters in connector name |  Minor | KafkaConnect | Aymeric Bouvet | Arjun Satish |
| [KAFKA-6238](https://issues.apache.org/jira/browse/KAFKA-6238) | Issues with protocol version when applying a rolling upgrade to 1.0.0 |  Major | documentation | Diego Louzán | Jason Gustafson |
| [KAFKA-6261](https://issues.apache.org/jira/browse/KAFKA-6261) | Request logging throws exception if acks=0 |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-6260](https://issues.apache.org/jira/browse/KAFKA-6260) | AbstractCoordinator not clearly handles NULL Exception |  Major | . | Seweryn Habdank-Wojewodzki | Jason Gustafson |
| [KAFKA-6174](https://issues.apache.org/jira/browse/KAFKA-6174) | Add methods in Options classes to keep binary compatibility with 0.11 |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-6289](https://issues.apache.org/jira/browse/KAFKA-6289) | NetworkClient should not return internal failed api version responses from poll |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-6319](https://issues.apache.org/jira/browse/KAFKA-6319) | kafka-acls regression for comma characters (and maybe other characters as well) |  Major | admin | Jordan Mcmillan | Rajini Sivaram |
| [KAFKA-6308](https://issues.apache.org/jira/browse/KAFKA-6308) | Connect: Struct equals/hashCode method should use Arrays#deep\* methods |  Major | KafkaConnect | Tobias Gies |  |
| [KAFKA-4767](https://issues.apache.org/jira/browse/KAFKA-4767) | KafkaProducer is not joining its IO thread properly |  Minor | producer | Buğra Gedik | huxihx |
| [KAFKA-4263](https://issues.apache.org/jira/browse/KAFKA-4263) | QueryableStateIntegrationTest.concurrentAccess is failing occasionally in jenkins builds |  Major | streams | Damian Guy | Matthias J. Sax |
| [KAFKA-6307](https://issues.apache.org/jira/browse/KAFKA-6307) | mBeanName should be removed before returning from JmxReporter#removeAttribute() |  Major | . | Ted Yu | siva santhalingam |
| [KAFKA-6269](https://issues.apache.org/jira/browse/KAFKA-6269) | KTable state restore fails after rebalance |  Blocker | streams | Andreas Schroeder | Bill Bejeck |
| [KAFKA-6256](https://issues.apache.org/jira/browse/KAFKA-6256) | Flaky Unit test: KStreamKTableJoinIntegrationTest.shouldCountClicksPerRegionWithNonZeroByteCache |  Major | . | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-6252](https://issues.apache.org/jira/browse/KAFKA-6252) | A metric named 'XX' already exists, can't register another one. |  Critical | KafkaConnect | Alexis Sellier | Arjun Satish |
| [KAFKA-6422](https://issues.apache.org/jira/browse/KAFKA-6422) | When enable trace level log in mirror maker, it will throw null pointer exception and the mirror maker will shutdown |  Minor | tools | Xin Li | Xin Li |
| [KAFKA-6302](https://issues.apache.org/jira/browse/KAFKA-6302) | Topic can not be recreated after it is deleted |  Major | admin, clients | kic | Matthias J. Sax |
| [KAFKA-6398](https://issues.apache.org/jira/browse/KAFKA-6398) | Non-aggregation KTable generation operator does not construct value getter correctly |  Critical | streams | Matthias J. Sax | Guozhang Wang |
| [KAFKA-6366](https://issues.apache.org/jira/browse/KAFKA-6366) | StackOverflowError in kafka-coordinator-heartbeat-thread |  Major | consumer | Joerg Heinicke | Jason Gustafson |
| [KAFKA-6277](https://issues.apache.org/jira/browse/KAFKA-6277) | Make loadClass thread-safe for class loaders of Connect plugins |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-6287](https://issues.apache.org/jira/browse/KAFKA-6287) | Inconsistent protocol type for empty consumer groups |  Minor | consumer | Ryan Leslie | Jason Gustafson |
| [KAFKA-6467](https://issues.apache.org/jira/browse/KAFKA-6467) | Enforce layout of dependencies within a Connect plugin to be deterministic |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-6148](https://issues.apache.org/jira/browse/KAFKA-6148) | ClassCastException in BigQuery connector |  Major | KafkaConnect | Eugene Burd | Konstantine Karantasis |
| [KAFKA-6166](https://issues.apache.org/jira/browse/KAFKA-6166) | Streams configuration requires consumer. and producer. in order to be read |  Minor | streams | Justin Manchester | Filipe Agapito |
| [KAFKA-6323](https://issues.apache.org/jira/browse/KAFKA-6323) | punctuate with WALL\_CLOCK\_TIME triggered immediately |  Major | streams | Frederic Arno | Frederic Arno |
| [KAFKA-6378](https://issues.apache.org/jira/browse/KAFKA-6378) | NullPointerException on KStream-GlobalKTable leftJoin when KeyValueMapper returns null |  Major | streams | Andy Bryant | Andy Bryant |
| [KAFKA-6354](https://issues.apache.org/jira/browse/KAFKA-6354) | Update KStream JavaDoc with regard to KIP-182 |  Minor | streams | Matthias J. Sax | Yu LIU |
| [KAFKA-6288](https://issues.apache.org/jira/browse/KAFKA-6288) | Broken symlink interrupts scanning the plugin path |  Major | KafkaConnect | Yeva Byzek | Konstantine Karantasis |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6215](https://issues.apache.org/jira/browse/KAFKA-6215) | KafkaStreamsTest fails in trunk |  Major | . | Ted Yu | Matthias J. Sax |
| [KAFKA-6300](https://issues.apache.org/jira/browse/KAFKA-6300) | SelectorTest may fail with ConcurrentModificationException |  Minor | . | Ted Yu |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6118](https://issues.apache.org/jira/browse/KAFKA-6118) | Transient failure in kafka.api.SaslScramSslEndToEndAuthorizationTest.testTwoConsumersWithDifferentSaslCredentials |  Major | core, unit tests | Guozhang Wang | Jason Gustafson |


