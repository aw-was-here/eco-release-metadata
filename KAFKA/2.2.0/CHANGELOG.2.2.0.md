
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

## Release 2.2.0 - 2019-03-22



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7655](https://issues.apache.org/jira/browse/KAFKA-7655) | Metadata spamming requests from Kafka Streams under some circumstances, potential DOS |  Major | streams | Pasquale Vazzana | Pasquale Vazzana |
| [KAFKA-7672](https://issues.apache.org/jira/browse/KAFKA-7672) | The local state not fully restored after KafkaStream rebalanced, resulting in data loss |  Critical | streams | linyue li | linyue li |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7096](https://issues.apache.org/jira/browse/KAFKA-7096) | Consumer should drop the data for unassigned topic partitions |  Major | . | Mayuresh Gharat | Mayuresh Gharat |
| [KAFKA-7266](https://issues.apache.org/jira/browse/KAFKA-7266) | Fix MetricsTest test flakiness |  Minor | . | Stanislav Kozlovski | Stanislav Kozlovski |
| [KAFKA-7478](https://issues.apache.org/jira/browse/KAFKA-7478) | Reduce OAuthBearerLoginModule verbosity |  Minor | . | Stanislav Kozlovski | Stanislav Kozlovski |
| [KAFKA-7131](https://issues.apache.org/jira/browse/KAFKA-7131) | Update release script to generate announcement email text |  Minor | . | Matthias J. Sax | bibin sebastian |
| [KAFKA-7352](https://issues.apache.org/jira/browse/KAFKA-7352) | KIP-368: Allow SASL Connections to Periodically Re-Authenticate |  Major | clients, core | Ron Dagostino | Ron Dagostino |
| [KAFKA-7524](https://issues.apache.org/jira/browse/KAFKA-7524) | Recommend Scala 2.12 and use it for development |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-7413](https://issues.apache.org/jira/browse/KAFKA-7413) | Replace slave terminology with follower in website |  Major | website | Sayat Satybaldiyev |  |
| [KAFKA-7567](https://issues.apache.org/jira/browse/KAFKA-7567) | Clean up internal metadata usage for consistency and extensibility |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-7568](https://issues.apache.org/jira/browse/KAFKA-7568) | Return leader epoch in ListOffsets responses |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-7537](https://issues.apache.org/jira/browse/KAFKA-7537) | Only include live brokers in the UpdateMetadataRequest sent to existing brokers if there is no change in the partition states |  Major | controller | Zhanxiang (Patrick) Huang | Zhanxiang (Patrick) Huang |
| [KAFKA-7584](https://issues.apache.org/jira/browse/KAFKA-7584) | StreamsConfig throws ClassCastException if max.in.flight.request.per.connect is specified as String |  Minor | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-6774](https://issues.apache.org/jira/browse/KAFKA-6774) | Improve default groupId behavior in consumer |  Major | consumer | Jason Gustafson | Vahid Hashemian |
| [KAFKA-7402](https://issues.apache.org/jira/browse/KAFKA-7402) | Kafka Streams should implement AutoCloseable where appropriate |  Minor | streams | John Roesler | Yishun Guan |
| [KAFKA-6567](https://issues.apache.org/jira/browse/KAFKA-6567) | KStreamWindowReduce can be replaced by KStreamWindowAggregate |  Major | streams | Guozhang Wang | Samuel Hawker |
| [KAFKA-7528](https://issues.apache.org/jira/browse/KAFKA-7528) | Standardize on Min/Avg/Max Kafka metrics' default value |  Minor | . | Stanislav Kozlovski | Stanislav Kozlovski |
| [KAFKA-7418](https://issues.apache.org/jira/browse/KAFKA-7418) | Add '--help' option to all available Kafka CLI commands (KIP-374) |  Major | tools | Attila Sasvári | Srinivas Reddy |
| [KAFKA-7367](https://issues.apache.org/jira/browse/KAFKA-7367) | Streams should not create state store directories unless they are needed |  Major | streams | John Roesler | Kamal Chandraprakash |
| [KAFKA-7671](https://issues.apache.org/jira/browse/KAFKA-7671) | A KStream/GlobalKTable join shouldn't reset the repartition flag |  Major | streams | Andy Bryant | Bill Bejeck |
| [KAFKA-7389](https://issues.apache.org/jira/browse/KAFKA-7389) | Upgrade spotBugs for Java 11 support |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-7235](https://issues.apache.org/jira/browse/KAFKA-7235) | Use brokerZkNodeVersion to prevent broker from processing outdated controller request |  Major | . | Dong Lin | Zhanxiang (Patrick) Huang |
| [KAFKA-7446](https://issues.apache.org/jira/browse/KAFKA-7446) | Better error message to explain the upper limit of TimeWindow |  Trivial | streams | Jacek Laskowski | Srinivas Reddy |
| [KAFKA-7687](https://issues.apache.org/jira/browse/KAFKA-7687) | Print batch level information in DumpLogSegments when deep iterating |  Major | tools | Jason Gustafson | huxihx |
| [KAFKA-7420](https://issues.apache.org/jira/browse/KAFKA-7420) | Global stores should be guarded as read-only for regular tasks |  Minor | streams | Matthias J. Sax | Nikolay Izhikov |
| [KAFKA-7673](https://issues.apache.org/jira/browse/KAFKA-7673) | Upgrade RocksDB to include fix for WinEnvIO::GetSectorSize |  Major | streams | Yanick Salzmann | Guozhang Wang |
| [KAFKA-7610](https://issues.apache.org/jira/browse/KAFKA-7610) | Detect consumer failures in initial JoinGroup |  Major | consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-7762](https://issues.apache.org/jira/browse/KAFKA-7762) | KafkaConsumer uses old API in the javadocs |  Major | . | Matthias Wessendorf | Matthias Wessendorf |
| [KAFKA-7054](https://issues.apache.org/jira/browse/KAFKA-7054) | Kafka describe command should throw topic doesn't exist exception. |  Minor | admin | Manohar Vanam | Manohar Vanam |
| [KAFKA-7734](https://issues.apache.org/jira/browse/KAFKA-7734) | Metrics tags should use LinkedHashMap to guarantee ordering |  Major | metrics | Guozhang Wang | lambdaliu |
| [KAFKA-7510](https://issues.apache.org/jira/browse/KAFKA-7510) | KStreams RecordCollectorImpl leaks data to logs on error |  Major | streams | Mr Kafka | Mr Kafka |
| [KAFKA-6928](https://issues.apache.org/jira/browse/KAFKA-6928) | StreamsPartitionAssignor is double retrying within InternalTopicManager |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-6431](https://issues.apache.org/jira/browse/KAFKA-6431) | Lock contention in Purgatory |  Minor | core, purgatory | Ying Zheng | Ying Zheng |
| [KAFKA-5994](https://issues.apache.org/jira/browse/KAFKA-5994) | Improve transparency of broker user ACL misconfigurations |  Major | security | Dustin Cote | Manikumar |
| [KAFKA-4453](https://issues.apache.org/jira/browse/KAFKA-4453) | add request prioritization |  Major | core | Onur Karaman | Mayuresh Gharat |
| [KAFKA-7461](https://issues.apache.org/jira/browse/KAFKA-7461) | Connect Values converter should have coverage of logical types |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Andrew Schofield |
| [KAFKA-7391](https://issues.apache.org/jira/browse/KAFKA-7391) | Introduce close(Duration) to Producer and AdminClient instead of close(long, TimeUnit) |  Major | admin, clients, producer | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-7738](https://issues.apache.org/jira/browse/KAFKA-7738) | Track partition leader epochs in client metadata |  Minor | . | David Arthur | David Arthur |
| [KAFKA-7829](https://issues.apache.org/jira/browse/KAFKA-7829) | Javadoc should show that AdminClient.alterReplicaLogDirs() is supported in Kafka 1.1.0 or later |  Major | . | Jun Rao | Dong Lin |
| [KAFKA-7024](https://issues.apache.org/jira/browse/KAFKA-7024) | Rocksdb state directory should be created before opening the DB |  Minor | streams | Abhishek Agarwal | Richard Yu |
| [KAFKA-5692](https://issues.apache.org/jira/browse/KAFKA-5692) | Refactor PreferredReplicaLeaderElectionCommand to use AdminClient |  Minor | admin, core | Tom Bentley | Tom Bentley |
| [KAFKA-7838](https://issues.apache.org/jira/browse/KAFKA-7838) | improve logging in Partition.maybeShrinkIsr() |  Major | . | Jun Rao | Dhruvil Shah |
| [KAFKA-7837](https://issues.apache.org/jira/browse/KAFKA-7837) | maybeShrinkIsr may not reflect OfflinePartitions immediately |  Major | . | Jun Rao | Dhruvil Shah |
| [KAFKA-4217](https://issues.apache.org/jira/browse/KAFKA-4217) | KStream.transform equivalent of flatMap |  Major | streams | Elias Levy | Bruno Cadonna |
| [KAFKA-7719](https://issues.apache.org/jira/browse/KAFKA-7719) | Improve fairness in SocketServer processors |  Major | network | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-4850](https://issues.apache.org/jira/browse/KAFKA-4850) | RocksDb cannot use Bloom Filters |  Major | streams | Eno Thereska | Bill Bejeck |
| [KAFKA-7433](https://issues.apache.org/jira/browse/KAFKA-7433) | Introduce broker options in TopicCommand to use AdminClient |  Major | admin | Viktor Somogyi-Vass | Viktor Somogyi-Vass |
| [KAFKA-7641](https://issues.apache.org/jira/browse/KAFKA-7641) | Add \`consumer.group.max.size\` to cap consumer metadata size on broker |  Major | core | Boyang Chen | Stanislav Kozlovski |
| [KAFKA-7798](https://issues.apache.org/jira/browse/KAFKA-7798) | Expose embedded client context from KafkaStreams threadMetadata |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-7804](https://issues.apache.org/jira/browse/KAFKA-7804) | Update the docs for KIP-377 |  Major | documentation | Viktor Somogyi-Vass | Viktor Somogyi-Vass |
| [KAFKA-7834](https://issues.apache.org/jira/browse/KAFKA-7834) | Extend collected logs in system test services to include heap dumps |  Major | system tests | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-7916](https://issues.apache.org/jira/browse/KAFKA-7916) | Streams store cleanup: unify wrapping |  Major | streams | John Roesler | John Roesler |
| [KAFKA-7758](https://issues.apache.org/jira/browse/KAFKA-7758) | When Naming a Repartition Topic with Aggregations Reuse Repartition Graph Node for Multiple Operations |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-7880](https://issues.apache.org/jira/browse/KAFKA-7880) | KafkaConnect should standardize worker thread name |  Minor | KafkaConnect | YeLiang | YeLiang |
| [KAFKA-8040](https://issues.apache.org/jira/browse/KAFKA-8040) | Streams needs to handle timeout in initTransactions |  Critical | streams | John Roesler | John Roesler |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5950](https://issues.apache.org/jira/browse/KAFKA-5950) | AdminClient should retry based on returned error codes |  Major | . | Ismael Juma | Andrey Dyachkov |
| [KAFKA-7476](https://issues.apache.org/jira/browse/KAFKA-7476) | SchemaProjector is not properly handling Date-based logical types |  Major | KafkaConnect | Robert Yokota | Robert Yokota |
| [KAFKA-5462](https://issues.apache.org/jira/browse/KAFKA-5462) | Add a configuration for users to specify a template for building a custom principal name |  Major | security | Koelli Mungee | Manikumar |
| [KAFKA-7532](https://issues.apache.org/jira/browse/KAFKA-7532) | Missing stringification in error message "Removed ArrayBuffer() from list of shutting down brokers. (kafka.controller.KafkaController)" |  Minor | controller | Andreas Kohn | Stanislav Kozlovski |
| [KAFKA-7561](https://issues.apache.org/jira/browse/KAFKA-7561) | Console Consumer - system test fails |  Major | . | Stanislav Kozlovski |  |
| [KAFKA-7560](https://issues.apache.org/jira/browse/KAFKA-7560) | PushHttpMetricsReporter should not convert metric value to double |  Blocker | . | Stanislav Kozlovski | Dong Lin |
| [KAFKA-7165](https://issues.apache.org/jira/browse/KAFKA-7165) | Error while creating ephemeral at /brokers/ids/BROKER\_ID |  Major | core, zkclient | Jonathan Santilli | Jonathan Santilli |
| [KAFKA-7412](https://issues.apache.org/jira/browse/KAFKA-7412) | Bug prone response from producer.send(ProducerRecord, Callback) if Kafka broker is not running |  Major | producer | Michal Turek | huxihx |
| [KAFKA-7557](https://issues.apache.org/jira/browse/KAFKA-7557) | optimize LogManager.truncateFullyAndStartAt() |  Major | . | Jun Rao | huxihx |
| [KAFKA-7518](https://issues.apache.org/jira/browse/KAFKA-7518) | FutureRecordMetadata.get deadline calculation from timeout is not using timeunit |  Major | clients | Andras Katona | Andras Katona |
| [KAFKA-7605](https://issues.apache.org/jira/browse/KAFKA-7605) | Flaky Test \`SaslMultiMechanismConsumerTest.testCoordinatorFailover\` |  Major | unit tests | Jason Gustafson | Jason Gustafson |
| [KAFKA-7616](https://issues.apache.org/jira/browse/KAFKA-7616) | MockConsumer can return ConsumerRecords objects with a non-empty map but no records |  Trivial | clients | Stig Rohde Døssing | Stig Rohde Døssing |
| [KAFKA-7536](https://issues.apache.org/jira/browse/KAFKA-7536) | TopologyTestDriver cannot pre-populate KTable or GlobalKTable |  Minor | streams | Dmitry Minkovsky | Guozhang Wang |
| [KAFKA-7620](https://issues.apache.org/jira/browse/KAFKA-7620) | ConfigProvider is broken for KafkaConnect when TTL is not null |  Major | KafkaConnect | Ye Ji | Robert Yokota |
| [KAFKA-7037](https://issues.apache.org/jira/browse/KAFKA-7037) | delete topic command replaces '+' from the topic name which leads incorrect topic deletion |  Major | . | Sandeep Nemuri | Vahid Hashemian |
| [KAFKA-7449](https://issues.apache.org/jira/browse/KAFKA-7449) | Kafka console consumer is not sending topic to deserializer |  Major | core | Mathieu Chataigner | Mathieu Chataigner |
| [KAFKA-7660](https://issues.apache.org/jira/browse/KAFKA-7660) | Stream Metrics - Memory Analysis |  Minor | metrics, streams | Patrik Kleindl | John Roesler |
| [KAFKA-7702](https://issues.apache.org/jira/browse/KAFKA-7702) | Prefixed ACLs don't work with single character prefix |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7697](https://issues.apache.org/jira/browse/KAFKA-7697) | Possible deadlock in kafka.cluster.Partition |  Blocker | . | Gian Merlino | Rajini Sivaram |
| [KAFKA-7678](https://issues.apache.org/jira/browse/KAFKA-7678) | Failed to close producer due to java.lang.NullPointerException |  Minor | streams | Jonathan Santilli | Jonathan Santilli |
| [KAFKA-7704](https://issues.apache.org/jira/browse/KAFKA-7704) | kafka.server.ReplicaFetechManager.MaxLag.Replica metric is reported incorrectly |  Major | metrics | Yu Yang | huxihx |
| [KAFKA-7709](https://issues.apache.org/jira/browse/KAFKA-7709) | ConcurrentModificationException occurs when iterating through multiple partitions in Sender.getExpiredInflightBatches |  Major | core | Mark Cho |  |
| [KAFKA-7549](https://issues.apache.org/jira/browse/KAFKA-7549) | Old ProduceRequest with zstd compression does not return error to client |  Major | compression | Magnus Edenhill | Dongjin Lee |
| [KAFKA-7443](https://issues.apache.org/jira/browse/KAFKA-7443) | OffsetOutOfRangeException in restoring state store from changelog topic when start offset of local checkpoint is smaller than that of changelog topic |  Major | streams | linyue li | linyue li |
| [KAFKA-6970](https://issues.apache.org/jira/browse/KAFKA-6970) | Kafka streams lets the user call init() and close() on a state store, when inside Processors |  Major | streams | James Cheng | Nikolay Izhikov |
| [KAFKA-7712](https://issues.apache.org/jira/browse/KAFKA-7712) | Handle exceptions from immediately connected channels in Selector |  Major | network | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-2334](https://issues.apache.org/jira/browse/KAFKA-2334) | Prevent HW from going back during leader failover |  Major | replication | Guozhang Wang | David Arthur |
| [KAFKA-7742](https://issues.apache.org/jira/browse/KAFKA-7742) | DelegationTokenCache#hmacIdCache entry is not cleared when a token is removed using removeToken(String tokenId) API. |  Major | security | Satish Duggana | Satish Duggana |
| [KAFKA-7759](https://issues.apache.org/jira/browse/KAFKA-7759) | Disable WADL output in Connect REST API |  Major | . | Oleksandr Diachenko | Oleksandr Diachenko |
| [KAFKA-3832](https://issues.apache.org/jira/browse/KAFKA-3832) | Kafka Connect's JSON Converter never outputs a null value |  Major | KafkaConnect | Randall Hauch | Renato Mefi |
| [KAFKA-7752](https://issues.apache.org/jira/browse/KAFKA-7752) | zookeeper-security-migration.sh does not remove ACL on kafka-acl-extended |  Major | tools | Attila Sasvári | Attila Sasvári |
| [KAFKA-7110](https://issues.apache.org/jira/browse/KAFKA-7110) | Windowed changelog keys not deserialized properly by TimeWindowedSerde |  Major | streams | Shawn Nguyen | Shawn Nguyen |
| [KAFKA-7657](https://issues.apache.org/jira/browse/KAFKA-7657) | Invalid reporting of stream state in Kafka streams application |  Major | streams | Thomas Crowley | Guozhang Wang |
| [KAFKA-7181](https://issues.apache.org/jira/browse/KAFKA-7181) | Kafka Streams State stuck in rebalancing after one of the StreamThread encounters IllegalStateException |  Major | streams | Romil Kumar Vasani |  |
| [KAFKA-7768](https://issues.apache.org/jira/browse/KAFKA-7768) | Java doc link 404 |  Critical | documentation | Slim Ouertani |  |
| [KAFKA-7755](https://issues.apache.org/jira/browse/KAFKA-7755) | Kubernetes - Kafka clients are resolving DNS entries only one time |  Blocker | clients | Loïc Monney |  |
| [KAFKA-4468](https://issues.apache.org/jira/browse/KAFKA-4468) | Correctly calculate the window end timestamp after read from state stores |  Major | streams | Guozhang Wang | Richard Yu |
| [KAFKA-7253](https://issues.apache.org/jira/browse/KAFKA-7253) | The connector type responded by worker is always null when creating connector |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-7051](https://issues.apache.org/jira/browse/KAFKA-7051) | Improve the efficiency of the ReplicaManager when there are many partitions |  Major | replication | Colin McCabe | Colin McCabe |
| [KAFKA-6833](https://issues.apache.org/jira/browse/KAFKA-6833) | KafkaProducer throws "Invalid partition given with record" exception |  Minor | . | Arjun Satish | Bob Barrett |
| [KAFKA-7786](https://issues.apache.org/jira/browse/KAFKA-7786) | Fast update of leader epoch may stall partition fetching due to FENCED\_LEADER\_EPOCH |  Critical | . | Anna Povzner | Anna Povzner |
| [KAFKA-7781](https://issues.apache.org/jira/browse/KAFKA-7781) | Add validation check for Topic retention.ms property |  Major | . | Kamal Chandraprakash | Kamal Chandraprakash |
| [KAFKA-7808](https://issues.apache.org/jira/browse/KAFKA-7808) | AdminClient#describeTopics should not throw InvalidTopicException if topic name is not found |  Major | admin, core | Guozhang Wang | Dongjin Lee |
| [KAFKA-7789](https://issues.apache.org/jira/browse/KAFKA-7789) | SSL-related unit tests hang when run on Fedora 29 |  Minor | . | Tom Bentley | Tom Bentley |
| [KAFKA-5117](https://issues.apache.org/jira/browse/KAFKA-5117) | Kafka Connect REST endpoints reveal Password typed values |  Major | KafkaConnect | Thomas Holmes | Chris Egerton |
| [KAFKA-7741](https://issues.apache.org/jira/browse/KAFKA-7741) | Bad dependency via SBT |  Major | streams | sacha barber | John Roesler |
| [KAFKA-7692](https://issues.apache.org/jira/browse/KAFKA-7692) | updateFirstUnstableOffset NPE due to sequenceId overflow in ProducerStateManager.append |  Major | core | Ming Liu |  |
| [KAFKA-7693](https://issues.apache.org/jira/browse/KAFKA-7693) | "IllegalArgumentException: Invalid negative sequence number used" in Kafka Client |  Major | clients | Ming Liu |  |
| [KAFKA-6478](https://issues.apache.org/jira/browse/KAFKA-6478) | kafka-run-class.bat fails if CLASSPATH contains spaces |  Major | tools | Bert Roos |  |
| [KAFKA-7840](https://issues.apache.org/jira/browse/KAFKA-7840) | Documentation for cleanup.policy is out of date |  Trivial | documentation | Josh Wiley | Dongjin Lee |
| [KAFKA-7873](https://issues.apache.org/jira/browse/KAFKA-7873) | KafkaBasedLog's consumer should always seek to beginning when starting |  Critical | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-7890](https://issues.apache.org/jira/browse/KAFKA-7890) | Invalidate ClusterConnectionState cache for a broker if the hostname of the broker changes. |  Major | network | Mark Cho | Rajini Sivaram |
| [KAFKA-7902](https://issues.apache.org/jira/browse/KAFKA-7902) | SASL/OAUTHBEARER can become unable to connect: javax.security.sasl.SaslException: Unable to find OAuth Bearer token in Subject's private credentials (size=2) |  Major | clients | Ron Dagostino | Ron Dagostino |
| [KAFKA-7915](https://issues.apache.org/jira/browse/KAFKA-7915) | SASL authentication failures may return sensitive data to client |  Critical | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7897](https://issues.apache.org/jira/browse/KAFKA-7897) | Invalid use of epoch cache with old message format versions |  Blocker | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-7884](https://issues.apache.org/jira/browse/KAFKA-7884) | Docs for message.format.version and log.message.format.version show invalid (corrupt?) "valid values" |  Major | documentation | James Cheng | Dongjin Lee |
| [KAFKA-7935](https://issues.apache.org/jira/browse/KAFKA-7935) | UNSUPPORTED\_COMPRESSION\_TYPE if ReplicaManager.getLogConfig returns None |  Critical | core | Ismael Juma | Ismael Juma |
| [KAFKA-7909](https://issues.apache.org/jira/browse/KAFKA-7909) | Ensure timely rebalance completion after pending members rejoin or fail |  Blocker | consumer, core | Arjun Satish | Arjun Satish |
| [KAFKA-7920](https://issues.apache.org/jira/browse/KAFKA-7920) | Do not permit zstd use until inter.broker.protocol.version is updated to 2.1 |  Blocker | core | Jason Gustafson | Dongjin Lee |
| [KAFKA-7945](https://issues.apache.org/jira/browse/KAFKA-7945) | ExpiringCredentialRefreshingLogin - timeout value is negative |  Major | . | Denis Ogun | Ron Dagostino |
| [KAFKA-7938](https://issues.apache.org/jira/browse/KAFKA-7938) | Flaky Test DeleteConsumerGroupsTest#testDeleteCmdWithShortInitialization |  Critical | admin, unit tests | Matthias J. Sax | Gwen Shapira |
| [KAFKA-7999](https://issues.apache.org/jira/browse/KAFKA-7999) | Flaky Test ExampleConnectIntegrationTest#testProduceConsumeConnector |  Critical | KafkaConnect, unit tests | Matthias J. Sax | Arjun Satish |
| [KAFKA-8012](https://issues.apache.org/jira/browse/KAFKA-8012) | NullPointerException while truncating at high watermark can crash replica fetcher thread |  Blocker | core | Colin Hicks | Colin Hicks |
| [KAFKA-7312](https://issues.apache.org/jira/browse/KAFKA-7312) | Transient failure in kafka.api.AdminClientIntegrationTest.testMinimumRequestTimeouts |  Critical | admin, unit tests | Guozhang Wang | Manikumar |
| [KAFKA-8002](https://issues.apache.org/jira/browse/KAFKA-8002) | Replica reassignment to new log dir may not complete if future and current replicas segment files have different base offsets |  Critical | core | Anna Povzner | Bob Barrett |
| [KAFKA-7979](https://issues.apache.org/jira/browse/KAFKA-7979) | Flaky Test PartitionTest#testDelayedFetchAfterAppendRecords |  Critical | core, unit tests | Matthias J. Sax | Rajini Sivaram |
| [KAFKA-8038](https://issues.apache.org/jira/browse/KAFKA-8038) | Flaky Test SslTransportLayerTest#testCloseSsl |  Critical | core, unit tests | Matthias J. Sax | Rajini Sivaram |
| [KAFKA-8018](https://issues.apache.org/jira/browse/KAFKA-8018) | Flaky Test SaslSslAdminClientIntegrationTest#testLegacyAclOpsNeverAffectOrReturnPrefixed |  Critical | core, unit tests | Matthias J. Sax | Jun Rao |
| [KAFKA-8039](https://issues.apache.org/jira/browse/KAFKA-8039) | Flaky Test SaslAuthenticatorTest#testCannotReauthenticateAgainFasterThanOneSecond |  Critical | core, unit tests | Matthias J. Sax | Rajini Sivaram |
| [KAFKA-8022](https://issues.apache.org/jira/browse/KAFKA-8022) | Flaky Test RequestQuotaTest#testExemptRequestTime |  Critical | core, unit tests | Matthias J. Sax | Jun Rao |
| [KAFKA-7977](https://issues.apache.org/jira/browse/KAFKA-7977) | Flaky Test ReassignPartitionsClusterTest#shouldOnlyThrottleMovingReplicas |  Critical | admin, unit tests | Matthias J. Sax |  |
| [KAFKA-8061](https://issues.apache.org/jira/browse/KAFKA-8061) | Handle concurrent ProducerId reset and call to Sender thread shutdown |  Major | . | Manikumar | Manikumar |
| [KAFKA-8070](https://issues.apache.org/jira/browse/KAFKA-8070) | System test ConsumerGroupCommandTest fails intermittently with SSL |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7980](https://issues.apache.org/jira/browse/KAFKA-7980) | Flaky Test SocketServerTest#testConnectionRateLimit |  Critical | core, unit tests | Matthias J. Sax | Rajini Sivaram |
| [KAFKA-8069](https://issues.apache.org/jira/browse/KAFKA-8069) | Committed offsets get cleaned up right after the coordinator loading them back from \_\_consumer\_offsets in broker with old inter-broker protocol version (\< 2.2) |  Blocker | . | Zhanxiang (Patrick) Huang | Zhanxiang (Patrick) Huang |
| [KAFKA-8065](https://issues.apache.org/jira/browse/KAFKA-8065) | Forwarding modified timestamps does not reset timestamp correctly |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-7288](https://issues.apache.org/jira/browse/KAFKA-7288) | Transient failure in SslSelectorTest.testCloseConnectionInClosingState |  Critical | unit tests | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8072](https://issues.apache.org/jira/browse/KAFKA-8072) | Transient failure in SslSelectorTest.testCloseOldestConnectionWithMultipleStagedReceives |  Critical | unit tests | Bill Bejeck |  |
| [KAFKA-8166](https://issues.apache.org/jira/browse/KAFKA-8166) | Kafka 2.2 Javadoc broken |  Major | documentation | Sachin NS | Guozhang Wang |
| [KAFKA-2617](https://issues.apache.org/jira/browse/KAFKA-2617) | Move protocol field default values to Protocol |  Minor | . | Guozhang Wang | Jakub Nowak |
| [KAFKA-8208](https://issues.apache.org/jira/browse/KAFKA-8208) | Broken link for out-of-order data in KStreams Core Concepts doc |  Minor | documentation | Michael Drogalis | Bill Bejeck |
| [KAFKA-8210](https://issues.apache.org/jira/browse/KAFKA-8210) | Missing link for KStreams in Streams DSL docs |  Minor | documentation | Michael Drogalis | Bill Bejeck |
| [KAFKA-8209](https://issues.apache.org/jira/browse/KAFKA-8209) | Wrong link for KStreams DSL in Core Concepts doc |  Minor | documentation | Michael Drogalis | Bill Bejeck |
| [KAFKA-8198](https://issues.apache.org/jira/browse/KAFKA-8198) | KStreams testing docs use non-existent method "pipe" |  Minor | documentation, streams | Michael Drogalis | Slim Ouertani |
| [KAFKA-8011](https://issues.apache.org/jira/browse/KAFKA-8011) | Flaky Test RegexSourceIntegrationTest#testRegexMatchesTopicsAWhenCreated |  Blocker | streams | Bill Bejeck | Matthias J. Sax |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7799](https://issues.apache.org/jira/browse/KAFKA-7799) | Fix flaky test RestServerTest.testCORSEnabled |  Major | KafkaConnect | Jason Gustafson | Jason Gustafson |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7612](https://issues.apache.org/jira/browse/KAFKA-7612) | Fix javac warnings and enable warnings as errors |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-7439](https://issues.apache.org/jira/browse/KAFKA-7439) | Replace EasyMock and PowerMock with Mockito in clients module |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-4544](https://issues.apache.org/jira/browse/KAFKA-4544) | Add system tests for delegation token based authentication |  Major | security | Ashish Singh | Attila Sasvári |
| [KAFKA-1120](https://issues.apache.org/jira/browse/KAFKA-1120) | Controller could miss a broker state change |  Major | core | Jun Rao | Zhanxiang (Patrick) Huang |
| [KAFKA-6036](https://issues.apache.org/jira/browse/KAFKA-6036) | Enable logical materialization to physical materialization |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-5503](https://issues.apache.org/jira/browse/KAFKA-5503) | Idempotent producer ignores shutdown while fetching ProducerId |  Major | clients, core, producer | Jason Gustafson | Evgeny Veretennikov |
| [KAFKA-7824](https://issues.apache.org/jira/browse/KAFKA-7824) | Require member.id for initial join group request |  Major | consumer | Boyang Chen | Boyang Chen |
| [KAFKA-5272](https://issues.apache.org/jira/browse/KAFKA-5272) | Improve validation for Alter Configs (KIP-133) |  Major | config | Ismael Juma |  |
| [KAFKA-7651](https://issues.apache.org/jira/browse/KAFKA-7651) | Flaky test SaslSslAdminClientIntegrationTest.testMinimumRequestTimeouts |  Critical | core, unit tests | Dong Lin | Manikumar |
| [KAFKA-6029](https://issues.apache.org/jira/browse/KAFKA-6029) | Controller should wait for the leader migration to finish before ack a ControlledShutdownRequest |  Major | controller, core | Jiangjie Qin | Zhanxiang (Patrick) Huang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7431](https://issues.apache.org/jira/browse/KAFKA-7431) | Clean up connect unit tests code |  Minor | . | Srinivas Reddy | Srinivas Reddy |
| [KAFKA-7259](https://issues.apache.org/jira/browse/KAFKA-7259) | Remove deprecated ZKUtils usage from ZkSecurityMigrator |  Minor | core | Manikumar | Manikumar |
| [KAFKA-7551](https://issues.apache.org/jira/browse/KAFKA-7551) | Refactor to create both producer & consumer in Worker |  Minor | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |
| [KAFKA-7617](https://issues.apache.org/jira/browse/KAFKA-7617) | Document security primitives |  Minor | . | Viktor Somogyi-Vass | Viktor Somogyi-Vass |
| [KAFKA-7503](https://issues.apache.org/jira/browse/KAFKA-7503) | Integration Test Framework for Connect |  Minor | KafkaConnect | Arjun Satish | Arjun Satish |


