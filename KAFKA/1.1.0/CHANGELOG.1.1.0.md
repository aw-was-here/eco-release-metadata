
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

## Release 1.1.0 - Unreleased (as of 2018-02-01)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6170](https://issues.apache.org/jira/browse/KAFKA-6170) | Add the AdminClient in Streams' KafkaClientSupplier |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-5142](https://issues.apache.org/jira/browse/KAFKA-5142) | KIP-145 - Expose Record Headers in Kafka Connect |  Major | clients | Michael Andre Pearce | Michael Andre Pearce |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5565](https://issues.apache.org/jira/browse/KAFKA-5565) | Add a broker metric specifying the number of consumer group rebalances in progress |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5925](https://issues.apache.org/jira/browse/KAFKA-5925) | Adding records deletion operation to the new Admin Client API |  Minor | admin | Paolo Patierno | Paolo Patierno |
| [KAFKA-6218](https://issues.apache.org/jira/browse/KAFKA-6218) | Optimize condition in if statement to reduce the number of comparisons |  Trivial | KafkaConnect | sachin bhalekar | sachin bhalekar |
| [KAFKA-6233](https://issues.apache.org/jira/browse/KAFKA-6233) | Removed unnecessary null check |  Trivial | clients | sagar sukhadev chavan | sagar sukhadev chavan |
| [KAFKA-6168](https://issues.apache.org/jira/browse/KAFKA-6168) | Connect Schema comparison is slow for large schemas |  Critical | KafkaConnect | Randall Hauch | Ted Yu |
| [KAFKA-3073](https://issues.apache.org/jira/browse/KAFKA-3073) | KafkaConnect should support regular expression for topics |  Major | KafkaConnect | Gwen Shapira | Jeff Klukas |
| [KAFKA-4115](https://issues.apache.org/jira/browse/KAFKA-4115) | Grow default heap settings for distributed Connect from 256M to 1G |  Major | KafkaConnect | Shikhar Bhushan | Arjun Satish |
| [KAFKA-6274](https://issues.apache.org/jira/browse/KAFKA-6274) | Improve KTable Source state store auto-generated names |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-4499](https://issues.apache.org/jira/browse/KAFKA-4499) | Add "getAllKeys" API for querying windowed KTable stores |  Major | streams | Matthias J. Sax | Richard Yu |
| [KAFKA-6150](https://issues.apache.org/jira/browse/KAFKA-6150) | Make Repartition Topics Transient |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-5520](https://issues.apache.org/jira/browse/KAFKA-5520) | Extend Consumer Group Reset Offset tool for Stream Applications |  Major | core, tools | Jorge Quilcate | Jorge Quilcate |
| [KAFKA-6324](https://issues.apache.org/jira/browse/KAFKA-6324) | Change LogSegment.delete to deleteIfExists and harden log recovery |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-5631](https://issues.apache.org/jira/browse/KAFKA-5631) | Use Jackson for serialising to JSON |  Major | . | Ismael Juma | Umesh Chaudhary |
| [KAFKA-5764](https://issues.apache.org/jira/browse/KAFKA-5764) | KafkaShortnamer should allow for case-insensitive matches |  Major | security | Ryan P | Manikumar |
| [KAFKA-6086](https://issues.apache.org/jira/browse/KAFKA-6086) | Provide for custom error handling when Kafka Streams fails to produce |  Major | . | Matt Farmer |  |
| [KAFKA-5526](https://issues.apache.org/jira/browse/KAFKA-5526) | KIP-175: ConsumerGroupCommand no longer shows output for consumer groups which have not committed offsets |  Major | . | Ryan P | Vahid Hashemian |
| [KAFKA-6258](https://issues.apache.org/jira/browse/KAFKA-6258) | SSLTransportLayer should keep reading from socket until either the buffer is full or the socket has no more data |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-6317](https://issues.apache.org/jira/browse/KAFKA-6317) | Maven artifact for kafka should not depend on log4j |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-5895](https://issues.apache.org/jira/browse/KAFKA-5895) | Gradle 3.0+ is needed on the build |  Trivial | documentation | Matthias Weßendorf |  |
| [KAFKA-5772](https://issues.apache.org/jira/browse/KAFKA-5772) | Improve Util classes |  Major | clients | Matthias Weßendorf |  |
| [KAFKA-6311](https://issues.apache.org/jira/browse/KAFKA-6311) | Expose Kafka cluster ID in Connect REST API |  Major | KafkaConnect | Xavier Léauté | Ewen Cheslack-Postava |
| [KAFKA-6412](https://issues.apache.org/jira/browse/KAFKA-6412) | Improve synchronization in CachingKeyValueStore methods |  Major | streams | Ted Yu | Ted Yu |
| [KAFKA-4218](https://issues.apache.org/jira/browse/KAFKA-4218) | Enable access to key in ValueTransformer |  Major | streams | Elias Levy | Jeyhun Karimov |
| [KAFKA-6382](https://issues.apache.org/jira/browse/KAFKA-6382) | Make ProducerConfig and ConsumerConfig constructors public |  Minor | clients | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-6456](https://issues.apache.org/jira/browse/KAFKA-6456) | Improve JavaDoc of SourceTask#poll() to discourage indefinite blocking |  Minor | KafkaConnect | Gunnar Morling |  |
| [KAFKA-6180](https://issues.apache.org/jira/browse/KAFKA-6180) | Add a Validator for NonNull configurations and remove redundant null checks on lists |  Trivial | config | Charly Molter | Charly Molter |
| [KAFKA-6205](https://issues.apache.org/jira/browse/KAFKA-6205) | Have State Stores Restore Before Initializing Toplogy |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-6321](https://issues.apache.org/jira/browse/KAFKA-6321) | ConsumerGroupCommand should use the new consumer to query the log end offsets. |  Major | tools | Jiangjie Qin | Vahid Hashemian |
| [KAFKA-3625](https://issues.apache.org/jira/browse/KAFKA-3625) | Move kafka-streams test fixtures into a published package |  Minor | streams | Jeff Klukas | Matthias J. Sax |
| [KAFKA-4029](https://issues.apache.org/jira/browse/KAFKA-4029) | SSL support for Connect REST API |  Major | KafkaConnect | Ewen Cheslack-Postava | Jakub Scholz |
| [KAFKA-6275](https://issues.apache.org/jira/browse/KAFKA-6275) | Extend consumer offset reset tool to support deletion (KIP-229) |  Major | . | Jason Gustafson | Vahid Hashemian |
| [KAFKA-6499](https://issues.apache.org/jira/browse/KAFKA-6499) | Avoid creating dummy checkpoint files with no state stores |  Major | streams | Guozhang Wang | Guozhang Wang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5877](https://issues.apache.org/jira/browse/KAFKA-5877) | Controller should only update reassignment znode if there is change in the reassignment data |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-6012](https://issues.apache.org/jira/browse/KAFKA-6012) | NoSuchElementException in markErrorMeter during TransactionsBounceTest |  Blocker | . | Ismael Juma | Rajini Sivaram |
| [KAFKA-5953](https://issues.apache.org/jira/browse/KAFKA-5953) | Connect classloader isolation may be broken for JDBC drivers |  Critical | KafkaConnect | Jiri Pechanec | Konstantine Karantasis |
| [KAFKA-6026](https://issues.apache.org/jira/browse/KAFKA-6026) | KafkaFuture timeout fails to fire if a narrow race condition is hit |  Blocker | admin | Bart De Vylder |  |
| [KAFKA-6053](https://issues.apache.org/jira/browse/KAFKA-6053) | NoSuchMethodError when creating ProducerRecord in upgrade system tests |  Major | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-6055](https://issues.apache.org/jira/browse/KAFKA-6055) | Running tools on Windows fail due to typo in JVM config |  Blocker | tools | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-5163](https://issues.apache.org/jira/browse/KAFKA-5163) | Support replicas movement between log directories (KIP-113) |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-6023](https://issues.apache.org/jira/browse/KAFKA-6023) | ThreadCache#sizeBytes() should check overflow |  Minor | streams | Ted Yu | siva santhalingam |
| [KAFKA-6051](https://issues.apache.org/jira/browse/KAFKA-6051) | ReplicaFetcherThread should close the ReplicaFetcherBlockingSend earlier on shutdown |  Major | . | Maytee Chinavanichkit | Maytee Chinavanichkit |
| [KAFKA-3083](https://issues.apache.org/jira/browse/KAFKA-3083) | a soft failure in controller may leave a topic partition in an inconsistent state |  Major | core | Jun Rao | Onur Karaman |
| [KAFKA-6069](https://issues.apache.org/jira/browse/KAFKA-6069) | Streams metrics tagged incorrectly |  Minor | streams | Tommy Becker | Tommy Becker |
| [KAFKA-6087](https://issues.apache.org/jira/browse/KAFKA-6087) | Scanning plugin.path needs to support relative symlinks |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-6101](https://issues.apache.org/jira/browse/KAFKA-6101) | Reconnecting to broker does not exponentially backoff |  Major | clients | Sean Rohead | Ted Yu |
| [KAFKA-6070](https://issues.apache.org/jira/browse/KAFKA-6070) | ducker-ak: add ipaddress and enum34 dependencies to docker image |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-6116](https://issues.apache.org/jira/browse/KAFKA-6116) | Major performance issue due to excessive logging during leader election |  Blocker | controller | Ismael Juma | Onur Karaman |
| [KAFKA-6131](https://issues.apache.org/jira/browse/KAFKA-6131) | Transaction markers are sometimes discarded if txns complete concurrently |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6130](https://issues.apache.org/jira/browse/KAFKA-6130) | VerifiableConsumer with --max-messages doesn't exit |  Minor | . | Tom Bentley | Tom Bentley |
| [KAFKA-2903](https://issues.apache.org/jira/browse/KAFKA-2903) | FileRecords.read doesn't handle size \> sizeInBytes when start is not zero |  Major | log | Pengwei | Jay Kreps |
| [KAFKA-5212](https://issues.apache.org/jira/browse/KAFKA-5212) | Consumer ListOffsets request can starve group heartbeats |  Major | consumer | Jason Gustafson | Richard Yu |
| [KAFKA-4084](https://issues.apache.org/jira/browse/KAFKA-4084) | automated leader rebalance causes replication downtime for clusters with too many partitions |  Major | controller | Tom Crayford |  |
| [KAFKA-5759](https://issues.apache.org/jira/browse/KAFKA-5759) | Allow user to specify relative path as log directory |  Critical | . | Dong Lin | Dong Lin |
| [KAFKA-6156](https://issues.apache.org/jira/browse/KAFKA-6156) | JmxReporter can't handle windows style directory paths |  Minor | metrics | Kedar Joshi | huxihx |
| [KAFKA-6115](https://issues.apache.org/jira/browse/KAFKA-6115) | TaskManager should be type aware |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-6120](https://issues.apache.org/jira/browse/KAFKA-6120) | RecordCollectorImpl should not retry sending |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-6179](https://issues.apache.org/jira/browse/KAFKA-6179) | RecordQueue.clear() does not clear MinTimestampTracker's maintained list |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-6185](https://issues.apache.org/jira/browse/KAFKA-6185) | Selector memory leak with high likelihood of OOM in case of down conversion |  Blocker | core | Brett Rann | Rajini Sivaram |
| [KAFKA-6164](https://issues.apache.org/jira/browse/KAFKA-6164) | ClientQuotaManager threads prevent shutdown when encountering an error loading logs |  Major | . | Xavier Léauté | Rajini Sivaram |
| [KAFKA-6190](https://issues.apache.org/jira/browse/KAFKA-6190) | GlobalKTable never finishes restoring when consuming transactional messages |  Blocker | streams | Alex Good | Alex Good |
| [KAFKA-6210](https://issues.apache.org/jira/browse/KAFKA-6210) | IllegalArgumentException if 1.0.0 is used for inter.broker.protocol.version or log.message.format.version |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-6167](https://issues.apache.org/jira/browse/KAFKA-6167) | Timestamp on streams directory contains a colon, which is an illegal character |  Blocker | streams | Justin Manchester | Matthias J. Sax |
| [KAFKA-6046](https://issues.apache.org/jira/browse/KAFKA-6046) | DeleteRecordsRequest to a non-leader |  Major | . | Tom Bentley | Ted Yu |
| [KAFKA-6122](https://issues.apache.org/jira/browse/KAFKA-6122) | Global Consumer should handle TimeoutException |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-6247](https://issues.apache.org/jira/browse/KAFKA-6247) | Fix system test dependency issues |  Major | system tests | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-6214](https://issues.apache.org/jira/browse/KAFKA-6214) | Using standby replicas with an in memory state store causes Streams to crash |  Major | streams | Matt Farmer | Damian Guy |
| [KAFKA-1044](https://issues.apache.org/jira/browse/KAFKA-1044) | change log4j to slf4j |  Minor | log | shijinkui | Viktor Somogyi |
| [KAFKA-4827](https://issues.apache.org/jira/browse/KAFKA-4827) | Kafka connect: error with special characters in connector name |  Minor | KafkaConnect | Aymeric Bouvet | Arjun Satish |
| [KAFKA-6261](https://issues.apache.org/jira/browse/KAFKA-6261) | Request logging throws exception if acks=0 |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-5563](https://issues.apache.org/jira/browse/KAFKA-5563) | Clarify handling of connector name in config |  Minor | KafkaConnect | Sönke Liebau | Sönke Liebau |
| [KAFKA-6259](https://issues.apache.org/jira/browse/KAFKA-6259) | Make KafkaStreams.cleanup() clean global state directory |  Major | streams | Damian Guy | Matthias J. Sax |
| [KAFKA-5936](https://issues.apache.org/jira/browse/KAFKA-5936) | KafkaProducer should not wrap InterruptedException in close() with KafkaException |  Major | clients | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-6284](https://issues.apache.org/jira/browse/KAFKA-6284) | System Test failed: ConnectRestApiTest |  Major | KafkaConnect | Mikkin Patel | Mikkin Patel |
| [KAFKA-6260](https://issues.apache.org/jira/browse/KAFKA-6260) | AbstractCoordinator not clearly handles NULL Exception |  Major | . | Seweryn Habdank-Wojewodzki | Jason Gustafson |
| [KAFKA-6296](https://issues.apache.org/jira/browse/KAFKA-6296) | Transient failure in NetworkClientTest.testConnectionDelayDisconnected |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-6174](https://issues.apache.org/jira/browse/KAFKA-6174) | Add methods in Options classes to keep binary compatibility with 0.11 |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-6313](https://issues.apache.org/jira/browse/KAFKA-6313) | Kafka Core should have explicit SLF4J API dependency |  Major | core | Randall Hauch | Randall Hauch |
| [KAFKA-4857](https://issues.apache.org/jira/browse/KAFKA-4857) | Replace StreamsKafkaClient with AdminClient in Kafka Streams |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-6289](https://issues.apache.org/jira/browse/KAFKA-6289) | NetworkClient should not return internal failed api version responses from poll |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-6121](https://issues.apache.org/jira/browse/KAFKA-6121) | Restore and global consumer should not use auto.offset.reset |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-6322](https://issues.apache.org/jira/browse/KAFKA-6322) | Error deleting log for topic, all log dirs failed. |  Major | . | dongyan li | Ismael Juma |
| [KAFKA-6075](https://issues.apache.org/jira/browse/KAFKA-6075) | Kafka cannot recover after an unclean shutdown on Windows |  Major | . | Vahid Hashemian | Ismael Juma |
| [KAFKA-6194](https://issues.apache.org/jira/browse/KAFKA-6194) | Server crash while deleting segments |  Major | core | Ben Corlett | Ismael Juma |
| [KAFKA-6319](https://issues.apache.org/jira/browse/KAFKA-6319) | kafka-acls regression for comma characters (and maybe other characters as well) |  Major | admin | Jordan Mcmillan | Rajini Sivaram |
| [KAFKA-6349](https://issues.apache.org/jira/browse/KAFKA-6349) | ConcurrentModificationException during streams state restoration |  Blocker | streams | Damian Guy | Damian Guy |
| [KAFKA-6360](https://issues.apache.org/jira/browse/KAFKA-6360) | RocksDB segments not removed when store is closed causes re-initialization to fail |  Blocker | streams | Damian Guy | Damian Guy |
| [KAFKA-4767](https://issues.apache.org/jira/browse/KAFKA-4767) | KafkaProducer is not joining its IO thread properly |  Minor | producer | Buğra Gedik | huxihx |
| [KAFKA-6331](https://issues.apache.org/jira/browse/KAFKA-6331) | Transient failure in kafka.api.AdminClientIntegrationTest.testLogStartOffsetCheckpointkafka.api.AdminClientIntegrationTest.testAlterReplicaLogDirs |  Major | unit tests | Guozhang Wang | Dong Lin |
| [KAFKA-4263](https://issues.apache.org/jira/browse/KAFKA-4263) | QueryableStateIntegrationTest.concurrentAccess is failing occasionally in jenkins builds |  Major | streams | Damian Guy | Matthias J. Sax |
| [KAFKA-6126](https://issues.apache.org/jira/browse/KAFKA-6126) | Reduce rebalance time by not checking if created topics are available |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-2729](https://issues.apache.org/jira/browse/KAFKA-2729) | Cached zkVersion not equal to that in zookeeper, broker not recovering. |  Major | . | Danil Serdyuchenko | Onur Karaman |
| [KAFKA-6307](https://issues.apache.org/jira/browse/KAFKA-6307) | mBeanName should be removed before returning from JmxReporter#removeAttribute() |  Major | . | Ted Yu | siva santhalingam |
| [KAFKA-6391](https://issues.apache.org/jira/browse/KAFKA-6391) | output from ensure copartitioning is not used for Cluster metadata, resulting in partitions without tasks working on them |  Major | streams | Clemens Valiente | Clemens Valiente |
| [KAFKA-6269](https://issues.apache.org/jira/browse/KAFKA-6269) | KTable state restore fails after rebalance |  Blocker | streams | Andreas Schroeder | Bill Bejeck |
| [KAFKA-6318](https://issues.apache.org/jira/browse/KAFKA-6318) | StreamsResetter should return non-zero return code on error |  Major | streams, tools | Matthias J. Sax | siva santhalingam |
| [KAFKA-6256](https://issues.apache.org/jira/browse/KAFKA-6256) | Flaky Unit test: KStreamKTableJoinIntegrationTest.shouldCountClicksPerRegionWithNonZeroByteCache |  Major | . | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-6298](https://issues.apache.org/jira/browse/KAFKA-6298) | Line numbers on log messages are incorrect |  Major | . | Colin P. McCabe | Narendra Kumar |
| [KAFKA-4335](https://issues.apache.org/jira/browse/KAFKA-4335) | FileStreamSource Connector not working for large files (~ 1GB) |  Major | KafkaConnect | Rahul Shukla |  |
| [KAFKA-6252](https://issues.apache.org/jira/browse/KAFKA-6252) | A metric named 'XX' already exists, can't register another one. |  Critical | KafkaConnect | Alexis Sellier | Arjun Satish |
| [KAFKA-6422](https://issues.apache.org/jira/browse/KAFKA-6422) | When enable trace level log in mirror maker, it will throw null pointer exception and the mirror maker will shutdown |  Minor | tools | Xin Li | Xin Li |
| [KAFKA-4247](https://issues.apache.org/jira/browse/KAFKA-4247) | kafka-run-class has potential to add a leading colon to classpath |  Major | KafkaConnect | Ryan P | Ryan P |
| [KAFKA-6383](https://issues.apache.org/jira/browse/KAFKA-6383) | StreamThread.shutdown doesn't clean up completely when called before StreamThread.start |  Major | streams | Rohan Desai | Rohan Desai |
| [KAFKA-6265](https://issues.apache.org/jira/browse/KAFKA-6265) | GlobalKTable missing #queryableStoreName() |  Major | streams | Antony Stubbs | Richard Yu |
| [KAFKA-6250](https://issues.apache.org/jira/browse/KAFKA-6250) | Kafka Connect requires permission to create internal topics even if they exist |  Major | KafkaConnect | Gavrie Philipson | Gavrie Philipson |
| [KAFKA-5890](https://issues.apache.org/jira/browse/KAFKA-5890) | records.lag should use tags for topic and partition rather than using metric name. |  Major | clients | Charly Molter | Charly Molter |
| [KAFKA-6302](https://issues.apache.org/jira/browse/KAFKA-6302) | Topic can not be recreated after it is deleted |  Major | admin, clients | kic | Matthias J. Sax |
| [KAFKA-6398](https://issues.apache.org/jira/browse/KAFKA-6398) | Non-aggregation KTable generation operator does not construct value getter correctly |  Critical | streams | Matthias J. Sax | Guozhang Wang |
| [KAFKA-6158](https://issues.apache.org/jira/browse/KAFKA-6158) | CONSUMER-ID and HOST values are concatenated if the CONSUMER-ID is \> 50 chars |  Trivial | clients | Gustav Westling | Vahid Hashemian |
| [KAFKA-6277](https://issues.apache.org/jira/browse/KAFKA-6277) | Make loadClass thread-safe for class loaders of Connect plugins |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-4897](https://issues.apache.org/jira/browse/KAFKA-4897) | LogCleaner#cleanSegments should not ignore failures to delete files |  Major | core | Colin P. McCabe | Manikumar |
| [KAFKA-4991](https://issues.apache.org/jira/browse/KAFKA-4991) | KerberosLogin#login should probably be synchronized |  Major | . | Colin P. McCabe | Manikumar |
| [KAFKA-6451](https://issues.apache.org/jira/browse/KAFKA-6451) | Simplify KStreamReduce |  Minor | streams | Matthias J. Sax | Tanvi Jaywant |
| [KAFKA-6464](https://issues.apache.org/jira/browse/KAFKA-6464) | Base64URL encoding under JRE 1.7 is broken due to incorrect padding assumption |  Minor | clients | Ron Dagostino |  |
| [KAFKA-6166](https://issues.apache.org/jira/browse/KAFKA-6166) | Streams configuration requires consumer. and producer. in order to be read |  Minor | streams | Justin Manchester | Filipe Agapito |
| [KAFKA-6418](https://issues.apache.org/jira/browse/KAFKA-6418) | AdminClient should handle empty or null topic names better |  Minor | . | dan norwood |  |
| [KAFKA-6018](https://issues.apache.org/jira/browse/KAFKA-6018) | Make KafkaFuture.Function java 8 lambda compatible |  Major | clients | Steven Aerts |  |
| [KAFKA-6323](https://issues.apache.org/jira/browse/KAFKA-6323) | punctuate with WALL\_CLOCK\_TIME triggered immediately |  Major | streams | Frederic Arno | Frederic Arno |
| [KAFKA-6378](https://issues.apache.org/jira/browse/KAFKA-6378) | NullPointerException on KStream-GlobalKTable leftJoin when KeyValueMapper returns null |  Major | streams | Andy Bryant | Andy Bryant |
| [KAFKA-4930](https://issues.apache.org/jira/browse/KAFKA-4930) | Connect Rest API allows creating connectors with an empty name - KIP-212 |  Minor | KafkaConnect | Sönke Liebau | Sönke Liebau |
| [KAFKA-6138](https://issues.apache.org/jira/browse/KAFKA-6138) | Simplify StreamsBuilder#addGlobalStore |  Major | streams | Matthias J. Sax | Panuwat Anawatmongkhon |
| [KAFKA-6489](https://issues.apache.org/jira/browse/KAFKA-6489) | Fetcher.retrieveOffsetsByTimes() should add all the topics to the metadata refresh topics set. |  Major | clients, consumer | Jiangjie Qin | Jiangjie Qin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6104](https://issues.apache.org/jira/browse/KAFKA-6104) | Add unit tests for ClusterConnectionStates |  Trivial | unit tests | Sönke Liebau | Sönke Liebau |
| [KAFKA-6215](https://issues.apache.org/jira/browse/KAFKA-6215) | KafkaStreamsTest fails in trunk |  Major | . | Ted Yu | Matthias J. Sax |
| [KAFKA-6300](https://issues.apache.org/jira/browse/KAFKA-6300) | SelectorTest may fail with ConcurrentModificationException |  Minor | . | Ted Yu |  |
| [KAFKA-6193](https://issues.apache.org/jira/browse/KAFKA-6193) | Only delete reassign\_partitions znode after reassignment is complete |  Major | . | Ted Yu | Ismael Juma |
| [KAFKA-6096](https://issues.apache.org/jira/browse/KAFKA-6096) | Add concurrent tests to exercise all paths in group/transaction managers |  Major | core | Rajini Sivaram | Rajini Sivaram |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5541](https://issues.apache.org/jira/browse/KAFKA-5541) | Streams should not re-throw if suspending/closing tasks fails |  Major | . | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5642](https://issues.apache.org/jira/browse/KAFKA-5642) | Use async ZookeeperClient in Controller |  Major | . | Onur Karaman | Onur Karaman |
| [KAFKA-5083](https://issues.apache.org/jira/browse/KAFKA-5083) | always leave the last surviving member of the ISR in ZK |  Major | . | Onur Karaman | Onur Karaman |
| [KAFKA-6071](https://issues.apache.org/jira/browse/KAFKA-6071) | Use ZookeeperClient in LogManager |  Major | core | Jun Rao | Manikumar |
| [KAFKA-6073](https://issues.apache.org/jira/browse/KAFKA-6073) | Use ZookeeperClient in KafkaApis |  Major | core | Jun Rao | Mickael Maison |
| [KAFKA-6072](https://issues.apache.org/jira/browse/KAFKA-6072) | Use ZookeeperClient in GroupCoordinator and TransactionCoordinator |  Major | core | Jun Rao | Manikumar |
| [KAFKA-6060](https://issues.apache.org/jira/browse/KAFKA-6060) | Add workload generation capabilities to Trogdor |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5894](https://issues.apache.org/jira/browse/KAFKA-5894) | add the notion of max inflight requests to async ZookeeperClient |  Major | . | Onur Karaman | Onur Karaman |
| [KAFKA-5645](https://issues.apache.org/jira/browse/KAFKA-5645) | Use async ZookeeperClient in SimpleAclAuthorizer |  Major | . | Ismael Juma | Manikumar |
| [KAFKA-6146](https://issues.apache.org/jira/browse/KAFKA-6146) | minimize the number of triggers enqueuing PreferredReplicaLeaderElection events |  Major | . | Jun Rao | Onur Karaman |
| [KAFKA-5811](https://issues.apache.org/jira/browse/KAFKA-5811) | Trogdor should handle injecting disk faults |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5646](https://issues.apache.org/jira/browse/KAFKA-5646) | Use async ZookeeperClient for DynamicConfigManager |  Major | core | Ismael Juma | Manikumar |
| [KAFKA-6074](https://issues.apache.org/jira/browse/KAFKA-6074) | Use ZookeeperClient in ReplicaManager and Partition |  Major | core | Jun Rao | Ted Yu |
| [KAFKA-6255](https://issues.apache.org/jira/browse/KAFKA-6255) | Add ProduceBench to Trogdor |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-6118](https://issues.apache.org/jira/browse/KAFKA-6118) | Transient failure in kafka.api.SaslScramSslEndToEndAuthorizationTest.testTwoConsumersWithDifferentSaslCredentials |  Major | core, unit tests | Guozhang Wang | Jason Gustafson |
| [KAFKA-6065](https://issues.apache.org/jira/browse/KAFKA-6065) | Add ZooKeeperRequestLatencyMs to KafkaZkClient |  Major | . | Onur Karaman | Ismael Juma |
| [KAFKA-5473](https://issues.apache.org/jira/browse/KAFKA-5473) | handle ZK session expiration properly when a new session can't be established |  Major | . | Jun Rao | Prasanna Gautam |
| [KAFKA-5647](https://issues.apache.org/jira/browse/KAFKA-5647) | Use async ZookeeperClient for Admin operations |  Major | . | Ismael Juma | Manikumar |
| [KAFKA-5849](https://issues.apache.org/jira/browse/KAFKA-5849) | Add process stop faults, round trip workload, partitioned produce-consume test |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-6320](https://issues.apache.org/jira/browse/KAFKA-6320) | move ZK metrics in KafkaHealthCheck to ZookeeperClient |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-4541](https://issues.apache.org/jira/browse/KAFKA-4541) | Add capability to create delegation token |  Major | security | Ashish Singh | Manikumar |
| [KAFKA-4543](https://issues.apache.org/jira/browse/KAFKA-4543) | Add capability to renew/expire delegation tokens. |  Major | security | Ashish Singh | Manikumar |
| [KAFKA-4542](https://issues.apache.org/jira/browse/KAFKA-4542) | Add authentication based on delegation token. |  Major | security | Ashish Singh | Manikumar |
| [KAFKA-6241](https://issues.apache.org/jira/browse/KAFKA-6241) | Enable dynamic reconfiguration of SSL keystores |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6244](https://issues.apache.org/jira/browse/KAFKA-6244) | Enable dynamic reconfiguration of log cleaners |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6245](https://issues.apache.org/jira/browse/KAFKA-6245) | Enable reconfiguration of default topic configs used by brokers |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6242](https://issues.apache.org/jira/browse/KAFKA-6242) | Enable resizing various broker thread pools |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6243](https://issues.apache.org/jira/browse/KAFKA-6243) | Enable reconfiguration of metrics reporters and their custom configs |  Major | core | Rajini Sivaram | Rajini Sivaram |


