
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

## Release 0.10.2.0 - 2017-02-21



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4233](https://issues.apache.org/jira/browse/KAFKA-4233) | StateDirectory fails to create directory if any parent directory does not exist |  Major | streams | Ryan Worsley | Damian Guy |
| [KAFKA-4360](https://issues.apache.org/jira/browse/KAFKA-4360) | Controller may deadLock when autoLeaderRebalance encounter zk expired |  Major | controller | Json Tu |  |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4259](https://issues.apache.org/jira/browse/KAFKA-4259) | Enable JAAS configuration for Kafka clients without a config file |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-3452](https://issues.apache.org/jira/browse/KAFKA-3452) | Support session windows |  Major | streams | Guozhang Wang | Damian Guy |
| [KAFKA-3537](https://issues.apache.org/jira/browse/KAFKA-3537) | Provide access to low-level Metrics in ProcessorContext |  Minor | streams | Michael Coon | Eno Thereska |
| [KAFKA-4490](https://issues.apache.org/jira/browse/KAFKA-4490) | Add Global Table support to Kafka Streams |  Major | streams | Damian Guy | Damian Guy |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4010](https://issues.apache.org/jira/browse/KAFKA-4010) | ConfigDef.toRst() should create sections for each group |  Minor | . | Shikhar Bhushan | Rekha Joshi |
| [KAFKA-4319](https://issues.apache.org/jira/browse/KAFKA-4319) | AbstractFetcherManager shutdown speedup |  Major | . | Alexey Ozeritskiy |  |
| [KAFKA-3144](https://issues.apache.org/jira/browse/KAFKA-3144) | report members with no assigned partitions in ConsumerGroupCommand |  Major | . | Jun Rao | Vahid Hashemian |
| [KAFKA-4331](https://issues.apache.org/jira/browse/KAFKA-4331) | Kafka Streams resetter is slow because it joins the same group for each topic |  Major | streams | Roger Hoover | Matthias J. Sax |
| [KAFKA-4301](https://issues.apache.org/jira/browse/KAFKA-4301) | Include some SSL/TLS logging to avoid need need for javax debug util every time an issue arises |  Major | . | Ryan P | Rajini Sivaram |
| [KAFKA-4326](https://issues.apache.org/jira/browse/KAFKA-4326) | Refactor LogCleaner to remove duplicate log copying logic |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-3559](https://issues.apache.org/jira/browse/KAFKA-3559) | Task creation time taking too long in rebalance callback |  Major | streams | Guozhang Wang | Eno Thereska |
| [KAFKA-4302](https://issues.apache.org/jira/browse/KAFKA-4302) | Simplify KTableSource |  Minor | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-4379](https://issues.apache.org/jira/browse/KAFKA-4379) | Remove caching of dirty and removed keys from StoreChangeLogger |  Minor | streams | Damian Guy | Damian Guy |
| [KAFKA-3829](https://issues.apache.org/jira/browse/KAFKA-3829) | Warn that kafka-connect group.id must not conflict with connector names |  Major | KafkaConnect | Barry Kaplan | Jason Gustafson |
| [KAFKA-3462](https://issues.apache.org/jira/browse/KAFKA-3462) | Allow SinkTasks to disable consumer offset commit |  Minor | KafkaConnect | Liquan Pei | Liquan Pei |
| [KAFKA-4359](https://issues.apache.org/jira/browse/KAFKA-4359) | Streams integration tests should not use commit interval of 1 |  Major | streams | Eno Thereska | Eno Thereska |
| [KAFKA-4376](https://issues.apache.org/jira/browse/KAFKA-4376) | Add scala 2.12 support |  Major | build | Bernard Leach | Bernard Leach |
| [KAFKA-4211](https://issues.apache.org/jira/browse/KAFKA-4211) | Change system tests to use the new consumer by default |  Major | . | Ismael Juma | Vahid Hashemian |
| [KAFKA-4417](https://issues.apache.org/jira/browse/KAFKA-4417) | Update build dependencies for 0.10.2 cycle |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-4420](https://issues.apache.org/jira/browse/KAFKA-4420) | Group StopReplicaRequests for partitions on the same broker into one StopReplicaRequest |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-4397](https://issues.apache.org/jira/browse/KAFKA-4397) | Refactor Connect backing stores for thread-safety |  Minor | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-4250](https://issues.apache.org/jira/browse/KAFKA-4250) | make ProducerRecord and ConsumerRecord extensible |  Major | core | radai rosenblatt | radai rosenblatt |
| [KAFKA-3637](https://issues.apache.org/jira/browse/KAFKA-3637) | Add method that checks if streams are initialised |  Major | streams | Eno Thereska | Eno Thereska |
| [KAFKA-3008](https://issues.apache.org/jira/browse/KAFKA-3008) | Connect should parallelize task start/stop |  Minor | KafkaConnect | Ewen Cheslack-Postava | Konstantine Karantasis |
| [KAFKA-4161](https://issues.apache.org/jira/browse/KAFKA-4161) | Decouple flush and offset commits |  Major | KafkaConnect | Shikhar Bhushan | Shikhar Bhushan |
| [KAFKA-2247](https://issues.apache.org/jira/browse/KAFKA-2247) | Merge kafka.utils.Time and kafka.common.utils.Time |  Minor | . | Aditya Auradkar | Ismael Juma |
| [KAFKA-4458](https://issues.apache.org/jira/browse/KAFKA-4458) | Add per partition metrics for in-sync and assigned replica count |  Major | metrics | Xavier Léauté | Xavier Léauté |
| [KAFKA-4445](https://issues.apache.org/jira/browse/KAFKA-4445) | PreferredLeaderElectionCommand should query zk only once per topic |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-4272](https://issues.apache.org/jira/browse/KAFKA-4272) | Kafka Connect batch scripts are missing under \`bin/windows/\` |  Major | . | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-4393](https://issues.apache.org/jira/browse/KAFKA-4393) | Improve invalid/negative TS handling |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-4140](https://issues.apache.org/jira/browse/KAFKA-4140) | Update system tests to allow running tests in parallel |  Major | . | Geoff Anderson | Geoff Anderson |
| [KAFKA-4390](https://issues.apache.org/jira/browse/KAFKA-4390) | Replace MessageSet usage with client-side equivalents |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-4447](https://issues.apache.org/jira/browse/KAFKA-4447) | Controller resigned but it also acts as a controller for a long time |  Major | controller | Json Tu |  |
| [KAFKA-4500](https://issues.apache.org/jira/browse/KAFKA-4500) | Kafka Code Improvements |  Minor | clients | Rekha Joshi | Rekha Joshi |
| [KAFKA-3284](https://issues.apache.org/jira/browse/KAFKA-3284) | Consider removing beta label in security documentation |  Major | security | Ismael Juma | Ismael Juma |
| [KAFKA-4404](https://issues.apache.org/jira/browse/KAFKA-4404) | Add knowledge of sign to numeric schema types |  Minor | KafkaConnect | Andy Bryant | Ewen Cheslack-Postava |
| [KAFKA-4429](https://issues.apache.org/jira/browse/KAFKA-4429) | records-lag should be zero if FetchResponse is empty |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-4261](https://issues.apache.org/jira/browse/KAFKA-4261) | Provide debug option in vagrant-up.sh |  Minor | system tests | Flavio Junqueira | Flavio Junqueira |
| [KAFKA-4584](https://issues.apache.org/jira/browse/KAFKA-4584) | Fail the 'kafka-configs' command if the config to be removed does not exist |  Minor | . | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-3304](https://issues.apache.org/jira/browse/KAFKA-3304) | KIP-35 - Retrieving protocol version |  Critical | . | Ashish Singh | Ashish Singh |
| [KAFKA-4402](https://issues.apache.org/jira/browse/KAFKA-4402) | Kafka Producer's DefaultPartitioner is actually not round robin as said in the code comments "If no partition or key is present choose a partition in a round-robin fashion" |  Minor | . | Jun Yao |  |
| [KAFKA-3751](https://issues.apache.org/jira/browse/KAFKA-3751) | Add support for SASL/SCRAM mechanisms |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-3715](https://issues.apache.org/jira/browse/KAFKA-3715) | Higher granularity streams metrics |  Major | streams | Jeff Klukas | aarti gupta |
| [KAFKA-4426](https://issues.apache.org/jira/browse/KAFKA-4426) | Add consumer.close(timeout, unit) for graceful close with timeout |  Major | consumer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-3701](https://issues.apache.org/jira/browse/KAFKA-3701) | Expose KafkaStreams metrics in public API |  Minor | streams | Jeff Klukas | Eno Thereska |
| [KAFKA-4581](https://issues.apache.org/jira/browse/KAFKA-4581) | Fail gracefully if multiple login modules are specified in sasl.jaas.config |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-3857](https://issues.apache.org/jira/browse/KAFKA-3857) | Additional log cleaner metrics |  Major | . | Kiran Pillarisetty |  |
| [KAFKA-4591](https://issues.apache.org/jira/browse/KAFKA-4591) | Create Topic Policy |  Major | . | Ismael Juma |  |
| [KAFKA-4568](https://issues.apache.org/jira/browse/KAFKA-4568) | Simplify multiple mechanism support in SaslTestHarness |  Minor | unit tests | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-4614](https://issues.apache.org/jira/browse/KAFKA-4614) | Long GC pause harming broker performance which is caused by mmap objects created for OffsetIndex |  Major | core | Yuto Kawamura | Yuto Kawamura |
| [KAFKA-4432](https://issues.apache.org/jira/browse/KAFKA-4432) | ProducerPerformance.java : Add support to supply custom message payloads. |  Minor | . | Sandesh Karkera |  |
| [KAFKA-4688](https://issues.apache.org/jira/browse/KAFKA-4688) | Kafka 0.10.1.1 should be available in system tests |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4684](https://issues.apache.org/jira/browse/KAFKA-4684) | Kafka does not offer kafka-configs.bat on Windows box |  Minor | tools | huxi | huxi |
| [KAFKA-3209](https://issues.apache.org/jira/browse/KAFKA-3209) | Support single message transforms in Kafka Connect |  Blocker | KafkaConnect | Neha Narkhede | Ewen Cheslack-Postava |
| [KAFKA-4613](https://issues.apache.org/jira/browse/KAFKA-4613) | Treat null-key records the same way for joins and aggreations |  Major | streams | Matthias J. Sax | Jeyhun Karimov |
| [KAFKA-4462](https://issues.apache.org/jira/browse/KAFKA-4462) | Improved Kafka Client Compatibility Policy |  Major | clients | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4182](https://issues.apache.org/jira/browse/KAFKA-4182) | Move the change logger out of RocksDB stores |  Major | streams | Damian Guy |  |
| [KAFKA-4727](https://issues.apache.org/jira/browse/KAFKA-4727) | A Production server configuration needs to be updated |  Major | . | Jun Rao | huxi |
| [KAFKA-4734](https://issues.apache.org/jira/browse/KAFKA-4734) | timeindex on old segments not trimmed to actual size |  Major | . | Jun Rao | Jiangjie Qin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4193](https://issues.apache.org/jira/browse/KAFKA-4193) | FetcherTest fails intermittently |  Major | . | Ben Stopford | Ben Stopford |
| [KAFKA-3782](https://issues.apache.org/jira/browse/KAFKA-3782) | Transient failure with kafkatest.tests.connect.connect\_distributed\_test.ConnectDistributedTest.test\_bounce.clean=True |  Minor | KafkaConnect | Liquan Pei | Jason Gustafson |
| [KAFKA-3590](https://issues.apache.org/jira/browse/KAFKA-3590) | KafkaConsumer fails with "Messages are rejected since there are fewer in-sync replicas than required." when polling |  Major | consumer | Sergey Alaev | Jason Gustafson |
| [KAFKA-4241](https://issues.apache.org/jira/browse/KAFKA-4241) | StreamsConfig doesn't pass through custom consumer and producer properties to ConsumerConfig and ProducerConfig |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4251](https://issues.apache.org/jira/browse/KAFKA-4251) | Test driver not launching in Vagrant 1.8.6 |  Major | system tests | Xavier Léauté |  |
| [KAFKA-4176](https://issues.apache.org/jira/browse/KAFKA-4176) | Node stopped receiving heartbeat responses once another node started within the same group |  Major | consumer | Marek Svitok | Guozhang Wang |
| [KAFKA-4253](https://issues.apache.org/jira/browse/KAFKA-4253) | Fix Kafka Stream thread shutting down process ordering |  Major | streams | Guozhang Wang | Damian Guy |
| [KAFKA-3175](https://issues.apache.org/jira/browse/KAFKA-3175) | topic not accessible after deletion even when delete.topic.enable is disabled |  Major | core | Jun Rao | Mayuresh Gharat |
| [KAFKA-4290](https://issues.apache.org/jira/browse/KAFKA-4290) | High CPU caused by timeout overflow in WorkerCoordinator |  Blocker | KafkaConnect | Jason Gustafson | Jason Gustafson |
| [KAFKA-4283](https://issues.apache.org/jira/browse/KAFKA-4283) | records deleted from CachingKeyValueStore still appear in range and all queries |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4289](https://issues.apache.org/jira/browse/KAFKA-4289) | CPU wasted on reflection calls initializing short-lived loggers |  Major | . | radai rosenblatt | radai rosenblatt |
| [KAFKA-4275](https://issues.apache.org/jira/browse/KAFKA-4275) | Check of State-Store-assignment to Processor-Nodes is not enabled |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-4312](https://issues.apache.org/jira/browse/KAFKA-4312) | void KTableImpl.writeAsText(String filePath) throws NullPointerException when filePath is empty String |  Minor | streams | Seweryn Habdank-Wojewodzki | Bill Bejeck |
| [KAFKA-4269](https://issues.apache.org/jira/browse/KAFKA-4269) | Multiple KStream instances with at least one Regex source causes NPE when using multiple consumers |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-4313](https://issues.apache.org/jira/browse/KAFKA-4313) | ISRs may thrash when replication quota is enabled |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-4001](https://issues.apache.org/jira/browse/KAFKA-4001) | Improve Kafka Streams Join Semantics (KIP-77) |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-4309](https://issues.apache.org/jira/browse/KAFKA-4309) | Allow "pluggable" properties in KafkaService in System Tests |  Major | . | Ben Stopford |  |
| [KAFKA-4296](https://issues.apache.org/jira/browse/KAFKA-4296) | LogCleaner CleanerStats swap logic seems incorrect |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-4334](https://issues.apache.org/jira/browse/KAFKA-4334) | HashCode in SinkRecord not handling null timestamp, checks on value |  Major | KafkaConnect | Andrew Stevenson | Ewen Cheslack-Postava |
| [KAFKA-4339](https://issues.apache.org/jira/browse/KAFKA-4339) | Failing ConsumerGroupCommand System Tests |  Major | system tests | Jason Gustafson | Vahid Hashemian |
| [KAFKA-4349](https://issues.apache.org/jira/browse/KAFKA-4349) | Consumer group describe exception when group state is PreparingRebalance |  Major | . | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-4117](https://issues.apache.org/jira/browse/KAFKA-4117) | Cleanup StreamPartitionAssignor behavior |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-4361](https://issues.apache.org/jira/browse/KAFKA-4361) | Streams does not respect user configs for "default" params |  Major | streams | Roger Hoover | Damian Guy |
| [KAFKA-4357](https://issues.apache.org/jira/browse/KAFKA-4357) | Consumer group describe exception when there is no active member (old consumer) |  Major | . | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-4024](https://issues.apache.org/jira/browse/KAFKA-4024) | First metadata update always take retry.backoff.ms milliseconds to complete |  Major | clients | Yuto Kawamura | Yuto Kawamura |
| [KAFKA-4372](https://issues.apache.org/jira/browse/KAFKA-4372) | Kafka Connect REST API does not handle DELETE of connector with slashes in their names |  Major | KafkaConnect | Olivier Girardot | Ewen Cheslack-Postava |
| [KAFKA-4284](https://issues.apache.org/jira/browse/KAFKA-4284) | Partitioner never closed by producer |  Minor | producer | Theo Hultberg |  |
| [KAFKA-4311](https://issues.apache.org/jira/browse/KAFKA-4311) | Multi layer cache eviction causes forwarding to incorrect ProcessorNode |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4364](https://issues.apache.org/jira/browse/KAFKA-4364) | Sink tasks expose secrets in DEBUG logging |  Major | KafkaConnect | Ryan P | Ryan P |
| [KAFKA-4081](https://issues.apache.org/jira/browse/KAFKA-4081) | Consumer API consumer new interface commitSyn does not verify the validity of offset |  Major | clients | lifeng | Mickael Maison |
| [KAFKA-4366](https://issues.apache.org/jira/browse/KAFKA-4366) | KafkaStreams.close() blocks indefinitely |  Major | streams | Michal Borowiecki | Damian Guy |
| [KAFKA-3825](https://issues.apache.org/jira/browse/KAFKA-3825) | Allow users to specify different types of state stores in Streams DSL |  Major | streams | Guozhang Wang | Jeyhun Karimov |
| [KAFKA-3703](https://issues.apache.org/jira/browse/KAFKA-3703) | Handle close gracefully for consumers and producers with acks=0 |  Major | clients | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-4355](https://issues.apache.org/jira/browse/KAFKA-4355) | StreamThread intermittently dies with "Topic not found during partition assignment" when broker restarted |  Major | streams | Michal Borowiecki | Eno Thereska |
| [KAFKA-4395](https://issues.apache.org/jira/browse/KAFKA-4395) | KafkaConfig and LogConfig should not have static initialization order dependencies |  Major | . | Sumant Tambe | Sumant Tambe |
| [KAFKA-4384](https://issues.apache.org/jira/browse/KAFKA-4384) | ReplicaFetcherThread stopped after ReplicaFetcherThread received a corrupted message |  Major | core | Jun He | Jun He |
| [KAFKA-4427](https://issues.apache.org/jira/browse/KAFKA-4427) | Skip topicGroups with no tasks |  Major | streams | Eno Thereska | Eno Thereska |
| [KAFKA-4443](https://issues.apache.org/jira/browse/KAFKA-4443) | Controller should send UpdateMetadataRequest prior to LeaderAndIsrRequest during failover |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-4415](https://issues.apache.org/jira/browse/KAFKA-4415) | Reduce time to create and send MetadataUpdateRequest |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-4403](https://issues.apache.org/jira/browse/KAFKA-4403) | Update KafkaBasedLog to use new endOffsets consumer API |  Minor | KafkaConnect | Ewen Cheslack-Postava | Balint Molnar |
| [KAFKA-4387](https://issues.apache.org/jira/browse/KAFKA-4387) | KafkaConsumer will enter an infinite loop if the polling thread is interrupted, and either commitSync or committed is called |  Major | clients | Stig Rohde Døssing | Stig Rohde Døssing |
| [KAFKA-4271](https://issues.apache.org/jira/browse/KAFKA-4271) | The console consumer fails on Windows with new consumer is used |  Major | . | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-4438](https://issues.apache.org/jira/browse/KAFKA-4438) | BACKPORT - Add scala 2.12 support |  Major | build | Bernard Leach | Bernard Leach |
| [KAFKA-4399](https://issues.apache.org/jira/browse/KAFKA-4399) | Deadlock between cleanupGroupMetadata and offset commit |  Blocker | . | Alexey Ozeritskiy | Alexey Ozeritskiy |
| [KAFKA-4483](https://issues.apache.org/jira/browse/KAFKA-4483) | NPE in \`Log\` constructor if log level is INFO or finer |  Blocker | . | Vahid Hashemian | Ismael Juma |
| [KAFKA-3994](https://issues.apache.org/jira/browse/KAFKA-3994) | Deadlock between consumer heartbeat expiration and offset commit. |  Critical | core | Jiangjie Qin | Jason Gustafson |
| [KAFKA-4472](https://issues.apache.org/jira/browse/KAFKA-4472) | offsetRetentionMs miscalculated in GroupCoordinator |  Major | . | Jason Aliyetti | Kim Christensen |
| [KAFKA-4488](https://issues.apache.org/jira/browse/KAFKA-4488) | UnsupportedOperationException during initialization of StandbyTask |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4306](https://issues.apache.org/jira/browse/KAFKA-4306) | Connect workers won't shut down if brokers are not available |  Major | KafkaConnect | Gwen Shapira | Konstantine Karantasis |
| [KAFKA-4154](https://issues.apache.org/jira/browse/KAFKA-4154) | Kafka Connect fails to shutdown if it has not completed startup |  Major | KafkaConnect | Shikhar Bhushan | Konstantine Karantasis |
| [KAFKA-4392](https://issues.apache.org/jira/browse/KAFKA-4392) | Failed to lock the state directory due to an unexpected exception |  Major | streams | Ara Ebrahimi | Guozhang Wang |
| [KAFKA-4286](https://issues.apache.org/jira/browse/KAFKA-4286) | metric reporter may hit NullPointerException during shutdown |  Major | core | Jun Rao | Xavier Léauté |
| [KAFKA-4492](https://issues.apache.org/jira/browse/KAFKA-4492) | java.lang.IllegalStateException: Attempting to put a clean entry for key... into NamedCache |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4375](https://issues.apache.org/jira/browse/KAFKA-4375) | Kafka consumer may swallow some interrupts meant for the calling thread |  Major | clients | Stig Rohde Døssing | Stig Rohde Døssing |
| [KAFKA-4000](https://issues.apache.org/jira/browse/KAFKA-4000) | Consumer per-topic metrics do not aggregate partitions from the same topic |  Minor | consumer | Jason Gustafson | Vahid Hashemian |
| [KAFKA-4486](https://issues.apache.org/jira/browse/KAFKA-4486) | Kafka Streams - exception in process still commits offsets |  Major | streams | Joel Lundell | Eno Thereska |
| [KAFKA-4476](https://issues.apache.org/jira/browse/KAFKA-4476) | Kafka Streams gets stuck if metadata is missing |  Critical | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-4510](https://issues.apache.org/jira/browse/KAFKA-4510) | StreamThread must finish rebalance in state PENDING\_SHUTDOWN |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-4431](https://issues.apache.org/jira/browse/KAFKA-4431) | HeartbeatThread should be a daemon thread |  Major | clients | David Judd | Rajini Sivaram |
| [KAFKA-4405](https://issues.apache.org/jira/browse/KAFKA-4405) | Avoid calling pollNoWakeup unnecessarily |  Major | . | ysysberserk | Eno Thereska |
| [KAFKA-4516](https://issues.apache.org/jira/browse/KAFKA-4516) | When a CachingStateStore is closed it should clear its associated NamedCache. Subsequent queries should throw InvalidStateStoreException |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4509](https://issues.apache.org/jira/browse/KAFKA-4509) | Task reusage on rebalance fails for threads on same host |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-4532](https://issues.apache.org/jira/browse/KAFKA-4532) | StateStores can be connected to the wrong source topic resulting in incorrect metadata returned from IQ |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4451](https://issues.apache.org/jira/browse/KAFKA-4451) | Recovering empty replica yields negative offsets in index of compact partitions |  Major | . | Michael Schiff |  |
| [KAFKA-4537](https://issues.apache.org/jira/browse/KAFKA-4537) | StreamPartitionAssignor incorrectly adds standby partitions to the partitionsByHostState map |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4521](https://issues.apache.org/jira/browse/KAFKA-4521) | MirrorMaker should flush all messages before releasing partition ownership during rebalance |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-4539](https://issues.apache.org/jira/browse/KAFKA-4539) | StreamThread is not correctly creating  StandbyTasks |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4552](https://issues.apache.org/jira/browse/KAFKA-4552) | README.md has org.gradle.project.maxParallelForms instead of maxParallelForks |  Trivial | documentation | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4534](https://issues.apache.org/jira/browse/KAFKA-4534) | StreamPartitionAssignor only ever updates the partitionsByHostState and metadataWithInternalTopics once. |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4553](https://issues.apache.org/jira/browse/KAFKA-4553) | Connect's round robin assignment produces undesirable distribution of connectors/tasks |  Major | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-4166](https://issues.apache.org/jira/browse/KAFKA-4166) | TestMirrorMakerService.test\_bounce transient system test failure |  Major | . | Ismael Juma | Jason Gustafson |
| [KAFKA-4526](https://issues.apache.org/jira/browse/KAFKA-4526) | Transient failure in ThrottlingTest.test\_throttled\_reassignment |  Major | . | Ewen Cheslack-Postava | Apurva Mehta |
| [KAFKA-4473](https://issues.apache.org/jira/browse/KAFKA-4473) | RecordCollector should handle retriable exceptions more strictly |  Critical | streams | Thomas Schulz | Damian Guy |
| [KAFKA-4540](https://issues.apache.org/jira/browse/KAFKA-4540) | Suspended tasks that are not assigned to the StreamThread need to be closed before new active and standby tasks are created |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4554](https://issues.apache.org/jira/browse/KAFKA-4554) | ReplicaBuffer.verifyChecksum should use use iterators instead of iterables |  Major | . | Roger Hoover | Ismael Juma |
| [KAFKA-4485](https://issues.apache.org/jira/browse/KAFKA-4485) | Follower should be in the isr if its FetchRequest has fetched up to the logEndOffset of leader |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-4527](https://issues.apache.org/jira/browse/KAFKA-4527) | Transient failure of ConnectDistributedTest.test\_pause\_and\_resume\_sink where paused connector produces messages |  Major | KafkaConnect, system tests | Ewen Cheslack-Postava | Shikhar Bhushan |
| [KAFKA-4549](https://issues.apache.org/jira/browse/KAFKA-4549) | KafkaLZ4OutputStream does not write EndMark if flush() is not called before close() |  Major | clients | MURAKAMI Masahiko | MURAKAMI Masahiko |
| [KAFKA-4428](https://issues.apache.org/jira/browse/KAFKA-4428) | Kafka does not exit when it receives "Address already in use" error during startup |  Major | network | Zeynep Arikoglu | huxi |
| [KAFKA-4351](https://issues.apache.org/jira/browse/KAFKA-4351) | Topic regex behavioral change with MirrorMaker new consumer |  Minor | tools | Dustin Cote | huxi |
| [KAFKA-4480](https://issues.apache.org/jira/browse/KAFKA-4480) | kafka-configs will execute the removal of an invalid property and not report an error |  Major | config | Justin Manchester | Vahid Hashemian |
| [KAFKA-4318](https://issues.apache.org/jira/browse/KAFKA-4318) | Migrate ProducerSendTest to the new consumer |  Minor | unit tests | Balint Molnar | Balint Molnar |
| [KAFKA-4561](https://issues.apache.org/jira/browse/KAFKA-4561) | Ordering of operations in StreamThread.shutdownTasksAndState may void at-least-once guarantees |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4434](https://issues.apache.org/jira/browse/KAFKA-4434) | KafkaProducer configuration is logged twice |  Minor | config | Ruben de Gooijer | huxi |
| [KAFKA-4523](https://issues.apache.org/jira/browse/KAFKA-4523) | Controlled shutdown fails if consumer group restabilizes during shutdown |  Major | . | Steve Niemitz | Steve Niemitz |
| [KAFKA-4551](https://issues.apache.org/jira/browse/KAFKA-4551) | StreamsSmokeTest.test\_streams intermittent failure |  Blocker | . | Roger Hoover | Damian Guy |
| [KAFKA-4455](https://issues.apache.org/jira/browse/KAFKA-4455) | CommitFailedException during rebalance doesn't release resources in tasks/processors |  Major | streams | Davor Poldrugo | Ewen Cheslack-Postava |
| [KAFKA-4481](https://issues.apache.org/jira/browse/KAFKA-4481) | Relax Kafka Streams API type constraints |  Major | streams | Xavier Léauté | Xavier Léauté |
| [KAFKA-4060](https://issues.apache.org/jira/browse/KAFKA-4060) | Remove ZkClient dependency in Kafka Streams |  Major | streams | Guozhang Wang | Hojjat Jafarpour |
| [KAFKA-4180](https://issues.apache.org/jira/browse/KAFKA-4180) | Shared authentication with multiple active Kafka producers/consumers |  Major | producer , security | Guillaume Grossetie | Mickael Maison |
| [KAFKA-4565](https://issues.apache.org/jira/browse/KAFKA-4565) | Separation of Internal and External traffic (KIP-103) |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-4627](https://issues.apache.org/jira/browse/KAFKA-4627) | Intermittent test failure in consumer close test |  Major | unit tests | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-3739](https://issues.apache.org/jira/browse/KAFKA-3739) | Add no-arg constructor for library provided serdes |  Major | streams | Guozhang Wang | huxi |
| [KAFKA-3853](https://issues.apache.org/jira/browse/KAFKA-3853) | Report offsets for empty groups in ConsumerGroupCommand |  Major | admin, tools | Jason Gustafson | Vahid Hashemian |
| [KAFKA-4622](https://issues.apache.org/jira/browse/KAFKA-4622) | KafkaConsumer does not properly handle authorization errors from offset fetches |  Major | consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-4619](https://issues.apache.org/jira/browse/KAFKA-4619) | Dissallow to output records with unknown keys in TransformValues |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-4547](https://issues.apache.org/jira/browse/KAFKA-4547) | Consumer.position returns incorrect results for Kafka 0.10.1.0 client |  Blocker | clients | Pranav Nakhe | Vahid Hashemian |
| [KAFKA-4672](https://issues.apache.org/jira/browse/KAFKA-4672) | KIP-100 api changes break Java 8 lambda expressions in some cases |  Major | streams | Xavier Léauté | Xavier Léauté |
| [KAFKA-4633](https://issues.apache.org/jira/browse/KAFKA-4633) | Always use regex pattern subscription to avoid auto create topics |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-4671](https://issues.apache.org/jira/browse/KAFKA-4671) | Fix Streams window retention policy |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-4576](https://issues.apache.org/jira/browse/KAFKA-4576) | Log segments close to max size break on fetch |  Critical | log | Ivan Babrou | huxi |
| [KAFKA-4687](https://issues.apache.org/jira/browse/KAFKA-4687) | InvalidTopicException is possible for topic colliding with itself when concurrently created |  Major | admin | Andrew Olson | Andrew Olson |
| [KAFKA-4673](https://issues.apache.org/jira/browse/KAFKA-4673) | Python VerifiableConsumer service has thread-safety bug for event\_handlers |  Major | system tests | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-4229](https://issues.apache.org/jira/browse/KAFKA-4229) | Controller can't start after several zk expired event |  Major | controller | Pengwei | Pengwei |
| [KAFKA-3835](https://issues.apache.org/jira/browse/KAFKA-3835) | Streams is creating two ProducerRecords for each send via RecordCollector |  Minor | streams | Damian Guy | Jeyhun Karimov |
| [KAFKA-4596](https://issues.apache.org/jira/browse/KAFKA-4596) | KIP-73 rebalance throttling breaks on plans for specific partitions |  Major | . | Tom Crayford | Ben Stopford |
| [KAFKA-2000](https://issues.apache.org/jira/browse/KAFKA-2000) | Delete consumer offsets from kafka once the topic is deleted |  Major | . | Sriharsha Chintalapani | Manikumar |
| [KAFKA-4698](https://issues.apache.org/jira/browse/KAFKA-4698) | \`-target:jvm-1.7\` in scalaCompileOptions seems to cause java.lang.VerifyError when loading kafka/client/ClientUtils |  Major | . | Chris Heisterkamp | Ismael Juma |
| [KAFKA-4597](https://issues.apache.org/jira/browse/KAFKA-4597) | Record metadata returned by producer doesn't consider log append time |  Major | clients, producer | Alex Fechner | Ismael Juma |
| [KAFKA-4699](https://issues.apache.org/jira/browse/KAFKA-4699) | Transient Failure PlaintextConsumerTest.testInterceptros |  Major | unit tests | Jason Gustafson | Ismael Juma |
| [KAFKA-4700](https://issues.apache.org/jira/browse/KAFKA-4700) | StreamsKafkaClient drops security configs |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-4704](https://issues.apache.org/jira/browse/KAFKA-4704) | Group coordinator cache loading fails if groupId is used first for consumer groups and then for simple consumer |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-4557](https://issues.apache.org/jira/browse/KAFKA-4557) | ConcurrentModificationException in KafkaProducer event loop |  Critical | clients | Sergey Alaev | Rajini Sivaram |
| [KAFKA-4450](https://issues.apache.org/jira/browse/KAFKA-4450) | Add missing 0.10.1.x upgrade tests and ensure ongoing compatibility checks |  Blocker | system tests | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-4717](https://issues.apache.org/jira/browse/KAFKA-4717) | connect jars are missing LICENSE/NOTICE files |  Blocker | KafkaConnect | dan norwood | Ewen Cheslack-Postava |
| [KAFKA-2172](https://issues.apache.org/jira/browse/KAFKA-2172) | Round-robin partition assignment strategy too restrictive |  Major | . | Jason Rosenberg | Andrew Olson |
| [KAFKA-4719](https://issues.apache.org/jira/browse/KAFKA-4719) | Timed out waiting for consumption in OffsetValidationTest.test\_broker\_failure |  Major | system tests | Jason Gustafson | Jason Gustafson |
| [KAFKA-4558](https://issues.apache.org/jira/browse/KAFKA-4558) | throttling\_test fails if the producer starts too fast. |  Major | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-4441](https://issues.apache.org/jira/browse/KAFKA-4441) | Kafka Monitoring is incorrect during rapid topic creation and deletion |  Major | . | Tom Crayford | Edoardo Comar |
| [KAFKA-4725](https://issues.apache.org/jira/browse/KAFKA-4725) | Kafka broker fails due to OOM when producer exceeds throttling quota for extended periods of time |  Critical | core, producer | Jeff Chao |  |
| [KAFKA-4716](https://issues.apache.org/jira/browse/KAFKA-4716) | Fix logic for re-checking if internal topic is ready |  Blocker | streams | Eno Thereska | Eno Thereska |
| [KAFKA-4756](https://issues.apache.org/jira/browse/KAFKA-4756) | The auto-generated broker id should be passed to MetricReporter.configure |  Major | . | Ismael Juma | Colin P. McCabe |
| [KAFKA-4761](https://issues.apache.org/jira/browse/KAFKA-4761) | NullPointerException if batch.size=0 for producer config |  Blocker | clients | Swen Moczarski | Jason Gustafson |
| [KAFKA-4639](https://issues.apache.org/jira/browse/KAFKA-4639) | Kafka Streams metrics are undocumented |  Minor | streams | Elias Levy | Eno Thereska |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4209](https://issues.apache.org/jira/browse/KAFKA-4209) | Reduce time taken to run quota integration tests |  Major | unit tests | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-4575](https://issues.apache.org/jira/browse/KAFKA-4575) | Transient failure in ConnectDistributedTest.test\_pause\_and\_resume\_sink in consuming messages after resuming sink connector |  Major | KafkaConnect, system tests | Shikhar Bhushan | Shikhar Bhushan |
| [KAFKA-4580](https://issues.apache.org/jira/browse/KAFKA-4580) | Change one SASL system test to use new JAAS config property |  Blocker | system tests | Rajini Sivaram | Rajini Sivaram |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-3708](https://issues.apache.org/jira/browse/KAFKA-3708) | Rethink exception handling in KafkaStreams |  Major | streams | Guozhang Wang | Damian Guy |
| [KAFKA-4058](https://issues.apache.org/jira/browse/KAFKA-4058) | Failure in org.apache.kafka.streams.integration.ResetIntegrationTest.testReprocessingFromScratchAfterReset |  Major | streams | Guozhang Wang | Matthias J. Sax |
| [KAFKA-2089](https://issues.apache.org/jira/browse/KAFKA-2089) | MetadataTest transient failure |  Major | . | Jun Rao | Rajini Sivaram |
| [KAFKA-4352](https://issues.apache.org/jira/browse/KAFKA-4352) | Failure in org.apache.kafka.streams.integration.ResetIntegrationTest.testReprocessingFromScratchAfterReset |  Major | . | Guozhang Wang | Matthias J. Sax |
| [KAFKA-2066](https://issues.apache.org/jira/browse/KAFKA-2066) | Replace FetchRequest / FetchResponse with their org.apache.kafka.common.requests equivalents |  Major | . | Gwen Shapira | Jason Gustafson |
| [KAFKA-4377](https://issues.apache.org/jira/browse/KAFKA-4377) | Remove deprecated scala.collection.JavaConversions |  Major | core | Bernard Leach | Bernard Leach |
| [KAFKA-3600](https://issues.apache.org/jira/browse/KAFKA-3600) | Enhance java clients to use ApiVersion Req/Resp to check if the broker they are talking to supports required api versions |  Major | . | Ashish Singh | Ashish Singh |
| [KAFKA-2434](https://issues.apache.org/jira/browse/KAFKA-2434) | remove roundrobin identical topic constraint in consumer coordinator (old API) |  Major | . | Andrew Olson | Andrew Olson |
| [KAFKA-4528](https://issues.apache.org/jira/browse/KAFKA-4528) | Failure in kafka.producer.ProducerTest.testAsyncSendCanCorrectlyFailWithTimeout |  Major | unit tests | Guozhang Wang | Ismael Juma |
| [KAFKA-4466](https://issues.apache.org/jira/browse/KAFKA-4466) | Add support to ducktape to run only a part of all tests |  Major | system tests | Raghav Kumar Gautam | Ewen Cheslack-Postava |
| [KAFKA-4583](https://issues.apache.org/jira/browse/KAFKA-4583) | KafkaConsumerTest.testGracefulClose transient failure |  Major | . | Ismael Juma | Rajini Sivaram |
| [KAFKA-4508](https://issues.apache.org/jira/browse/KAFKA-4508) | Create system tests that run client against older versions of the broker |  Major | clients | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4465](https://issues.apache.org/jira/browse/KAFKA-4465) | Create docker image and scripts for running tests locally |  Major | system tests | Raghav Kumar Gautam | Raghav Kumar Gautam |
| [KAFKA-4507](https://issues.apache.org/jira/browse/KAFKA-4507) | The client should send older versions of requests to the broker if necessary |  Blocker | clients | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4114](https://issues.apache.org/jira/browse/KAFKA-4114) | Allow for different "auto.offset.reset" strategies for different input streams |  Major | streams | Matthias J. Sax | Bill Bejeck |
| [KAFKA-4588](https://issues.apache.org/jira/browse/KAFKA-4588) | QueryableStateIntegrationTest.shouldNotMakeStoreAvailableUntilAllStoresAvailable is occasionally failing on jenkins |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-3502](https://issues.apache.org/jira/browse/KAFKA-3502) | Build is killed during kafka streams tests due to \`pure virtual method called\` error |  Major | . | Ashish Singh | Guozhang Wang |
| [KAFKA-4457](https://issues.apache.org/jira/browse/KAFKA-4457) | Add a command to list the broker version information |  Blocker | clients | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-3896](https://issues.apache.org/jira/browse/KAFKA-3896) | Unstable test KStreamRepartitionJoinTest.shouldCorrectlyRepartitionOnJoinOperations |  Major | unit tests | Ashish Singh | Guozhang Wang |
| [KAFKA-4548](https://issues.apache.org/jira/browse/KAFKA-4548) | Add CompatibilityTest to verify that individual features are supported or not by the broker we're connecting to |  Major | clients, system tests, unit tests | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4630](https://issues.apache.org/jira/browse/KAFKA-4630) | Implement RecordTooLargeException when communicating with pre-KIP-74 brokers |  Blocker | clients | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4644](https://issues.apache.org/jira/browse/KAFKA-4644) | Improve test coverage of StreamsPartitionAssignor |  Minor | streams | Damian Guy | Damian Guy |
| [KAFKA-4664](https://issues.apache.org/jira/browse/KAFKA-4664) | Update docs/protocol.html with KIP-97 information |  Minor | documentation | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4635](https://issues.apache.org/jira/browse/KAFKA-4635) | Client Compatibility follow-up |  Major | clients | Ismael Juma | Colin P. McCabe |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4626](https://issues.apache.org/jira/browse/KAFKA-4626) | Add consumer close change to upgrade notes |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-4381](https://issues.apache.org/jira/browse/KAFKA-4381) | Add per partition lag metric to KafkaConsumer. |  Major | clients, consumer | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-4363](https://issues.apache.org/jira/browse/KAFKA-4363) | Add document for dynamic JAAS configuration property sasl.jaas.config |  Blocker | documentation | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-4590](https://issues.apache.org/jira/browse/KAFKA-4590) | Add system test for SASL/SCRAM |  Blocker | system tests | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-4589](https://issues.apache.org/jira/browse/KAFKA-4589) | Add documentation for SASL/SCRAM |  Blocker | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-4578](https://issues.apache.org/jira/browse/KAFKA-4578) | Upgrade notes for 0.10.2.0 |  Blocker | . | Ismael Juma | Ismael Juma |
| [KAFKA-4679](https://issues.apache.org/jira/browse/KAFKA-4679) | Remove unstable markers from Connect APIs |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Ewen Cheslack-Postava |


