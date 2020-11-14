
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

## Release 1.9.0 - 2019-08-22



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-11679](https://issues.apache.org/jira/browse/FLINK-11679) | Create Blink SQL planner and runtime modules |  Major | Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-11701](https://issues.apache.org/jira/browse/FLINK-11701) | Introduce an abstract set of data formats |  Major | Runtime / Task | Jingsong Lee | Jingsong Lee |
| [FLINK-11801](https://issues.apache.org/jira/browse/FLINK-11801) | Port SqlParserException to flink-table-api-java |  Major | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-11803](https://issues.apache.org/jira/browse/FLINK-11803) | Improve FlinkTypeFactory for Blink |  Major | . | Jingsong Lee | Jingsong Lee |
| [FLINK-11449](https://issues.apache.org/jira/browse/FLINK-11449) | Uncouple the Expression class from RexNodes |  Major | Table SQL / API | Timo Walther | sunjincheng |
| [FLINK-11692](https://issues.apache.org/jira/browse/FLINK-11692) | Add proxy support to DataDog MetricReporter |  Minor | Runtime / Metrics | Scott Mitchell | Scott Mitchell |
| [FLINK-11853](https://issues.apache.org/jira/browse/FLINK-11853) | Support POST for /jars/:jarid/plan |  Minor | Runtime / REST | Stephen Connolly | Stephen Connolly |
| [FLINK-12018](https://issues.apache.org/jira/browse/FLINK-12018) | Add support for generating optimized logical plan for Sort and Rank |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-12079](https://issues.apache.org/jira/browse/FLINK-12079) | Add support for generating optimized logical plan for join on batch |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-12077](https://issues.apache.org/jira/browse/FLINK-12077) | Introduce HashJoinOperator and LongHashJoinGenerator to blink |  Major | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-12076](https://issues.apache.org/jira/browse/FLINK-12076) | Add support for generating optimized logical plan for simple group aggregate on batch |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-11240](https://issues.apache.org/jira/browse/FLINK-11240) | Implement external catalog factory and descriptor |  Major | Table SQL / API | Eron Wright | Eron Wright |
| [FLINK-12041](https://issues.apache.org/jira/browse/FLINK-12041) | Introduce ResettableExternalBuffer to blink batch |  Major | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-12087](https://issues.apache.org/jira/browse/FLINK-12087) | Introduce over window operators to blink batch |  Major | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-12098](https://issues.apache.org/jira/browse/FLINK-12098) | Add support for generating optimized logical plan for simple group aggregate on stream |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-12140](https://issues.apache.org/jira/browse/FLINK-12140) | Support e2e sort merge join operator in batch mode |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-12120](https://issues.apache.org/jira/browse/FLINK-12120) | Support e2e SortAggregate and HashAggregate operator run in batch mode |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-12161](https://issues.apache.org/jira/browse/FLINK-12161) |  Supports partial-final optimization for stream group aggregate |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-12168](https://issues.apache.org/jira/browse/FLINK-12168) | Support e2e limit, sortLimit, rank, union in blink batch |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-12194](https://issues.apache.org/jira/browse/FLINK-12194) | Enable setting failOnCheckpointingErrors in DataStreamAllroundTestProgram |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-12185](https://issues.apache.org/jira/browse/FLINK-12185) | Add support for generating optimized logical plan for join on stream |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-12170](https://issues.apache.org/jira/browse/FLINK-12170) | Add support for generating optimized logical plan for Over aggregate |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-12211](https://issues.apache.org/jira/browse/FLINK-12211) | Add more IT cases to blink batch |  Major | Table SQL / Planner, Tests | Jingsong Lee | Jingsong Lee |
| [FLINK-12248](https://issues.apache.org/jira/browse/FLINK-12248) | Support e2e over window in blink batch |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-12192](https://issues.apache.org/jira/browse/FLINK-12192) | Add support for generating optimized logical plan for grouping sets and distinct aggregate |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-12133](https://issues.apache.org/jira/browse/FLINK-12133) | Support unbounded aggregate in streaming table runtime |  Major | Table SQL / Runtime | Jark Wu | Jark Wu |
| [FLINK-12261](https://issues.apache.org/jira/browse/FLINK-12261) | Support e2e group window in blink batch |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-11534](https://issues.apache.org/jira/browse/FLINK-11534) | Don't exit JVM after job termination with standalone job |  Minor | Runtime / Coordination | Ufuk Celebi | Ufuk Celebi |
| [FLINK-12321](https://issues.apache.org/jira/browse/FLINK-12321) | Supports sub-plan reuse |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-11822](https://issues.apache.org/jira/browse/FLINK-11822) | Introduce Flink metadata handlers |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-12345](https://issues.apache.org/jira/browse/FLINK-12345) | Add support for generating optimized logical plan for stream window aggregate |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-11974](https://issues.apache.org/jira/browse/FLINK-11974) | Introduce StreamOperatorFactory to help table perform the whole Operator CodeGen |  Major | Runtime / Task | Jingsong Lee | Jingsong Lee |
| [FLINK-12269](https://issues.apache.org/jira/browse/FLINK-12269) | Support Temporal Table Join in blink planner |  Major | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-11922](https://issues.apache.org/jira/browse/FLINK-11922) | Support MetricReporter factories |  Major | Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11945](https://issues.apache.org/jira/browse/FLINK-11945) | Support over aggregation for blink streaming runtime |  Major | Table SQL / Runtime | Jark Wu | Forward Xu |
| [FLINK-11458](https://issues.apache.org/jira/browse/FLINK-11458) | Add TERMINATE/SUSPEND Job with Savepoint (FLIP-34) |  Major | Runtime / State Backends | Kostas Kloudas | Kostas Kloudas |
| [FLINK-12769](https://issues.apache.org/jira/browse/FLINK-12769) | Simplify expression design for symbols |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-12708](https://issues.apache.org/jira/browse/FLINK-12708) | Introduce new Interfaces for source and sink to make Blink runner work |  Major | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-12743](https://issues.apache.org/jira/browse/FLINK-12743) | Introduce unbounded streaming anti/semi join operator |  Major | Table SQL / Runtime | Jark Wu | Jark Wu |
| [FLINK-12834](https://issues.apache.org/jira/browse/FLINK-12834) | Support CharType and BinaryType in blink runner |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-12850](https://issues.apache.org/jira/browse/FLINK-12850) | Introduce TypeInfo for LocalDate/LocalTime/LocalDateTime |  Major | API / Type Serialization System | Jingsong Lee | Jingsong Lee |
| [FLINK-12805](https://issues.apache.org/jira/browse/FLINK-12805) | Introduce PartitionableTableSource for partition pruning |  Major | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-12808](https://issues.apache.org/jira/browse/FLINK-12808) | Introduce OverwritableTableSink for supporting insert overwrite |  Major | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-12809](https://issues.apache.org/jira/browse/FLINK-12809) | Introduce PartitionableTableSink for support writing data into partitions |  Major | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-12956](https://issues.apache.org/jira/browse/FLINK-12956) | Add a upsert table sink for JDBC |  Major | Connectors / JDBC | Jingsong Lee | Jingsong Lee |
| [FLINK-13082](https://issues.apache.org/jira/browse/FLINK-13082) | Support MatchRecognize in blink planner |  Major | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-9311](https://issues.apache.org/jira/browse/FLINK-9311) | Add a Google Cloud PubSub connector |  Minor | Connectors / Google Cloud PubSub | Richard Deurwaarder | Niels Basjes |
| [FLINK-13088](https://issues.apache.org/jira/browse/FLINK-13088) | Support lazy query transformation & execution on TableEnvironment |  Major | Table SQL / API | godfrey he | godfrey he |
| [FLINK-12955](https://issues.apache.org/jira/browse/FLINK-12955) | Add HBase LookupableTableSource and TableFactory |  Major | Connectors / HBase | Chance Li | Chance Li |
| [FLINK-13263](https://issues.apache.org/jira/browse/FLINK-13263) | supports explain DAG plan in flink-python |  Major | API / Python | godfrey he | godfrey he |
| [FLINK-10972](https://issues.apache.org/jira/browse/FLINK-10972) | Enhancements to Flink Table API |  Major | Table SQL / API | sunjincheng | sunjincheng |
| [FLINK-13273](https://issues.apache.org/jira/browse/FLINK-13273) | Allow switching planners in SQL Client |  Blocker | Table SQL / Client | Timo Walther | Timo Walther |
| [FLINK-12656](https://issues.apache.org/jira/browse/FLINK-12656) | Integrate Flink with Hive user defined functions |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-11479](https://issues.apache.org/jira/browse/FLINK-11479) | support Hive metadata in HiveCatalog |  Major | Connectors / Hive | Xuefu Zhang | Bowen Li |
| [FLINK-11482](https://issues.apache.org/jira/browse/FLINK-11482) | support generic Flink metadata in HiveCatalog |  Major | Connectors / Hive, Table SQL / API | Xuefu Zhang | Bowen Li |
| [FLINK-12755](https://issues.apache.org/jira/browse/FLINK-12755) | implement HiveCatalog |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12625](https://issues.apache.org/jira/browse/FLINK-12625) | Support catalogs in SQL Client |  Major | Table SQL / Client | Bowen Li | Bowen Li |
| [FLINK-12753](https://issues.apache.org/jira/browse/FLINK-12753) | Implement GenericInMemoryCatalog |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-10653](https://issues.apache.org/jira/browse/FLINK-10653) | Introduce Pluggable Shuffle Service Architecture |  Major | Runtime / Network | Zhijiang | Zhijiang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-11091](https://issues.apache.org/jira/browse/FLINK-11091) | Clear the use of deprecated methods of KeyedStream in table operators |  Minor | Table SQL / API | sunjincheng | sunjincheng |
| [FLINK-11689](https://issues.apache.org/jira/browse/FLINK-11689) | Code clean for StreamingJobGraphGenerator |  Minor | API / DataStream | shiwuliang |  |
| [FLINK-11653](https://issues.apache.org/jira/browse/FLINK-11653) | Add configuration to enforce custom UID's on datastream |  Minor | API / DataStream | Seth Wiesman | Seth Wiesman |
| [FLINK-11844](https://issues.apache.org/jira/browse/FLINK-11844) | Simplify OVER window Table API classes |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-11237](https://issues.apache.org/jira/browse/FLINK-11237) | Enhance LocalExecutor to wrap TableEnvironment w/ user classloader |  Major | Table SQL / Client | Eron Wright | Eron Wright |
| [FLINK-10755](https://issues.apache.org/jira/browse/FLINK-10755) | Port external catalogs in Table API extension points to flink-table-common |  Major | Table SQL / API | Bowen Li | Dian Fu |
| [FLINK-11068](https://issues.apache.org/jira/browse/FLINK-11068) | Convert the API classes \*Table, \*Window to interfaces |  Major | Table SQL / API | Timo Walther | Hequn Cheng |
| [FLINK-11817](https://issues.apache.org/jira/browse/FLINK-11817) | Update fold() example to use aggregate() instead |  Minor | API / DataStream, Documentation | Michael Holler | leesf |
| [FLINK-11825](https://issues.apache.org/jira/browse/FLINK-11825) | Resolve name clash of StateTTL TimeCharacteristic class |  Major | Runtime / State Backends | Fabian Hueske | Congxian Qiu |
| [FLINK-11872](https://issues.apache.org/jira/browse/FLINK-11872) | update lz4 license file |  Major | Build System | Kurt Young | Kurt Young |
| [FLINK-11989](https://issues.apache.org/jira/browse/FLINK-11989) | Enable metric reporter modules in jdk9 runs |  Major | Runtime / Metrics, Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11996](https://issues.apache.org/jira/browse/FLINK-11996) | Remove warning about max fields in case class |  Minor | API / Scala, API / Type Serialization System, Documentation | Wouter Zorgdrager | vinoyang |
| [FLINK-12057](https://issues.apache.org/jira/browse/FLINK-12057) | Refactor MemoryLogger to accept termination future instead of ActorSystem |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12073](https://issues.apache.org/jira/browse/FLINK-12073) | Support appropriate precision and scale processing of Decimal in Blink SQL |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-12062](https://issues.apache.org/jira/browse/FLINK-12062) | Introduce bundle operator to streaming table runtime |  Major | Table SQL / Runtime | Kurt Young | Kurt Young |
| [FLINK-11929](https://issues.apache.org/jira/browse/FLINK-11929) | Remove unused transientBlobCache in ClusterEntrypoint |  Minor | Runtime / Coordination | chunpinghe | chunpinghe |
| [FLINK-11603](https://issues.apache.org/jira/browse/FLINK-11603) | Port MetricQueryService to RpcEndpoint |  Major | Runtime / Metrics | Zili Chen | Zili Chen |
| [FLINK-12121](https://issues.apache.org/jira/browse/FLINK-12121) | Use composition instead of inheritance for the InternalKeyContext logic in backend |  Major | Runtime / State Backends | Yu Li | Yu Li |
| [FLINK-12123](https://issues.apache.org/jira/browse/FLINK-12123) | Upgrade Jepsen to 0.1.13 in flink-jepsen |  Major | Test Infrastructure | Gary Yao | Gary Yao |
| [FLINK-12066](https://issues.apache.org/jira/browse/FLINK-12066) | Remove StateSerializerProvider field in keyed state backend |  Major | Runtime / State Backends | Yu Li | Yu Li |
| [FLINK-12151](https://issues.apache.org/jira/browse/FLINK-12151) | Drop Elasticsearch 1 connector |  Major | Connectors / ElasticSearch | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12169](https://issues.apache.org/jira/browse/FLINK-12169) | Improve Javadoc of MessageAcknowledgingSourceBase |  Minor | Connectors/ RabbitMQ | Konstantin Knauf | Konstantin Knauf |
| [FLINK-12137](https://issues.apache.org/jira/browse/FLINK-12137) | Add more proper explanation on flink streaming connectors |  Major | Connectors / Kinesis | JoongkeunYang | JoongkeunYang |
| [FLINK-12174](https://issues.apache.org/jira/browse/FLINK-12174) | Introduce FlinkAggregateExtractProjectRule and remove extractFieldReferences |  Major | Table SQL / API | Hequn Cheng | Hequn Cheng |
| [FLINK-11923](https://issues.apache.org/jira/browse/FLINK-11923) | Move reporter setup out of MetricRegistry |  Major | Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12119](https://issues.apache.org/jira/browse/FLINK-12119) | Add OWASP Dependency Check |  Major | Build System | Konstantin Knauf | Konstantin Knauf |
| [FLINK-12212](https://issues.apache.org/jira/browse/FLINK-12212) | Clarify documentation about async checkpointing |  Major | Documentation | Konstantin Knauf | Konstantin Knauf |
| [FLINK-12026](https://issues.apache.org/jira/browse/FLINK-12026) | Remove the \`xxxInternal\` method from TableImpl |  Major | Table SQL / API | sunjincheng | sunjincheng |
| [FLINK-7391](https://issues.apache.org/jira/browse/FLINK-7391) | Normalize release entries |  Major | Project Website | Chesnay Schepler | Wang Geng |
| [FLINK-11910](https://issues.apache.org/jira/browse/FLINK-11910) | Make Yarn Application Type Customizable with Flink Version |  Minor | Deployment / YARN | Zhenqiu Huang | Zhenqiu Huang |
| [FLINK-10517](https://issues.apache.org/jira/browse/FLINK-10517) | Add stability test for the REST API |  Major | Runtime / REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12024](https://issues.apache.org/jira/browse/FLINK-12024) | Bump universal Kafka connector to Kafka dependency to 2.2.0 |  Major | Connectors / Kafka | Elias Levy | vinoyang |
| [FLINK-12339](https://issues.apache.org/jira/browse/FLINK-12339) | Wrong variable name in TopSpeedWindowing example |  Trivial | Examples | jianlong miao | jianlong miao |
| [FLINK-10441](https://issues.apache.org/jira/browse/FLINK-10441) | Log initial creation of upload directory on INFO |  Minor | Runtime / REST | Ufuk Celebi | Ji Liu |
| [FLINK-12139](https://issues.apache.org/jira/browse/FLINK-12139) | Flink on mesos - Parameterize disk space needed. |  Minor | Deployment / Mesos | Juan | Juan |
| [FLINK-12306](https://issues.apache.org/jira/browse/FLINK-12306) | Change the name of variable "log" to upper case "LOG" |  Trivial | Runtime / Coordination | Zi Li |  |
| [FLINK-12333](https://issues.apache.org/jira/browse/FLINK-12333) | Add documentation for all async operations through REST |  Minor | Documentation, Runtime / REST | Vishal Santoshi | Yun Tang |
| [FLINK-12391](https://issues.apache.org/jira/browse/FLINK-12391) | Add timeout to transfer.sh |  Major | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12390](https://issues.apache.org/jira/browse/FLINK-12390) | Fully migrate to asm6 |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12274](https://issues.apache.org/jira/browse/FLINK-12274) | Fix documentation to enable Queryable State |  Minor | Documentation, Runtime / Queryable State | Pierre Zemb | Pierre Zemb |
| [FLINK-12368](https://issues.apache.org/jira/browse/FLINK-12368) | add subtask index to FlinkKafkaConsumerBase logging, which can be very useful when debugging problem |  Major | Connectors / Kafka | Steven Zhen Wu | Steven Zhen Wu |
| [FLINK-12459](https://issues.apache.org/jira/browse/FLINK-12459) | YarnConfigOptions#CLASSPATH\_INCLUDE\_USER\_JAR should affect the order of classpath between user jars and flink jars |  Minor | Command Line Client | Victor Wong | Victor Wong |
| [FLINK-12457](https://issues.apache.org/jira/browse/FLINK-12457) | Remove char support in blink |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-12159](https://issues.apache.org/jira/browse/FLINK-12159) | Enable YarnMiniCluster integration test under non-secure mode |  Major | Deployment / YARN | Jeff Zhang | Jeff Zhang |
| [FLINK-12468](https://issues.apache.org/jira/browse/FLINK-12468) | Unregister application from the YARN Resource Manager with a valid appTrackingUrl |  Minor | Deployment / YARN | Victor Wong | Victor Wong |
| [FLINK-12472](https://issues.apache.org/jira/browse/FLINK-12472) | Support setting attemptFailuresValidityInterval of jobs on Yarn |  Minor | Deployment / YARN | Victor Wong | Victor Wong |
| [FLINK-12475](https://issues.apache.org/jira/browse/FLINK-12475) | CommonTestUtils#printLog4jDebugConfig() should include timestamp |  Major | Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12290](https://issues.apache.org/jira/browse/FLINK-12290) | Clarify exception message SharedSlot |  Trivial | Runtime / Coordination | Liya Fan | Liya Fan |
| [FLINK-12511](https://issues.apache.org/jira/browse/FLINK-12511) | make variable "comment" in all catalog metadata classes final |  Major | . | Bowen Li | Bowen Li |
| [FLINK-12287](https://issues.apache.org/jira/browse/FLINK-12287) | Incorrect javadocs of StreamElement#isLatencyMarker |  Trivial | Documentation, Runtime / Task | YangFei | YangFei |
| [FLINK-12508](https://issues.apache.org/jira/browse/FLINK-12508) | Expand Documentation on Testing DataStream API programs |  Major | Documentation | Konstantin Knauf | Konstantin Knauf |
| [FLINK-12539](https://issues.apache.org/jira/browse/FLINK-12539) | StreamingFileSink: Make the class extendable to customize for different usecases |  Major | Connectors / FileSystem | Kailash Hassan Dayanand | Kailash Hassan Dayanand |
| [FLINK-12335](https://issues.apache.org/jira/browse/FLINK-12335) | Improvement the code and performance of class SegmentsUtil |  Minor | Table SQL / Runtime | Liya Fan | Liya Fan |
| [FLINK-12299](https://issues.apache.org/jira/browse/FLINK-12299) | Reject negative auto watermark intervals |  Major | API / DataStream | shiwuliang |  |
| [FLINK-12378](https://issues.apache.org/jira/browse/FLINK-12378) | Consolidate FileSystem Documentation |  Major | Documentation, FileSystems | Seth Wiesman | Seth Wiesman |
| [FLINK-12152](https://issues.apache.org/jira/browse/FLINK-12152) | Make the vcore that Application Master used configurable for Flink on YARN |  Major | Deployment / YARN | vinoyang | vinoyang |
| [FLINK-11126](https://issues.apache.org/jira/browse/FLINK-11126) | Filter out AMRMToken in the TaskManager credentials |  Minor | Deployment / YARN | Paul Lin | Paul Lin |
| [FLINK-12687](https://issues.apache.org/jira/browse/FLINK-12687) | ByteHashSet is always in dense mode |  Minor | Table SQL / Runtime | Liya Fan | Liya Fan |
| [FLINK-12601](https://issues.apache.org/jira/browse/FLINK-12601) | Register DataStream/DataSet as DataStream/SetTableOperations in Catalog |  Major | Table SQL / API, Table SQL / Legacy Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-12604](https://issues.apache.org/jira/browse/FLINK-12604) | Register TableSource/Sink as CatalogTable |  Major | Table SQL / API, Table SQL / Legacy Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-12431](https://issues.apache.org/jira/browse/FLINK-12431) | Port utility methods for extracting fields information from TypeInformation |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-12476](https://issues.apache.org/jira/browse/FLINK-12476) | [State TTL] Consider setting a default background cleanup strategy in StateTtlConfig |  Major | Runtime / State Backends | Andrey Zagrebin | vinoyang |
| [FLINK-12614](https://issues.apache.org/jira/browse/FLINK-12614) | Refactor YARN tests to not do assertion in @After methods |  Major | Deployment / YARN, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12775](https://issues.apache.org/jira/browse/FLINK-12775) | Bump flink-shaded version to 7.0 |  Major | Build System | Chesnay Schepler | Aloys Zhang |
| [FLINK-12690](https://issues.apache.org/jira/browse/FLINK-12690) | Introduce Table API Planner interface |  Major | Table SQL / API, Table SQL / Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-12513](https://issues.apache.org/jira/browse/FLINK-12513) | Improve end-to-end (bash based) tests |  Minor | Tests | Alex | Alex |
| [FLINK-12402](https://issues.apache.org/jira/browse/FLINK-12402) | Make validation error message for CallExpression more user friendly |  Major | Table SQL / API | Hequn Cheng | Hequn Cheng |
| [FLINK-12631](https://issues.apache.org/jira/browse/FLINK-12631) | Check if proper JAR file in JobWithJars |  Minor | Command Line Client | Ji Liu | Ji Liu |
| [FLINK-12088](https://issues.apache.org/jira/browse/FLINK-12088) | Introduce unbounded streaming inner/left/right/full join operator |  Major | Table SQL / Runtime | Kurt Young | Jark Wu |
| [FLINK-12774](https://issues.apache.org/jira/browse/FLINK-12774) | Pin version of build-helper-maven plugin |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12851](https://issues.apache.org/jira/browse/FLINK-12851) | Add travis profile for gelly/kafka |  Major | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11579](https://issues.apache.org/jira/browse/FLINK-11579) | Support Netty SslEngine based on openSSL |  Major | Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-12823](https://issues.apache.org/jira/browse/FLINK-12823) | Add ShuffleMode property to PartitionTransformation |  Major | API / DataStream | Biao Liu | Biao Liu |
| [FLINK-12779](https://issues.apache.org/jira/browse/FLINK-12779) | Avoid field conflicts when generate field names for non-composite Typeinformation |  Major | Table SQL / API | Hequn Cheng | Hequn Cheng |
| [FLINK-12878](https://issues.apache.org/jira/browse/FLINK-12878) | Add travis profile for flink-table-planner-blink/flink-table-runtime-blink |  Major | Travis | godfrey he | godfrey he |
| [FLINK-10984](https://issues.apache.org/jira/browse/FLINK-10984) | Move flink-shaded-hadoop to flink-shaded |  Major | Build System, BuildSystem / Shaded | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11947](https://issues.apache.org/jira/browse/FLINK-11947) | Support MapState value schema evolution for RocksDB |  Critical | API / Type Serialization System, Runtime / State Backends | Tzu-Li (Gordon) Tai | Congxian Qiu |
| [FLINK-11869](https://issues.apache.org/jira/browse/FLINK-11869) | [checkpoint] Make buffer size in checkpoint stream factory configurable |  Major | Runtime / Checkpointing | Yun Tang | Yun Tang |
| [FLINK-12903](https://issues.apache.org/jira/browse/FLINK-12903) | Remove legacy flink-python APIs |  Major | API / Python, Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12923](https://issues.apache.org/jira/browse/FLINK-12923) | Introduce a Task termination future |  Major | Runtime / Task | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12969](https://issues.apache.org/jira/browse/FLINK-12969) | Remove dependencies on RelNode from TableImpl in blink planner |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-12870](https://issues.apache.org/jira/browse/FLINK-12870) | Improve documentation of keys schema evolution |  Major | Documentation | Alexander Fedulov | Alexander Fedulov |
| [FLINK-12971](https://issues.apache.org/jira/browse/FLINK-12971) | Remove the constraint that lookup join needs a primary key or index key |  Major | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-12776](https://issues.apache.org/jira/browse/FLINK-12776) | Ambiguous content in flink-dist NOTICE file |  Blocker | API / Python, Release System | Chesnay Schepler |  |
| [FLINK-12611](https://issues.apache.org/jira/browse/FLINK-12611) | Make time indicator nullable in blink |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-12784](https://issues.apache.org/jira/browse/FLINK-12784) | Support retention policy for InfluxDB metrics reporter |  Minor | Runtime / Metrics | Mans Singh | Mans Singh |
| [FLINK-12985](https://issues.apache.org/jira/browse/FLINK-12985) | Move & rename StreamTransformation to org.apache.flink.api.dag.Transformation |  Major | API / DataStream | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-12070](https://issues.apache.org/jira/browse/FLINK-12070) | Make blocking result partitions consumable multiple times |  Blocker | Runtime / Network | Till Rohrmann | Stephan Ewen |
| [FLINK-13001](https://issues.apache.org/jira/browse/FLINK-13001) | Add ExecutionGraphBuilder for testing |  Major | Runtime / Coordination, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12798](https://issues.apache.org/jira/browse/FLINK-12798) | Port TableEnvironment to flink-api modules |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-12069](https://issues.apache.org/jira/browse/FLINK-12069) | Add proper lifecycle management for intermediate result partitions |  Critical | Runtime / Coordination, Runtime / Network | Till Rohrmann | Chesnay Schepler |
| [FLINK-12906](https://issues.apache.org/jira/browse/FLINK-12906) | Port OperationTreeBuilder to Java |  Major | Table SQL / API | Hequn Cheng | Dawid Wysakowicz |
| [FLINK-13049](https://issues.apache.org/jira/browse/FLINK-13049) | Port planner expressions to blink-planner from flink-planner |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-13070](https://issues.apache.org/jira/browse/FLINK-13070) | Remove TableImpl and use api.internal.TableImpl in blink |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-12902](https://issues.apache.org/jira/browse/FLINK-12902) | Cleanup flink-yarn-tests dependencies |  Major | Build System, Deployment / YARN | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13096](https://issues.apache.org/jira/browse/FLINK-13096) | Typo in Utils |  Trivial | Deployment / YARN | Charles Xu | yelun |
| [FLINK-12974](https://issues.apache.org/jira/browse/FLINK-12974) | Bump checkstyle version to 8.14 |  Major | Build System | Biao Liu | Biao Liu |
| [FLINK-12820](https://issues.apache.org/jira/browse/FLINK-12820) | Support ignoring null fields when writing to Cassandra |  Minor | Connectors / Cassandra | Ozan Cicekci |  |
| [FLINK-13060](https://issues.apache.org/jira/browse/FLINK-13060) | FailoverStrategies should respect restart constraints |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12353](https://issues.apache.org/jira/browse/FLINK-12353) | Collect japicmp output under tools directory |  Minor | Build System | Yun Tang | Yun Tang |
| [FLINK-12817](https://issues.apache.org/jira/browse/FLINK-12817) | Correct the import in Processing function example |  Major | Documentation | TANG Wen-hui | TANG Wen-hui |
| [FLINK-13137](https://issues.apache.org/jira/browse/FLINK-13137) | Remove legacy python docs |  Major | API / Python, Documentation | Huang Xingbo | Huang Xingbo |
| [FLINK-13076](https://issues.apache.org/jira/browse/FLINK-13076) | Bump Calcite dependency to 1.20.0 in blink planner |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-8033](https://issues.apache.org/jira/browse/FLINK-8033) | JDK 9 support |  Major | Build System | Hai Zhou | Chesnay Schepler |
| [FLINK-12447](https://issues.apache.org/jira/browse/FLINK-12447) | Bump required Maven version to 3.1.1 (from 3.0.3) |  Major | Build System | Robert Metzger | Robert Metzger |
| [FLINK-13123](https://issues.apache.org/jira/browse/FLINK-13123) | Align Stop/Cancel Commands in CLI and REST Interface and Improve Documentation |  Major | Command Line Client, Documentation | Konstantin Knauf | Konstantin Knauf |
| [FLINK-13198](https://issues.apache.org/jira/browse/FLINK-13198) | Introduce TimeUtils with parsing method |  Minor | Runtime / Configuration | Caizhi Weng | Caizhi Weng |
| [FLINK-13211](https://issues.apache.org/jira/browse/FLINK-13211) | Add drop table support for flink planner |  Major | Table SQL / Planner | Danny Chen | Danny Chen |
| [FLINK-13220](https://issues.apache.org/jira/browse/FLINK-13220) | Add create/drop table support for blink planner |  Major | Table SQL / Planner | Danny Chen | Danny Chen |
| [FLINK-13236](https://issues.apache.org/jira/browse/FLINK-13236) | Fix bug and improve performance in TopNBuffer |  Minor | . | Caizhi Weng | Caizhi Weng |
| [FLINK-13193](https://issues.apache.org/jira/browse/FLINK-13193) | Enable setting custom Flink config in test specs for Jepsen tests |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-13104](https://issues.apache.org/jira/browse/FLINK-13104) | Flink Datadog metrics client callback does not check for errors on posting and fails silently |  Minor | Runtime / Metrics | Mans Singh | Mans Singh |
| [FLINK-11860](https://issues.apache.org/jira/browse/FLINK-11860) | Remove all the usage of deprecated unit-provided memory options in docs and scripts |  Major | Deployment / Scripts, Documentation | Yun Tang | Yun Tang |
| [FLINK-13307](https://issues.apache.org/jira/browse/FLINK-13307) | SourceStreamTaskTest test instability. |  Major | Tests | Kostas Kloudas | Kostas Kloudas |
| [FLINK-13168](https://issues.apache.org/jira/browse/FLINK-13168) | clarify isBatch/isStreaming/isBounded flag in flink planner and blink planner |  Blocker | Table SQL / Legacy Planner, Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-13316](https://issues.apache.org/jira/browse/FLINK-13316) | Update binary licensing |  Blocker | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12578](https://issues.apache.org/jira/browse/FLINK-12578) | Use secure URLs for Maven repositories |  Blocker | Build System | Jungtaek Lim | Jungtaek Lim |
| [FLINK-11568](https://issues.apache.org/jira/browse/FLINK-11568) | Exception in Kinesis ShardConsumer hidden by InterruptedException |  Major | Connectors / Kinesis | Shannon Carey | Shannon Carey |
| [FLINK-10958](https://issues.apache.org/jira/browse/FLINK-10958) | Add overload support for user defined function |  Major | Table SQL / API | Dian Fu | Dian Fu |
| [FLINK-12741](https://issues.apache.org/jira/browse/FLINK-12741) | Update docs about Kafka producer fault tolerance guarantees |  Trivial | Documentation | Paul Lin | Paul Lin |
| [FLINK-13345](https://issues.apache.org/jira/browse/FLINK-13345) | Dump jstack output for Flink JVMs after Jepsen Tests |  Blocker | Tests | Gary Yao | Gary Yao |
| [FLINK-12901](https://issues.apache.org/jira/browse/FLINK-12901) | Update build instructions for building Flink with a custom hadoop version |  Blocker | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13210](https://issues.apache.org/jira/browse/FLINK-13210) | Hive connector test should dependent on blink planner instead of legacy planner |  Major | Connectors / Hive | Jingsong Lee | Rui Li |
| [FLINK-13396](https://issues.apache.org/jira/browse/FLINK-13396) | Deprecate BucketingSink |  Blocker | Connectors / FileSystem | Aljoscha Krettek | Kostas Kloudas |
| [FLINK-11321](https://issues.apache.org/jira/browse/FLINK-11321) | Clarify the NPE on fetching an nonexistent Kafka topic |  Major | Connectors / Kafka | Fokko Driesprong | Fokko Driesprong |
| [FLINK-13326](https://issues.apache.org/jira/browse/FLINK-13326) | Support asynchronous writing to raw operator (and raw keyed) state |  Minor | Runtime / State Backends | Igal Shilman | Igal Shilman |
| [FLINK-13237](https://issues.apache.org/jira/browse/FLINK-13237) | Add expression table api test to blink |  Critical | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-13475](https://issues.apache.org/jira/browse/FLINK-13475) | Reduce dependency on third-party maven repositories |  Critical | Connectors / Hive | Till Rohrmann | Terry Wang |
| [FLINK-13555](https://issues.apache.org/jira/browse/FLINK-13555) | Failures of slot requests requiring unfulfillable managed memory should not be ignored. |  Blocker | Runtime / Coordination | Xintong Song | Xintong Song |
| [FLINK-12928](https://issues.apache.org/jira/browse/FLINK-12928) | Remove old Flink ML docs |  Major | Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-13594](https://issues.apache.org/jira/browse/FLINK-13594) |  Improve the 'from\_element' method of flink python api to apply to blink planner |  Major | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-13558](https://issues.apache.org/jira/browse/FLINK-13558) | Include table examples in flink-dist |  Critical | Examples, Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-13630](https://issues.apache.org/jira/browse/FLINK-13630) | StreamTableEnvironment#toAppendStream without QueryConfig overrides values set on TableConfig |  Critical | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-11159](https://issues.apache.org/jira/browse/FLINK-11159) | Allow configuration whether to fall back to savepoints for restore |  Major | Runtime / Checkpointing | Nico Kruber | vinoyang |
| [FLINK-12364](https://issues.apache.org/jira/browse/FLINK-12364) | Introduce a CheckpointFailureManager to centralized manage checkpoint failure |  Major | Runtime / Checkpointing | vinoyang | vinoyang |
| [FLINK-4256](https://issues.apache.org/jira/browse/FLINK-4256) | Fine-grained recovery |  Major | Runtime / Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-11875](https://issues.apache.org/jira/browse/FLINK-11875) | Enhance stream operator API to support selective reading and EndOfInput event |  Major | Runtime / Task | Haibo Sun | Haibo Sun |
| [FLINK-13007](https://issues.apache.org/jira/browse/FLINK-13007) | Integrate Flink's FunctionCatalog with Catalog APIs |  Major | Table SQL / API, Table SQL / Planner | Bowen Li | Bowen Li |
| [FLINK-12040](https://issues.apache.org/jira/browse/FLINK-12040) | Remove unused akka dependencies in pom.xml |  Major | Build System | Zili Chen | Zili Chen |
| [FLINK-12781](https://issues.apache.org/jira/browse/FLINK-12781) | REST handler should return full stack trace instead of just error msg |  Major | Runtime / REST | Steven Zhen Wu | Steven Zhen Wu |
| [FLINK-16540](https://issues.apache.org/jira/browse/FLINK-16540) | Fully specify bugfix version of Docker containers in Flink Playground docker-compose.yaml files |  Major | Examples | Fabian Hueske | Fabian Hueske |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-11829](https://issues.apache.org/jira/browse/FLINK-11829) | [checkpoint] FsCheckpointStateOutputStream might store state in files even state size below fileStateThreshold |  Minor | . | Yun Tang | Yun Tang |
| [FLINK-11905](https://issues.apache.org/jira/browse/FLINK-11905) | BlockCompressionTest does not compile with Java 9 |  Major | Runtime / Task, Tests | Chesnay Schepler | Kurt Young |
| [FLINK-12007](https://issues.apache.org/jira/browse/FLINK-12007) | Clarify scala 2.12 build instructions |  Minor | Build System, Documentation | Lodovico Giaretta | Chesnay Schepler |
| [FLINK-12051](https://issues.apache.org/jira/browse/FLINK-12051) | TaskExecutorTest.testFilterOutDuplicateJobMasterRegistrations() does not wait for TaskExecutor to be started |  Critical | Tests | Kostas Kloudas | Chesnay Schepler |
| [FLINK-12014](https://issues.apache.org/jira/browse/FLINK-12014) | Flink CEP Doc missing "SkipToNextStrategy" |  Minor | Documentation, Library / CEP | Tom Goong | Tom Goong |
| [FLINK-11897](https://issues.apache.org/jira/browse/FLINK-11897) | ExecutionGraphSuspendTest does not wait for all tasks to be submitted |  Critical | Runtime / Coordination, Tests | chunpinghe | chunpinghe |
| [FLINK-12112](https://issues.apache.org/jira/browse/FLINK-12112) | AbstractTaskManagerProcessFailureRecoveryTest process output logging does not work properly |  Major | Runtime / Coordination, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12009](https://issues.apache.org/jira/browse/FLINK-12009) | Wrong check message about heartbeat interval for HeartbeatServices |  Trivial | Runtime / Coordination | Bruno Aranda Delgado | vinoyang |
| [FLINK-12132](https://issues.apache.org/jira/browse/FLINK-12132) | The example in /docs/ops/deployment/yarn\_setup.md should be updated due to the change FLINK-2021 |  Trivial | Deployment / YARN, Documentation | Wang Geng | Wang Geng |
| [FLINK-12217](https://issues.apache.org/jira/browse/FLINK-12217) | OperationTreeBuilder.map() should perform ExpressionResolver.resolve() |  Major | Table SQL / API | Hequn Cheng | Hequn Cheng |
| [FLINK-10712](https://issues.apache.org/jira/browse/FLINK-10712) | RestartPipelinedRegionStrategy does not restore state |  Critical | Runtime / Coordination | Stefan Richter | Yun Tang |
| [FLINK-10941](https://issues.apache.org/jira/browse/FLINK-10941) | Slots prematurely released which still contain unconsumed data |  Critical | Runtime / Coordination | Qi | Andrey Zagrebin |
| [FLINK-11915](https://issues.apache.org/jira/browse/FLINK-11915) | DataInputViewStream skip returns wrong value |  Minor | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Runtime / Task | Andrew Prudhomme | Biao Liu |
| [FLINK-12247](https://issues.apache.org/jira/browse/FLINK-12247) | fix NPE when writing an archive file to a FileSystem |  Major | Deployment / YARN | lamber-ken | lamber-ken |
| [FLINK-12042](https://issues.apache.org/jira/browse/FLINK-12042) | RocksDBStateBackend mistakenly uses default filesystem |  Critical | Runtime / State Backends | Paul Lin | Paul Lin |
| [FLINK-12347](https://issues.apache.org/jira/browse/FLINK-12347) | flink-table-runtime-blink is missing scala suffix |  Blocker | Build System, Table SQL / Runtime | Chesnay Schepler | Liya Fan |
| [FLINK-12346](https://issues.apache.org/jira/browse/FLINK-12346) | Scala-suffix check broken on Travis |  Major | Build System, Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12187](https://issues.apache.org/jira/browse/FLINK-12187) | wrap FileWriter with BufferedWriter for better performance |  Major | Examples | bd2019us |  |
| [FLINK-12184](https://issues.apache.org/jira/browse/FLINK-12184) | HistoryServerArchiveFetcher isn't compatible with old version |  Major | Runtime / Coordination | Yumeng Zhang | Congxian Qiu |
| [FLINK-12359](https://issues.apache.org/jira/browse/FLINK-12359) | SystemResourcesMetricsITCase unstable |  Critical | Runtime / Metrics, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12246](https://issues.apache.org/jira/browse/FLINK-12246) | Fixed can't get MAX\_ATTEMPTS\_HISTORY\_SIZE value when create ExecutionVertex |  Minor | Runtime / Configuration | lamber-ken | lamber-ken |
| [FLINK-12357](https://issues.apache.org/jira/browse/FLINK-12357) | Remove useless code in TableConfig |  Major | Table SQL / API | Hequn Cheng | Hequn Cheng |
| [FLINK-12219](https://issues.apache.org/jira/browse/FLINK-12219) | Yarn application can't stop when flink job failed in per-job yarn cluster mode |  Major | Deployment / YARN, Runtime / REST | lamber-ken | lamber-ken |
| [FLINK-12325](https://issues.apache.org/jira/browse/FLINK-12325) | Statsd reporter gives wrong metrics when using negative numbers |  Minor | Runtime / Metrics | Richard Deurwaarder | Richard Deurwaarder |
| [FLINK-12453](https://issues.apache.org/jira/browse/FLINK-12453) | Simplify constructor of AggsHandlerCodeGenerator to explicitly tell which methods need to be generated |  Major | Table SQL / Planner | Jingsong Lee | Jark Wu |
| [FLINK-12392](https://issues.apache.org/jira/browse/FLINK-12392) | FlinkRelMetadataQuery does not compile with Scala 2.12 |  Blocker | Table SQL / Planner | Chesnay Schepler | godfrey he |
| [FLINK-12444](https://issues.apache.org/jira/browse/FLINK-12444) | Large number of broken links |  Critical | chinese-translation, Documentation | Chesnay Schepler | Jark Wu |
| [FLINK-9445](https://issues.apache.org/jira/browse/FLINK-9445) | scala-shell uses plain java command |  Minor | Command Line Client | Andrew Janke | Chesnay Schepler |
| [FLINK-12493](https://issues.apache.org/jira/browse/FLINK-12493) | AWS EMR instructions lead to ClassNotFoundException |  Major | Documentation | Alberto Romero |  |
| [FLINK-12301](https://issues.apache.org/jira/browse/FLINK-12301) | Scala value classes inside case classes cannot be serialized anymore in Flink 1.8.0 |  Major | API / Scala | Michael | Aljoscha Krettek |
| [FLINK-12260](https://issues.apache.org/jira/browse/FLINK-12260) | Slot allocation failure by taskmanager registration timeout and race |  Critical | Runtime / Coordination | Hwanju Kim | Hwanju Kim |
| [FLINK-12507](https://issues.apache.org/jira/browse/FLINK-12507) | Fix AsyncLookupJoin doesn't close all generated ResultFutures |  Major | Table SQL / Runtime | Jark Wu | Jark Wu |
| [FLINK-12285](https://issues.apache.org/jira/browse/FLINK-12285) | Memory leak in SavepointITCase and SavepointMigrationTestBase |  Critical | Runtime / Coordination, Tests | Xiaogang Shi | Biao Liu |
| [FLINK-12488](https://issues.apache.org/jira/browse/FLINK-12488) | Scope of MemorySegment metrics has changed |  Major | Runtime / Metrics, Runtime / Network | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12111](https://issues.apache.org/jira/browse/FLINK-12111) | TaskManagerProcessFailureBatchRecoveryITCase fails due to removed Slot |  Critical | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12510](https://issues.apache.org/jira/browse/FLINK-12510) | Deadlock when reading from InputGates |  Blocker | Runtime / Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-12516](https://issues.apache.org/jira/browse/FLINK-12516) | Update Travis base image from trusty to xenial |  Major | Travis | Nico Kruber | Nico Kruber |
| [FLINK-10466](https://issues.apache.org/jira/browse/FLINK-10466) | flink-yarn-tests should depend flink-dist |  Major | Deployment / YARN, Tests | Zili Chen | Chesnay Schepler |
| [FLINK-12512](https://issues.apache.org/jira/browse/FLINK-12512) | TableSourceTest#testNestedProject test failed |  Blocker | Table SQL / API | vinoyang | Dawid Wysakowicz |
| [FLINK-12553](https://issues.apache.org/jira/browse/FLINK-12553) | Fix a bug in SqlDateTimeUtils#parseToTimeMillis |  Trivial | Table SQL / Runtime | Liya Fan | Liya Fan |
| [FLINK-12589](https://issues.apache.org/jira/browse/FLINK-12589) | SQL end-to-end test fails on Travis |  Major | Table SQL / API | Chesnay Schepler |  |
| [FLINK-12586](https://issues.apache.org/jira/browse/FLINK-12586) | Stderr and stdout are reversed in OptimizerPlanEnvironment |  Minor | Command Line Client | Kazunori Shinhira | Liya Fan |
| [FLINK-12591](https://issues.apache.org/jira/browse/FLINK-12591) | Synchronization issue in StatsDReporterTest |  Major | Runtime / Metrics, Tests | Stefan Richter | Biao Liu |
| [FLINK-12375](https://issues.apache.org/jira/browse/FLINK-12375) | flink-container job jar does not have read permissions |  Major | flink-docker | Adam Lamar | Yun Tang |
| [FLINK-12416](https://issues.apache.org/jira/browse/FLINK-12416) | Docker build script fails on symlink creation ln -s |  Major | flink-docker | Slava D | Yun Tang |
| [FLINK-12167](https://issues.apache.org/jira/browse/FLINK-12167) | ClusterClient doesn't unset the context class loader after program run |  Major | Command Line Client | Abdul Qadeer | Abdul Qadeer |
| [FLINK-12636](https://issues.apache.org/jira/browse/FLINK-12636) | REST API stability test does not fail on compatible modifications |  Major | Runtime / REST, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12635](https://issues.apache.org/jira/browse/FLINK-12635) | REST API stability test does not cover jar upload |  Major | Runtime / REST, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12296](https://issues.apache.org/jira/browse/FLINK-12296) | Data loss silently in RocksDBStateBackend when more than one operator(has states) chained in a single task |  Blocker | Runtime / State Backends | Congxian Qiu | Congxian Qiu |
| [FLINK-12642](https://issues.apache.org/jira/browse/FLINK-12642) | OutputBufferPoolUsageGauge can fail with NPE |  Critical | Runtime / Metrics, Runtime / Network | Chesnay Schepler | Andrey Zagrebin |
| [FLINK-12688](https://issues.apache.org/jira/browse/FLINK-12688) | Make serializer lazy initialization thread safe in StateDescriptor |  Blocker | API / DataStream, API / Type Serialization System | Yu Li | Yu Li |
| [FLINK-11987](https://issues.apache.org/jira/browse/FLINK-11987) | Kafka producer occasionally throws NullpointerException |  Blocker | Connectors / Kafka | LIU Xiao | Yu Li |
| [FLINK-12689](https://issues.apache.org/jira/browse/FLINK-12689) | flink-dist is missing flink-azure-fs-hadoop dependency |  Blocker | FileSystems | Gary Yao | Gary Yao |
| [FLINK-12547](https://issues.apache.org/jira/browse/FLINK-12547) | Deadlock when the task thread downloads jars using BlobClient |  Major | Runtime / Coordination | Haibo Sun | Haibo Sun |
| [FLINK-12101](https://issues.apache.org/jira/browse/FLINK-12101) | Race condition when concurrently running uploaded jars via REST |  Major | Command Line Client | Maximilian Michels | leesf |
| [FLINK-12739](https://issues.apache.org/jira/browse/FLINK-12739) | Flink does not build with scala 2.12 |  Major | Build System, Table SQL / API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12789](https://issues.apache.org/jira/browse/FLINK-12789) | Fix java docs in UserDefinedAggregateFunction |  Major | Table SQL / API | Hequn Cheng | Hequn Cheng |
| [FLINK-12646](https://issues.apache.org/jira/browse/FLINK-12646) | Use reserved IP as unrouteable IP in RestClientTest |  Minor | Runtime / REST | Victor Wong | Victor Wong |
| [FLINK-10455](https://issues.apache.org/jira/browse/FLINK-10455) | Potential Kafka producer leak in case of failures |  Critical | Connectors / Kafka | Nico Kruber | Jiangjie Qin |
| [FLINK-11107](https://issues.apache.org/jira/browse/FLINK-11107) | Avoid memory stateBackend to create arbitrary folders under HA path when no checkpoint path configured |  Blocker | Runtime / Checkpointing | Yun Tang | Yun Tang |
| [FLINK-12502](https://issues.apache.org/jira/browse/FLINK-12502) | Harden JobMasterTest#testRequestNextInputSplitWithDataSourceFailover |  Major | Runtime / Coordination, Tests | Till Rohrmann | leesf |
| [FLINK-12830](https://issues.apache.org/jira/browse/FLINK-12830) | TableSinkITCase#testBoundedTableSink fails in IDE if run with other tests |  Major | Table SQL / Legacy Planner, Tests | Dawid Wysakowicz | Jark Wu |
| [FLINK-12163](https://issues.apache.org/jira/browse/FLINK-12163) | User correct ClassLoader for Hadoop Writable TypeInfo |  Critical | Connectors / Hadoop Compatibility | morvenhuang | arganzheng |
| [FLINK-12313](https://issues.apache.org/jira/browse/FLINK-12313) | SynchronousCheckpointITCase.taskCachedThreadPoolAllowsForSynchronousCheckpoints is unstable |  Critical | Runtime / Checkpointing | Ufuk Celebi | Alex |
| [FLINK-12800](https://issues.apache.org/jira/browse/FLINK-12800) | Harden Tests when availableProcessors is 1 |  Major | Tests | leesf | leesf |
| [FLINK-12835](https://issues.apache.org/jira/browse/FLINK-12835) | Time conversion is wrong in ManualClock |  Minor | Tests | BoWang | BoWang |
| [FLINK-11059](https://issues.apache.org/jira/browse/FLINK-11059) | JobMaster may continue using an invalid slot if releasing idle slot meet a timeout |  Critical | Runtime / Coordination | shuai.xu | shuai.xu |
| [FLINK-12297](https://issues.apache.org/jira/browse/FLINK-12297) | Make ClosureCleaner recursive |  Blocker | API / DataSet, API / DataStream | Dawid Wysakowicz | Aitozi |
| [FLINK-1722](https://issues.apache.org/jira/browse/FLINK-1722) | Streaming not respecting FinalizeOnMaster for output formats |  Major | API / DataStream | Robert Metzger | Haibo Sun |
| [FLINK-12871](https://issues.apache.org/jira/browse/FLINK-12871) | Wrong SSL setup examples in docs |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-12907](https://issues.apache.org/jira/browse/FLINK-12907) | flink-table-planner-blink fails to compile with scala 2.12 |  Blocker | Table SQL / Planner | Dawid Wysakowicz | Jark Wu |
| [FLINK-12908](https://issues.apache.org/jira/browse/FLINK-12908) | flink-table-planner-blink does not compile on master |  Blocker | Table SQL / Planner | Dawid Wysakowicz | godfrey he |
| [FLINK-12896](https://issues.apache.org/jira/browse/FLINK-12896) | TaskCheckpointStatisticDetailsHandler uses wrong value for JobID when archiving |  Major | Runtime / REST | xymaqingxiang | xymaqingxiang |
| [FLINK-12910](https://issues.apache.org/jira/browse/FLINK-12910) | Fix the Python catalog test issue |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-12863](https://issues.apache.org/jira/browse/FLINK-12863) | Race condition between slot offerings and AllocatedSlotReport |  Critical | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-12865](https://issues.apache.org/jira/browse/FLINK-12865) | State inconsistency between RM and TM on the slot status |  Major | Runtime / Coordination | Yun Gao | Till Rohrmann |
| [FLINK-12895](https://issues.apache.org/jira/browse/FLINK-12895) | TaskManagerProcessFailureBatchRecoveryITCase.testTaskManagerProcessFailure failed on travis |  Critical | Runtime / Coordination, Tests | Haibo Sun | Till Rohrmann |
| [FLINK-12778](https://issues.apache.org/jira/browse/FLINK-12778) | Fix deriveTableAggRowType bug for non-composite types |  Major | Table SQL / API | Hequn Cheng | Hequn Cheng |
| [FLINK-12868](https://issues.apache.org/jira/browse/FLINK-12868) | Yarn and Mesos clusters can not be deployed if plugins dir does not exist |  Blocker | Deployment / Mesos, Deployment / YARN | Piotr Nowojski | Piotr Nowojski |
| [FLINK-12931](https://issues.apache.org/jira/browse/FLINK-12931) | lint-python.sh cannot find flake8 |  Major | API / Python | Bowen Li | Dian Fu |
| [FLINK-12920](https://issues.apache.org/jira/browse/FLINK-12920) | Drop support for register\_table\_sink with field\_names and field\_types parameters |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-12915](https://issues.apache.org/jira/browse/FLINK-12915) | AbstractOperatorRestoreTestBase can deadlock if one test fails |  Critical | Runtime / State Backends, Tests | Till Rohrmann | Yun Tang |
| [FLINK-12975](https://issues.apache.org/jira/browse/FLINK-12975) | UserDefinedFunctionUtils should distinguish overload any parameters methods in blink |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-12972](https://issues.apache.org/jira/browse/FLINK-12972) | Ensure calling open/close in join condition of generated functions for blink |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-12190](https://issues.apache.org/jira/browse/FLINK-12190) | Fix IllegalArgumentException thrown by FlinkKinesisConsumerMigrationTest#writeSnapshot |  Major | Connectors / Kinesis, Tests | vinoyang | vinoyang |
| [FLINK-12957](https://issues.apache.org/jira/browse/FLINK-12957) | Fix thrift and protobuf dependency examples in documentation |  Minor | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-11861](https://issues.apache.org/jira/browse/FLINK-11861) | JobMasterTriggerSavepointIT case is not executed |  Major | Tests | shuai.xu | Zili Chen |
| [FLINK-12990](https://issues.apache.org/jira/browse/FLINK-12990) | Date type doesn't consider the local TimeZone |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-11662](https://issues.apache.org/jira/browse/FLINK-11662) | Discarded checkpoint can cause Tasks to fail |  Critical | Runtime / Checkpointing | Dong Ma | Yun Tang |
| [FLINK-12592](https://issues.apache.org/jira/browse/FLINK-12592) | StreamTableEnvironment object has no attribute connect |  Critical | API / Python, Tests | Till Rohrmann | sunjincheng |
| [FLINK-13004](https://issues.apache.org/jira/browse/FLINK-13004) | Correct the logic of needToCleanupState in KeyedProcessFunctionWithCleanupState |  Major | Table SQL / Planner | Yun Tang | Yun Tang |
| [FLINK-12284](https://issues.apache.org/jira/browse/FLINK-12284) | InputBufferPoolUsage is incorrect in credit-based network control flow |  Major | Runtime / Metrics, Runtime / Network | Xiaogang Shi | Aitozi |
| [FLINK-13077](https://issues.apache.org/jira/browse/FLINK-13077) | CatalogPartitionAPICompletenessTests in pyflink failed because of lacking "getComment" method |  Blocker | API / Python, Tests | Wei Zhong | Wei Zhong |
| [FLINK-13073](https://issues.apache.org/jira/browse/FLINK-13073) | BinaryRow in Blink runtime has wrong FIRST\_BYTE\_ZERO mask |  Major | Table SQL / Runtime | Louis Xu | Louis Xu |
| [FLINK-13016](https://issues.apache.org/jira/browse/FLINK-13016) | StreamTaskNetworkInput can linger records for longer period of times |  Blocker | Runtime / Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-12802](https://issues.apache.org/jira/browse/FLINK-12802) | Cleanup some interfaces of BinaryString |  Major | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-12840](https://issues.apache.org/jira/browse/FLINK-12840) | Problems with ipv6 addresses |  Major | Runtime / Configuration, Runtime / Network | Pavel Potseluev | Stephan Ewen |
| [FLINK-13017](https://issues.apache.org/jira/browse/FLINK-13017) | Broken and irreproducible dockerized docs build |  Critical | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-13043](https://issues.apache.org/jira/browse/FLINK-13043) | Fix the bug of parsing Dewey number from string |  Trivial | Library / CEP | Liya Fan | Liya Fan |
| [FLINK-12889](https://issues.apache.org/jira/browse/FLINK-12889) | Job keeps in FAILING state |  Critical | Runtime / Task | Fan Xinpu | Till Rohrmann |
| [FLINK-12319](https://issues.apache.org/jira/browse/FLINK-12319) | StackOverFlowError in cep.nfa.sharedbuffer.SharedBuffer |  Major | Library / CEP | Marco Pfatschbacher | Liya Fan |
| [FLINK-13063](https://issues.apache.org/jira/browse/FLINK-13063) | AsyncWaitOperator shouldn't be releasing checkpointingLock |  Blocker | API / DataStream | Piotr Nowojski | Stefan Richter |
| [FLINK-13067](https://issues.apache.org/jira/browse/FLINK-13067) | Fix broken links to contributing docs |  Major | Documentation | Yun Tang | Yun Tang |
| [FLINK-13057](https://issues.apache.org/jira/browse/FLINK-13057) | Correct comments in ListState class |  Major | Runtime / State Backends | Hequn Cheng | Hequn Cheng |
| [FLINK-12929](https://issues.apache.org/jira/browse/FLINK-12929) | scala.StreamExecutionEnvironment.addSource does not propagate TypeInformation |  Critical | API / Scala, API / Type Serialization System | Fabio Lombardelli |  |
| [FLINK-13175](https://issues.apache.org/jira/browse/FLINK-13175) | FLINK-12951 breaks SQL CLI's ExecutionContextTest |  Critical | Table SQL / Client | Bowen Li | Danny Chen |
| [FLINK-12736](https://issues.apache.org/jira/browse/FLINK-12736) | ResourceManager may release TM with allocated slots |  Critical | Runtime / Coordination | Chesnay Schepler | Andrey Zagrebin |
| [FLINK-12852](https://issues.apache.org/jira/browse/FLINK-12852) | [hotfix timeout] Deadlock occurs when requiring exclusive buffer for RemoteInputChannel |  Blocker | Runtime / Network | Yun Gao | Yun Gao |
| [FLINK-13214](https://issues.apache.org/jira/browse/FLINK-13214) | Hive connector is missing jdk.tools exclusion for Java 9 |  Blocker | Connectors / Hive | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13209](https://issues.apache.org/jira/browse/FLINK-13209) | Following FLINK-12951: Remove TableEnvironment#sql and add create table ddl support to sqlUpdate |  Major | Table SQL / API | Danny Chen | Danny Chen |
| [FLINK-13232](https://issues.apache.org/jira/browse/FLINK-13232) | TemporalTypesTest\>ExpressionTestBase.evaluateExprs in blink planner fails on PST Timezone |  Critical | Table SQL / Planner | Bowen Li | Jingsong Lee |
| [FLINK-13234](https://issues.apache.org/jira/browse/FLINK-13234) | TemporalTypesTest randomly failed on travis |  Critical | Table SQL / Planner | Kurt Young | Jingsong Lee |
| [FLINK-13219](https://issues.apache.org/jira/browse/FLINK-13219) | Hive connector fails hadoop 2.4.1 builds |  Major | Connectors / Hive | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13217](https://issues.apache.org/jira/browse/FLINK-13217) | Blink planner does not compile with Scala 2.12 |  Blocker | Table SQL / Planner | Chesnay Schepler | Jark Wu |
| [FLINK-13253](https://issues.apache.org/jira/browse/FLINK-13253) | Deadlock may occur in JDBCUpsertOutputFormat |  Major | Connectors / JDBC | Jingsong Lee | Jingsong Lee |
| [FLINK-13156](https://issues.apache.org/jira/browse/FLINK-13156) | Elasticsearch (v1.7.1) sink end-to-end test failed on Travis |  Critical | Connectors / ElasticSearch | Till Rohrmann | Chesnay Schepler |
| [FLINK-13243](https://issues.apache.org/jira/browse/FLINK-13243) | AbstractOperatorRestartTestBase fails on Windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13154](https://issues.apache.org/jira/browse/FLINK-13154) | Broken links in documentation |  Blocker | Documentation | Till Rohrmann | Yun Tang |
| [FLINK-13124](https://issues.apache.org/jira/browse/FLINK-13124) | Stop fails with Universal Kafka Consumer |  Blocker | Connectors / Kafka | Konstantin Knauf | Aljoscha Krettek |
| [FLINK-13205](https://issues.apache.org/jira/browse/FLINK-13205) | Checkpoints/savepoints injection has loose ordering properties when a stop-with-savepoint is triggered |  Minor | Runtime / Checkpointing | Alex | Alex |
| [FLINK-11727](https://issues.apache.org/jira/browse/FLINK-11727) | JSON row format is not serializable |  Blocker | Table SQL / Ecosystem | Timo Walther | Timo Walther |
| [FLINK-13170](https://issues.apache.org/jira/browse/FLINK-13170) | Planner should get table factory from catalog when creating sink for CatalogTable |  Major | Table SQL / Planner | Rui Li | Rui Li |
| [FLINK-13153](https://issues.apache.org/jira/browse/FLINK-13153) | SplitAggregateITCase.testMinMaxWithRetraction failed on Travis |  Blocker | Table SQL / Planner | Till Rohrmann | Jark Wu |
| [FLINK-13216](https://issues.apache.org/jira/browse/FLINK-13216) | AggregateITCase.testNestedGroupByAgg fails on Travis |  Critical | Table SQL / Planner | Till Rohrmann | Jark Wu |
| [FLINK-13215](https://issues.apache.org/jira/browse/FLINK-13215) | Hive connector does not compile on Java 9 |  Blocker | Connectors / Hive | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8801](https://issues.apache.org/jira/browse/FLINK-8801) | S3's eventual consistent read-after-write may fail yarn deployment of resources to S3 |  Blocker | Deployment / YARN, FileSystems, Runtime / Coordination | Nico Kruber | Nico Kruber |
| [FLINK-13299](https://issues.apache.org/jira/browse/FLINK-13299) | flink-python failed on Travis |  Major | . | Haibo Sun | Wei Zhong |
| [FLINK-13282](https://issues.apache.org/jira/browse/FLINK-13282) | LocalExecutorITCase#testUseCatalogAndUseDatabase failed on Travis |  Blocker | Table SQL / Client | Jark Wu | Bowen Li |
| [FLINK-13161](https://issues.apache.org/jira/browse/FLINK-13161) | numBuckets calculate wrong in BinaryHashBucketArea |  Major | Table SQL / Runtime | Louis Xu | Louis Xu |
| [FLINK-13256](https://issues.apache.org/jira/browse/FLINK-13256) | Periodical checkpointing is stopped after failovers |  Blocker | Runtime / Checkpointing | Zhu Zhu | Yun Tang |
| [FLINK-13249](https://issues.apache.org/jira/browse/FLINK-13249) | Distributed Jepsen test fails with blocked TaskExecutor |  Blocker | Runtime / Network | Till Rohrmann | Stefan Richter |
| [FLINK-13281](https://issues.apache.org/jira/browse/FLINK-13281) | Fix the verify logic of AdaptedRestartPipelinedRegionStrategyNGAbortPendingCheckpointsTest |  Major | Runtime / Coordination, Tests | Yun Tang | Yun Tang |
| [FLINK-13320](https://issues.apache.org/jira/browse/FLINK-13320) | Remove link to hive\_compatibility from catalog docs |  Major | Connectors / Hive, Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13319](https://issues.apache.org/jira/browse/FLINK-13319) | Catalog documentation is missing chinese page |  Blocker | Table SQL / Ecosystem | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13327](https://issues.apache.org/jira/browse/FLINK-13327) | Blink planner not compiling with Scala 2.12 |  Blocker | Table SQL / Planner | Chesnay Schepler | Dawid Wysakowicz |
| [FLINK-12916](https://issues.apache.org/jira/browse/FLINK-12916) | KeyedComplexChainTest.testMigrationAndRestore failed on Travis |  Blocker | Runtime / Checkpointing, Tests | Till Rohrmann | Yun Tang |
| [FLINK-13308](https://issues.apache.org/jira/browse/FLINK-13308) | flink-python releases 2 jars |  Blocker | API / Python, Build System | Chesnay Schepler | Dian Fu |
| [FLINK-13255](https://issues.apache.org/jira/browse/FLINK-13255) | Skip hive connector test for JDK9 profile |  Major | Connectors / Hive, Travis | Rui Li | Chesnay Schepler |
| [FLINK-13293](https://issues.apache.org/jira/browse/FLINK-13293) | Add state processor api to opt/ directory in flink-dist |  Major | Build System | Seth Wiesman | Seth Wiesman |
| [FLINK-13284](https://issues.apache.org/jira/browse/FLINK-13284) | Correct some builtin functions' return type inference in Blink planner |  Major | Table SQL / Planner | lincoln lee | lincoln lee |
| [FLINK-12595](https://issues.apache.org/jira/browse/FLINK-12595) | KinesisDataFetcherTest.testOriginalExceptionIsPreservedWhenInterruptedDuringShutdown deadlocks |  Critical | Connectors / Kinesis, Tests | Dawid Wysakowicz | Shannon Carey |
| [FLINK-13221](https://issues.apache.org/jira/browse/FLINK-13221) | Blink planner should set ScheduleMode to LAZY\_FROM\_SOURCES\_WITH\_BATCH\_SLOT\_REQUEST for batch jobs |  Blocker | Table SQL / Planner | Kurt Young | Liya Fan |
| [FLINK-13304](https://issues.apache.org/jira/browse/FLINK-13304) | Fix implementation of getString and getBinary method in NestedRow |  Critical | Table SQL / Runtime | Caizhi Weng | Caizhi Weng |
| [FLINK-13322](https://issues.apache.org/jira/browse/FLINK-13322) | Fix serializer snapshot recovery in BaseArray and BaseMap serializers. |  Major | Table SQL / Runtime | Caizhi Weng | Caizhi Weng |
| [FLINK-13075](https://issues.apache.org/jira/browse/FLINK-13075) | Project pushdown rule shouldn't require the TableSource return a modified schema in blink planner |  Blocker | Table SQL / Planner | Jark Wu | Caizhi Weng |
| [FLINK-13314](https://issues.apache.org/jira/browse/FLINK-13314) | Correct resultType of some PlannerExpression when operands contains DecimalTypeInfo or BigDecimalTypeInfo in Blink planner |  Blocker | Table SQL / Planner | Jing Zhang | Jing Zhang |
| [FLINK-13318](https://issues.apache.org/jira/browse/FLINK-13318) | Blink planner tests failing on Scala 2.12 |  Blocker | Table SQL / Planner, Tests | Chesnay Schepler | Jing Zhang |
| [FLINK-13074](https://issues.apache.org/jira/browse/FLINK-13074) | Fix PartitionableTableSink doesn't work in flink&blink planner |  Major | Table SQL / Planner | Danny Chen | Danny Chen |
| [FLINK-13369](https://issues.apache.org/jira/browse/FLINK-13369) | Recursive closure cleaner ends up with stackOverflow in case of circular dependency |  Major | . | David Morávek | David Morávek |
| [FLINK-13394](https://issues.apache.org/jira/browse/FLINK-13394) | Use fallback unsafe secure MapR in nightly.sh |  Major | Tests, Travis | Zhenghua Gao | Chesnay Schepler |
| [FLINK-13351](https://issues.apache.org/jira/browse/FLINK-13351) | duplicate case ROW match in FlinkTypeFactory.toLogicalType |  Major | Table SQL / Planner | Louis Xu | Louis Xu |
| [FLINK-13398](https://issues.apache.org/jira/browse/FLINK-13398) | Hive connector doesn't compile on Java 9 |  Blocker | Connectors / Hive | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13378](https://issues.apache.org/jira/browse/FLINK-13378) | Fix SINGLE\_VALUE is not correctly supported in blink planner |  Blocker | Table SQL / Planner | Louis Xu | Jingsong Lee |
| [FLINK-13257](https://issues.apache.org/jira/browse/FLINK-13257) | blink runner should avoid stream operator implementing BoundedOneInput |  Critical | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-13353](https://issues.apache.org/jira/browse/FLINK-13353) | Remove 2 args constructor in REPLACE expression |  Major | Table SQL / Legacy Planner, Table SQL / Planner | Louis Xu | Louis Xu |
| [FLINK-13155](https://issues.apache.org/jira/browse/FLINK-13155) | SQL Client end-to-end test fails on Travis |  Critical | Table SQL / Client | Till Rohrmann | Zhenghua Gao |
| [FLINK-13116](https://issues.apache.org/jira/browse/FLINK-13116) | Catalog statistic is not bridged to blink planner |  Blocker | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-13367](https://issues.apache.org/jira/browse/FLINK-13367) | Make ClosureCleaner detect writeReplace serialization override |  Major | . | David Morávek | David Morávek |
| [FLINK-13352](https://issues.apache.org/jira/browse/FLINK-13352) | Using hive connector with hive-1.2.1 needs libfb303 jar |  Blocker | Connectors / Hive, Documentation | Rui Li | Rui Li |
| [FLINK-13429](https://issues.apache.org/jira/browse/FLINK-13429) | SQL Client end-to-end test fails |  Blocker | Table SQL / Client | Timo Walther | Timo Walther |
| [FLINK-13387](https://issues.apache.org/jira/browse/FLINK-13387) | Can not download taskmanger & jobmanager's logs in the old UI |  Critical | Runtime / Web Frontend | Dawid Wysakowicz | Chesnay Schepler |
| [FLINK-13245](https://issues.apache.org/jira/browse/FLINK-13245) | Network stack is leaking files |  Blocker | Runtime / Network | Chesnay Schepler | Zhijiang |
| [FLINK-13228](https://issues.apache.org/jira/browse/FLINK-13228) | HadoopRecoverableWriterTest.testCommitAfterNormalClose fails on Travis |  Critical | FileSystems | Till Rohrmann | Yu Li |
| [FLINK-9526](https://issues.apache.org/jira/browse/FLINK-9526) | BucketingSink end-to-end test failed on Travis |  Critical | Connectors / Common, Tests | Chesnay Schepler | Biao Liu |
| [FLINK-13347](https://issues.apache.org/jira/browse/FLINK-13347) | should handle new JoinRelType(SEMI/ANTI) in switch case |  Major | Table SQL / Legacy Planner, Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-13279](https://issues.apache.org/jira/browse/FLINK-13279) | not able to query table registered in catalogs in SQL CLI |  Blocker | Table SQL / API, Table SQL / Client, Table SQL / Legacy Planner, Table SQL / Planner | Bowen Li | Dawid Wysakowicz |
| [FLINK-13241](https://issues.apache.org/jira/browse/FLINK-13241) | YarnResourceManager does not handle slot allocations in certain cases |  Blocker | Deployment / YARN | Zhu Zhu | Xintong Song |
| [FLINK-12038](https://issues.apache.org/jira/browse/FLINK-12038) | YARNITCase stalls on travis |  Critical | Deployment / YARN, Tests | Chesnay Schepler | shuai.xu |
| [FLINK-13488](https://issues.apache.org/jira/browse/FLINK-13488) | flink-python fails to build on Travis due to PackagesNotFoundError |  Blocker | API / Python, Test Infrastructure | Tzu-Li (Gordon) Tai | sunjincheng |
| [FLINK-12249](https://issues.apache.org/jira/browse/FLINK-12249) | Type equivalence check fails for Window Aggregates |  Critical | Table SQL / Legacy Planner, Tests | Dawid Wysakowicz | Hequn Cheng |
| [FLINK-13431](https://issues.apache.org/jira/browse/FLINK-13431) | NameNode HA configuration was not loaded when running HiveConnector on Yarn |  Critical | Connectors / Hive | Hongtao Zhang | Hongtao Zhang |
| [FLINK-13499](https://issues.apache.org/jira/browse/FLINK-13499) | Remove dependency on MapR artifact repository |  Blocker | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-12858](https://issues.apache.org/jira/browse/FLINK-12858) | Potential distributed deadlock in case of synchronous savepoint failure |  Blocker | Runtime / Checkpointing | Alex | Alex |
| [FLINK-13487](https://issues.apache.org/jira/browse/FLINK-13487) | TaskExecutorPartitionLifecycleTest.testPartitionReleaseAfterReleaseCall failed on Travis |  Blocker | Runtime / Task, Tests | Tzu-Li (Gordon) Tai | Yun Gao |
| [FLINK-13423](https://issues.apache.org/jira/browse/FLINK-13423) | Unable to find function in hive 1 |  Critical | Connectors / Hive | Jeff Zhang | Rui Li |
| [FLINK-13226](https://issues.apache.org/jira/browse/FLINK-13226) | KafkaProducerExactlyOnceITCase.testMultipleSinkOperators fails on Travis |  Critical | Connectors / Kafka | Till Rohrmann | Jiangjie Qin |
| [FLINK-13491](https://issues.apache.org/jira/browse/FLINK-13491) | AsyncWaitOperator doesn't handle endInput call properly |  Blocker | API / DataStream | Piotr Nowojski | Biao Liu |
| [FLINK-13374](https://issues.apache.org/jira/browse/FLINK-13374) | Scala compiler causes StackOverflowError |  Blocker | Table SQL / Planner | Zhenghua Gao | Chesnay Schepler |
| [FLINK-13424](https://issues.apache.org/jira/browse/FLINK-13424) | HiveCatalog should add hive version in conf |  Critical | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-13427](https://issues.apache.org/jira/browse/FLINK-13427) | HiveCatalog's createFunction fails when function name has upper-case characters |  Critical | Connectors / Hive | Jingsong Lee | Rui Li |
| [FLINK-13371](https://issues.apache.org/jira/browse/FLINK-13371) | Release partitions in JM if producer restarts |  Blocker | Runtime / Coordination, Runtime / Network | Andrey Zagrebin | Chesnay Schepler |
| [FLINK-13494](https://issues.apache.org/jira/browse/FLINK-13494) | Blink planner changes source parallelism which causes stream SQL e2e test fails |  Blocker | Table SQL / Planner, Tests | Zhenghua Gao | XuPingyong |
| [FLINK-13421](https://issues.apache.org/jira/browse/FLINK-13421) | Unexpected ConcurrentModificationException when RM notifies JM about allocation failure |  Blocker | Runtime / Coordination | Zhu Zhu | Till Rohrmann |
| [FLINK-13338](https://issues.apache.org/jira/browse/FLINK-13338) | Sql conformance is hard to config in TableConfig |  Critical | Table SQL / API | Danny Chen | Danny Chen |
| [FLINK-13544](https://issues.apache.org/jira/browse/FLINK-13544) | Set parallelism of table sink operator to input transformation parallelism |  Critical | Connectors / Common, Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-13504](https://issues.apache.org/jira/browse/FLINK-13504) | NoSuchFieldError when executing DDL via tEnv.sqlUpdate in application project |  Blocker | Table SQL / Legacy Planner, Table SQL / Planner | Jark Wu | Dawid Wysakowicz |
| [FLINK-13541](https://issues.apache.org/jira/browse/FLINK-13541) | State Processor Api sets the wrong key selector when writing savepoints |  Blocker | API / DataStream, Runtime / State Backends | Seth Wiesman | Seth Wiesman |
| [FLINK-12768](https://issues.apache.org/jira/browse/FLINK-12768) | FlinkKinesisConsumerTest.testSourceSynchronization unstable on Travis |  Critical | Connectors / Kinesis | Till Rohrmann | Thomas Weise |
| [FLINK-13385](https://issues.apache.org/jira/browse/FLINK-13385) | Align Hive data type mapping with FLIP-37 |  Critical | Connectors / Hive | Timo Walther | Terry Wang |
| [FLINK-13476](https://issues.apache.org/jira/browse/FLINK-13476) | Release partitions for FINISHED tasks if they are cancelled/suspended |  Blocker | Runtime / Coordination | Till Rohrmann | Chesnay Schepler |
| [FLINK-13532](https://issues.apache.org/jira/browse/FLINK-13532) | Broken links in documentation |  Blocker | Documentation | Chesnay Schepler | Biao Liu |
| [FLINK-13508](https://issues.apache.org/jira/browse/FLINK-13508) | CommonTestUtils#waitUntilCondition() may attempt to sleep with negative time |  Critical | Tests | Gary Yao | Gary Yao |
| [FLINK-13463](https://issues.apache.org/jira/browse/FLINK-13463) | SQL VALUES might fail for Blink planner |  Critical | Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-13384](https://issues.apache.org/jira/browse/FLINK-13384) | The back pressure monitoring does not work for StreamSources |  Blocker | Runtime / Metrics, Runtime / Task | Dawid Wysakowicz | Gary Yao |
| [FLINK-13579](https://issues.apache.org/jira/browse/FLINK-13579) | Failed launching standalone cluster due to improper configured irrelevant config options for active mode. |  Blocker | Runtime / Coordination | Xintong Song | Till Rohrmann |
| [FLINK-13584](https://issues.apache.org/jira/browse/FLINK-13584) | RankLikeAggFunctionBase should respect type to construct literal |  Critical | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-13486](https://issues.apache.org/jira/browse/FLINK-13486) | AsyncDataStreamITCase.testOrderedWaitUsingAnonymousFunction instable on Travis |  Blocker | API / DataStream, Tests | Tzu-Li (Gordon) Tai | Biao Liu |
| [FLINK-13540](https://issues.apache.org/jira/browse/FLINK-13540) | DDL do not support key of properties contains number or "-" |  Blocker | Table SQL / Planner | Jingsong Lee | Danny Chen |
| [FLINK-9782](https://issues.apache.org/jira/browse/FLINK-9782) | BucketingSink E2E test fails on travis |  Critical | Connectors / FileSystem, Tests | Chesnay Schepler | Kostas Kloudas |
| [FLINK-13592](https://issues.apache.org/jira/browse/FLINK-13592) | test\_tpch.sh should not hardcode flink version |  Blocker | Tests | Kurt Young | Kurt Young |
| [FLINK-10368](https://issues.apache.org/jira/browse/FLINK-10368) | 'Kerberized YARN on Docker test' unstable |  Blocker | Deployment / YARN, Tests | Till Rohrmann | Aljoscha Krettek |
| [FLINK-13044](https://issues.apache.org/jira/browse/FLINK-13044) | Shading of AWS SDK in flink-s3-fs-hadoop results in ClassNotFoundExceptions |  Blocker | FileSystems | Sebastian J. | Chesnay Schepler |
| [FLINK-13452](https://issues.apache.org/jira/browse/FLINK-13452) | Pipelined region failover strategy does not recover Job if checkpoint cannot be read |  Blocker | Runtime / Coordination | Gary Yao | Yun Tang |
| [FLINK-13605](https://issues.apache.org/jira/browse/FLINK-13605) | AsyncDataStreamITCase.testUnorderedWait failed on Travis |  Blocker | API / DataStream, Tests | Kostas Kloudas | Biao Liu |
| [FLINK-13581](https://issues.apache.org/jira/browse/FLINK-13581) | BatchFineGrainedRecoveryITCase failed on Travis |  Critical | Runtime / Coordination | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-13159](https://issues.apache.org/jira/browse/FLINK-13159) | java.lang.ClassNotFoundException when restore job |  Blocker | API / Type Serialization System | kring | Yun Tang |
| [FLINK-13545](https://issues.apache.org/jira/browse/FLINK-13545) | JoinToMultiJoinRule should not match SEMI/ANTI LogicalJoin |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-13600](https://issues.apache.org/jira/browse/FLINK-13600) | TableEnvironment.connect() is not usable |  Critical | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-13587](https://issues.apache.org/jira/browse/FLINK-13587) | Fix some transformation names are not set in blink planner |  Major | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-13645](https://issues.apache.org/jira/browse/FLINK-13645) | Error in code-gen when using blink planner in scala shell |  Blocker | Table SQL / Planner | Jeff Zhang | Jeff Zhang |
| [FLINK-13593](https://issues.apache.org/jira/browse/FLINK-13593) | Prevent failing the wrong execution attempt in CheckpointFailureManager |  Blocker | Runtime / Checkpointing | Yu Li | Yu Li |
| [FLINK-12602](https://issues.apache.org/jira/browse/FLINK-12602) | Correct the flink pom \`artifactId\` config and scala-free check logic |  Major | Build System | sunjincheng | sunjincheng |
| [FLINK-13752](https://issues.apache.org/jira/browse/FLINK-13752) | TaskDeploymentDescriptor cannot be recycled by GC due to referenced by an anonymous function |  Critical | Runtime / Coordination | Yun Gao | Yun Gao |
| [FLINK-13699](https://issues.apache.org/jira/browse/FLINK-13699) | Fix TableFactory doesn't work with DDL when containing TIMESTAMP/DATE/TIME types |  Critical | Table SQL / API, Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-13612](https://issues.apache.org/jira/browse/FLINK-13612) | StateDescriptor Loading Error NPE at FlinkKafkaProducer011 with High Concurrency Initialization |  Major | Connectors / Kafka | weiyunqing |  |
| [FLINK-12576](https://issues.apache.org/jira/browse/FLINK-12576) | inputQueueLength metric does not work for LocalInputChannels |  Major | Runtime / Metrics, Runtime / Network | Piotr Nowojski |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-11646](https://issues.apache.org/jira/browse/FLINK-11646) | Remove legacy MockRecordWriter |  Minor | Tests | Zhijiang | Zhijiang |
| [FLINK-12350](https://issues.apache.org/jira/browse/FLINK-12350) | RocksDBStateBackendTest doesn't cover the incremental checkpoint code path |  Major | Runtime / State Backends | Yu Li | Yu Li |
| [FLINK-11756](https://issues.apache.org/jira/browse/FLINK-11756) | Update migration tests for Flink 1.8 |  Blocker | Tests | vinoyang | vinoyang |
| [FLINK-13274](https://issues.apache.org/jira/browse/FLINK-13274) | Refactor HiveTableSource Test using HiveRunner Test Frame |  Major | Connectors / Hive | Terry Wang | Terry Wang |
| [FLINK-13323](https://issues.apache.org/jira/browse/FLINK-13323) | Add tests for complex data formats |  Minor | Table SQL / Runtime | Caizhi Weng | Caizhi Weng |
| [FLINK-13303](https://issues.apache.org/jira/browse/FLINK-13303) | Add e2e test for hive connector |  Major | Connectors / Hive, Tests | Rui Li | Rui Li |
| [FLINK-13436](https://issues.apache.org/jira/browse/FLINK-13436) | Add TPC-H queries as E2E tests |  Blocker | Table SQL / Planner, Tests | Till Rohrmann | Caizhi Weng |
| [FLINK-13439](https://issues.apache.org/jira/browse/FLINK-13439) | Run existing SQL/Table API E2E tests with blink runner |  Blocker | Table SQL / API, Tests | Till Rohrmann | Zhenghua Gao |
| [FLINK-13610](https://issues.apache.org/jira/browse/FLINK-13610) | Refactor HiveTableSource Test use sql query and remove HiveInputFormatTest |  Major | Connectors / Hive | Terry Wang | Terry Wang |
| [FLINK-13441](https://issues.apache.org/jira/browse/FLINK-13441) | Add batch sql E2E test which runs with fewer slots than parallelism |  Blocker | API / DataSet, Tests | Till Rohrmann | Alex |
| [FLINK-13597](https://issues.apache.org/jira/browse/FLINK-13597) | Test Flink 1.9.0 on cluster |  Blocker | Tests | Till Rohrmann | Aljoscha Krettek |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-11845](https://issues.apache.org/jira/browse/FLINK-11845) | Drop unused InfoMessage |  Major | Runtime / REST | Zili Chen | Zili Chen |
| [FLINK-11908](https://issues.apache.org/jira/browse/FLINK-11908) | Port window classes into flink-table-api-java |  Major | Table SQL / API | Hequn Cheng | Hequn Cheng |
| [FLINK-11721](https://issues.apache.org/jira/browse/FLINK-11721) | Remove IOMode from NetworkEnvironment |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-11676](https://issues.apache.org/jira/browse/FLINK-11676) | Make ResultPartitionWriter extend AutoCloseable |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-11885](https://issues.apache.org/jira/browse/FLINK-11885) | Introduce RecordWriterBuilder for creating RecordWriter instance |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-11907](https://issues.apache.org/jira/browse/FLINK-11907) | GenericTypeInfoTest fails on Java 9 |  Major | API / Type Serialization System, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11153](https://issues.apache.org/jira/browse/FLINK-11153) | Remove UdfAnalyzer |  Major | API / DataStream, Tests | Gary Yao | Chesnay Schepler |
| [FLINK-11707](https://issues.apache.org/jira/browse/FLINK-11707) | Make InputGate interface extend AutoCloseable |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-11146](https://issues.apache.org/jira/browse/FLINK-11146) | Get rid of legacy codes from ClusterClient |  Major | Command Line Client, Tests | Zili Chen | Zili Chen |
| [FLINK-12055](https://issues.apache.org/jira/browse/FLINK-12055) | Remove legacy ActorSystemLoader |  Major | Command Line Client | Zili Chen | Zili Chen |
| [FLINK-11723](https://issues.apache.org/jira/browse/FLINK-11723) | Remove KvState related components from NetworkEnvironment |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-12028](https://issues.apache.org/jira/browse/FLINK-12028) | Add Column Operators(add/rename/drop) |  Major | Table SQL / API | sunjincheng | sunjincheng |
| [FLINK-12056](https://issues.apache.org/jira/browse/FLINK-12056) | Remove legacy methods in LeaderRetrievalUtils |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-11155](https://issues.apache.org/jira/browse/FLINK-11155) | HadoopFreeFsFactoryTest fails with ClassCastException |  Major | FileSystems, Tests | Gary Yao | Chesnay Schepler |
| [FLINK-12078](https://issues.apache.org/jira/browse/FLINK-12078) | Abstract TaskEventPublisher interface for simplifying NetworkEnvironment |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-10575](https://issues.apache.org/jira/browse/FLINK-10575) | Remove deprecated ExecutionGraphBuilder.buildGraph method |  Major | Runtime / Coordination | JIN SUN | Zili Chen |
| [FLINK-10973](https://issues.apache.org/jira/browse/FLINK-10973) | Add Map operator to Table API |  Major | Table SQL / API | sunjincheng | Dian Fu |
| [FLINK-12050](https://issues.apache.org/jira/browse/FLINK-12050) | BlockingShutdownTest fails on Java 9 |  Major | Tests | Chesnay Schepler | leesf |
| [FLINK-11593](https://issues.apache.org/jira/browse/FLINK-11593) | Port TaskManagerTest |  Major | Runtime / Coordination | Till Rohrmann | Shimin Yang |
| [FLINK-12108](https://issues.apache.org/jira/browse/FLINK-12108) | Simplify splitting expressions into projections, aggregations & windowProperties |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-11920](https://issues.apache.org/jira/browse/FLINK-11920) | EnumValueSerializerUpgradeTest fails on Java 9 |  Major | API / Type Serialization System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11757](https://issues.apache.org/jira/browse/FLINK-11757) | Add 1.8 MigrationVersion |  Blocker | Tests | vinoyang | vinoyang |
| [FLINK-12155](https://issues.apache.org/jira/browse/FLINK-12155) | Remove legacy TaskManager |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-12100](https://issues.apache.org/jira/browse/FLINK-12100) | Kafka 0.10/0.11 tests fail on Java 9 |  Major | Connectors / Kafka | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12156](https://issues.apache.org/jira/browse/FLINK-12156) | Remove legacy FlinkActor |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-12067](https://issues.apache.org/jira/browse/FLINK-12067) | Refactor the constructor of NetworkEnvironment |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-12177](https://issues.apache.org/jira/browse/FLINK-12177) | Remove legacy FlinkUntypedActor |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-12117](https://issues.apache.org/jira/browse/FLINK-12117) | CassandraConnectorITCase fails on Java 9 |  Major | Connectors / Cassandra, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12102](https://issues.apache.org/jira/browse/FLINK-12102) | FlinkILoopTest fails on Java 9 |  Major | Scala Shell | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11667](https://issues.apache.org/jira/browse/FLINK-11667) | Add Synchronous Checkpoint handling in StreamTask |  Major | Runtime / Checkpointing | Kostas Kloudas | Kostas Kloudas |
| [FLINK-11668](https://issues.apache.org/jira/browse/FLINK-11668) | Allow sources to advance time to max watermark on checkpoint. |  Major | Runtime / Checkpointing | Kostas Kloudas | Kostas Kloudas |
| [FLINK-11669](https://issues.apache.org/jira/browse/FLINK-11669) | Add Synchronous Checkpoint Triggering RPCs. |  Major | Runtime / Coordination | Kostas Kloudas | Kostas Kloudas |
| [FLINK-11671](https://issues.apache.org/jira/browse/FLINK-11671) | Expose SUSPEND/TERMINATE to CLI |  Major | Command Line Client | Kostas Kloudas | Kostas Kloudas |
| [FLINK-11670](https://issues.apache.org/jira/browse/FLINK-11670) | Add SUSPEND/TERMINATE calls to REST API |  Major | Runtime / REST | Kostas Kloudas | Kostas Kloudas |
| [FLINK-11474](https://issues.apache.org/jira/browse/FLINK-11474) | Add ReadableCatalog, ReadableWritableCatalog, and other related interfaces |  Major | Table SQL / API | Xuefu Zhang | Xuefu Zhang |
| [FLINK-11889](https://issues.apache.org/jira/browse/FLINK-11889) | Remove "stop" signal along with Stoppable interfaces |  Major | API / DataStream | Aljoscha Krettek | Kostas Kloudas |
| [FLINK-11431](https://issues.apache.org/jira/browse/FLINK-11431) | Upgrade Akka to 2.5 |  Minor | Build System, Runtime / Coordination | Matthieu Bonneviot | Chesnay Schepler |
| [FLINK-12226](https://issues.apache.org/jira/browse/FLINK-12226) | Update CLI docs about SUSPEND/TERMINATE |  Major | Documentation | Kostas Kloudas | Kostas Kloudas |
| [FLINK-12146](https://issues.apache.org/jira/browse/FLINK-12146) | Remove unregister task from NetworkEnvironment to simplify the interface of ShuffleService |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-11530](https://issues.apache.org/jira/browse/FLINK-11530) | Support multiple languages for the framework of flink docs |  Major | chinese-translation, Documentation | Jark Wu | Jark Wu |
| [FLINK-12029](https://issues.apache.org/jira/browse/FLINK-12029) | Add Column selections |  Major | Table SQL / API | sunjincheng | Hequn Cheng |
| [FLINK-10974](https://issues.apache.org/jira/browse/FLINK-10974) | Add FlatMap to TableAPI |  Major | Table SQL / API | sunjincheng | Dian Fu |
| [FLINK-11531](https://issues.apache.org/jira/browse/FLINK-11531) | Translate the Home Page of flink docs into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Congxian Qiu |
| [FLINK-12065](https://issues.apache.org/jira/browse/FLINK-12065) | E2E tests fail due to illegal-access warning on Java 9 |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10706](https://issues.apache.org/jira/browse/FLINK-10706) | Update the Flink Dashboard and its components |  Major | Runtime / Web Frontend | Fabian Wollert | Yadong Xie |
| [FLINK-10858](https://issues.apache.org/jira/browse/FLINK-10858) | Create Angular Scaffold in Flink Dashboard |  Major | Runtime / Web Frontend | Yadong Xie | Yadong Xie |
| [FLINK-12213](https://issues.apache.org/jira/browse/FLINK-12213) | Move network metrics setup into NetworkEnvironment |  Minor | Runtime / Metrics, Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-10870](https://issues.apache.org/jira/browse/FLINK-10870) | Reconstruct Flink Dashboard Overview Module to Angular 7.0 |  Major | Runtime / Web Frontend | Yadong Xie | Yadong Xie |
| [FLINK-11518](https://issues.apache.org/jira/browse/FLINK-11518) | Add partition related catalog APIs |  Major | Table SQL / API | Xuefu Zhang | Bowen Li |
| [FLINK-12324](https://issues.apache.org/jira/browse/FLINK-12324) | Remove legacy ActorGateway interface |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-12323](https://issues.apache.org/jira/browse/FLINK-12323) | Remove legacy ActorGateway implementations |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-12322](https://issues.apache.org/jira/browse/FLINK-12322) | Remove legacy ActorTaskManagerGateway |  Minor | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-12317](https://issues.apache.org/jira/browse/FLINK-12317) | BlockingCallMonitoringThreadPool fails on Java 9 |  Major | Runtime / Checkpointing, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12316](https://issues.apache.org/jira/browse/FLINK-12316) | JDBCFullTest fails on Java 9 |  Major | Connectors / JDBC, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11776](https://issues.apache.org/jira/browse/FLINK-11776) | Refactor to simplify the process of scheduleOrUpdateConsumers |  Minor | Runtime / Coordination | Zhijiang | Zhijiang |
| [FLINK-12131](https://issues.apache.org/jira/browse/FLINK-12131) | Resetting ExecutionVertex in region failover may cause inconsistency of IntermediateResult status |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-12344](https://issues.apache.org/jira/browse/FLINK-12344) | Remove legacy runtime messages |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-12230](https://issues.apache.org/jira/browse/FLINK-12230) | Remove getExecutionGraph() from JobMaster |  Major | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-12180](https://issues.apache.org/jira/browse/FLINK-12180) | Port ExecutionVertexCancelTest to new codebase |  Major | Runtime / Coordination, Tests | Zili Chen | leesf |
| [FLINK-8640](https://issues.apache.org/jira/browse/FLINK-8640) | Japicmp fails on java 9 |  Minor | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12199](https://issues.apache.org/jira/browse/FLINK-12199) | Refactor IOMetrics to not distinguish between local/remote in/out bytes |  Major | Runtime / Network | Andrey Zagrebin | Zhijiang |
| [FLINK-12238](https://issues.apache.org/jira/browse/FLINK-12238) | Support database related operations in GenericHiveMetastoreCatalog and setup flink-connector-hive module |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12203](https://issues.apache.org/jira/browse/FLINK-12203) | Refactor ResultPartitionManager to break tie with Task |  Major | Runtime / Network | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-12049](https://issues.apache.org/jira/browse/FLINK-12049) | ClassLoaderUtilsTest fails on Java 9 |  Major | Tests | Chesnay Schepler | leesf |
| [FLINK-11614](https://issues.apache.org/jira/browse/FLINK-11614) | Translate the "Configuring Dependencies" page into Chinese |  Major | chinese-translation, Documentation | Jark Wu | YangFei |
| [FLINK-11732](https://issues.apache.org/jira/browse/FLINK-11732) | Add a language switch to the sidebar for Flink documents |  Major | chinese-translation, Documentation | Jark Wu | Jark Wu |
| [FLINK-12360](https://issues.apache.org/jira/browse/FLINK-12360) | Translate "Jobs and Scheduling" Page into Chinese |  Major | chinese-translation, Documentation | Armstrong Nova | Armstrong Nova |
| [FLINK-12314](https://issues.apache.org/jira/browse/FLINK-12314) | Translate "Types Serializationn" into Chinese |  Major | chinese-translation, Documentation | YangFei | YangFei |
| [FLINK-11613](https://issues.apache.org/jira/browse/FLINK-11613) | Translate the "Project Template for Scala" page into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Tom Goong |
| [FLINK-12311](https://issues.apache.org/jira/browse/FLINK-12311) | Add base python framework and Add Scan, Projection, and Filter operator support |  Major | API / Python | sunjincheng | Wei Zhong |
| [FLINK-11633](https://issues.apache.org/jira/browse/FLINK-11633) | Translate "Working with State" into Chinese |  Major | chinese-translation, Documentation | Congxian Qiu | Congxian Qiu |
| [FLINK-12312](https://issues.apache.org/jira/browse/FLINK-12312) | Temporarily disable CLI command for rescaling |  Major | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-12253](https://issues.apache.org/jira/browse/FLINK-12253) | Setup a class hierarchy for the new logical type system |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-12404](https://issues.apache.org/jira/browse/FLINK-12404) | Translate the "Register a custom serializer for your Flink program" page into Chinese |  Major | chinese-translation, Documentation | YangFei | YangFei |
| [FLINK-11636](https://issues.apache.org/jira/browse/FLINK-11636) | Translate "State Schema Evolution" into Chinese |  Major | chinese-translation, Documentation | Congxian Qiu | YangFei |
| [FLINK-12232](https://issues.apache.org/jira/browse/FLINK-12232) | Support database related operations in HiveCatalog |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12239](https://issues.apache.org/jira/browse/FLINK-12239) | Support table related operations in GenericHiveMetastoreCatalog |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12266](https://issues.apache.org/jira/browse/FLINK-12266) | add NOTICE file for dependencies that are newly introduced in flink-connector-hive |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-11754](https://issues.apache.org/jira/browse/FLINK-11754) | Translate the "Roadmap" page into Chinese |  Major | chinese-translation, Project Website | Jark Wu | hanfei |
| [FLINK-10976](https://issues.apache.org/jira/browse/FLINK-10976) | Add Aggregate operator to Table API |  Major | Table SQL / API | sunjincheng | Hequn Cheng |
| [FLINK-12330](https://issues.apache.org/jira/browse/FLINK-12330) | Add integrated Tox for ensuring compatibility with the python2/3 version |  Major | API / Python | sunjincheng | sunjincheng |
| [FLINK-12240](https://issues.apache.org/jira/browse/FLINK-12240) | Support view related operations in GenericHiveMetastoreCatalog |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12326](https://issues.apache.org/jira/browse/FLINK-12326) | Add a basic test framework, just like the existing Java TableAPI, abstract some TestBase. |  Major | API / Python | sunjincheng | Dian Fu |
| [FLINK-12365](https://issues.apache.org/jira/browse/FLINK-12365) | Add stats related catalog APIs |  Major | Table SQL / API | Xuefu Zhang | Xuefu Zhang |
| [FLINK-12227](https://issues.apache.org/jira/browse/FLINK-12227) | Introduce SchedulingStrategy interface |  Major | Runtime / Coordination | Gary Yao | shuai.xu |
| [FLINK-12228](https://issues.apache.org/jira/browse/FLINK-12228) | Implement Eager Scheduling Strategy |  Major | Runtime / Coordination | Gary Yao | shuai.xu |
| [FLINK-12231](https://issues.apache.org/jira/browse/FLINK-12231) | Introduce Scheduler interface and adapt ExecutionGraph to it |  Major | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-11726](https://issues.apache.org/jira/browse/FLINK-11726) | Refactor the creation of ResultPartition and InputGate into NetworkEnvironment |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-12417](https://issues.apache.org/jira/browse/FLINK-12417) | Unify ReadableCatalog and ReadableWritableCatalog interfaces to Catalog interface |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12393](https://issues.apache.org/jira/browse/FLINK-12393) | Add the user-facing classes of the new type system |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-12454](https://issues.apache.org/jira/browse/FLINK-12454) | Add custom check options for lint-python.sh |  Major | API / Python | sunjincheng | sunjincheng |
| [FLINK-12369](https://issues.apache.org/jira/browse/FLINK-12369) | Implement a region failover strategy based on new FailoverStrategy interfaces |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-12434](https://issues.apache.org/jira/browse/FLINK-12434) | Replace listeners with CompletableFuture in InputGates |  Major | Runtime / Network | Piotr Nowojski | jack |
| [FLINK-12421](https://issues.apache.org/jira/browse/FLINK-12421) | Synchronize the latest documentation changes into Chinese documents |  Minor | chinese-translation, Documentation | Jark Wu | Jark Wu |
| [FLINK-12495](https://issues.apache.org/jira/browse/FLINK-12495) | Move PythonGatewayServer into flink-clients |  Major | API / Python, Command Line Client | sunjincheng | sunjincheng |
| [FLINK-12233](https://issues.apache.org/jira/browse/FLINK-12233) | Support table related operations in HiveCatalog |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-11610](https://issues.apache.org/jira/browse/FLINK-11610) | Translate the "Examples" page into Chinese |  Major | chinese-translation, Documentation | Jark Wu | LakeShen |
| [FLINK-12469](https://issues.apache.org/jira/browse/FLINK-12469) | Clean up catalog API on default/current DB |  Major | Table SQL / API | Xuefu Zhang | Xuefu Zhang |
| [FLINK-12505](https://issues.apache.org/jira/browse/FLINK-12505) | Unify database operations to HiveCatalogBase from its subclasses |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12234](https://issues.apache.org/jira/browse/FLINK-12234) | Support view related operations in HiveCatalog |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12370](https://issues.apache.org/jira/browse/FLINK-12370) | Integrated Travis for Python Table API |  Major | API / Python | sunjincheng | Wei Zhong |
| [FLINK-12463](https://issues.apache.org/jira/browse/FLINK-12463) | Deduplicate empty .out log file checks |  Major | Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12485](https://issues.apache.org/jira/browse/FLINK-12485) | Add a tool to check the user interface of Python Table API aligns with Java Table API. |  Major | API / Python | sunjincheng | sunjincheng |
| [FLINK-11710](https://issues.apache.org/jira/browse/FLINK-11710) | Refactor SimpleSlotProvider to TestingLogicalSlotProvider |  Major | Runtime / Coordination, Tests | Zili Chen | Zili Chen |
| [FLINK-12436](https://issues.apache.org/jira/browse/FLINK-12436) | Differentiate Flink database properties from Hive database properties |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12452](https://issues.apache.org/jira/browse/FLINK-12452) | alterTable() should ensure existing base table and the new one are of the same type |  Major | Connectors / Hive, Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12549](https://issues.apache.org/jira/browse/FLINK-12549) | include exceptions thrown by Hive metastore client in CatalogException in HiveCatalogBase |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12534](https://issues.apache.org/jira/browse/FLINK-12534) | Reduce the test cost for Python API |  Major | API / Python, Travis | sunjincheng | Wei Zhong |
| [FLINK-11051](https://issues.apache.org/jira/browse/FLINK-11051) | Add Bounded(Group Window) FlatAggregate operator to streaming Table API |  Major | Table SQL / API | sunjincheng | Hequn Cheng |
| [FLINK-12407](https://issues.apache.org/jira/browse/FLINK-12407) | Add all table operators align Java Table API |  Major | API / Python | sunjincheng | Wei Zhong |
| [FLINK-12560](https://issues.apache.org/jira/browse/FLINK-12560) | Documentation language build flags |  Major | Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-12580](https://issues.apache.org/jira/browse/FLINK-12580) | Rename GenericHiveMetastoreCatalogTest to HiveCatalogGenericMetadataTest, and HiveCatalogTest to HiveCatalogHiveMetadataTest |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12241](https://issues.apache.org/jira/browse/FLINK-12241) | Support Flink functions in catalog function APIs of HiveCatalog |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12439](https://issues.apache.org/jira/browse/FLINK-12439) | Add FileSystem Connector with CSV format support in Python Table API |  Major | API / Python | sunjincheng | Wei Zhong |
| [FLINK-12566](https://issues.apache.org/jira/browse/FLINK-12566) | Remove row interval type |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-12331](https://issues.apache.org/jira/browse/FLINK-12331) | Introduce partition/gate setup to decouple task registration with NetworkEnvironment |  Minor | Runtime / Network | Zhijiang | Andrey Zagrebin |
| [FLINK-12582](https://issues.apache.org/jira/browse/FLINK-12582) | Alteration APIs in catalogs should check existing object and new object are of the same class |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12411](https://issues.apache.org/jira/browse/FLINK-12411) | Fix failling e2e test test\_streaming\_sql.sh |  Major | Table SQL / Legacy Planner, Tests | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-12181](https://issues.apache.org/jira/browse/FLINK-12181) | Port ExecutionGraphRestartTest to new codebase |  Major | Runtime / Coordination, Tests | Zili Chen | leesf |
| [FLINK-12497](https://issues.apache.org/jira/browse/FLINK-12497) | Refactor the start method of ConnectionManager |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-12432](https://issues.apache.org/jira/browse/FLINK-12432) | Add SchedulerNG Stub Implementation |  Major | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-12127](https://issues.apache.org/jira/browse/FLINK-12127) | Move network related options to NetworkEnvironmentOptions |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-12458](https://issues.apache.org/jira/browse/FLINK-12458) | Introduce PartitionConnectionException for unreachable producer |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-6227](https://issues.apache.org/jira/browse/FLINK-6227) | Introduce the abstract PartitionException for downstream task failure |  Minor | Runtime / Coordination, Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-12236](https://issues.apache.org/jira/browse/FLINK-12236) | Support Hive function in HiveCatalog |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12235](https://issues.apache.org/jira/browse/FLINK-12235) | Support Hive partition in HiveCatalog |  Major | Table SQL / API | Bowen Li | Rui Li |
| [FLINK-12570](https://issues.apache.org/jira/browse/FLINK-12570) | Switch Task from ResultPartition to ResultPartitionWriter interface |  Major | Runtime / Network | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-11476](https://issues.apache.org/jira/browse/FLINK-11476) | Create CatalogManager to manage multiple catalogs and encapsulate Calcite schema |  Major | Table SQL / API | Xuefu Zhang | Dawid Wysakowicz |
| [FLINK-12408](https://issues.apache.org/jira/browse/FLINK-12408) | Support to define all kinds of types in Python API |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-12473](https://issues.apache.org/jira/browse/FLINK-12473) | Add the interface of ML pipeline and ML lib |  Major | Library / Machine Learning | Shaoxuan Wang | Luo Gen |
| [FLINK-12414](https://issues.apache.org/jira/browse/FLINK-12414) | Implement ExecutionGraph to SchedulingTopology Adapter |  Major | Runtime / Coordination | Gary Yao | BoWang |
| [FLINK-12267](https://issues.apache.org/jira/browse/FLINK-12267) | Port SimpleSlotTest to new code base |  Minor | Runtime / Coordination, Tests | leesf | leesf |
| [FLINK-12618](https://issues.apache.org/jira/browse/FLINK-12618) | jdk.tools exclusion interfering with swift-fs-hadoop build |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12327](https://issues.apache.org/jira/browse/FLINK-12327) | Add simplicity support for submitting Python Table API job in CliFrontend, i.e. \`flink run -py wordcount.py\` can be work(with simple test). |  Major | API / Python | sunjincheng | Huang Xingbo |
| [FLINK-12418](https://issues.apache.org/jira/browse/FLINK-12418) | Add input/output format and SerDeLib information when creating Hive table in HiveCatalog |  Major | Connectors / Hive | Bowen Li | Rui Li |
| [FLINK-9172](https://issues.apache.org/jira/browse/FLINK-9172) | Support catalogs in SQL-Client yaml config file |  Major | Table SQL / Client | Rong Rong | Bowen Li |
| [FLINK-12413](https://issues.apache.org/jira/browse/FLINK-12413) | Implement ExecutionFailureHandler |  Major | Runtime / Coordination | Gary Yao | Zhu Zhu |
| [FLINK-12530](https://issues.apache.org/jira/browse/FLINK-12530) | Move Task.inputGatesById to NetworkEnvironment |  Major | Runtime / Network | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-12440](https://issues.apache.org/jira/browse/FLINK-12440) | Add all connector support align Java Table API |  Major | API / Python | sunjincheng | Wei Zhong |
| [FLINK-12571](https://issues.apache.org/jira/browse/FLINK-12571) | Make NetworkEnvironment#start() return the binded data port |  Major | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-12676](https://issues.apache.org/jira/browse/FLINK-12676) | Add descriptor, validator, and factory for GenericInMemoryCatalog |  Major | Command Line Client, Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12678](https://issues.apache.org/jira/browse/FLINK-12678) | Add AbstractCatalog to manage the common catalog name and default database name for catalogs |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12679](https://issues.apache.org/jira/browse/FLINK-12679) | Support 'default-database' config for catalog entries in SQL CLI yaml file |  Major | Table SQL / Client | Bowen Li | Bowen Li |
| [FLINK-12564](https://issues.apache.org/jira/browse/FLINK-12564) | Remove getBufferProvider method from ResultPartitionWriter interface |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-12409](https://issues.apache.org/jira/browse/FLINK-12409) | Adds from\_elements in TableEnvironment |  Major | API / Python, Table SQL / API | Dian Fu | Dian Fu |
| [FLINK-12713](https://issues.apache.org/jira/browse/FLINK-12713) | deprecate descriptor, validator, and factory of ExternalCatalog |  Major | Table SQL / Client | Bowen Li | Bowen Li |
| [FLINK-12712](https://issues.apache.org/jira/browse/FLINK-12712) | deprecate ExternalCatalog and its subclasses and impls |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12310](https://issues.apache.org/jira/browse/FLINK-12310) | shade user facing common libraries in flink-connector-hive |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12568](https://issues.apache.org/jira/browse/FLINK-12568) | Implement OutputFormat to write Hive tables |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-12201](https://issues.apache.org/jira/browse/FLINK-12201) | Introduce InputGateWithMetrics in Task to increment numBytesIn metric |  Major | Runtime / Network | Andrey Zagrebin | Zhijiang |
| [FLINK-11249](https://issues.apache.org/jira/browse/FLINK-11249) | FlinkKafkaProducer011 can not be migrated to FlinkKafkaProducer |  Major | Connectors / Kafka | Piotr Nowojski | Piotr Nowojski |
| [FLINK-12726](https://issues.apache.org/jira/browse/FLINK-12726) | Fix ANY type serialization |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-12556](https://issues.apache.org/jira/browse/FLINK-12556) | Extend some end-to-end tests to run with custom (input) File System implementation |  Minor | Tests | Alex | Alex |
| [FLINK-12535](https://issues.apache.org/jira/browse/FLINK-12535) | Make CheckpointBarrierHandler non-blocking |  Major | Runtime / Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-12490](https://issues.apache.org/jira/browse/FLINK-12490) | Introduce NetworkInput class |  Major | Runtime / Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-12673](https://issues.apache.org/jira/browse/FLINK-12673) | Introduce NetworkEnvironment.getUnreleasedPartitions instead of using getResultPartitionManager |  Major | Runtime / Network | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-12715](https://issues.apache.org/jira/browse/FLINK-12715) | Hive-1.2.1 build is broken |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-12756](https://issues.apache.org/jira/browse/FLINK-12756) | migrate HiveCatalog from TypeInformation-based old type system to DataType-based new type system |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12718](https://issues.apache.org/jira/browse/FLINK-12718) | allow users to specify hive-site.xml location to configure hive metastore client in HiveCatalog |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12386](https://issues.apache.org/jira/browse/FLINK-12386) | Support mapping BinaryType, VarBinaryType, CharType, VarCharType, and DecimalType between Flink and Hive in HiveCatalog |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12643](https://issues.apache.org/jira/browse/FLINK-12643) | Implement ExecutionGraph to FailoverTopology Adapter |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-12617](https://issues.apache.org/jira/browse/FLINK-12617) | StandaloneJobClusterEntrypoint should default to random JobID for non-HA setups |  Major | Runtime / Configuration | Konstantin Knauf | Konstantin Knauf |
| [FLINK-12737](https://issues.apache.org/jira/browse/FLINK-12737) | Loosen Table class dependencies |  Major | Table SQL / API, Table SQL / Legacy Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-12677](https://issues.apache.org/jira/browse/FLINK-12677) | Add descriptor, validator, and factory for HiveCatalog |  Major | Table SQL / API, Table SQL / Client | Bowen Li | Bowen Li |
| [FLINK-12588](https://issues.apache.org/jira/browse/FLINK-12588) | Add TableSchema for Python Table API |  Major | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-12757](https://issues.apache.org/jira/browse/FLINK-12757) | Improves the Python word\_count example to use the descriptor API |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-12780](https://issues.apache.org/jira/browse/FLINK-12780) | use Flink's LogicalTypeRoot for type comparison in HiveTypeUtil |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12772](https://issues.apache.org/jira/browse/FLINK-12772) | Support mapping ARRAY, MAP, ROW (STRUCT) between Flink and Hive in HiveCatalog |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12787](https://issues.apache.org/jira/browse/FLINK-12787) | Allow to specify directory in option -pyfs |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-12583](https://issues.apache.org/jira/browse/FLINK-12583) | Add all format support align with the Java Table API |  Major | API / Python | sunjincheng | Wei Zhong |
| [FLINK-12401](https://issues.apache.org/jira/browse/FLINK-12401) | Support incremental emit under AccRetract mode for non-window streaming FlatAggregate on Table API |  Major | Table SQL / API | Hequn Cheng | Hequn Cheng |
| [FLINK-11876](https://issues.apache.org/jira/browse/FLINK-11876) | Introduce the new interfaces InputSelectable, BoundedOneInput and BoundedMultiInput |  Major | Runtime / Task | Haibo Sun | Haibo Sun |
| [FLINK-11877](https://issues.apache.org/jira/browse/FLINK-11877) | Implement the runtime handling of the InputSelectable interface |  Major | Runtime / Task | Haibo Sun | Haibo Sun |
| [FLINK-12727](https://issues.apache.org/jira/browse/FLINK-12727) | Make HiveTableOutputFormat support writing partitioned tables |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-12799](https://issues.apache.org/jira/browse/FLINK-12799) | Improve expression based TableSchema extraction from DataStream/DataSet |  Major | Table SQL / API, Table SQL / Legacy Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-12667](https://issues.apache.org/jira/browse/FLINK-12667) | Add JobID argument to TaskExecutorGateway#releasePartitions |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12372](https://issues.apache.org/jira/browse/FLINK-12372) | Implement ExecutionSlotAllocator |  Major | Runtime / Coordination | Gary Yao | shuai.xu |
| [FLINK-12608](https://issues.apache.org/jira/browse/FLINK-12608) | Add getVertex/ResultPartitionOrThrow(ExecutionVertexID/IntermediateResultPartitionID) to SchedulingTopology |  Minor | Runtime / Coordination | BoWang | BoWang |
| [FLINK-12788](https://issues.apache.org/jira/browse/FLINK-12788) | Add support to run a Python job-specific cluster on Kubernetes |  Major | API / Python, flink-docker | Dian Fu | Dian Fu |
| [FLINK-12827](https://issues.apache.org/jira/browse/FLINK-12827) | Extract Optimizer from Stream/BatchTableEnvImpl |  Major | Table SQL / Legacy Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-12831](https://issues.apache.org/jira/browse/FLINK-12831) | Split FunctionCatalog into Flink & Calcite specific parts |  Major | Table SQL / API, Table SQL / Legacy Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-12803](https://issues.apache.org/jira/browse/FLINK-12803) | Correct the package name for python API |  Major | API / Python | sunjincheng | Dian Fu |
| [FLINK-12716](https://issues.apache.org/jira/browse/FLINK-12716) | Add an interactive shell for Python Table API |  Major | API / Python | Dian Fu | Huang Xingbo |
| [FLINK-12719](https://issues.apache.org/jira/browse/FLINK-12719) | Add the Python catalog API |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-12647](https://issues.apache.org/jira/browse/FLINK-12647) | Make partition release on consumption optional |  Major | Runtime / Network | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12838](https://issues.apache.org/jira/browse/FLINK-12838) | Netty-fy the network SSL setup |  Major | Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-9816](https://issues.apache.org/jira/browse/FLINK-9816) | Support Netty configuration to enable an openSSL-based SslEngine |  Major | Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-12839](https://issues.apache.org/jira/browse/FLINK-12839) | Package flink-shaded-netty-tcnative-dynamic into opt/ |  Major | Build System, Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-12517](https://issues.apache.org/jira/browse/FLINK-12517) | Run network tests with dynamically-linked openSSL |  Major | Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-12446](https://issues.apache.org/jira/browse/FLINK-12446) | Add documentation how to enable openSSL |  Major | Documentation, Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-12518](https://issues.apache.org/jira/browse/FLINK-12518) | Run e2e tests with openSSL |  Major | Runtime / Network, Tests | Nico Kruber | Nico Kruber |
| [FLINK-12853](https://issues.apache.org/jira/browse/FLINK-12853) | Port TableSourceUtils#validateTableSource to api module |  Major | Table SQL / API, Table SQL / Legacy Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-12657](https://issues.apache.org/jira/browse/FLINK-12657) | Integrate Flink with Hive UDF |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12864](https://issues.apache.org/jira/browse/FLINK-12864) | Improves the performance of Python Table API test cases |  Major | API / Python, Tests | Dian Fu | Dian Fu |
| [FLINK-12867](https://issues.apache.org/jira/browse/FLINK-12867) | Add insert overwrite grammar as HIVE dialect |  Major | Table SQL / API | Danny Chen | Danny Chen |
| [FLINK-12711](https://issues.apache.org/jira/browse/FLINK-12711) | Separate function implementation and definition |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-12892](https://issues.apache.org/jira/browse/FLINK-12892) | serialize catalog table to properties for table discovery service |  Major | Connectors / Hive, Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12875](https://issues.apache.org/jira/browse/FLINK-12875) | support converting  input args of char, varchar, bytes, timestamp, date for Hive functions |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12626](https://issues.apache.org/jira/browse/FLINK-12626) | Client should not register table-source-sink twice in TableEnvironment |  Major | Table SQL / Client | Bowen Li | Bowen Li |
| [FLINK-12874](https://issues.apache.org/jira/browse/FLINK-12874) | Improve the semantics of zero length character strings |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-12720](https://issues.apache.org/jira/browse/FLINK-12720) | Add the Python Table API Sphinx docs |  Major | API / Python, Documentation | Dian Fu | Huang Xingbo |
| [FLINK-12862](https://issues.apache.org/jira/browse/FLINK-12862) | Remove legacy class QuarantineHandler and QuarantineMonitor |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-12861](https://issues.apache.org/jira/browse/FLINK-12861) | Remove legacy class ListeningBehaviour |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-12143](https://issues.apache.org/jira/browse/FLINK-12143) | Mechanism to ship plugin jars in the cluster |  Major | FileSystems, Runtime / Coordination | Stefan Richter | Alex |
| [FLINK-12257](https://issues.apache.org/jira/browse/FLINK-12257) | Convert CatalogTable to org.apache.calcite.schema.Table so that planner can use unified catalog APIs |  Major | Table SQL / API | Bowen Li | Dawid Wysakowicz |
| [FLINK-12843](https://issues.apache.org/jira/browse/FLINK-12843) | Refactor the pin logic in ReleaseOnConsumptionResultPartition |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-12258](https://issues.apache.org/jira/browse/FLINK-12258) | Decouple CatalogManager from Calcite |  Major | Table SQL / API | Bowen Li | Dawid Wysakowicz |
| [FLINK-12264](https://issues.apache.org/jira/browse/FLINK-12264) | Port ExecutionGraphTestUtils to new code base |  Minor | Runtime / Coordination, Tests | leesf | leesf |
| [FLINK-12268](https://issues.apache.org/jira/browse/FLINK-12268) | Port SharedSlotsTest to new code base |  Minor | Runtime / Coordination, Tests | leesf | leesf |
| [FLINK-12877](https://issues.apache.org/jira/browse/FLINK-12877) | Unify catalog database implementations |  Major | Connectors / Hive, Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12658](https://issues.apache.org/jira/browse/FLINK-12658) | Integrate Flink with Hive GenericUDF |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12849](https://issues.apache.org/jira/browse/FLINK-12849) | Add support for build Python Docs in Buildbot |  Major | API / Python, Build System | sunjincheng | sunjincheng |
| [FLINK-11758](https://issues.apache.org/jira/browse/FLINK-11758) | Update ContinuousFileProcessingMigrationTest for 1.8 |  Blocker | Connectors / FileSystem, Tests | vinoyang | vinoyang |
| [FLINK-11759](https://issues.apache.org/jira/browse/FLINK-11759) | Update AbstractNonKeyedOperatorRestoreTestBase for 1.8 |  Blocker | Tests | vinoyang | vinoyang |
| [FLINK-11760](https://issues.apache.org/jira/browse/FLINK-11760) | Update CEPMigrationTest for 1.8 |  Blocker | Library / CEP, Tests | vinoyang | vinoyang |
| [FLINK-11761](https://issues.apache.org/jira/browse/FLINK-11761) | Update FlinkKafkaConsumerBaseMigrationTest for 1.8 |  Blocker | Connectors / Kafka, Tests | vinoyang | vinoyang |
| [FLINK-11762](https://issues.apache.org/jira/browse/FLINK-11762) | Update WindowOperatorMigrationTest for 1.8 |  Blocker | API / DataStream, Tests | vinoyang | vinoyang |
| [FLINK-11763](https://issues.apache.org/jira/browse/FLINK-11763) | Update AbstractKeyedOperatorRestoreTestBase for 1.8 |  Blocker | API / DataStream, Tests | vinoyang | vinoyang |
| [FLINK-11764](https://issues.apache.org/jira/browse/FLINK-11764) | Update BucketingSinkMigrationTest for Flink 1.8 |  Blocker | Connectors / FileSystem, Tests | vinoyang | vinoyang |
| [FLINK-11765](https://issues.apache.org/jira/browse/FLINK-11765) | Update Java / Scala StatefulJobWBroadcastStateMigrationITCase for 1.8 |  Blocker | API / DataStream, Tests | vinoyang | vinoyang |
| [FLINK-11766](https://issues.apache.org/jira/browse/FLINK-11766) | Update Java / Scala StatefulJobSavepointMigrationITCase for 1.8 |  Blocker | Runtime / Checkpointing, Tests | vinoyang | vinoyang |
| [FLINK-11770](https://issues.apache.org/jira/browse/FLINK-11770) | Update FlinkKinesisConsumerMigrationTest for 1.8 |  Blocker | Connectors / Kinesis, Tests | vinoyang | vinoyang |
| [FLINK-12659](https://issues.apache.org/jira/browse/FLINK-12659) | Integrate Flink with Hive GenericUDTF |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12664](https://issues.apache.org/jira/browse/FLINK-12664) | Implement TableSink to write Hive tables |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-12585](https://issues.apache.org/jira/browse/FLINK-12585) | Align Stream/BatchTableEnvironment with JAVA Table API |  Major | API / Python | sunjincheng | Wei Zhong |
| [FLINK-12899](https://issues.apache.org/jira/browse/FLINK-12899) | Introduce a resolved expression with data type |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-11612](https://issues.apache.org/jira/browse/FLINK-11612) | Translate the "Project Template for Java" page into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Jasper Yue |
| [FLINK-12917](https://issues.apache.org/jira/browse/FLINK-12917) | support complex type of array, map, struct for Hive functions |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-11606](https://issues.apache.org/jira/browse/FLINK-11606) | Translate the "Distributed Runtime Environment" page into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Kevin Liu |
| [FLINK-11560](https://issues.apache.org/jira/browse/FLINK-11560) | Translate "Flink Applications" page into Chinese |  Major | chinese-translation, Project Website | Jark Wu | Brian Zhou |
| [FLINK-11878](https://issues.apache.org/jira/browse/FLINK-11878) | Implement the runtime handling of BoundedOneInput and BoundedMultiInput |  Major | Runtime / Task | Haibo Sun | Haibo Sun |
| [FLINK-12842](https://issues.apache.org/jira/browse/FLINK-12842) | Fix invalid check released state during ResultPartition#createSubpartitionView |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-12555](https://issues.apache.org/jira/browse/FLINK-12555) | Introduce an encapsulated metric group layout for shuffle API and deprecate old one |  Major | Runtime / Network | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-12964](https://issues.apache.org/jira/browse/FLINK-12964) | add commented-out defaults to sql client yaml file to make it easier for users to adopt |  Major | Table SQL / Client | Bowen Li | Bowen Li |
| [FLINK-12890](https://issues.apache.org/jira/browse/FLINK-12890) | Add partition lifecycle related Shuffle API |  Major | Runtime / Coordination | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-12967](https://issues.apache.org/jira/browse/FLINK-12967) | Change the input selection switching in StreamTwoInputSelectableProcessor#checkFinished to invoking the nextSelection method of the stream operator |  Major | . | Haibo Sun | Haibo Sun |
| [FLINK-12913](https://issues.apache.org/jira/browse/FLINK-12913) | Remove legacy InstanceManager and InstanceManagerTest |  Major | Runtime / Coordination | leesf | leesf |
| [FLINK-12933](https://issues.apache.org/jira/browse/FLINK-12933) | support "use catalog" and "use database" in SQL CLI |  Major | Table SQL / Client | Bowen Li | Bowen Li |
| [FLINK-12760](https://issues.apache.org/jira/browse/FLINK-12760) | Implement ExecutionGraph to InputsLocationsRetriever Adapter |  Major | Runtime / Coordination | shuai.xu | shuai.xu |
| [FLINK-12918](https://issues.apache.org/jira/browse/FLINK-12918) | unify GenericCatalogTable, HiveCatalogTable and AbstractCatalogTable into CatalogTableImpl |  Major | Connectors / Hive, Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12732](https://issues.apache.org/jira/browse/FLINK-12732) | Add savepoint reader for consuming partitioned operator state |  Major | API / DataStream, Runtime / State Backends | Seth Wiesman | Seth Wiesman |
| [FLINK-12729](https://issues.apache.org/jira/browse/FLINK-12729) | Add savepoint reader for consuming non-partitioned operator state |  Major | API / DataStream, Runtime / State Backends | Seth Wiesman | Seth Wiesman |
| [FLINK-12821](https://issues.apache.org/jira/browse/FLINK-12821) | Fix the bug that fix time quantifier can not be the last element of a pattern |  Major | Library / CEP, Table SQL / API | Dian Fu | Dian Fu |
| [FLINK-12924](https://issues.apache.org/jira/browse/FLINK-12924) | Introduce basic type inference interfaces |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-12612](https://issues.apache.org/jira/browse/FLINK-12612) | Track stored partitions on the TM |  Major | Runtime / Coordination, Runtime / Network | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12960](https://issues.apache.org/jira/browse/FLINK-12960) | Introduce ShuffleDescriptor#ReleaseType and ShuffleDescriptor#getSupportedReleaseTypes |  Major | Runtime / Coordination | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-12914](https://issues.apache.org/jira/browse/FLINK-12914) | Remove legacy InstanceListener |  Major | Runtime / Coordination | leesf | leesf |
| [FLINK-12993](https://issues.apache.org/jira/browse/FLINK-12993) | Rework forceReleaseOnConsumptionFlag to be JM internal concept |  Major | Runtime / Network | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12988](https://issues.apache.org/jira/browse/FLINK-12988) | restore AbstractCatalogTable as parent for CatalogTableImpl and ConnectorCatalogTable |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12932](https://issues.apache.org/jira/browse/FLINK-12932) | support 'show catalogs' and 'show databases' functionalities end-2-end in TableEnvironment and SQL CLI |  Major | Table SQL / API, Table SQL / Client | Bowen Li | Bowen Li |
| [FLINK-12891](https://issues.apache.org/jira/browse/FLINK-12891) | remove hadoop/hive writable from boundaries of Hive functions and Flink |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12609](https://issues.apache.org/jira/browse/FLINK-12609) | Align the Python data types with Java |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-12722](https://issues.apache.org/jira/browse/FLINK-12722) | Adds Python Table API tutorial |  Major | Documentation | Dian Fu | Dian Fu |
| [FLINK-12980](https://issues.apache.org/jira/browse/FLINK-12980) | Getting Started - Add Top-Level Section to Existing Documentation |  Major | . | Konstantin Knauf | Konstantin Knauf |
| [FLINK-12965](https://issues.apache.org/jira/browse/FLINK-12965) | unify catalog view implementations |  Major | Connectors / Hive, Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-13006](https://issues.apache.org/jira/browse/FLINK-13006) | remove GenericUDTFReplicateRows from GenericUDTFTest because Hive 1.2.1 doesn't have it |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12660](https://issues.apache.org/jira/browse/FLINK-12660) | Integrate Flink with Hive UDAF |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12962](https://issues.apache.org/jira/browse/FLINK-12962) | Allows pyflink to be pip installed |  Major | API / Python | Dian Fu | Wei Zhong |
| [FLINK-12954](https://issues.apache.org/jira/browse/FLINK-12954) | Supports create(drop) view grammar for sql parser |  Major | Table SQL / API | Danny Chen | Danny Chen |
| [FLINK-12882](https://issues.apache.org/jira/browse/FLINK-12882) | Remove ExecutionAttemptID argument from ResultPartitionFactory#create |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-12615](https://issues.apache.org/jira/browse/FLINK-12615) | Track allocated partitions on the JM |  Major | Runtime / Coordination, Runtime / Network | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12616](https://issues.apache.org/jira/browse/FLINK-12616) | Maintain connection between JM\<-\>TM until all partitions have been released |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12641](https://issues.apache.org/jira/browse/FLINK-12641) | Release all partitions on job termination |  Major | Runtime / Coordination, Runtime / Network | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12986](https://issues.apache.org/jira/browse/FLINK-12986) | Add alternative implementations for BoundedBlockingSubpartition to address stability issues |  Major | Runtime / Network | Stephan Ewen | Stephan Ewen |
| [FLINK-12881](https://issues.apache.org/jira/browse/FLINK-12881) | Add more functionalities for ML Params and ParamInfo class |  Major | Library / Machine Learning | Xu Yang | Xu Yang |
| [FLINK-12947](https://issues.apache.org/jira/browse/FLINK-12947) | Translate "Twitter Connector" page into Chinese |  Minor | chinese-translation, Documentation | Jark Wu | Aloys Zhang |
| [FLINK-12897](https://issues.apache.org/jira/browse/FLINK-12897) | Improve the Python Table API docs by adding more examples |  Major | API / Python, Documentation | Dian Fu | Wei Zhong |
| [FLINK-12997](https://issues.apache.org/jira/browse/FLINK-12997) | Release partitions for reset vertices |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12777](https://issues.apache.org/jira/browse/FLINK-12777) | Support CheckpointBarrierHandler in StreamTwoInputSelectableProcessor |  Major | Runtime / Task | Piotr Nowojski | Piotr Nowojski |
| [FLINK-13005](https://issues.apache.org/jira/browse/FLINK-13005) | HiveCatalog should not add 'flink.is\_generic' key for Hive table |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12627](https://issues.apache.org/jira/browse/FLINK-12627) | Document how to configure and use catalogs in SQL CLI |  Major | Connectors / Hive, Documentation, Table SQL / Client | Bowen Li | Bowen Li |
| [FLINK-11147](https://issues.apache.org/jira/browse/FLINK-11147) | Add documentation for TableAggregate Function |  Major | Table SQL / API | Hequn Cheng | Hequn Cheng |
| [FLINK-13028](https://issues.apache.org/jira/browse/FLINK-13028) | Move expression resolver to flink-table-api-java |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-13029](https://issues.apache.org/jira/browse/FLINK-13029) | Remove expressionBridge from QueryOperations factories |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-12735](https://issues.apache.org/jira/browse/FLINK-12735) | Make shuffle environment implementation independent with IOManager |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-12883](https://issues.apache.org/jira/browse/FLINK-12883) | Add elaborate partition release logic |  Critical | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-13021](https://issues.apache.org/jira/browse/FLINK-13021) | unify catalog partition implementations |  Major | Connectors / Hive, Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-13046](https://issues.apache.org/jira/browse/FLINK-13046) | rename hive-site-path to hive-conf-dir to be consistent with standard name in Hive |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-13048](https://issues.apache.org/jira/browse/FLINK-13048) | support decimal in Flink's integration with Hive user defined functions |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-13022](https://issues.apache.org/jira/browse/FLINK-13022) | unify catalog function implementations |  Major | Connectors / Hive, Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12841](https://issues.apache.org/jira/browse/FLINK-12841) | Unify catalog meta-objects implementations |  Major | Connectors / Hive, Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-12945](https://issues.apache.org/jira/browse/FLINK-12945) | Translate "RabbitMQ Connector" page into Chinese |  Minor | chinese-translation, Documentation | Jark Wu | Aloys Zhang |
| [FLINK-12938](https://issues.apache.org/jira/browse/FLINK-12938) | Translate "Streaming Connectors" page into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Aloys Zhang |
| [FLINK-12946](https://issues.apache.org/jira/browse/FLINK-12946) | Translate "Apache NiFi Connector" page into Chinese |  Minor | chinese-translation, Documentation | Jark Wu | Aloys Zhang |
| [FLINK-12943](https://issues.apache.org/jira/browse/FLINK-12943) | Translate "HDFS Connector" page into Chinese |  Minor | chinese-translation, Documentation | Jark Wu | Aloys Zhang |
| [FLINK-12944](https://issues.apache.org/jira/browse/FLINK-12944) | Translate "Streaming File Sink" page into Chinese |  Minor | chinese-translation, Documentation | Jark Wu | Aloys Zhang |
| [FLINK-12876](https://issues.apache.org/jira/browse/FLINK-12876) | Add an adapter of region failover NG for legacy scheduler |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-12833](https://issues.apache.org/jira/browse/FLINK-12833) | Add Klaviyo to Chinese PoweredBy page |  Major | chinese-translation, Project Website | Fabian Hueske | yelun |
| [FLINK-11638](https://issues.apache.org/jira/browse/FLINK-11638) | Translate "Savepoints" page into Chinese |  Major | chinese-translation, Documentation | Congxian Qiu | Forward Xu |
| [FLINK-12963](https://issues.apache.org/jira/browse/FLINK-12963) | Add savepoint writer for bootstrapping new savepoints |  Major | API / DataStream | Seth Wiesman | Seth Wiesman |
| [FLINK-11637](https://issues.apache.org/jira/browse/FLINK-11637) | Translate "Checkpoints" page into Chinese |  Major | chinese-translation, Documentation | Congxian Qiu | yelun |
| [FLINK-12934](https://issues.apache.org/jira/browse/FLINK-12934) | add hadoop dependencies as 'flink-shaded-hadoop-2-uber' for flink-connector-hive to connect to remote hive metastore service |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-13066](https://issues.apache.org/jira/browse/FLINK-13066) | append hive-site.xml to path of Hive conf dir |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-13087](https://issues.apache.org/jira/browse/FLINK-13087) | Add group window Aggregate operator to Table API |  Major | Table SQL / API | Hequn Cheng | Hequn Cheng |
| [FLINK-12767](https://issues.apache.org/jira/browse/FLINK-12767) | Support user defined connectors/format |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-12597](https://issues.apache.org/jira/browse/FLINK-12597) | Remove the legacy flink-libraries/flink-ml |  Major | Library / Machine Learning | Shaoxuan Wang | Luo Gen |
| [FLINK-12758](https://issues.apache.org/jira/browse/FLINK-12758) | Add flink-ml-lib module |  Major | Library / Machine Learning | Luo Gen | Luo Gen |
| [FLINK-12744](https://issues.apache.org/jira/browse/FLINK-12744) | ML common parameters |  Major | Library / Machine Learning | Xu Yang | Xu Yang |
| [FLINK-12237](https://issues.apache.org/jira/browse/FLINK-12237) | Support Hive table stats related operations in HiveCatalog |  Major | Table SQL / API | Bowen Li | Terry Wang |
| [FLINK-11082](https://issues.apache.org/jira/browse/FLINK-11082) | Fix the calculation of backlog in PipelinedSubpartition |  Major | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-12968](https://issues.apache.org/jira/browse/FLINK-12968) | Add a casting utility |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-12652](https://issues.apache.org/jira/browse/FLINK-12652) | Glossary - Add Glossary to Concepts Section of Documentation |  Major | Documentation | Konstantin Knauf | Konstantin Knauf |
| [FLINK-12812](https://issues.apache.org/jira/browse/FLINK-12812) | Set resource profiles for task slots |  Major | Runtime / Coordination | Xintong Song | Xintong Song |
| [FLINK-13135](https://issues.apache.org/jira/browse/FLINK-13135) | unify configs for meta-objects in HiveCatalog |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-13134](https://issues.apache.org/jira/browse/FLINK-13134) | override default hadoop version from 2.4.1 to 2.7.5 in flink-connector-hive |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-13013](https://issues.apache.org/jira/browse/FLINK-13013) | Make sure that SingleInputGate can always request partitions |  Critical | Runtime / Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-13128](https://issues.apache.org/jira/browse/FLINK-13128) | make HiveGenericUDAF expose accumulator type in order to create its corresponding AggregateFunctionDefinition |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12763](https://issues.apache.org/jira/browse/FLINK-12763) | Fail job immediately if tasks’ resource needs can not be satisfied. |  Major | Runtime / Coordination | Xintong Song | Xintong Song |
| [FLINK-13173](https://issues.apache.org/jira/browse/FLINK-13173) | Only run openSSL tests if desired |  Critical | Runtime / Network, Tests, Travis | Nico Kruber | Nico Kruber |
| [FLINK-13106](https://issues.apache.org/jira/browse/FLINK-13106) | Translate "Parallel Execution" page into Chinese |  Major | chinese-translation, Documentation | yelun | yelun |
| [FLINK-12644](https://issues.apache.org/jira/browse/FLINK-12644) | Setup Java 9 cron jobs |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13187](https://issues.apache.org/jira/browse/FLINK-13187) | Expose batch slot request via new scheduling mode |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-13133](https://issues.apache.org/jira/browse/FLINK-13133) | Correct error in PubSub documentation |  Minor | Connectors / Google Cloud PubSub | Richard Deurwaarder | Richard Deurwaarder |
| [FLINK-11452](https://issues.apache.org/jira/browse/FLINK-11452) | Make the table planner pluggable |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-13264](https://issues.apache.org/jira/browse/FLINK-13264) | Remove planner class clashes for planner type inference lookups |  Blocker | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-13069](https://issues.apache.org/jira/browse/FLINK-13069) | HiveTableSink should implement OverwritableTableSink |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-12277](https://issues.apache.org/jira/browse/FLINK-12277) | Add documentation for catalog |  Major | Documentation, Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-13024](https://issues.apache.org/jira/browse/FLINK-13024) | integrate FunctionCatalog with CatalogManager |  Major | API / DataSet, Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-13176](https://issues.apache.org/jira/browse/FLINK-13176) | remember current catalog and database in SQL CLI SessionContext |  Major | Table SQL / Client | Bowen Li | Bowen Li |
| [FLINK-13268](https://issues.apache.org/jira/browse/FLINK-13268) | Revert SqlSplittableAggFunction to support making two planners available in one jar |  Blocker | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-13223](https://issues.apache.org/jira/browse/FLINK-13223) | Set jobmanager.execution.failover-strategy to region in default flink-conf.yaml |  Blocker | Runtime / Coordination | Gary Yao | Chesnay Schepler |
| [FLINK-13294](https://issues.apache.org/jira/browse/FLINK-13294) | disable LocalExecutorITCase.testUseCatalogAndUseDatabase |  Major | Table SQL / Client | Bowen Li | Bowen Li |
| [FLINK-13296](https://issues.apache.org/jira/browse/FLINK-13296) | FunctionCatalog.lookupFunction() should check in memory functions if the target function doesn't exist in catalog |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-13280](https://issues.apache.org/jira/browse/FLINK-13280) | Revert blink changes in DateTimeUtils, and keep it same as flink version. |  Critical | Table SQL / Planner | Zhenghua Gao | Zhenghua Gao |
| [FLINK-13287](https://issues.apache.org/jira/browse/FLINK-13287) | Port ExistingField to api-java and use new Expression in FieldComputer |  Major | Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-13315](https://issues.apache.org/jira/browse/FLINK-13315) | Port wmstrategies to api-java-bridge |  Major | Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-13078](https://issues.apache.org/jira/browse/FLINK-13078) | Add a type parser utility |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-13312](https://issues.apache.org/jira/browse/FLINK-13312) | move tests for data type mappings between Flink and Hive into its own test class |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-12723](https://issues.apache.org/jira/browse/FLINK-12723) | Adds a wiki page about setting up a Python Table API development environment |  Major | API / Python | Dian Fu | sunjincheng |
| [FLINK-13269](https://issues.apache.org/jira/browse/FLINK-13269) | copy RelDecorrelator & FlinkFilterJoinRule to flink planner to fix CALCITE-3169 & CALCITE-3170 |  Blocker | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-13302](https://issues.apache.org/jira/browse/FLINK-13302) | DateTimeUtils.unixDateCeil returns the same value as unixDateFloor does |  Major | Table SQL / Legacy Planner | Zhenghua Gao | Zhenghua Gao |
| [FLINK-13286](https://issues.apache.org/jira/browse/FLINK-13286) | Port SchemaValidator and others validators to table-common |  Blocker | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-13094](https://issues.apache.org/jira/browse/FLINK-13094) | Provide an easy way to read timers using the State Processor API |  Major | API / DataStream, Runtime / State Backends | Tzu-Li (Gordon) Tai | Seth Wiesman |
| [FLINK-11768](https://issues.apache.org/jira/browse/FLINK-11768) | Update TypeSerializerSnapshotMigrationITCase for Flink 1.8 |  Blocker | API / Type Serialization System, Tests | vinoyang | Tzu-Li (Gordon) Tai |
| [FLINK-13313](https://issues.apache.org/jira/browse/FLINK-13313) | create CatalogTableBuilder to support building CatalogTable from descriptors |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-13276](https://issues.apache.org/jira/browse/FLINK-13276) | write documentation and quickstart for Flink-Hive integration |  Major | Connectors / Hive, Documentation | Bowen Li | Bowen Li |
| [FLINK-13206](https://issues.apache.org/jira/browse/FLINK-13206) | modify 'use database' syntax in SQL CLI to be consistant with standard sql |  Major | Table SQL / Client | Terry Wang | Terry Wang |
| [FLINK-13328](https://issues.apache.org/jira/browse/FLINK-13328) | add IT case for reading and writing generic table metadata via HiveCatalog |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-13262](https://issues.apache.org/jira/browse/FLINK-13262) | Add documentation for the new Table & SQL API type system |  Blocker | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-13145](https://issues.apache.org/jira/browse/FLINK-13145) | Run HA dataset E2E test with new RestartPipelinedRegionStrategy |  Blocker | Runtime / Coordination, Tests | Gary Yao | Gary Yao |
| [FLINK-13266](https://issues.apache.org/jira/browse/FLINK-13266) | Relocate blink planner classes to avoid class clashes |  Blocker | Table SQL / Planner | Jark Wu | godfrey he |
| [FLINK-13341](https://issues.apache.org/jira/browse/FLINK-13341) | Connector Sinks should implement consumeDataStream instead of emitDataStream |  Blocker | Connectors / Common, Table SQL / Ecosystem | chenqi | chenqi |
| [FLINK-13169](https://issues.apache.org/jira/browse/FLINK-13169) | IT test for fine-grained recovery (task executor failures) |  Critical | Runtime / Coordination | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-13055](https://issues.apache.org/jira/browse/FLINK-13055) | Leverage JM side partition state to improve region failover experience |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-13402](https://issues.apache.org/jira/browse/FLINK-13402) | RelOptCluster's constructor can not be accessed when connector dependent both flink-planner and blink-planner |  Blocker | Table SQL / Legacy Planner | Jingsong Lee | godfrey he |
| [FLINK-13403](https://issues.apache.org/jira/browse/FLINK-13403) | Correct package name after relocation |  Blocker | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-13409](https://issues.apache.org/jira/browse/FLINK-13409) | Supported java UDFs in python API |  Critical | API / Python | sunjincheng | Dian Fu |
| [FLINK-13222](https://issues.apache.org/jira/browse/FLINK-13222) | Add documentation for AdaptedRestartPipelinedRegionStrategyNG |  Blocker | Runtime / Coordination | Gary Yao | Zhu Zhu |
| [FLINK-13289](https://issues.apache.org/jira/browse/FLINK-13289) | Blink-planner should setKeyFields to upsert table sink |  Blocker | Connectors / JDBC, Table SQL / Planner | LakeShen | Jingsong Lee |
| [FLINK-13407](https://issues.apache.org/jira/browse/FLINK-13407) | Fix thread visibility of checked SlotManager.failUnfulfillableRequest in StandaloneResourceManagerTest |  Blocker | Runtime / Coordination | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-12765](https://issues.apache.org/jira/browse/FLINK-12765) | Bookkeeping of available resources of allocated slots in SlotPool. |  Major | Runtime / Coordination | Xintong Song | Yun Gao |
| [FLINK-13393](https://issues.apache.org/jira/browse/FLINK-13393) | Blink-planner not support generic TableSource |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-13391](https://issues.apache.org/jira/browse/FLINK-13391) | Blink-planner should not invoke deprecated getReturnType of TableSource |  Critical | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-13325](https://issues.apache.org/jira/browse/FLINK-13325) | Add test case for FLINK-13249 |  Blocker | Tests | Stefan Richter | Stefan Richter |
| [FLINK-13012](https://issues.apache.org/jira/browse/FLINK-13012) | Handle default partition name of Hive table |  Blocker | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-13458](https://issues.apache.org/jira/browse/FLINK-13458) | ThreadLocalCache clashes for Blink planner |  Blocker | Table SQL / Runtime | Timo Walther | Timo Walther |
| [FLINK-13350](https://issues.apache.org/jira/browse/FLINK-13350) | Mark useCatalog & useDatabase as Experimental for 1.9 release |  Blocker | Table SQL / API | Timo Walther | Dawid Wysakowicz |
| [FLINK-13408](https://issues.apache.org/jira/browse/FLINK-13408) | Schedule StandaloneResourceManager.setFailUnfulfillableRequest whenever the leadership is acquired |  Blocker | Runtime / Coordination | Andrey Zagrebin | Xintong Song |
| [FLINK-13440](https://issues.apache.org/jira/browse/FLINK-13440) | Add test that fails job when sync savepoint is discarded. |  Blocker | Runtime / Checkpointing | Kostas Kloudas | Kostas Kloudas |
| [FLINK-12998](https://issues.apache.org/jira/browse/FLINK-12998) | Document Plugins mechanism |  Blocker | FileSystems | Piotr Nowojski | Alex |
| [FLINK-13434](https://issues.apache.org/jira/browse/FLINK-13434) | Add E2E test for stop-with-savepoint |  Blocker | Runtime / State Backends, Tests | Till Rohrmann | Kostas Kloudas |
| [FLINK-13376](https://issues.apache.org/jira/browse/FLINK-13376) | FileInputFormat can not be used in batch mode of blink-planner |  Blocker | Connectors / FileSystem, Runtime / Task, Table SQL / Runtime | Jingsong Lee | Biao Liu |
| [FLINK-13435](https://issues.apache.org/jira/browse/FLINK-13435) | Remove ShuffleDescriptor.ReleaseType and make release semantics fixed per partition type |  Blocker | Runtime / Coordination, Runtime / Network | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-12704](https://issues.apache.org/jira/browse/FLINK-12704) | Enable the configuration of using blink planner |  Blocker | API / Python | sunjincheng | Wei Zhong |
| [FLINK-12966](https://issues.apache.org/jira/browse/FLINK-12966) | finalize package name of Hive table source/sink |  Major | Connectors / Hive | Bowen Li | Terry Wang |
| [FLINK-13290](https://issues.apache.org/jira/browse/FLINK-13290) | HBaseITCase bug using blink-runner: SinkCodeGenerator should not compare row type field names |  Blocker | Connectors / HBase | Jark Wu | Jark Wu |
| [FLINK-13543](https://issues.apache.org/jira/browse/FLINK-13543) | Enable reuse forks for integration tests in blink planner |  Major | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-13335](https://issues.apache.org/jira/browse/FLINK-13335) | Bring the SQL CREATE TABLE DDL closer to FLIP-37 |  Blocker | Table SQL / API | Timo Walther | Danny Chen |
| [FLINK-13190](https://issues.apache.org/jira/browse/FLINK-13190) | add test to verify partition pruning for HiveTableSource |  Major | Connectors / Hive | Terry Wang | Terry Wang |
| [FLINK-13119](https://issues.apache.org/jira/browse/FLINK-13119) | Add blink table config to documentation |  Critical | Documentation, Table SQL / Planner | XuPingyong | XuPingyong |
| [FLINK-13192](https://issues.apache.org/jira/browse/FLINK-13192) | Add tests for different Hive table formats |  Critical | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-13404](https://issues.apache.org/jira/browse/FLINK-13404) | Port csv factories & descriptors from flink-table-planner to flink-csv |  Critical | Table SQL / Legacy Planner | godfrey he | godfrey he |
| [FLINK-13529](https://issues.apache.org/jira/browse/FLINK-13529) | Verify and correct agg function's semantic for Blink planner |  Critical | Table SQL / Planner | Jing Zhang | Jing Zhang |
| [FLINK-13495](https://issues.apache.org/jira/browse/FLINK-13495) | blink-planner should support decimal precision to table source |  Critical | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-13561](https://issues.apache.org/jira/browse/FLINK-13561) | Verify and correct time function's semantic for Blink planner |  Major | Table SQL / Planner | Jingsong Lee | Jark Wu |
| [FLINK-13523](https://issues.apache.org/jira/browse/FLINK-13523) | Verify and correct arithmetic function's semantic for Blink planner |  Critical | Table SQL / Planner | Zhenghua Gao | Zhenghua Gao |
| [FLINK-13547](https://issues.apache.org/jira/browse/FLINK-13547) | Verify and correct string function's semantic for Blink planner |  Critical | Table SQL / Planner | Zhenghua Gao | Zhenghua Gao |
| [FLINK-13045](https://issues.apache.org/jira/browse/FLINK-13045) | Move Scala expression DSL to flink-table-api-scala |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-13231](https://issues.apache.org/jira/browse/FLINK-13231) | Add a ratelimiter to pubsub source |  Minor | Connectors / Google Cloud PubSub | Richard Deurwaarder | Richard Deurwaarder |
| [FLINK-11489](https://issues.apache.org/jira/browse/FLINK-11489) | Add an initial Blink SQL streaming runtime |  Major | Table SQL / Runtime | Timo Walther | Jark Wu |
| [FLINK-11490](https://issues.apache.org/jira/browse/FLINK-11490) | Add an initial Blink SQL batch runtime |  Major | Table SQL / Runtime | Timo Walther | Jingsong Lee |
| [FLINK-11488](https://issues.apache.org/jira/browse/FLINK-11488) | Add a basic Blink planner framework |  Major | Table SQL / Planner | Timo Walther | godfrey he |
| [FLINK-12405](https://issues.apache.org/jira/browse/FLINK-12405) | Introduce BLOCKING\_PERSISTENT result partition type |  Major | API / DataSet | Ruidong Li | Ruidong Li |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-11516](https://issues.apache.org/jira/browse/FLINK-11516) | Port and move some Descriptor classes to flink-table-common |  Major | Table SQL / API | Dian Fu | Dian Fu |
| [FLINK-10076](https://issues.apache.org/jira/browse/FLINK-10076) | Upgrade Calcite dependency to 1.18 |  Major | Table SQL / Planner | Shuyi Chen | Rong Rong |
| [FLINK-11994](https://issues.apache.org/jira/browse/FLINK-11994) | Introduce TableImpl and remove Table in flink-table-planner-blink |  Major | . | Jark Wu | Jark Wu |
| [FLINK-11988](https://issues.apache.org/jira/browse/FLINK-11988) | Remove legacy MockNetworkEnvironment |  Minor | Runtime / Network, Tests | Zhijiang | Zhijiang |
| [FLINK-12017](https://issues.apache.org/jira/browse/FLINK-12017) |  Introduce Rank and Deduplicate operators for blink streaming runtime |  Major | Table SQL / Planner | Jing Zhang | Jing Zhang |
| [FLINK-12204](https://issues.apache.org/jira/browse/FLINK-12204) | Improve JDBCOutputFormat ClassCastException |  Major | Connectors / JDBC | Fabian Hueske | Hequn Cheng |
| [FLINK-12208](https://issues.apache.org/jira/browse/FLINK-12208) | Introduce Sort & TemporalSort & SortLimit & Limit operators for blink streaming runtime |  Major | Table SQL / Runtime | Jing Zhang | Jing Zhang |
| [FLINK-12307](https://issues.apache.org/jira/browse/FLINK-12307) | Support translation from StreamExecWindowJoin to StreamTransformation. |  Major | Table SQL / API | Jing Zhang | Jing Zhang |
| [FLINK-12460](https://issues.apache.org/jira/browse/FLINK-12460) | Change taskmanager.tmp.dirs to io.tmp.dirs in configuration docs |  Minor | Documentation, Runtime / Configuration | Fabian Hueske | Till Rohrmann |
| [FLINK-12496](https://issues.apache.org/jira/browse/FLINK-12496) | Support translation from StreamExecGroupWindowAggregate to StreamTransformation. |  Major | Table SQL / Runtime | Jing Zhang | Jing Zhang |
| [FLINK-12801](https://issues.apache.org/jira/browse/FLINK-12801) | Set parallelism for batch SQL |  Major | Table SQL / Planner | XuPingyong | xupingyong |
| [FLINK-12824](https://issues.apache.org/jira/browse/FLINK-12824) | set parallelism for stream SQL |  Major | Table SQL / Planner | XuPingyong | xupingyong |
| [FLINK-12806](https://issues.apache.org/jira/browse/FLINK-12806) | Remove beta feature remark from the Universal Kafka connector |  Major | Connectors / Kafka | Piotr Nowojski | vinoyang |
| [FLINK-12904](https://issues.apache.org/jira/browse/FLINK-12904) | Remove TableSource#getTableStats() interface |  Major | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-12911](https://issues.apache.org/jira/browse/FLINK-12911) | Port AppendStreamTableSink, UpsertStreamTableSink, RetractStreamTableSink to flink-api-java-bridge |  Major | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-13003](https://issues.apache.org/jira/browse/FLINK-13003) | Support Temporal TableFunction Join in processing time and event time |  Major | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-12977](https://issues.apache.org/jira/browse/FLINK-12977) | Port CsvTableSource and CsvTableSink to api-java-bridge |  Major | Table SQL / API | Jark Wu | Luo Gen |
| [FLINK-12978](https://issues.apache.org/jira/browse/FLINK-12978) | Support LookupableTableSource for CsvTableSource |  Major | Table SQL / API | Jark Wu | Luo Gen |
| [FLINK-13040](https://issues.apache.org/jira/browse/FLINK-13040) | improve blink planner configurations |  Major | Table SQL / API | XuPingyong | xupingyong |
| [FLINK-13125](https://issues.apache.org/jira/browse/FLINK-13125) | Add note to PubSub connector documentation about beta status |  Major | Connectors / Google Cloud PubSub | Robert Metzger | Robert Metzger |
| [FLINK-13157](https://issues.apache.org/jira/browse/FLINK-13157) | reeanble unit test HiveInputFormatTest.testReadComplextDataTypeFromHiveInputFormat() and resolve conflicts |  Major | Connectors / Hive | Bowen Li | Terry Wang |
| [FLINK-13107](https://issues.apache.org/jira/browse/FLINK-13107) | Copy TableApi IT and UT to Blink planner |  Major | Table SQL / Planner | Jing Zhang | Jing Zhang |
| [FLINK-13208](https://issues.apache.org/jira/browse/FLINK-13208) | Update Notice file for upgrading calcite to 1.20 |  Major | Table SQL / Legacy Planner, Table SQL / Planner | Kurt Young | Kurt Young |
| [FLINK-13121](https://issues.apache.org/jira/browse/FLINK-13121) | Set batch/streaming properties to StreamGraph in blink table planner |  Major | Table SQL / Planner | XuPingyong | Xu Pingyong |
| [FLINK-13321](https://issues.apache.org/jira/browse/FLINK-13321) | In Blink Planner, Join a udf with constant arguments or without argument in TableAPI query does not work now |  Major | Table SQL / Planner | Jing Zhang | Jing Zhang |
| [FLINK-13368](https://issues.apache.org/jira/browse/FLINK-13368) | Add Configuration Class for Python Table API to Align with Java |  Major | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-13337](https://issues.apache.org/jira/browse/FLINK-13337) | Do not need to backup and restore streamEnv config in BatchExecutor |  Major | Table SQL / Planner | XuPingyong | XuPingyong |
| [FLINK-13447](https://issues.apache.org/jira/browse/FLINK-13447) | Change default planner to legacy planner instead of any one |  Blocker | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-13399](https://issues.apache.org/jira/browse/FLINK-13399) | Create two separate uber jars for each planner |  Blocker | Table SQL / Legacy Planner, Table SQL / Planner | Jark Wu | Dawid Wysakowicz |
| [FLINK-13546](https://issues.apache.org/jira/browse/FLINK-13546) | Run TPC-H E2E test on travis cron job |  Blocker | Travis | Jark Wu | Caizhi Weng |
| [FLINK-13267](https://issues.apache.org/jira/browse/FLINK-13267) | Making it possible to have both flink planner and blink planner in classpath |  Critical | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-13433](https://issues.apache.org/jira/browse/FLINK-13433) | Do not fetch data from LookupableTableSource if the JoinKey in left side of LookupJoin contains null value |  Minor | Table SQL / Planner | Jing Zhang | Jing Zhang |
| [FLINK-13521](https://issues.apache.org/jira/browse/FLINK-13521) | Allow setting configuration in SQL CLI |  Critical | Table SQL / Client | Jark Wu | Caizhi Weng |
| [FLINK-13509](https://issues.apache.org/jira/browse/FLINK-13509) | Forbidden \`IS NOT DISTINCT FROM \`(or an expanded version) in LookupJoin |  Minor | Table SQL / Planner | Jing Zhang | Jing Zhang |
| [FLINK-13608](https://issues.apache.org/jira/browse/FLINK-13608) | Update upgrade compatibility table (docs/ops/upgrading.md) for 1.9.0 |  Blocker | Documentation | Till Rohrmann | Tzu-Li (Gordon) Tai |
| [FLINK-13522](https://issues.apache.org/jira/browse/FLINK-13522) | Verify and correct builtin function's semantic for Blink planner |  Critical | Table SQL / Planner | Zhenghua Gao |  |
| [FLINK-13712](https://issues.apache.org/jira/browse/FLINK-13712) | Add 1.9.0 release notes to documentation |  Blocker | Documentation | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |


