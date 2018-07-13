
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
# Apache Flink Changelog

## Release 1.6.0 - Unreleased (as of 2018-07-13)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8620](https://issues.apache.org/jira/browse/FLINK-8620) | Enable shipping custom artifacts to BlobStore and accessing them through DistributedCache |  Major | . | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-9316](https://issues.apache.org/jira/browse/FLINK-9316) | Expose operator unique ID to the user defined functions in DataStream . |  Major | Streaming | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8838](https://issues.apache.org/jira/browse/FLINK-8838) | Add Support for UNNEST a MultiSet type field |  Major | Table API & SQL | lincoln.lee | lincoln.lee |
| [FLINK-7836](https://issues.apache.org/jira/browse/FLINK-7836) | specifying node label for flink job to run on yarn |  Major | Client | zhaibaba | vinoyang |
| [FLINK-5878](https://issues.apache.org/jira/browse/FLINK-5878) | Add stream-stream non-window inner/outer join |  Major | Table API & SQL | Shaoxuan Wang | Hequn Cheng |
| [FLINK-9566](https://issues.apache.org/jira/browse/FLINK-9566) | Support listing all jobs in CliFrontend#list |  Major | Client | Chesnay Schepler | Rong Rong |
| [FLINK-9564](https://issues.apache.org/jira/browse/FLINK-9564) | Expose end-to-end module directory to test scripts |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8744](https://issues.apache.org/jira/browse/FLINK-8744) | Add annotations for documenting common/advanced options |  Trivial | Configuration, Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9599](https://issues.apache.org/jira/browse/FLINK-9599) | Implement generic mechanism to receive files via rest |  Major | REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9557](https://issues.apache.org/jira/browse/FLINK-9557) | Parse 'integer' type as BigDecimal |  Major | . | Dominik Wosiński | Timo Walther |
| [FLINK-9280](https://issues.apache.org/jira/browse/FLINK-9280) | Extend JobSubmitHandler to accept jar files |  Critical | Job-Submission, REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9153](https://issues.apache.org/jira/browse/FLINK-9153) | TaskManagerRunner should support rpc port range |  Major | TaskManager | vinoyang | vinoyang |
| [FLINK-9187](https://issues.apache.org/jira/browse/FLINK-9187) | add prometheus pushgateway reporter |  Minor | Metrics | lamber-ken | lamber-ken |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9041](https://issues.apache.org/jira/browse/FLINK-9041) | Refactor StreamTaskTest to not use scala and akka |  Trivial | Streaming, Tests | Chesnay Schepler | Andrey Zagrebin |
| [FLINK-9136](https://issues.apache.org/jira/browse/FLINK-9136) | Remove StreamingProgramTestBase |  Minor | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9362](https://issues.apache.org/jira/browse/FLINK-9362) | Document that Flink doesn't guarantee transaction of modifying state and register timers in processElement() |  Major | Documentation | Bowen Li | Bowen Li |
| [FLINK-9392](https://issues.apache.org/jira/browse/FLINK-9392) | Add @FunctionalInterface annotations to all core functional interfaces |  Critical | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-9372](https://issues.apache.org/jira/browse/FLINK-9372) | Typo on Elasticsearch website link (elastic.io --\> elastic.co) |  Minor | Documentation, ElasticSearch Connector | Yazdan Shirvany | Yazdan Shirvany |
| [FLINK-7814](https://issues.apache.org/jira/browse/FLINK-7814) | Add BETWEEN and NOT BETWEEN expression to Table API |  Minor | Table API & SQL | Fabian Hueske | Ruidong Li |
| [FLINK-8511](https://issues.apache.org/jira/browse/FLINK-8511) | Remove legacy code for the TableType annotation |  Critical | Table API & SQL | Timo Walther | blues zheng |
| [FLINK-9305](https://issues.apache.org/jira/browse/FLINK-9305) | Register flink-s3-fs-hadoop for the s3a:// scheme as well |  Major | filesystem-connector | Nico Kruber | Nico Kruber |
| [FLINK-9088](https://issues.apache.org/jira/browse/FLINK-9088) | Upgrade Nifi connector dependency to 1.6.0 |  Major | Streaming Connectors | Ted Yu | Hai Zhou |
| [FLINK-9409](https://issues.apache.org/jira/browse/FLINK-9409) | Remove flink-avro and flink-json from /opt |  Major | Build System | Nico Kruber | Timo Walther |
| [FLINK-9355](https://issues.apache.org/jira/browse/FLINK-9355) | Simplify configuration of local recovery to a simple on/off |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-8655](https://issues.apache.org/jira/browse/FLINK-8655) | Add a default keyspace to CassandraSink |  Minor | Cassandra Connector | Christopher Hughes |  |
| [FLINK-7850](https://issues.apache.org/jira/browse/FLINK-7850) | Given each maven profile an activation property |  Major | Build System | Chesnay Schepler |  |
| [FLINK-9383](https://issues.apache.org/jira/browse/FLINK-9383) | Extend DistributedCache E2E test to cover directories |  Minor | Local Runtime, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9436](https://issues.apache.org/jira/browse/FLINK-9436) | Remove generic parameter namespace from InternalTimeServiceManager |  Minor | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-9423](https://issues.apache.org/jira/browse/FLINK-9423) | Implement efficient deletes for heap based timer service |  Major | Streaming | Stefan Richter | Stefan Richter |
| [FLINK-9464](https://issues.apache.org/jira/browse/FLINK-9464) | Clean up pom files |  Minor | Build System | Till Rohrmann | Till Rohrmann |
| [FLINK-7789](https://issues.apache.org/jira/browse/FLINK-7789) | Add handler for Async IO operator timeouts |  Major | DataStream API | Karthik Deivasigamani | blues zheng |
| [FLINK-9476](https://issues.apache.org/jira/browse/FLINK-9476) | Lost sideOutPut Late Elements in CEP Operator |  Major | CEP | aitozi | aitozi |
| [FLINK-7866](https://issues.apache.org/jira/browse/FLINK-7866) | Weigh list of preferred locations for scheduling |  Major | Scheduler | Till Rohrmann | Sihua Zhou |
| [FLINK-9518](https://issues.apache.org/jira/browse/FLINK-9518) | SSL setup Docs config example has wrong keys password |  Minor | Documentation | Yazdan Shirvany | Yazdan Shirvany |
| [FLINK-9517](https://issues.apache.org/jira/browse/FLINK-9517) | Fixing broken links on CLI and Upgrade Docs |  Trivial | Documentation | Yazdan Shirvany | Yazdan Shirvany |
| [FLINK-8790](https://issues.apache.org/jira/browse/FLINK-8790) | Improve performance for recovery from incremental checkpoint |  Major | State Backends, Checkpointing | Sihua Zhou | Sihua Zhou |
| [FLINK-9549](https://issues.apache.org/jira/browse/FLINK-9549) | Fix FlickCEP Docs broken link and minor style changes |  Trivial | CEP, Documentation | Yazdan Shirvany | Yazdan Shirvany |
| [FLINK-9539](https://issues.apache.org/jira/browse/FLINK-9539) | Integrate flink-shaded 4.0 |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9508](https://issues.apache.org/jira/browse/FLINK-9508) | General Spell Check on Flink Docs |  Trivial | Documentation | Yazdan Shirvany | Yazdan Shirvany |
| [FLINK-8759](https://issues.apache.org/jira/browse/FLINK-8759) | Prepare LengthFieldBasedFrameDecoder for Netty upgrade |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-8768](https://issues.apache.org/jira/browse/FLINK-8768) | Change NettyMessageDecoder to inherit from LengthFieldBasedFrameDecoder |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-3952](https://issues.apache.org/jira/browse/FLINK-3952) | Bump Netty to 4.1 |  Major | Core, Network | rektide de la fey | Piotr Nowojski |
| [FLINK-9538](https://issues.apache.org/jira/browse/FLINK-9538) | Make KeyedStateFunction an interface |  Major | . | Dawid Wysakowicz | vinoyang |
| [FLINK-9418](https://issues.apache.org/jira/browse/FLINK-9418) | Migrate SharedBuffer to use MapState |  Major | CEP | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-6983](https://issues.apache.org/jira/browse/FLINK-6983) | Do not serialize States with NFA |  Major | CEP | Dawid Wysakowicz | Dian Fu |
| [FLINK-9573](https://issues.apache.org/jira/browse/FLINK-9573) | Check for leadership with leader session id |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8573](https://issues.apache.org/jira/browse/FLINK-8573) | Print JobID for failed jobs |  Major | Client | Chesnay Schepler | Andrey Zagrebin |
| [FLINK-9551](https://issues.apache.org/jira/browse/FLINK-9551) | FlinkCEP Scala Combining Patterns table has a missing pattern |  Minor | Documentation | Yazdan Shirvany | Yazdan Shirvany |
| [FLINK-9579](https://issues.apache.org/jira/browse/FLINK-9579) | Remove unnecessary clear with cep elementQueue |  Major | CEP | aitozi | aitozi |
| [FLINK-9623](https://issues.apache.org/jira/browse/FLINK-9623) | Move zipping logic out of blobservice |  Major | Job-Submission | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8944](https://issues.apache.org/jira/browse/FLINK-8944) | Use ListShards for shard discovery in the flink kinesis connector |  Minor | . | Kailash Hassan Dayanand | Kailash Hassan Dayanand |
| [FLINK-9638](https://issues.apache.org/jira/browse/FLINK-9638) | Add helper script to run single e2e test |  Minor | Tests | Florian Schmidt | Florian Schmidt |
| [FLINK-9594](https://issues.apache.org/jira/browse/FLINK-9594) | Add documentation for e2e test changes introduced with FLINK-9257 |  Minor | Tests | Florian Schmidt | Florian Schmidt |
| [FLINK-9595](https://issues.apache.org/jira/browse/FLINK-9595) | Add instructions to docs about ceased support of KPL version used in Kinesis connector |  Critical | Documentation, Kinesis Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8468](https://issues.apache.org/jira/browse/FLINK-8468) | Make the connector to take advantage of AMQP features (routing key, exchange and message properties) |  Major | RabbitMQ Connector | Ph.Duveau | Ph.Duveau |
| [FLINK-9624](https://issues.apache.org/jira/browse/FLINK-9624) | Move jar/artifact upload logic out of JobGraph |  Major | Job-Submission | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9666](https://issues.apache.org/jira/browse/FLINK-9666) | short-circuit logic should be used in boolean contexts |  Minor | Core, DataStream API | lamber-ken | lamber-ken |
| [FLINK-9672](https://issues.apache.org/jira/browse/FLINK-9672) | Fail fatally if we cannot submit job on added JobGraph signal |  Critical | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9660](https://issues.apache.org/jira/browse/FLINK-9660) | Allow passing custom artifacts to Mesos workers |  Major | Mesos | Leonid Ishimnikov | Leonid Ishimnikov |
| [FLINK-9456](https://issues.apache.org/jira/browse/FLINK-9456) | Let ResourceManager notify JobManager about failed/killed TaskManagers |  Major | Distributed Coordination | Till Rohrmann | Sihua Zhou |
| [FLINK-4301](https://issues.apache.org/jira/browse/FLINK-4301) | Parameterize Flink version in Quickstart bash script |  Major | Documentation | Timo Walther | Simone Robutti |
| [FLINK-8650](https://issues.apache.org/jira/browse/FLINK-8650) | Add tests and documentation for WINDOW clause |  Major | Table API & SQL | Timo Walther | Sergey Nuyanzin |
| [FLINK-9674](https://issues.apache.org/jira/browse/FLINK-9674) | Remove 65s sleep in QueryableState E2E test |  Major | Queryable State, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8654](https://issues.apache.org/jira/browse/FLINK-8654) | Extend quickstart docs on how to submit jobs |  Major | Documentation, Quickstarts | Chesnay Schepler | Yazdan Shirvany |
| [FLINK-9578](https://issues.apache.org/jira/browse/FLINK-9578) | Allow to define an auto watermark interval in SQL Client |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-9301](https://issues.apache.org/jira/browse/FLINK-9301) | NotSoMiniClusterIterations job fails on travis |  Critical | Tests | Chesnay Schepler | Andrey Zagrebin |
| [FLINK-9695](https://issues.apache.org/jira/browse/FLINK-9695) | Add option for Mesos executor to forcefully pull Docker images |  Major | Mesos | Leonid Ishimnikov | Leonid Ishimnikov |
| [FLINK-9686](https://issues.apache.org/jira/browse/FLINK-9686) | Flink Kinesis Producer: Enable Kinesis authentication via AssumeRole |  Major | Kinesis Connector | Franz Thoma | Franz Thoma |
| [FLINK-9707](https://issues.apache.org/jira/browse/FLINK-9707) | LocalFileSystem does not support concurrent directory creations |  Blocker | FileSystem | Till Rohrmann | Till Rohrmann |
| [FLINK-9109](https://issues.apache.org/jira/browse/FLINK-9109) | Add flink modify command to documentation |  Major | Documentation | Till Rohrmann | Till Rohrmann |
| [FLINK-9729](https://issues.apache.org/jira/browse/FLINK-9729) | Duplicate lines for "Weekday name (Sunday .. Saturday)" |  Trivial | Documentation, Table API & SQL | Sergey Nuyanzin | Sergey Nuyanzin |
| [FLINK-9734](https://issues.apache.org/jira/browse/FLINK-9734) | Typo 'field-deleimiter' in SQL client docs |  Trivial | Documentation, Table API & SQL | Sergey Nuyanzin | Sergey Nuyanzin |
| [FLINK-6469](https://issues.apache.org/jira/browse/FLINK-6469) | Configure Memory Sizes with units |  Major | Core | Stephan Ewen | vinoyang |
| [FLINK-9593](https://issues.apache.org/jira/browse/FLINK-9593) | Unify AfterMatch semantics with SQL MATCH\_RECOGNIZE |  Major | CEP | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-9588](https://issues.apache.org/jira/browse/FLINK-9588) | Reuse the same conditionContext with in a same computationState |  Major | CEP | aitozi | aitozi |
| [FLINK-9757](https://issues.apache.org/jira/browse/FLINK-9757) | Typos found in docs after hunspell run |  Trivial | Documentation | Sergey Nuyanzin | Sergey Nuyanzin |
| [FLINK-9742](https://issues.apache.org/jira/browse/FLINK-9742) | Expose Expression.resultType to public |  Major | Table API & SQL | Jungtaek Lim | Jungtaek Lim |
| [FLINK-9659](https://issues.apache.org/jira/browse/FLINK-9659) | Remove hard-coded sleeps in bucketing sink E2E test |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9352](https://issues.apache.org/jira/browse/FLINK-9352) | In Standalone checkpoint recover mode many jobs with same checkpoint interval cause IO pressure |  Major | State Backends, Checkpointing | vinoyang | vinoyang |
| [FLINK-9470](https://issues.apache.org/jira/browse/FLINK-9470) | Allow querying the key in KeyedProcessFunction |  Major | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-9730](https://issues.apache.org/jira/browse/FLINK-9730) | avoid access static via class reference |  Major | . | lamber-ken | lamber-ken |
| [FLINK-9768](https://issues.apache.org/jira/browse/FLINK-9768) | Only build flink-dist for binary releases |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9687](https://issues.apache.org/jira/browse/FLINK-9687) | Delay the state fetch only when the triggerResult is fire |  Major | Streaming | aitozi | aitozi |
| [FLINK-9706](https://issues.apache.org/jira/browse/FLINK-9706) | DispatcherTest#testSubmittedJobGraphListener fails on Travis |  Critical | Distributed Coordination, Tests | Chesnay Schepler | Till Rohrmann |
| [FLINK-9809](https://issues.apache.org/jira/browse/FLINK-9809) | Support setting CoLocation constraints on the DataStream Transformations |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-9785](https://issues.apache.org/jira/browse/FLINK-9785) | Add remote addresses to LocalTransportException instances |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-9804](https://issues.apache.org/jira/browse/FLINK-9804) | KeyedStateBackend.getKeys() does not work on RocksDB MapState |  Blocker | State Backends, Checkpointing | Aljoscha Krettek | Sihua Zhou |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9269](https://issues.apache.org/jira/browse/FLINK-9269) | Concurrency problem in HeapKeyedStateBackend when performing checkpoint async |  Critical | State Backends, Checkpointing | Sihua Zhou | Sihua Zhou |
| [FLINK-9174](https://issues.apache.org/jira/browse/FLINK-9174) | The type of state created in ProccessWindowFunction.proccess() is inconsistency |  Major | State Backends, Checkpointing | Sihua Zhou | Sihua Zhou |
| [FLINK-9373](https://issues.apache.org/jira/browse/FLINK-9373) | Fix potential data losing for RocksDBBackend |  Blocker | State Backends, Checkpointing | Sihua Zhou | Sihua Zhou |
| [FLINK-8836](https://issues.apache.org/jira/browse/FLINK-8836) | Duplicating a KryoSerializer does not duplicate registered default serializers |  Blocker | Type Serialization System | Tzu-Li (Gordon) Tai | Stefan Richter |
| [FLINK-9384](https://issues.apache.org/jira/browse/FLINK-9384) | KafkaAvroTableSource failed to work due to type mismatch |  Blocker | Kafka Connector, Table API & SQL | Jun Zhang |  |
| [FLINK-9258](https://issues.apache.org/jira/browse/FLINK-9258) | ConcurrentModificationException in ComponentMetricGroup.getAllVariables |  Major | Metrics | Narayanan Arunachalam | Chesnay Schepler |
| [FLINK-9326](https://issues.apache.org/jira/browse/FLINK-9326) | TaskManagerOptions.NUM\_TASK\_SLOTS does not work for local/embedded mode |  Major | Core | Samuel Doyle | vinoyang |
| [FLINK-9370](https://issues.apache.org/jira/browse/FLINK-9370) | Activate distributed cache end-to-end test |  Critical | Local Runtime, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9215](https://issues.apache.org/jira/browse/FLINK-9215) | TaskManager Releasing  - org.apache.flink.util.FlinkException |  Major | Cluster Management, ResourceManager, Streaming | Bob Lau | Sihua Zhou |
| [FLINK-9440](https://issues.apache.org/jira/browse/FLINK-9440) | Allow cancelation and reset of timers |  Major | Streaming | Elias Levy | Stefan Richter |
| [FLINK-7917](https://issues.apache.org/jira/browse/FLINK-7917) | The return of taskInformationOrBlobKey should be placed inside synchronized in ExecutionJobVertex |  Minor | Local Runtime | Ted Yu | vinoyang |
| [FLINK-9398](https://issues.apache.org/jira/browse/FLINK-9398) | Flink CLI list running job returns all jobs except in CREATE state |  Major | Client | Rong Rong | Rong Rong |
| [FLINK-8946](https://issues.apache.org/jira/browse/FLINK-8946) | TaskManager stop sending metrics after JobManager failover |  Critical | Metrics, TaskManager | Truong Duc Kien | vinoyang |
| [FLINK-9458](https://issues.apache.org/jira/browse/FLINK-9458) | Unable to recover from job failure on YARN with NPE |  Blocker | . | Truong Duc Kien | Till Rohrmann |
| [FLINK-9463](https://issues.apache.org/jira/browse/FLINK-9463) | Setting taskmanager.network.netty.transport to epoll |  Major | Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-9570](https://issues.apache.org/jira/browse/FLINK-9570) | SQL Client merging environments uses AbstractMap |  Major | . | Dominik Wosiński | Dominik Wosiński |
| [FLINK-8725](https://issues.apache.org/jira/browse/FLINK-8725) | Separate NFA-state from NFA in CEP library |  Major | CEP | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-9494](https://issues.apache.org/jira/browse/FLINK-9494) | Race condition in Dispatcher with concurrent granting and revoking of leaderhship |  Critical | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9530](https://issues.apache.org/jira/browse/FLINK-9530) | Task numRecords metrics broken for chains |  Blocker | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9257](https://issues.apache.org/jira/browse/FLINK-9257) | End-to-end tests prints "All tests PASS" even if individual test-script returns non-zero exit code |  Critical | Tests | Florian Schmidt | Florian Schmidt |
| [FLINK-9589](https://issues.apache.org/jira/browse/FLINK-9589) | PythonOperationInfo should be immutable |  Major | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9590](https://issues.apache.org/jira/browse/FLINK-9590) | HistogramDump should be immutable |  Trivial | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9591](https://issues.apache.org/jira/browse/FLINK-9591) | Remove remnants of distributed-cache logic |  Major | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9468](https://issues.apache.org/jira/browse/FLINK-9468) | Wrong calculation of outputLimit in LimitedConnectionsFileSystem |  Critical | FileSystem | Sihua Zhou | Sihua Zhou |
| [FLINK-9366](https://issues.apache.org/jira/browse/FLINK-9366) | Distribute Cache only works for client-accessible files |  Blocker | Client, Local Runtime | Chesnay Schepler | Dawid Wysakowicz |
| [FLINK-9601](https://issues.apache.org/jira/browse/FLINK-9601) | Snapshot of CopyOnWriteStateTable will failed when the amount of record is more than MAXIMUM\_CAPACITY |  Major | State Backends, Checkpointing | Sihua Zhou | Sihua Zhou |
| [FLINK-9467](https://issues.apache.org/jira/browse/FLINK-9467) | No Watermark display on Web UI |  Blocker | Metrics, Webfrontend | Truong Duc Kien | Chesnay Schepler |
| [FLINK-8795](https://issues.apache.org/jira/browse/FLINK-8795) | Scala shell broken for Flip6 |  Blocker | Scala Shell | kant kodali | Dawid Wysakowicz |
| [FLINK-9374](https://issues.apache.org/jira/browse/FLINK-9374) | Flink Kinesis Producer does not backpressure |  Critical | Kinesis Connector | Franz Thoma | Franz Thoma |
| [FLINK-9500](https://issues.apache.org/jira/browse/FLINK-9500) | FileUploadHandler does not handle EmptyLastHttpContent |  Major | Client, REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9493](https://issues.apache.org/jira/browse/FLINK-9493) | Forward exception when releasing a TaskManager at the SlotPool |  Critical | JobManager | Till Rohrmann | Andrey Zagrebin |
| [FLINK-9585](https://issues.apache.org/jira/browse/FLINK-9585) | Logger in ZooKeeperStateHandleStore is public and non-final |  Trivial | Local Runtime | Chesnay Schepler | vinoyang |
| [FLINK-9634](https://issues.apache.org/jira/browse/FLINK-9634) | Deactivate previous location based scheduling if local recovery is disabled |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9524](https://issues.apache.org/jira/browse/FLINK-9524) | NPE from ProcTimeBoundedRangeOver.scala |  Major | Table API & SQL | yan zhou | yan zhou |
| [FLINK-9629](https://issues.apache.org/jira/browse/FLINK-9629) | Datadog metrics reporter does not have shaded dependencies |  Major | Metrics | Georgii Gobozov | Georgii Gobozov |
| [FLINK-8067](https://issues.apache.org/jira/browse/FLINK-8067) | User code ClassLoader not set before calling ProcessingTimeCallback |  Minor | Streaming | Gary Yao | vinoyang |
| [FLINK-9627](https://issues.apache.org/jira/browse/FLINK-9627) | Extending 'KafkaJsonTableSource' according to comments will result in NPE |  Major | . | Dominik Wosiński | vinoyang |
| [FLINK-9532](https://issues.apache.org/jira/browse/FLINK-9532) | Flink Overview of Jobs Documentation Incorrect |  Trivial | Documentation | Abdul Qadeer | vinoyang |
| [FLINK-9684](https://issues.apache.org/jira/browse/FLINK-9684) | HistoryServerArchiveFetcher not working properly with secure hdfs cluster |  Major | History Server | Ethan Li | Ethan Li |
| [FLINK-9655](https://issues.apache.org/jira/browse/FLINK-9655) | Externalized checkpoint E2E test fails on travis |  Major | State Backends, Checkpointing, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9580](https://issues.apache.org/jira/browse/FLINK-9580) | Potentially unclosed ByteBufInputStream in RestClient#readRawResponse |  Minor | REST | Ted Yu | vinoyang |
| [FLINK-9677](https://issues.apache.org/jira/browse/FLINK-9677) | RestClient fails for large uploads |  Major | REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9567](https://issues.apache.org/jira/browse/FLINK-9567) | Flink does not release resource in Yarn Cluster mode |  Critical | Cluster Management, YARN | Shimin Yang | Shimin Yang |
| [FLINK-9665](https://issues.apache.org/jira/browse/FLINK-9665) | PrometheusReporter does not properly unregister metrics |  Major | Metrics | Chesnay Schepler | Jelmer Kuperus |
| [FLINK-9444](https://issues.apache.org/jira/browse/FLINK-9444) | Add full SQL support for Avro formats |  Blocker | Kafka Connector, Table API & SQL | Jun Zhang | Jun Zhang |
| [FLINK-8785](https://issues.apache.org/jira/browse/FLINK-8785) | JobSubmitHandler does not handle JobSubmissionExceptions |  Blocker | Job-Submission, JobManager, REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9708](https://issues.apache.org/jira/browse/FLINK-9708) | Network buffer leaks when buffer request fails during buffer redistribution |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-9636](https://issues.apache.org/jira/browse/FLINK-9636) | Network buffer leaks in requesting a batch of segments during canceling |  Major | Network | zhijiang | Nico Kruber |
| [FLINK-9633](https://issues.apache.org/jira/browse/FLINK-9633) | Flink doesn't use the Savepoint path's filesystem to create the OuptutStream on Task. |  Critical | State Backends, Checkpointing | Sihua Zhou | Sihua Zhou |
| [FLINK-9654](https://issues.apache.org/jira/browse/FLINK-9654) | Internal error while deserializing custom Scala TypeSerializer instances |  Major | . | Zsolt Donca | Zsolt Donca |
| [FLINK-9622](https://issues.apache.org/jira/browse/FLINK-9622) | DistributedCacheDfsTest failed on travis |  Blocker | Tests | Sihua Zhou | Till Rohrmann |
| [FLINK-9554](https://issues.apache.org/jira/browse/FLINK-9554) | flink scala shell doesn't work in yarn mode |  Blocker | Scala Shell | Jeff Zhang | Jeff Zhang |
| [FLINK-9646](https://issues.apache.org/jira/browse/FLINK-9646) | ExecutionGraphCoLocationRestartTest.testConstraintsAfterRestart failed on Travis |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-9676](https://issues.apache.org/jira/browse/FLINK-9676) | Deadlock during canceling task and recycling exclusive buffer |  Critical | Network | zhijiang | Nico Kruber |
| [FLINK-9581](https://issues.apache.org/jira/browse/FLINK-9581) | Redundant spaces for Collect at sql.md |  Trivial | Documentation, Table API & SQL | Sergey Nuyanzin | Sergey Nuyanzin |
| [FLINK-9101](https://issues.apache.org/jira/browse/FLINK-9101) | HAQueryableStateRocksDBBackendITCase failed on travis |  Blocker | Queryable State | Chesnay Schepler |  |
| [FLINK-9769](https://issues.apache.org/jira/browse/FLINK-9769) | FileUploads may be shared across requests |  Blocker | Job-Submission, REST, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9770](https://issues.apache.org/jira/browse/FLINK-9770) | UI jar list broken |  Blocker | Job-Submission, REST, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9772](https://issues.apache.org/jira/browse/FLINK-9772) | Documentation of Hadoop API outdated |  Minor | Documentation | Lorenz Bühmann | vinoyang |
| [FLINK-8161](https://issues.apache.org/jira/browse/FLINK-8161) | Flakey YARNSessionCapacitySchedulerITCase on Travis |  Critical | Tests, YARN | Till Rohrmann | Till Rohrmann |
| [FLINK-9789](https://issues.apache.org/jira/browse/FLINK-9789) | Watermark metrics for an operator&task shadow each other |  Blocker | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9743](https://issues.apache.org/jira/browse/FLINK-9743) | PackagedProgram.extractContainedLibraries fails on Windows |  Major | Client, Job-Submission | Chesnay Schepler | Sergey Nuyanzin |
| [FLINK-9584](https://issues.apache.org/jira/browse/FLINK-9584) | Unclosed streams in Bucketing-/RollingSink |  Major | filesystem-connector | Chesnay Schepler | Sihua Zhou |
| [FLINK-9754](https://issues.apache.org/jira/browse/FLINK-9754) | Release scripts refers to non-existing profile |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5363](https://issues.apache.org/jira/browse/FLINK-5363) | Fire timers when window state is currently empty |  Major | DataStream API | Aljoscha Krettek | aitozi |
| [FLINK-9439](https://issues.apache.org/jira/browse/FLINK-9439) | DispatcherTest#testJobRecovery dead locks |  Critical | Distributed Coordination | Piotr Nowojski | Till Rohrmann |
| [FLINK-9766](https://issues.apache.org/jira/browse/FLINK-9766) | Incomplete/incorrect cleanup in RemoteInputChannelTest |  Major | Network, Tests | Nico Kruber | Nico Kruber |
| [FLINK-9784](https://issues.apache.org/jira/browse/FLINK-9784) | Inconsistent use of 'static' in AsyncIOExample.java |  Minor | Examples | Alexei Nekrassov | Alexei Nekrassov |
| [FLINK-9603](https://issues.apache.org/jira/browse/FLINK-9603) | Incorrect indexing of part files, when part suffix is specified (FileAlreadyExistsException) |  Major | filesystem-connector | Rinat Sharipov | Kostas Kloudas |
| [FLINK-9693](https://issues.apache.org/jira/browse/FLINK-9693) | Possible memory leak in jobmanager retaining archived checkpoints |  Major | JobManager, State Backends, Checkpointing | Steven Zhen Wu | Till Rohrmann |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9420](https://issues.apache.org/jira/browse/FLINK-9420) | Add tests for SQL IN sub-query operator in streaming |  Major | Table API & SQL | Timo Walther | Ruidong Li |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6924](https://issues.apache.org/jira/browse/FLINK-6924) | ADD LOG(X) supported in TableAPI |  Major | Table API & SQL | sunjincheng | buptljy |
| [FLINK-8537](https://issues.apache.org/jira/browse/FLINK-8537) | Add a Kafka table source factory with Avro format support |  Major | Table API & SQL | Timo Walther | Xingcan Cui |
| [FLINK-8978](https://issues.apache.org/jira/browse/FLINK-8978) | End-to-end test: Job upgrade |  Blocker | Tests | Till Rohrmann | Andrey Zagrebin |
| [FLINK-9181](https://issues.apache.org/jira/browse/FLINK-9181) | Add SQL Client documentation page |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-6926](https://issues.apache.org/jira/browse/FLINK-6926) | Add support for MD5, SHA1 and SHA2 |  Major | Table API & SQL | sunjincheng | Michael Gendelman |
| [FLINK-8910](https://issues.apache.org/jira/browse/FLINK-8910) | Introduce automated end-to-end test for local recovery (including sticky scheduling) |  Blocker | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-8428](https://issues.apache.org/jira/browse/FLINK-8428) | Implement stream-stream non-window left outer join |  Major | Table API & SQL | Hequn Cheng | Hequn Cheng |
| [FLINK-8996](https://issues.apache.org/jira/browse/FLINK-8996) | Include an operator with broadcast and union state |  Major | Tests | Stefan Richter | Tzu-Li (Gordon) Tai |
| [FLINK-9322](https://issues.apache.org/jira/browse/FLINK-9322) | Add exception throwing map function that simulates failures to the general purpose DataStream job |  Major | Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-9320](https://issues.apache.org/jira/browse/FLINK-9320) | Update \`test-ha.sh\` end-to-end test to use general purpose DataStream job |  Critical | Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8977](https://issues.apache.org/jira/browse/FLINK-8977) | End-to-end test: Manually resume job after terminal failure |  Blocker | Tests | Till Rohrmann | Tzu-Li (Gordon) Tai |
| [FLINK-8989](https://issues.apache.org/jira/browse/FLINK-8989) | End-to-end test: ElasticSearch connector |  Major | ElasticSearch Connector, Tests | Till Rohrmann | zhangminglei |
| [FLINK-9008](https://issues.apache.org/jira/browse/FLINK-9008) | End-to-end test: Quickstarts |  Blocker | Quickstarts, Tests | Till Rohrmann | zhangminglei |
| [FLINK-8429](https://issues.apache.org/jira/browse/FLINK-8429) | Implement stream-stream non-window right outer join |  Major | Table API & SQL | Hequn Cheng | Hequn Cheng |
| [FLINK-9386](https://issues.apache.org/jira/browse/FLINK-9386) | Remove netty-router dependency |  Major | . | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8430](https://issues.apache.org/jira/browse/FLINK-8430) | Implement stream-stream non-window full outer join |  Major | Table API & SQL | Hequn Cheng | Hequn Cheng |
| [FLINK-8861](https://issues.apache.org/jira/browse/FLINK-8861) | Add support for batch queries in SQL Client |  Major | Table API & SQL | Timo Walther | Xingcan Cui |
| [FLINK-9451](https://issues.apache.org/jira/browse/FLINK-9451) | End-to-end test: Scala Quickstarts |  Blocker | Quickstarts | Yazdan Shirvany | Yazdan Shirvany |
| [FLINK-9368](https://issues.apache.org/jira/browse/FLINK-9368) | End-to-end test: Python API |  Major | Python API, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6939](https://issues.apache.org/jira/browse/FLINK-6939) | Not store IterativeCondition with NFA state |  Major | CEP | Jark Wu | Jark Wu |
| [FLINK-8982](https://issues.apache.org/jira/browse/FLINK-8982) | End-to-end test: Queryable state |  Blocker | Queryable State, Tests | Till Rohrmann | Florian Schmidt |
| [FLINK-9394](https://issues.apache.org/jira/browse/FLINK-9394) | Let externalized checkpoint resume e2e also test rescaling |  Major | Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8983](https://issues.apache.org/jira/browse/FLINK-8983) | End-to-end test: Confluent schema registry |  Critical | Kafka Connector, Tests | Till Rohrmann | Yazdan Shirvany |
| [FLINK-9514](https://issues.apache.org/jira/browse/FLINK-9514) | Create wrapper with TTL logic for value state |  Major | State Backends, Checkpointing | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-9516](https://issues.apache.org/jira/browse/FLINK-9516) | Create wrapper with TTL logic for map state |  Major | State Backends, Checkpointing | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-8863](https://issues.apache.org/jira/browse/FLINK-8863) | Add user-defined function support in SQL Client |  Major | Table API & SQL | Timo Walther | Xingcan Cui |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9292](https://issues.apache.org/jira/browse/FLINK-9292) | Remove TypeInfoParser |  Major | Core | Stephan Ewen | vinoyang |
| [FLINK-7775](https://issues.apache.org/jira/browse/FLINK-7775) | Remove unreferenced method PermanentBlobCache#getNumberOfCachedJobs |  Minor | Local Runtime | Ted Yu | vinoyang |


