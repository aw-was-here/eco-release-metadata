
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

## Release 1.3.0 - 2017-05-31



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6103](https://issues.apache.org/jira/browse/FLINK-6103) | LocalFileSystem rename() uses File.renameTo() |  Major | Local Runtime | Flavio Pompermaier | Flavio Pompermaier |


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
| [FLINK-6165](https://issues.apache.org/jira/browse/FLINK-6165) | Implement internal continuity for looping states. |  Major | CEP | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-5991](https://issues.apache.org/jira/browse/FLINK-5991) | Expose Broadcast Operator State through public APIs |  Major | DataStream API, State Backends, Checkpointing | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6326](https://issues.apache.org/jira/browse/FLINK-6326) | add ProjectMergeRule at logical optimization stage |  Major | Table API & SQL | godfrey he | godfrey he |
| [FLINK-3871](https://issues.apache.org/jira/browse/FLINK-3871) | Add Kafka TableSource with Avro serialization |  Major | Table API & SQL | Fabian Hueske | Timo Walther |
| [FLINK-6390](https://issues.apache.org/jira/browse/FLINK-6390) | Add Trigger Hooks to the Checkpoint Coordinator |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-5090](https://issues.apache.org/jira/browse/FLINK-5090) | Expose optionally detailed metrics about network queue lengths |  Major | Metrics, Network | Stephan Ewen | Stephan Ewen |
| [FLINK-6336](https://issues.apache.org/jira/browse/FLINK-6336) | Placement Constraints for Mesos |  Minor | Mesos | Stephen Gran | Stephen Gran |
| [FLINK-6208](https://issues.apache.org/jira/browse/FLINK-6208) | Implement skip till next match strategy |  Major | CEP | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-5892](https://issues.apache.org/jira/browse/FLINK-5892) | Recover job state at the granularity of operator |  Major | State Backends, Checkpointing | Guowei Ma | Guowei Ma |
| [FLINK-6112](https://issues.apache.org/jira/browse/FLINK-6112) | Support Calcite 1.12's new numerical functions |  Major | Table API & SQL | Tao Meng | Tao Meng |
| [FLINK-6377](https://issues.apache.org/jira/browse/FLINK-6377) | Support map types in the Table / SQL API |  Major | Table API & SQL | Haohui Mai | Haohui Mai |
| [FLINK-4604](https://issues.apache.org/jira/browse/FLINK-4604) | Add support for standard deviation/variance |  Major | Table API & SQL | Timo Walther | Anton Mushin |
| [FLINK-6177](https://issues.apache.org/jira/browse/FLINK-6177) | Add support for "Distributed Cache" in streaming applications |  Major | DataStream API | Zohar Mizrahi | Zohar Mizrahi |
| [FLINK-4821](https://issues.apache.org/jira/browse/FLINK-4821) | Implement rescalable non-partitioned state for Kinesis Connector |  Major | Kinesis Connector | Tzu-Li (Gordon) Tai | Wei-Che Wei |
| [FLINK-6178](https://issues.apache.org/jira/browse/FLINK-6178) | Allow upgrades to state serializers |  Critical | State Backends, Checkpointing, Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6483](https://issues.apache.org/jira/browse/FLINK-6483) | Support time materialization |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-5340](https://issues.apache.org/jira/browse/FLINK-5340) | Add a metric exposing jobs uptimes |  Minor | Core | Dan Bress | Stephan Ewen |


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
| [FLINK-5625](https://issues.apache.org/jira/browse/FLINK-5625) | Let Date format for timestamp-based start position in Kinesis consumer be configurable. |  Major | Kinesis Connector | Tzu-Li (Gordon) Tai | Wei-Che Wei |
| [FLINK-3427](https://issues.apache.org/jira/browse/FLINK-3427) | Add watermark monitoring to JobManager web frontend |  Major | DataStream API, Webfrontend | Robert Metzger |  |
| [FLINK-3360](https://issues.apache.org/jira/browse/FLINK-3360) | Clear up StateBackend, AbstractStateBackend abstractions |  Minor | DataStream API | Gyula Fora |  |
| [FLINK-6254](https://issues.apache.org/jira/browse/FLINK-6254) | Consolidate late data methods on PatternStream and WindowedStream |  Blocker | CEP | Aljoscha Krettek | Kostas Kloudas |
| [FLINK-6267](https://issues.apache.org/jira/browse/FLINK-6267) | Remove the useless import in FlinkRelBuilder |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6086](https://issues.apache.org/jira/browse/FLINK-6086) | Rework PythonSender/-Streamer generics |  Major | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6127](https://issues.apache.org/jira/browse/FLINK-6127) | Add MissingDeprecatedCheck to checkstyle |  Minor | Build System | Ufuk Celebi | Ufuk Celebi |
| [FLINK-6212](https://issues.apache.org/jira/browse/FLINK-6212) | Missing reference to flink-avro dependency |  Minor | Documentation | Omar Erminy |  |
| [FLINK-6223](https://issues.apache.org/jira/browse/FLINK-6223) | Rework PythonPlanBinder generics |  Major | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6229](https://issues.apache.org/jira/browse/FLINK-6229) | Rework setup&configuration of PythonPlanBinder/operators |  Minor | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5516](https://issues.apache.org/jira/browse/FLINK-5516) | Hardcoded paths in flink-python/.../PythonPlanBinder.java |  Major | Python API | Felix seibert | Chesnay Schepler |
| [FLINK-6230](https://issues.apache.org/jira/browse/FLINK-6230) | Make mmap size configurable |  Major | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6270](https://issues.apache.org/jira/browse/FLINK-6270) | Port several network config parameters to ConfigOption |  Minor | Network | Nico Kruber | Nico Kruber |
| [FLINK-6299](https://issues.apache.org/jira/browse/FLINK-6299) | make all IT cases extend from TestLogger |  Minor | Tests | Nico Kruber | Nico Kruber |
| [FLINK-6324](https://issues.apache.org/jira/browse/FLINK-6324) | Refine state access methods in OperatorStateStore |  Major | DataStream API, State Backends, Checkpointing | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6307](https://issues.apache.org/jira/browse/FLINK-6307) | Refactor JDBC tests |  Minor | Batch Connectors and Input/Output Formats, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6339](https://issues.apache.org/jira/browse/FLINK-6339) | Remove useless and unused class ConnectorSource |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-6338](https://issues.apache.org/jira/browse/FLINK-6338) | SimpleStringUtils should be called StringValueUtils |  Trivial | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-6236](https://issues.apache.org/jira/browse/FLINK-6236) | Savepoint page needs to include web console possibility |  Minor | Documentation | Rami |  |
| [FLINK-5952](https://issues.apache.org/jira/browse/FLINK-5952) | JobCancellationWithSavepointHandlersTest uses deprecated JsonNode#getValuesAsText |  Trivial | Tests, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6248](https://issues.apache.org/jira/browse/FLINK-6248) | Make the optional() available to all offered patterns. |  Major | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-4953](https://issues.apache.org/jira/browse/FLINK-4953) | Allow access to "time" in ProcessWindowFunction.Context |  Major | DataStream API | Manu Zhang | Manu Zhang |
| [FLINK-6247](https://issues.apache.org/jira/browse/FLINK-6247) | Build a jar-with-dependencies for flink-table and put it into ./opt |  Major | Build System, Table API & SQL | Fabian Hueske | sunjincheng |
| [FLINK-5975](https://issues.apache.org/jira/browse/FLINK-5975) | Mesos should support adding volumes to launched taskManagers |  Minor | Mesos | Addison Higham | Addison Higham |
| [FLINK-3347](https://issues.apache.org/jira/browse/FLINK-3347) | TaskManager (or its ActorSystem) need to restart in case they notice quarantine |  Critical | Distributed Coordination | Stephan Ewen | Till Rohrmann |
| [FLINK-6337](https://issues.apache.org/jira/browse/FLINK-6337) | Remove the buffer provider from PartitionRequestServerHandler |  Minor | Network | zhijiang | zhijiang |
| [FLINK-5969](https://issues.apache.org/jira/browse/FLINK-5969) | Add savepoint backwards compatibility tests from 1.2 to 1.3 |  Blocker | Tests | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-6334](https://issues.apache.org/jira/browse/FLINK-6334) | Refactoring UDTF interface |  Blocker | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-5741](https://issues.apache.org/jira/browse/FLINK-5741) | Add tests for window function wrappers with RichFunctions |  Blocker | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-6274](https://issues.apache.org/jira/browse/FLINK-6274) | Replace usages of org.codehaus.jackson |  Trivial | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5998](https://issues.apache.org/jira/browse/FLINK-5998) | Un-fat Hadoop from Flink fat jar |  Major | Build System | Robert Metzger | Haohui Mai |
| [FLINK-5974](https://issues.apache.org/jira/browse/FLINK-5974) | Support Mesos DNS |  Major | Cluster Management, Mesos | Eron Wright | Vijay Srinivasaraghavan |
| [FLINK-6443](https://issues.apache.org/jira/browse/FLINK-6443) | Add more doc links in concepts sections |  Minor | Documentation | David Anderson | David Anderson |
| [FLINK-6447](https://issues.apache.org/jira/browse/FLINK-6447) | AWS/EMR docs are out-of-date |  Major | Documentation | David Anderson | David Anderson |
| [FLINK-6459](https://issues.apache.org/jira/browse/FLINK-6459) | Move ACCESS\_CONTROL\_ALLOW\_ORIGIN to JobManagerOptions |  Major | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6164](https://issues.apache.org/jira/browse/FLINK-6164) | Make ProcessWindowFunction a RichFunction |  Blocker | DataStream API | Aljoscha Krettek | Chesnay Schepler |
| [FLINK-5720](https://issues.apache.org/jira/browse/FLINK-5720) | Deprecate "Folding" in all of DataStream API |  Blocker | DataStream API | Aljoscha Krettek | Chesnay Schepler |
| [FLINK-6013](https://issues.apache.org/jira/browse/FLINK-6013) | Add Datadog HTTP metrics reporter |  Critical | Metrics | Bowen Li | Bowen Li |
| [FLINK-6558](https://issues.apache.org/jira/browse/FLINK-6558) | Yarn tests fail on Windows |  Major | Tests, YARN | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6565](https://issues.apache.org/jira/browse/FLINK-6565) | Improve error messages for state restore failures |  Critical | State Backends, Checkpointing | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6566](https://issues.apache.org/jira/browse/FLINK-6566) | Narrow down interface for compatibility hook method in VersionedIOReadableWritable |  Major | Core, Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6554](https://issues.apache.org/jira/browse/FLINK-6554) | CompatibilityResult should contain a notCompatible() option |  Minor | Type Serialization System | Chesnay Schepler | Tzu-Li (Gordon) Tai |
| [FLINK-6552](https://issues.apache.org/jira/browse/FLINK-6552) | Side outputs don't allow differing output types |  Blocker | DataStream API | Chesnay Schepler | Aljoscha Krettek |
| [FLINK-6381](https://issues.apache.org/jira/browse/FLINK-6381) | Unnecessary synchronized object in BucketingSink |  Major | filesystem-connector | mingleizhang | mingleizhang |
| [FLINK-6462](https://issues.apache.org/jira/browse/FLINK-6462) | Add requiresOver interface for  AggregateFunction |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6519](https://issues.apache.org/jira/browse/FLINK-6519) | Integrate BlobStore in HighAvailabilityServices lifecycle management |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-6555](https://issues.apache.org/jira/browse/FLINK-6555) | Generalize ConjunctFuture |  Trivial | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-6601](https://issues.apache.org/jira/browse/FLINK-6601) | Use time indicators in DataStreamLogicalWindowAggregateRule |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-6600](https://issues.apache.org/jira/browse/FLINK-6600) | Add key serializer's config snapshot to KeyedBackendSerializationProxy |  Major | State Backends, Checkpointing | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6596](https://issues.apache.org/jira/browse/FLINK-6596) | Disable javadoc generation in all travis builds |  Trivial | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6288](https://issues.apache.org/jira/browse/FLINK-6288) | FlinkKafkaProducer's custom Partitioner is always invoked with number of partitions of default topic |  Major | Kafka Connector | Tzu-Li (Gordon) Tai | Fang Yong |
| [FLINK-6608](https://issues.apache.org/jira/browse/FLINK-6608) | Relax Kerberos login contexts parsing by trimming whitespaces in contexts list |  Minor | Configuration, Security | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6551](https://issues.apache.org/jira/browse/FLINK-6551) | OutputTag name should not be allowed to be empty |  Major | DataStream API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6482](https://issues.apache.org/jira/browse/FLINK-6482) | Add nested serializers into configuration snapshots of composite serializers |  Blocker | State Backends, Checkpointing, Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6660](https://issues.apache.org/jira/browse/FLINK-6660) | expand the streaming connectors overview page |  Major | Documentation, Streaming Connectors | David Anderson | David Anderson |
| [FLINK-5756](https://issues.apache.org/jira/browse/FLINK-5756) | When there are many values under the same key in ListState, RocksDBStateBackend performances poor |  Major | State Backends, Checkpointing | Syinchwun Leo |  |
| [FLINK-6708](https://issues.apache.org/jira/browse/FLINK-6708) | Don't let the FlinkYarnSessionCli fail if it cannot retrieve the ClusterStatus |  Minor | YARN | Till Rohrmann | Till Rohrmann |
| [FLINK-6653](https://issues.apache.org/jira/browse/FLINK-6653) | Avoid directly serializing AWS's Shard class in Kinesis consumer's checkpoints |  Major | Kinesis Connector | Tzu-Li (Gordon) Tai | Wei-Che Wei |
| [FLINK-6766](https://issues.apache.org/jira/browse/FLINK-6766) | Update documentation with async backends and incremental checkpoints |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-6985](https://issues.apache.org/jira/browse/FLINK-6985) | Remove bugfix version from docs title |  Minor | Documentation | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5883](https://issues.apache.org/jira/browse/FLINK-5883) | Re-adding the Exception-thrown code for ListKeyGroupedIterator when the iterator is requested the second time |  Major | DataSet API | lincoln.lee | lincoln.lee |


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
| [FLINK-6211](https://issues.apache.org/jira/browse/FLINK-6211) | Validation error in Kinesis Consumer when using AT\_TIMESTAMP as start position |  Blocker | Kinesis Connector | Wei-Che Wei | Wei-Che Wei |
| [FLINK-5977](https://issues.apache.org/jira/browse/FLINK-5977) | Rename MAX\_ATTEMPTS\_HISTORY\_SIZE key |  Blocker | JobManager | Chesnay Schepler | Stephan Ewen |
| [FLINK-6205](https://issues.apache.org/jira/browse/FLINK-6205) | Put late elements in side output. |  Major | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-2814](https://issues.apache.org/jira/browse/FLINK-2814) | DeltaIteration: DualInputPlanNode cannot be cast to SingleInputPlanNode |  Major | Optimizer | Greg Hogan | Rekha Joshi |
| [FLINK-6259](https://issues.apache.org/jira/browse/FLINK-6259) | Fix a small spelling error |  Major | Gelly | sunjincheng | sunjincheng |
| [FLINK-6265](https://issues.apache.org/jira/browse/FLINK-6265) | Fix consecutive() for times() pattern. |  Major | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-6246](https://issues.apache.org/jira/browse/FLINK-6246) | Fix generic type of OutputTag in operator Output |  Major | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-6181](https://issues.apache.org/jira/browse/FLINK-6181) | Zookeeper scripts use invalid regex |  Major | Build System, Startup Shell Scripts | Robert Metzger | Robert Metzger |
| [FLINK-6183](https://issues.apache.org/jira/browse/FLINK-6183) | TaskMetricGroup may not be cleanup when Task.run() is never called or exits early |  Blocker | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6203](https://issues.apache.org/jira/browse/FLINK-6203) | DataSet Transformations |  Minor | DataSet API, Documentation | 苏拓 | Chesnay Schepler |
| [FLINK-4848](https://issues.apache.org/jira/browse/FLINK-4848) | keystoreFilePath should be checked against null in SSLUtils#createSSLServerContext |  Minor | Security | Ted Yu | Chesnay Schepler |
| [FLINK-6256](https://issues.apache.org/jira/browse/FLINK-6256) | Fix documentation of ProcessFunction. |  Blocker | Documentation | Kostas Kloudas | Chesnay Schepler |
| [FLINK-6079](https://issues.apache.org/jira/browse/FLINK-6079) | Ineffective null check in FlinkKafkaConsumerBase#open() |  Minor | Kafka Connector | Ted Yu | Chesnay Schepler |
| [FLINK-6279](https://issues.apache.org/jira/browse/FLINK-6279) | the digest of VolcanoRuleMatch matched different table sources with same field names may be same |  Major | Table API & SQL | godfrey he | godfrey he |
| [FLINK-6162](https://issues.apache.org/jira/browse/FLINK-6162) | Fix bug in ByteArrayOutputStreamWithPos#setPosition |  Major | Core | Wenlong Lyu | Wenlong Lyu |
| [FLINK-6282](https://issues.apache.org/jira/browse/FLINK-6282) | Some words was spelled wrong |  Trivial | CEP | Jinjiang Ling |  |
| [FLINK-6298](https://issues.apache.org/jira/browse/FLINK-6298) | Local execution is not setting RuntimeContext for RichOutputFormat |  Major | DataStream API | Mateusz Zakarczemny | Wenlong Lyu |
| [FLINK-6143](https://issues.apache.org/jira/browse/FLINK-6143) | Unprotected access to this.flink in LocalExecutor#endSession() |  Minor | Client | Ted Yu | mingleizhang |
| [FLINK-6271](https://issues.apache.org/jira/browse/FLINK-6271) | NumericBetweenParametersProvider NullPointer |  Major | Batch Connectors and Input/Output Formats | Flavio Pompermaier | Flavio Pompermaier |
| [FLINK-5629](https://issues.apache.org/jira/browse/FLINK-5629) | Unclosed RandomAccessFile in StaticFileServerHandler#respondAsLeader() |  Minor | Webfrontend | Ted Yu | Chesnay Schepler |
| [FLINK-6172](https://issues.apache.org/jira/browse/FLINK-6172) | Potentially unclosed RandomAccessFile in HistoryServerStaticFileServerHandler |  Minor | JobManager | Ted Yu | Chesnay Schepler |
| [FLINK-6292](https://issues.apache.org/jira/browse/FLINK-6292) | Travis: transfer.sh not accepting uploads via http:// anymore |  Major | Tests | Nico Kruber | Nico Kruber |
| [FLINK-6317](https://issues.apache.org/jira/browse/FLINK-6317) | History server - wrong default directory |  Minor | History Server | Lorenz Bühmann |  |
| [FLINK-6313](https://issues.apache.org/jira/browse/FLINK-6313) | Some words was spelled wrong and incorrect LOG.error without print |  Trivial | Queryable State | mingleizhang | mingleizhang |
| [FLINK-6104](https://issues.apache.org/jira/browse/FLINK-6104) | Resource leak in ListViaRangeSpeedMiniBenchmark |  Minor | State Backends, Checkpointing | Ted Yu | mingleizhang |
| [FLINK-6286](https://issues.apache.org/jira/browse/FLINK-6286) | hbase command not found error |  Minor | Batch Connectors and Input/Output Formats, Startup Shell Scripts | Jinjiang Ling | Jinjiang Ling |
| [FLINK-6300](https://issues.apache.org/jira/browse/FLINK-6300) | PID1 of docker images does not behave correctly |  Minor | Docker | kathleen sharp | Patrick Lucas |
| [FLINK-5904](https://issues.apache.org/jira/browse/FLINK-5904) | jobmanager.heap.mb and taskmanager.heap.mb not work in YARN mode |  Major | YARN | Tao Wang | Tao Wang |
| [FLINK-6327](https://issues.apache.org/jira/browse/FLINK-6327) | Bug in CommonCalc's estimateRowCount() method |  Major | Table API & SQL | godfrey he | godfrey he |
| [FLINK-5646](https://issues.apache.org/jira/browse/FLINK-5646) | REST api documentation missing details on jar upload |  Minor | Documentation | Cliff Resnick |  |
| [FLINK-5481](https://issues.apache.org/jira/browse/FLINK-5481) | Simplify Row creation |  Trivial | DataSet API, Table API & SQL | Anton Solovev | Anton Solovev |
| [FLINK-6311](https://issues.apache.org/jira/browse/FLINK-6311) | NPE in FlinkKinesisConsumer if source was closed before run |  Major | Kinesis Connector | Tzu-Li (Gordon) Tai | mingleizhang |
| [FLINK-6290](https://issues.apache.org/jira/browse/FLINK-6290) | SharedBuffer is improperly released when multiple edges between entries |  Critical | CEP | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-6210](https://issues.apache.org/jira/browse/FLINK-6210) | RocksDB instance should be closed in ListViaMergeSpeedMiniBenchmark |  Minor | State Backends, Checkpointing | Ted Yu | Fang Yong |
| [FLINK-5623](https://issues.apache.org/jira/browse/FLINK-5623) | TempBarrier dam has been closed |  Major | Local Runtime | Greg Hogan | Greg Hogan |
| [FLINK-6368](https://issues.apache.org/jira/browse/FLINK-6368) | Grouping keys in stream aggregations have wrong order |  Major | Table API & SQL | Timo Walther | Xingcan Cui |
| [FLINK-6356](https://issues.apache.org/jira/browse/FLINK-6356) | Make times() eager and enable allowing combinations. |  Major | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-6384](https://issues.apache.org/jira/browse/FLINK-6384) | PythonStreamer does not close python processes |  Major | Python API | Till Rohrmann | Till Rohrmann |
| [FLINK-6176](https://issues.apache.org/jira/browse/FLINK-6176) | Add JARs to CLASSPATH deterministically |  Major | Core | Scott Kidder | Greg Hogan |
| [FLINK-6404](https://issues.apache.org/jira/browse/FLINK-6404) | Ensure PendingCheckpoint is registered when calling Checkpoint Hooks |  Minor | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-6400](https://issues.apache.org/jira/browse/FLINK-6400) | Lack of protection accessing masterHooks in CheckpointCoordinator#triggerCheckpoint |  Minor | . | Ted Yu | Stephan Ewen |
| [FLINK-6287](https://issues.apache.org/jira/browse/FLINK-6287) | Flakey JobManagerRegistrationTest |  Major | JobManager, Tests | Nico Kruber | Till Rohrmann |
| [FLINK-6386](https://issues.apache.org/jira/browse/FLINK-6386) | Missing bracket in 'Compiler Limitation' section |  Trivial | Documentation | Bowen Li | Bowen Li |
| [FLINK-6293](https://issues.apache.org/jira/browse/FLINK-6293) | Flakey JobManagerITCase |  Critical | JobManager, Tests | Nico Kruber | Till Rohrmann |
| [FLINK-6411](https://issues.apache.org/jira/browse/FLINK-6411) | YarnApplicationMasterRunner should not interfere with RunningJobsRegistry |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-6398](https://issues.apache.org/jira/browse/FLINK-6398) | RowSerializer's duplicate should always return a new instance |  Major | Core | Kurt Young | Kurt Young |
| [FLINK-6341](https://issues.apache.org/jira/browse/FLINK-6341) | JobManager can go to definite message sending loop when TaskManager registered |  Major | JobManager | Tao Wang | Tao Wang |
| [FLINK-6059](https://issues.apache.org/jira/browse/FLINK-6059) | Reject DataSet\<Row\> and DataStream\<Row\> without RowTypeInformation |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-6409](https://issues.apache.org/jira/browse/FLINK-6409) | TUMBLE/HOP/SESSION\_START/END do not resolve time field correctly |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-2067](https://issues.apache.org/jira/browse/FLINK-2067) | Chained streaming operators should not throw chained exceptions |  Major | DataStream API | Stephan Ewen | Stephan Ewen |
| [FLINK-6415](https://issues.apache.org/jira/browse/FLINK-6415) | Make sure core Flink artifacts have no specific logger dependency |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-6427](https://issues.apache.org/jira/browse/FLINK-6427) | BucketingSink does not sync file length in case of cancel |  Blocker | Streaming Connectors | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5994](https://issues.apache.org/jira/browse/FLINK-5994) | Add Janino to flink-table JAR file |  Major | Table API & SQL | Timo Walther | sunjincheng |
| [FLINK-6312](https://issues.apache.org/jira/browse/FLINK-6312) | Update curator version to 2.12.0 |  Major | JobManager | Tao Wang | Tao Wang |
| [FLINK-5933](https://issues.apache.org/jira/browse/FLINK-5933) | Allow Evictor for merging windows |  Major | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-6295](https://issues.apache.org/jira/browse/FLINK-6295) | Update suspended ExecutionGraph to lower latency |  Major | Webfrontend | Tao Wang | Tao Wang |
| [FLINK-6445](https://issues.apache.org/jira/browse/FLINK-6445) | Fix NullPointerException in CEP pattern without condition |  Blocker | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-6217](https://issues.apache.org/jira/browse/FLINK-6217) | ContaineredTaskManagerParameters sets off heap memory size incorrectly |  Major | YARN | Haohui Mai | Haohui Mai |
| [FLINK-6435](https://issues.apache.org/jira/browse/FLINK-6435) | AsyncWaitOperator does not handle exceptions properly |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-6078](https://issues.apache.org/jira/browse/FLINK-6078) | ZooKeeper based high availability services should not close the underlying CuratorFramework |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-6463](https://issues.apache.org/jira/browse/FLINK-6463) | Throw exception when NOT-NEXT is after OPTIONAL |  Major | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-6401](https://issues.apache.org/jira/browse/FLINK-6401) | RocksDBPerformanceTest.testRocksDbRangeGetPerformance fails on Travis |  Critical | State Backends, Checkpointing, Tests | Till Rohrmann | Stephan Ewen |
| [FLINK-6474](https://issues.apache.org/jira/browse/FLINK-6474) | Potential loss of precision in 32 bit integer multiplication |  Minor | Network | Ted Yu | Ted Yu |
| [FLINK-6394](https://issues.apache.org/jira/browse/FLINK-6394) | GroupCombine reuses instances even though object reuse is disabled |  Critical | DataSet API | Jaromir Vanek | Kurt Young |
| [FLINK-6506](https://issues.apache.org/jira/browse/FLINK-6506) | Some tests in flink-tests exceed the memory resources in containerized Travis builds |  Major | Build System | Stefan Richter | Stefan Richter |
| [FLINK-6436](https://issues.apache.org/jira/browse/FLINK-6436) | Bug in CommonCorrelate's generateCollector method when using udtf with udf |  Major | Table API & SQL | godfrey he | godfrey he |
| [FLINK-6479](https://issues.apache.org/jira/browse/FLINK-6479) | Fix IndexOutOfBoundsException bug |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-5070](https://issues.apache.org/jira/browse/FLINK-5070) | Unable to use Scala's BeanProperty with classes |  Major | Core, Scala API, Type Serialization System | Jakub Nowacki | Timo Walther |
| [FLINK-6396](https://issues.apache.org/jira/browse/FLINK-6396) | FsSavepointStreamFactoryTest fails on Windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6509](https://issues.apache.org/jira/browse/FLINK-6509) | TestingListener might miss JobLeader notifications |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-6330](https://issues.apache.org/jira/browse/FLINK-6330) | Improve Docker documentation |  Major | Docker | Patrick Lucas | Patrick Lucas |
| [FLINK-5165](https://issues.apache.org/jira/browse/FLINK-5165) | Checkpointing tests using FsStatebackend fail on Windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6531](https://issues.apache.org/jira/browse/FLINK-6531) | Deserialize checkpoint hooks with user classloader |  Blocker | State Backends, Checkpointing | Eron Wright | Eron Wright |
| [FLINK-6508](https://issues.apache.org/jira/browse/FLINK-6508) | Include license files of packaged dependencies |  Blocker | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-6515](https://issues.apache.org/jira/browse/FLINK-6515) | KafkaConsumer checkpointing fails because of ClassLoader issues |  Blocker | Kafka Connector | Aljoscha Krettek | Stephan Ewen |
| [FLINK-6501](https://issues.apache.org/jira/browse/FLINK-6501) | Make sure NOTICE files are bundled into shaded JAR files |  Blocker | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-6564](https://issues.apache.org/jira/browse/FLINK-6564) | Build fails on file systems that do not distinguish between upper and lower case |  Blocker | Build System | Fabian Hueske | Fabian Hueske |
| [FLINK-6562](https://issues.apache.org/jira/browse/FLINK-6562) | Support implicit table references for nested fields in SQL |  Major | Table API & SQL | Haohui Mai | Haohui Mai |
| [FLINK-6561](https://issues.apache.org/jira/browse/FLINK-6561) | GlobFilePathFilterTest#testExcludeFilenameWithStart fails on Windows |  Trivial | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6548](https://issues.apache.org/jira/browse/FLINK-6548) | AvroOutputFormatTest fails on Windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5101](https://issues.apache.org/jira/browse/FLINK-5101) | Test CassandraConnectorITCase instable |  Major | Cassandra Connector | Stefan Richter | Chesnay Schepler |
| [FLINK-6530](https://issues.apache.org/jira/browse/FLINK-6530) | Unclosed Response in DatadogHttpClient#validateApiKey() |  Minor | . | Ted Yu | Chesnay Schepler |
| [FLINK-6397](https://issues.apache.org/jira/browse/FLINK-6397) | MultipleProgramsTestBase does not reset ContextEnvironment |  Critical | Tests | Chesnay Schepler | Biao Liu |
| [FLINK-6520](https://issues.apache.org/jira/browse/FLINK-6520) | FlinkKafkaConsumer09+ does not overwrite props to disable auto commit offsets when commit mode is OffsetCommitMode.ON\_CHECKPOINTS |  Major | Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6514](https://issues.apache.org/jira/browse/FLINK-6514) | Cannot start Flink Cluster in standalone mode |  Blocker | Build System, Cluster Management | Aljoscha Krettek | Stephan Ewen |
| [FLINK-6517](https://issues.apache.org/jira/browse/FLINK-6517) | Support multiple consecutive windows |  Critical | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-6579](https://issues.apache.org/jira/browse/FLINK-6579) | Add proper support for BasicArrayTypeInfo |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-6580](https://issues.apache.org/jira/browse/FLINK-6580) | Flink on YARN doesnt start with default parameters |  Blocker | YARN | Robert Metzger | Robert Metzger |
| [FLINK-6593](https://issues.apache.org/jira/browse/FLINK-6593) | Fix Bug in ProctimeAttribute or RowtimeAttribute with CodeGenerator |  Major | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-6581](https://issues.apache.org/jira/browse/FLINK-6581) | Dynamic property parsing broken for YARN |  Major | YARN | Till Rohrmann | Till Rohrmann |
| [FLINK-6284](https://issues.apache.org/jira/browse/FLINK-6284) | Incorrect sorting of completed checkpoints in ZooKeeperCompletedCheckpointStore |  Blocker | State Backends, Checkpointing | Xiaogang Shi | Till Rohrmann |
| [FLINK-6587](https://issues.apache.org/jira/browse/FLINK-6587) | Java Table API cannot parse function names starting with keywords |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-6604](https://issues.apache.org/jira/browse/FLINK-6604) | Remove Java Serialization from the CEP library. |  Major | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-6578](https://issues.apache.org/jira/browse/FLINK-6578) | SharedBuffer creates self-loops when having elements with same value/timestamp. |  Blocker | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-6371](https://issues.apache.org/jira/browse/FLINK-6371) | Return matched patterns as Map\<String, List\<T\>\> instead of Map\<String, T\> |  Major | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-6536](https://issues.apache.org/jira/browse/FLINK-6536) | Improve error message in SharedBuffer::put() |  Minor | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-6598](https://issues.apache.org/jira/browse/FLINK-6598) | Remove useless param rowRelDataType of DataStreamGroupAggregate. |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6583](https://issues.apache.org/jira/browse/FLINK-6583) | Enable QueryConfig in count base GroupWindow |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6609](https://issues.apache.org/jira/browse/FLINK-6609) | Wrong version assignment when multiple TAKEs transitions |  Blocker | CEP | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-6031](https://issues.apache.org/jira/browse/FLINK-6031) | Add parameter for per job yarn clusters to control whether the user code jar is included into the system classloader. |  Critical | YARN | Robert Metzger | Chesnay Schepler |
| [FLINK-6416](https://issues.apache.org/jira/browse/FLINK-6416) | Potential divide by zero issue in InputGateMetrics#refreshAndGetAvg() |  Minor | Metrics, Network | Ted Yu | Chesnay Schepler |
| [FLINK-6440](https://issues.apache.org/jira/browse/FLINK-6440) | Noisy logs from metric fetcher |  Critical | Webfrontend | Stephan Ewen | Chesnay Schepler |
| [FLINK-6585](https://issues.apache.org/jira/browse/FLINK-6585) | Table examples are not runnable in IDE |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-6614](https://issues.apache.org/jira/browse/FLINK-6614) | Applying function on window auxiliary function fails |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-6582](https://issues.apache.org/jira/browse/FLINK-6582) | Project from maven archetype is not buildable by default due to ${scala.binary.version} |  Major | Build System, Quickstarts | Dawid Wysakowicz | Greg Hogan |
| [FLINK-6612](https://issues.apache.org/jira/browse/FLINK-6612) | ZooKeeperStateHandleStore does not guard against concurrent delete operations |  Blocker | Distributed Coordination, State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-6574](https://issues.apache.org/jira/browse/FLINK-6574) | Support nested catalogs in ExternalCatalog |  Critical | Table API & SQL | Haohui Mai | Haohui Mai |
| [FLINK-6606](https://issues.apache.org/jira/browse/FLINK-6606) | Create checkpoint hook with user classloader |  Blocker | State Backends, Checkpointing | Eron Wright | Eron Wright |
| [FLINK-6634](https://issues.apache.org/jira/browse/FLINK-6634) | NFA serializer does not serialize the ComputationState counter. |  Major | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-6439](https://issues.apache.org/jira/browse/FLINK-6439) | Unclosed InputStream in OperatorSnapshotUtil#readStateHandle() |  Minor | State Backends, Checkpointing | Ted Yu | Fang Yong |
| [FLINK-6586](https://issues.apache.org/jira/browse/FLINK-6586) | InputGateMetrics#refreshAndGetMin returns Integer.MAX\_VALUE for local channels |  Trivial | Metrics, Network | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6639](https://issues.apache.org/jira/browse/FLINK-6639) | Java/Scala code tabs broken in CEP docs |  Major | CEP, Documentation | David Anderson | David Anderson |
| [FLINK-5636](https://issues.apache.org/jira/browse/FLINK-5636) | IO Metric for StreamTwoInputProcessor |  Major | DataStream API, Metrics | david.wang | Chesnay Schepler |
| [FLINK-6644](https://issues.apache.org/jira/browse/FLINK-6644) | Don't register HUP unix signal handler on Windows |  Major | Local Runtime | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6628](https://issues.apache.org/jira/browse/FLINK-6628) | Cannot start taskmanager with cygwin in directory containing spaces |  Major | Startup Shell Scripts | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6651](https://issues.apache.org/jira/browse/FLINK-6651) | Clearing registeredStates map should be protected in SharedStateRegistry#clear |  Minor | . | Ted Yu | Stefan Richter |
| [FLINK-6635](https://issues.apache.org/jira/browse/FLINK-6635) | ClientConnectionTest is broken because the ClusterClient lazily connects to the JobManager |  Minor | Client, Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-6629](https://issues.apache.org/jira/browse/FLINK-6629) | ClusterClient cannot submit jobs to HA cluster if address not set in configuration |  Blocker | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-6641](https://issues.apache.org/jira/browse/FLINK-6641) | HA recovery on YARN: ClusterClient calls HighAvailabilityServices#closeAndCleanupAll |  Blocker | Distributed Coordination, YARN | Robert Metzger | Till Rohrmann |
| [FLINK-6656](https://issues.apache.org/jira/browse/FLINK-6656) | Migrate CEP PriorityQueue to MapState |  Major | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-6671](https://issues.apache.org/jira/browse/FLINK-6671) | RocksDBStateBackendTest.testCancelRunningSnapshot unstable |  Critical | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-6328](https://issues.apache.org/jira/browse/FLINK-6328) | Savepoints must not be counted as retained checkpoints |  Blocker | State Backends, Checkpointing | Stephan Ewen | Till Rohrmann |
| [FLINK-6662](https://issues.apache.org/jira/browse/FLINK-6662) | ClassNotFoundException: o.a.f.r.j.t.JobSnapshottingSettings recovering job |  Major | JobManager, Mesos, State Backends, Checkpointing | Jared Stehler | Till Rohrmann |
| [FLINK-6714](https://issues.apache.org/jira/browse/FLINK-6714) | Operator state backend should set user classloader as context classloader when snapshotting |  Blocker | State Backends, Checkpointing | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6646](https://issues.apache.org/jira/browse/FLINK-6646) | YARN session doesn't work with HA |  Blocker | YARN | Robert Metzger | Till Rohrmann |
| [FLINK-6704](https://issues.apache.org/jira/browse/FLINK-6704) | Cannot disable YARN user jar inclusion |  Minor | YARN | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6702](https://issues.apache.org/jira/browse/FLINK-6702) | SIGABRT after CEPOperatorTest#testCEPOperatorSerializationWRocksDB() during GC |  Major | CEP, Tests | Nico Kruber | Nico Kruber |
| [FLINK-6753](https://issues.apache.org/jira/browse/FLINK-6753) | Flaky SqlITCase |  Major | Table API & SQL, Tests | Chesnay Schepler | Timo Walther |
| [FLINK-7039](https://issues.apache.org/jira/browse/FLINK-7039) | Increase forkCountTestPackage for sudo-enabled TravisCI |  Trivial | Build System | Greg Hogan | Greg Hogan |
| [FLINK-6412](https://issues.apache.org/jira/browse/FLINK-6412) | Stream has already been closed during job cancel |  Major | State Backends, Checkpointing | Andrey | Stefan Richter |
| [FLINK-7176](https://issues.apache.org/jira/browse/FLINK-7176) | Failed builds (due to compilation) don't upload logs |  Major | Travis | Chesnay Schepler | Chesnay Schepler |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5587](https://issues.apache.org/jira/browse/FLINK-5587) | AsyncWaitOperatorTest timed out on Travis |  Major | DataStream API, Local Runtime | Ufuk Celebi |  |
| [FLINK-5923](https://issues.apache.org/jira/browse/FLINK-5923) | Test instability in SavepointITCase testTriggerSavepointAndResume |  Major | Tests | Ufuk Celebi | Ufuk Celebi |
| [FLINK-6471](https://issues.apache.org/jira/browse/FLINK-6471) | RocksDBStateBackendTest#testCancelRunningSnapshot sometimes fails |  Minor | . | Ted Yu | Stefan Richter |
| [FLINK-6175](https://issues.apache.org/jira/browse/FLINK-6175) | HistoryServerTest.testFullArchiveLifecycle fails |  Major | History Server, Tests, Webfrontend | Ufuk Celebi | Chesnay Schepler |


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
| [FLINK-5903](https://issues.apache.org/jira/browse/FLINK-5903) | taskmanager.numberOfTaskSlots and yarn.containers.vcores did not work well in YARN mode |  Major | YARN | Tao Wang | Tao Wang |
| [FLINK-6201](https://issues.apache.org/jira/browse/FLINK-6201) | move python example files from resources to the examples |  Trivial | Examples, Python API | shijinkui | shijinkui |
| [FLINK-5435](https://issues.apache.org/jira/browse/FLINK-5435) | Cleanup the rules introduced by FLINK-5144 when calcite releases 1.12 |  Minor | Table API & SQL | Kurt Young | Kurt Young |
| [FLINK-5545](https://issues.apache.org/jira/browse/FLINK-5545) | Remove FlinkAggregateExpandDistinctAggregatesRule when upgrading to Calcite 1.12 |  Minor | Table API & SQL | Zhenghua Gao | Kurt Young |
| [FLINK-6149](https://issues.apache.org/jira/browse/FLINK-6149) | add additional flink logical relation nodes |  Major | Table API & SQL | Kurt Young | Kurt Young |
| [FLINK-4769](https://issues.apache.org/jira/browse/FLINK-4769) | Migrate Metrics configuration options |  Major | Metrics | Stephan Ewen | Chesnay Schepler |
| [FLINK-6117](https://issues.apache.org/jira/browse/FLINK-6117) | 'zookeeper.sasl.disable'  not takes effet when starting CuratorFramework |  Major | Client, JobManager | CanBin Zheng | CanBin Zheng |
| [FLINK-6155](https://issues.apache.org/jira/browse/FLINK-6155) | Allow to specify endpoint names |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-6107](https://issues.apache.org/jira/browse/FLINK-6107) | Add custom checkstyle for flink-streaming-java |  Major | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-6392](https://issues.apache.org/jira/browse/FLINK-6392) | Change the alias of Window from optional to essential. |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-5810](https://issues.apache.org/jira/browse/FLINK-5810) | Harden SlotManager |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-6340](https://issues.apache.org/jira/browse/FLINK-6340) | Introduce a TerminationFuture for Execution |  Major | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-5869](https://issues.apache.org/jira/browse/FLINK-5869) | ExecutionGraph use FailoverCoordinator to manage the failover of execution vertexes |  Major | JobManager | shuai.xu | shuai.xu |
| [FLINK-6367](https://issues.apache.org/jira/browse/FLINK-6367) | support custom header settings of allow origin |  Major | Webfrontend | shijinkui | shijinkui |
| [FLINK-5915](https://issues.apache.org/jira/browse/FLINK-5915) | Add support for the aggregate on multi fields |  Major | Table API & SQL | Shaoxuan Wang | Shaoxuan Wang |
| [FLINK-6136](https://issues.apache.org/jira/browse/FLINK-6136) | Separate EmbeddedNonHaServices and NonHaServices |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-6470](https://issues.apache.org/jira/browse/FLINK-6470) | Add a utility to parse memory sizes with units |  Minor | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-6190](https://issues.apache.org/jira/browse/FLINK-6190) | Write "Serializer Configurations" metainfo along with state |  Major | State Backends, Checkpointing, Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6191](https://issues.apache.org/jira/browse/FLINK-6191) | Make non-primitive, internal built-in serializers reconfigurable |  Major | Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6425](https://issues.apache.org/jira/browse/FLINK-6425) | Integrate serializer reconfiguration into state restore flow to activate serializer upgrades |  Major | State Backends, Checkpointing | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6475](https://issues.apache.org/jira/browse/FLINK-6475) | Incremental snapshots in RocksDB hold lock during async file upload |  Critical | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-6504](https://issues.apache.org/jira/browse/FLINK-6504) | Lack of synchronization on materializedSstFiles in RocksDBKEyedStateBackend |  Blocker | State Backends, Checkpointing | Stefan Richter | Xiaogang Shi |
| [FLINK-6527](https://issues.apache.org/jira/browse/FLINK-6527) | OperatorSubtaskState has empty implementations of (un)/registerSharedStates |  Blocker | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-6534](https://issues.apache.org/jira/browse/FLINK-6534) | SharedStateRegistry is disposing state handles from main thread |  Blocker | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-6533](https://issues.apache.org/jira/browse/FLINK-6533) | Duplicated registration of new shared state when checkpoint confirmations are still pending |  Blocker | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-6535](https://issues.apache.org/jira/browse/FLINK-6535) | JobID should not be part of the registration key to the SharedStateRegistry |  Blocker | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-6545](https://issues.apache.org/jira/browse/FLINK-6545) | Make incremental checkpoints externalizable |  Blocker | State Backends, Checkpointing | Stefan Richter |  |
| [FLINK-5777](https://issues.apache.org/jira/browse/FLINK-5777) | Pass savepoint information to CheckpointingOperation |  Major | State Backends, Checkpointing | Ufuk Celebi | Ufuk Celebi |
| [FLINK-6020](https://issues.apache.org/jira/browse/FLINK-6020) | Blob Server cannot handle multiple job submits (with same content) parallelly |  Critical | Distributed Coordination | Tao Wang | Till Rohrmann |
| [FLINK-6618](https://issues.apache.org/jira/browse/FLINK-6618) | Fix GroupWindowStringExpressionTest testcase bug |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6633](https://issues.apache.org/jira/browse/FLINK-6633) | Register with shared state registry before adding to CompletedCheckpointStore |  Blocker | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-6640](https://issues.apache.org/jira/browse/FLINK-6640) | Ensure registration of shared state happens before externalizing a checkpoint |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-6632](https://issues.apache.org/jira/browse/FLINK-6632) | Fix parameter case sensitive error for test passing/rejecting filter API |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6450](https://issues.apache.org/jira/browse/FLINK-6450) | Web UI Subtasks view for TaskManagers has a misleading name |  Major | Webfrontend | Stephan Ewen | Chesnay Schepler |
| [FLINK-6451](https://issues.apache.org/jira/browse/FLINK-6451) | Web UI: Rename 'Metrics' view to 'Task Metrics' |  Major | Webfrontend | Stephan Ewen | Chesnay Schepler |
| [FLINK-6448](https://issues.apache.org/jira/browse/FLINK-6448) | Web UI TaskManager view: Rename 'Free Memory' to 'JVM Heap' |  Major | Webfrontend | Stephan Ewen | Chesnay Schepler |
| [FLINK-6650](https://issues.apache.org/jira/browse/FLINK-6650) | Fix Non-windowed group-aggregate error when using append-table mode. |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6736](https://issues.apache.org/jira/browse/FLINK-6736) | Fix UDTF codegen bug when window follow by join( UDTF) |  Major | Table API & SQL | sunjincheng | Timo Walther |
| [FLINK-6737](https://issues.apache.org/jira/browse/FLINK-6737) | Fix over expression parse String error. |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6570](https://issues.apache.org/jira/browse/FLINK-6570) | QueryableStateClient constructor in documentation doesn't match actual signature |  Major | Documentation, Queryable State | Robert Metzger |  |
| [FLINK-6478](https://issues.apache.org/jira/browse/FLINK-6478) | Add documentation on how to upgrade serializers for managed state |  Critical | Documentation | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6198](https://issues.apache.org/jira/browse/FLINK-6198) | Update the documentation of the CEP library to include all the new features. |  Critical | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-6798](https://issues.apache.org/jira/browse/FLINK-6798) | Remove/update documentation about network buffer tuning |  Major | Documentation, Network | Robert Metzger | Nico Kruber |
| [FLINK-6784](https://issues.apache.org/jira/browse/FLINK-6784) | Add some notes about externalized checkpoints and the difference to savepoints |  Major | Documentation, State Backends, Checkpointing | Nico Kruber | Nico Kruber |
| [FLINK-6782](https://issues.apache.org/jira/browse/FLINK-6782) | Update savepoint documentation |  Major | Documentation, State Backends, Checkpointing | Nico Kruber | Nico Kruber |
| [FLINK-5867](https://issues.apache.org/jira/browse/FLINK-5867) | The implementation of RestartPipelinedRegionStrategy |  Major | JobManager | shuai.xu | shuai.xu |
| [FLINK-5868](https://issues.apache.org/jira/browse/FLINK-5868) | Implement a new RestartStrategy that works for the FailoverRegion. |  Major | JobManager | shuai.xu | shuai.xu |
| [FLINK-5866](https://issues.apache.org/jira/browse/FLINK-5866) | The implementation of FailoverRegion. |  Major | JobManager | shuai.xu | shuai.xu |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5378](https://issues.apache.org/jira/browse/FLINK-5378) | Update Scopt version to 3.5.0 |  Trivial | . | Lorenz Bühmann |  |
| [FLINK-6056](https://issues.apache.org/jira/browse/FLINK-6056) | apache-rat exclude flink directory in tools |  Major | Build System | jinkuishi |  |
| [FLINK-6186](https://issues.apache.org/jira/browse/FLINK-6186) | Remove unused import |  Trivial | DataStream API, Scala API | CanBin Zheng | CanBin Zheng |
| [FLINK-6269](https://issues.apache.org/jira/browse/FLINK-6269) | var could be a val |  Trivial | JobManager | CanBin Zheng | CanBin Zheng |
| [FLINK-4644](https://issues.apache.org/jira/browse/FLINK-4644) | Deprecate "flink.base.dir.path" from ConfigConstants |  Minor | Build System | Maximilian Michels | Stephan Ewen |
| [FLINK-4545](https://issues.apache.org/jira/browse/FLINK-4545) | Flink automatically manages TM network buffer |  Critical | Network | Zhenzhong Xu | Nico Kruber |
| [FLINK-5084](https://issues.apache.org/jira/browse/FLINK-5084) | Replace Java Table API integration tests by unit tests |  Minor | Table API & SQL | Fabian Hueske |  |
| [FLINK-4820](https://issues.apache.org/jira/browse/FLINK-4820) | Slf4j / log4j version upgrade to support dynamic change of log levels --\> Make logging framework exchangeable |  Major | Build System | Zhenzhong Xu | Stephan Ewen |
| [FLINK-5074](https://issues.apache.org/jira/browse/FLINK-5074) | Implement a RunningJobRegistry based on Zookeeper |  Major | Cluster Management | shuai.xu | shuai.xu |
| [FLINK-3903](https://issues.apache.org/jira/browse/FLINK-3903) | Homebrew Installation |  Minor | Build System, Documentation | Eron Wright |  |
| [FLINK-4577](https://issues.apache.org/jira/browse/FLINK-4577) | Re-enable transparent reshard handling in Kinesis Consumer |  Major | Kinesis Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |


