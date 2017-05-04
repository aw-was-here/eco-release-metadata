
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

## Release 1.0.0 - 2016-03-04



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3292](https://issues.apache.org/jira/browse/FLINK-3292) | Bug in flink-jdbc. Not all JDBC drivers supported |  Minor | . | Subhobrata Dey |  |
| [FLINK-3271](https://issues.apache.org/jira/browse/FLINK-3271) | Using webhdfs in a flink topology throws classnotfound exception |  Major | Core | Abhishek Agarwal | Abhishek Agarwal |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2951](https://issues.apache.org/jira/browse/FLINK-2951) | Add Union operator to Table API. |  Minor | Documentation, Table API & SQL | Chengxiang Li | Chengxiang Li |
| [FLINK-2955](https://issues.apache.org/jira/browse/FLINK-2955) | Add operations introduction in Table API page. |  Minor | Documentation | Chengxiang Li | Chengxiang Li |
| [FLINK-2996](https://issues.apache.org/jira/browse/FLINK-2996) | Add config entry to define BlobServer port |  Major | JobManager | Stephan Ewen | Robert Metzger |
| [FLINK-3102](https://issues.apache.org/jira/browse/FLINK-3102) | Allow reading from multiple topics with one FlinkKafkaConsumer |  Major | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-2978](https://issues.apache.org/jira/browse/FLINK-2978) | Integrate web submission interface into the new dashboard |  Major | Web Client, Webfrontend | Sachin Goel | Sachin Goel |
| [FLINK-3058](https://issues.apache.org/jira/browse/FLINK-3058) | Add Kafka consumer for new 0.9.0.0 Kafka API |  Major | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-2871](https://issues.apache.org/jira/browse/FLINK-2871) | Add OuterJoin strategy with HashTable on outer side |  Minor | Local Runtime, Optimizer | Fabian Hueske | Chengxiang Li |
| [FLINK-3093](https://issues.apache.org/jira/browse/FLINK-3093) | Introduce annotations for interface stability |  Blocker | Build System | Robert Metzger | Robert Metzger |
| [FLINK-2728](https://issues.apache.org/jira/browse/FLINK-2728) | Add missing features to new web dashboard |  Major | Webfrontend | Stephan Ewen |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2895](https://issues.apache.org/jira/browse/FLINK-2895) | Duplicate immutable object creation |  Minor | Distributed Coordination | Greg Hogan | Greg Hogan |
| [FLINK-2893](https://issues.apache.org/jira/browse/FLINK-2893) | Rename recovery configuration keys |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2902](https://issues.apache.org/jira/browse/FLINK-2902) | Web interface sort tasks newest first |  Minor | Webfrontend | Greg Hogan | Sachin Goel |
| [FLINK-2932](https://issues.apache.org/jira/browse/FLINK-2932) | Flink quickstart docs should ask users to download from https, not http |  Minor | Documentation | Frederick F. Kautz IV |  |
| [FLINK-2898](https://issues.apache.org/jira/browse/FLINK-2898) | Invert Travis CI build order |  Trivial | Build System | Greg Hogan | Robert Metzger |
| [FLINK-2981](https://issues.apache.org/jira/browse/FLINK-2981) | Update README for building docs |  Minor | Documentation | Martin Junghanns | Martin Junghanns |
| [FLINK-2966](https://issues.apache.org/jira/browse/FLINK-2966) | Improve the way job duration is reported on web frontend. |  Minor | Webfrontend | Sachin Goel | Sachin Goel |
| [FLINK-2994](https://issues.apache.org/jira/browse/FLINK-2994) | Client sysout logging does not report exceptions |  Major | Client | Stephan Ewen | Stephan Ewen |
| [FLINK-3017](https://issues.apache.org/jira/browse/FLINK-3017) | Broken \'Slots\' link on Streaming Programming Guide |  Minor | Documentation | Suneel Marthi | Suneel Marthi |
| [FLINK-3040](https://issues.apache.org/jira/browse/FLINK-3040) | Add docs describing how to configure State Backends |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-3028](https://issues.apache.org/jira/browse/FLINK-3028) | Cannot cancel restarting job via web frontend |  Major | Webfrontend | Ufuk Celebi |  |
| [FLINK-2974](https://issues.apache.org/jira/browse/FLINK-2974) | Add periodic offset commit to Kafka Consumer if checkpointing is disabled |  Major | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-2017](https://issues.apache.org/jira/browse/FLINK-2017) | Add predefined required parameters to ParameterTool |  Major | . | Robert Metzger | Martin Liesenberg |
| [FLINK-3045](https://issues.apache.org/jira/browse/FLINK-3045) | Properly expose the key of a kafka message |  Critical | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-3051](https://issues.apache.org/jira/browse/FLINK-3051) | Define a maximum number of concurrent inflight checkpoints |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-3046](https://issues.apache.org/jira/browse/FLINK-3046) | Integrate the Either Java type with the TypeExtractor |  Major | Type Serialization System | Vasia Kalavri | Timo Walther |
| [FLINK-2961](https://issues.apache.org/jira/browse/FLINK-2961) | Add support for basic type Date in Table API |  Minor | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-3056](https://issues.apache.org/jira/browse/FLINK-3056) | Show bytes sent/received as MBs/GB and so on in web interface |  Major | Webfrontend | Robert Metzger | Sachin Goel |
| [FLINK-2904](https://issues.apache.org/jira/browse/FLINK-2904) | Web interface truncated task counts |  Minor | Webfrontend | Greg Hogan | Sachin Goel |
| [FLINK-3084](https://issues.apache.org/jira/browse/FLINK-3084) | File State Backend should not write very small state into files |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-3069](https://issues.apache.org/jira/browse/FLINK-3069) | Make state materialization asynchronous |  Major | Streaming | Stephan Ewen | Aljoscha Krettek |
| [FLINK-3055](https://issues.apache.org/jira/browse/FLINK-3055) | ExecutionVertex has duplicate method getParallelSubtaskIndex and getSubTaskIndex |  Trivial | Distributed Coordination | Ufuk Celebi | jun aoki |
| [FLINK-3124](https://issues.apache.org/jira/browse/FLINK-3124) | Introduce a TaskInfo object to better represent task name, index, attempt number etc. |  Major | . | Sachin Goel | Sachin Goel |
| [FLINK-2524](https://issues.apache.org/jira/browse/FLINK-2524) | Add "getTaskNameWithSubtasks()" to RuntimeContext |  Major | Local Runtime | Stephan Ewen | Sachin Goel |
| [FLINK-2488](https://issues.apache.org/jira/browse/FLINK-2488) | Expose attemptNumber in RuntimeContext |  Minor | Distributed Coordination, JobManager | Robert Metzger | Sachin Goel |
| [FLINK-2897](https://issues.apache.org/jira/browse/FLINK-2897) | Use distinct initial indices for OutputEmitter round-robin |  Major | Distributed Coordination | Greg Hogan | Greg Hogan |
| [FLINK-3073](https://issues.apache.org/jira/browse/FLINK-3073) | Activate streaming mode by default |  Major | Distributed Coordination | Robert Metzger | Aljoscha Krettek |
| [FLINK-3074](https://issues.apache.org/jira/browse/FLINK-3074) | Make ApplicationMaster/JobManager akka port configurable |  Major | YARN | Robert Metzger | Robert Metzger |
| [FLINK-2936](https://issues.apache.org/jira/browse/FLINK-2936) | ClassCastException when using EventTimeSourceFunction in non-EventTime program |  Major | Streaming | Fabian Hueske | Aljoscha Krettek |
| [FLINK-3023](https://issues.apache.org/jira/browse/FLINK-3023) | Show Flink version + commit id for -SNAPSHOT versions in web frontend |  Major | Webfrontend | Robert Metzger | Sachin Goel |
| [FLINK-3077](https://issues.apache.org/jira/browse/FLINK-3077) | Add "version" command to CliFrontend for showing the version of the installation |  Major | Client | Robert Metzger | Sachin Goel |
| [FLINK-2882](https://issues.apache.org/jira/browse/FLINK-2882) | Improve performance of string conversions |  Major | Core | Greg Hogan | Greg Hogan |
| [FLINK-3116](https://issues.apache.org/jira/browse/FLINK-3116) | Remove RecordOperator |  Trivial | Core | Chesnay Schepler | jun aoki |
| [FLINK-8](https://issues.apache.org/jira/browse/FLINK-8) | [GitHub] Implement automatic sample histogram building for Range Partitioning |  Major | . | GitHub Import | Chengxiang Li |
| [FLINK-3181](https://issues.apache.org/jira/browse/FLINK-3181) | The vertex-centric SSSP example and library method send unnecessary messages during the first superstep |  Major | Gelly | Vasia Kalavri | Vasia Kalavri |
| [FLINK-3131](https://issues.apache.org/jira/browse/FLINK-3131) | Expose checkpoint metrics |  Major | Webfrontend | Ufuk Celebi | Ufuk Celebi |
| [FLINK-734](https://issues.apache.org/jira/browse/FLINK-734) | Integrate web job client into JobManager web interface |  Major | . | GitHub Import |  |
| [FLINK-1228](https://issues.apache.org/jira/browse/FLINK-1228) | Add REST Interface to JobManager |  Major | . | Arvid Heise |  |
| [FLINK-3194](https://issues.apache.org/jira/browse/FLINK-3194) | Remove web client |  Major | Webfrontend | Stephan Ewen | Stephan Ewen |
| [FLINK-3176](https://issues.apache.org/jira/browse/FLINK-3176) | Window Apply Website Example |  Trivial | Project Website | radu |  |
| [FLINK-2962](https://issues.apache.org/jira/browse/FLINK-2962) | Cluster startup script refers to unused variable |  Major | Startup Shell Scripts | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3219](https://issues.apache.org/jira/browse/FLINK-3219) | Implement DataSet.count using a single operator |  Minor | . | Greg Hogan | Greg Hogan |
| [FLINK-3232](https://issues.apache.org/jira/browse/FLINK-3232) | Add option to eagerly deploy channels |  Minor | Distributed Coordination | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3235](https://issues.apache.org/jira/browse/FLINK-3235) | Drop Flink-on-Tez code |  Major | Flink on Tez | Ufuk Celebi | Stephan Ewen |
| [FLINK-1947](https://issues.apache.org/jira/browse/FLINK-1947) | Make Avro and Tachyon test logging less verbose |  Minor | . | Till Rohrmann |  |
| [FLINK-3244](https://issues.apache.org/jira/browse/FLINK-3244) | Add log messages to savepoint coordinator restore |  Minor | Distributed Coordination | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3063](https://issues.apache.org/jira/browse/FLINK-3063) | [py] Remove combiner |  Major | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3122](https://issues.apache.org/jira/browse/FLINK-3122) | Generalize value type in LabelPropagation |  Major | Gelly | Martin Junghanns | Martin Junghanns |
| [FLINK-3246](https://issues.apache.org/jira/browse/FLINK-3246) | Consolidate maven project names with \*-parent suffix |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-3209](https://issues.apache.org/jira/browse/FLINK-3209) | Remove Unused ProcessingTime, EventTime and AbstractTime |  Blocker | . | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3198](https://issues.apache.org/jira/browse/FLINK-3198) | Rename Grouping.getDataSet() method and add JavaDocs |  Major | DataSet API | Fabian Hueske | Kostas Kloudas |
| [FLINK-1903](https://issues.apache.org/jira/browse/FLINK-1903) | Joins where one side uses a field more than once don\'t work |  Minor | . | Aljoscha Krettek | Fabian Hueske |
| [FLINK-3233](https://issues.apache.org/jira/browse/FLINK-3233) | PartitionOperator does not support expression keys on atomic types |  Major | DataSet API | Fabian Hueske | Fabian Hueske |
| [FLINK-3135](https://issues.apache.org/jira/browse/FLINK-3135) | Add chainable driver for UNARY\_NO\_OP strategy |  Minor | Local Runtime | Fabian Hueske | ramkrishna.s.vasudevan |
| [FLINK-2940](https://issues.apache.org/jira/browse/FLINK-2940) | Deploy multiple Scala versions for Maven artifacts |  Major | Build System | Maximilian Michels | Maximilian Michels |
| [FLINK-3290](https://issues.apache.org/jira/browse/FLINK-3290) | [py] Generalize OperationInfo transfer |  Major | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3262](https://issues.apache.org/jira/browse/FLINK-3262) | Remove fuzzy versioning from Bower dependencies |  Trivial | Webfrontend | Greg Hogan | Greg Hogan |
| [FLINK-3178](https://issues.apache.org/jira/browse/FLINK-3178) | Make Closing Behavior of Window Operators Configurable |  Blocker | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3305](https://issues.apache.org/jira/browse/FLINK-3305) | Remove JavaKaffee serializer util |  Blocker | Java API | Stephan Ewen | Stephan Ewen |
| [FLINK-3306](https://issues.apache.org/jira/browse/FLINK-3306) | Auto type registration at Kryo is buggy |  Major | Java API | Stephan Ewen | Stephan Ewen |
| [FLINK-3265](https://issues.apache.org/jira/browse/FLINK-3265) | RabbitMQ Source not threadsafe: ConcurrentModificationException |  Blocker | Streaming Connectors | Robert Metzger | Maximilian Michels |
| [FLINK-3049](https://issues.apache.org/jira/browse/FLINK-3049) | Move "Either" type to package "org.apache.flink.types" |  Major | Core, Java API | Stephan Ewen | Vasia Kalavri |
| [FLINK-3161](https://issues.apache.org/jira/browse/FLINK-3161) | Externalize cluster start-up and tear-down when available |  Minor | Startup Shell Scripts | Greg Hogan | Greg Hogan |
| [FLINK-3120](https://issues.apache.org/jira/browse/FLINK-3120) | Set number of event loop thread and number of buffer pool arenas to same number |  Major | Distributed Coordination | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3336](https://issues.apache.org/jira/browse/FLINK-3336) | Add Semi-Rebalance Data Shipping for DataStream |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3348](https://issues.apache.org/jira/browse/FLINK-3348) | taskmanager.memory.off-heap missing bc documentation |  Trivial | Documentation | Flavio Pompermaier | Maximilian Michels |
| [FLINK-3278](https://issues.apache.org/jira/browse/FLINK-3278) | Add Partitioned State Backend Based on RocksDB |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3334](https://issues.apache.org/jira/browse/FLINK-3334) | Change default log4j.properties Conversion pattern to include year-month-day in the timestamp |  Minor | . | Gyula Fora | Stephan Ewen |
| [FLINK-3355](https://issues.apache.org/jira/browse/FLINK-3355) | Allow passing RocksDB Option to RocksDBStateBackend |  Critical | Streaming | Gyula Fora | Stephan Ewen |
| [FLINK-3364](https://issues.apache.org/jira/browse/FLINK-3364) | Don\'t initialize SavepointStore in JobManager constructor |  Critical | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3270](https://issues.apache.org/jira/browse/FLINK-3270) | Add example for reading and writing to Kafka |  Major | Examples, Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-2991](https://issues.apache.org/jira/browse/FLINK-2991) | Extend Window Operators to Allow Efficient Fold Operation |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2380](https://issues.apache.org/jira/browse/FLINK-2380) | Allow to configure default FS for file inputs |  Minor | JobManager | Ufuk Celebi | Kostas Kloudas |
| [FLINK-3413](https://issues.apache.org/jira/browse/FLINK-3413) | Remove implicit Seq to DataStream conversion |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-3308](https://issues.apache.org/jira/browse/FLINK-3308) | [py] Remove debug mode |  Major | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3402](https://issues.apache.org/jira/browse/FLINK-3402) | Refactor Common Parts of Stream/Batch Documentation |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3200](https://issues.apache.org/jira/browse/FLINK-3200) | Use Partitioned State Abstraction in WindowOperator |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3379](https://issues.apache.org/jira/browse/FLINK-3379) | Refactor TimestampExtractor |  Critical | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-3421](https://issues.apache.org/jira/browse/FLINK-3421) | Remove all unused ClassTag context bounds in the Streaming Scala API |  Major | Scala API | Stephan Ewen | Stephan Ewen |
| [FLINK-3419](https://issues.apache.org/jira/browse/FLINK-3419) | Drop partitionByHash from DataStream |  Blocker | Streaming | Aljoscha Krettek | Stephan Ewen |
| [FLINK-3430](https://issues.apache.org/jira/browse/FLINK-3430) | Remove "no POJO" warning in TypeAnalyzer |  Major | Scala API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3436](https://issues.apache.org/jira/browse/FLINK-3436) | Remove ComplexIntegrationITCase |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3147](https://issues.apache.org/jira/browse/FLINK-3147) | HadoopOutputFormatBase should expose fields as protected |  Minor | . | Nick Dimiduk | Nick Dimiduk |
| [FLINK-3386](https://issues.apache.org/jira/browse/FLINK-3386) | Kafka consumers are not properly respecting the "auto.offset.reset" behavior |  Major | Kafka Connector, Streaming Connectors | Gyula Fora | Robert Metzger |
| [FLINK-3455](https://issues.apache.org/jira/browse/FLINK-3455) | Bump Kafka 0.9 connector dependency to Kafka 0.9.0.1 |  Major | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-2213](https://issues.apache.org/jira/browse/FLINK-2213) | Configure number of vcores |  Major | YARN | Ufuk Celebi | Kostas Kloudas |
| [FLINK-3460](https://issues.apache.org/jira/browse/FLINK-3460) | Make flink-streaming-connectors\' flink dependencies provided |  Minor | . | Till Rohrmann | Till Rohrmann |
| [FLINK-3459](https://issues.apache.org/jira/browse/FLINK-3459) | Make build SBT compatible |  Minor | . | Till Rohrmann | Till Rohrmann |
| [FLINK-2021](https://issues.apache.org/jira/browse/FLINK-2021) | Rework examples to use ParameterTool |  Minor | Examples | Robert Metzger | Stefano Baghino |
| [FLINK-3435](https://issues.apache.org/jira/browse/FLINK-3435) | Change interplay of Ingestion Time and Event Time |  Blocker | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-3509](https://issues.apache.org/jira/browse/FLINK-3509) | Update Hadoop versions in release script and on travis to the latest minor version |  Major | Build System | Robert Metzger | Robert Metzger |
| [FLINK-3520](https://issues.apache.org/jira/browse/FLINK-3520) | Periodic watermark operator should emit current watermark in close() |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-3522](https://issues.apache.org/jira/browse/FLINK-3522) | Storm examples "PrintSampleStream" throws an error if called without arguments |  Major | Storm Compatibility | Stephan Ewen | Stephan Ewen |
| [FLINK-3521](https://issues.apache.org/jira/browse/FLINK-3521) | Make Iterable part of method signature for WindowFunction |  Blocker | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3528](https://issues.apache.org/jira/browse/FLINK-3528) | Add Incremental Fold for Non-Keyed Window Operator |  Blocker | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3527](https://issues.apache.org/jira/browse/FLINK-3527) | Scala DataStream has no transform method |  Blocker | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3535](https://issues.apache.org/jira/browse/FLINK-3535) | Decrease logging verbosity of StackTraceSampleCoordinator |  Minor | Webfrontend | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3538](https://issues.apache.org/jira/browse/FLINK-3538) | DataStream join API does not enforce consistent usage |  Major | DataStream API, Scala API | Till Rohrmann | Aljoscha Krettek |
| [FLINK-3536](https://issues.apache.org/jira/browse/FLINK-3536) | Make clearer distinction between event time and processing time |  Minor | DataStream API | Till Rohrmann | Aljoscha Krettek |
| [FLINK-3548](https://issues.apache.org/jira/browse/FLINK-3548) | Remove unnecessary generic parameter from SingleOutputStreamOperator |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3559](https://issues.apache.org/jira/browse/FLINK-3559) | Don\'t print pid file check if no active PID |  Trivial | Startup Shell Scripts | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3461](https://issues.apache.org/jira/browse/FLINK-3461) | Remove duplicate condition check in ZooKeeperLeaderElectionService |  Trivial | . | Ufuk Celebi |  |
| [FLINK-2788](https://issues.apache.org/jira/browse/FLINK-2788) | Add type hint with TypeExtactor call on Hint Type |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-3422](https://issues.apache.org/jira/browse/FLINK-3422) | Scramble HashPartitioner hashes |  Critical | Streaming | Stephan Ewen | Gabor Horvath |
| [FLINK-3309](https://issues.apache.org/jira/browse/FLINK-3309) | [py] Resolve maven warnings |  Minor | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3169](https://issues.apache.org/jira/browse/FLINK-3169) | Drop {{Key}} type from Record Data Model |  Major | . | Stephan Ewen | Chesnay Schepler |
| [FLINK-2523](https://issues.apache.org/jira/browse/FLINK-2523) | Make task canceling interrupt interval configurable |  Major | Distributed Coordination | Stephan Ewen | Kostas Kloudas |
| [FLINK-3315](https://issues.apache.org/jira/browse/FLINK-3315) | Fix Slot Sharing in Streaming API |  Blocker | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3376](https://issues.apache.org/jira/browse/FLINK-3376) | Add an illustration of Event Time and Watermarks to the docs |  Critical | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-3358](https://issues.apache.org/jira/browse/FLINK-3358) | Create constructors for FsStateBackend in RocksDBBackens |  Critical | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-2344](https://issues.apache.org/jira/browse/FLINK-2344) | Deprecate/Remove the old Pact Pair type |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-3887](https://issues.apache.org/jira/browse/FLINK-3887) | Improve dependency management for building docs |  Major | Documentation | Maximilian Michels | Maximilian Michels |
| [FLINK-3042](https://issues.apache.org/jira/browse/FLINK-3042) | Define a way to let types create their own TypeInformation |  Major | Core | Stephan Ewen | Timo Walther |
| [FLINK-3123](https://issues.apache.org/jira/browse/FLINK-3123) | Allow setting custom start-offsets for the Kafka consumer |  Major | Kafka Connector | Robert Metzger | Tzu-Li (Gordon) Tai |
| [FLINK-3347](https://issues.apache.org/jira/browse/FLINK-3347) | TaskManager (or its ActorSystem) need to restart in case they notice quarantine |  Critical | Distributed Coordination | Stephan Ewen | Till Rohrmann |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2827](https://issues.apache.org/jira/browse/FLINK-2827) | Potential resource leak in TwitterSource#loadAuthenticationProperties() |  Minor | . | Ted Yu | Saumitra Shahapure |
| [FLINK-2934](https://issues.apache.org/jira/browse/FLINK-2934) | Remove placehoder pages in Web dashboard |  Major | . | Sachin Goel | Sachin Goel |
| [FLINK-2800](https://issues.apache.org/jira/browse/FLINK-2800) | kryo serialization problem |  Major | Type Serialization System | Stefano Bortoli | Till Rohrmann |
| [FLINK-2958](https://issues.apache.org/jira/browse/FLINK-2958) | StreamingJobGraphGenerator sets hard coded number execution retry |  Major | Distributed Coordination | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2930](https://issues.apache.org/jira/browse/FLINK-2930) | ExecutionConfig execution retry delay not respected |  Major | Distributed Coordination | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2938](https://issues.apache.org/jira/browse/FLINK-2938) | Streaming docs not in sync with latest state changes |  Minor | Documentation | Maximilian Michels | Stephan Ewen |
| [FLINK-2979](https://issues.apache.org/jira/browse/FLINK-2979) | RollingSink does not work with Hadoop 2.7.1 |  Major | Streaming Connectors | Till Rohrmann | Aljoscha Krettek |
| [FLINK-2990](https://issues.apache.org/jira/browse/FLINK-2990) | Scala 2.11 build fails to start on YARN |  Major | Build System, YARN | Robert Metzger | Robert Metzger |
| [FLINK-2987](https://issues.apache.org/jira/browse/FLINK-2987) | Flink 0.10 fails to start on YARN 2.6.0 |  Major | Build System, YARN | Robert Metzger | Robert Metzger |
| [FLINK-2992](https://issues.apache.org/jira/browse/FLINK-2992) | New Windowing code is using SerializationUtils with wrong classloader |  Critical | Streaming | Robert Metzger | Robert Metzger |
| [FLINK-2826](https://issues.apache.org/jira/browse/FLINK-2826) | transformed is modified in BroadcastVariableMaterialization#decrementReferenceInternal without proper locking |  Major | . | Ted Yu | Ted Yu |
| [FLINK-2797](https://issues.apache.org/jira/browse/FLINK-2797) | CLI: Missing option to submit jobs in detached mode |  Major | Client | Maximilian Michels | Sachin Goel |
| [FLINK-2977](https://issues.apache.org/jira/browse/FLINK-2977) | Cannot access HBase in a Kerberos secured Yarn cluster |  Major | YARN | Niels Basjes | Niels Basjes |
| [FLINK-3022](https://issues.apache.org/jira/browse/FLINK-3022) | Broken link \'Working With State\' in Fault Tolerance Section of Stream Programming Guide |  Major | Documentation | Suneel Marthi | Suneel Marthi |
| [FLINK-3024](https://issues.apache.org/jira/browse/FLINK-3024) | TimestampExtractor Does not Work When returning Long.MIN\_VALUE |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2879](https://issues.apache.org/jira/browse/FLINK-2879) | Links in documentation are broken |  Minor | Project Website | Nikolaas Steenbergen | Andra Lungu |
| [FLINK-2967](https://issues.apache.org/jira/browse/FLINK-2967) | TM address detection might not always detect the right interface on slow networks / overloaded JMs |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-2914](https://issues.apache.org/jira/browse/FLINK-2914) | Missing break in ZooKeeperSubmittedJobGraphStore#SubmittedJobGraphsPathCacheListener#childEvent() |  Minor | . | Ted Yu | Chesnay Schepler |
| [FLINK-3013](https://issues.apache.org/jira/browse/FLINK-3013) | Incorrect package declaration in GellyScalaAPICompletenessTest.scala |  Major | Gelly, Scala API | Suneel Marthi | Suneel Marthi |
| [FLINK-2937](https://issues.apache.org/jira/browse/FLINK-2937) | Typo in Quickstart-\>Scala API-\>Alternative Build Tools: SBT |  Trivial | Documentation | Theodore Vasiloudis | Chesnay Schepler |
| [FLINK-2989](https://issues.apache.org/jira/browse/FLINK-2989) | Job Cancel button doesn\'t work on Yarn |  Major | Webfrontend | Sachin Goel | Maximilian Michels |
| [FLINK-2942](https://issues.apache.org/jira/browse/FLINK-2942) | Dangling operators in web UI\'s program visualization (non-deterministic) |  Critical | Webfrontend | Fabian Hueske | Piotr Godek |
| [FLINK-3005](https://issues.apache.org/jira/browse/FLINK-3005) | Commons-collections object deserialization remote command execution vulnerability |  Major | . | Ted Yu | Ted Yu |
| [FLINK-3043](https://issues.apache.org/jira/browse/FLINK-3043) | Kafka Connector description in Streaming API guide is wrong/outdated |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-3048](https://issues.apache.org/jira/browse/FLINK-3048) | DataSinkTaskTest.testCancelDataSinkTask |  Critical | Tests | Matthias J. Sax | Stephan Ewen |
| [FLINK-2913](https://issues.apache.org/jira/browse/FLINK-2913) | Close of ObjectOutputStream should be enclosed in finally block in FsStateBackend |  Minor | . | Ted Yu | Ted Yu |
| [FLINK-3019](https://issues.apache.org/jira/browse/FLINK-3019) | CLI does not list running/restarting jobs |  Minor | Client | Ufuk Celebi |  |
| [FLINK-3011](https://issues.apache.org/jira/browse/FLINK-3011) | Cannot cancel failing/restarting streaming job from the command line |  Critical | Client | Gyula Fora | Ufuk Celebi |
| [FLINK-3032](https://issues.apache.org/jira/browse/FLINK-3032) | Flink does not start on Hadoop 2.7.1 (HDP), due to class conflict |  Critical | Build System | Robert Metzger | Robert Metzger |
| [FLINK-3052](https://issues.apache.org/jira/browse/FLINK-3052) | Optimizer does not push properties out of bulk iterations |  Major | Optimizer | Till Rohrmann | Till Rohrmann |
| [FLINK-3020](https://issues.apache.org/jira/browse/FLINK-3020) | Local streaming execution: set number of task manager slots to the maximum parallelism |  Minor | Local Runtime | Maximilian Michels | Maximilian Michels |
| [FLINK-3000](https://issues.apache.org/jira/browse/FLINK-3000) | Add ShutdownHook to YARN CLI to prevent lingering sessions |  Major | YARN | Ufuk Celebi | Sachin Goel |
| [FLINK-3059](https://issues.apache.org/jira/browse/FLINK-3059) | Javadoc fix for DataSet.writeAsText() |  Trivial | . | jun aoki | jun aoki |
| [FLINK-3082](https://issues.apache.org/jira/browse/FLINK-3082) | Confusing error about ManualTimestampSourceFunction |  Major | . | Niels Basjes | Niels Basjes |
| [FLINK-3054](https://issues.apache.org/jira/browse/FLINK-3054) | Remove R (return) type variable from SerializationSchema |  Major | Streaming | Robert Metzger | Robert Metzger |
| [FLINK-3081](https://issues.apache.org/jira/browse/FLINK-3081) | Kafka Periodic Offset Committer does not properly terminate on canceling |  Blocker | Kafka Connector | Stephan Ewen | Robert Metzger |
| [FLINK-3061](https://issues.apache.org/jira/browse/FLINK-3061) | Kafka Consumer is not failing if broker is not available |  Major | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-2950](https://issues.apache.org/jira/browse/FLINK-2950) | Markdown presentation problem in SVM documentation |  Minor | Documentation, Machine Learning Library | Chiwan Park | Chiwan Park |
| [FLINK-3087](https://issues.apache.org/jira/browse/FLINK-3087) | Table API do not support multi count in aggregation. |  Major | Table API & SQL | Chengxiang Li | Chengxiang Li |
| [FLINK-3080](https://issues.apache.org/jira/browse/FLINK-3080) | Cannot union a data stream with a product of itself |  Major | Streaming | Vasia Kalavri | Aljoscha Krettek |
| [FLINK-2115](https://issues.apache.org/jira/browse/FLINK-2115) | TableAPI throws ExpressionException for "Dangling GroupBy operation" |  Major | Table API & SQL | Fabian Hueske | Chengxiang Li |
| [FLINK-3100](https://issues.apache.org/jira/browse/FLINK-3100) | Signal handler prints error on normal shutdown of cluster |  Major | Distributed Coordination, JobManager | Maximilian Michels | Maximilian Michels |
| [FLINK-3098](https://issues.apache.org/jira/browse/FLINK-3098) | Cast from Date to Long throw compile error. |  Major | Table API & SQL | Chengxiang Li | Chengxiang Li |
| [FLINK-2954](https://issues.apache.org/jira/browse/FLINK-2954) | Not able to pass custom environment variables in cluster to processes that spawning TaskManager |  Critical | Client, Distributed Coordination | Jian Jiang | Robert Metzger |
| [FLINK-3125](https://issues.apache.org/jira/browse/FLINK-3125) | Web dashboard does not start when log files are not found |  Major | Webfrontend | Stephan Ewen | Stephan Ewen |
| [FLINK-2963](https://issues.apache.org/jira/browse/FLINK-2963) | Dependence on SerializationUtils#deserialize() should be avoided |  Minor | . | Ted Yu | Robert Metzger |
| [FLINK-1278](https://issues.apache.org/jira/browse/FLINK-1278) | Remove the Record special code paths |  Minor | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-3108](https://issues.apache.org/jira/browse/FLINK-3108) | JoinOperator\'s with() calls the wrong TypeExtractor method |  Major | . | Vasia Kalavri | Timo Walther |
| [FLINK-3101](https://issues.apache.org/jira/browse/FLINK-3101) | Flink Kafka consumer crashes with NPE when it sees deleted record |  Major | Kafka Connector | Sanjar Akhmedov | Robert Metzger |
| [FLINK-3136](https://issues.apache.org/jira/browse/FLINK-3136) | Scala Closure Cleaner uses wrong ASM import |  Critical | Scala API | Stephan Ewen | Aljoscha Krettek |
| [FLINK-3143](https://issues.apache.org/jira/browse/FLINK-3143) | Update Clojure Cleaner\'s ASM references to ASM5 |  Major | Local Runtime | Maximilian Michels | Maximilian Michels |
| [FLINK-3145](https://issues.apache.org/jira/browse/FLINK-3145) | Storm examples can\'t be run without flink-java as dependency |  Major | Build System, Java API, Storm Compatibility | Maximilian Michels | Maximilian Michels |
| [FLINK-3156](https://issues.apache.org/jira/browse/FLINK-3156) | FlinkKafkaConsumer fails with NPE on notifyCheckpointComplete |  Major | Kafka Connector | Till Rohrmann | Robert Metzger |
| [FLINK-3121](https://issues.apache.org/jira/browse/FLINK-3121) | Watermark forwarding does not work for sources not producing any data |  Blocker | . | Robert Metzger | Aljoscha Krettek |
| [FLINK-2769](https://issues.apache.org/jira/browse/FLINK-2769) | Web dashboard port not configurable on client side |  Critical | Webfrontend | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3171](https://issues.apache.org/jira/browse/FLINK-3171) | Consolidate zoo of wrapper classes for input/output-stream to data-input/output-view |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-2622](https://issues.apache.org/jira/browse/FLINK-2622) | Scala DataStream API does not have writeAsText method which supports WriteMode |  Major | Scala API, Streaming | Till Rohrmann | Till Rohrmann |
| [FLINK-3180](https://issues.apache.org/jira/browse/FLINK-3180) | MemoryLogger does not log direct memory |  Major | Distributed Coordination | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3173](https://issues.apache.org/jira/browse/FLINK-3173) | Bump org.apache.httpcomponents.httpclient version to 4.2.6 |  Minor | . | Till Rohrmann | Till Rohrmann |
| [FLINK-3166](https://issues.apache.org/jira/browse/FLINK-3166) | The first program in ObjectReuseITCase has the wrong expected result, and it succeeds |  Critical | Distributed Coordination, Documentation, Tests | Gabor Gevay | Greg Hogan |
| [FLINK-3103](https://issues.apache.org/jira/browse/FLINK-3103) | Remove synchronization in FsStateBackend#FsCheckpointStateOutputStream#close() |  Major | . | Ted Yu | Ted Yu |
| [FLINK-3185](https://issues.apache.org/jira/browse/FLINK-3185) | Silent failure during job graph recovery |  Major | Distributed Coordination | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3009](https://issues.apache.org/jira/browse/FLINK-3009) | Cannot build docs with Jekyll 3.0.0 |  Minor | Build System | Ufuk Celebi | jun aoki |
| [FLINK-3157](https://issues.apache.org/jira/browse/FLINK-3157) | Web frontend json files contain author attribution |  Trivial | Webfrontend | Ufuk Celebi | Stephan Ewen |
| [FLINK-3188](https://issues.apache.org/jira/browse/FLINK-3188) | Deletes in Kafka source should be passed on to KeyedDeserializationSchema |  Major | Kafka Connector | Sebastian Klemke | Robert Metzger |
| [FLINK-1644](https://issues.apache.org/jira/browse/FLINK-1644) | WebClient dies when no ExecutionEnvironment in main method |  Minor | Webfrontend | Jonathan Hasenburg |  |
| [FLINK-3218](https://issues.apache.org/jira/browse/FLINK-3218) | Merging Hadoop configurations overrides user parameters |  Major | Java API | Greg Hogan | Greg Hogan |
| [FLINK-3189](https://issues.apache.org/jira/browse/FLINK-3189) | Error while parsing job arguments passed by CLI |  Minor | Client | Filip Leczycki | Matthias J. Sax |
| [FLINK-3118](https://issues.apache.org/jira/browse/FLINK-3118) | Check if MessageFunction implements ResultTypeQueryable |  Major | Gelly | Martin Junghanns | Martin Junghanns |
| [FLINK-3151](https://issues.apache.org/jira/browse/FLINK-3151) | YARN kills Flink TM containers due to memory overuse (outside heap/offheap) |  Blocker | Distributed Coordination | Robert Metzger | Ufuk Celebi |
| [FLINK-2586](https://issues.apache.org/jira/browse/FLINK-2586) | Unstable Storm Compatibility Tests |  Critical | Storm Compatibility | Stephan Ewen | Matthias J. Sax |
| [FLINK-3197](https://issues.apache.org/jira/browse/FLINK-3197) | InputStream not closed in BinaryInputFormat#createStatistics |  Minor | . | Ted Yu |  |
| [FLINK-3236](https://issues.apache.org/jira/browse/FLINK-3236) | Flink user code classloader should have Flink classloader as parent classloader |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-3067](https://issues.apache.org/jira/browse/FLINK-3067) | Kafka source fails during checkpoint notifications with NPE |  Major | Kafka Connector | Gyula Fora | Robert Metzger |
| [FLINK-3251](https://issues.apache.org/jira/browse/FLINK-3251) | Checkpoint stats show ghost numbers |  Major | Webfrontend | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3252](https://issues.apache.org/jira/browse/FLINK-3252) | Checkpoint stats only displayed after click on graph |  Major | Webfrontend | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3250](https://issues.apache.org/jira/browse/FLINK-3250) | Savepoint coordinator requires too strict parallelism match |  Major | Distributed Coordination | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3220](https://issues.apache.org/jira/browse/FLINK-3220) | Flink does not start on Hortonworks Sandbox 2.3.2 due to missing class |  Blocker | Build System | Robert Metzger | Robert Metzger |
| [FLINK-3206](https://issues.apache.org/jira/browse/FLINK-3206) | Heap size for non-pre-allocated off-heap memory |  Major | Startup Shell Scripts | Greg Hogan | Maximilian Michels |
| [FLINK-3261](https://issues.apache.org/jira/browse/FLINK-3261) | Tasks should eagerly report back when they cannot start a checkpoint |  Blocker | Distributed Coordination | Stephan Ewen | Aljoscha Krettek |
| [FLINK-3255](https://issues.apache.org/jira/browse/FLINK-3255) | Chaining behavior should not depend on parallelism |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-3267](https://issues.apache.org/jira/browse/FLINK-3267) | Disable reference tracking in Kryo fallback serializer |  Blocker | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-3274](https://issues.apache.org/jira/browse/FLINK-3274) | Prefix Kafka connector accumulators with unique id |  Major | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-3280](https://issues.apache.org/jira/browse/FLINK-3280) | Wrong usage of Boolean.getBoolean() |  Major | . | Ted Yu | Robert Metzger |
| [FLINK-3289](https://issues.apache.org/jira/browse/FLINK-3289) | Double reference to flink-contrib |  Trivial | Documentation | Stefano Baghino | Stefano Baghino |
| [FLINK-3242](https://issues.apache.org/jira/browse/FLINK-3242) | User-specified StateBackend is not Respected if Checkpointing is Disabled |  Blocker | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3196](https://issues.apache.org/jira/browse/FLINK-3196) | InputStream should be closed in EnvironmentInformation#getRevisionInformation() |  Minor | . | Ted Yu | Suneel Marthi |
| [FLINK-3300](https://issues.apache.org/jira/browse/FLINK-3300) | Concurrency Bug in Yarn JobManager |  Blocker | JobManager | Stephan Ewen | Maximilian Michels |
| [FLINK-3281](https://issues.apache.org/jira/browse/FLINK-3281) | IndexOutOfBoundsException when range-partitioning empty DataSet |  Major | Distributed Coordination, Local Runtime | Fridtjof Sander | Chengxiang Li |
| [FLINK-3175](https://issues.apache.org/jira/browse/FLINK-3175) | KafkaITCase.testOffsetAutocommitTest |  Critical | Kafka Connector, Tests | Matthias J. Sax | Robert Metzger |
| [FLINK-3247](https://issues.apache.org/jira/browse/FLINK-3247) | Kafka Connector unusable with quickstarts - shading issue |  Blocker | Kafka Connector | Stephan Ewen | Robert Metzger |
| [FLINK-3287](https://issues.apache.org/jira/browse/FLINK-3287) | Flink Kafka Consumer fails due to Curator version conflict |  Major | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-2348](https://issues.apache.org/jira/browse/FLINK-2348) | IterateExampleITCase failing |  Critical | Streaming | Matthias J. Sax | Stephan Ewen |
| [FLINK-3314](https://issues.apache.org/jira/browse/FLINK-3314) | Early cancel calls can cause Tasks to not cancel properly |  Blocker | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-3293](https://issues.apache.org/jira/browse/FLINK-3293) | Custom Application Name on YARN is ignored in deploy jobmanager mode |  Minor | YARN | Johannes | Johannes |
| [FLINK-3254](https://issues.apache.org/jira/browse/FLINK-3254) | CombineFunction interface not respected |  Blocker | DataSet API | Fabian Hueske | Kostas Kloudas |
| [FLINK-3328](https://issues.apache.org/jira/browse/FLINK-3328) | Incorrectly shaded dependencies in flink-runtime |  Blocker | Build System | Stephan Ewen | Robert Metzger |
| [FLINK-3268](https://issues.apache.org/jira/browse/FLINK-3268) | Unstable test JobManagerSubmittedJobGraphsRecoveryITCase |  Critical | Tests | Stephan Ewen | Stephan Ewen |
| [FLINK-2845](https://issues.apache.org/jira/browse/FLINK-2845) | TimestampITCase.testWatermarkPropagation |  Critical | Streaming | Matthias J. Sax | Aljoscha Krettek |
| [FLINK-3342](https://issues.apache.org/jira/browse/FLINK-3342) | Operator checkpoint statistics state size overflow |  Major | Distributed Coordination | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3338](https://issues.apache.org/jira/browse/FLINK-3338) | Kafka deserialization issue - ClassNotFoundException |  Major | . | Shikhar Bhushan | Stephan Ewen |
| [FLINK-3339](https://issues.apache.org/jira/browse/FLINK-3339) | Checkpointing NPE when using filterWithState |  Major | . | Shikhar Bhushan | Aljoscha Krettek |
| [FLINK-3353](https://issues.apache.org/jira/browse/FLINK-3353) | CSV-related tests may fail depending on locale |  Trivial | Tests | Stefano Baghino | Stefano Baghino |
| [FLINK-3357](https://issues.apache.org/jira/browse/FLINK-3357) | Drop JobId.toShortString() |  Major | Core | Stephan Ewen | Ufuk Celebi |
| [FLINK-3266](https://issues.apache.org/jira/browse/FLINK-3266) | LocalFlinkMiniCluster leaks resources when multiple jobs are submitted |  Minor | Local Runtime | Gabor Gevay | Stephan Ewen |
| [FLINK-3361](https://issues.apache.org/jira/browse/FLINK-3361) | Wrong error messages for execution retry delay and akka ask pause config values |  Blocker | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-3337](https://issues.apache.org/jira/browse/FLINK-3337) | mvn test fails on flink-runtime because curator classes not found |  Major | Distributed Coordination | Greg Hogan | Greg Hogan |
| [FLINK-3373](https://issues.apache.org/jira/browse/FLINK-3373) | Using a newer library of Apache HttpClient than 4.2.6 will get class loading problems |  Major | . | Jakob Sultan Ericsson | Stephan Ewen |
| [FLINK-3260](https://issues.apache.org/jira/browse/FLINK-3260) | ExecutionGraph gets stuck in state FAILING |  Blocker | JobManager | Stephan Ewen | Till Rohrmann |
| [FLINK-3350](https://issues.apache.org/jira/browse/FLINK-3350) | Increase timeouts on Travis Builds |  Critical | Tests | Stephan Ewen | Ufuk Celebi |
| [FLINK-3341](https://issues.apache.org/jira/browse/FLINK-3341) | Kafka connector\'s \'auto.offset.reset\' inconsistent with Kafka |  Minor | . | Shikhar Bhushan | Robert Metzger |
| [FLINK-3369](https://issues.apache.org/jira/browse/FLINK-3369) | RemoteTransportException should be instance of CancelTaskException |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3351](https://issues.apache.org/jira/browse/FLINK-3351) | RocksDB Backend cannot determine correct local db path |  Major | Streaming | Gyula Fora | Stephan Ewen |
| [FLINK-3392](https://issues.apache.org/jira/browse/FLINK-3392) | Unprotected access to elements in ClosableBlockingQueue#size() |  Minor | . | Ted Yu | Stephan Ewen |
| [FLINK-3352](https://issues.apache.org/jira/browse/FLINK-3352) | RocksDB Backend cannot determine correct hdfs path |  Blocker | Streaming | Gyula Fora | Aljoscha Krettek |
| [FLINK-3359](https://issues.apache.org/jira/browse/FLINK-3359) | Make RocksDB file copies asynchronous |  Major | State Backends, Checkpointing | Stephan Ewen | Aljoscha Krettek |
| [FLINK-3393](https://issues.apache.org/jira/browse/FLINK-3393) | ExternalProcessRunner wait to finish copying error stream |  Trivial | Core | Greg Hogan | Greg Hogan |
| [FLINK-3304](https://issues.apache.org/jira/browse/FLINK-3304) | AvroOutputFormat.setSchema() doesn\'t work in yarn-cluster mode |  Major | . | Sebastian Klemke | Kostas Kloudas |
| [FLINK-3296](https://issues.apache.org/jira/browse/FLINK-3296) | DataStream.write\*() methods are not flushing properly |  Critical | Streaming Connectors | Robert Metzger | Robert Metzger |
| [FLINK-3420](https://issues.apache.org/jira/browse/FLINK-3420) | Remove "ReadTextFileWithValue" from StreamExecutionEnvironment |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-3243](https://issues.apache.org/jira/browse/FLINK-3243) | Fix Interplay of TimeCharacteristic and Time Windows |  Blocker | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3415](https://issues.apache.org/jira/browse/FLINK-3415) | TimestampExctractor accepts negative watermarks |  Critical | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-3412](https://issues.apache.org/jira/browse/FLINK-3412) | Remove implicit conversions JavaStream / ScalaStream |  Major | Scala API | Stephan Ewen | Stephan Ewen |
| [FLINK-3400](https://issues.apache.org/jira/browse/FLINK-3400) | RocksDB Backend does not work when not in Flink lib folder |  Blocker | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3423](https://issues.apache.org/jira/browse/FLINK-3423) | ExternalProcessRunnerTest fails on Windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3424](https://issues.apache.org/jira/browse/FLINK-3424) | FileStateBackendtest.testStateOutputStream fails on windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3368](https://issues.apache.org/jira/browse/FLINK-3368) | Kafka 0.8 consumer fails to recover from broker shutdowns |  Blocker | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-3453](https://issues.apache.org/jira/browse/FLINK-3453) | Fix TaskManager logs exception when sampling backpressure while task completes |  Minor | Distributed Coordination | Greg Hogan | Ufuk Celebi |
| [FLINK-3248](https://issues.apache.org/jira/browse/FLINK-3248) | RMQSource does not provide a constructor for credentials or other options |  Major | Streaming Connectors | Maximilian Michels | Maximilian Michels |
| [FLINK-3439](https://issues.apache.org/jira/browse/FLINK-3439) | Remove final Long.MAX\_VALUE Watermark in StreamSource |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3450](https://issues.apache.org/jira/browse/FLINK-3450) | RocksDB Backed Window Fails with KryoSerializer |  Blocker | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3385](https://issues.apache.org/jira/browse/FLINK-3385) | Fix outer join skipping unprobed partitions |  Blocker | Distributed Coordination | Greg Hogan | Greg Hogan |
| [FLINK-3440](https://issues.apache.org/jira/browse/FLINK-3440) | Kafka should also checkpoint partitions where no initial offset was retrieved |  Blocker | Kafka Connector | Stephan Ewen | Robert Metzger |
| [FLINK-3425](https://issues.apache.org/jira/browse/FLINK-3425) | DataSinkTaskTest.Failing[Sorting]DataSinkTask fails on Windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3438](https://issues.apache.org/jira/browse/FLINK-3438) | ExternalProcessRunner fails to detect ClassNotFound exception because of locale settings |  Minor | Core | Stefano Baghino | Stefano Baghino |
| [FLINK-3458](https://issues.apache.org/jira/browse/FLINK-3458) | Shading broken in flink-shaded-hadoop |  Minor | . | Till Rohrmann | Till Rohrmann |
| [FLINK-3416](https://issues.apache.org/jira/browse/FLINK-3416) | [py] .bat files fail when path contains spaces |  Minor | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3426](https://issues.apache.org/jira/browse/FLINK-3426) | JobManagerLeader[Re]ElectionTest.testleaderElection fails on Windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3478](https://issues.apache.org/jira/browse/FLINK-3478) | Flink serves arbitary files through the web interface |  Blocker | Webfrontend | Maximilian Michels | Ufuk Celebi |
| [FLINK-3483](https://issues.apache.org/jira/browse/FLINK-3483) | Job graph visualization not working properly in OS X Chrome |  Minor | Webfrontend | Zach Cox | Ufuk Celebi |
| [FLINK-3499](https://issues.apache.org/jira/browse/FLINK-3499) | Possible ghost references in ZooKeeper completed checkpoint store |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2695](https://issues.apache.org/jira/browse/FLINK-2695) | KafkaITCase.testConcurrentProducerConsumerTopology failed on Travis |  Critical | . | Till Rohrmann | Stephan Ewen |
| [FLINK-3025](https://issues.apache.org/jira/browse/FLINK-3025) | Flink Kafka consumer may get stuck due to Kafka/Zookeeper client bug |  Critical | Streaming Connectors | Gyula Fora | Stephan Ewen |
| [FLINK-3513](https://issues.apache.org/jira/browse/FLINK-3513) | Fix interplay of automatic Operator UID and Changing name of WindowOperator |  Blocker | Streaming | Aljoscha Krettek | Ufuk Celebi |
| [FLINK-3512](https://issues.apache.org/jira/browse/FLINK-3512) | Savepoint backend should not revert to "jobmanager" |  Blocker | . | Aljoscha Krettek | Ufuk Celebi |
| [FLINK-3485](https://issues.apache.org/jira/browse/FLINK-3485) | The SerializedListAccumulator value doest seem to be right |  Minor | Web Client | sahitya pavurala | Maximilian Michels |
| [FLINK-3340](https://issues.apache.org/jira/browse/FLINK-3340) | Fix object juggling in drivers |  Critical | Distributed Coordination | Greg Hogan | Greg Hogan |
| [FLINK-3449](https://issues.apache.org/jira/browse/FLINK-3449) | createInput swallows exception if TypeExtractor fails |  Major | . | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3434](https://issues.apache.org/jira/browse/FLINK-3434) | Return value from flinkYarnClient#deploy() should be checked against null |  Minor | . | Ted Yu | Chesnay Schepler |
| [FLINK-3518](https://issues.apache.org/jira/browse/FLINK-3518) | Stale docs for quickstart setup |  Trivial | Documentation | Stefano Baghino | Stefano Baghino |
| [FLINK-3525](https://issues.apache.org/jira/browse/FLINK-3525) | Missing call to super#close() in TimestampsAndPeriodicWatermarksOperator#close() |  Minor | . | Ted Yu | Stephan Ewen |
| [FLINK-3511](https://issues.apache.org/jira/browse/FLINK-3511) | Flink library examples not runnable without adding dependencies |  Major | Build System | Márton Balassi | Till Rohrmann |
| [FLINK-3526](https://issues.apache.org/jira/browse/FLINK-3526) | ProcessingTime Window Assigner and Trigger are broken |  Blocker | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-3534](https://issues.apache.org/jira/browse/FLINK-3534) | Cancelling a running job can lead to restart instead of stopping |  Critical | . | Robert Metzger |  |
| [FLINK-3540](https://issues.apache.org/jira/browse/FLINK-3540) | Hadoop 2.6.3 build contains /com/google/common (guava) classes in flink-dist.jar |  Blocker | Build System | Robert Metzger | Robert Metzger |
| [FLINK-3556](https://issues.apache.org/jira/browse/FLINK-3556) | Unneeded check in HA blob store configuration |  Critical | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-3554](https://issues.apache.org/jira/browse/FLINK-3554) | Bounded sources should emit a Max Watermark when they are done |  Blocker | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-3565](https://issues.apache.org/jira/browse/FLINK-3565) | FlinkKafkaConsumer does not work with Scala 2.11 |  Blocker | Streaming | Aljoscha Krettek | Maximilian Michels |
| [FLINK-3562](https://issues.apache.org/jira/browse/FLINK-3562) | Update docs in the course of EventTimeSourceFunction removal |  Minor | . | Maximilian Michels | Stephan Ewen |
| [FLINK-3432](https://issues.apache.org/jira/browse/FLINK-3432) | ZookeeperOffsetHandlerTest fails on windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-2757](https://issues.apache.org/jira/browse/FLINK-2757) | DataSinkTaskTest fails on Windows |  Major | Tests | Fabian Hueske |  |
| [FLINK-2369](https://issues.apache.org/jira/browse/FLINK-2369) | On Windows, in testFailingSortingDataSinkTask the temp file is not removed |  Minor | Distributed Coordination | Gabor Gevay | Gabor Gevay |
| [FLINK-3569](https://issues.apache.org/jira/browse/FLINK-3569) | Test cases fail due to Maven Shade plugin |  Major | Tests | Maximilian Michels | Maximilian Michels |
| [FLINK-3333](https://issues.apache.org/jira/browse/FLINK-3333) | Documentation about object reuse should be improved |  Critical | Documentation | Gabor Gevay | Gabor Gevay |
| [FLINK-3629](https://issues.apache.org/jira/browse/FLINK-3629) | In wikiedits Quick Start example, "The first call, .window()" should be "The first call, .timeWindow()" |  Trivial | Quickstarts | Li Fanxi |  |
| [FLINK-3288](https://issues.apache.org/jira/browse/FLINK-3288) | KafkaConsumer (0.8) fails with UnknownException |  Major | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-3676](https://issues.apache.org/jira/browse/FLINK-3676) | WebClient hasn\'t been removed from the docs |  Major | Documentation | Maximilian Michels | Maximilian Michels |
| [FLINK-3638](https://issues.apache.org/jira/browse/FLINK-3638) | Invalid default ports in documentation |  Major | Documentation | Maxim Dobryakov | Maximilian Michels |
| [FLINK-2674](https://issues.apache.org/jira/browse/FLINK-2674) | Rework windowing logic |  Critical | Streaming | Stephan Ewen |  |
| [FLINK-3138](https://issues.apache.org/jira/browse/FLINK-3138) | Method References are not supported as lambda expressions |  Major | Core | Stephan Ewen | Timo Walther |
| [FLINK-2624](https://issues.apache.org/jira/browse/FLINK-2624) | RabbitMQ source / sink should participate in checkpointing |  Major | Streaming Connectors | Stephan Ewen | Hilmi Yildirim |
| [FLINK-2662](https://issues.apache.org/jira/browse/FLINK-2662) | CompilerException: "Bug: Plan generation for Unions picked a ship strategy between binary plan operators." |  Critical | Optimizer | Gabor Gevay | Fabian Hueske |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3517](https://issues.apache.org/jira/browse/FLINK-3517) | Number of job and task managers not checked in scripts |  Minor | Startup Shell Scripts | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2480](https://issues.apache.org/jira/browse/FLINK-2480) | Improving tests coverage for org.apache.flink.streaming.api |  Major | Streaming | Huang Wei |  |
| [FLINK-2573](https://issues.apache.org/jira/browse/FLINK-2573) | Add Kerberos test case |  Major | Distributed Coordination, Local Runtime | Maximilian Michels |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1982](https://issues.apache.org/jira/browse/FLINK-1982) | Remove dependencies on Record for Flink runtime and core |  Major | Core | Henry Saputra | Fabian Hueske |
| [FLINK-2853](https://issues.apache.org/jira/browse/FLINK-2853) | Apply JMH on MutableHashTablePerformanceBenchmark class. |  Minor | Tests | GaoLun | GaoLun |
| [FLINK-2919](https://issues.apache.org/jira/browse/FLINK-2919) | Apply JMH on FieldAccessMinibenchmark class. |  Minor | Tests | GaoLun | GaoLun |
| [FLINK-2889](https://issues.apache.org/jira/browse/FLINK-2889) | Apply JMH on LongSerializationSpeedBenchmark class |  Minor | Tests | GaoLun | GaoLun |
| [FLINK-2890](https://issues.apache.org/jira/browse/FLINK-2890) | Apply JMH on StringSerializationSpeedBenchmark class. |  Minor | Tests | GaoLun | GaoLun |
| [FLINK-2850](https://issues.apache.org/jira/browse/FLINK-2850) | Limit the types of jobs which can run in detached mode |  Major | . | Sachin Goel | Sachin Goel |
| [FLINK-3070](https://issues.apache.org/jira/browse/FLINK-3070) | Create an asynchronous state handle interface |  Major | Streaming | Stephan Ewen | Aljoscha Krettek |
| [FLINK-3071](https://issues.apache.org/jira/browse/FLINK-3071) | Add asynchronous materialization thread |  Major | Streaming | Stephan Ewen | Aljoscha Krettek |
| [FLINK-146](https://issues.apache.org/jira/browse/FLINK-146) | Sorted output not working |  Major | Distributed Coordination, Java API, Scala API | Fabian Hueske |  |
| [FLINK-3195](https://issues.apache.org/jira/browse/FLINK-3195) | Restructure examples projects and package streaming examples |  Major | Examples | Stephan Ewen | Stephan Ewen |
| [FLINK-3057](https://issues.apache.org/jira/browse/FLINK-3057) | [py] Provide a way to pass information back to the plan process |  Minor | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-2972](https://issues.apache.org/jira/browse/FLINK-2972) | Remove Twitter Chill dependency from flink-java module |  Major | Java API | Fabian Hueske |  |
| [FLINK-3285](https://issues.apache.org/jira/browse/FLINK-3285) | Skip Maven deployment of flink-java8 |  Major | Java API | Maximilian Michels | Maximilian Michels |
| [FLINK-2933](https://issues.apache.org/jira/browse/FLINK-2933) | Flink scala libraries exposed with maven should carry scala version |  Minor | Build System | Frederick F. Kautz IV | Maximilian Michels |
| [FLINK-3140](https://issues.apache.org/jira/browse/FLINK-3140) | NULL value data layout in Row Serializer/Comparator |  Major | Table API & SQL | Chengxiang Li | Timo Walther |
| [FLINK-3275](https://issues.apache.org/jira/browse/FLINK-3275) | [py] Add support for Dataset.setParallelism() |  Major | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3208](https://issues.apache.org/jira/browse/FLINK-3208) | Rename Gelly vertex-centric model to scatter-gather |  Major | Gelly | Vasia Kalavri | Vasia Kalavri |
| [FLINK-3312](https://issues.apache.org/jira/browse/FLINK-3312) | Add convenience accessor methods for extended state interface |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-3201](https://issues.apache.org/jira/browse/FLINK-3201) | Enhance Partitioned State Interface with State Types |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3365](https://issues.apache.org/jira/browse/FLINK-3365) | BlobLibraryCacheManager does not shutdown Timer thread |  Major | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-3363](https://issues.apache.org/jira/browse/FLINK-3363) | JobManager does not shut down dedicated executor properly |  Major | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-3371](https://issues.apache.org/jira/browse/FLINK-3371) | Move TriggerCotext and TriggerResult to their own classes |  Major | DataStream API | Stephan Ewen | Stephan Ewen |
| [FLINK-3384](https://issues.apache.org/jira/browse/FLINK-3384) | Create atomic closable queue for communication between Kafka Threads |  Major | Kafka Connector | Stephan Ewen | Stephan Ewen |
| [FLINK-3401](https://issues.apache.org/jira/browse/FLINK-3401) | AscendingTimestampExtractor should not fail on order violation |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-3224](https://issues.apache.org/jira/browse/FLINK-3224) | The Streaming API does not call setInputType if a format implements InputTypeConfigurable |  Major | DataStream API | Nick Dimiduk | Nick Dimiduk |
| [FLINK-3437](https://issues.apache.org/jira/browse/FLINK-3437) | Fix UI router state for job plan |  Minor | Webfrontend | Greg Hogan | Greg Hogan |
| [FLINK-2732](https://issues.apache.org/jira/browse/FLINK-2732) | Add access to the TaskManagers\' log file and out file in the web dashboard. |  Major | Webfrontend | Stephan Ewen | Chesnay Schepler |
| [FLINK-2730](https://issues.apache.org/jira/browse/FLINK-2730) | Add CPU/Network utilization graphs to new web dashboard |  Major | Webfrontend | Stephan Ewen | Sachin Goel |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2429](https://issues.apache.org/jira/browse/FLINK-2429) | Remove the "enableCheckpointing()" without interval variant |  Minor | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-3112](https://issues.apache.org/jira/browse/FLINK-3112) | Remove unused RecordModelPostPass class |  Trivial | Optimizer | Fabian Hueske | Fabian Hueske |
| [FLINK-3113](https://issues.apache.org/jira/browse/FLINK-3113) | Remove unused global order methods from GenericDataSinkBase |  Minor | Core | Fabian Hueske | Fabian Hueske |
| [FLINK-3186](https://issues.apache.org/jira/browse/FLINK-3186) | Deprecate DataSink.sortLocalOutput() methods |  Major | DataSet API | Fabian Hueske | Suneel Marthi |
| [FLINK-3484](https://issues.apache.org/jira/browse/FLINK-3484) | Add setSlotSharingGroup documentation |  Major | . | Till Rohrmann | Aljoscha Krettek |


