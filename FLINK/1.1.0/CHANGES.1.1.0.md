
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

## Release 1.1.0 - 2016-08-04



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3608](https://issues.apache.org/jira/browse/FLINK-3608) | ImmutableSettings error in ElasticsearchSink |  Major | . | Carlos Gonzalez de Zarate |  |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3721](https://issues.apache.org/jira/browse/FLINK-3721) | Min and max accumulators |  Minor | Core | Greg Hogan | Greg Hogan |
| [FLINK-2909](https://issues.apache.org/jira/browse/FLINK-2909) | Gelly Graph Generators |  Major | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-3068](https://issues.apache.org/jira/browse/FLINK-3068) | Add a Table API configuration to TableEnvironment |  Major | Table API & SQL | Timo Walther | Fabian Hueske |
| [FLINK-3786](https://issues.apache.org/jira/browse/FLINK-3786) | Add BigDecimal and BigInteger as Basic types |  Major | Core | Timo Walther | Timo Walther |
| [FLINK-3546](https://issues.apache.org/jira/browse/FLINK-3546) | Streaming Table API |  Major | Table API & SQL | Vasia Kalavri | Vasia Kalavri |
| [FLINK-3780](https://issues.apache.org/jira/browse/FLINK-3780) | Jaccard Similarity |  Major | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-4013](https://issues.apache.org/jira/browse/FLINK-4013) | GraphAlgorithms to simplify directed and undirected graphs |  Minor | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-3311](https://issues.apache.org/jira/browse/FLINK-3311) | Add a connector for streaming data into Cassandra |  Major | Streaming Connectors | Robert Metzger | Andrea Sella |
| [FLINK-3626](https://issues.apache.org/jira/browse/FLINK-3626) | zipWithIndex in Python API |  Minor | Python API | Shannon Quinn |  |
| [FLINK-3872](https://issues.apache.org/jira/browse/FLINK-3872) | Add Kafka TableSource with JSON serialization |  Major | Table API & SQL | Fabian Hueske | Ufuk Celebi |
| [FLINK-3859](https://issues.apache.org/jira/browse/FLINK-3859) | Add BigDecimal/BigInteger support to Table API |  Critical | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-3907](https://issues.apache.org/jira/browse/FLINK-3907) | Directed Clustering Coefficient |  Major | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-3898](https://issues.apache.org/jira/browse/FLINK-3898) | Adamic-Adar Similarity |  Major | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-3879](https://issues.apache.org/jira/browse/FLINK-3879) | Native implementation of HITS algorithm |  Major | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-3034](https://issues.apache.org/jira/browse/FLINK-3034) | Redis SInk Connector |  Minor | Streaming Connectors | Matthias J. Sax | Subhankar Biswas |
| [FLINK-3942](https://issues.apache.org/jira/browse/FLINK-3942) | Add support for INTERSECT |  Minor | Table API & SQL | Fabian Hueske | Jark Wu |
| [FLINK-3943](https://issues.apache.org/jira/browse/FLINK-3943) | Add support for EXCEPT (set minus) |  Minor | Table API & SQL | Fabian Hueske | Ivan Mushketyk |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3535](https://issues.apache.org/jira/browse/FLINK-3535) | Decrease logging verbosity of StackTraceSampleCoordinator |  Minor | Webfrontend | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3559](https://issues.apache.org/jira/browse/FLINK-3559) | Don\'t print pid file check if no active PID |  Trivial | Startup Shell Scripts | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3461](https://issues.apache.org/jira/browse/FLINK-3461) | Remove duplicate condition check in ZooKeeperLeaderElectionService |  Trivial | . | Ufuk Celebi |  |
| [FLINK-2788](https://issues.apache.org/jira/browse/FLINK-2788) | Add type hint with TypeExtactor call on Hint Type |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-3570](https://issues.apache.org/jira/browse/FLINK-3570) | Replace random NIC selection heuristic by InetAddress.getLocalHost |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-3575](https://issues.apache.org/jira/browse/FLINK-3575) | Update Working With State Section in Doc |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3383](https://issues.apache.org/jira/browse/FLINK-3383) | Separate Maven deployment from CI testing |  Critical | Build System, Tests | Maximilian Michels | Maximilian Michels |
| [FLINK-3591](https://issues.apache.org/jira/browse/FLINK-3591) | Replace Quickstart K-Means Example by Streaming Example |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3596](https://issues.apache.org/jira/browse/FLINK-3596) | DataSet RelNode refactoring |  Major | Table API & SQL | Vasia Kalavri | Vasia Kalavri |
| [FLINK-3590](https://issues.apache.org/jira/browse/FLINK-3590) | JDBC Format tests don\'t hide derby logs |  Minor | DataSet API, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3467](https://issues.apache.org/jira/browse/FLINK-3467) | Remove superfluous objects from DataSourceTask.invoke |  Minor | Distributed Coordination | Greg Hogan | Greg Hogan |
| [FLINK-3597](https://issues.apache.org/jira/browse/FLINK-3597) | Table API operator names should reflect relational expression |  Minor | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-3603](https://issues.apache.org/jira/browse/FLINK-3603) | Re-enable Table API explain |  Minor | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-3604](https://issues.apache.org/jira/browse/FLINK-3604) | Enable ignored Table API tests |  Minor | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-3506](https://issues.apache.org/jira/browse/FLINK-3506) | ReduceExpressionsRule does not remove duplicate expression in Filter |  Minor | Table API & SQL | Chengxiang Li |  |
| [FLINK-3503](https://issues.apache.org/jira/browse/FLINK-3503) | ProjectJoinTransposeRule fails to push down project. |  Minor | Table API & SQL | Chengxiang Li | Fabian Hueske |
| [FLINK-3487](https://issues.apache.org/jira/browse/FLINK-3487) | FilterAggregateTransposeRule does not transform logical plan as desired. |  Minor | Table API & SQL | Chengxiang Li |  |
| [FLINK-3407](https://issues.apache.org/jira/browse/FLINK-3407) | Extend TwitterSource with interface StoppableFunction |  Major | Streaming Connectors | Matthias J. Sax | Robert Metzger |
| [FLINK-3115](https://issues.apache.org/jira/browse/FLINK-3115) | Update Elasticsearch connector to 2.X |  Major | Streaming Connectors | Maximilian Michels | Suneel Marthi |
| [FLINK-3658](https://issues.apache.org/jira/browse/FLINK-3658) | Allow the FlinkKafkaProducer to send data to multiple topics |  Major | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-3524](https://issues.apache.org/jira/browse/FLINK-3524) | Provide a JSONDeserialisationSchema in the kafka connector package |  Major | Kafka Connector | Robert Metzger | Chesnay Schepler |
| [FLINK-3623](https://issues.apache.org/jira/browse/FLINK-3623) | Adjust MurmurHash algorithm |  Trivial | Distributed Coordination | Greg Hogan | Greg Hogan |
| [FLINK-3614](https://issues.apache.org/jira/browse/FLINK-3614) | Remove Non-Keyed Window Operator |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3174](https://issues.apache.org/jira/browse/FLINK-3174) | Add merging WindowAssigner |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3637](https://issues.apache.org/jira/browse/FLINK-3637) | Change RollingSink Writer interface to allow wider range of outputs |  Major | Streaming Connectors | Lasse Dalegaard | Lasse Dalegaard |
| [FLINK-3654](https://issues.apache.org/jira/browse/FLINK-3654) | Disable Write-Ahead-Log in RocksDB State |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3634](https://issues.apache.org/jira/browse/FLINK-3634) | Fix documentation for DataSetUtils.zipWithUniqueId() |  Minor | Documentation | Greg Hogan | Greg Hogan |
| [FLINK-3469](https://issues.apache.org/jira/browse/FLINK-3469) | Improve documentation for grouping keys |  Major | Documentation | Greg Hogan | Greg Hogan |
| [FLINK-3541](https://issues.apache.org/jira/browse/FLINK-3541) | Clean up workaround in FlinkKafkaConsumer09 |  Minor | Kafka Connector | Till Rohrmann |  |
| [FLINK-3700](https://issues.apache.org/jira/browse/FLINK-3700) | Replace Guava Preconditions class with Flink Preconditions |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-3589](https://issues.apache.org/jira/browse/FLINK-3589) | Allow setting Operator parallelism to default value |  Minor | Java API | Greg Hogan | Greg Hogan |
| [FLINK-3747](https://issues.apache.org/jira/browse/FLINK-3747) | Consolidate TimestampAssigner Methods in Kafka Consumer |  Blocker | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3375](https://issues.apache.org/jira/browse/FLINK-3375) | Allow Watermark Generation in the Kafka Source |  Major | Kafka Connector | Stephan Ewen | Kostas Kloudas |
| [FLINK-3739](https://issues.apache.org/jira/browse/FLINK-3739) | Add a null literal to Table API |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-3657](https://issues.apache.org/jira/browse/FLINK-3657) | Change access of DataSetUtils.countElements() to \'public\' |  Minor | DataSet API | Suneel Marthi | Suneel Marthi |
| [FLINK-3664](https://issues.apache.org/jira/browse/FLINK-3664) | Create a method to easily Summarize a DataSet |  Major | . | Todd Lisonbee | Todd Lisonbee |
| [FLINK-3770](https://issues.apache.org/jira/browse/FLINK-3770) | Fix TriangleEnumerator performance |  Major | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-3794](https://issues.apache.org/jira/browse/FLINK-3794) | Add checks for unsupported operations in streaming table API |  Major | Table API & SQL | Vasia Kalavri | Vasia Kalavri |
| [FLINK-3560](https://issues.apache.org/jira/browse/FLINK-3560) | Examples shouldn\'t always print usage statement |  Minor | Examples | Till Rohrmann | Till Rohrmann |
| [FLINK-3678](https://issues.apache.org/jira/browse/FLINK-3678) | Make Flink logs directory configurable |  Minor | Startup Shell Scripts | Stefano Baghino | Stefano Baghino |
| [FLINK-3811](https://issues.apache.org/jira/browse/FLINK-3811) | Refactor ExecutionEnvironment in TableEnvironment |  Minor | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-3804](https://issues.apache.org/jira/browse/FLINK-3804) | Update YARN documentation |  Minor | Documentation | Till Rohrmann | Robert Metzger |
| [FLINK-3816](https://issues.apache.org/jira/browse/FLINK-3816) | Replace Guava Preconditions usage in flink-clients |  Trivial | Client | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3815](https://issues.apache.org/jira/browse/FLINK-3815) | Replace Guava Preconditions usage in flink-gelly |  Trivial | Gelly | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3817](https://issues.apache.org/jira/browse/FLINK-3817) | Remove unused Guava dependency from RocksDB StateBackend |  Major | State Backends, Checkpointing | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3818](https://issues.apache.org/jira/browse/FLINK-3818) | Remove Guava dependency from flink-gelly-examples |  Trivial | Gelly | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3819](https://issues.apache.org/jira/browse/FLINK-3819) | Replace Guava Preconditions usage in flink-gelly-scala |  Trivial | Gelly | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3428](https://issues.apache.org/jira/browse/FLINK-3428) | Add fixed time trailing timestamp/watermark extractor |  Major | . | Robert Metzger | Kostas Kloudas |
| [FLINK-1991](https://issues.apache.org/jira/browse/FLINK-1991) | Return Table as DataSet\<Tuple\> |  Major | Table API & SQL | Fabian Hueske | Timo Walther |
| [FLINK-3876](https://issues.apache.org/jira/browse/FLINK-3876) | Improve documentation of Scala Shell |  Major | Documentation, Scala Shell | Maximilian Michels | Maximilian Michels |
| [FLINK-3880](https://issues.apache.org/jira/browse/FLINK-3880) | Improve performance of Accumulator map |  Minor | . | Ken Krugler | Maximilian Michels |
| [FLINK-3776](https://issues.apache.org/jira/browse/FLINK-3776) | Flink Scala shell does not allow to set configuration for local execution |  Minor | Scala Shell | Till Rohrmann | Dongwon Kim |
| [FLINK-3912](https://issues.apache.org/jira/browse/FLINK-3912) | Typos in Batch Scala API Documentation |  Trivial | DataSet API, Documentation, Scala API | Ignacio N. Lucero Ascencio |  |
| [FLINK-3900](https://issues.apache.org/jira/browse/FLINK-3900) | Set nullCheck=true as default in TableConfig |  Minor | Table API & SQL | Flavio Pompermaier | Rekha Joshi |
| [FLINK-3913](https://issues.apache.org/jira/browse/FLINK-3913) | Clean up documentation typos |  Trivial | Documentation | Mark Reddy | Mark Reddy |
| [FLINK-3507](https://issues.apache.org/jira/browse/FLINK-3507) | PruneEmptyRules does not prune empty node as expected. |  Minor | Table API & SQL | Chengxiang Li |  |
| [FLINK-2829](https://issues.apache.org/jira/browse/FLINK-2829) | Confusing error message when Flink cannot create enough task threads |  Trivial | Distributed Coordination, JobManager | Gyula Fora | Rekha Joshi |
| [FLINK-3887](https://issues.apache.org/jira/browse/FLINK-3887) | Improve dependency management for building docs |  Major | Documentation | Maximilian Michels | Maximilian Michels |
| [FLINK-3607](https://issues.apache.org/jira/browse/FLINK-3607) | Decrease default forkCount for tests |  Major | Build System | Maximilian Michels | Maximilian Michels |
| [FLINK-3979](https://issues.apache.org/jira/browse/FLINK-3979) | [documentation]add missed import classes in run\_example\_quickstart |  Major | Documentation | Jia Zhai |  |
| [FLINK-3978](https://issues.apache.org/jira/browse/FLINK-3978) | Add hasBroadcastVariable method to RuntimeContext |  Minor | Core | Greg Hogan | Greg Hogan |
| [FLINK-3886](https://issues.apache.org/jira/browse/FLINK-3886) | Give a better error when the application Main class is not public. |  Major | . | Niels Basjes | Niels Basjes |
| [FLINK-3993](https://issues.apache.org/jira/browse/FLINK-3993) | [py] Add generateSequence() support to Python API |  Minor | Python API | Omar Alvarez |  |
| [FLINK-3806](https://issues.apache.org/jira/browse/FLINK-3806) | Revert use of DataSet.count() in Gelly |  Critical | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-4026](https://issues.apache.org/jira/browse/FLINK-4026) | Fix code, grammar, and link issues in the Streaming documentation |  Trivial | Documentation | Dyana Rose |  |
| [FLINK-4025](https://issues.apache.org/jira/browse/FLINK-4025) | Add possiblity for the RMQ Streaming Source to customize the queue |  Major | Streaming Connectors | Dominik Bruhn |  |
| [FLINK-3405](https://issues.apache.org/jira/browse/FLINK-3405) | Extend NiFiSource with interface StoppableFunction |  Major | Streaming Connectors | Matthias J. Sax | Suneel Marthi |
| [FLINK-3854](https://issues.apache.org/jira/browse/FLINK-3854) | Support Avro key-value rolling sink writer |  Major | filesystem-connector, Streaming Connectors | Igor Berman | Igor Berman |
| [FLINK-3763](https://issues.apache.org/jira/browse/FLINK-3763) | RabbitMQ Source/Sink standardize connection parameters |  Major | Streaming Connectors | Robert Batts | Subhankar Biswas |
| [FLINK-4049](https://issues.apache.org/jira/browse/FLINK-4049) | Mark RichInputFormat.openInputFormat and closeInputFormat as @PublicEvolving |  Blocker | . | Robert Metzger | Chesnay Schepler |
| [FLINK-4054](https://issues.apache.org/jira/browse/FLINK-4054) | Inconsistent Reporter synchronization within report() |  Critical | Metrics | Chesnay Schepler |  |
| [FLINK-4032](https://issues.apache.org/jira/browse/FLINK-4032) | Replace all usage of Guava Preconditions |  Trivial | . | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4063](https://issues.apache.org/jira/browse/FLINK-4063) | Add Metrics Support for Triggers |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3332](https://issues.apache.org/jira/browse/FLINK-3332) | Provide an exactly-once Cassandra connector |  Major | Streaming Connectors | Robert Metzger | Chesnay Schepler |
| [FLINK-3937](https://issues.apache.org/jira/browse/FLINK-3937) | Make flink cli list, savepoint, cancel and stop work on Flink-on-YARN clusters |  Minor | . | Sebastian Klemke | Maximilian Michels |
| [FLINK-3667](https://issues.apache.org/jira/browse/FLINK-3667) | Generalize client\<-\>cluster communication |  Major | YARN | Maximilian Michels | Maximilian Michels |
| [FLINK-4082](https://issues.apache.org/jira/browse/FLINK-4082) | Add Setting for LargeRecordHandler |  Major | . | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3752](https://issues.apache.org/jira/browse/FLINK-3752) | Add Per-Kafka-Partition Watermark Generation to the docs |  Major | Documentation | Stephan Ewen | Kostas Kloudas |
| [FLINK-3868](https://issues.apache.org/jira/browse/FLINK-3868) | Specialized CopyableValue serializers and comparators |  Major | Core | Greg Hogan | Greg Hogan |
| [FLINK-4121](https://issues.apache.org/jira/browse/FLINK-4121) | Add timeunit (ms) to docs for timestamps and watermarks |  Trivial | DataStream API | Jonas Traub |  |
| [FLINK-4119](https://issues.apache.org/jira/browse/FLINK-4119) | Null checks in close() for Cassandra Input/Output Formats, checking arguments via Flink Preconditions |  Minor | Batch Connectors and Input/Output Formats, Streaming Connectors | Andrea Sella | Andrea Sella |
| [FLINK-4074](https://issues.apache.org/jira/browse/FLINK-4074) | Reporter can block TaskManager shutdown |  Minor | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4087](https://issues.apache.org/jira/browse/FLINK-4087) | JMXReporter can\'t handle port conflicts |  Blocker | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4093](https://issues.apache.org/jira/browse/FLINK-4093) | Expose metric interfaces |  Minor | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3152](https://issues.apache.org/jira/browse/FLINK-3152) | Support all comparisons for Date type |  Critical | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4118](https://issues.apache.org/jira/browse/FLINK-4118) | The docker-flink image is outdated (1.0.2) and can be slimmed down |  Minor | . | Ismaël Mejía |  |
| [FLINK-4109](https://issues.apache.org/jira/browse/FLINK-4109) | Change the name of ternary condition operator  \'eval\' to  \'?\' |  Major | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-4086](https://issues.apache.org/jira/browse/FLINK-4086) | Hide internal Expression methods from Table API |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-4116](https://issues.apache.org/jira/browse/FLINK-4116) | Document metrics |  Major | Documentation, Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4185](https://issues.apache.org/jira/browse/FLINK-4185) | Reflecting rename from Tachyon to Alluxio |  Trivial | Documentation | Jiri Simsa |  |
| [FLINK-3916](https://issues.apache.org/jira/browse/FLINK-3916) | Allow generic types passing the Table API |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4127](https://issues.apache.org/jira/browse/FLINK-4127) | Clean up configuration and check breaking API changes |  Major | Build System | Robert Metzger | Robert Metzger |
| [FLINK-4197](https://issues.apache.org/jira/browse/FLINK-4197) | Allow Kinesis Endpoint to be Overridden via Config |  Minor | Kinesis Connector | Scott Kidder | Scott Kidder |
| [FLINK-4206](https://issues.apache.org/jira/browse/FLINK-4206) | Metric names should allow special characters |  Major | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4170](https://issues.apache.org/jira/browse/FLINK-4170) | Remove \`CONFIG\_\` prefix from KinesisConfigConstants variables |  Major | Streaming Connectors | Ufuk Celebi | Tzu-Li (Gordon) Tai |
| [FLINK-3666](https://issues.apache.org/jira/browse/FLINK-3666) | Remove Nephele references |  Trivial | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4017](https://issues.apache.org/jira/browse/FLINK-4017) | [py] Add Aggregation support to Python API |  Minor | Python API | Geoffrey Mon |  |
| [FLINK-4186](https://issues.apache.org/jira/browse/FLINK-4186) | Expose Kafka metrics through Flink metrics |  Major | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-4209](https://issues.apache.org/jira/browse/FLINK-4209) | Fix issue on docker with multiple NICs and remove supervisord dependency |  Minor | flink-contrib | Ismaël Mejía | Ismaël Mejía |
| [FLINK-2985](https://issues.apache.org/jira/browse/FLINK-2985) | Allow different field names for unionAll() in Table API |  Minor | Table API & SQL | Timo Walther |  |
| [FLINK-4183](https://issues.apache.org/jira/browse/FLINK-4183) | Move checking for StreamTableEnvironment into validation layer |  Minor | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-3153](https://issues.apache.org/jira/browse/FLINK-3153) | Support all comparisons for String type |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4070](https://issues.apache.org/jira/browse/FLINK-4070) | Support literals on left side of binary expressions |  Minor | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-4229](https://issues.apache.org/jira/browse/FLINK-4229) | Do not start Metrics Reporter by default |  Major | Metrics | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-4202](https://issues.apache.org/jira/browse/FLINK-4202) | Add JM metric which shows the restart duration |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-2227](https://issues.apache.org/jira/browse/FLINK-2227) | .yarn-properties file is not cleaned up |  Minor | YARN | Ufuk Celebi |  |
| [FLINK-2929](https://issues.apache.org/jira/browse/FLINK-2929) | Recovery of jobs on cluster restarts |  Major | . | Ufuk Celebi |  |
| [FLINK-3901](https://issues.apache.org/jira/browse/FLINK-3901) | Create a RowCsvInputFormat to use as default CSV IF in Table API |  Minor | . | Flavio Pompermaier | Flavio Pompermaier |
| [FLINK-3891](https://issues.apache.org/jira/browse/FLINK-3891) | Add a class containing all supported Table API types |  Minor | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4244](https://issues.apache.org/jira/browse/FLINK-4244) | Field names for union operator do not have to be equal |  Trivial | Table API & SQL | Till Rohrmann | Jark Wu |
| [FLINK-4103](https://issues.apache.org/jira/browse/FLINK-4103) | Modify CsvTableSource to implement StreamTableSource |  Minor | Table API & SQL | Suneel Marthi | Suneel Marthi |
| [FLINK-4067](https://issues.apache.org/jira/browse/FLINK-4067) | Add version header to savepoints |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-4210](https://issues.apache.org/jira/browse/FLINK-4210) | Move close()/isClosed() out of MetricGroup interface |  Minor | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4192](https://issues.apache.org/jira/browse/FLINK-4192) | Move Metrics API to separate module |  Major | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4269](https://issues.apache.org/jira/browse/FLINK-4269) | Decrease log level in RuntimeMonitorHandler |  Minor | Webfrontend | Ufuk Celebi |  |
| [FLINK-4279](https://issues.apache.org/jira/browse/FLINK-4279) | [py] Set flink dependencies to provided |  Minor | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4299](https://issues.apache.org/jira/browse/FLINK-4299) | Show loss of job manager in Client |  Major | Client | Ufuk Celebi | Maximilian Michels |
| [FLINK-4246](https://issues.apache.org/jira/browse/FLINK-4246) | Allow Specifying Multiple Metrics Reporters |  Major | Metrics | Aljoscha Krettek | Aljoscha Krettek |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3534](https://issues.apache.org/jira/browse/FLINK-3534) | Cancelling a running job can lead to restart instead of stopping |  Critical | . | Robert Metzger |  |
| [FLINK-3540](https://issues.apache.org/jira/browse/FLINK-3540) | Hadoop 2.6.3 build contains /com/google/common (guava) classes in flink-dist.jar |  Blocker | Build System | Robert Metzger | Robert Metzger |
| [FLINK-3556](https://issues.apache.org/jira/browse/FLINK-3556) | Unneeded check in HA blob store configuration |  Critical | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3565](https://issues.apache.org/jira/browse/FLINK-3565) | FlinkKafkaConsumer does not work with Scala 2.11 |  Blocker | Streaming | Aljoscha Krettek | Maximilian Michels |
| [FLINK-3562](https://issues.apache.org/jira/browse/FLINK-3562) | Update docs in the course of EventTimeSourceFunction removal |  Minor | . | Maximilian Michels | Stephan Ewen |
| [FLINK-3566](https://issues.apache.org/jira/browse/FLINK-3566) | Input type validation often fails on custom TypeInfo implementations |  Major | Type Serialization System | Gyula Fora | Timo Walther |
| [FLINK-3491](https://issues.apache.org/jira/browse/FLINK-3491) | HDFSCopyUtilitiesTest fails on Windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3495](https://issues.apache.org/jira/browse/FLINK-3495) | RocksDB Tests can\'t run on Windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3578](https://issues.apache.org/jira/browse/FLINK-3578) | Scala DataStream API does not support Rich Window Functions |  Critical | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-3569](https://issues.apache.org/jira/browse/FLINK-3569) | Test cases fail due to Maven Shade plugin |  Major | Tests | Maximilian Michels | Maximilian Michels |
| [FLINK-3533](https://issues.apache.org/jira/browse/FLINK-3533) | Update the Gelly docs wrt examples and cluster execution |  Major | Documentation, Gelly | Vasia Kalavri | Vasia Kalavri |
| [FLINK-3567](https://issues.apache.org/jira/browse/FLINK-3567) | Rework selection when grouping in Table API |  Major | Table API & SQL | Timo Walther | Fabian Hueske |
| [FLINK-3585](https://issues.apache.org/jira/browse/FLINK-3585) | Deploy scripts don\'t support spaces in paths |  Minor | Build System | Maximilian Michels | Maximilian Michels |
| [FLINK-3593](https://issues.apache.org/jira/browse/FLINK-3593) | DistinctITCase is failing |  Major | Table API & SQL | Vasia Kalavri | Fabian Hueske |
| [FLINK-3396](https://issues.apache.org/jira/browse/FLINK-3396) | Job submission Savepoint restore logic flawed |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3561](https://issues.apache.org/jira/browse/FLINK-3561) | ExecutionConfig\'s timestampsEnabled is unused |  Minor | Streaming | Maximilian Michels | Maximilian Michels |
| [FLINK-3577](https://issues.apache.org/jira/browse/FLINK-3577) | Display anchor links when hovering over headers. |  Minor | Documentation | Jark Wu |  |
| [FLINK-3472](https://issues.apache.org/jira/browse/FLINK-3472) | JDBCInputFormat.nextRecord(..) has misleading message on NPE |  Minor | . | Ken Geis | Chesnay Schepler |
| [FLINK-3333](https://issues.apache.org/jira/browse/FLINK-3333) | Documentation about object reuse should be improved |  Critical | Documentation | Gabor Gevay | Gabor Gevay |
| [FLINK-3563](https://issues.apache.org/jira/browse/FLINK-3563) | .returns() doesn\'t compile when using .map() with a custom MapFunction |  Minor | Type Serialization System | Simone Robutti | Timo Walther |
| [FLINK-3583](https://issues.apache.org/jira/browse/FLINK-3583) | Configuration not visible in gui when job is running |  Minor | Web Client, Webfrontend | Michał Fijołek | Michał Fijołek |
| [FLINK-3621](https://issues.apache.org/jira/browse/FLINK-3621) | Misleading documentation of memory configuration parameters |  Minor | Documentation | Fabian Hueske | Fabian Hueske |
| [FLINK-1964](https://issues.apache.org/jira/browse/FLINK-1964) | Rework TwitterSource to use a Properties object instead of a file path |  Minor | Streaming | Robert Metzger | Robert Metzger |
| [FLINK-3622](https://issues.apache.org/jira/browse/FLINK-3622) | Improve error messages for invalid joins |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-3636](https://issues.apache.org/jira/browse/FLINK-3636) | NoClassDefFoundError while running WindowJoin example |  Major | Examples, Streaming | Zoltán Zvara | Márton Balassi |
| [FLINK-3645](https://issues.apache.org/jira/browse/FLINK-3645) | HDFSCopyUtilitiesTest fails in a Hadoop cluster |  Minor | Tests | Chiwan Park | Chiwan Park |
| [FLINK-3631](https://issues.apache.org/jira/browse/FLINK-3631) | CodeGenerator does not check type compatibility for equality expressions |  Major | Table API & SQL | Fabian Hueske | ramkrishna.s.vasudevan |
| [FLINK-3611](https://issues.apache.org/jira/browse/FLINK-3611) | Wrong link in CONTRIBUTING.md |  Trivial | Documentation | Martin Junghanns | Martin Junghanns |
| [FLINK-3602](https://issues.apache.org/jira/browse/FLINK-3602) | Recursive Types are not supported / crash TypeExtractor |  Critical | Type Serialization System | Stephan Ewen | Timo Walther |
| [FLINK-3179](https://issues.apache.org/jira/browse/FLINK-3179) | Combiner is not injected if Reduce or GroupReduce input is explicitly partitioned |  Critical | Optimizer | Fabian Hueske | ramkrishna.s.vasudevan |
| [FLINK-3653](https://issues.apache.org/jira/browse/FLINK-3653) | recovery.zookeeper.storageDir is not documented on the configuration page |  Minor | Documentation | Stefano Baghino | Stefano Baghino |
| [FLINK-3663](https://issues.apache.org/jira/browse/FLINK-3663) | FlinkKafkaConsumerBase.logPartitionInfo is missing a log marker |  Trivial | Kafka Connector | Niels Zeilemaker |  |
| [FLINK-3676](https://issues.apache.org/jira/browse/FLINK-3676) | WebClient hasn\'t been removed from the docs |  Major | Documentation | Maximilian Michels | Maximilian Michels |
| [FLINK-3651](https://issues.apache.org/jira/browse/FLINK-3651) | Fix faulty RollingSink Restore |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3681](https://issues.apache.org/jira/browse/FLINK-3681) | CEP library does not support Java 8 lambdas as select function |  Minor | CEP | Till Rohrmann | Till Rohrmann |
| [FLINK-3682](https://issues.apache.org/jira/browse/FLINK-3682) | CEP operator does not set the processing timestamp correctly |  Major | CEP | Till Rohrmann | Till Rohrmann |
| [FLINK-3684](https://issues.apache.org/jira/browse/FLINK-3684) | CEP operator does not forward watermarks properly |  Major | CEP | Till Rohrmann | Till Rohrmann |
| [FLINK-3633](https://issues.apache.org/jira/browse/FLINK-3633) | Job submission silently fails when using user code types |  Blocker | . | Till Rohrmann | Till Rohrmann |
| [FLINK-3689](https://issues.apache.org/jira/browse/FLINK-3689) | JobManager blocks cluster shutdown when not connected to ResourceManager |  Minor | JobManager, ResourceManager | Maximilian Michels | Maximilian Michels |
| [FLINK-3635](https://issues.apache.org/jira/browse/FLINK-3635) | Potential null deference in TwitterExample#SelectEnglishAndTokenizeFlatMap#flatMap |  Minor | . | Ted Yu |  |
| [FLINK-3638](https://issues.apache.org/jira/browse/FLINK-3638) | Invalid default ports in documentation |  Major | Documentation | Maxim Dobryakov | Maximilian Michels |
| [FLINK-3693](https://issues.apache.org/jira/browse/FLINK-3693) | JobManagerHAJobGraphRecoveryITCase.testClientNonDetachedListeningBehaviour is unstable |  Major | . | Robert Metzger | Ufuk Celebi |
| [FLINK-3619](https://issues.apache.org/jira/browse/FLINK-3619) | SavepointCoordinator test failure |  Major | Streaming | Gyula Fora | Ufuk Celebi |
| [FLINK-3595](https://issues.apache.org/jira/browse/FLINK-3595) | Kafka09 consumer thread does not interrupt when stuck in record emission |  Critical | Kafka Connector | Stephan Ewen | Ufuk Celebi |
| [FLINK-1159](https://issues.apache.org/jira/browse/FLINK-1159) | Case style anonymous functions not supported by Scala API |  Major | Scala API | Till Rohrmann | Stefano Baghino |
| [FLINK-3712](https://issues.apache.org/jira/browse/FLINK-3712) | YARN client dynamic properties are not passed correctly to the leader election service on the client |  Major | YARN | Robert Metzger | Robert Metzger |
| [FLINK-3579](https://issues.apache.org/jira/browse/FLINK-3579) | Improve String concatenation |  Minor | Table API & SQL | Timo Walther | ramkrishna.s.vasudevan |
| [FLINK-3731](https://issues.apache.org/jira/browse/FLINK-3731) | Embedded SQL outer joins should fail during translation |  Major | Table API & SQL | Vasia Kalavri | Vasia Kalavri |
| [FLINK-3730](https://issues.apache.org/jira/browse/FLINK-3730) | Fix RocksDB Local Directory Initialization |  Major | State Backends, Checkpointing, Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3126](https://issues.apache.org/jira/browse/FLINK-3126) | Remove accumulator type from "value" in web frontend |  Major | Webfrontend | Robert Metzger |  |
| [FLINK-3737](https://issues.apache.org/jira/browse/FLINK-3737) | WikipediaEditsSourceTest.testWikipediaEditsSource() fails locally |  Minor | Tests | Todd Lisonbee | Todd Lisonbee |
| [FLINK-3644](https://issues.apache.org/jira/browse/FLINK-3644) | WebRuntimMonitor set java.io.tmpdir does not work for change upload dir. |  Major | Webfrontend | astralidea |  |
| [FLINK-3444](https://issues.apache.org/jira/browse/FLINK-3444) | env.fromElements relies on the first input element for determining the DataSet/DataStream type |  Major | DataSet API, DataStream API | Vasia Kalavri |  |
| [FLINK-3716](https://issues.apache.org/jira/browse/FLINK-3716) | Kafka08ITCase.testFailOnNoBroker() timing out before it has a chance to pass |  Major | . | Todd Lisonbee | Todd Lisonbee |
| [FLINK-3735](https://issues.apache.org/jira/browse/FLINK-3735) | Embedded SQL union should fail during translation |  Major | Table API & SQL | Vasia Kalavri | Vasia Kalavri |
| [FLINK-3745](https://issues.apache.org/jira/browse/FLINK-3745) | TimestampITCase testWatermarkPropagationNoFinalWatermarkOnStop failing intermittently |  Minor | . | Todd Lisonbee | Stephan Ewen |
| [FLINK-3759](https://issues.apache.org/jira/browse/FLINK-3759) | Table API should throw exception is null value is encountered in non-null mode. |  Critical | Table API & SQL | Fabian Hueske |  |
| [FLINK-3762](https://issues.apache.org/jira/browse/FLINK-3762) |  Kryo StackOverflowError due to disabled Kryo Reference tracking |  Major | Core | Andrew Palumbo | Andrew Palumbo |
| [FLINK-2544](https://issues.apache.org/jira/browse/FLINK-2544) | Some test cases using PowerMock fail with Java 8u20 |  Minor | . | Till Rohrmann | Soila Kavulya |
| [FLINK-3732](https://issues.apache.org/jira/browse/FLINK-3732) | Potential null deference in ExecutionConfig#equals() |  Minor | . | Ted Yu |  |
| [FLINK-3773](https://issues.apache.org/jira/browse/FLINK-3773) | Scanners are left unclosed in SqlExplainTest |  Minor | . | Ted Yu | Saikat Maitra |
| [FLINK-3718](https://issues.apache.org/jira/browse/FLINK-3718) | Add Option For Completely Async Backup in RocksDB State Backend |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3781](https://issues.apache.org/jira/browse/FLINK-3781) | BlobClient may be left unclosed in BlobCache#deleteGlobal() |  Minor | . | Ted Yu | Chenguang He |
| [FLINK-3790](https://issues.apache.org/jira/browse/FLINK-3790) | Rolling File sink does not pick up hadoop configuration |  Critical | Streaming Connectors | Gyula Fora | Gyula Fora |
| [FLINK-3774](https://issues.apache.org/jira/browse/FLINK-3774) | Flink configuration is not correctly forwarded to PlanExecutor in ScalaShellRemoteEnvironment |  Minor | Scala Shell | Till Rohrmann | Till Rohrmann |
| [FLINK-3803](https://issues.apache.org/jira/browse/FLINK-3803) | Checkpoint Stats Tracker Reads from Wrong Configuration |  Major | Streaming | Aljoscha Krettek | Ufuk Celebi |
| [FLINK-3086](https://issues.apache.org/jira/browse/FLINK-3086) | ExpressionParser does not support concatenation of suffix operations |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-3601](https://issues.apache.org/jira/browse/FLINK-3601) | JobManagerTest times out on StopSignal test |  Minor | JobManager, Tests | Maximilian Michels | Maximilian Michels |
| [FLINK-3824](https://issues.apache.org/jira/browse/FLINK-3824) | ResourceManager may repeatedly connect to outdated JobManager in HA mode |  Minor | ResourceManager | Maximilian Michels | Maximilian Michels |
| [FLINK-3835](https://issues.apache.org/jira/browse/FLINK-3835) | JSON execution plan not helpful to debug plans with KeySelectors |  Major | Optimizer | Fabian Hueske | Fabian Hueske |
| [FLINK-3840](https://issues.apache.org/jira/browse/FLINK-3840) | RocksDB local parent dir is polluted with empty folders with random names |  Major | State Backends, Checkpointing | Gyula Fora | Aljoscha Krettek |
| [FLINK-3846](https://issues.apache.org/jira/browse/FLINK-3846) | Graph.removeEdges also removes duplicate edges |  Major | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-3845](https://issues.apache.org/jira/browse/FLINK-3845) | Gelly allows duplicate vertices in Graph.addVertices |  Major | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-3793](https://issues.apache.org/jira/browse/FLINK-3793) | Re-organize the Table API and SQL docs |  Major | Documentation, Table API & SQL | Vasia Kalavri | Vasia Kalavri |
| [FLINK-3669](https://issues.apache.org/jira/browse/FLINK-3669) | WindowOperator registers a lot of timers at StreamTask |  Blocker | Streaming | Aljoscha Krettek | Konstantin Knauf |
| [FLINK-3860](https://issues.apache.org/jira/browse/FLINK-3860) | WikipediaEditsSourceTest.testWikipediaEditsSource times out |  Major | Tests | Vasia Kalavri | Aljoscha Krettek |
| [FLINK-3877](https://issues.apache.org/jira/browse/FLINK-3877) | Create TranslateFunction interface for Graph translators |  Minor | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-3842](https://issues.apache.org/jira/browse/FLINK-3842) | Fix handling null record/row in generated code |  Major | Table API & SQL | Dawid Wysakowicz | Timo Walther |
| [FLINK-3882](https://issues.apache.org/jira/browse/FLINK-3882) | Errors in sample Java code for the Elasticsearch 2.x sink |  Trivial | Documentation, Streaming Connectors | Mark Reddy | Mark Reddy |
| [FLINK-3878](https://issues.apache.org/jira/browse/FLINK-3878) | File cache doesn\'t support multiple duplicate temp directories |  Major | Distributed Coordination, Local Runtime | Ken Krugler | Ken Krugler |
| [FLINK-3701](https://issues.apache.org/jira/browse/FLINK-3701) | Cant call execute after first execution |  Major | Scala Shell | Nikolaas Steenbergen | Maximilian Michels |
| [FLINK-3826](https://issues.apache.org/jira/browse/FLINK-3826) | Broken test: StreamCheckpointingITCase |  Major | Tests | Kostas Kloudas | Kostas Kloudas |
| [FLINK-3488](https://issues.apache.org/jira/browse/FLINK-3488) | Kafka08ITCase.testBigRecordJob fails on Travis |  Critical | Kafka Connector | Till Rohrmann | Rekha Joshi |
| [FLINK-3926](https://issues.apache.org/jira/browse/FLINK-3926) | Incorrect implementation of getFieldIndex in TupleTypeInfo |  Minor | Core | Yijie Shen | Yijie Shen |
| [FLINK-3914](https://issues.apache.org/jira/browse/FLINK-3914) | BlobServer.createTemporaryFilename() has concurrency safety problem |  Major | . | ZhengBowen | Mark Reddy |
| [FLINK-3934](https://issues.apache.org/jira/browse/FLINK-3934) | Prevent translation of non-equi joins in DataSetJoinRule |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-3935](https://issues.apache.org/jira/browse/FLINK-3935) | Invalid check of key and ordering fields in PartitionNode |  Major | Optimizer | Fabian Hueske | Fabian Hueske |
| [FLINK-3909](https://issues.apache.org/jira/browse/FLINK-3909) | Maven Failsafe plugin may report SUCCESS on failed tests |  Major | Build System | Maximilian Michels | Maximilian Michels |
| [FLINK-3892](https://issues.apache.org/jira/browse/FLINK-3892) | ConnectionUtils may die with NullPointerException |  Minor | YARN | Maximilian Michels | Maximilian Michels |
| [FLINK-3893](https://issues.apache.org/jira/browse/FLINK-3893) | LeaderChangeStateCleanupTest times out |  Minor | Tests | Maximilian Michels | Maximilian Michels |
| [FLINK-3938](https://issues.apache.org/jira/browse/FLINK-3938) | Yarn tests don\'t run on the current master |  Critical | Build System | Maximilian Michels | Maximilian Michels |
| [FLINK-3928](https://issues.apache.org/jira/browse/FLINK-3928) | Potential overflow due to 32-bit int arithmetic |  Minor | . | Ted Yu | Greg Hogan |
| [FLINK-3953](https://issues.apache.org/jira/browse/FLINK-3953) | Surefire plugin executes unit tests twice |  Minor | Build System, Tests | Maximilian Michels | Maximilian Michels |
| [FLINK-3927](https://issues.apache.org/jira/browse/FLINK-3927) | TaskManager registration may fail if Yarn versions don\'t match |  Major | ResourceManager | Maximilian Michels | Maximilian Michels |
| [FLINK-3939](https://issues.apache.org/jira/browse/FLINK-3939) | Prevent distinct aggregates and grouping sets from being translated |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-3963](https://issues.apache.org/jira/browse/FLINK-3963) | AbstractReporter uses shaded dependency |  Major | Tests | Maximilian Michels | Kostas Kloudas |
| [FLINK-2915](https://issues.apache.org/jira/browse/FLINK-2915) | JobManagerProcessFailureBatchRecoveryITCase |  Critical | Tests | Matthias J. Sax | Rekha Joshi |
| [FLINK-3696](https://issues.apache.org/jira/browse/FLINK-3696) | Some Union tests fail for TableConfigMode.EFFICIENT |  Major | Table API & SQL | Vasia Kalavri | Yijie Shen |
| [FLINK-3972](https://issues.apache.org/jira/browse/FLINK-3972) | Subclasses of ResourceID may not to be serializable |  Minor | ResourceManager | Maximilian Michels | Maximilian Michels |
| [FLINK-3982](https://issues.apache.org/jira/browse/FLINK-3982) | Multiple ResourceManagers register at JobManager in standalone HA mode |  Minor | ResourceManager | Maximilian Michels | Maximilian Michels |
| [FLINK-3981](https://issues.apache.org/jira/browse/FLINK-3981) | Don\'t log duplicate TaskManager registrations as exceptions |  Minor | ResourceManager | Maximilian Michels | Maximilian Michels |
| [FLINK-3975](https://issues.apache.org/jira/browse/FLINK-3975) | Override baseurl when serving docs locally |  Trivial | Documentation | Dyana Rose |  |
| [FLINK-3994](https://issues.apache.org/jira/browse/FLINK-3994) | Instable KNNITSuite |  Critical | Machine Learning Library, Tests | Chiwan Park | Chiwan Park |
| [FLINK-3948](https://issues.apache.org/jira/browse/FLINK-3948) | EventTimeWindowCheckpointingITCase Fails with Core Dump |  Critical | State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3960](https://issues.apache.org/jira/browse/FLINK-3960) | Disable, fix and re-enable EventTimeWindowCheckpointingITCase |  Major | Streaming, Tests | Maximilian Michels | Aljoscha Krettek |
| [FLINK-4011](https://issues.apache.org/jira/browse/FLINK-4011) | Unable to access completed job in web frontend |  Critical | Webfrontend | Robert Metzger | Robert Metzger |
| [FLINK-4000](https://issues.apache.org/jira/browse/FLINK-4000) | Exception: Could not restore checkpointed state to operators and functions;  during Job Restart (Job restart is triggered due to one of the task manager failure) |  Major | DataStream API | Aride Chettali |  |
| [FLINK-3922](https://issues.apache.org/jira/browse/FLINK-3922) | Infinite recursion on TypeExtractor |  Critical | Type Serialization System | Flavio Pompermaier | Timo Walther |
| [FLINK-2832](https://issues.apache.org/jira/browse/FLINK-2832) | Failing test: RandomSamplerTest.testReservoirSamplerWithReplacement |  Critical | Tests | Vasia Kalavri | Till Rohrmann |
| [FLINK-4031](https://issues.apache.org/jira/browse/FLINK-4031) | Nightly Jenkins job doesn\'t deploy sources |  Minor | Build System | Maximilian Michels | Maximilian Michels |
| [FLINK-3471](https://issues.apache.org/jira/browse/FLINK-3471) | JDBCInputFormat cannot handle null fields of certain types |  Major | . | Ken Geis |  |
| [FLINK-3530](https://issues.apache.org/jira/browse/FLINK-3530) | Kafka09ITCase.testBigRecordJob fails on Travis |  Major | Kafka Connector | Till Rohrmann | Robert Metzger |
| [FLINK-4002](https://issues.apache.org/jira/browse/FLINK-4002) | [py] Improve testing infraestructure |  Minor | Python API | Omar Alvarez |  |
| [FLINK-3971](https://issues.apache.org/jira/browse/FLINK-3971) | Aggregates handle null values incorrectly. |  Critical | Table API & SQL | Fabian Hueske | GaoLun |
| [FLINK-4030](https://issues.apache.org/jira/browse/FLINK-4030) | ScalaShellITCase gets stuck |  Minor | Tests | Maximilian Michels | Maximilian Michels |
| [FLINK-4028](https://issues.apache.org/jira/browse/FLINK-4028) | AbstractAlignedProcessingTimeWindowOperator creates wrong TimeWindow |  Blocker | DataStream API | Aljoscha Krettek |  |
| [FLINK-3908](https://issues.apache.org/jira/browse/FLINK-3908) | FieldParsers error state is not reset correctly to NONE |  Major | Core | Flavio Pompermaier | Flavio Pompermaier |
| [FLINK-4024](https://issues.apache.org/jira/browse/FLINK-4024) | FileSourceFunction not adjusted to new IF lifecycle |  Critical | Streaming | Chesnay Schepler | Kostas Kloudas |
| [FLINK-3933](https://issues.apache.org/jira/browse/FLINK-3933) | Add an auto-type-extracting DeserializationSchema |  Major | Streaming, Streaming Connectors | Stephan Ewen | Stephan Ewen |
| [FLINK-4077](https://issues.apache.org/jira/browse/FLINK-4077) | Register Pojo DataSet/DataStream as Table requires alias expression. |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-3863](https://issues.apache.org/jira/browse/FLINK-3863) | Yarn Cluster shutdown may fail if leader changed recently |  Minor | YARN | Maximilian Michels | Maximilian Michels |
| [FLINK-3890](https://issues.apache.org/jira/browse/FLINK-3890) | Deprecate streaming mode flag from Yarn CLI |  Minor | . | Maximilian Michels | Maximilian Michels |
| [FLINK-4056](https://issues.apache.org/jira/browse/FLINK-4056) | SavepointITCase.testCheckpointHasBeenRemoved failed on Travis |  Critical | Tests | Till Rohrmann | Ufuk Celebi |
| [FLINK-4009](https://issues.apache.org/jira/browse/FLINK-4009) | Scala Shell fails to find library for inclusion in test |  Major | Scala Shell, Tests | Maximilian Michels | Maximilian Michels |
| [FLINK-3977](https://issues.apache.org/jira/browse/FLINK-3977) | Subclasses of InternalWindowFunction must support OutputTypeConfigurable |  Critical | Streaming | Aljoscha Krettek | Fabian Hueske |
| [FLINK-4083](https://issues.apache.org/jira/browse/FLINK-4083) | Use ClosureCleaner for Join where and equalTo |  Minor | . | Stefan Richter | Stefan Richter |
| [FLINK-4078](https://issues.apache.org/jira/browse/FLINK-4078) | Use ClosureCleaner for CoGroup where |  Major | . | Ufuk Celebi | Stefan Richter |
| [FLINK-4089](https://issues.apache.org/jira/browse/FLINK-4089) | Ineffective null check in YarnClusterClient#getApplicationStatus() |  Major | . | Ted Yu | Maximilian Michels |
| [FLINK-4090](https://issues.apache.org/jira/browse/FLINK-4090) | Close of OutputStream should be in finally clause in FlinkYarnSessionCli#writeYarnProperties() |  Minor | . | Ted Yu | Maximilian Michels |
| [FLINK-3380](https://issues.apache.org/jira/browse/FLINK-3380) | Unstable Test: JobSubmissionFailsITCase |  Critical | . | Kostas Kloudas |  |
| [FLINK-3105](https://issues.apache.org/jira/browse/FLINK-3105) | Submission in per job YARN cluster mode reuses properties file of long-lived session |  Major | YARN | Ufuk Celebi | Maximilian Michels |
| [FLINK-4012](https://issues.apache.org/jira/browse/FLINK-4012) | Docs: Links to "Iterations" are broken (404) |  Trivial | Documentation | Bernd Louis |  |
| [FLINK-3973](https://issues.apache.org/jira/browse/FLINK-3973) | Table API documentation is "hidden" in Programming Guide menu list |  Major | Documentation | Fabian Hueske |  |
| [FLINK-4079](https://issues.apache.org/jira/browse/FLINK-4079) | YARN properties file used for per-job cluster |  Major | Client | Ufuk Celebi | Maximilian Michels |
| [FLINK-4038](https://issues.apache.org/jira/browse/FLINK-4038) | Impossible to set more than 1 JVM argument in env.java.opts |  Critical | Startup Shell Scripts | Gyula Fora | Ufuk Celebi |
| [FLINK-4076](https://issues.apache.org/jira/browse/FLINK-4076) | BoltWrapper#dispose() should call AbstractStreamOperator#dispose() |  Minor | . | Ted Yu |  |
| [FLINK-4097](https://issues.apache.org/jira/browse/FLINK-4097) | Cassandra Sink throws NPE on closing if server is not available |  Major | Streaming Connectors | Robert Metzger | Andrea Sella |
| [FLINK-4040](https://issues.apache.org/jira/browse/FLINK-4040) | Same env.java.opts is applied for TM , JM and ZK |  Critical | Startup Shell Scripts, YARN | Gyula Fora | Ufuk Celebi |
| [FLINK-4046](https://issues.apache.org/jira/browse/FLINK-4046) | Failing a restarting job can get stuck in JobStatus.FAILING |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-3864](https://issues.apache.org/jira/browse/FLINK-3864) | Yarn tests don\'t check for prohibited strings in log output |  Major | Tests, YARN | Maximilian Michels | Maximilian Michels |
| [FLINK-3757](https://issues.apache.org/jira/browse/FLINK-3757) | addAccumulator does not throw Exception on duplicate accumulator name |  Minor | . | Konstantin Knauf | Maximilian Michels |
| [FLINK-3838](https://issues.apache.org/jira/browse/FLINK-3838) | CLI parameter parser is munging application params |  Minor | Client | Ken Krugler | Maximilian Michels |
| [FLINK-4041](https://issues.apache.org/jira/browse/FLINK-4041) | Failure while asking ResourceManager for RegisterResource |  Major | ResourceManager | Robert Metzger | Maximilian Michels |
| [FLINK-3974](https://issues.apache.org/jira/browse/FLINK-3974) | enableObjectReuse fails when an operator chains to multiple downstream operators |  Major | DataStream API | B Wyatt | Aljoscha Krettek |
| [FLINK-4113](https://issues.apache.org/jira/browse/FLINK-4113) | Always copy first value in ChainedAllReduceDriver |  Critical | Local Runtime | Greg Hogan | Greg Hogan |
| [FLINK-4099](https://issues.apache.org/jira/browse/FLINK-4099) | CliFrontendYarnAddressConfigurationTest fails |  Major | YARN | Ufuk Celebi | Robert Metzger |
| [FLINK-4132](https://issues.apache.org/jira/browse/FLINK-4132) | Fix boxed comparison in CommunityDetection algorithm |  Minor | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-4122](https://issues.apache.org/jira/browse/FLINK-4122) | Cassandra jar contains 2 guava versions |  Blocker | Streaming Connectors | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4139](https://issues.apache.org/jira/browse/FLINK-4139) | Yarn: Adjust parallelism and task slots correctly |  Minor | Client, YARN | Maximilian Michels | Maximilian Michels |
| [FLINK-3675](https://issues.apache.org/jira/browse/FLINK-3675) | YARN ship folder incosistent behavior |  Critical | YARN | Stefano Baghino | Maximilian Michels |
| [FLINK-4141](https://issues.apache.org/jira/browse/FLINK-4141) | TaskManager failures not always recover when killed during an ApplicationMaster failure in HA mode on Yarn |  Major | . | Stefan Richter | Maximilian Michels |
| [FLINK-4144](https://issues.apache.org/jira/browse/FLINK-4144) | Yarn properties file: replace hostname/port with Yarn application id |  Major | YARN | Maximilian Michels | Maximilian Michels |
| [FLINK-4027](https://issues.apache.org/jira/browse/FLINK-4027) | FlinkKafkaProducer09 sink can lose messages |  Critical | Kafka Connector | Elias Levy | Robert Metzger |
| [FLINK-4134](https://issues.apache.org/jira/browse/FLINK-4134) | EventTimeSessionWindows trigger for empty windows when dropping late events |  Major | DataStream API | Stefan Richter | Stefan Richter |
| [FLINK-4145](https://issues.apache.org/jira/browse/FLINK-4145) | JmxReporterTest fails due to port conflicts |  Major | Local Runtime, Metrics | Ufuk Celebi | Chesnay Schepler |
| [FLINK-4115](https://issues.apache.org/jira/browse/FLINK-4115) | FsStateBackend filesystem verification can cause classpath exceptions |  Blocker | Local Runtime | Josh Forman-Gornall | Josh Forman-Gornall |
| [FLINK-3995](https://issues.apache.org/jira/browse/FLINK-3995) | Properly Structure Test Utils and Dependencies |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-4133](https://issues.apache.org/jira/browse/FLINK-4133) | Reflect streaming file source changes in documentation |  Major | DataStream API, Documentation | Robert Metzger | Kostas Kloudas |
| [FLINK-4146](https://issues.apache.org/jira/browse/FLINK-4146) | CliFrontendYarnAddressConfigurationTest picks wrong IP address on Travis |  Major | YARN | Ufuk Celebi | Robert Metzger |
| [FLINK-4158](https://issues.apache.org/jira/browse/FLINK-4158) | Scala QuickStart StreamingJob fails to compile |  Major | Quickstarts | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4160](https://issues.apache.org/jira/browse/FLINK-4160) | YARN session doesn\'t show input validation errors |  Critical | YARN | Robert Metzger | Chesnay Schepler |
| [FLINK-4168](https://issues.apache.org/jira/browse/FLINK-4168) | ForkableFlinkMiniCluster not available in Kinesis connector tests |  Major | Build System, Kinesis Connector, Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-4176](https://issues.apache.org/jira/browse/FLINK-4176) | Travis build fails at flink-connector-kinesis for JDK: openjdk7 |  Critical | Build System, Kinesis Connector, Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-4171](https://issues.apache.org/jira/browse/FLINK-4171) | StatsD does not accept metrics whose name contains ":" |  Major | Metrics | Till Rohrmann | Till Rohrmann |
| [FLINK-4172](https://issues.apache.org/jira/browse/FLINK-4172) | Don\'t proxy a ProxiedObject |  Major | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-4157](https://issues.apache.org/jira/browse/FLINK-4157) | FlinkKafkaMetrics cause TaskManager shutdown during cancellation |  Critical | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-4154](https://issues.apache.org/jira/browse/FLINK-4154) | Correction of murmur hash breaks backwards compatibility |  Blocker | Distributed Coordination | Till Rohrmann | Greg Hogan |
| [FLINK-4111](https://issues.apache.org/jira/browse/FLINK-4111) | Flink Table & SQL doesn\'t work in very simple example |  Major | Table API & SQL | Jark Wu | Timo Walther |
| [FLINK-4123](https://issues.apache.org/jira/browse/FLINK-4123) | CassandraWriteAheadSink can hang on cassandra failure |  Blocker | Streaming Connectors | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4159](https://issues.apache.org/jira/browse/FLINK-4159) | Quickstart poms exclude unused dependencies |  Minor | Quickstarts | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4167](https://issues.apache.org/jira/browse/FLINK-4167) | TaskMetricGroup does not close IOMetricGroup |  Major | Metrics | Till Rohrmann | Till Rohrmann |
| [FLINK-4216](https://issues.apache.org/jira/browse/FLINK-4216) | WordWithCount example with Java has wrong generics type |  Trivial | Documentation | Serhiy Boychenko | Matthias J. Sax |
| [FLINK-4214](https://issues.apache.org/jira/browse/FLINK-4214) | JobExceptionsHandler will return all exceptions |  Minor | Webfrontend | Sumit Chawla |  |
| [FLINK-3630](https://issues.apache.org/jira/browse/FLINK-3630) | Little mistake in documentation |  Minor | DataSet API, Documentation | Riccardo Diomedi | Greg Hogan |
| [FLINK-4053](https://issues.apache.org/jira/browse/FLINK-4053) | Return value from Connection should be checked against null |  Minor | . | Ted Yu | Ivan Mushketyk |
| [FLINK-4142](https://issues.apache.org/jira/browse/FLINK-4142) | Recovery problem in HA on Hadoop Yarn 2.4.1 |  Major | YARN | Stefan Richter | Robert Metzger |
| [FLINK-4184](https://issues.apache.org/jira/browse/FLINK-4184) | Ganglia and GraphiteReporter report metric names with invalid characters |  Major | Metrics | Till Rohrmann | Till Rohrmann |
| [FLINK-3466](https://issues.apache.org/jira/browse/FLINK-3466) | Job might get stuck in restoreState() from HDFS due to interrupt |  Blocker | State Backends, Checkpointing | Robert Metzger | Stephan Ewen |
| [FLINK-4196](https://issues.apache.org/jira/browse/FLINK-4196) | Remove "recoveryTimestamp" |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-4149](https://issues.apache.org/jira/browse/FLINK-4149) | Fix Serialization of NFA in AbstractKeyedCEPPatternOperator |  Blocker | CEP | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3713](https://issues.apache.org/jira/browse/FLINK-3713) | DisposeSavepoint message uses system classloader to discard state |  Major | JobManager | Robert Metzger | Ufuk Celebi |
| [FLINK-4232](https://issues.apache.org/jira/browse/FLINK-4232) | Flink executable does not return correct pid |  Minor | . | David Moravek |  |
| [FLINK-4130](https://issues.apache.org/jira/browse/FLINK-4130) | CallGenerator could generate illegal code when taking no operands |  Minor | Table API & SQL | Cody |  |
| [FLINK-3792](https://issues.apache.org/jira/browse/FLINK-3792) | RowTypeInfo equality should not depend on field names |  Major | Table API & SQL | Vasia Kalavri |  |
| [FLINK-4199](https://issues.apache.org/jira/browse/FLINK-4199) | Misleading messages by CLI upon job submission |  Major | Client | Kostas Kloudas | Maximilian Michels |
| [FLINK-4166](https://issues.apache.org/jira/browse/FLINK-4166) | Generate automatic different namespaces in Zookeeper for Flink applications |  Major | Distributed Coordination | Stefan Richter | Stefan Richter |
| [FLINK-3729](https://issues.apache.org/jira/browse/FLINK-3729) | Several SQL tests fail on Windows OS |  Major | Table API & SQL | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3956](https://issues.apache.org/jira/browse/FLINK-3956) | Make FileInputFormats independent from Configuration |  Major | Streaming | Kostas Kloudas | Kostas Kloudas |
| [FLINK-4235](https://issues.apache.org/jira/browse/FLINK-4235) | ClassLoaderITCase.testDisposeSavepointWithCustomKvState timed out on Travis |  Major | Tests | Till Rohrmann | Ufuk Celebi |
| [FLINK-4238](https://issues.apache.org/jira/browse/FLINK-4238) | Only allow/require query for Tuple Stream in CassandraSink |  Major | Cassandra Connector | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2392](https://issues.apache.org/jira/browse/FLINK-2392) | Instable test in flink-yarn-tests |  Critical | Tests | Matthias J. Sax | Robert Metzger |
| [FLINK-3962](https://issues.apache.org/jira/browse/FLINK-3962) | JMXReporter doesn\'t properly register/deregister metrics |  Major | Distributed Coordination | Maximilian Michels | Stephan Ewen |
| [FLINK-4201](https://issues.apache.org/jira/browse/FLINK-4201) | Checkpoints for jobs in non-terminal state (e.g. suspended) get deleted |  Blocker | State Backends, Checkpointing | Stefan Richter | Ufuk Celebi |
| [FLINK-3725](https://issues.apache.org/jira/browse/FLINK-3725) | Exception in thread "main" scala.MatchError: ... (of class scala.Tuple4) |  Major | JobManager | Maxim Dobryakov | Stephan Ewen |
| [FLINK-3411](https://issues.apache.org/jira/browse/FLINK-3411) | Failed recovery can lead to removal of HA state |  Critical | Distributed Coordination | Ufuk Celebi |  |
| [FLINK-4150](https://issues.apache.org/jira/browse/FLINK-4150) | Problem with Blobstore in Yarn HA setting on recovery after cluster shutdown |  Blocker | Job-Submission | Stefan Richter | Ufuk Celebi |
| [FLINK-4152](https://issues.apache.org/jira/browse/FLINK-4152) | TaskManager registration exponential backoff doesn\'t work |  Major | Distributed Coordination, YARN | Robert Metzger | Till Rohrmann |
| [FLINK-4156](https://issues.apache.org/jira/browse/FLINK-4156) | Job with -m yarn-cluster registers TaskManagers to another running Yarn session |  Major | Distributed Coordination, YARN | Stefan Richter |  |
| [FLINK-4258](https://issues.apache.org/jira/browse/FLINK-4258) | Potential null pointer dereference in SavepointCoordinator#onFullyAcknowledgedCheckpoint |  Major | . | Ted Yu | Maximilian Michels |
| [FLINK-4277](https://issues.apache.org/jira/browse/FLINK-4277) | TaskManagerConfigurationTest fails |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4284](https://issues.apache.org/jira/browse/FLINK-4284) | DataSet/CEP link to non-existant "Linking with Flink" section |  Major | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4296](https://issues.apache.org/jira/browse/FLINK-4296) | Scheduler accepts more tasks than it has task slots available |  Critical | Distributed Coordination, JobManager | Maximilian Michels | Till Rohrmann |
| [FLINK-4307](https://issues.apache.org/jira/browse/FLINK-4307) | Broken user-facing API for ListState |  Blocker | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-3796](https://issues.apache.org/jira/browse/FLINK-3796) | FileSourceFunction doesn\'t respect InputFormat\'s life cycle methods |  Major | Streaming | Maximilian Michels | Maximilian Michels |
| [FLINK-3594](https://issues.apache.org/jira/browse/FLINK-3594) | StreamTask may fail when checkpoint is concurrent to regular termination |  Critical | . | Chesnay Schepler | Stephan Ewen |
| [FLINK-2496](https://issues.apache.org/jira/browse/FLINK-2496) | Expose Task Manager configuration to Runtime Context |  Major | DataSet API, DataStream API, Java API | Sachin Goel | Sachin Goel |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3517](https://issues.apache.org/jira/browse/FLINK-3517) | Number of job and task managers not checked in scripts |  Minor | Startup Shell Scripts | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3782](https://issues.apache.org/jira/browse/FLINK-3782) | ByteArrayOutputStream and ObjectOutputStream should close |  Minor | Java API | Chenguang He | Rekha Joshi |
| [FLINK-4230](https://issues.apache.org/jira/browse/FLINK-4230) | Session Windowing IT Case |  Major | DataStream API, Local Runtime | Stefan Richter | Stefan Richter |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3550](https://issues.apache.org/jira/browse/FLINK-3550) | Rework stream join example |  Major | Examples | Stephan Ewen | Stephan Ewen |
| [FLINK-3552](https://issues.apache.org/jira/browse/FLINK-3552) | Change socket WordCount to be properly windowed |  Major | Examples | Stephan Ewen | Stephan Ewen |
| [FLINK-3489](https://issues.apache.org/jira/browse/FLINK-3489) | Refactor Table API before merging into master |  Major | Table API & SQL | Timo Walther | Vasia Kalavri |
| [FLINK-3612](https://issues.apache.org/jira/browse/FLINK-3612) | Fix/adjust Table API examples |  Major | Table API & SQL | Vasia Kalavri | Vasia Kalavri |
| [FLINK-3327](https://issues.apache.org/jira/browse/FLINK-3327) | Attach the ExecutionConfig to the JobGraph and make it accessible to the AbstractInvocable. |  Major | Distributed Coordination | Kostas Kloudas | Kostas Kloudas |
| [FLINK-3748](https://issues.apache.org/jira/browse/FLINK-3748) | Add CASE function to Table API |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-3230](https://issues.apache.org/jira/browse/FLINK-3230) | Kinesis streaming producer |  Major | Streaming Connectors | Tzu-Li (Gordon) Tai | Robert Metzger |
| [FLINK-3756](https://issues.apache.org/jira/browse/FLINK-3756) | Introduce state hierarchy in CheckpointCoordinator |  Major | JobManager | Till Rohrmann | Till Rohrmann |
| [FLINK-3837](https://issues.apache.org/jira/browse/FLINK-3837) | Create FLOOR/CEIL function |  Minor | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-3229](https://issues.apache.org/jira/browse/FLINK-3229) | Kinesis streaming consumer with integration of Flink\'s checkpointing mechanics |  Major | Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-3141](https://issues.apache.org/jira/browse/FLINK-3141) | Design of NULL values handling in operation |  Major | Table API & SQL | Chengxiang Li |  |
| [FLINK-1502](https://issues.apache.org/jira/browse/FLINK-1502) | Expose metrics to graphite, ganglia and JMX. |  Minor | Distributed Coordination, JobManager | Robert Metzger | Chesnay Schepler |
| [FLINK-3586](https://issues.apache.org/jira/browse/FLINK-3586) | Risk of data overflow while use sum/count to calculate AVG value |  Minor | Table API & SQL | Chengxiang Li | Fabian Hueske |
| [FLINK-3129](https://issues.apache.org/jira/browse/FLINK-3129) | Add tooling to ensure interface stability |  Major | Build System | Robert Metzger | Robert Metzger |
| [FLINK-3923](https://issues.apache.org/jira/browse/FLINK-3923) | Unify configuration conventions of the Kinesis producer to the same as the consumer |  Major | Kinesis Connector, Streaming Connectors | Robert Metzger | Abdullah Ozturk |
| [FLINK-3949](https://issues.apache.org/jira/browse/FLINK-3949) | Collect Metrics in Runtime Operators |  Major | Local Runtime | Stephan Ewen | Chesnay Schepler |
| [FLINK-3951](https://issues.apache.org/jira/browse/FLINK-3951) | Add Histogram Metric Type |  Major | Core | Stephan Ewen | Till Rohrmann |
| [FLINK-4080](https://issues.apache.org/jira/browse/FLINK-4080) | Kinesis consumer not exactly-once if stopped in the middle of processing aggregated records |  Critical | Kinesis Connector, Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-4033](https://issues.apache.org/jira/browse/FLINK-4033) | Missing Scala example snippets for the Kinesis Connector documentation |  Minor | Documentation, Kinesis Connector, Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-4085](https://issues.apache.org/jira/browse/FLINK-4085) | Set Kinesis Consumer Agent to Flink |  Major | Kinesis Connector, Streaming Connectors | Robert Metzger | Robert Metzger |
| [FLINK-4062](https://issues.apache.org/jira/browse/FLINK-4062) | Update Windowing Documentation |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-1550](https://issues.apache.org/jira/browse/FLINK-1550) | Show JVM Metrics for JobManager |  Major | JobManager, Metrics | Robert Metzger | Chesnay Schepler |
| [FLINK-4057](https://issues.apache.org/jira/browse/FLINK-4057) | Expose JobManager Metrics |  Major | JobManager, Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3231](https://issues.apache.org/jira/browse/FLINK-3231) | Handle Kinesis-side resharding in Kinesis streaming consumer |  Major | Kinesis Connector, Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-4020](https://issues.apache.org/jira/browse/FLINK-4020) | Remove shard list querying from Kinesis consumer constructor |  Major | Kinesis Connector, Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-4019](https://issues.apache.org/jira/browse/FLINK-4019) | Expose approximateArrivalTimestamp through the KinesisDeserializationSchema interface |  Major | Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-4191](https://issues.apache.org/jira/browse/FLINK-4191) | Expose shard information in KinesisDeserializationSchema |  Major | Kinesis Connector, Streaming Connectors | Robert Metzger | Robert Metzger |
| [FLINK-4018](https://issues.apache.org/jira/browse/FLINK-4018) | Configurable idle time between getRecords requests to Kinesis shards |  Major | Kinesis Connector, Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-4239](https://issues.apache.org/jira/browse/FLINK-4239) | Set Default Allowed Lateness to Zero and Make Triggers Non-Purging |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3714](https://issues.apache.org/jira/browse/FLINK-3714) | Add Support for "Allowed Lateness" |  Major | Streaming | Aljoscha Krettek | Kostas Kloudas |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3609](https://issues.apache.org/jira/browse/FLINK-3609) | Revisit selection of Calcite rules |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-3847](https://issues.apache.org/jira/browse/FLINK-3847) | Reorganize package structure of flink-table |  Minor | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-3852](https://issues.apache.org/jira/browse/FLINK-3852) | Use a StreamExecutionEnvironment in the quickstart job skeleton |  Major | Quickstarts | Robert Metzger | Mark Reddy |
| [FLINK-3139](https://issues.apache.org/jira/browse/FLINK-3139) | NULL values handling in Table API |  Major | Table API & SQL | Chengxiang Li |  |


