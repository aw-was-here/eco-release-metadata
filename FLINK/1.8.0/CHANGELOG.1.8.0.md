
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

## Release 1.8.0 - 2019-04-09



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9555](https://issues.apache.org/jira/browse/FLINK-9555) | Support table api in scala shell |  Major | Scala Shell | Jeff Zhang | Shuiqiang Chen |
| [FLINK-10461](https://issues.apache.org/jira/browse/FLINK-10461) | Speed up RocksDB download file procedure when restoring |  Major | Runtime / State Backends | Congxian Qiu | Congxian Qiu |
| [FLINK-4582](https://issues.apache.org/jira/browse/FLINK-4582) | Allow FlinkKinesisConsumer to adapt for AWS DynamoDB Streams |  Major | Connectors / Common, Connectors / Kinesis | Tzu-Li (Gordon) Tai | Ying Xu |
| [FLINK-10845](https://issues.apache.org/jira/browse/FLINK-10845) | Support DISTINCT aggregates for batch |  Major | Table SQL / API | Timo Walther | xueyu |
| [FLINK-10822](https://issues.apache.org/jira/browse/FLINK-10822) | Configurable MetricQueryService interval |  Major | Runtime / Metrics | Chesnay Schepler | Till Rohrmann |
| [FLINK-10473](https://issues.apache.org/jira/browse/FLINK-10473) | State TTL incremental cleanup using Heap backend key iterator |  Major | Runtime / State Backends | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-11296](https://issues.apache.org/jira/browse/FLINK-11296) | Support truncate in TableAPI & SQL |  Major | Table SQL / API | Forward Xu | Forward Xu |
| [FLINK-9083](https://issues.apache.org/jira/browse/FLINK-9083) | Add async backpressure support to Cassandra Connector |  Minor | Connectors / Cassandra | Jacob Park | Jacob Park |
| [FLINK-11445](https://issues.apache.org/jira/browse/FLINK-11445) | Deprecate static methods in TableEnvironments |  Major | Table SQL / API | Timo Walther | Hequn Cheng |
| [FLINK-11382](https://issues.apache.org/jira/browse/FLINK-11382) | Disable MetricFetcher if interval is configured to 0 |  Major | Runtime / Metrics | Chesnay Schepler | leesf |
| [FLINK-7155](https://issues.apache.org/jira/browse/FLINK-7155) | Add Influxdb metrics reporter |  Major | Runtime / Metrics | Patrick Lucas | Patrick Lucas |
| [FLINK-10457](https://issues.apache.org/jira/browse/FLINK-10457) | Support SequenceFile for StreamingFileSink |  Major | Connectors / Common, Connectors / FileSystem | Jihyun Cho | Kostas Kloudas |
| [FLINK-11081](https://issues.apache.org/jira/browse/FLINK-11081) | Support binding port range for REST server |  Major | Runtime / REST | Till Rohrmann | vinoyang |
| [FLINK-11447](https://issues.apache.org/jira/browse/FLINK-11447) | Deprecate "new Table(TableEnvironment, String)" |  Blocker | Table SQL / API | Timo Walther | Dian Fu |
| [FLINK-11533](https://issues.apache.org/jira/browse/FLINK-11533) | Retrieve job class name from JAR manifest in ClassPathJobGraphRetriever |  Minor | Runtime / Coordination | Ufuk Celebi | Ufuk Celebi |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10799](https://issues.apache.org/jira/browse/FLINK-10799) | Set -Xms when starting JobManager in YARN mode |  Minor | Deployment / YARN | xinchun | xinchun |
| [FLINK-10691](https://issues.apache.org/jira/browse/FLINK-10691) | StreamSQL E2E test relies on hadoop |  Major | Table SQL / API, Test Infrastructure | Chesnay Schepler | Hequn Cheng |
| [FLINK-10144](https://issues.apache.org/jira/browse/FLINK-10144) | Remove unused import in TaskManagerMessages |  Trivial | . | dalongliu | dalongliu |
| [FLINK-10924](https://issues.apache.org/jira/browse/FLINK-10924) | readTextFile methods javadoc incorrect in regards to used charset |  Major | API / DataSet, API / DataStream, Documentation | Chesnay Schepler | Zili Chen |
| [FLINK-10951](https://issues.apache.org/jira/browse/FLINK-10951) | Disable enforcing of YARN container virtual memory limits in tests |  Critical | Tests | Gary Yao | Gary Yao |
| [FLINK-11015](https://issues.apache.org/jira/browse/FLINK-11015) | Remove deprecated code for format-specific Kafka table connectors |  Major | Connectors / Kafka | vinoyang | vinoyang |
| [FLINK-6756](https://issues.apache.org/jira/browse/FLINK-6756) | Provide RichAsyncFunction to Scala API suite |  Major | API / DataStream | Andrea Spina | Andrea Spina |
| [FLINK-10986](https://issues.apache.org/jira/browse/FLINK-10986) | Jepsen: Deploy Kafka Broker on DB Nodes |  Major | Connectors / Kafka | Gary Yao | Gary Yao |
| [FLINK-10985](https://issues.apache.org/jira/browse/FLINK-10985) | Enable multiple Job Submission in distributed Tests |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-10743](https://issues.apache.org/jira/browse/FLINK-10743) | Use 0 processExitCode for ApplicationStatus.CANCELED |  Minor | Deployment / Kubernetes, Deployment / Mesos, Deployment / YARN, Runtime / Coordination | Ufuk Celebi | Ufuk Celebi |
| [FLINK-11090](https://issues.apache.org/jira/browse/FLINK-11090) | Remove unused parameter in WindowedStream.aggregate() |  Major | API / DataStream | Hequn Cheng | Hequn Cheng |
| [FLINK-11029](https://issues.apache.org/jira/browse/FLINK-11029) | Incorrect parameter in Working with state doc |  Minor | Documentation | Yangze Guo | Yangze Guo |
| [FLINK-10359](https://issues.apache.org/jira/browse/FLINK-10359) | Scala example in DataSet docs is broken |  Major | Documentation | Fabian Hueske | vinoyang |
| [FLINK-11080](https://issues.apache.org/jira/browse/FLINK-11080) | Define flink-connector-elasticsearch6 uber-jar dependencies via artifactSet |  Major | Build System, Connectors / ElasticSearch, Table SQL / Client | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10566](https://issues.apache.org/jira/browse/FLINK-10566) | Flink Planning is exponential in the number of stages |  Major | API / DataSet | Robert Bradshaw | Maximilian Michels |
| [FLINK-10543](https://issues.apache.org/jira/browse/FLINK-10543) | Leverage efficient timer deletion in relational operators |  Minor | Table SQL / API | Fabian Hueske | Hequn Cheng |
| [FLINK-11101](https://issues.apache.org/jira/browse/FLINK-11101) | Use enforcer-plugin to ban openjdk dependency in Presto S3 FileSystem module |  Minor | Build System, FileSystems | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11168](https://issues.apache.org/jira/browse/FLINK-11168) | LargePlanTest times out on Travis |  Major | Tests | Chesnay Schepler | Maximilian Michels |
| [FLINK-11048](https://issues.apache.org/jira/browse/FLINK-11048) | Ability to programmatically execute streaming pipeline with savepoint restore |  Minor | API / DataStream | Thomas Weise | Thomas Weise |
| [FLINK-11142](https://issues.apache.org/jira/browse/FLINK-11142) | Undefined behavior in the conversion from DataStream/DataSet to Table |  Minor | Table SQL / API | Yangze Guo | Hequn Cheng |
| [FLINK-11233](https://issues.apache.org/jira/browse/FLINK-11233) | Small typo in documentation - Jobs in Flink correspond "do" dataflow graphs. |  Minor | Documentation | Shuangjiang Li |  |
| [FLINK-11217](https://issues.apache.org/jira/browse/FLINK-11217) | Add back-to-top buttons |  Critical | Documentation | leesf | leesf |
| [FLINK-11163](https://issues.apache.org/jira/browse/FLINK-11163) | RestClusterClientTest#testSendIsNotRetriableIfHttpNotFound with BindException |  Critical | Tests | Zili Chen | Chesnay Schepler |
| [FLINK-11026](https://issues.apache.org/jira/browse/FLINK-11026) | Rework creation of sql-client connector/format jars |  Major | Build System, Table SQL / Client | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11124](https://issues.apache.org/jira/browse/FLINK-11124) | Add private[flink] to TemporalTableFunction.create() |  Major | Table SQL / API | Hequn Cheng | Hequn Cheng |
| [FLINK-11165](https://issues.apache.org/jira/browse/FLINK-11165) | Log entire TaskManagerLocation instead of just the hostname |  Minor | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-11189](https://issues.apache.org/jira/browse/FLINK-11189) | Remove documentation for deprecated readSequenceFile method |  Minor | API / DataSet, Documentation | shin chen | leesf |
| [FLINK-11262](https://issues.apache.org/jira/browse/FLINK-11262) | Bump jython-standalone to 2.7.1 |  Major | API / Python, Build System | Fokko Driesprong | Fokko Driesprong |
| [FLINK-10326](https://issues.apache.org/jira/browse/FLINK-10326) | Simplify ZooKeeperSubmittedJobGraphStore constructor |  Minor | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10436](https://issues.apache.org/jira/browse/FLINK-10436) | Example config uses deprecated key jobmanager.rpc.address |  Major | Deployment / Scripts | Ufuk Celebi | Zili Chen |
| [FLINK-11278](https://issues.apache.org/jira/browse/FLINK-11278) | Add documentation for TableAPI&SQL in scala-shell |  Major | Documentation, Scala Shell | sunjincheng | Wei Zhong |
| [FLINK-10866](https://issues.apache.org/jira/browse/FLINK-10866) | Queryable state can prevent cluster from starting |  Critical | Runtime / Task | Till Rohrmann | BoWang |
| [FLINK-11272](https://issues.apache.org/jira/browse/FLINK-11272) | Support for parsing multiple --yarnship parameters |  Major | Deployment / YARN, Runtime / Coordination | leesf | leesf |
| [FLINK-11134](https://issues.apache.org/jira/browse/FLINK-11134) | Invalid REST API request should not log the full exception in Flink logs |  Minor | Runtime / REST | Mark Cho | Chesnay Schepler |
| [FLINK-10509](https://issues.apache.org/jira/browse/FLINK-10509) | Drop flink-storm |  Major | Legacy Components / Storm Compatibility | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11306](https://issues.apache.org/jira/browse/FLINK-11306) | Bump derby from 10.10.1.1 to 10.14.2.0 |  Major | API / DataSet, Build System | Fokko Driesprong | Fokko Driesprong |
| [FLINK-11304](https://issues.apache.org/jira/browse/FLINK-11304) | Typo in time attributes doc |  Trivial | Documentation | Jaryzhen | Jaryzhen |
| [FLINK-11331](https://issues.apache.org/jira/browse/FLINK-11331) | Fix errors in tableApi.md and functions.md |  Major | Table SQL / API | Hequn Cheng | Hequn Cheng |
| [FLINK-9222](https://issues.apache.org/jira/browse/FLINK-9222) | Add a Gradle Quickstart |  Critical | Project Website, Quickstarts | Nico Kruber | Nico Kruber |
| [FLINK-11174](https://issues.apache.org/jira/browse/FLINK-11174) | Support unicode for Prometheus label values |  Minor | Runtime / Metrics | Fan weiwen | Zili Chen |
| [FLINK-10945](https://issues.apache.org/jira/browse/FLINK-10945) | Avoid resource deadlocks for finite stream jobs when resources are limited |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-11295](https://issues.apache.org/jira/browse/FLINK-11295) | Rename configuration options of queryable state from query.x to queryable-state.x |  Major | Runtime / Configuration, Runtime / Queryable State | BoWang | BoWang |
| [FLINK-11289](https://issues.apache.org/jira/browse/FLINK-11289) | Rework example module structure to account for licensing |  Major | Build System, Examples | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11069](https://issues.apache.org/jira/browse/FLINK-11069) | Remove FutureUtil |  Minor | . | Till Rohrmann | Zili Chen |
| [FLINK-10817](https://issues.apache.org/jira/browse/FLINK-10817) | Upgrade presto dependency to support path-style access |  Major | . | Adam Lamar | Aljoscha Krettek |
| [FLINK-8739](https://issues.apache.org/jira/browse/FLINK-8739) | Optimize runtime support for distinct filter |  Major | Table SQL / API | Rong Rong | Dian Fu |
| [FLINK-11256](https://issues.apache.org/jira/browse/FLINK-11256) | Referencing StreamNode objects directly in StreamEdge causes the sizes of JobGraph and TDD to become unnecessarily large |  Major | . | Haibo Sun | Haibo Sun |
| [FLINK-10251](https://issues.apache.org/jira/browse/FLINK-10251) | Handle oversized response messages in AkkaRpcActor |  Major | Runtime / Coordination | Till Rohrmann | vinoyang |
| [FLINK-11414](https://issues.apache.org/jira/browse/FLINK-11414) | Introduce JobMasterService interface for the JobManagerRunner |  Minor | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-11411](https://issues.apache.org/jira/browse/FLINK-11411) | Number of failover regions number not correctly logged by RestartPipelinedRegionStrategy |  Minor | Runtime / Coordination | BoWang | BoWang |
| [FLINK-11293](https://issues.apache.org/jira/browse/FLINK-11293) | KafkaITCase.testConcurrentProducerConsumerTopology times out on Travis |  Critical | Connectors / Kafka, Tests | Till Rohrmann | Dawid Wysakowicz |
| [FLINK-11266](https://issues.apache.org/jira/browse/FLINK-11266) | Only release hadoop-free Flink |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10910](https://issues.apache.org/jira/browse/FLINK-10910) | Harden Kubernetes e2e test |  Critical | Test Infrastructure | Till Rohrmann | Dawid Wysakowicz |
| [FLINK-11415](https://issues.apache.org/jira/browse/FLINK-11415) | Introduce JobMasterServiceFactor for JobManagerRunner |  Minor | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-11469](https://issues.apache.org/jira/browse/FLINK-11469) | Fix example in "Tuning Checkpoints and Large State" documentation |  Minor | Documentation, Runtime / State Backends | shengjk1 |  |
| [FLINK-11461](https://issues.apache.org/jira/browse/FLINK-11461) | Remove unused MockRecordWriter |  Minor | Runtime / Network, Tests | Zhijiang | Zhijiang |
| [FLINK-11460](https://issues.apache.org/jira/browse/FLINK-11460) | Remove unused AcknowledgeStreamMockEnvironment |  Minor | Runtime / Task, Tests | Zhijiang | Zhijiang |
| [FLINK-11322](https://issues.apache.org/jira/browse/FLINK-11322) | Use try-with-resource for FlinkKafkaConsumer010 |  Major | Connectors / Kafka | Fokko Driesprong | Fokko Driesprong |
| [FLINK-11473](https://issues.apache.org/jira/browse/FLINK-11473) | Clarify Documenation on Latency Tracking |  Minor | Documentation, Runtime / Metrics | Konstantin Knauf | Konstantin Knauf |
| [FLINK-11423](https://issues.apache.org/jira/browse/FLINK-11423) | Keep exception message thrown from the main class |  Major | Command Line Client | Lavkesh Lahngir | Lavkesh Lahngir |
| [FLINK-11079](https://issues.apache.org/jira/browse/FLINK-11079) | Skip deployment for flnk-storm-examples |  Major | Build System, Legacy Components / Storm Compatibility | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11207](https://issues.apache.org/jira/browse/FLINK-11207) | Update Apache commons-compress from 1.4.1 to 1.18 |  Blocker | Build System | Nico Kruber | Nico Kruber |
| [FLINK-11023](https://issues.apache.org/jira/browse/FLINK-11023) | Update LICENSE and NOTICE files for flink-connectors |  Critical | Connectors / Common | Till Rohrmann | Chesnay Schepler |
| [FLINK-11074](https://issues.apache.org/jira/browse/FLINK-11074) | Improve the harness test to make it possible test with state backend |  Major | Table SQL / API | Dian Fu | Dian Fu |
| [FLINK-11125](https://issues.apache.org/jira/browse/FLINK-11125) | Remove unused imports |  Major | Table SQL / API, Tests | Hequn Cheng | Hequn Cheng |
| [FLINK-11422](https://issues.apache.org/jira/browse/FLINK-11422) | Add builder for creating StreamTask mocks |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-11451](https://issues.apache.org/jira/browse/FLINK-11451) | Move \*QueryConfig and TableDescriptor to flink-table-api-java |  Major | Table SQL / API | Timo Walther | xueyu |
| [FLINK-11450](https://issues.apache.org/jira/browse/FLINK-11450) | Port and move TableSource and TableSink to flink-table-common |  Major | Table SQL / API | Timo Walther | Dian Fu |
| [FLINK-11522](https://issues.apache.org/jira/browse/FLINK-11522) | Deprecate ExternalCatalogTable.builder() |  Major | Table SQL / API | Dian Fu | Dian Fu |
| [FLINK-11521](https://issues.apache.org/jira/browse/FLINK-11521) | Make RetryingRegistration timeouts configurable |  Minor | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-11314](https://issues.apache.org/jira/browse/FLINK-11314) | Reuse RocksDBWriteBatchWrapper in the flush method of RocksDBMapState |  Minor | . | yuqi | yuqi |
| [FLINK-11315](https://issues.apache.org/jira/browse/FLINK-11315) | Make magic number in KvStateSerializer a constant value |  Minor | . | yuqi | yuqi |
| [FLINK-10422](https://issues.apache.org/jira/browse/FLINK-10422) | Follow AWS specs in Kinesis Consumer |  Major | Connectors / Kinesis | eugen yushin | eugen yushin |
| [FLINK-11570](https://issues.apache.org/jira/browse/FLINK-11570) | Refactor RestClusterClient savepoint triggering tests |  Major | Runtime / REST, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11288](https://issues.apache.org/jira/browse/FLINK-11288) | Add separate flink-ml module for building fat jar |  Major | Build System, Library / Machine Learning | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11551](https://issues.apache.org/jira/browse/FLINK-11551) | Allow RpcEndpoints to execute asynchronous stop operations |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10079](https://issues.apache.org/jira/browse/FLINK-10079) | Support external sink table in INSERT INTO statement |  Major | Table SQL / API | Jun Zhang | Jun Zhang |
| [FLINK-11297](https://issues.apache.org/jira/browse/FLINK-11297) | Add a doc link of jobmanager ha details |  Minor | Documentation | Yiqun Lin |  |
| [FLINK-9776](https://issues.apache.org/jira/browse/FLINK-9776) | Interrupt TaskThread only while in User/Operator code |  Major | Runtime / Task | Stephan Ewen | Stephan Ewen |
| [FLINK-10493](https://issues.apache.org/jira/browse/FLINK-10493) | Macro generated CaseClassSerializer considered harmful |  Major | API / Scala, API / Type Serialization System, Runtime / State Backends | Elias Levy | Igal Shilman |
| [FLINK-11089](https://issues.apache.org/jira/browse/FLINK-11089) | Log removal of filecache directory |  Minor | Runtime / Task | liuzhaokun | liuzhaokun |
| [FLINK-11626](https://issues.apache.org/jira/browse/FLINK-11626) | Bump flink-shaded version to 6.0 |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11628](https://issues.apache.org/jira/browse/FLINK-11628) | Cache maven on travis |  Major | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11154](https://issues.apache.org/jira/browse/FLINK-11154) | Upgrade Netty to 4.1.32 |  Major | Build System, Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-11539](https://issues.apache.org/jira/browse/FLINK-11539) | Add TypeSerializerSnapshot for TraversableSerializer |  Major | API / Type Serialization System | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-11629](https://issues.apache.org/jira/browse/FLINK-11629) | Stop AkkaRpcActor immediately after onStop has finished |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-11663](https://issues.apache.org/jira/browse/FLINK-11663) | Remove control flow break point from Execution#releaseAssignedResource |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-11292](https://issues.apache.org/jira/browse/FLINK-11292) | Document how to use the new CompositeTypeSerializerSnapshot |  Major | API / Type Serialization System, Documentation | Tzu-Li (Gordon) Tai | Yun Tang |
| [FLINK-11655](https://issues.apache.org/jira/browse/FLINK-11655) | Remove \`Serializable\` interface from \`CallAsync\` |  Minor | Runtime / Coordination | Benchao Li | Benchao Li |
| [FLINK-11041](https://issues.apache.org/jira/browse/FLINK-11041) | ReinterpretDataStreamAsKeyedStreamITCase.testReinterpretAsKeyedStream failed on Travis |  Critical | Tests | Till Rohrmann | Stefan Richter |
| [FLINK-11684](https://issues.apache.org/jira/browse/FLINK-11684) | Checkstyle allows multiple empty lines around static imports |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11686](https://issues.apache.org/jira/browse/FLINK-11686) | Enforce spaces around lambdas |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11688](https://issues.apache.org/jira/browse/FLINK-11688) | Enforce whitespace around TYPE\_EXTENSION\_AND |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11327](https://issues.apache.org/jira/browse/FLINK-11327) | Migrate all remaining Flink serializers' snapshot classes to the new TypeSerializerSnapshot / TypeSerializerSchemaCompatibility abstractions |  Critical | API / Type Serialization System, Runtime / State Backends | Tzu-Li (Gordon) Tai |  |
| [FLINK-6768](https://issues.apache.org/jira/browse/FLINK-6768) | Quadratic/Inefficient field lookup in PojoSerializer#ensureCompatibility |  Minor | API / Type Serialization System, Runtime / State Backends | Till Rohrmann | Tzu-Li (Gordon) Tai |
| [FLINK-11651](https://issues.apache.org/jira/browse/FLINK-11651) | Upgrade Jepsen to 0.1.11 in flink-jepsen |  Major | Test Infrastructure | Gary Yao | Gary Yao |
| [FLINK-11656](https://issues.apache.org/jira/browse/FLINK-11656) | Remove redundant test path in WordCountMapredITCase |  Minor | API / DataSet, Connectors / Hadoop Compatibility, Tests | vinoyang | TANG Wen-hui |
| [FLINK-11657](https://issues.apache.org/jira/browse/FLINK-11657) | Remove redundant test path in WordCountMapreduceITCase |  Minor | API / DataSet, Connectors / Hadoop Compatibility, Tests | vinoyang | TANG Wen-hui |
| [FLINK-11618](https://issues.apache.org/jira/browse/FLINK-11618) | Refactor operator state repartition mechanism |  Major | Runtime / State Backends | Yun Tang | Yun Tang |
| [FLINK-11341](https://issues.apache.org/jira/browse/FLINK-11341) | Correct javadoc of AkkaUtils#getAkkaConfig |  Trivial | Runtime / Task | Gongwenzhou |  |
| [FLINK-9803](https://issues.apache.org/jira/browse/FLINK-9803) | Drop canEqual() from TypeSerializer |  Major | API / Type Serialization System | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-11073](https://issues.apache.org/jira/browse/FLINK-11073) | Make serializers immutable / provide option TypeSerializerSchemaCompatibility.compatibleWithReconfiguredSerializer |  Critical | API / Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-11744](https://issues.apache.org/jira/browse/FLINK-11744) | Provide stable/final toHexString for AbstractID |  Major | . | Stefan Richter | Stefan Richter |
| [FLINK-11185](https://issues.apache.org/jira/browse/FLINK-11185) | StreamSourceOperatorWatermarksTest failed with InterruptedException |  Critical | . | Biao Liu | Kostas Kloudas |
| [FLINK-11728](https://issues.apache.org/jira/browse/FLINK-11728) | Deprecate CalciteConfig temporarily |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-11718](https://issues.apache.org/jira/browse/FLINK-11718) | Add onStart method to RpcEndpoint which is run in the actor's main thread |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-11752](https://issues.apache.org/jira/browse/FLINK-11752) | Move flink-python to opt |  Minor | API / Python, Build System | Ufuk Celebi | Ufuk Celebi |
| [FLINK-11777](https://issues.apache.org/jira/browse/FLINK-11777) | Fix broken links in hadoop-compatibility documentation |  Major | Connectors / Hadoop Compatibility, Documentation | sunjincheng |  |
| [FLINK-11740](https://issues.apache.org/jira/browse/FLINK-11740) | Ill-defined CompositeTypeSerializerSnapshot class signature |  Major | API / Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-11741](https://issues.apache.org/jira/browse/FLINK-11741) | Remove implementations of deprecated TypeSerializer#ensureCompatibility() |  Major | API / Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-11755](https://issues.apache.org/jira/browse/FLINK-11755) | Remove ensureCompatibility method from TypeSerializer abstraction |  Blocker | API / Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-11406](https://issues.apache.org/jira/browse/FLINK-11406) | Return TypeSerializerSchemaCompatibility.incompatible() when arity of nested serializers don't match in CompositeTypeSerializerSnapshot's compatibility check |  Major | API / Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-11753](https://issues.apache.org/jira/browse/FLINK-11753) | Add utils for serialization compatibility tests |  Minor | Test Infrastructure | Igal Shilman | Igal Shilman |
| [FLINK-10776](https://issues.apache.org/jira/browse/FLINK-10776) | Update migration tests for Flink 1.7 |  Blocker | Runtime / State Backends, Tests | Tzu-Li (Gordon) Tai |  |
| [FLINK-11780](https://issues.apache.org/jira/browse/FLINK-11780) | Change version scheme of Hadoop-based modules to conform to SNAPSHOT guidelines |  Blocker | Release System | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-11785](https://issues.apache.org/jira/browse/FLINK-11785) | Replace case class Null(type) in Table API |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-11632](https://issues.apache.org/jira/browse/FLINK-11632) | Make TaskManager automatic bind address picking more explicit (by default) and more configurable |  Minor | Runtime / Coordination, Runtime / Network | Alex | Alex |
| [FLINK-11617](https://issues.apache.org/jira/browse/FLINK-11617) | Kinesis Connector getRecords() failure logging is misleading |  Major | Connectors / Kinesis | Jamie Grier | Jamie Grier |
| [FLINK-11791](https://issues.apache.org/jira/browse/FLINK-11791) | Describe how to build Flink with Hadoop in build guide |  Major | Build System, Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-11836](https://issues.apache.org/jira/browse/FLINK-11836) | Update NOTICE-binary and licenses-binary for Flink 1.8.0 |  Blocker | . | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-11821](https://issues.apache.org/jira/browse/FLINK-11821) | Fix package declaration and location of internal Kafka schema wrappers |  Blocker | Connectors / Kafka | lamber-ken | lamber-ken |
| [FLINK-11886](https://issues.apache.org/jira/browse/FLINK-11886) | Update CLI output in HA docs |  Major | Command Line Client, Documentation, Runtime / Coordination | chunpinghe | chunpinghe |
| [FLINK-11121](https://issues.apache.org/jira/browse/FLINK-11121) | Add NOTICE file for Aliyun FileSystem |  Blocker | FileSystems | Stefan Richter | Stefan Richter |
| [FLINK-11980](https://issues.apache.org/jira/browse/FLINK-11980) | Improve efficiency of iterating KeySelectionListener on notification |  Major | Runtime / State Backends | Stefan Richter | Stefan Richter |
| [FLINK-11786](https://issues.apache.org/jira/browse/FLINK-11786) | Merge cron branches into respective release branches |  Major | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12021](https://issues.apache.org/jira/browse/FLINK-12021) | Let ResultConjunctFuture return future results in same order as futures |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-12020](https://issues.apache.org/jira/browse/FLINK-12020) | Add documentation for mesos-appmaster-job.sh |  Minor | Deployment / Mesos, Documentation | Till Rohrmann | Jacky Yin |
| [FLINK-12476](https://issues.apache.org/jira/browse/FLINK-12476) | [State TTL] Consider setting a default background cleanup strategy in StateTtlConfig |  Major | Runtime / State Backends | Andrey Zagrebin | vinoyang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10991](https://issues.apache.org/jira/browse/FLINK-10991) | Dockerfile in flink-container does not work with RocksDBStatebackend |  Major | flink-docker | Konstantin Knauf | Konstantin Knauf |
| [FLINK-10763](https://issues.apache.org/jira/browse/FLINK-10763) | Interval join produces wrong result type in Scala API |  Major | API / DataStream | jinhai | Timo Walther |
| [FLINK-10992](https://issues.apache.org/jira/browse/FLINK-10992) | Jepsen: Do not use /tmp as HDFS Data Directory |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-11017](https://issues.apache.org/jira/browse/FLINK-11017) | Time interval for window aggregations in SQL is wrongly translated if specified with YEAR\_MONTH resolution |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-10149](https://issues.apache.org/jira/browse/FLINK-10149) | Fink Mesos allocates extra port when not configured to do so |  Minor | Deployment / Mesos | Rune Skou Larsen | Gary Yao |
| [FLINK-11047](https://issues.apache.org/jira/browse/FLINK-11047) | CoGroupGroupSortTranslationTest does not compile with scala 2.12 |  Major | API / Scala, Library / Machine Learning | Chesnay Schepler | Till Rohrmann |
| [FLINK-11044](https://issues.apache.org/jira/browse/FLINK-11044) | RegisterTableSink docs incorrect |  Minor | Documentation | Kenny Gorman |  |
| [FLINK-11045](https://issues.apache.org/jira/browse/FLINK-11045) | UserCodeClassLoader has not been set correctly for RuntimeUDFContext in CollectionExecutor |  Major | Table SQL / API | Hequn Cheng | Hequn Cheng |
| [FLINK-10997](https://issues.apache.org/jira/browse/FLINK-10997) | Avro-confluent-registry does not bundle any dependency |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11011](https://issues.apache.org/jira/browse/FLINK-11011) | Elasticsearch 6 sink end-to-end test unstable |  Critical | Test Infrastructure | Timo Walther | Andrey Zagrebin |
| [FLINK-10482](https://issues.apache.org/jira/browse/FLINK-10482) | java.lang.IllegalArgumentException: Negative number of in progress checkpoints |  Major | Runtime / State Backends | Julio Biason | Andrey Zagrebin |
| [FLINK-9552](https://issues.apache.org/jira/browse/FLINK-9552) | NPE in SpanningRecordSerializer during checkpoint with iterations |  Major | API / Type Serialization System | Truong Duc Kien | Nico Kruber |
| [FLINK-11094](https://issues.apache.org/jira/browse/FLINK-11094) | Restored state in RocksDBStateBackend that has not been accessed in restored execution causes NPE on snapshot |  Blocker | Runtime / State Backends | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-11087](https://issues.apache.org/jira/browse/FLINK-11087) | Broadcast state migration Incompatibility from 1.5.3 to 1.7.0 |  Blocker | Runtime / State Backends | Edward Rojas | Tzu-Li (Gordon) Tai |
| [FLINK-11085](https://issues.apache.org/jira/browse/FLINK-11085) | NoClassDefFoundError in presto-s3 filesystem |  Blocker | FileSystems | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11001](https://issues.apache.org/jira/browse/FLINK-11001) | Window rowtime attribute can't be renamed in Java |  Major | . | Hequn Cheng | Hequn Cheng |
| [FLINK-11136](https://issues.apache.org/jira/browse/FLINK-11136) | Fix the logical of merge for DISTINCT aggregates |  Major | Table SQL / API | Dian Fu | Dian Fu |
| [FLINK-11040](https://issues.apache.org/jira/browse/FLINK-11040) | Incorrect generic type of DataStream in broadcast\_state.md |  Minor | . | Yangze Guo | Yangze Guo |
| [FLINK-11083](https://issues.apache.org/jira/browse/FLINK-11083) | CRowSerializerConfigSnapshot is not instantiable |  Major | API / Type Serialization System, Table SQL / API | boshu Zheng | boshu Zheng |
| [FLINK-11100](https://issues.apache.org/jira/browse/FLINK-11100) | Presto S3 FileSystem E2E test broken |  Major | FileSystems, Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11151](https://issues.apache.org/jira/browse/FLINK-11151) | FileUploadHandler stops working if the upload directory is removed |  Major | Runtime / Coordination, Runtime / REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10748](https://issues.apache.org/jira/browse/FLINK-10748) | Jobmanager in HA setup, redirects (307) don't work when behind a load balancer |  Critical | Runtime / Coordination | Jeroen Steggink | Till Rohrmann |
| [FLINK-11201](https://issues.apache.org/jira/browse/FLINK-11201) | Document SBT dependency requirements when using MiniClusterResource |  Major | Tests | eugen yushin | Till Rohrmann |
| [FLINK-11246](https://issues.apache.org/jira/browse/FLINK-11246) | Fix distinct AGG visibility issues |  Major | Table SQL / API | sunjincheng | Dian Fu |
| [FLINK-11235](https://issues.apache.org/jira/browse/FLINK-11235) | Elasticsearch connector leaks threads if no connection could be established |  Major | Connectors / ElasticSearch | lamber-ken | lamber-ken |
| [FLINK-10761](https://issues.apache.org/jira/browse/FLINK-10761) | MetricGroup#getAllVariables can deadlock |  Critical | Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11194](https://issues.apache.org/jira/browse/FLINK-11194) | missing Scala 2.12 build of HBase connector |  Major | API / DataSet, Build System | Zhenhao Li | Chesnay Schepler |
| [FLINK-11234](https://issues.apache.org/jira/browse/FLINK-11234) | ExternalTableCatalogBuilder unable to build a batch-only table |  Minor | Table SQL / API, Tests | Eron Wright | Eron Wright |
| [FLINK-11119](https://issues.apache.org/jira/browse/FLINK-11119) | Incorrect Scala example for Table Function |  Major | Documentation | Denys Fakhritdinov | TANG Wen-hui |
| [FLINK-11227](https://issues.apache.org/jira/browse/FLINK-11227) | The DescriptorProperties contains some bounds checking errors |  Major | Table SQL / API | Xingcan Cui | Xingcan Cui |
| [FLINK-11173](https://issues.apache.org/jira/browse/FLINK-11173) | Proctime attribute validation throws an incorrect exception message |  Major | Table SQL / API | vinoyang | TANG Wen-hui |
| [FLINK-11265](https://issues.apache.org/jira/browse/FLINK-11265) | Invalid reference to AvroSinkWriter in example AvroKeyValueSinkWriter in javadoc |  Major | Documentation | Fokko Driesprong | Fokko Driesprong |
| [FLINK-11161](https://issues.apache.org/jira/browse/FLINK-11161) | Unable to import java packages in scala-shell |  Minor | Scala Shell | Jeff Zhang | Shuiqiang Chen |
| [FLINK-11279](https://issues.apache.org/jira/browse/FLINK-11279) | Invalid week interval parsing in ExpressionParser |  Major | Table SQL / API | Forward Xu | Forward Xu |
| [FLINK-11191](https://issues.apache.org/jira/browse/FLINK-11191) | Exception in code generation when ambiguous columns in MATCH\_RECOGNIZE |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-11280](https://issues.apache.org/jira/browse/FLINK-11280) | RocksDBSerializedCompositeKeyBuilder's key serializer is not being reconfigured properly |  Critical | Runtime / State Backends | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-11232](https://issues.apache.org/jira/browse/FLINK-11232) | Empty Start Time of sub-task on web dashboard |  Major | Runtime / Web Frontend | BoWang | BoWang |
| [FLINK-11251](https://issues.apache.org/jira/browse/FLINK-11251) | Incompatible metric name on prometheus reporter |  Major | Runtime / Metrics | Wei-Che Wei | Wei-Che Wei |
| [FLINK-11287](https://issues.apache.org/jira/browse/FLINK-11287) | RocksDBListState should use actual registered state serializer instead of serializer provided by descriptor |  Critical | Runtime / State Backends | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-11253](https://issues.apache.org/jira/browse/FLINK-11253) | Incorrect way to stop yarn session described in yarn\_setup document |  Minor | Documentation | Tao Yang | leesf |
| [FLINK-11084](https://issues.apache.org/jira/browse/FLINK-11084) | Incorrect ouput after two consecutive split and select |  Critical | . | Shimin Yang | Shimin Yang |
| [FLINK-11224](https://issues.apache.org/jira/browse/FLINK-11224) | Log is missing in scala-shell |  Major | Scala Shell | Jeff Zhang | Jeff Zhang |
| [FLINK-10848](https://issues.apache.org/jira/browse/FLINK-10848) | Flink's Yarn ResourceManager can allocate too many excess containers |  Major | Deployment / YARN | Shuyi Chen | Till Rohrmann |
| [FLINK-11312](https://issues.apache.org/jira/browse/FLINK-11312) | The link to Zookeeper is broken in "jobmanager\_high\_availability" document |  Minor | Documentation | Biao Liu | Biao Liu |
| [FLINK-11187](https://issues.apache.org/jira/browse/FLINK-11187) | StreamingFileSink with S3 backend transient socket timeout issues |  Major | Connectors / Common, FileSystems | Addison Higham | Addison Higham |
| [FLINK-11371](https://issues.apache.org/jira/browse/FLINK-11371) | AvroParquetReader not closed after use |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Fokko Driesprong | Fokko Driesprong |
| [FLINK-11383](https://issues.apache.org/jira/browse/FLINK-11383) | Dispatcher does not clean up blobs of failed submissions |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-11036](https://issues.apache.org/jira/browse/FLINK-11036) | Streaming classloader end-to-end test does not work on source releases |  Critical | Test Infrastructure | Timo Walther | Aljoscha Krettek |
| [FLINK-11171](https://issues.apache.org/jira/browse/FLINK-11171) | Unexpected timestamp deserialization failure in RocksDB state backend |  Major | Runtime / State Backends | Sayat Satybaldiyev | Andrey Zagrebin |
| [FLINK-11071](https://issues.apache.org/jira/browse/FLINK-11071) | Dynamic proxy classes cannot be resolved when deserializing job graph |  Major | . | Oleg Zhukov | BoWang |
| [FLINK-11326](https://issues.apache.org/jira/browse/FLINK-11326) | Allow negative offsets in window assigners |  Major | API / DataStream | TANG Wen-hui | Kezhu Wang |
| [FLINK-11400](https://issues.apache.org/jira/browse/FLINK-11400) | JobManagerRunner does not wait for suspension of JobMaster |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10774](https://issues.apache.org/jira/browse/FLINK-10774) | connection leak when partition discovery is disabled and open throws exception |  Major | Connectors / Kafka | Steven Zhen Wu | Till Rohrmann |
| [FLINK-11380](https://issues.apache.org/jira/browse/FLINK-11380) | YarnFlinkResourceManagerTest test case crashed |  Critical | Tests | vinoyang | Till Rohrmann |
| [FLINK-11145](https://issues.apache.org/jira/browse/FLINK-11145) | Fix Hadoop version handling in binary release script |  Major | Build System | Thomas Weise | Thomas Weise |
| [FLINK-11389](https://issues.apache.org/jira/browse/FLINK-11389) | Incorrectly use job information when call getSerializedTaskInformation in class TaskDeploymentDescriptor |  Major | Runtime / Coordination | yuqi | yuqi |
| [FLINK-11419](https://issues.apache.org/jira/browse/FLINK-11419) | StreamingFileSink fails to recover after taskmanager failure |  Blocker | Connectors / FileSystem | Edward Rojas | Edward Rojas |
| [FLINK-11164](https://issues.apache.org/jira/browse/FLINK-11164) | Refreshing expired shard iterator fails if no records were retrieved from shard since ShardConsumer was started in FlinkKinesisConsumer |  Major | Connectors / Kinesis | Tzu-Li (Gordon) Tai | Aljoscha Krettek |
| [FLINK-9920](https://issues.apache.org/jira/browse/FLINK-9920) | BucketingSinkFaultToleranceITCase fails on travis |  Critical | Connectors / FileSystem | Chesnay Schepler | Aljoscha Krettek |
| [FLINK-11535](https://issues.apache.org/jira/browse/FLINK-11535) | SQL Client jar does not contain table-api-java |  Major | Table SQL / Client | Timo Walther | Timo Walther |
| [FLINK-11302](https://issues.apache.org/jira/browse/FLINK-11302) | FlinkS3FileSystem uses an incorrect path for temporary files |  Major | FileSystems | Artsem Semianenka | Artsem Semianenka |
| [FLINK-11553](https://issues.apache.org/jira/browse/FLINK-11553) | DispatcherHATest.testFailingRecoveryIsAFatalError fails locally with @Nonnull check |  Major | Runtime / Coordination, Tests | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-11046](https://issues.apache.org/jira/browse/FLINK-11046) | ElasticSearch6Connector cause thread blocked when index failed with retry |  Major | Connectors / ElasticSearch | luoguohao | xueyu |
| [FLINK-10721](https://issues.apache.org/jira/browse/FLINK-10721) | Kafka discovery-loop exceptions may be swallowed |  Major | Connectors / Kafka | zzsmdfj | Chesnay Schepler |
| [FLINK-11053](https://issues.apache.org/jira/browse/FLINK-11053) | Bucketing sink example does not compile |  Major | Documentation | Avi Levi | Avi Levi |
| [FLINK-11584](https://issues.apache.org/jira/browse/FLINK-11584) | ConfigDocsCompletenessITCase fails DescriptionBuilder#linebreak() is used |  Major | Documentation | Nico Kruber | Chesnay Schepler |
| [FLINK-11585](https://issues.apache.org/jira/browse/FLINK-11585) | Prefix matching in ConfigDocsGenerator can result in wrong assignments |  Major | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11418](https://issues.apache.org/jira/browse/FLINK-11418) | Unable to build docs in Docker image |  Major | Documentation | Robert Metzger | Robert Metzger |
| [FLINK-11583](https://issues.apache.org/jira/browse/FLINK-11583) | ConfigOptions cannot have fallback and deprecated keys at the same time |  Major | Runtime / Configuration | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11591](https://issues.apache.org/jira/browse/FLINK-11591) | Restoring LockableTypeSerializer's snapshot from 1.6 and below requires pre-processing before snapshot is valid to use |  Major | API / Type Serialization System, Library / CEP | Tzu-Li (Gordon) Tai | Igal Shilman |
| [FLINK-11424](https://issues.apache.org/jira/browse/FLINK-11424) | DatadogHttpReporter throws ConcurrentModificationException if gauge throws exception or returns a non-numeric value |  Major | Runtime / Metrics | lining | lining |
| [FLINK-10964](https://issues.apache.org/jira/browse/FLINK-10964) | sql-client throws exception when paging through finished batch query |  Major | Table SQL / Client | Seth Wiesman | vinoyang |
| [FLINK-11537](https://issues.apache.org/jira/browse/FLINK-11537) | ExecutionGraph does not reach terminal state when JobMaster lost leadership |  Blocker | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-11375](https://issues.apache.org/jira/browse/FLINK-11375) | Concurrent modification to slot pool due to SlotSharingManager releaseSlot directly |  Critical | Runtime / Coordination | shuai.xu | BoWang |
| [FLINK-11699](https://issues.apache.org/jira/browse/FLINK-11699) | Should use \`String.equals()\` instead of \`==\` for String compares in AbstractDispatcherResourceManagerComponentFactory.getHostname() |  Trivial | Runtime / Coordination | Benchao Li | Benchao Li |
| [FLINK-11690](https://issues.apache.org/jira/browse/FLINK-11690) | Use configured RPC timeout in MiniCluster |  Major | Runtime / Task | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11541](https://issues.apache.org/jira/browse/FLINK-11541) | Heavy deployment E2E test failed on Travis |  Blocker | Runtime / Coordination, Test Infrastructure | Chesnay Schepler | Stefan Richter |
| [FLINK-11013](https://issues.apache.org/jira/browse/FLINK-11013) | Fix distinct aggregates for group window in Table API |  Major | Table SQL / API | Dian Fu | Dian Fu |
| [FLINK-11745](https://issues.apache.org/jira/browse/FLINK-11745) | TTL end-to-end test restores from the savepoint after the job cancelation |  Major | Runtime / State Backends, Tests | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-10895](https://issues.apache.org/jira/browse/FLINK-10895) | TypeSerializerSnapshotMigrationITCase.testSavepoint test failed on travis |  Critical | API / Type Serialization System, Tests | Dawid Wysakowicz | Tzu-Li (Gordon) Tai |
| [FLINK-11743](https://issues.apache.org/jira/browse/FLINK-11743) | Sticky E2E tests failed on travis |  Blocker | Runtime / Coordination, Runtime / State Backends | Chesnay Schepler | Stefan Richter |
| [FLINK-11772](https://issues.apache.org/jira/browse/FLINK-11772) | InternalTimerServiceSerializationProxy should not be serializing timers' key / namespace serializers anymore |  Blocker | API / DataStream | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-10342](https://issues.apache.org/jira/browse/FLINK-10342) | Kafka duplicate topic consumption when topic name is changed |  Blocker | Connectors / Kafka | Oleksandr Nitavskyi | Feng LI |
| [FLINK-11773](https://issues.apache.org/jira/browse/FLINK-11773) | KryoSerializerSnapshot would fail to deserialize if a type is missing |  Blocker | . | Igal Shilman | Igal Shilman |
| [FLINK-11771](https://issues.apache.org/jira/browse/FLINK-11771) | Serializer snapshot cannot be read if directly upgraded in-place to a TypeSerializerSnapshot from a TypeSerializerConfigSnapshot written in 1.7+ |  Blocker | API / Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-10881](https://issues.apache.org/jira/browse/FLINK-10881) | SavepointITCase deadlocks on travis |  Critical | Runtime / State Backends, Tests | Chesnay Schepler | Kostas Kloudas |
| [FLINK-10585](https://issues.apache.org/jira/browse/FLINK-10585) | RestServerEndpoint responds with wrong Content-Type in Integration Test. |  Major | Runtime / REST, Tests | Gary Yao | Gary Yao |
| [FLINK-11379](https://issues.apache.org/jira/browse/FLINK-11379) | OutOfMemoryError when loading large TaskDeploymentDescriptor |  Major | Runtime / Coordination | Haibo Sun | Haibo Sun |
| [FLINK-11804](https://issues.apache.org/jira/browse/FLINK-11804) | Make sure the CloseableRegistry used in backend builder is registered with task |  Blocker | Runtime / State Backends | Yu Li | Yu Li |
| [FLINK-11823](https://issues.apache.org/jira/browse/FLINK-11823) | TrySerializer#duplicate does not create a proper duplicate |  Major | API / Type Serialization System | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-11336](https://issues.apache.org/jira/browse/FLINK-11336) | Flink HA didn't remove ZK metadata |  Major | Runtime / Coordination | shengjk1 | Till Rohrmann |
| [FLINK-11781](https://issues.apache.org/jira/browse/FLINK-11781) | Reject "DISABLED" as value for yarn.per-job-cluster.include-user-jar |  Major | Deployment / YARN | Gary Yao | Gary Yao |
| [FLINK-11542](https://issues.apache.org/jira/browse/FLINK-11542) | Missing configuration sections since 1.5 docs |  Major | Documentation | Nico Kruber | Chesnay Schepler |
| [FLINK-11826](https://issues.apache.org/jira/browse/FLINK-11826) | Kafka09ITCase.testRateLimitedConsumer fails on Travis |  Critical | Connectors / Kafka, Tests | Till Rohrmann | Lakshmi Rao |
| [FLINK-11851](https://issues.apache.org/jira/browse/FLINK-11851) | ClusterEntrypoint provides wrong executor to HaServices |  Critical | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-11867](https://issues.apache.org/jira/browse/FLINK-11867) | Fix empty path check in StreamExEnv#readTextFile |  Major | API / DataStream | Tom Goong | Tom Goong |
| [FLINK-11420](https://issues.apache.org/jira/browse/FLINK-11420) | Serialization of case classes containing a Map[String, Any] sometimes throws ArrayIndexOutOfBoundsException |  Blocker | API / Type Serialization System | Jürgen Kreileder | Dawid Wysakowicz |
| [FLINK-11865](https://issues.apache.org/jira/browse/FLINK-11865) | Code generation in TraversableSerializer is prohibitively slow |  Critical | API / Type Serialization System | Aljoscha Krettek | Igal Shilman |
| [FLINK-10756](https://issues.apache.org/jira/browse/FLINK-10756) | TaskManagerProcessFailureBatchRecoveryITCase did not finish on time |  Critical | Runtime / Coordination, Tests | Bowen Li | Chesnay Schepler |
| [FLINK-11866](https://issues.apache.org/jira/browse/FLINK-11866) | Wrong method name for registering custom types |  Minor | API / Python, Documentation | romano vacca | romano vacca |
| [FLINK-11892](https://issues.apache.org/jira/browse/FLINK-11892) | Port conflict when running nightly end-to-end tests |  Major | Test Infrastructure | sunjincheng | Yu Li |
| [FLINK-11901](https://issues.apache.org/jira/browse/FLINK-11901) | Update the year in NOTICE files |  Blocker | Release System | Timo Walther | Timo Walther |
| [FLINK-11183](https://issues.apache.org/jira/browse/FLINK-11183) | Heap/NonHeap memory metrics broken |  Major | Runtime / Metrics |  Mario Georgiev | Chesnay Schepler |
| [FLINK-11902](https://issues.apache.org/jira/browse/FLINK-11902) | JarRunHandler wraps all exceptions in a RestHandlerException |  Major | Runtime / REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11950](https://issues.apache.org/jira/browse/FLINK-11950) | Add missing dependencies in NOTICE file of flink-dist. |  Blocker | Documentation | sunjincheng | sunjincheng |
| [FLINK-11971](https://issues.apache.org/jira/browse/FLINK-11971) | Fix \`Command: start\_kubernetes\_if\_not\_ruunning failed\` error |  Major | Tests | sunjincheng | Hequn Cheng |
| [FLINK-11972](https://issues.apache.org/jira/browse/FLINK-11972) | The classpath is missing the \`flink-shaded-hadoop2-uber-2.8.3-1.8.0.jar\` JAR during the end-to-end test. |  Major | Tests | sunjincheng | Yu Li |
| [FLINK-11887](https://issues.apache.org/jira/browse/FLINK-11887) | Latency metrics drift apart |  Major | Runtime / Metrics | Suxing Lee | Suxing Lee |
| [FLINK-11984](https://issues.apache.org/jira/browse/FLINK-11984) | StreamingFileSink docs do not mention S3 savepoint caveats. |  Major | Connectors / FileSystem, Documentation | Kostas Kloudas | Kostas Kloudas |
| [FLINK-12012](https://issues.apache.org/jira/browse/FLINK-12012) | BroadcastStateITCase does not use Test Environments |  Minor | API / DataStream, Tests | Stephan Ewen | Stephan Ewen |
| [FLINK-12001](https://issues.apache.org/jira/browse/FLINK-12001) | Test AvroExternalJarProgramITCase, get \`JAR file does not exist\`  Error. |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | sunjincheng | sunjincheng |
| [FLINK-11855](https://issues.apache.org/jira/browse/FLINK-11855) | Race condition in EmbeddedLeaderService |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-12006](https://issues.apache.org/jira/browse/FLINK-12006) | ZooKeeperHaServicesTest.testSimpleCloseAndCleanupAllData is unstable |  Critical | Runtime / Coordination | Aljoscha Krettek | Zili Chen |
| [FLINK-12051](https://issues.apache.org/jira/browse/FLINK-12051) | TaskExecutorTest.testFilterOutDuplicateJobMasterRegistrations() does not wait for TaskExecutor to be started |  Critical | Tests | Kostas Kloudas | Chesnay Schepler |
| [FLINK-12015](https://issues.apache.org/jira/browse/FLINK-12015) | TaskManagerRunnerTest is unstable |  Critical | Runtime / Coordination | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-12064](https://issues.apache.org/jira/browse/FLINK-12064) | RocksDBKeyedStateBackend snapshot uses incorrect key serializer if reconfigure happens during restore |  Blocker | . | Yu Li | Yu Li |
| [FLINK-12075](https://issues.apache.org/jira/browse/FLINK-12075) | Not able to submit jobs on YARN when there's a firewall |  Blocker | Deployment / YARN | Richard Deurwaarder | Till Rohrmann |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10800](https://issues.apache.org/jira/browse/FLINK-10800) | Abstract the StreamPartitionerTest for common codes |  Minor | Runtime / Network, Tests | Zhijiang | Zhijiang |
| [FLINK-10835](https://issues.apache.org/jira/browse/FLINK-10835) | Remove duplicated Round-robin ChannelSelector implementation in RecordWriterTest |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-10764](https://issues.apache.org/jira/browse/FLINK-10764) | Add S3 entropy injection end-to-end/IT test |  Major | FileSystems, Test Infrastructure | Till Rohrmann | Gary Yao |
| [FLINK-10666](https://issues.apache.org/jira/browse/FLINK-10666) | Port YarnClusterDescriptorTest to new codebase |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-10235](https://issues.apache.org/jira/browse/FLINK-10235) | KafkaTableSourceSinkFactoryBase#getFlinkKafkaPartitioner does not compile with Java 9 |  Major | Table SQL / API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10942](https://issues.apache.org/jira/browse/FLINK-10942) | Deduplicate common codes in OutputEmitterTest |  Minor | Runtime / Network, Tests | Zhijiang | Zhijiang |
| [FLINK-10820](https://issues.apache.org/jira/browse/FLINK-10820) | Simplify the RebalancePartitioner implementation |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-8159](https://issues.apache.org/jira/browse/FLINK-8159) | Pattern(Flat)SelectFunctions should support RichFunction interface |  Major | Library / CEP | Dian Fu | Dian Fu |
| [FLINK-6938](https://issues.apache.org/jira/browse/FLINK-6938) | IterativeCondition should support RichFunction interface |  Major | Library / CEP | Jark Wu | Dian Fu |
| [FLINK-10367](https://issues.apache.org/jira/browse/FLINK-10367) | Avoid recursion stack overflow during releasing SingleInputGate |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-10597](https://issues.apache.org/jira/browse/FLINK-10597) | Enable UDFs support in MATCH\_RECOGNIZE |  Major | Library / CEP, Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-10798](https://issues.apache.org/jira/browse/FLINK-10798) | Add the version number of Flink 1.7 to MigrationVersion |  Major | Tests | vinoyang | vinoyang |
| [FLINK-10689](https://issues.apache.org/jira/browse/FLINK-10689) | Port UDFs in Table API extension points to flink-table-common |  Major | Table SQL / API | Timo Walther | xueyu |
| [FLINK-7603](https://issues.apache.org/jira/browse/FLINK-7603) | Support time constraint in MatchRecognize |  Major | Library / CEP, Table SQL / API | Dian Fu | Dawid Wysakowicz |
| [FLINK-10522](https://issues.apache.org/jira/browse/FLINK-10522) | Check if RecoverableWriter supportsResume and act accordingly. |  Major | Connectors / FileSystem | Kostas Kloudas | Kostas Kloudas |
| [FLINK-10252](https://issues.apache.org/jira/browse/FLINK-10252) | Handle oversized metric messages |  Critical | Runtime / Metrics | Till Rohrmann | vinoyang |
| [FLINK-10963](https://issues.apache.org/jira/browse/FLINK-10963) | Cleanup small objects uploaded to S3 as independent objects |  Major | Connectors / FileSystem | Kostas Kloudas | Kostas Kloudas |
| [FLINK-11122](https://issues.apache.org/jira/browse/FLINK-11122) | SafetyNetCloseableRegistryTest fails with ClassCastException |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-11144](https://issues.apache.org/jira/browse/FLINK-11144) | Make Tests runnable on Java 9 |  Critical | Tests | Gary Yao | Gary Yao |
| [FLINK-11152](https://issues.apache.org/jira/browse/FLINK-11152) | ClosureCleanerTest fails with IllegalStateException |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-7599](https://issues.apache.org/jira/browse/FLINK-7599) | Support aggregation functions in the define and measures clause of MatchRecognize |  Major | Library / CEP, Table SQL / API | Dian Fu | Dawid Wysakowicz |
| [FLINK-10784](https://issues.apache.org/jira/browse/FLINK-10784) | Update FlinkKafkaConsumerBaseMigrationTest for 1.7 |  Major | Tests | Tzu-Li (Gordon) Tai | vinoyang |
| [FLINK-10788](https://issues.apache.org/jira/browse/FLINK-10788) | Update ContinuousFileProcessingMigrationTest for 1.7 |  Major | Tests | Tzu-Li (Gordon) Tai | vinoyang |
| [FLINK-10782](https://issues.apache.org/jira/browse/FLINK-10782) | Update AbstractKeyedOperatorRestoreTestBase for 1.7 |  Major | Tests | Tzu-Li (Gordon) Tai | vinoyang |
| [FLINK-10787](https://issues.apache.org/jira/browse/FLINK-10787) | Update AbstractNonKeyedOperatorRestoreTestBase for 1.7 |  Major | Tests | Tzu-Li (Gordon) Tai | vinoyang |
| [FLINK-10786](https://issues.apache.org/jira/browse/FLINK-10786) | Update CEPMigrationTest for 1.7 |  Major | Tests | Tzu-Li (Gordon) Tai | vinoyang |
| [FLINK-11180](https://issues.apache.org/jira/browse/FLINK-11180) | ProcessFailureCancelingITCase#testCancelingOnProcessFailure |  Major | Tests | sunjincheng | Hequn Cheng |
| [FLINK-11179](https://issues.apache.org/jira/browse/FLINK-11179) |  JoinCancelingITCase#testCancelSortMatchWhileDoingHeavySorting test error |  Major | Tests | sunjincheng | sunjincheng |
| [FLINK-7208](https://issues.apache.org/jira/browse/FLINK-7208) | Refactor build-in agg(MaxWithRetractAccumulator and MinWithRetractAccumulator) using the DataView |  Major | Table SQL / API | Kaibo Zhou | Dian Fu |
| [FLINK-10779](https://issues.apache.org/jira/browse/FLINK-10779) | Update Java / Scala StatefulJobSavepointMigrationITCase for 1.7 |  Major | Tests | Tzu-Li (Gordon) Tai | Hequn Cheng |
| [FLINK-10781](https://issues.apache.org/jira/browse/FLINK-10781) | Update BucketingSinkMigrationTest for Flink 1.7 |  Major | Tests | Tzu-Li (Gordon) Tai | Hequn Cheng |
| [FLINK-10780](https://issues.apache.org/jira/browse/FLINK-10780) | Update Java / Scala StatefulJobWBroadcastStateMigrationITCase for 1.7 |  Major | Tests | Tzu-Li (Gordon) Tai | Hequn Cheng |
| [FLINK-11181](https://issues.apache.org/jira/browse/FLINK-11181) | SimpleRecoveryITCaseBase test error |  Major | . | sunjincheng | Hequn Cheng |
| [FLINK-10555](https://issues.apache.org/jira/browse/FLINK-10555) | Port AkkaSslITCase to new code base |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-10700](https://issues.apache.org/jira/browse/FLINK-10700) | Remove LegacyStandaloneClusterDescriptor |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-10596](https://issues.apache.org/jira/browse/FLINK-10596) | Add access to timerService in Pattern(Flat)SelectFunction |  Major | Library / CEP, Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-11056](https://issues.apache.org/jira/browse/FLINK-11056) | Remove MesosApplicationMasterRunner |  Major | Deployment / Mesos | Zili Chen | Zili Chen |
| [FLINK-11197](https://issues.apache.org/jira/browse/FLINK-11197) | Improve migration test comments about how to generate snapshots |  Major | Tests | Hequn Cheng | Hequn Cheng |
| [FLINK-10783](https://issues.apache.org/jira/browse/FLINK-10783) | Update WindowOperatorMigrationTest for 1.7 |  Major | Tests | Tzu-Li (Gordon) Tai | boshu Zheng |
| [FLINK-10571](https://issues.apache.org/jira/browse/FLINK-10571) | Remove support for topologies |  Major | Legacy Components / Storm Compatibility | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11267](https://issues.apache.org/jira/browse/FLINK-11267) | Update create\_binary\_release.sh to not create hadoop-specific releases |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11268](https://issues.apache.org/jira/browse/FLINK-11268) | Update deploy\_staging\_jars.sh to deploy multiple flink-shaded-hadoop2 versions |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11156](https://issues.apache.org/jira/browse/FLINK-11156) | ZooKeeperCompletedCheckpointStoreMockitoTest fails with IncompatibleClassChangeError |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-11294](https://issues.apache.org/jira/browse/FLINK-11294) | Remove legacy JobInfo usage in valid tests |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-10558](https://issues.apache.org/jira/browse/FLINK-10558) | Port YARNHighAvailabilityITCase to new code base |  Minor | . | vinoyang | Till Rohrmann |
| [FLINK-11350](https://issues.apache.org/jira/browse/FLINK-11350) | Remove JobClientActorRecoveryITCase |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-11349](https://issues.apache.org/jira/browse/FLINK-11349) | Port CoordinatorShutdownTest to new code base |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-11360](https://issues.apache.org/jira/browse/FLINK-11360) | Remove LocalFlinkMiniClusterITCase |  Major | Tests | Till Rohrmann | Zili Chen |
| [FLINK-10591](https://issues.apache.org/jira/browse/FLINK-10591) | Add functions to return TimeIndicators from MATCH\_RECOGNIZE |  Major | Library / CEP, Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-10665](https://issues.apache.org/jira/browse/FLINK-10665) | Remove legacy test YARNSessionFIFOITCase#testJavaAPI |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-11328](https://issues.apache.org/jira/browse/FLINK-11328) | Migrate all parameterless serializers / TypeSerializerSingleton's to use new serializer snapshot abstractions |  Major | API / Type Serialization System, Runtime / State Backends | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-11351](https://issues.apache.org/jira/browse/FLINK-11351) | Port JobManagerCleanupITCase to new code base |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-11355](https://issues.apache.org/jira/browse/FLINK-11355) | Port JobManagerProcessReapingTest to new code base |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-11348](https://issues.apache.org/jira/browse/FLINK-11348) | Port YARNSessionCapacitySchedulerITCase#testClientStartup to new code base |  Minor | . | vinoyang | Gary Yao |
| [FLINK-11282](https://issues.apache.org/jira/browse/FLINK-11282) | Merge StreamRecordWriter into RecordWriter |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-11356](https://issues.apache.org/jira/browse/FLINK-11356) | Port JobManagerStartupTest to new code base |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-11353](https://issues.apache.org/jira/browse/FLINK-11353) | Port JobManagerHAJobGraphRecoveryITCase to new code base |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-11354](https://issues.apache.org/jira/browse/FLINK-11354) | Port JobManagerHARecoveryTest to new code base |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-11390](https://issues.apache.org/jira/browse/FLINK-11390) | Port YARNSessionCapacitySchedulerITCase#testTaskManagerFailure to new code base |  Minor | Deployment / YARN | Gary Yao | Gary Yao |
| [FLINK-11316](https://issues.apache.org/jira/browse/FLINK-11316) | JarFileCreatorTest fails when run with Java 9 |  Major | Tests | Gary Yao | Zili Chen |
| [FLINK-11366](https://issues.apache.org/jira/browse/FLINK-11366) | Delete TaskManagerMetricsTest |  Major | Tests | Till Rohrmann | Yun Tang |
| [FLINK-11270](https://issues.apache.org/jira/browse/FLINK-11270) | Do not include hadoop in flink-dist by default |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10662](https://issues.apache.org/jira/browse/FLINK-10662) | Refactor the ChannelSelector interface for single selected channel |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-11329](https://issues.apache.org/jira/browse/FLINK-11329) | Migrate all remaining composite serializers to use new serializer snapshot abstraction |  Major | API / Type Serialization System, Runtime / State Backends | Tzu-Li (Gordon) Tai | Igal Shilman |
| [FLINK-11358](https://issues.apache.org/jira/browse/FLINK-11358) | Port LeaderChangeStateCleanupTest |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-11357](https://issues.apache.org/jira/browse/FLINK-11357) | Remove LeaderChangeJobRecoveryTest |  Major | Tests | Till Rohrmann | lining |
| [FLINK-11363](https://issues.apache.org/jira/browse/FLINK-11363) | Port TaskManagerConfigurationTest |  Major | Tests | Till Rohrmann | Yun Tang |
| [FLINK-11064](https://issues.apache.org/jira/browse/FLINK-11064) | Setup a new flink-table module structure |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-11412](https://issues.apache.org/jira/browse/FLINK-11412) | Remove legacy MesosFlinkResourceManager |  Major | Deployment / Mesos, Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-11384](https://issues.apache.org/jira/browse/FLINK-11384) | Remove legacy MesosTaskManager |  Major | Deployment / Mesos | Zili Chen | Zili Chen |
| [FLINK-11369](https://issues.apache.org/jira/browse/FLINK-11369) | Remove ZooKeeperHAJobManagerTest |  Major | Tests | Till Rohrmann | Zili Chen |
| [FLINK-11365](https://issues.apache.org/jira/browse/FLINK-11365) | Remove TaskManagerFailureRecoveryITCase |  Major | Tests | Till Rohrmann | boshu Zheng |
| [FLINK-11385](https://issues.apache.org/jira/browse/FLINK-11385) | Remove legacy MesosJobManager |  Major | Deployment / Mesos | Zili Chen | Zili Chen |
| [FLINK-11106](https://issues.apache.org/jira/browse/FLINK-11106) | Remove legacy flink-yarn component |  Major | Command Line Client, Deployment / YARN, Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-11352](https://issues.apache.org/jira/browse/FLINK-11352) | Port JobManagerHACheckpointRecoveryITCase to new code base |  Major | Tests | Till Rohrmann | Congxian Qiu |
| [FLINK-11370](https://issues.apache.org/jira/browse/FLINK-11370) | Port ZooKeeperLeaderElectionITCase |  Major | Tests | Till Rohrmann | lining |
| [FLINK-10583](https://issues.apache.org/jira/browse/FLINK-10583) | Add support for state retention to the Processing Time versioned joins. |  Major | Table SQL / API | Kostas Kloudas | Kostas Kloudas |
| [FLINK-11502](https://issues.apache.org/jira/browse/FLINK-11502) | Remove obsolete test FlinkActorTest |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-11497](https://issues.apache.org/jira/browse/FLINK-11497) | Remove obsolete test JobManagerLeaderElectionTest |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-11444](https://issues.apache.org/jira/browse/FLINK-11444) | Deprecate methods for uncoupling table API and table core |  Major | Table SQL / API | Timo Walther | sunjincheng |
| [FLINK-11362](https://issues.apache.org/jira/browse/FLINK-11362) | Port TaskManagerComponentsStartupShutdownTest |  Major | Tests | Till Rohrmann | Zili Chen |
| [FLINK-11359](https://issues.apache.org/jira/browse/FLINK-11359) | Remove LegacyAvroExternalJarProgramITCase |  Major | Tests | Till Rohrmann | Yangze Guo |
| [FLINK-11505](https://issues.apache.org/jira/browse/FLINK-11505) | Remove JobManagerRegistrationTest |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-11504](https://issues.apache.org/jira/browse/FLINK-11504) | Remove JobManagerConnectionTest |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-11503](https://issues.apache.org/jira/browse/FLINK-11503) | Remove TaskManagerLossFailsTasksTest |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-11513](https://issues.apache.org/jira/browse/FLINK-11513) | Port CliFrontendSavepointTest |  Major | Command Line Client, Tests | Zili Chen | Zili Chen |
| [FLINK-11512](https://issues.apache.org/jira/browse/FLINK-11512) | Port CliFrontendModifyTest |  Major | Command Line Client, Tests | Zili Chen | Zili Chen |
| [FLINK-11386](https://issues.apache.org/jira/browse/FLINK-11386) | Remove legacy ContaineredJobManager |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-11509](https://issues.apache.org/jira/browse/FLINK-11509) | Remove invalid test ClientConnectionTest |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-11367](https://issues.apache.org/jira/browse/FLINK-11367) | Port TaskManagerProcessReapingTestBase |  Major | Tests | Till Rohrmann | Gary Yao |
| [FLINK-11495](https://issues.apache.org/jira/browse/FLINK-11495) | Remove legacy job archiving paths |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11494](https://issues.apache.org/jira/browse/FLINK-11494) | Remove legacy WebRuntimeMonitor |  Major | Runtime / Web Frontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11368](https://issues.apache.org/jira/browse/FLINK-11368) | Port TaskManagerStartupTest |  Major | Tests | Till Rohrmann | Yun Tang |
| [FLINK-11515](https://issues.apache.org/jira/browse/FLINK-11515) | Port ClientTest |  Major | Tests | Zili Chen | Chesnay Schepler |
| [FLINK-11413](https://issues.apache.org/jira/browse/FLINK-11413) | Reporter filtering using "metrics.reporters" broken on Java 9+ |  Minor | Runtime / Configuration, Runtime / Metrics | Matthieu Bonneviot | Matthieu Bonneviot |
| [FLINK-11550](https://issues.apache.org/jira/browse/FLINK-11550) | Port ManualExactlyOnceTest |  Major | Connectors / Kinesis, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11514](https://issues.apache.org/jira/browse/FLINK-11514) | Port ClusterClientTest |  Major | Tests | Zili Chen | Chesnay Schepler |
| [FLINK-11540](https://issues.apache.org/jira/browse/FLINK-11540) | Remove StandaloneClusterClient |  Major | Command Line Client | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11571](https://issues.apache.org/jira/browse/FLINK-11571) | Remove JobManagerProcess |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11548](https://issues.apache.org/jira/browse/FLINK-11548) | Remove ClusterShutdownITCase |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-11549](https://issues.apache.org/jira/browse/FLINK-11549) | Remove ResourceManagerITCase |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-11507](https://issues.apache.org/jira/browse/FLINK-11507) | Remove invalid test JobClientActorTest |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-11508](https://issues.apache.org/jira/browse/FLINK-11508) | Remove invalid test AkkaJobManagerRetrieverTest |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-11511](https://issues.apache.org/jira/browse/FLINK-11511) | Remove legacy class JobAttachmentClientActor |  Major | Command Line Client | Zili Chen | Zili Chen |
| [FLINK-11364](https://issues.apache.org/jira/browse/FLINK-11364) | Port TaskManagerFailsITCase |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-11586](https://issues.apache.org/jira/browse/FLINK-11586) | Remove SlotSharingITCase |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-11544](https://issues.apache.org/jira/browse/FLINK-11544) | Add option to manually set job ID for job submissions via REST API |  Minor | Runtime / REST | Ufuk Celebi | Ufuk Celebi |
| [FLINK-11587](https://issues.apache.org/jira/browse/FLINK-11587) | Port CoLocationConstraintITCase |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-11486](https://issues.apache.org/jira/browse/FLINK-11486) | Remove RecoveryITCase for jobmanager |  Major | Tests | Shimin Yang | Till Rohrmann |
| [FLINK-11602](https://issues.apache.org/jira/browse/FLINK-11602) | Remove legacy AkkaJobManagerRetriever |  Major | . | Zili Chen | Zili Chen |
| [FLINK-11597](https://issues.apache.org/jira/browse/FLINK-11597) | Remove legacy JobManagerActorTestUtils |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-11578](https://issues.apache.org/jira/browse/FLINK-11578) | Port BackPressureStatsTrackerImplITCase |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-11545](https://issues.apache.org/jira/browse/FLINK-11545) | Add option to manually set job ID in StandaloneJobClusterEntryPoint |  Minor | Deployment / Kubernetes, Runtime / Coordination | Ufuk Celebi | Ufuk Celebi |
| [FLINK-11596](https://issues.apache.org/jira/browse/FLINK-11596) | Remove ResourceManagerTest |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-11577](https://issues.apache.org/jira/browse/FLINK-11577) | Port StackTraceSampleCoordinatorITCase |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-10778](https://issues.apache.org/jira/browse/FLINK-10778) | Update TypeSerializerSnapshotMigrationTestBase and subclasses for 1.7 |  Major | Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-10540](https://issues.apache.org/jira/browse/FLINK-10540) | Remove legacy FlinkMiniCluster |  Major | . | Zili Chen | Till Rohrmann |
| [FLINK-11592](https://issues.apache.org/jira/browse/FLINK-11592) | Port TaskManagerFailsWithSlotSharingITCase to new code base |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-11594](https://issues.apache.org/jira/browse/FLINK-11594) | Port TaskManagerRegistrationTest |  Major | . | Till Rohrmann | Gary Yao |
| [FLINK-11645](https://issues.apache.org/jira/browse/FLINK-11645) | Remove legacy JobManager |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-11648](https://issues.apache.org/jira/browse/FLINK-11648) | Remove MemoryArchivist |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-11649](https://issues.apache.org/jira/browse/FLINK-11649) | Remove legacy JobInfo |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-11650](https://issues.apache.org/jira/browse/FLINK-11650) | Remove legacy FlinkResourceManager |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-11588](https://issues.apache.org/jira/browse/FLINK-11588) | Migrate CopyableValueSerializer to use new serialization compatibility abstractions |  Major | API / Type Serialization System | Tzu-Li (Gordon) Tai | Igal Shilman |
| [FLINK-11330](https://issues.apache.org/jira/browse/FLINK-11330) | Migrate Scala-macro generated serializers to use new serialization compatibility abstractions |  Critical | API / Type Serialization System, Runtime / State Backends | Tzu-Li (Gordon) Tai | Igal Shilman |
| [FLINK-11652](https://issues.apache.org/jira/browse/FLINK-11652) | Remove legacy JobClient |  Major | Command Line Client | Zili Chen | Zili Chen |
| [FLINK-11601](https://issues.apache.org/jira/browse/FLINK-11601) | Remove legacy JobManagerGateway |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-11599](https://issues.apache.org/jira/browse/FLINK-11599) | Remove legacy JobClientActor |  Major | Command Line Client | Zili Chen | Zili Chen |
| [FLINK-11600](https://issues.apache.org/jira/browse/FLINK-11600) | Remove legacy JobListeningContext |  Major | Command Line Client | Zili Chen | Zili Chen |
| [FLINK-11598](https://issues.apache.org/jira/browse/FLINK-11598) | Remove legacy JobSubmissionClientActor |  Major | Command Line Client | Zili Chen | Zili Chen |
| [FLINK-11677](https://issues.apache.org/jira/browse/FLINK-11677) | Remove legacy ResourceManagerRunner |  Trivial | Runtime / Coordination | Till Rohrmann | Zili Chen |
| [FLINK-11678](https://issues.apache.org/jira/browse/FLINK-11678) | Remove suspend logic from ExecutionGraphCache |  Minor | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-11332](https://issues.apache.org/jira/browse/FLINK-11332) | Migrate Kryo-related serializers to use new serialization compatibility abstractions |  Major | API / Type Serialization System, Runtime / State Backends | Tzu-Li (Gordon) Tai | Igal Shilman |
| [FLINK-10897](https://issues.apache.org/jira/browse/FLINK-10897) | Support POJO state schema evolution |  Major | API / Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-11713](https://issues.apache.org/jira/browse/FLINK-11713) | Remove legacy mode from documentation |  Major | Documentation | Gary Yao | Gary Yao |
| [FLINK-11716](https://issues.apache.org/jira/browse/FLINK-11716) | Introduce Task Manager configuration option to customize address binding mechanism |  Minor | . | Alex | Alex |
| [FLINK-9964](https://issues.apache.org/jira/browse/FLINK-9964) | Add a CSV table format factory |  Major | Table SQL / API | Timo Walther | Jiayi Liao |
| [FLINK-10777](https://issues.apache.org/jira/browse/FLINK-10777) | Update TypeSerializerSnapshotMigrationITCase for Flink 1.7 |  Major | Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-10785](https://issues.apache.org/jira/browse/FLINK-10785) | Update FlinkKinesisConsumerMigrationTest for 1.7 |  Major | Connectors / Kinesis, Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-11485](https://issues.apache.org/jira/browse/FLINK-11485) | Migrate PojoSerializer to use new serialization compatibility abstractions |  Major | API / Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-9003](https://issues.apache.org/jira/browse/FLINK-9003) | Add operators with input type that goes through custom, stateful serialization |  Major | Tests | Stefan Richter | Andrey Zagrebin |
| [FLINK-11918](https://issues.apache.org/jira/browse/FLINK-11918) | Deprecated Window and Rename it to GroupWindow |  Major | Table SQL / API | sunjincheng | Hequn Cheng |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-11751](https://issues.apache.org/jira/browse/FLINK-11751) | Extend release notes for Flink 1.8 |  Blocker | Documentation | Aljoscha Krettek | Aljoscha Krettek |


