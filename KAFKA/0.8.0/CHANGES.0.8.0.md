
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
# Changelog

## Release 0.8.0 - 2013-12-03

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-546](https://issues.apache.org/jira/browse/KAFKA-546) | Fix commit() in zk consumer for compressed messages |  Major | . | Jay Kreps | Swapnil Ghike |
| [KAFKA-545](https://issues.apache.org/jira/browse/KAFKA-545) | Add a Performance Suite for the Log subsystem |  Blocker | . | Jay Kreps | Jay Kreps |
| [KAFKA-475](https://issues.apache.org/jira/browse/KAFKA-475) | Time based log segment rollout |  Major | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-429](https://issues.apache.org/jira/browse/KAFKA-429) | Expose JMX operation to set logger level dynamically |  Major | core | Joel Koshy |  |
| [KAFKA-235](https://issues.apache.org/jira/browse/KAFKA-235) | Add a 'log.file.age' configuration parameter to force rotation of log files after they've reached a certain age |  Major | core | Mathias Herberts | Swapnil Ghike |
| [KAFKA-203](https://issues.apache.org/jira/browse/KAFKA-203) | Improve Kafka internal metrics |  Major | core | Jay Kreps | Jun Rao |
| [KAFKA-202](https://issues.apache.org/jira/browse/KAFKA-202) | Make the request processing in kafka asynchonous |  Major | . | Jay Kreps | Neha Narkhede |
| [KAFKA-188](https://issues.apache.org/jira/browse/KAFKA-188) | Support multiple data directories |  Major | . | Jay Kreps | Jay Kreps |
| [KAFKA-50](https://issues.apache.org/jira/browse/KAFKA-50) | kafka intra-cluster replication support |  Major | . | Jun Rao | Jun Rao |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1131](https://issues.apache.org/jira/browse/KAFKA-1131) | copy some more files into the release tar and zip that are needed/desired |  Major | . | Joe Stein |  |
| [KAFKA-1046](https://issues.apache.org/jira/browse/KAFKA-1046) | Added support for Scala 2.10 builds while maintaining compatibility with 2.8.x |  Major | . | Christopher Freeman | Christopher Freeman |
| [KAFKA-931](https://issues.apache.org/jira/browse/KAFKA-931) | make zookeeper.connect a required property |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-923](https://issues.apache.org/jira/browse/KAFKA-923) | Improve controller failover latency |  Critical | controller | Neha Narkhede | Neha Narkhede |
| [KAFKA-850](https://issues.apache.org/jira/browse/KAFKA-850) | add an option to show under replicated partitions in list topic command |  Blocker | core | Jun Rao | Jun Rao |
| [KAFKA-812](https://issues.apache.org/jira/browse/KAFKA-812) | Support deep iteration in DumpLogSegments tool |  Blocker | tools | Jun Rao | Jun Rao |
| [KAFKA-763](https://issues.apache.org/jira/browse/KAFKA-763) | Add an option to replica from the largest offset during unclean leader election |  Blocker | core | Jun Rao | Swapnil Ghike |
| [KAFKA-762](https://issues.apache.org/jira/browse/KAFKA-762) | Improve second replica assignment |  Blocker | core | Jun Rao | Jun Rao |
| [KAFKA-699](https://issues.apache.org/jira/browse/KAFKA-699) | Disallow clients to set replicaId in FetchRequest |  Blocker | core | Jun Rao | Jun Rao |
| [KAFKA-675](https://issues.apache.org/jira/browse/KAFKA-675) | Only bind to the interface declared in the 'hostname' config property |  Minor | config, core | Matan | Jay Kreps |
| [KAFKA-667](https://issues.apache.org/jira/browse/KAFKA-667) | Rename .highwatermark file |  Minor | . | Jay Kreps | Jay Kreps |
| [KAFKA-638](https://issues.apache.org/jira/browse/KAFKA-638) | remove ProducerShell |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-632](https://issues.apache.org/jira/browse/KAFKA-632) | ProducerRequest should take ByteBufferMessageSet instead of MessageSet |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-581](https://issues.apache.org/jira/browse/KAFKA-581) | provides windows batch script for starting Kafka/Zookeeper |  Trivial | config | antoine vianey |  |
| [KAFKA-548](https://issues.apache.org/jira/browse/KAFKA-548) | remove partition from ProducerRequestPartitionData and FetchResponsePartitionData |  Major | . | Joe Stein | Yang Ye |
| [KAFKA-505](https://issues.apache.org/jira/browse/KAFKA-505) | Remove errorcode from TopicMetaDataResponse |  Major | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-439](https://issues.apache.org/jira/browse/KAFKA-439) | @returns was used in scala doc when it should have been @return |  Trivial | core | Jim Plush | Jay Kreps |
| [KAFKA-393](https://issues.apache.org/jira/browse/KAFKA-393) | Add constructor for message which takes both byte array offset and length |  Major | core | graham sanderson |  |
| [KAFKA-368](https://issues.apache.org/jira/browse/KAFKA-368) | use the pig core jar from maven instead of distributing it |  Major | . | Joe Stein | Joe Stein |
| [KAFKA-366](https://issues.apache.org/jira/browse/KAFKA-366) | add jmx beans in broker to track # bytes in consumer |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-365](https://issues.apache.org/jira/browse/KAFKA-365) | change copyright in NOTICE to 2012 |  Major | . | Joe Stein | Joe Stein |
| [KAFKA-349](https://issues.apache.org/jira/browse/KAFKA-349) | Create individual "Response" types for each kind of request and wrap them with "BoundedByteBufferSend", remove "xxResponseSend" types for all requests except "FetchRequest" |  Major | . | Yang Ye | Yang Ye |
| [KAFKA-325](https://issues.apache.org/jira/browse/KAFKA-325) | revisit broker config in 0.8 |  Blocker | core | Jun Rao | Swapnil Ghike |
| [KAFKA-324](https://issues.apache.org/jira/browse/KAFKA-324) | enforce broker.id to be a non-negative integer |  Major | . | Jun Rao | Swapnil Ghike |
| [KAFKA-323](https://issues.apache.org/jira/browse/KAFKA-323) | Add the ability to use the async producer in the Log4j appender |  Major | core | Jose Quinteiro | Jay Kreps |
| [KAFKA-285](https://issues.apache.org/jira/browse/KAFKA-285) | Increase maximum value of log.retention.size |  Major | . | Elben Shira |  |
| [KAFKA-271](https://issues.apache.org/jira/browse/KAFKA-271) | Modify new FetchResponse object to remove the initial offset field |  Major | core | Prashanth Menon | Jay Kreps |
| [KAFKA-267](https://issues.apache.org/jira/browse/KAFKA-267) | Enhance ProducerPerformance to generate unique random Long value for payload |  Major | . | John Fung | Yang Ye |
| [KAFKA-258](https://issues.apache.org/jira/browse/KAFKA-258) | Remove broker.id from the broker.list config in the Producer |  Major | core | Neha Narkhede | Yang Ye |
| [KAFKA-253](https://issues.apache.org/jira/browse/KAFKA-253) | Refactor the async producer to have only one queue instead of one queue per broker in a Kafka cluster |  Major | . | Neha Narkhede | Jun Rao |
| [KAFKA-193](https://issues.apache.org/jira/browse/KAFKA-193) | use by name parameter helper for logging and trait to include lazy logging and refactor code to use the new LogHelper |  Major | . | Joe Stein | Jay Kreps |
| [KAFKA-187](https://issues.apache.org/jira/browse/KAFKA-187) | Add Snappy Compression as a Codec and refactor CompressionUtil and option on startup to select what the default codec |  Major | . | Joe Stein | Joe Stein |
| [KAFKA-181](https://issues.apache.org/jira/browse/KAFKA-181) | Log errors for unrecognized config options |  Major | core | Joel Koshy | Jun Rao |
| [KAFKA-165](https://issues.apache.org/jira/browse/KAFKA-165) | Add helper script for zkCli.sh |  Minor | packaging | Jay Kreps | Jay Kreps |
| [KAFKA-155](https://issues.apache.org/jira/browse/KAFKA-155) | Support graceful Decommissioning of Broker |  Major | . | Sharad Agarwal |  |
| [KAFKA-139](https://issues.apache.org/jira/browse/KAFKA-139) | cross-compile multiple Scala versions and upgrade to SBT 0.12.1 |  Major | packaging | Chris Burroughs |  |
| [KAFKA-133](https://issues.apache.org/jira/browse/KAFKA-133) | Publish kafka jar to a public maven repository |  Major | . | Neha Narkhede |  |
| [KAFKA-100](https://issues.apache.org/jira/browse/KAFKA-100) | ProducerShell should use high-level producer instead of SyncProducer |  Major | core | Jun Rao |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1283](https://issues.apache.org/jira/browse/KAFKA-1283) | Log4jAppender is unable to send the message. |  Major | producer | Dongkyoung Kim | Sriharsha Chintalapani |
| [KAFKA-1133](https://issues.apache.org/jira/browse/KAFKA-1133) | LICENSE and NOTICE files need to get into  META-INF when jars are built before they're signed for publishing to maven |  Major | . | Joe Stein | Joe Stein |
| [KAFKA-1126](https://issues.apache.org/jira/browse/KAFKA-1126) | Remove the DISCLAIMER it is left over from incubation |  Major | . | Joe Stein |  |
| [KAFKA-1078](https://issues.apache.org/jira/browse/KAFKA-1078) | Update System Test to handle controller data returned by ZK |  Major | . | John Fung | John Fung |
| [KAFKA-1076](https://issues.apache.org/jira/browse/KAFKA-1076) | system tests in 0.8 are broken due to wrong log4j config |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1075](https://issues.apache.org/jira/browse/KAFKA-1075) | Consumer will not rebalance upon topic partition change |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1073](https://issues.apache.org/jira/browse/KAFKA-1073) | CheckReassignmentStatus is broken |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1071](https://issues.apache.org/jira/browse/KAFKA-1071) | The random partition selected in DefaultEventHandler is not random across producer instances |  Major | core | Jun Rao | Guozhang Wang |
| [KAFKA-1069](https://issues.apache.org/jira/browse/KAFKA-1069) | MBean kafka.cluster.Partition report wrong UnderReplicated status |  Major | . | Vladislav Pernin | Jun Rao |
| [KAFKA-1068](https://issues.apache.org/jira/browse/KAFKA-1068) | OfflinePartitionCount metrics may be incorrect after the controller failover |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-1038](https://issues.apache.org/jira/browse/KAFKA-1038) | fetch response should use empty messageset instead of null when handling errors |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1035](https://issues.apache.org/jira/browse/KAFKA-1035) | Add message-send-max-retries and retry-backoff-ms options to console producer |  Major | producer | Rajasekar Elango | Rajasekar Elango |
| [KAFKA-1031](https://issues.apache.org/jira/browse/KAFKA-1031) | Little modification to the stop script to be able to kill the proper process |  Major | . | Vladislav Pernin | Vladislav Pernin |
| [KAFKA-1030](https://issues.apache.org/jira/browse/KAFKA-1030) | Addition of partitions requires bouncing all the consumers of that topic |  Blocker | . | Swapnil Ghike | Guozhang Wang |
| [KAFKA-1029](https://issues.apache.org/jira/browse/KAFKA-1029) | Zookeeper leader election stuck in ephemeral node retry loop |  Blocker | controller | Sam Meder | Sam Meder |
| [KAFKA-1018](https://issues.apache.org/jira/browse/KAFKA-1018) | tidy up the POM from what feedback has come from the 0.8 beta and publishing to maven |  Major | . | Joe Stein |  |
| [KAFKA-1017](https://issues.apache.org/jira/browse/KAFKA-1017) | High number of open file handles in 0.8 producer |  Major | producer | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-1010](https://issues.apache.org/jira/browse/KAFKA-1010) | Concurrency issue in getCluster() causes rebalance failure and dead consumer |  Blocker | consumer | Sam Meder | Sam Meder |
| [KAFKA-1008](https://issues.apache.org/jira/browse/KAFKA-1008) | Unmap before resizing |  Major | core, log | Elizabeth Wei | Jay Kreps |
| [KAFKA-1003](https://issues.apache.org/jira/browse/KAFKA-1003) | ConsumerFetcherManager should pass clientId as metricsPrefix to AbstractFetcherManager |  Major | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-994](https://issues.apache.org/jira/browse/KAFKA-994) | High level consumer doesn't throw an exception when the message it is trying to fetch exceeds the configured fetch size |  Major | consumer | Sam Meder | Sam Meder |
| [KAFKA-991](https://issues.apache.org/jira/browse/KAFKA-991) | Reduce the queue size in hadoop producer |  Major | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-989](https://issues.apache.org/jira/browse/KAFKA-989) | Race condition shutting down high-level consumer results in spinning background thread |  Major | . | Phil Hargett | Phil Hargett |
| [KAFKA-987](https://issues.apache.org/jira/browse/KAFKA-987) | Avoid checkpointing offsets in Kafka consumer that have not changed since the last commit |  Major | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-978](https://issues.apache.org/jira/browse/KAFKA-978) | kafka pom file has 2 entries for zookeeper (one with exclusion, one without) |  Major | . | Jason Rosenberg |  |
| [KAFKA-974](https://issues.apache.org/jira/browse/KAFKA-974) | can't use public release maven repo because of failure of downloaded dependency |  Major | . | Joe Stein |  |
| [KAFKA-969](https://issues.apache.org/jira/browse/KAFKA-969) | Need to prevent failure of rebalance when there are no brokers available when consumer comes up |  Major | . | Sriram Subramanian | Sriram Subramanian |
| [KAFKA-968](https://issues.apache.org/jira/browse/KAFKA-968) | Typographical Errors in Output |  Trivial | core, replication | Rebecca Sealfon | Neha Narkhede |
| [KAFKA-964](https://issues.apache.org/jira/browse/KAFKA-964) | Default hadoop-producer configs to request.required.acks = 1 |  Blocker | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-963](https://issues.apache.org/jira/browse/KAFKA-963) | when publishing to maven repository central missing signature on everything |  Major | . | Joe Stein |  |
| [KAFKA-959](https://issues.apache.org/jira/browse/KAFKA-959) | DefaultEventHandler can send more produce requests than necesary |  Major | core | Jun Rao | Guozhang Wang |
| [KAFKA-956](https://issues.apache.org/jira/browse/KAFKA-956) | High-level consumer fails to check topic metadata response for errors |  Blocker | consumer | Sam Meder | Neha Narkhede |
| [KAFKA-955](https://issues.apache.org/jira/browse/KAFKA-955) | After a leader change, messages sent with ack=0 are lost |  Major | . | Jason Rosenberg | Guozhang Wang |
| [KAFKA-954](https://issues.apache.org/jira/browse/KAFKA-954) | tidy up README file for better general availability |  Blocker | . | Joe Stein | Jun Rao |
| [KAFKA-953](https://issues.apache.org/jira/browse/KAFKA-953) | Remove release-zip from README we are not releasing with it |  Blocker | . | Joe Stein |  |
| [KAFKA-951](https://issues.apache.org/jira/browse/KAFKA-951) | Leader election rate may be reported on a non-controller |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-950](https://issues.apache.org/jira/browse/KAFKA-950) | bytesSinceLastIndexEntry needs to be reset after log segment is truncated |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-947](https://issues.apache.org/jira/browse/KAFKA-947) | isr-expiration-thread may block LeaderAndIsr request for a relatively long period |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-946](https://issues.apache.org/jira/browse/KAFKA-946) | Kafka Hadoop Consumer fails when verifying message checksum |  Critical | contrib | Sam Meder | Sam Meder |
| [KAFKA-944](https://issues.apache.org/jira/browse/KAFKA-944) | the pom output from publish and publish-local is not accurate |  Critical | . | Joe Stein | Joe Stein |
| [KAFKA-942](https://issues.apache.org/jira/browse/KAFKA-942) | the version of the jar should be 0.8.0-beta1 not 0.8.0-SNAPSHOT |  Blocker | . | Joe Stein | Joe Stein |
| [KAFKA-941](https://issues.apache.org/jira/browse/KAFKA-941) | Add Apache 2.0 license to missing code source files |  Blocker | . | Joe Stein | Joe Stein |
| [KAFKA-940](https://issues.apache.org/jira/browse/KAFKA-940) | Scala match error in javaapi.Implicits |  Major | . | Joel Koshy | Joel Koshy |
| [KAFKA-939](https://issues.apache.org/jira/browse/KAFKA-939) | ./sbt publish-local fails due to invalid javac flags passed to javadoc |  Major | . | Frank Grimes |  |
| [KAFKA-938](https://issues.apache.org/jira/browse/KAFKA-938) | High CPU usage when more or less idle |  Critical | core | Sam Meder |  |
| [KAFKA-937](https://issues.apache.org/jira/browse/KAFKA-937) | ConsumerFetcherThread can deadlock |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-927](https://issues.apache.org/jira/browse/KAFKA-927) | Integrate controlled shutdown into kafka shutdown hook |  Major | . | Sriram Subramanian | Sriram Subramanian |
| [KAFKA-921](https://issues.apache.org/jira/browse/KAFKA-921) | Expose max lag mbean for consumers and replica fetchers |  Major | . | Joel Koshy |  |
| [KAFKA-920](https://issues.apache.org/jira/browse/KAFKA-920) | zkclient jar 0.2.0 is not compatible with 0.1.0 |  Blocker | . | Jun Rao | Jun Rao |
| [KAFKA-919](https://issues.apache.org/jira/browse/KAFKA-919) | Disabling of auto commit is ignored during consumer group rebalancing |  Major | consumer | Phil Hargett |  |
| [KAFKA-916](https://issues.apache.org/jira/browse/KAFKA-916) | Deadlock between fetcher shutdown and handling partitions with error |  Major | . | Joel Koshy |  |
| [KAFKA-914](https://issues.apache.org/jira/browse/KAFKA-914) | Deadlock between initial rebalance and watcher-triggered rebalances |  Major | . | Joel Koshy |  |
| [KAFKA-907](https://issues.apache.org/jira/browse/KAFKA-907) | controller needs to close socket channel to brokers on exception |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-905](https://issues.apache.org/jira/browse/KAFKA-905) | Logs can have same offsets causing recovery failure |  Major | . | Sriram Subramanian | Sriram Subramanian |
| [KAFKA-903](https://issues.apache.org/jira/browse/KAFKA-903) | [0.8.0 - windows]  FATAL - [highwatermark-checkpoint-thread1] (Logging.scala:109) - Attempt to swap the new high watermark file with the old one failed |  Blocker | core | Rob Withers | Jun Rao |
| [KAFKA-900](https://issues.apache.org/jira/browse/KAFKA-900) | ClosedByInterruptException when high-level consumer shutdown normally |  Major | consumer | Jason Rosenberg | Jun Rao |
| [KAFKA-895](https://issues.apache.org/jira/browse/KAFKA-895) | Protocol documentation is not clear about requiredAcks = 0. |  Trivial | producer | François Paradis | Jun Rao |
| [KAFKA-884](https://issues.apache.org/jira/browse/KAFKA-884) | Get java.lang.NoSuchMethodError: com.yammer.metrics.core.TimerContext.stop()J when stopping kafka brokers |  Minor | config | Kam Kasravi |  |
| [KAFKA-880](https://issues.apache.org/jira/browse/KAFKA-880) | NoLeaderPartitionSet should be cleared before leader finder thread is started up |  Major | . | Joel Koshy | Jun Rao |
| [KAFKA-879](https://issues.apache.org/jira/browse/KAFKA-879) | In system test, read the new leader from zookeeper instead of broker log on completion of become-leader state transition |  Major | . | Swapnil Ghike | John Fung |
| [KAFKA-872](https://issues.apache.org/jira/browse/KAFKA-872) | Socket server does not set send/recv buffer sizes |  Major | core | Joel Koshy | Joel Koshy |
| [KAFKA-871](https://issues.apache.org/jira/browse/KAFKA-871) | Rename ZkConfig properties |  Blocker | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-866](https://issues.apache.org/jira/browse/KAFKA-866) | Recover segment does shallow iteration to fix index causing inconsistencies |  Blocker | . | Sriram Subramanian | Sriram Subramanian |
| [KAFKA-861](https://issues.apache.org/jira/browse/KAFKA-861) | IndexOutOfBoundsException while fetching data from leader |  Major | . | Sriram Subramanian | Sriram Subramanian |
| [KAFKA-856](https://issues.apache.org/jira/browse/KAFKA-856) | Correlation id for OffsetFetch request (#2) always responds with 0 |  Major | network | Milosz Tanski | Jun Rao |
| [KAFKA-846](https://issues.apache.org/jira/browse/KAFKA-846) | AbstractFetcherThread should do shallow instead of deep iteration |  Blocker | core | Jun Rao | Jun Rao |
| [KAFKA-840](https://issues.apache.org/jira/browse/KAFKA-840) | Controller tries to perform preferred replica election on failover before state machines have started up |  Blocker | controller | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-832](https://issues.apache.org/jira/browse/KAFKA-832) | 0.8 Consumer prevents rebalance if consumer thread is blocked or slow |  Blocker | consumer | Neha Narkhede | Jun Rao |
| [KAFKA-830](https://issues.apache.org/jira/browse/KAFKA-830) | partition replica assignment map in the controller should be a Set |  Blocker | controller | Neha Narkhede | Neha Narkhede |
| [KAFKA-828](https://issues.apache.org/jira/browse/KAFKA-828) | Preferred Replica Election does not delete the admin path on controller failover |  Blocker | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-827](https://issues.apache.org/jira/browse/KAFKA-827) | improve list topic output format |  Blocker | core | Jun Rao | Jun Rao |
| [KAFKA-826](https://issues.apache.org/jira/browse/KAFKA-826) | Make Kafka 0.8 depend on metrics 2.2.0 instead of 3.x |  Blocker | core | Neha Narkhede | Dragos Manolescu |
| [KAFKA-825](https://issues.apache.org/jira/browse/KAFKA-825) | KafkaController.isActive() needs to be synchronized |  Blocker | core | Jun Rao | Jun Rao |
| [KAFKA-813](https://issues.apache.org/jira/browse/KAFKA-813) | Minor cleanup in Controller |  Blocker | controller | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-811](https://issues.apache.org/jira/browse/KAFKA-811) | Fix clientId in migration tool |  Blocker | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-807](https://issues.apache.org/jira/browse/KAFKA-807) | LineMessageReader doesn't correctly parse the key separator |  Trivial | tools | Dragos Manolescu | Dragos Manolescu |
| [KAFKA-804](https://issues.apache.org/jira/browse/KAFKA-804) | Incorrect index in the log of a follower |  Blocker | core | Jun Rao | Jun Rao |
| [KAFKA-801](https://issues.apache.org/jira/browse/KAFKA-801) | Fix MessagesInPerSec mbean to count uncompressed message rate |  Blocker | core | Neha Narkhede | Jun Rao |
| [KAFKA-800](https://issues.apache.org/jira/browse/KAFKA-800) | inSyncReplica in Partition needs some tweaks |  Blocker | . | Sriram Subramanian | Sriram Subramanian |
| [KAFKA-798](https://issues.apache.org/jira/browse/KAFKA-798) | Use biased histograms instead of uniform histograms in KafkaMetricsGroup |  Blocker | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-793](https://issues.apache.org/jira/browse/KAFKA-793) | Include controllerId in all requests sent by controller |  Blocker | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-786](https://issues.apache.org/jira/browse/KAFKA-786) | Use "withRequiredArg" while parsing jopt options in all tools |  Blocker | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-785](https://issues.apache.org/jira/browse/KAFKA-785) | Resolve bugs in PreferredReplicaLeaderElection admin tool |  Blocker | . | Swapnil Ghike | Sriram Subramanian |
| [KAFKA-779](https://issues.apache.org/jira/browse/KAFKA-779) | Standardize Zk data structures for Re-assign partitions and Preferred replication election |  Blocker | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-776](https://issues.apache.org/jira/browse/KAFKA-776) | Changing ZK format breaks some tools |  Blocker | . | Sriram Subramanian | Swapnil Ghike |
| [KAFKA-772](https://issues.apache.org/jira/browse/KAFKA-772) | System Test Transient Failure on testcase\_0122 |  Major | . | John Fung | Sriram Subramanian |
| [KAFKA-770](https://issues.apache.org/jira/browse/KAFKA-770) | KafkaConfig properties should be verified in the constructor |  Major | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-769](https://issues.apache.org/jira/browse/KAFKA-769) | On startup, a brokers highwatermark for every topic partition gets reset to zero |  Blocker | . | Sriram Subramanian | Sriram Subramanian |
| [KAFKA-768](https://issues.apache.org/jira/browse/KAFKA-768) | broker should exit if hitting exceptions durin startup |  Blocker | core | Jun Rao | Jun Rao |
| [KAFKA-767](https://issues.apache.org/jira/browse/KAFKA-767) | Message Size check should be done after assigning the offsets |  Blocker | log | Sriram Subramanian | Sriram Subramanian |
| [KAFKA-758](https://issues.apache.org/jira/browse/KAFKA-758) | startHighWaterMarksCheckPointThread is never called |  Blocker | . | Sriram Subramanian | Sriram Subramanian |
| [KAFKA-757](https://issues.apache.org/jira/browse/KAFKA-757) | System Test Hard Failure cases : "Fatal error during KafkaServerStable startup" when hard-failed broker is re-started |  Blocker | . | John Fung | Swapnil Ghike |
| [KAFKA-756](https://issues.apache.org/jira/browse/KAFKA-756) | Processor thread blocks due to infinite loop during fetch response send |  Blocker | . | Sriram Subramanian | Sriram Subramanian |
| [KAFKA-755](https://issues.apache.org/jira/browse/KAFKA-755) | standardizing json values stored in ZK |  Blocker | core | Jun Rao | Swapnil Ghike |
| [KAFKA-751](https://issues.apache.org/jira/browse/KAFKA-751) | Fix windows build script - kafka-run-class.bat |  Minor | tools | Mark deVilliers |  |
| [KAFKA-748](https://issues.apache.org/jira/browse/KAFKA-748) | Append to index fails due to invalid offset |  Blocker | . | Sriram Subramanian | Jay Kreps |
| [KAFKA-743](https://issues.apache.org/jira/browse/KAFKA-743) | PreferredReplicaLeaderElectionCommand has command line error |  Blocker | tools | Jun Rao | Jun Rao |
| [KAFKA-738](https://issues.apache.org/jira/browse/KAFKA-738) | correlationId is not set in FetchRequest in AbstractFetcherThread |  Blocker | core | Jun Rao | Jun Rao |
| [KAFKA-732](https://issues.apache.org/jira/browse/KAFKA-732) | MirrorMaker with shallow.iterator.enable=true produces unreadble messages |  Blocker | core, producer | Maxime Brugidou | Jun Rao |
| [KAFKA-726](https://issues.apache.org/jira/browse/KAFKA-726) | Add ReplicaFetcherThread name to mbean names |  Blocker | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-718](https://issues.apache.org/jira/browse/KAFKA-718) | kafka-run-class.sh should use reasonable gc settings |  Major | . | Jay Kreps | Jay Kreps |
| [KAFKA-713](https://issues.apache.org/jira/browse/KAFKA-713) | Update Hadoop producer for Kafka 0.8 changes |  Major | . | Sam Shah | Sam Shah |
| [KAFKA-710](https://issues.apache.org/jira/browse/KAFKA-710) | Some arguments are always set to default in ProducerPerformance |  Major | . | John Fung | John Fung |
| [KAFKA-708](https://issues.apache.org/jira/browse/KAFKA-708) | ISR becomes empty while marking a partition offline |  Blocker | . | Swapnil Ghike | Neha Narkhede |
| [KAFKA-702](https://issues.apache.org/jira/browse/KAFKA-702) | Deadlock between request handler/processor threads |  Blocker | network | Joel Koshy | Jay Kreps |
| [KAFKA-701](https://issues.apache.org/jira/browse/KAFKA-701) | ConsoleProducer does not exit correctly and fix some config properties following KAFKA-648 |  Minor | config, core | Maxime Brugidou | Maxime Brugidou |
| [KAFKA-698](https://issues.apache.org/jira/browse/KAFKA-698) | broker may expose uncommitted data to a consumer |  Blocker | core | Jun Rao | Jay Kreps |
| [KAFKA-695](https://issues.apache.org/jira/browse/KAFKA-695) | Broker shuts down due to attempt to read a closed index file |  Blocker | log | Neha Narkhede | Jun Rao |
| [KAFKA-693](https://issues.apache.org/jira/browse/KAFKA-693) | Consumer rebalance fails if no leader available for a partition and stops all fetchers |  Major | core | Maxime Brugidou | Maxime Brugidou |
| [KAFKA-692](https://issues.apache.org/jira/browse/KAFKA-692) | ConsoleConsumer outputs diagnostic message to stdout instead of stderr |  Minor | clients | ben fleis | ben fleis |
| [KAFKA-691](https://issues.apache.org/jira/browse/KAFKA-691) | Fault tolerance broken with replication factor 1 |  Major | . | Jay Kreps | Maxime Brugidou |
| [KAFKA-690](https://issues.apache.org/jira/browse/KAFKA-690) | TopicMetadataRequest throws exception when no topics are specified |  Major | core | David Arthur | David Arthur |
| [KAFKA-684](https://issues.apache.org/jira/browse/KAFKA-684) | ConsoleProducer does not have the queue-size option |  Major | core | Maxime Brugidou | Maxime Brugidou |
| [KAFKA-681](https://issues.apache.org/jira/browse/KAFKA-681) | Unclean shutdown testing - truncateAndStartWithNewOffset is not invoked when it is expected to |  Blocker | . | John Fung | Jun Rao |
| [KAFKA-680](https://issues.apache.org/jira/browse/KAFKA-680) | ApiUtils#writeShortString uses String length instead of byte length |  Major | clients, core | David Arthur | David Arthur |
| [KAFKA-673](https://issues.apache.org/jira/browse/KAFKA-673) | Broker recovery check logic is reversed |  Critical | . | Jay Kreps | Jay Kreps |
| [KAFKA-668](https://issues.apache.org/jira/browse/KAFKA-668) | Controlled shutdown admin tool should not require controller JMX url/port to be supplied |  Major | . | Joel Koshy |  |
| [KAFKA-664](https://issues.apache.org/jira/browse/KAFKA-664) | Kafka server threads die due to OOME during long running test |  Blocker | . | Neha Narkhede | Jay Kreps |
| [KAFKA-648](https://issues.apache.org/jira/browse/KAFKA-648) | Use uniform convention for naming properties keys |  Blocker | . | Swapnil Ghike | Sriram Subramanian |
| [KAFKA-646](https://issues.apache.org/jira/browse/KAFKA-646) | Provide aggregate stats at the high level Producer and ZookeeperConsumerConnector level |  Blocker | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-634](https://issues.apache.org/jira/browse/KAFKA-634) | ConsoleProducer compresses messages and ignores the --compress flag |  Major | core | Anentropic |  |
| [KAFKA-622](https://issues.apache.org/jira/browse/KAFKA-622) | Create mbeans per client |  Blocker | core | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-618](https://issues.apache.org/jira/browse/KAFKA-618) | Deadlock between leader-finder-thread and consumer-fetcher-thread during broker failure |  Blocker | . | Joel Koshy |  |
| [KAFKA-614](https://issues.apache.org/jira/browse/KAFKA-614) | DumpLogSegment offset verification is incorrect for compressed messages |  Major | core | Jun Rao |  |
| [KAFKA-613](https://issues.apache.org/jira/browse/KAFKA-613) | MigrationTool should disable shallow iteration in the 0.7 consumer |  Major | core | Jun Rao |  |
| [KAFKA-612](https://issues.apache.org/jira/browse/KAFKA-612) | move shutting down of fetcher thread out of critical path |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-608](https://issues.apache.org/jira/browse/KAFKA-608) | getTopicMetadata does not respect producer config settings |  Blocker | . | Jay Kreps | Neha Narkhede |
| [KAFKA-604](https://issues.apache.org/jira/browse/KAFKA-604) | Add missing metrics in 0.8 |  Blocker | core | Jun Rao | Swapnil Ghike |
| [KAFKA-596](https://issues.apache.org/jira/browse/KAFKA-596) | LogSegment.firstAppendTime not reset after truncate to |  Major | core | Jun Rao | Swapnil Ghike |
| [KAFKA-592](https://issues.apache.org/jira/browse/KAFKA-592) | Register metrics beans at kafka server startup |  Blocker | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-591](https://issues.apache.org/jira/browse/KAFKA-591) | Add test cases to test log size retention and more |  Major | . | John Fung | John Fung |
| [KAFKA-586](https://issues.apache.org/jira/browse/KAFKA-586) | system test configs are broken |  Critical | . | Neha Narkhede | John Fung |
| [KAFKA-584](https://issues.apache.org/jira/browse/KAFKA-584) | produce/fetch remote time metric not set correctly when num.acks = 1 |  Major | . | Neha Narkhede | Jun Rao |
| [KAFKA-580](https://issues.apache.org/jira/browse/KAFKA-580) | system test testcase\_0122 under replication fails due to large # of data loss |  Blocker | core | Jun Rao | Jun Rao |
| [KAFKA-579](https://issues.apache.org/jira/browse/KAFKA-579) | remove connection timeout in SyncProducer |  Blocker | core | Jun Rao | Swapnil Ghike |
| [KAFKA-578](https://issues.apache.org/jira/browse/KAFKA-578) | Leader finder thread in ConsumerFetcherManager needs to handle exceptions |  Blocker | core | Jun Rao |  |
| [KAFKA-577](https://issues.apache.org/jira/browse/KAFKA-577) | extend DumpLogSegments to verify consistency btw data and index |  Major | core | Jun Rao |  |
| [KAFKA-576](https://issues.apache.org/jira/browse/KAFKA-576) | SimpleConsumer throws UnsupportedOperationException: empty.head |  Major | . | John Fung | Yang Ye |
| [KAFKA-575](https://issues.apache.org/jira/browse/KAFKA-575) | Partition.makeFollower() reads broker info from ZK |  Blocker | core | Jun Rao | Swapnil Ghike |
| [KAFKA-573](https://issues.apache.org/jira/browse/KAFKA-573) | System Test : Leader Failure Log Segment Checksum Mismatched When request-num-acks is 1 |  Major | . | John Fung | Jun Rao |
| [KAFKA-567](https://issues.apache.org/jira/browse/KAFKA-567) | Replication Data Loss in Mirror Maker Bouncing testcase |  Blocker | core | John Fung | Jun Rao |
| [KAFKA-563](https://issues.apache.org/jira/browse/KAFKA-563) | KafkaScheduler shutdown in ZookeeperConsumerConnector should check for config.autocommit |  Major | . | Swapnil Ghike |  |
| [KAFKA-562](https://issues.apache.org/jira/browse/KAFKA-562) | Non-failure System Test Log Segment File Checksums mismatched |  Major | . | John Fung |  |
| [KAFKA-557](https://issues.apache.org/jira/browse/KAFKA-557) | Replica fetch thread doesn't need to recompute message id |  Blocker | core | Jun Rao | Jay Kreps |
| [KAFKA-556](https://issues.apache.org/jira/browse/KAFKA-556) | Change MessageSet.sizeInBytes to Int |  Major | core | Jun Rao | Swapnil Ghike |
| [KAFKA-553](https://issues.apache.org/jira/browse/KAFKA-553) | confusing reference to zk.connect in config/producer.properties |  Trivial | config | yazgoo |  |
| [KAFKA-540](https://issues.apache.org/jira/browse/KAFKA-540) | log.append() should halt on IOException |  Blocker | core | Jun Rao | Jun Rao |
| [KAFKA-539](https://issues.apache.org/jira/browse/KAFKA-539) | Replica.hw should be initialized to the smaller of checkedpointed HW and log end offset |  Blocker | core | Jun Rao |  |
| [KAFKA-537](https://issues.apache.org/jira/browse/KAFKA-537) | expose clientId and correlationId in ConsumerConfig |  Major | core | Jun Rao | Yang Ye |
| [KAFKA-528](https://issues.apache.org/jira/browse/KAFKA-528) | IndexOutOfBoundsException thrown by kafka.consumer.ConsumerFetcherThread |  Blocker | . | John Fung | Jun Rao |
| [KAFKA-516](https://issues.apache.org/jira/browse/KAFKA-516) | Consider catching all exceptions in ShutdownableThread |  Major | . | Jay Kreps |  |
| [KAFKA-512](https://issues.apache.org/jira/browse/KAFKA-512) | Remove checksum from ByteBufferMessageSet.iterator |  Blocker | . | Jay Kreps | Jay Kreps |
| [KAFKA-511](https://issues.apache.org/jira/browse/KAFKA-511) | offset returned in Producer response may not be correct |  Blocker | core | Jun Rao | Jun Rao |
| [KAFKA-510](https://issues.apache.org/jira/browse/KAFKA-510) | broker needs to know the replication factor per partition |  Blocker | core | Jun Rao | Yang Ye |
| [KAFKA-509](https://issues.apache.org/jira/browse/KAFKA-509) | server should shut down on encountering invalid highwatermark file |  Blocker | . | Swapnil Ghike | Yang Ye |
| [KAFKA-508](https://issues.apache.org/jira/browse/KAFKA-508) | split out partiondata from fetchresponse and producerrequest |  Blocker | . | Joe Stein | Joe Stein |
| [KAFKA-506](https://issues.apache.org/jira/browse/KAFKA-506) | Store logical offset in log |  Major | . | Jay Kreps | Jay Kreps |
| [KAFKA-501](https://issues.apache.org/jira/browse/KAFKA-501) | getOfffset Api needs to return different latest offset to regular and follower consumers |  Blocker | . | Jun Rao | Joel Koshy |
| [KAFKA-500](https://issues.apache.org/jira/browse/KAFKA-500) | javaapi support for getTopoicMetaData |  Blocker | core | Jun Rao | Swapnil Ghike |
| [KAFKA-499](https://issues.apache.org/jira/browse/KAFKA-499) | Refactor controller state machine |  Blocker | . | Neha Narkhede | Neha Narkhede |
| [KAFKA-497](https://issues.apache.org/jira/browse/KAFKA-497) | recover consumer during unclean leadership change |  Blocker | core | Jun Rao |  |
| [KAFKA-495](https://issues.apache.org/jira/browse/KAFKA-495) | Handle topic names with "/" on Kafka server |  Major | . | Neha Narkhede | Swapnil Ghike |
| [KAFKA-491](https://issues.apache.org/jira/browse/KAFKA-491) | KafkaRequestHandler needs to handle exceptions |  Major | core | Jun Rao |  |
| [KAFKA-490](https://issues.apache.org/jira/browse/KAFKA-490) | Check max message size on server instead of producer |  Blocker | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-481](https://issues.apache.org/jira/browse/KAFKA-481) | Require values in Utils.getTopic* methods to be positive |  Major | . | Swapnil Ghike | Swapnil Ghike |
| [KAFKA-474](https://issues.apache.org/jira/browse/KAFKA-474) | support changing host/port of a broker |  Major | core | Jun Rao | David Arthur |
| [KAFKA-473](https://issues.apache.org/jira/browse/KAFKA-473) | Use getMetadata Api in ZookeeperConsumerConnector |  Blocker | core | Jun Rao | Yang Ye |
| [KAFKA-471](https://issues.apache.org/jira/browse/KAFKA-471) | Transient failure in ProducerTest |  Major | . | Neha Narkhede | Jun Rao |
| [KAFKA-470](https://issues.apache.org/jira/browse/KAFKA-470) | transient unit test failure in RequestPurgatoryTest |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-468](https://issues.apache.org/jira/browse/KAFKA-468) | String#getBytes is platform dependent |  Trivial | core | David Arthur |  |
| [KAFKA-467](https://issues.apache.org/jira/browse/KAFKA-467) | Controller based leader election failed ERROR messages in LazyInitProducerTest |  Major | core | Neha Narkhede | Yang Ye |
| [KAFKA-464](https://issues.apache.org/jira/browse/KAFKA-464) | KafkaController NPE in SessionExpireListener |  Major | core | Jun Rao | Yang Ye |
| [KAFKA-463](https://issues.apache.org/jira/browse/KAFKA-463) | log.truncateTo needs to handle targetOffset smaller than the lowest offset in the log |  Blocker | core | Jun Rao | Swapnil Ghike |
| [KAFKA-461](https://issues.apache.org/jira/browse/KAFKA-461) | remove support for format for magic byte 0 in 0.8 |  Major | core | Jun Rao | Swapnil Ghike |
| [KAFKA-460](https://issues.apache.org/jira/browse/KAFKA-460) | ControllerChannelManager needs synchronization btw shutdown and add/remove broker |  Major | core | Jun Rao | Yang Ye |
| [KAFKA-459](https://issues.apache.org/jira/browse/KAFKA-459) | KafkaController.RequestSendThread can throw exception on broker socket |  Major | core | Jun Rao | Yang Ye |
| [KAFKA-456](https://issues.apache.org/jira/browse/KAFKA-456) | ProducerSendThread calls ListBuffer.size a whole bunch. That is a O(n) operation |  Minor | core | Matthew Rathbone | David Arthur |
| [KAFKA-431](https://issues.apache.org/jira/browse/KAFKA-431) | LogCorruptionTest.testMessageSizeTooLarge fails occasionally |  Major | core | Jun Rao |  |
| [KAFKA-428](https://issues.apache.org/jira/browse/KAFKA-428) | need to update leaderAndISR path in ZK conditionally in ReplicaManager |  Major | core | Jun Rao | Yang Ye |
| [KAFKA-425](https://issues.apache.org/jira/browse/KAFKA-425) | Wrong class name in performance test scripts |  Major | . | Akira Kitada | Jay Kreps |
| [KAFKA-424](https://issues.apache.org/jira/browse/KAFKA-424) | Remove invalid mirroring arguments from kafka-server-start.sh |  Trivial | core | Tommie | Jay Kreps |
| [KAFKA-420](https://issues.apache.org/jira/browse/KAFKA-420) | maintain HW correctly with only 1 replica in ISR |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-418](https://issues.apache.org/jira/browse/KAFKA-418) | NullPointerException in ConsumerFetcherManager |  Major | . | Neha Narkhede | Jun Rao |
| [KAFKA-416](https://issues.apache.org/jira/browse/KAFKA-416) | Controller tests throw several zookeeper errors |  Major | . | Neha Narkhede | Yang Ye |
| [KAFKA-415](https://issues.apache.org/jira/browse/KAFKA-415) | Controller throws NoSuchElementException while marking a broker failed |  Major | . | Neha Narkhede | Yang Ye |
| [KAFKA-413](https://issues.apache.org/jira/browse/KAFKA-413) | single\_host\_multi\_brokers system test fails on laptop |  Major | core | Jun Rao | John Fung |
| [KAFKA-412](https://issues.apache.org/jira/browse/KAFKA-412) | deal with empty TopicData list in producer and fetch request |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-396](https://issues.apache.org/jira/browse/KAFKA-396) | Mirroring system test fails on 0.8 |  Major | core | Joel Koshy | Joel Koshy |
| [KAFKA-391](https://issues.apache.org/jira/browse/KAFKA-391) | Producer request and response classes should use maps |  Blocker | . | Joel Koshy | Joel Koshy |
| [KAFKA-386](https://issues.apache.org/jira/browse/KAFKA-386) | Race condition in accessing ISR |  Major | . | Joel Koshy |  |
| [KAFKA-385](https://issues.apache.org/jira/browse/KAFKA-385) | RequestPurgatory enhancements - expire/checkSatisfy issue; add jmx beans |  Major | . | Joel Koshy | Joel Koshy |
| [KAFKA-379](https://issues.apache.org/jira/browse/KAFKA-379) | TopicCount.constructTopicCount isn't thread-safe |  Major | clients | Nick Howard | Jun Rao |
| [KAFKA-376](https://issues.apache.org/jira/browse/KAFKA-376) | expose different data to fetch requests from the follower replicas and consumer clients |  Major | core | Jun Rao | Prashanth Menon |
| [KAFKA-371](https://issues.apache.org/jira/browse/KAFKA-371) | Creating topic of empty string puts broker in a bad state |  Major | . | Martin Kleppmann | Jay Kreps |
| [KAFKA-370](https://issues.apache.org/jira/browse/KAFKA-370) | Exception "java.util.NoSuchElementException: None.get" appears inconsistently in Mirror Maker log. |  Major | core | John Fung | Jun Rao |
| [KAFKA-367](https://issues.apache.org/jira/browse/KAFKA-367) | StringEncoder/StringDecoder use platform default character set |  Major | . | Jay Kreps | Eli Reisman |
| [KAFKA-352](https://issues.apache.org/jira/browse/KAFKA-352) | Throw exception to client if it makes a produce/consume request to a Kafka broker for a topic that hasn't been created |  Major | . | Neha Narkhede | Neha Narkhede |
| [KAFKA-351](https://issues.apache.org/jira/browse/KAFKA-351) | Refactor some new components introduced for replication |  Major | . | Neha Narkhede | Jun Rao |
| [KAFKA-306](https://issues.apache.org/jira/browse/KAFKA-306) | broker failure system test broken on replication branch |  Major | . | Neha Narkhede | John Fung |
| [KAFKA-305](https://issues.apache.org/jira/browse/KAFKA-305) | SyncProducer does not correctly timeout |  Critical | core | Prashanth Menon | Prashanth Menon |
| [KAFKA-295](https://issues.apache.org/jira/browse/KAFKA-295) | Bug in async producer DefaultEventHandler retry logic |  Major | core | Prashanth Menon | Prashanth Menon |
| [KAFKA-259](https://issues.apache.org/jira/browse/KAFKA-259) | Give better error message when trying to run shell scripts without having built/downloaded the jars yet |  Minor | . | Ross Crawford-d'Heureuse |  |
| [KAFKA-233](https://issues.apache.org/jira/browse/KAFKA-233) | The producer's load balancing logic can send requests to dead brokers, when using the async producer option |  Major | core | Neha Narkhede |  |
| [KAFKA-229](https://issues.apache.org/jira/browse/KAFKA-229) | SimpleConsumer is not logging exceptions correctly so detailed stack trace is not coming in the logs |  Major | . | Joe Stein | Jay Kreps |
| [KAFKA-192](https://issues.apache.org/jira/browse/KAFKA-192) | CompressionUtilTest does not run and fails when it does |  Major | . | Joe Stein | Joe Stein |
| [KAFKA-171](https://issues.apache.org/jira/browse/KAFKA-171) | Kafka producer should do a single write to send message sets |  Major | core | Jay Kreps | Jay Kreps |
| [KAFKA-81](https://issues.apache.org/jira/browse/KAFKA-81) | wrong path in bin/kafka-run-class.sh |  Major | packaging | Chris Burroughs |  |
| [KAFKA-49](https://issues.apache.org/jira/browse/KAFKA-49) | Add acknowledgement to the produce request. |  Major | . | Jun Rao | Prashanth Menon |
| [KAFKA-46](https://issues.apache.org/jira/browse/KAFKA-46) | Commit thread, ReplicaFetcherThread for intra-cluster replication |  Major | . | Jun Rao | Neha Narkhede |
| [KAFKA-43](https://issues.apache.org/jira/browse/KAFKA-43) | Rebalance to preferred broke with intra-cluster replication support |  Blocker | core | Jun Rao | Neha Narkhede |
| [KAFKA-42](https://issues.apache.org/jira/browse/KAFKA-42) | Support rebalancing the partitions with replication |  Blocker | core | Jun Rao | Neha Narkhede |
| [KAFKA-15](https://issues.apache.org/jira/browse/KAFKA-15) | SBT release-zip target doesn't include bin and config directories anymore |  Major | . | Jun Rao | Jun Rao |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-843](https://issues.apache.org/jira/browse/KAFKA-843) | Re-add the release-zip sbt target |  Major | packaging | Cosmin Lehene | Cosmin Lehene |
| [KAFKA-814](https://issues.apache.org/jira/browse/KAFKA-814) | Controller should not throw exception when a preferred replica is already the leader for a partition |  Blocker | . | Sriram Subramanian | Sriram Subramanian |
| [KAFKA-780](https://issues.apache.org/jira/browse/KAFKA-780) | Reassign partitions tool produces NPE in shutdown handler |  Blocker | . | Swapnil Ghike | Sriram Subramanian |
| [KAFKA-731](https://issues.apache.org/jira/browse/KAFKA-731) | ~/ivy2/cache should be a variable in the kafka-run-class bash script |  Major | packaging | Joe Stein | Joe Stein |
| [KAFKA-571](https://issues.apache.org/jira/browse/KAFKA-571) | Add more test cases to System Test |  Major | . | John Fung | John Fung |
| [KAFKA-513](https://issues.apache.org/jira/browse/KAFKA-513) | Add state change log to Kafka brokers |  Blocker | . | Neha Narkhede | Swapnil Ghike |
| [KAFKA-507](https://issues.apache.org/jira/browse/KAFKA-507) | Shut down ZK last to avoid hanging brokers running processes |  Major | . | John Fung | John Fung |
| [KAFKA-503](https://issues.apache.org/jira/browse/KAFKA-503) | Support "testcase\_to\_run" or "testcase\_to\_skip" |  Major | . | John Fung | John Fung |
| [KAFKA-502](https://issues.apache.org/jira/browse/KAFKA-502) | Simplify setup / initialization in replication\_basic\_test.py |  Major | . | John Fung | John Fung |
| [KAFKA-494](https://issues.apache.org/jira/browse/KAFKA-494) | Relative paths should be used for svg URLs in dashboards html |  Major | . | John Fung |  |
| [KAFKA-492](https://issues.apache.org/jira/browse/KAFKA-492) | Sometimes the python system test framework doesn't terminate all running processes |  Major | . | John Fung | John Fung |
| [KAFKA-488](https://issues.apache.org/jira/browse/KAFKA-488) | Port Mirroring System Test to this python system test framework |  Major | . | John Fung | John Fung |
| [KAFKA-482](https://issues.apache.org/jira/browse/KAFKA-482) | Make producer to run for the entire duration of the System Test |  Major | . | John Fung | John Fung |
| [KAFKA-458](https://issues.apache.org/jira/browse/KAFKA-458) | remove errorcode from ByteBufferMessageSet |  Major | core | Jun Rao | Swapnil Ghike |
| [KAFKA-369](https://issues.apache.org/jira/browse/KAFKA-369) | remove ZK dependency on producer |  Major | core | Jun Rao | Yang Ye |
| [KAFKA-362](https://issues.apache.org/jira/browse/KAFKA-362) | ZookeeperConsumerConnector needs to connect to new leader after leadership change |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-356](https://issues.apache.org/jira/browse/KAFKA-356) | Create a generic Kafka thread class that includes basic boiler plate code of instantiating and shutting down threads cleanly |  Major | . | Neha Narkhede | Yang Ye |
| [KAFKA-344](https://issues.apache.org/jira/browse/KAFKA-344) | migration tool from 0.7 to 0.8 |  Blocker | core | Jun Rao | Yang Ye |
| [KAFKA-343](https://issues.apache.org/jira/browse/KAFKA-343) | revisit the become leader and become follower state change operations using V3 design |  Major | core | Jun Rao | Yang Ye |
| [KAFKA-342](https://issues.apache.org/jira/browse/KAFKA-342) | revisit the broker startup procedure according to V3 design |  Major | core | Jun Rao | Yang Ye |
| [KAFKA-339](https://issues.apache.org/jira/browse/KAFKA-339) | using MultiFetch in the follower |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-338](https://issues.apache.org/jira/browse/KAFKA-338) | controller failover |  Major | core | Jun Rao | Yang Ye |
| [KAFKA-337](https://issues.apache.org/jira/browse/KAFKA-337) | upgrade ZKClient to allow conditional updates in ZK |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-336](https://issues.apache.org/jira/browse/KAFKA-336) | add an admin RPC to communicate state changes between the controller and the broker |  Major | core | Jun Rao | Yang Ye |
| [KAFKA-335](https://issues.apache.org/jira/browse/KAFKA-335) | Implement an embedded controller |  Major | core | Jun Rao | Yang Ye |
| [KAFKA-329](https://issues.apache.org/jira/browse/KAFKA-329) | Remove the watches/broker for new topics and partitions and change create topic admin API to send start replica state change to all brokers |  Major | . | Neha Narkhede | Prashanth Menon |
| [KAFKA-240](https://issues.apache.org/jira/browse/KAFKA-240) | implement new producer and consumer request format |  Major | core | Jun Rao |  |
| [KAFKA-239](https://issues.apache.org/jira/browse/KAFKA-239) | Wire existing producer and consumer to use the new ZK data structure |  Major | core | Jun Rao | Neha Narkhede |
| [KAFKA-237](https://issues.apache.org/jira/browse/KAFKA-237) | create/delete ZK path for a topic in an admin tool |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-176](https://issues.apache.org/jira/browse/KAFKA-176) | Fix existing perf tools |  Major | . | Neha Narkhede | Neha Narkhede |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-932](https://issues.apache.org/jira/browse/KAFKA-932) | System Test - set retry.backoff.ms=300 to all test cases |  Major | . | John Fung | John Fung |
| [KAFKA-922](https://issues.apache.org/jira/browse/KAFKA-922) | System Test - set retry.backoff.ms=300 to testcase\_0119 |  Major | . | John Fung | John Fung |
| [KAFKA-883](https://issues.apache.org/jira/browse/KAFKA-883) | System Test - update migration tool testsuite after 0.7 ProducerPerformance sends seq MessageID |  Major | . | John Fung | John Fung |
| [KAFKA-819](https://issues.apache.org/jira/browse/KAFKA-819) | System Test : Add validation of log segment index to offset |  Major | . | John Fung | John Fung |
| [KAFKA-792](https://issues.apache.org/jira/browse/KAFKA-792) | Update multiple attributes in testcase\_xxxx\_properties.json |  Major | . | John Fung | John Fung |
| [KAFKA-791](https://issues.apache.org/jira/browse/KAFKA-791) | Fix validation bugs in System Test |  Major | . | John Fung | John Fung |
| [KAFKA-737](https://issues.apache.org/jira/browse/KAFKA-737) | System Test : Disable shallow.iterator in Mirror Maker test cases to make compression work correctly |  Major | . | John Fung | John Fung |
| [KAFKA-688](https://issues.apache.org/jira/browse/KAFKA-688) | System Test - Update all testcase\_xxxx\_properties.json for properties keys uniform naming convention |  Major | . | John Fung | John Fung |
| [KAFKA-605](https://issues.apache.org/jira/browse/KAFKA-605) | System Test - Log Retention Cases should wait longer before getting the common starting offset in replica log segments |  Major | . | John Fung |  |
| [KAFKA-594](https://issues.apache.org/jira/browse/KAFKA-594) | Update System Test due to new argument "--sync" in ProducerPerformance |  Major | . | John Fung | John Fung |
| [KAFKA-526](https://issues.apache.org/jira/browse/KAFKA-526) | System Test should remove the top level data log directory |  Major | . | John Fung | John Fung |
| [KAFKA-440](https://issues.apache.org/jira/browse/KAFKA-440) | Create a regression test framework for distributed environment testing |  Major | . | John Fung | John Fung |
| [KAFKA-380](https://issues.apache.org/jira/browse/KAFKA-380) | Enhance single\_host\_multi\_brokers test with failure to trigger leader re-election in replication |  Major | . | John Fung | John Fung |
| [KAFKA-348](https://issues.apache.org/jira/browse/KAFKA-348) | rebase 0.8 branch from trunk |  Critical | . | Joe Stein | Joe Stein |
| [KAFKA-341](https://issues.apache.org/jira/browse/KAFKA-341) | Create a new single host system test to validate all replicas on 0.8 branch |  Major | . | John Fung | John Fung |
| [KAFKA-93](https://issues.apache.org/jira/browse/KAFKA-93) | Change code header to follow standard ASF source header |  Minor | . | Henry Saputra | Henry Saputra |


