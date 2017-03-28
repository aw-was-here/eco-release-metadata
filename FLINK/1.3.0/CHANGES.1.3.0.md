
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

## Release 1.3.0 - Unreleased (as of 2017-03-28)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4686](https://issues.apache.org/jira/browse/FLINK-4686) | Add possibility to get column names |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-5303](https://issues.apache.org/jira/browse/FLINK-5303) | Add CUBE/ROLLUP/GROUPING SETS operator in SQL |  Major | Documentation, Table API & SQL | Alexander Chermenin | Alexander Chermenin |
| [FLINK-5265](https://issues.apache.org/jira/browse/FLINK-5265) | Introduce state handle replication mode for CheckpointCoordinator |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-4523](https://issues.apache.org/jira/browse/FLINK-4523) | Allow Kinesis Consumer to start from specific timestamp / Date |  Major | Kinesis Connector | Tzu-Li (Gordon) Tai | Wei-Che Wei |
| [FLINK-4988](https://issues.apache.org/jira/browse/FLINK-4988) | Elasticsearch 5.x support |  Major | Streaming Connectors | Mike Dias |  |
| [FLINK-5017](https://issues.apache.org/jira/browse/FLINK-5017) | Introduce StreamStatus stream element to allow for temporarily idle streaming sources |  Major | Streaming | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-5406](https://issues.apache.org/jira/browse/FLINK-5406) | add normalization phase for predicate logical plan rewriting between decorrelate query phase and volcano optimization phase |  Major | Table API & SQL | godfrey he | godfrey he |
| [FLINK-4280](https://issues.apache.org/jira/browse/FLINK-4280) | New Flink-specific option to set starting position of Kafka consumer without respecting external offsets in ZK / Broker |  Major | Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-4997](https://issues.apache.org/jira/browse/FLINK-4997) | Extending Window Function Metadata |  Major | DataStream API, Streaming | Ventura Del Monte | Ventura Del Monte |
| [FLINK-5571](https://issues.apache.org/jira/browse/FLINK-5571) | add open and close methods for UserDefinedFunction in TableAPI & SQL |  Major | Table API & SQL | godfrey he | godfrey he |
| [FLINK-4856](https://issues.apache.org/jira/browse/FLINK-4856) | Add MapState for keyed streams |  Major | DataStream API, State Backends, Checkpointing | Xiaogang Shi | Xiaogang Shi |
| [FLINK-5157](https://issues.apache.org/jira/browse/FLINK-5157) | Extending AllWindow Function Metadata |  Major | DataStream API, Streaming | Ventura Del Monte | Ventura Del Monte |
| [FLINK-5941](https://issues.apache.org/jira/browse/FLINK-5941) | Let handlers take part in job archiving |  Major | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5441](https://issues.apache.org/jira/browse/FLINK-5441) | Directly allow SQL queries on a Table |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-5692](https://issues.apache.org/jira/browse/FLINK-5692) | Add an Option to Deactivate Kryo Fallback for Serializers |  Major | Type Serialization System | Stephan Ewen | Jin Mingjian |
| [FLINK-5979](https://issues.apache.org/jira/browse/FLINK-5979) | Backwards compatibility for HeapKeyedStateBackend serialization format (1.2 -\> 1.3) |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-5715](https://issues.apache.org/jira/browse/FLINK-5715) | Asynchronous snapshotting for HeapKeyedStateBackend |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-4460](https://issues.apache.org/jira/browse/FLINK-4460) | Side Outputs in Flink |  Major | Core, DataStream API | Chen Qin | Chen Qin |
| [FLINK-6139](https://issues.apache.org/jira/browse/FLINK-6139) | Documentation for building / preparing Flink for MapR |  Major | Documentation | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4288](https://issues.apache.org/jira/browse/FLINK-4288) | Make it possible to unregister tables |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-5412](https://issues.apache.org/jira/browse/FLINK-5412) | Enable RocksDB tests on Windows |  Major | State Backends, Checkpointing, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5066](https://issues.apache.org/jira/browse/FLINK-5066) | add more efficient isEvent check to EventSerializer |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-4673](https://issues.apache.org/jira/browse/FLINK-4673) | TypeInfoFactory for Either type |  Minor | Core | Greg Hogan | Greg Hogan |
| [FLINK-5280](https://issues.apache.org/jira/browse/FLINK-5280) | Refactor TableSource |  Major | Table API & SQL | Fabian Hueske | Ivan Mushketyk |
| [FLINK-5358](https://issues.apache.org/jira/browse/FLINK-5358) | Support RowTypeInfo extraction in TypeExtractor by Row instance |  Major | . | Anton Solovev | Anton Solovev |
| [FLINK-5237](https://issues.apache.org/jira/browse/FLINK-5237) | Consolidate and harmonize Window Translation Tests |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5442](https://issues.apache.org/jira/browse/FLINK-5442) | Add test to fix ordinals of serialized enum StateDescriptor.Type |  Minor | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-5388](https://issues.apache.org/jira/browse/FLINK-5388) | Remove private access of edges and vertices of Gelly Graph class |  Major | Gelly | wouter ligtenberg | Anton Solovev |
| [FLINK-5466](https://issues.apache.org/jira/browse/FLINK-5466) | Make production environment default in gulpfile |  Major | Webfrontend | Ufuk Celebi | Ufuk Celebi |
| [FLINK-4450](https://issues.apache.org/jira/browse/FLINK-4450) | update storm version to 1.0.0 |  Major | flink-contrib | yuzhongliu |  |
| [FLINK-5448](https://issues.apache.org/jira/browse/FLINK-5448) | Fix typo in StateAssignmentOperation Exception |  Trivial | State Backends, Checkpointing | Ufuk Celebi |  |
| [FLINK-5438](https://issues.apache.org/jira/browse/FLINK-5438) | Typo in JobGraph generator Exception |  Trivial | Client | Ufuk Celebi |  |
| [FLINK-5485](https://issues.apache.org/jira/browse/FLINK-5485) | Mark compiled web frontend files as binary when processed by git diff |  Trivial | Webfrontend | Greg Hogan | Greg Hogan |
| [FLINK-3150](https://issues.apache.org/jira/browse/FLINK-3150) | Make YARN container invocation configurable |  Major | YARN | Robert Metzger | Nico Kruber |
| [FLINK-5377](https://issues.apache.org/jira/browse/FLINK-5377) | Improve savepoint docs |  Major | Documentation | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5574](https://issues.apache.org/jira/browse/FLINK-5574) | Add checkpoint statistics docs |  Minor | Documentation | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5521](https://issues.apache.org/jira/browse/FLINK-5521) | remove unused KvStateRequestSerializer#serializeList |  Major | Queryable State | Nico Kruber | Nico Kruber |
| [FLINK-5519](https://issues.apache.org/jira/browse/FLINK-5519) | scala-maven-plugin version all change to 3.2.2 |  Major | Build System | shijinkui | shijinkui |
| [FLINK-5543](https://issues.apache.org/jira/browse/FLINK-5543) | customCommandLine tips in CliFrontend |  Major | Client | shijinkui | shijinkui |
| [FLINK-5424](https://issues.apache.org/jira/browse/FLINK-5424) | Improve Restart Strategy Logging |  Minor | Core | Shannon Carey | Shannon Carey |
| [FLINK-4920](https://issues.apache.org/jira/browse/FLINK-4920) | Add a Scala Function Gauge |  Major | Metrics, Scala API | Stephan Ewen | Pattarawat Chormai |
| [FLINK-5113](https://issues.apache.org/jira/browse/FLINK-5113) | Make all Testing Functions implement CheckpointedFunction Interface. |  Major | DataStream API | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5452](https://issues.apache.org/jira/browse/FLINK-5452) | Make table unit tests pass under cluster mode |  Major | Table API & SQL | Kurt Young | Kurt Young |
| [FLINK-5507](https://issues.apache.org/jira/browse/FLINK-5507) | remove queryable list state sink |  Major | State Backends, Checkpointing | Nico Kruber | Nico Kruber |
| [FLINK-5515](https://issues.apache.org/jira/browse/FLINK-5515) | fix unused kvState.getSerializedValue call in KvStateServerHandler |  Major | . | Nico Kruber |  |
| [FLINK-5368](https://issues.apache.org/jira/browse/FLINK-5368) | Let Kafka consumer show something when it fails to read one topic out of topic list |  Critical | Kafka Connector | Sendoh | Sendoh |
| [FLINK-5528](https://issues.apache.org/jira/browse/FLINK-5528) | tests: reduce the retry delay in QueryableStateITCase |  Major | Queryable State | Nico Kruber | Nico Kruber |
| [FLINK-5576](https://issues.apache.org/jira/browse/FLINK-5576) | extend deserialization functions of KvStateRequestSerializer to detect unconsumed bytes |  Minor | Queryable State | Nico Kruber | Nico Kruber |
| [FLINK-5559](https://issues.apache.org/jira/browse/FLINK-5559) | queryable state: KvStateRequestSerializer#deserializeKeyAndNamespace() throws an IOException without own failure message if deserialisation fails |  Minor | Queryable State | Nico Kruber | Nico Kruber |
| [FLINK-5590](https://issues.apache.org/jira/browse/FLINK-5590) | Create a proper internal state hierarchy |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-5508](https://issues.apache.org/jira/browse/FLINK-5508) | Remove Mesos dynamic class loading |  Minor | Mesos | Till Rohrmann | Till Rohrmann |
| [FLINK-5503](https://issues.apache.org/jira/browse/FLINK-5503) | mesos-appmaster.sh script could print return value message |  Minor | Mesos | Till Rohrmann | Till Rohrmann |
| [FLINK-5610](https://issues.apache.org/jira/browse/FLINK-5610) | Rename Installation and Setup to Project Setup |  Minor | Documentation | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5609](https://issues.apache.org/jira/browse/FLINK-5609) | Add last update time to docs |  Major | Documentation | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5395](https://issues.apache.org/jira/browse/FLINK-5395) | support locally build distribution by script create\_release\_files.sh |  Major | Build System | shijinkui | shijinkui |
| [FLINK-4552](https://issues.apache.org/jira/browse/FLINK-4552) | Refactor WindowOperator/Trigger Tests |  Major | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5446](https://issues.apache.org/jira/browse/FLINK-5446) | System metrics reference incomplete |  Blocker | Documentation, Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4396](https://issues.apache.org/jira/browse/FLINK-4396) | GraphiteReporter class not found at startup of jobmanager |  Major | Build System, Metrics | RWenden | Chesnay Schepler |
| [FLINK-5451](https://issues.apache.org/jira/browse/FLINK-5451) | Extend JMX metrics documentation section |  Major | Documentation, Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5404](https://issues.apache.org/jira/browse/FLINK-5404) | Consolidate and update S3 documentation |  Minor | Documentation | Markus Dale |  |
| [FLINK-5615](https://issues.apache.org/jira/browse/FLINK-5615) | queryable state: execute the QueryableStateITCase for all three state back-ends |  Major | Queryable State | Nico Kruber | Nico Kruber |
| [FLINK-4917](https://issues.apache.org/jira/browse/FLINK-4917) | Deprecate "CheckpointedAsynchronously" interface |  Major | Streaming | Stephan Ewen |  |
| [FLINK-5639](https://issues.apache.org/jira/browse/FLINK-5639) | Clarify License implications of RabbitMQ Connector |  Major | Streaming Connectors | Stephan Ewen | Stephan Ewen |
| [FLINK-5632](https://issues.apache.org/jira/browse/FLINK-5632) | Typo in StreamGraph |  Trivial | Java API | Wei-Che Wei | Wei-Che Wei |
| [FLINK-5630](https://issues.apache.org/jira/browse/FLINK-5630) | Followups to AggregationFunction |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-5480](https://issues.apache.org/jira/browse/FLINK-5480) | User-provided hashes for operators |  Major | DataStream API | Stefan Richter | Stefan Richter |
| [FLINK-5681](https://issues.apache.org/jira/browse/FLINK-5681) | Make ReaperThread for SafetyNetCloseableRegistry a singleton |  Major | Core | Stefan Richter | Stefan Richter |
| [FLINK-5581](https://issues.apache.org/jira/browse/FLINK-5581) | Improve Kerberos security related documentation |  Major | Documentation, Security | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-5563](https://issues.apache.org/jira/browse/FLINK-5563) | Add density to vertex metrics |  Major | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-5499](https://issues.apache.org/jira/browse/FLINK-5499) | Try to reuse the resource location of prior execution attempt in allocating slot |  Major | JobManager | zhijiang | zhijiang |
| [FLINK-2211](https://issues.apache.org/jira/browse/FLINK-2211) | Generalize ALS API |  Minor | Machine Learning Library | Ronny Bräunlich | Till Rohrmann |
| [FLINK-5721](https://issues.apache.org/jira/browse/FLINK-5721) | Add FoldingState to State Documentation |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5575](https://issues.apache.org/jira/browse/FLINK-5575) | in old releases, warn users and guide them to the latest stable docs |  Major | Documentation | David Anderson | David Anderson |
| [FLINK-5702](https://issues.apache.org/jira/browse/FLINK-5702) | Kafka Producer docs should warn if using setLogFailuresOnly, at-least-once is compromised |  Major | Documentation, Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-5153](https://issues.apache.org/jira/browse/FLINK-5153) | Allow setting custom application tags for Flink on YARN |  Major | YARN | Robert Metzger | Patrick Lucas |
| [FLINK-5748](https://issues.apache.org/jira/browse/FLINK-5748) | Make the ExecutionGraph's FutureExecutor a ScheduledExecutionService |  Major | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-5517](https://issues.apache.org/jira/browse/FLINK-5517) | Upgrade hbase version to 1.3.0 |  Major | Streaming Connectors | Ted Yu | Ted Yu |
| [FLINK-5766](https://issues.apache.org/jira/browse/FLINK-5766) | Unify NoAvailableResourceException handling on ExecutionGraph |  Major | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-5718](https://issues.apache.org/jira/browse/FLINK-5718) | Handle JVM Fatal Exceptions in Tasks |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-5415](https://issues.apache.org/jira/browse/FLINK-5415) | ContinuousFileProcessingTest failed on travis |  Major | DataStream API, Streaming Connectors | Chesnay Schepler | Aljoscha Krettek |
| [FLINK-5788](https://issues.apache.org/jira/browse/FLINK-5788) | Document assumptions about File Systems and persistence |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-5745](https://issues.apache.org/jira/browse/FLINK-5745) | Set uncaught exception handler for Netty threads |  Minor | Network | Ufuk Celebi |  |
| [FLINK-5807](https://issues.apache.org/jira/browse/FLINK-5807) | improved wording for doc home page |  Minor | Documentation | David Anderson | David Anderson |
| [FLINK-5714](https://issues.apache.org/jira/browse/FLINK-5714) | Use a builder pattern for creating CsvTableSource |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-5805](https://issues.apache.org/jira/browse/FLINK-5805) | improve docs for ProcessFunction |  Minor | Documentation | David Anderson | David Anderson |
| [FLINK-5800](https://issues.apache.org/jira/browse/FLINK-5800) | Make sure that the CheckpointStreamFactory is instantiated once per operator only |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-5705](https://issues.apache.org/jira/browse/FLINK-5705) | webmonitor's request/response use UTF-8 explicitly |  Major | Webfrontend | shijinkui | shijinkui |
| [FLINK-5837](https://issues.apache.org/jira/browse/FLINK-5837) | improve readability of the queryable state docs |  Minor | Documentation | David Anderson | David Anderson |
| [FLINK-5812](https://issues.apache.org/jira/browse/FLINK-5812) | Clean up FileSystem |  Minor | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-5522](https://issues.apache.org/jira/browse/FLINK-5522) | Storm LocalCluster can't run with powermock |  Major | DataStream API | liuyuzhong7 |  |
| [FLINK-5497](https://issues.apache.org/jira/browse/FLINK-5497) | remove duplicated tests |  Minor | Tests | Alexey Diomin |  |
| [FLINK-5129](https://issues.apache.org/jira/browse/FLINK-5129) | make the BlobServer use a distributed file system |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-5277](https://issues.apache.org/jira/browse/FLINK-5277) | missing unit test for ensuring ResultPartition#add always recycles buffers |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-5876](https://issues.apache.org/jira/browse/FLINK-5876) | Mention Scala type fallacies for queryable state client serializers |  Major | Documentation | Ufuk Celebi |  |
| [FLINK-5894](https://issues.apache.org/jira/browse/FLINK-5894) | HA docs are misleading re: state backends |  Major | Documentation | David Anderson |  |
| [FLINK-5763](https://issues.apache.org/jira/browse/FLINK-5763) | Make savepoints self-contained and relocatable |  Major | State Backends, Checkpointing | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5877](https://issues.apache.org/jira/browse/FLINK-5877) | Fix Scala snippet in Async I/O API doc |  Minor | Documentation | Andrea Sella | Andrea Sella |
| [FLINK-5887](https://issues.apache.org/jira/browse/FLINK-5887) | Make CheckpointBarrier type immutable |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-5895](https://issues.apache.org/jira/browse/FLINK-5895) | Reduce logging aggressiveness of FileSystemSafetyNet |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-5854](https://issues.apache.org/jira/browse/FLINK-5854) | Introduce some Flink-specific base Exception types |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-5743](https://issues.apache.org/jira/browse/FLINK-5743) | Mark WindowedStream.aggregate\* methods as PublicEvolving |  Blocker | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5870](https://issues.apache.org/jira/browse/FLINK-5870) | Make handlers aware of their REST URLs |  Major | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5852](https://issues.apache.org/jira/browse/FLINK-5852) | Move JSON generation code into static methods |  Major | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5938](https://issues.apache.org/jira/browse/FLINK-5938) | Replace ExecutionContext by Executor in Scheduler |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-5524](https://issues.apache.org/jira/browse/FLINK-5524) | Support early out for code generated conjunctive conditions |  Major | Table API & SQL | Fabian Hueske | Kurt Young |
| [FLINK-5917](https://issues.apache.org/jira/browse/FLINK-5917) | Remove MapState.size() |  Blocker | DataStream API | Aljoscha Krettek | Xiaogang Shi |
| [FLINK-5067](https://issues.apache.org/jira/browse/FLINK-5067) | Make Flink compile with 1.8 Java compiler |  Minor | Build System | Andrey Melentyev | Andrey Melentyev |
| [FLINK-4326](https://issues.apache.org/jira/browse/FLINK-4326) | Flink start-up scripts should optionally start services on the foreground |  Major | Startup Shell Scripts | Elias Levy | Greg Hogan |
| [FLINK-5722](https://issues.apache.org/jira/browse/FLINK-5722) | Implement DISTINCT as dedicated operator |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-5414](https://issues.apache.org/jira/browse/FLINK-5414) | Bump up Calcite version to 1.11 |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-5983](https://issues.apache.org/jira/browse/FLINK-5983) | Replace for/foreach/map in aggregates by while loops |  Major | Table API & SQL | Timo Walther | Fabian Hueske |
| [FLINK-5583](https://issues.apache.org/jira/browse/FLINK-5583) | Support flexible error handling in the Kafka consumer |  Major | Kafka Connector | Haohui Mai | Haohui Mai |
| [FLINK-5984](https://issues.apache.org/jira/browse/FLINK-5984) | Add resetAccumulator method for AggregateFunction |  Major | Table API & SQL | Timo Walther | Shaoxuan Wang |
| [FLINK-5598](https://issues.apache.org/jira/browse/FLINK-5598) | Return jar name when jar is uploaded |  Major | Web Client | Sendoh | Fabian Wollert |
| [FLINK-5976](https://issues.apache.org/jira/browse/FLINK-5976) | Refactoring duplicate Tokenizer in flink-test |  Minor | Examples | liuyuzhong7 |  |
| [FLINK-6005](https://issues.apache.org/jira/browse/FLINK-6005) | unit test ArrayList initializations without initial size |  Minor | Tests | Nico Kruber | Nico Kruber |
| [FLINK-5826](https://issues.apache.org/jira/browse/FLINK-5826) | UDF/UDTF should support variable types and variable arguments |  Major | . | Zhuoluo Yang | Zhuoluo Yang |
| [FLINK-3123](https://issues.apache.org/jira/browse/FLINK-3123) | Allow setting custom start-offsets for the Kafka consumer |  Major | Kafka Connector | Robert Metzger | Tzu-Li (Gordon) Tai |
| [FLINK-5222](https://issues.apache.org/jira/browse/FLINK-5222) | Rename StateBackend interface to StateBinder |  Minor | State Backends, Checkpointing | Guowei Ma | Guowei Ma |
| [FLINK-3398](https://issues.apache.org/jira/browse/FLINK-3398) | Flink Kafka consumer should support auto-commit opt-outs |  Critical | Kafka Connector | Shikhar Bhushan | Tzu-Li (Gordon) Tai |
| [FLINK-5635](https://issues.apache.org/jira/browse/FLINK-5635) | Improve Docker tooling to make it easier to build images and launch Flink via Docker tools |  Major | Docker | Jamie Grier | Patrick Lucas |
| [FLINK-4754](https://issues.apache.org/jira/browse/FLINK-4754) | Make number of retained checkpoints user configurable |  Major | State Backends, Checkpointing | Ufuk Celebi | Wei-Che Wei |
| [FLINK-6041](https://issues.apache.org/jira/browse/FLINK-6041) | Move StreamingFunctionUtils to 'org.apache.flink.streaming.util' |  Trivial | DataStream API | liuyuzhong7 |  |
| [FLINK-6076](https://issues.apache.org/jira/browse/FLINK-6076) | Let the HeartbeatManager interface extend HeartbeatTarget |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-6111](https://issues.apache.org/jira/browse/FLINK-6111) | Remove sleep after python process generation |  Major | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5183](https://issues.apache.org/jira/browse/FLINK-5183) | [py] Support multiple jobs per Python plan file |  Minor | Python API | Geoffrey Mon | Geoffrey Mon |
| [FLINK-6124](https://issues.apache.org/jira/browse/FLINK-6124) | support max/min aggregations for string type |  Major | Table API & SQL | Zhenghua Gao | Zhenghua Gao |
| [FLINK-6138](https://issues.apache.org/jira/browse/FLINK-6138) | Improve UnboundedNonPartitionedProcessingOverProcessFunction |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6144](https://issues.apache.org/jira/browse/FLINK-6144) | Port job manager related configuration options to ConfigOption |  Minor | Core | Till Rohrmann | Till Rohrmann |
| [FLINK-5792](https://issues.apache.org/jira/browse/FLINK-5792) | Improve “UDF/UDTF" to support constructor with parameter. |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6134](https://issues.apache.org/jira/browse/FLINK-6134) | Set UUID(0L, 0L) as default leader session id |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-3318](https://issues.apache.org/jira/browse/FLINK-3318) | Add support for quantifiers to CEP's pattern API |  Minor | CEP | Till Rohrmann | Dawid Wysakowicz |
| [FLINK-6018](https://issues.apache.org/jira/browse/FLINK-6018) | Properly initialise StateDescriptor in AbstractStateBackend.getPartitionedState() |  Blocker | DataStream API, State Backends, Checkpointing | sunjincheng | Aljoscha Krettek |
| [FLINK-5929](https://issues.apache.org/jira/browse/FLINK-5929) | Allow Access to Per-Window State in ProcessWindowFunction |  Major | DataStream API | Aljoscha Krettek | Seth Wiesman |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5382](https://issues.apache.org/jira/browse/FLINK-5382) | Taskmanager log download button causes 404 |  Major | Webfrontend | Robert Metzger | Sachin Goel |
| [FLINK-4255](https://issues.apache.org/jira/browse/FLINK-4255) | Unstable test WebRuntimeMonitorITCase.testNoEscape |  Major | . | Kostas Kloudas | Boris Osipov |
| [FLINK-4870](https://issues.apache.org/jira/browse/FLINK-4870) | ContinuousFileMonitoringFunction does not properly handle absolut Windows paths |  Minor | Streaming | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5323](https://issues.apache.org/jira/browse/FLINK-5323) | CheckpointNotifier should be removed from docs |  Trivial | Documentation | Abhishek Singh |  |
| [FLINK-5349](https://issues.apache.org/jira/browse/FLINK-5349) | Fix code sample for Twitter connector |  Major | . | Ivan Mushketyk | Ivan Mushketyk |
| [FLINK-5392](https://issues.apache.org/jira/browse/FLINK-5392) | flink-dist build failed when change scala version to 2.11 |  Major | Build System | 刘喆 |  |
| [FLINK-5408](https://issues.apache.org/jira/browse/FLINK-5408) | RocksDB initialization can fail with an UnsatisfiedLinkError in the presence of multiple classloaders |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-4890](https://issues.apache.org/jira/browse/FLINK-4890) | FileInputFormatTest#testExcludeFiles fails on Windows OS |  Major | Batch Connectors and Input/Output Formats | Chesnay Schepler | Stephan Ewen |
| [FLINK-5397](https://issues.apache.org/jira/browse/FLINK-5397) | Fail to deserialize savepoints in v1.1 when there exist missing fields in class serialization descriptors |  Major | State Backends, Checkpointing | Xiaogang Shi | Stefan Richter |
| [FLINK-5390](https://issues.apache.org/jira/browse/FLINK-5390) | input should be closed in finally block in YarnFlinkApplicationMasterRunner#loadJobGraph() |  Minor | . | Ted Yu | Roman Maier |
| [FLINK-5400](https://issues.apache.org/jira/browse/FLINK-5400) | Add accessor to folding states in RuntimeContext |  Major | State Backends, Checkpointing | Xiaogang Shi | Xiaogang Shi |
| [FLINK-4148](https://issues.apache.org/jira/browse/FLINK-4148) | incorrect calculation distance in QuadTree |  Trivial | Machine Learning Library | Alexey Diomin |  |
| [FLINK-5119](https://issues.apache.org/jira/browse/FLINK-5119) | Last taskmanager heartbeat not showing in web frontend |  Major | Webfrontend | Ufuk Celebi | Sachin Goel |
| [FLINK-5381](https://issues.apache.org/jira/browse/FLINK-5381) | Scrolling in some web interface pages doesn't work (taskmanager details, jobmanager config) |  Major | Webfrontend | Robert Metzger | Sachin Goel |
| [FLINK-5359](https://issues.apache.org/jira/browse/FLINK-5359) | Job Exceptions view doesn't scroll |  Major | Webfrontend | Eron Wright | Sachin Goel |
| [FLINK-5267](https://issues.apache.org/jira/browse/FLINK-5267) | TaskManager logs not scrollable |  Major | Webfrontend | Mischa Krüger | Sachin Goel |
| [FLINK-5383](https://issues.apache.org/jira/browse/FLINK-5383) | TaskManager fails with SIGBUS when loading RocksDB |  Major | . | Robert Metzger | Stephan Ewen |
| [FLINK-5364](https://issues.apache.org/jira/browse/FLINK-5364) | Rework JAAS configuration to support user-supplied entries |  Critical | Cluster Management | Eron Wright | Eron Wright |
| [FLINK-5361](https://issues.apache.org/jira/browse/FLINK-5361) | Flink shouldn't require Kerberos credentials |  Major | Client | Eron Wright | Eron Wright |
| [FLINK-5350](https://issues.apache.org/jira/browse/FLINK-5350) | Don't overwrite existing Jaas config property |  Major | Security | Maximilian Michels | Maximilian Michels |
| [FLINK-5427](https://issues.apache.org/jira/browse/FLINK-5427) | Typo in the event\_timestamps\_watermarks doc |  Minor | Documentation | Yelei Feng |  |
| [FLINK-5379](https://issues.apache.org/jira/browse/FLINK-5379) | Flink CliFrontend does not return when not logged in with kerberos |  Major | Client | Robert Metzger | Eron Wright |
| [FLINK-5444](https://issues.apache.org/jira/browse/FLINK-5444) | Flink UI uses absolute URLs. |  Major | . | Joerg Schad | Joerg Schad |
| [FLINK-5407](https://issues.apache.org/jira/browse/FLINK-5407) | Savepoint for iterative Task fails. |  Major | State Backends, Checkpointing | Stephan Ewen | Stefan Richter |
| [FLINK-5467](https://issues.apache.org/jira/browse/FLINK-5467) | Stateless chained tasks set legacy operator state |  Major | State Backends, Checkpointing | Ufuk Celebi | Stefan Richter |
| [FLINK-5489](https://issues.apache.org/jira/browse/FLINK-5489) | maven release:prepare fails due to invalid JDOM comments in pom.xml |  Minor | Build System | Haohui Mai | Haohui Mai |
| [FLINK-5345](https://issues.apache.org/jira/browse/FLINK-5345) | IOManager failed to properly clean up temp file directory |  Major | . | Robert Metzger | Stephan Ewen |
| [FLINK-5518](https://issues.apache.org/jira/browse/FLINK-5518) | HadoopInputFormat throws NPE when close() is called before open() |  Major | Batch Connectors and Input/Output Formats | Jakub Havlik | Jakub Havlik |
| [FLINK-5484](https://issues.apache.org/jira/browse/FLINK-5484) | Kryo serialization changed between 1.1 and 1.2 |  Major | Type Serialization System | Ufuk Celebi |  |
| [FLINK-5560](https://issues.apache.org/jira/browse/FLINK-5560) | Header in checkpoint stats summary misaligned |  Minor | Webfrontend | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5556](https://issues.apache.org/jira/browse/FLINK-5556) | BarrierBuffer resets bytes written on spiller roll over |  Minor | State Backends, Checkpointing | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5531](https://issues.apache.org/jira/browse/FLINK-5531) | SSl code block formatting is broken |  Major | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5150](https://issues.apache.org/jira/browse/FLINK-5150) | WebUI metric-related resource leak |  Critical | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5432](https://issues.apache.org/jira/browse/FLINK-5432) | ContinuousFileMonitoringFunction is not monitoring nested files |  Major | filesystem-connector | Yassine Marzougui | Yassine Marzougui |
| [FLINK-5380](https://issues.apache.org/jira/browse/FLINK-5380) | Number of outgoing records not reported in web interface |  Blocker | Metrics, Streaming, Webfrontend | Robert Metzger | Chesnay Schepler |
| [FLINK-5329](https://issues.apache.org/jira/browse/FLINK-5329) | Metric list is being cut off in the WebFrontend |  Blocker | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5434](https://issues.apache.org/jira/browse/FLINK-5434) | Remove unsupported project() transformation from Scala DataStream docs |  Minor | Documentation | Vasia Kalavri | GaoLun |
| [FLINK-5419](https://issues.apache.org/jira/browse/FLINK-5419) | Taskmanager metrics not accessible via REST |  Major | Metrics, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5321](https://issues.apache.org/jira/browse/FLINK-5321) | FlinkMiniCluster does not start Jobmanager MetricQueryService |  Major | JobManager, Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5493](https://issues.apache.org/jira/browse/FLINK-5493) | FlinkDistributionOverlay does not properly display missing environment variables |  Minor | Cluster Management | Till Rohrmann | Boris Osipov |
| [FLINK-5482](https://issues.apache.org/jira/browse/FLINK-5482) | QueryableStateClient does not recover from a failed lookup due to a non-running job |  Major | . | Nico Kruber | Nico Kruber |
| [FLINK-5561](https://issues.apache.org/jira/browse/FLINK-5561) | DataInputDeserializer#available returns one too few |  Major | . | Nico Kruber | Nico Kruber |
| [FLINK-5468](https://issues.apache.org/jira/browse/FLINK-5468) | Restoring from a semi async rocksdb statebackend (1.1) to 1.2 fails with ClassNotFoundException |  Major | State Backends, Checkpointing | Robert Metzger | Stefan Richter |
| [FLINK-2662](https://issues.apache.org/jira/browse/FLINK-2662) | CompilerException: "Bug: Plan generation for Unions picked a ship strategy between binary plan operators." |  Critical | Optimizer | Gabor Gevay | Fabian Hueske |
| [FLINK-5585](https://issues.apache.org/jira/browse/FLINK-5585) | NullPointer Exception in JobManager.updateAccumulators |  Major | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-5530](https://issues.apache.org/jira/browse/FLINK-5530) | race condition in AbstractRocksDBState#getSerializedValue |  Blocker | Queryable State | Nico Kruber | Nico Kruber |
| [FLINK-5495](https://issues.apache.org/jira/browse/FLINK-5495) | ZooKeeperMesosWorkerStore cannot be instantiated |  Critical | Mesos | Till Rohrmann | Till Rohrmann |
| [FLINK-5496](https://issues.apache.org/jira/browse/FLINK-5496) | ClassCastException when using Mesos HA mode |  Critical | Mesos | Till Rohrmann | Till Rohrmann |
| [FLINK-5504](https://issues.apache.org/jira/browse/FLINK-5504) | mesos-appmaster.sh logs to wrong directory |  Minor | Mesos | Till Rohrmann | Till Rohrmann |
| [FLINK-5532](https://issues.apache.org/jira/browse/FLINK-5532) | Make the marker WindowAssigners for the fast aligned windows non-extendable. |  Major | DataStream API | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5562](https://issues.apache.org/jira/browse/FLINK-5562) | Driver fixes |  Major | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-5118](https://issues.apache.org/jira/browse/FLINK-5118) | Inconsistent records sent/received metrics |  Major | Metrics, Webfrontend | Ufuk Celebi | Chesnay Schepler |
| [FLINK-5450](https://issues.apache.org/jira/browse/FLINK-5450) | WindowOperator logs about "re-registering state from an older Flink version" even though its not a restored window |  Major | DataStream API | Robert Metzger | Kostas Kloudas |
| [FLINK-5365](https://issues.apache.org/jira/browse/FLINK-5365) | Mesos AppMaster/TaskManager should obey sigterm |  Minor | Cluster Management, Mesos | Eron Wright | Eron Wright |
| [FLINK-5298](https://issues.apache.org/jira/browse/FLINK-5298) | TaskManager crashes when TM log not existant |  Major | Distributed Coordination, Mesos, Webfrontend | Mischa Krüger | Chesnay Schepler |
| [FLINK-5464](https://issues.apache.org/jira/browse/FLINK-5464) | MetricQueryService throws NullPointerException on JobManager |  Major | Metrics, Webfrontend | Robert Metzger | Chesnay Schepler |
| [FLINK-5613](https://issues.apache.org/jira/browse/FLINK-5613) | QueryableState: requesting a non-existing key in RocksDBStateBackend is not consistent with the MemoryStateBackend and FsStateBackend |  Major | Queryable State | Nico Kruber | Nico Kruber |
| [FLINK-5375](https://issues.apache.org/jira/browse/FLINK-5375) | Fix watermark documentation |  Critical | Documentation, Project Website | Fabian Hueske | Tzu-Li (Gordon) Tai |
| [FLINK-5214](https://issues.apache.org/jira/browse/FLINK-5214) | Clean up checkpoint files when failing checkpoint operation on TM |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-5229](https://issues.apache.org/jira/browse/FLINK-5229) | Cleanup StreamTaskStates if a checkpoint operation of a subsequent operator fails |  Major | Distributed Coordination, State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5617](https://issues.apache.org/jira/browse/FLINK-5617) | Check new public APIs in 1.2 release |  Major | Build System | Robert Metzger | Robert Metzger |
| [FLINK-5473](https://issues.apache.org/jira/browse/FLINK-5473) | setMaxParallelism() higher than 1 is possible on non-parallel operators |  Major | DataStream API | Robert Metzger | Stefan Richter |
| [FLINK-5577](https://issues.apache.org/jira/browse/FLINK-5577) | Each time application is submitted to yarn, application id increases by two |  Minor | YARN | Yelei Feng |  |
| [FLINK-5247](https://issues.apache.org/jira/browse/FLINK-5247) | Fix incorrect check in allowedLateness() method. Make it a no-op for non-event time windows. |  Major | Streaming | Rohit Agarwal |  |
| [FLINK-4905](https://issues.apache.org/jira/browse/FLINK-4905) | Kafka test instability IllegalStateException: Client is not started |  Major | Kafka Connector | Robert Metzger | Andrew Efimov |
| [FLINK-5492](https://issues.apache.org/jira/browse/FLINK-5492) | BootstrapTools log wrong address of started ActorSystem |  Minor | . | Till Rohrmann | Till Rohrmann |
| [FLINK-5643](https://issues.apache.org/jira/browse/FLINK-5643) | StateUtil.discardStateFuture fails when state future contains null value |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-5638](https://issues.apache.org/jira/browse/FLINK-5638) | Deadlock when closing two chained async I/O operators |  Major | Local Runtime | Till Rohrmann | Till Rohrmann |
| [FLINK-5626](https://issues.apache.org/jira/browse/FLINK-5626) | Improve resource release in RocksDBKeyedStateBackend |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-5602](https://issues.apache.org/jira/browse/FLINK-5602) | Migration with RocksDB job led to NPE for next checkpoint |  Major | . | Ufuk Celebi | Stefan Richter |
| [FLINK-5637](https://issues.apache.org/jira/browse/FLINK-5637) | Default Flink configuration contains whitespace characters, causing parser WARNings |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-5612](https://issues.apache.org/jira/browse/FLINK-5612) | GlobPathFilter not-serializable exception |  Blocker | Batch Connectors and Input/Output Formats | Chesnay Schepler | Ivan Mushketyk |
| [FLINK-5660](https://issues.apache.org/jira/browse/FLINK-5660) | Not properly cleaning PendingCheckpoints up |  Major | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5670](https://issues.apache.org/jira/browse/FLINK-5670) | Local RocksDB directories not cleaned up |  Minor | State Backends, Checkpointing | Ufuk Celebi | Aljoscha Krettek |
| [FLINK-5667](https://issues.apache.org/jira/browse/FLINK-5667) | Possible state data loss when task fails while checkpointing |  Blocker | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5663](https://issues.apache.org/jira/browse/FLINK-5663) | Checkpoint fails because of closed registry |  Major | State Backends, Checkpointing | Ufuk Celebi | Stefan Richter |
| [FLINK-5628](https://issues.apache.org/jira/browse/FLINK-5628) | CheckpointStatsTracker implements Serializable but isn't |  Blocker | Local Runtime | Chesnay Schepler | Ufuk Celebi |
| [FLINK-5608](https://issues.apache.org/jira/browse/FLINK-5608) | Cancel button not always visible |  Minor | Webfrontend | Shannon Carey | Shannon Carey |
| [FLINK-5644](https://issues.apache.org/jira/browse/FLINK-5644) | Task#lastCheckpointSize metric broken |  Major | Metrics, Streaming | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5684](https://issues.apache.org/jira/browse/FLINK-5684) | Add MacOS section to flink-runtime-web README |  Major | Documentation | Ivan Mushketyk | Ivan Mushketyk |
| [FLINK-5708](https://issues.apache.org/jira/browse/FLINK-5708) | we should remove duplicated configuration options |  Minor | Documentation | Yelei Feng |  |
| [FLINK-5652](https://issues.apache.org/jira/browse/FLINK-5652) | Memory leak in AsyncDataStream |  Major | DataStream API | Dmitry Golubets | Till Rohrmann |
| [FLINK-5699](https://issues.apache.org/jira/browse/FLINK-5699) | Cancel with savepoint fails with a NPE if savepoint target directory not set |  Minor | State Backends, Checkpointing | Till Rohrmann | Ufuk Celebi |
| [FLINK-5759](https://issues.apache.org/jira/browse/FLINK-5759) | Set an UncaughtExceptionHandler for all Thread Pools in JobManager |  Major | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-5712](https://issues.apache.org/jira/browse/FLINK-5712) | update several deprecated configuration options |  Minor | Documentation, Mesos | Yelei Feng |  |
| [FLINK-5662](https://issues.apache.org/jira/browse/FLINK-5662) | Alias in front of output fails |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-5631](https://issues.apache.org/jira/browse/FLINK-5631) | [yarn] Support downloading additional jars from non-HDFS paths |  Major | YARN | Haohui Mai | Haohui Mai |
| [FLINK-5553](https://issues.apache.org/jira/browse/FLINK-5553) | Job fails during deployment with IllegalStateException from subpartition request |  Major | Network | Robert Metzger | Nico Kruber |
| [FLINK-5762](https://issues.apache.org/jira/browse/FLINK-5762) | Protect initializeState() and open() by the same lock. |  Major | DataStream API | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5796](https://issues.apache.org/jira/browse/FLINK-5796) | broken links in the docs |  Major | Documentation | Nico Kruber |  |
| [FLINK-5806](https://issues.apache.org/jira/browse/FLINK-5806) | TaskExecutionState toString format have wrong key |  Major | . | shijinkui | shijinkui |
| [FLINK-5793](https://issues.apache.org/jira/browse/FLINK-5793) | Running slot may not be add to AllocatedMap in SlotPool |  Major | Core | shuai.xu | shuai.xu |
| [FLINK-5771](https://issues.apache.org/jira/browse/FLINK-5771) | DelimitedInputFormat does not correctly handle multi-byte delimiters |  Major | filesystem-connector | Colin Breame | Fabian Hueske |
| [FLINK-5751](https://issues.apache.org/jira/browse/FLINK-5751) | 404 in documentation |  Trivial | Documentation | Colin Breame |  |
| [FLINK-5773](https://issues.apache.org/jira/browse/FLINK-5773) | Cannot cast scala.util.Failure to org.apache.flink.runtime.messages.Acknowledge |  Major | Distributed Coordination | Colin Breame | Till Rohrmann |
| [FLINK-5811](https://issues.apache.org/jira/browse/FLINK-5811) | Harden YarnClusterDescriptorTest |  Trivial | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-5814](https://issues.apache.org/jira/browse/FLINK-5814) | flink-dist creates wrong symlink when not used with cleaned before |  Minor | Build System | Nico Kruber | Nico Kruber |
| [FLINK-5616](https://issues.apache.org/jira/browse/FLINK-5616) | YarnPreConfiguredMasterHaServicesTest fails sometimes |  Major | YARN | Aljoscha Krettek | Till Rohrmann |
| [FLINK-5747](https://issues.apache.org/jira/browse/FLINK-5747) | Eager Scheduling should deploy all Tasks together |  Major | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-5828](https://issues.apache.org/jira/browse/FLINK-5828) | BlobServer create cache dir has concurrency safety problem |  Major | Core | ZhengBowen |  |
| [FLINK-5739](https://issues.apache.org/jira/browse/FLINK-5739) | NullPointerException in CliFrontend |  Major | Client | Zhuoluo Yang | Zhuoluo Yang |
| [FLINK-5817](https://issues.apache.org/jira/browse/FLINK-5817) | Fix test concurrent execution failure by test dir conflicts. |  Major | . | Wenlong Lyu | Wenlong Lyu |
| [FLINK-5669](https://issues.apache.org/jira/browse/FLINK-5669) | flink-streaming-contrib DataStreamUtils.collect in local environment mode fails when offline |  Minor | flink-contrib | Rick Cox |  |
| [FLINK-4813](https://issues.apache.org/jira/browse/FLINK-4813) | Having flink-test-utils as a dependency outside Flink fails the build |  Major | Build System | Robert Metzger | Nico Kruber |
| [FLINK-5749](https://issues.apache.org/jira/browse/FLINK-5749) |     unset HADOOP\_HOME and HADOOP\_CONF\_DIR to avoid env in build machine failing the UT and IT |  Major | . | Wenlong Lyu | Wenlong Lyu |
| [FLINK-5842](https://issues.apache.org/jira/browse/FLINK-5842) | Wrong 'since' version for ElasticSearch 5.x connector |  Major | Documentation, Streaming Connectors | Dawid Wysakowicz | Patrick Lucas |
| [FLINK-5836](https://issues.apache.org/jira/browse/FLINK-5836) | Race condition between slot offering and task deployment |  Major | Distributed Coordination | Till Rohrmann | Wenlong Lyu |
| [FLINK-5885](https://issues.apache.org/jira/browse/FLINK-5885) | Java code snippet instead of scala in documentation |  Trivial | Cassandra Connector, Documentation | Evgeny Vanslov | Andrea Sella |
| [FLINK-5353](https://issues.apache.org/jira/browse/FLINK-5353) | Elasticsearch Sink loses well-formed documents when there are malformed documents |  Major | Streaming Connectors | Flavio Pompermaier | Tzu-Li (Gordon) Tai |
| [FLINK-5122](https://issues.apache.org/jira/browse/FLINK-5122) | Elasticsearch Sink loses documents when cluster has high load |  Major | Streaming Connectors | static-max | static-max |
| [FLINK-5487](https://issues.apache.org/jira/browse/FLINK-5487) | Proper at-least-once support for ElasticsearchSink |  Critical | Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-5899](https://issues.apache.org/jira/browse/FLINK-5899) | Fix the bug in EventTimeTumblingWindow for non-partialMerge aggregate |  Major | Table API & SQL | Shaoxuan Wang | Shaoxuan Wang |
| [FLINK-5849](https://issues.apache.org/jira/browse/FLINK-5849) | Kafka Consumer checkpointed state may contain undefined offsets |  Critical | Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-5907](https://issues.apache.org/jira/browse/FLINK-5907) | RowCsvInputFormat bug on parsing tsv |  Major | Java API | Flavio Pompermaier | Kurt Young |
| [FLINK-5871](https://issues.apache.org/jira/browse/FLINK-5871) | Enforce uniqueness of pattern names in CEP. |  Major | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5928](https://issues.apache.org/jira/browse/FLINK-5928) | Externalized checkpoints overwritting each other |  Critical | State Backends, Checkpointing | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5389](https://issues.apache.org/jira/browse/FLINK-5389) | Fails #testAnswerFailureWhenSavepointReadFails |  Major | State Backends, Checkpointing | Anton Solovev | Ufuk Celebi |
| [FLINK-5402](https://issues.apache.org/jira/browse/FLINK-5402) | Fails AkkaRpcServiceTest#testTerminationFuture |  Major | Distributed Coordination | Anton Solovev | Dawid Wysakowicz |
| [FLINK-5872](https://issues.apache.org/jira/browse/FLINK-5872) | WebUI shows "(null)" root-exception even without exception |  Major | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5934](https://issues.apache.org/jira/browse/FLINK-5934) | Scheduler in ExecutionGraph null if failure happens in ExecutionGraph.restoreLatestCheckpointedState |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-5948](https://issues.apache.org/jira/browse/FLINK-5948) | Error in Python zip\_with\_index documentation |  Minor | Documentation, Python API | Geoffrey Mon |  |
| [FLINK-5827](https://issues.apache.org/jira/browse/FLINK-5827) | Exception when do filter after join a udtf which returns a POJO type |  Major | Table API & SQL | Kaibo Zhou | Kaibo Zhou |
| [FLINK-5945](https://issues.apache.org/jira/browse/FLINK-5945) | Close function in OuterJoinOperatorBase#executeOnCollections |  Major | Core | Greg Hogan | Greg Hogan |
| [FLINK-5937](https://issues.apache.org/jira/browse/FLINK-5937) | Add documentation about the task lifecycle. |  Major | Documentation | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5955](https://issues.apache.org/jira/browse/FLINK-5955) | Merging a list of buffered records will have problem when ObjectReuse is turned on |  Major | Table API & SQL | Shaoxuan Wang | Shaoxuan Wang |
| [FLINK-5864](https://issues.apache.org/jira/browse/FLINK-5864) | CEP: fix duplicate output patterns problem. |  Major | CEP | Kostas Kloudas | Dawid Wysakowicz |
| [FLINK-5965](https://issues.apache.org/jira/browse/FLINK-5965) | Typo on DropWizard wrappers |  Trivial | Documentation | Francisco Sokol |  |
| [FLINK-5645](https://issues.apache.org/jira/browse/FLINK-5645) | IOMetrics transfer through ExecGraph does not work for failed jobs |  Blocker | Metrics, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3679](https://issues.apache.org/jira/browse/FLINK-3679) | Allow Kafka consumer to skip corrupted messages |  Major | DataStream API, Kafka Connector | Jamie Grier | Haohui Mai |
| [FLINK-6002](https://issues.apache.org/jira/browse/FLINK-6002) | Documentation: 'MacOS X' under 'Download and Start Flink' in Quickstart page is not rendered correctly |  Trivial | Documentation | Bowen Li |  |
| [FLINK-5830](https://issues.apache.org/jira/browse/FLINK-5830) | OutOfMemoryError during notify final state in TaskExecutor may cause job stuck |  Major | . | zhijiang | zhijiang |
| [FLINK-5824](https://issues.apache.org/jira/browse/FLINK-5824) | Fix String/byte conversions without explicit encoding |  Blocker | Python API, Queryable State, State Backends, Checkpointing, Webfrontend | Ufuk Celebi | Dawid Wysakowicz |
| [FLINK-5838](https://issues.apache.org/jira/browse/FLINK-5838) | Print shell script usage |  Trivial | Startup Shell Scripts | Greg Hogan | Greg Hogan |
| [FLINK-6023](https://issues.apache.org/jira/browse/FLINK-6023) | Fix Scala snippet into Process Function (Low-level Operations) Doc |  Trivial | Documentation | Mauro Cortellazzi | Mauro Cortellazzi |
| [FLINK-5971](https://issues.apache.org/jira/browse/FLINK-5971) | JobLeaderIdService should time out registered jobs |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-6025](https://issues.apache.org/jira/browse/FLINK-6025) | User code ClassLoader not used when KryoSerializer fallbacks to serialization for copying |  Major | Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6007](https://issues.apache.org/jira/browse/FLINK-6007) | ConcurrentModificationException in WatermarkCallbackService |  Blocker | DataStream API | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5942](https://issues.apache.org/jira/browse/FLINK-5942) | Harden ZooKeeperStateHandleStore to deal with corrupted data |  Major | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5940](https://issues.apache.org/jira/browse/FLINK-5940) | ZooKeeperCompletedCheckpointStore cannot handle broken state handles |  Major | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5949](https://issues.apache.org/jira/browse/FLINK-5949) | Flink on YARN checks for Kerberos credentials for non-Kerberos authentication methods |  Blocker | Security, YARN | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6040](https://issues.apache.org/jira/browse/FLINK-6040) | DataStreamUserDefinedFunctionITCase occasionally fails |  Trivial | Tests | Zhuoluo Yang | Zhuoluo Yang |
| [FLINK-6010](https://issues.apache.org/jira/browse/FLINK-6010) | Documentation: correct IntelliJ IDEA Plugins path in 'Installing the Scala plugin' section |  Major | Documentation | Bowen Li |  |
| [FLINK-6001](https://issues.apache.org/jira/browse/FLINK-6001) | NPE on TumblingEventTimeWindows with ContinuousEventTimeTrigger and allowedLateness |  Critical | DataStream API, Streaming | Vladislav Pernin | Aljoscha Krettek |
| [FLINK-6061](https://issues.apache.org/jira/browse/FLINK-6061) | NPE on TypeSerializer.serialize with a RocksDBStateBackend calling entries() on a keyed state in the open() function |  Major | DataStream API, State Backends, Checkpointing, Streaming | Vladislav Pernin | Stefan Richter |
| [FLINK-6044](https://issues.apache.org/jira/browse/FLINK-6044) | TypeSerializerSerializationProxy.read() doesn't verify the read buffer length |  Critical | Type Serialization System | Avihai Berkovitz | Stefan Richter |
| [FLINK-6051](https://issues.apache.org/jira/browse/FLINK-6051) | Wrong metric scope names in documentation |  Minor | Documentation, Metrics | Joshua Griffith |  |
| [FLINK-5701](https://issues.apache.org/jira/browse/FLINK-5701) | FlinkKafkaProducer should check asyncException on checkpoints |  Critical | Kafka Connector, Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6032](https://issues.apache.org/jira/browse/FLINK-6032) | CEP-Clean up the operator state when not needed. |  Major | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5962](https://issues.apache.org/jira/browse/FLINK-5962) | Cancel checkpoint canceller tasks in CheckpointCoordinator |  Critical | State Backends, Checkpointing | Till Rohrmann | Stephan Ewen |
| [FLINK-5650](https://issues.apache.org/jira/browse/FLINK-5650) | Flink-python tests executing cost too long time |  Critical | Python API, Tests | shijinkui | Chesnay Schepler |
| [FLINK-5932](https://issues.apache.org/jira/browse/FLINK-5932) | Order of legacy vs new state initialization in the AbstractStreamOperator. |  Major | DataStream API | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5985](https://issues.apache.org/jira/browse/FLINK-5985) | Flink treats every task as stateful (making topology changes impossible) |  Critical | State Backends, Checkpointing | Gyula Fora | Stefan Richter |
| [FLINK-5808](https://issues.apache.org/jira/browse/FLINK-5808) | Missing verification for setParallelism and setMaxParallelism |  Blocker | DataStream API | Aljoscha Krettek |  |
| [FLINK-6084](https://issues.apache.org/jira/browse/FLINK-6084) | Cassandra connector does not declare all dependencies |  Critical | Cassandra Connector | Robert Metzger | Robert Metzger |
| [FLINK-6000](https://issues.apache.org/jira/browse/FLINK-6000) | Can not start HA cluster with start-cluster.sh |  Major | Startup Shell Scripts | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-6080](https://issues.apache.org/jira/browse/FLINK-6080) | Unclosed ObjectOutputStream in NFA#serialize() |  Minor | CEP | Ted Yu | Dawid Wysakowicz |
| [FLINK-6170](https://issues.apache.org/jira/browse/FLINK-6170) | Some checkpoint metrics rely on latest stat snapshot |  Major | Metrics, State Backends, Checkpointing, Webfrontend | Ufuk Celebi | Ufuk Celebi |
| [FLINK-6129](https://issues.apache.org/jira/browse/FLINK-6129) | MetricRegistry does not stop query actor |  Major | Metrics | Till Rohrmann | Till Rohrmann |
| [FLINK-6133](https://issues.apache.org/jira/browse/FLINK-6133) | fix build status in README.md |  Minor | Build System | Bowen Li | Bowen Li |
| [FLINK-5972](https://issues.apache.org/jira/browse/FLINK-5972) | Don't allow shrinking merging windows |  Blocker | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-6182](https://issues.apache.org/jira/browse/FLINK-6182) | Fix possible NPE in SourceStreamTask |  Minor | Local Runtime | Ufuk Celebi |  |
| [FLINK-5890](https://issues.apache.org/jira/browse/FLINK-5890) | GatherSumApply broken when object reuse enabled |  Major | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-6194](https://issues.apache.org/jira/browse/FLINK-6194) | More broken links in docs |  Major | . | Patrick Lucas | Patrick Lucas |
| [FLINK-6197](https://issues.apache.org/jira/browse/FLINK-6197) | Add support for iterative conditions. |  Major | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-6207](https://issues.apache.org/jira/browse/FLINK-6207) | Duplicate type serializers for async snapshots of CopyOnWriteStateTable |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5587](https://issues.apache.org/jira/browse/FLINK-5587) | AsyncWaitOperatorTest timed out on Travis |  Major | DataStream API, Local Runtime | Ufuk Celebi |  |
| [FLINK-5923](https://issues.apache.org/jira/browse/FLINK-5923) | Test instability in SavepointITCase testTriggerSavepointAndResume |  Major | Tests | Ufuk Celebi | Ufuk Celebi |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5457](https://issues.apache.org/jira/browse/FLINK-5457) | Create documentation for Asynchronous I/O |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-4692](https://issues.apache.org/jira/browse/FLINK-4692) | Add tumbling group-windows for batch tables |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-4959](https://issues.apache.org/jira/browse/FLINK-4959) | Write Documentation for ProcessFunction |  Critical | Streaming | Aljoscha Krettek | Stephan Ewen |
| [FLINK-5268](https://issues.apache.org/jira/browse/FLINK-5268) | Split TableProgramsTestBase into TableProgramsCollectionTestBase and TableProgramsClusterTestBase |  Minor | Table API & SQL | Fabian Hueske |  |
| [FLINK-5555](https://issues.apache.org/jira/browse/FLINK-5555) | Add documentation about debugging watermarks |  Major | Documentation | Robert Metzger | Robert Metzger |
| [FLINK-5417](https://issues.apache.org/jira/browse/FLINK-5417) | Fix the wrong config file name |  Trivial | Documentation | Tao Wang |  |
| [FLINK-4693](https://issues.apache.org/jira/browse/FLINK-4693) | Add session group-windows for batch tables |  Major | Table API & SQL | Timo Walther | sunjincheng |
| [FLINK-5459](https://issues.apache.org/jira/browse/FLINK-5459) | Add documentation how to debug classloading issues |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-5454](https://issues.apache.org/jira/browse/FLINK-5454) | Add Documentation about how to tune Checkpointing for large state |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-4994](https://issues.apache.org/jira/browse/FLINK-4994) | Don't Clear Trigger State and Merging Window Set When Purging |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5529](https://issues.apache.org/jira/browse/FLINK-5529) | Improve / extends windowing documentation |  Major | Documentation | Stephan Ewen | Kostas Kloudas |
| [FLINK-5456](https://issues.apache.org/jira/browse/FLINK-5456) | Add docs about new state and checkpointing interfaces |  Major | Documentation | Stephan Ewen | David Anderson |
| [FLINK-5474](https://issues.apache.org/jira/browse/FLINK-5474) | Extend DC/OS documentation |  Minor | Mesos | Till Rohrmann | Till Rohrmann |
| [FLINK-5494](https://issues.apache.org/jira/browse/FLINK-5494) | Improve Mesos documentation |  Major | Mesos | Till Rohrmann | Till Rohrmann |
| [FLINK-5618](https://issues.apache.org/jira/browse/FLINK-5618) | Add queryable state documentation |  Major | Documentation | Ufuk Celebi |  |
| [FLINK-5729](https://issues.apache.org/jira/browse/FLINK-5729) | add hostname option in SocketWindowWordCount example to be more convenient |  Minor | Examples | Tao Wang |  |
| [FLINK-5566](https://issues.apache.org/jira/browse/FLINK-5566) | Introduce structure to hold table and column level statistics |  Major | Table API & SQL | Kurt Young | jingzhang |
| [FLINK-5239](https://issues.apache.org/jira/browse/FLINK-5239) | Properly unpack thrown exceptions in RPC methods |  Major | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-5825](https://issues.apache.org/jira/browse/FLINK-5825) | In yarn mode, a small pic can not be loaded |  Minor | Webfrontend, YARN | Tao Wang |  |
| [FLINK-5640](https://issues.apache.org/jira/browse/FLINK-5640) | configure the explicit Unit Test file suffix |  Major | Tests | shijinkui | shijinkui |
| [FLINK-5723](https://issues.apache.org/jira/browse/FLINK-5723) | Use "Used" instead of "Initial" to make taskmanager tag more readable |  Trivial | Webfrontend | Tao Wang |  |
| [FLINK-5821](https://issues.apache.org/jira/browse/FLINK-5821) | Create StateBackend root interface |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-5795](https://issues.apache.org/jira/browse/FLINK-5795) | Improve UDF&UDTF to support constructor with parameter |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-5716](https://issues.apache.org/jira/browse/FLINK-5716) | Make streaming SourceContexts aware of source idleness |  Major | DataStream API, Streaming | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-5845](https://issues.apache.org/jira/browse/FLINK-5845) | CEP: unify key and non-keyed operators |  Major | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5799](https://issues.apache.org/jira/browse/FLINK-5799) | Let RpcService.scheduleRunnable return ScheduledFuture |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-5798](https://issues.apache.org/jira/browse/FLINK-5798) | Let the RPCService provide a ScheduledExecutorService |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-5822](https://issues.apache.org/jira/browse/FLINK-5822) | Make Checkpoint Coordinator aware of State Backend |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-5897](https://issues.apache.org/jira/browse/FLINK-5897) | Untie Checkpoint Externalization from FileSystems |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-5133](https://issues.apache.org/jira/browse/FLINK-5133) | Support to set resource for operator in DataStream and DataSet |  Major | DataSet API, DataStream API | zhijiang | zhijiang |
| [FLINK-5501](https://issues.apache.org/jira/browse/FLINK-5501) | Determine whether the job starts from last JobManager failure |  Major | JobManager | zhijiang | shuai.xu |
| [FLINK-5794](https://issues.apache.org/jira/browse/FLINK-5794) | update the documentation  about “UDF/UDTF"  support have parameters constructor. |  Major | . | sunjincheng | sunjincheng |
| [FLINK-5916](https://issues.apache.org/jira/browse/FLINK-5916) | make env.java.opts.jobmanager and env.java.opts.taskmanager working in YARN mode |  Major | YARN | Tao Wang | Tao Wang |
| [FLINK-5963](https://issues.apache.org/jira/browse/FLINK-5963) | Remove preparation mapper of DataSetAggregate |  Minor | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-5135](https://issues.apache.org/jira/browse/FLINK-5135) | ResourceProfile for slot request should be expanded to correspond with ResourceSpec |  Major | JobManager, ResourceManager | zhijiang | zhijiang |
| [FLINK-5881](https://issues.apache.org/jira/browse/FLINK-5881) | ScalarFunction(UDF) should support variable types and variable arguments |  Major | . | Zhuoluo Yang | Zhuoluo Yang |
| [FLINK-5882](https://issues.apache.org/jira/browse/FLINK-5882) | TableFunction (UDTF) should support variable types and variable arguments |  Major | . | Zhuoluo Yang | Zhuoluo Yang |
| [FLINK-5134](https://issues.apache.org/jira/browse/FLINK-5134) | Aggregate ResourceSpec for chained operators when generating job graph |  Major | DataStream API | zhijiang | zhijiang |
| [FLINK-5981](https://issues.apache.org/jira/browse/FLINK-5981) | SSL version and ciper suites cannot be constrained as configured |  Major | Security | Tao Wang | Tao Wang |
| [FLINK-5846](https://issues.apache.org/jira/browse/FLINK-5846) | CEP: make the operators backwards compatible. |  Major | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-6037](https://issues.apache.org/jira/browse/FLINK-6037) | the estimateRowCount method of DataSetCalc didn't work in SQL |  Major | Table API & SQL | jingzhang | jingzhang |
| [FLINK-5658](https://issues.apache.org/jira/browse/FLINK-5658) | Add event time OVER ROWS BETWEEN UNBOUNDED PRECEDING aggregation to SQL |  Major | Table API & SQL | Fabian Hueske | hongyuhong |
| [FLINK-6034](https://issues.apache.org/jira/browse/FLINK-6034) | Add KeyedStateHandle for the snapshots in keyed streams |  Major | State Backends, Checkpointing | Xiaogang Shi | Xiaogang Shi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5378](https://issues.apache.org/jira/browse/FLINK-5378) | Update Scopt version to 3.5.0 |  Trivial | . | Lorenz Bühmann |  |
| [FLINK-6056](https://issues.apache.org/jira/browse/FLINK-6056) | apache-rat exclude flink directory in tools |  Major | Build System | jinkuishi |  |
| [FLINK-5084](https://issues.apache.org/jira/browse/FLINK-5084) | Replace Java Table API integration tests by unit tests |  Minor | Table API & SQL | Fabian Hueske |  |
| [FLINK-4820](https://issues.apache.org/jira/browse/FLINK-4820) | Slf4j / log4j version upgrade to support dynamic change of log levels --\> Make logging framework exchangeable |  Major | Build System | Zhenzhong Xu | Stephan Ewen |
| [FLINK-5074](https://issues.apache.org/jira/browse/FLINK-5074) | Implement a RunningJobRegistry based on Zookeeper |  Major | Cluster Management | shuai.xu | shuai.xu |
| [FLINK-3903](https://issues.apache.org/jira/browse/FLINK-3903) | Homebrew Installation |  Minor | Build System, Documentation | Eron Wright |  |


