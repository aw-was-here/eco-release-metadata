
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

## Release 1.10.0 - 2020-02-11



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-14066](https://issues.apache.org/jira/browse/FLINK-14066) | Pyflink building failure in master and 1.9.0 version |  Blocker | API / Python, Build System | Xu Yang | Dian Fu |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-13779](https://issues.apache.org/jira/browse/FLINK-13779) | PrometheusPushGatewayReporter support push metrics with groupingKey |  Minor | Runtime / Metrics | Kaibo Zhou | Kaibo Zhou |
| [FLINK-13979](https://issues.apache.org/jira/browse/FLINK-13979) | Translate new streamfilesink docs to chinese |  Major | chinese-translation, Documentation | Gyula Fora | Liu Yang |
| [FLINK-14210](https://issues.apache.org/jira/browse/FLINK-14210) | Make InfluxDBReporter timeouts configurable |  Major | Runtime / Metrics | ouyangwulin | ouyangwulin |
| [FLINK-13025](https://issues.apache.org/jira/browse/FLINK-13025) | Elasticsearch 7.x support |  Major | Connectors / ElasticSearch | Keegan Standifer | vinoyang |
| [FLINK-13894](https://issues.apache.org/jira/browse/FLINK-13894) | Add TaskExecutor log link to subtask view |  Major | Runtime / Web Frontend | lining | lining |
| [FLINK-14803](https://issues.apache.org/jira/browse/FLINK-14803) | Support Consistency Level for InfluxDB metrics |  Minor | Runtime / Metrics | ouyangwulin | ouyangwulin |
| [FLINK-14862](https://issues.apache.org/jira/browse/FLINK-14862) | Fuse initalizeState and open passes in StreamTask#invoke |  Minor | Runtime / Task | Igal Shilman | Igal Shilman |
| [FLINK-14924](https://issues.apache.org/jira/browse/FLINK-14924) | CsvTableSource can not config empty column as null |  Major | Connectors / Common | Leonard Xu | Leonard Xu |
| [FLINK-11491](https://issues.apache.org/jira/browse/FLINK-11491) | Support all TPC-DS queries |  Major | Table SQL / API, Table SQL / Planner | Timo Walther | Leonard Xu |
| [FLINK-14132](https://issues.apache.org/jira/browse/FLINK-14132) | Extend core table system with pluggable modules |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-10556](https://issues.apache.org/jira/browse/FLINK-10556) | Integration with Apache Hive |  Major | Connectors / Hive, Table SQL / Ecosystem | Xuefu Zhang | Xuefu Zhang |
| [FLINK-14264](https://issues.apache.org/jira/browse/FLINK-14264) | Expose CheckpointBackend in checkpoint config RestAPI |  Major | Runtime / REST, Runtime / State Backends | Congxian Qiu | Congxian Qiu |
| [FLINK-15110](https://issues.apache.org/jira/browse/FLINK-15110) | Support exclusions for variables |  Major | Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12308](https://issues.apache.org/jira/browse/FLINK-12308) | Support python language in Flink Table API |  Major | Table SQL / API | sunjincheng | sunjincheng |
| [FLINK-14376](https://issues.apache.org/jira/browse/FLINK-14376) | Introduce the Executor abstraction (FLIP-73) |  Major | Client / Job Submission | Kostas Kloudas | Kostas Kloudas |
| [FLINK-13027](https://issues.apache.org/jira/browse/FLINK-13027) | StreamingFileSink bulk-encoded writer supports file rolling upon customized events |  Major | API / DataStream | Ying Xu | Ying Xu |
| [FLINK-14058](https://issues.apache.org/jira/browse/FLINK-14058) | FLIP-53 Fine-grained Operator Resource Management |  Major | Runtime / Coordination | Xintong Song | Zhu Zhu |
| [FLINK-9953](https://issues.apache.org/jira/browse/FLINK-9953) | Active Kubernetes integration |  Major | Deployment / Kubernetes, Runtime / Coordination | Till Rohrmann | Yang Wang |
| [FLINK-14013](https://issues.apache.org/jira/browse/FLINK-14013) | Support Flink Python User-Defined Stateless Function for Table |  Major | API / Python, Table SQL / API | Dian Fu |  |
| [FLINK-10725](https://issues.apache.org/jira/browse/FLINK-10725) | Support for Java 11 (LTS) |  Major | Build System | Sina Madani | Chesnay Schepler |
| [FLINK-13566](https://issues.apache.org/jira/browse/FLINK-13566) | Support checkpoint configuration through flink-conf.yaml |  Major | Runtime / Checkpointing, Runtime / Configuration | Gyula Fora |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-13186](https://issues.apache.org/jira/browse/FLINK-13186) | Remove dispatcherRetrievalService and dispatcherLeaderRetriever from RestClusterClient |  Minor | Runtime / REST | vinoyang | vinoyang |
| [FLINK-13310](https://issues.apache.org/jira/browse/FLINK-13310) | Remove shade-plugin configuration in hive-connector |  Minor | Build System, Connectors / Hive | Chesnay Schepler | Ji Liu |
| [FLINK-13535](https://issues.apache.org/jira/browse/FLINK-13535) | Do not abort transactions twice during KafkaProducer startup |  Major | Connectors / Kafka | Nico Kruber | Nico Kruber |
| [FLINK-13428](https://issues.apache.org/jira/browse/FLINK-13428) | StreamingFileSink allow part file name to be configurable |  Major | Connectors / FileSystem | João Boto | João Boto |
| [FLINK-12682](https://issues.apache.org/jira/browse/FLINK-12682) | StringWriter support custom row delimiter |  Major | Connectors / FileSystem | Xiaowei Wang | Xiaowei Wang |
| [FLINK-13517](https://issues.apache.org/jira/browse/FLINK-13517) | Restructure Hive Catalog documentation |  Major | Connectors / Hive, Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-13415](https://issues.apache.org/jira/browse/FLINK-13415) | Document how to use hive connector in scala shell |  Major | Documentation | Jeff Zhang | Jeff Zhang |
| [FLINK-12529](https://issues.apache.org/jira/browse/FLINK-12529) | Release record-deserializer buffers timely to improve the efficiency of heap usage on taskmanager |  Major | Runtime / Task | Haibo Sun | Haibo Sun |
| [FLINK-13747](https://issues.apache.org/jira/browse/FLINK-13747) | Remove some TODOs in Hive connector |  Minor | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-13317](https://issues.apache.org/jira/browse/FLINK-13317) | Merge NetUtils and ClientUtils |  Trivial | Command Line Client | Charles Xu | Charles Xu |
| [FLINK-13643](https://issues.apache.org/jira/browse/FLINK-13643) | Document the workaround for users with a different minor Hive version |  Major | Connectors / Hive | Xuefu Zhang | Terry Wang |
| [FLINK-13650](https://issues.apache.org/jira/browse/FLINK-13650) | Consolidate classloading utils from CommonTestUtils with ClassLoaderUtils |  Minor | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13697](https://issues.apache.org/jira/browse/FLINK-13697) | Drop deprecated ExternalCatalog API |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-13757](https://issues.apache.org/jira/browse/FLINK-13757) | Fix description is wrong of "IS NOT TRUE" function documentation |  Major | Documentation | hehuiyuan | hehuiyuan |
| [FLINK-13713](https://issues.apache.org/jira/browse/FLINK-13713) | Remove legacy Program interface. |  Major | . | Kostas Kloudas | Kostas Kloudas |
| [FLINK-13573](https://issues.apache.org/jira/browse/FLINK-13573) | Merge SubmittedJobGraph into JobGraph |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-13442](https://issues.apache.org/jira/browse/FLINK-13442) | Remove unnecessary notifySubpartitionConsumed method from view reader |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-13824](https://issues.apache.org/jira/browse/FLINK-13824) | Code duplication in tools/travis\_watchdog.sh to launch watchdog process |  Minor | Travis | Alex | Alex |
| [FLINK-13794](https://issues.apache.org/jira/browse/FLINK-13794) | Remove unused field printStatusDuringExecution in ClusterClient |  Major | Command Line Client | Zili Chen | Zili Chen |
| [FLINK-13841](https://issues.apache.org/jira/browse/FLINK-13841) | Extend Hive version support to all 1.2 and 2.3 versions |  Major | Connectors / Hive | Xuefu Zhang | Xuefu Zhang |
| [FLINK-13147](https://issues.apache.org/jira/browse/FLINK-13147) |  Duplicated code in 'if' conditional statement |  Trivial | Connectors / Hive | lixiaobao | Ji Liu |
| [FLINK-13240](https://issues.apache.org/jira/browse/FLINK-13240) | Wrong check argument error messages and comments in QueryableStateConfiguration |  Minor | Runtime / Queryable State | vinoyang | vinoyang |
| [FLINK-13877](https://issues.apache.org/jira/browse/FLINK-13877) | Support Hive version 2.1.0 and 2.1.1 |  Major | Connectors / Hive | Xuefu Zhang | Xuefu Zhang |
| [FLINK-9787](https://issues.apache.org/jira/browse/FLINK-9787) | Change ExecutionConfig#getGlobalJobParameters to return an instance of GlobalJobParameters instead of null if no custom globalJobParameters are set yet |  Minor | API / DataStream | Florian Schmidt | Ji Liu |
| [FLINK-13548](https://issues.apache.org/jira/browse/FLINK-13548) | Support priority of the Flink YARN application |  Major | Deployment / YARN | boxiu | boxiu |
| [FLINK-12847](https://issues.apache.org/jira/browse/FLINK-12847) | Update Kinesis Connectors to latest Apache licensed libraries |  Major | Connectors / Kinesis | Dyana Rose | Dyana Rose |
| [FLINK-13903](https://issues.apache.org/jira/browse/FLINK-13903) | Support Hive version 2.3.6 |  Major | Connectors / Hive | Xuefu Zhang | Xuefu Zhang |
| [FLINK-13770](https://issues.apache.org/jira/browse/FLINK-13770) | Bump Netty to 4.1.39.Final |  Major | BuildSystem / Shaded, Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-13891](https://issues.apache.org/jira/browse/FLINK-13891) | Increment flink-shaded version |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13912](https://issues.apache.org/jira/browse/FLINK-13912) | Remove ClusterClient#getClusterConnectionInfo |  Major | Command Line Client, Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-13930](https://issues.apache.org/jira/browse/FLINK-13930) | Support Hive version 3.1.x |  Major | Connectors / Hive | Xuefu Zhang | Xuefu Zhang |
| [FLINK-13967](https://issues.apache.org/jira/browse/FLINK-13967) | Generate full binary licensing via collect\_license\_files.sh |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13968](https://issues.apache.org/jira/browse/FLINK-13968) | Add travis check for the correctness of the binary licensing |  Major | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13388](https://issues.apache.org/jira/browse/FLINK-13388) | Update UI screenshots in the documentation to the new default Web Frontend |  Critical | Documentation, Runtime / Web Frontend | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-13898](https://issues.apache.org/jira/browse/FLINK-13898) | Migrate restart strategy config constants to RestartStrategyOptions |  Minor | Documentation, Runtime / Configuration, Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-14005](https://issues.apache.org/jira/browse/FLINK-14005) | Support Hive version 2.2.0 |  Major | Connectors / Hive | Xuefu Zhang | Xuefu Zhang |
| [FLINK-13921](https://issues.apache.org/jira/browse/FLINK-13921) | Simplify cluster level RestartStrategy configuration |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-13336](https://issues.apache.org/jira/browse/FLINK-13336) | Remove the legacy batch fault tolerance page and redirect it to the new task failure recovery page |  Minor | Documentation | Zhu Zhu | Zhu Zhu |
| [FLINK-11696](https://issues.apache.org/jira/browse/FLINK-11696) | Avoid to send mkdir requests to DFS from task side |  Major | Runtime / Checkpointing | Yun Tang | Yun Tang |
| [FLINK-13136](https://issues.apache.org/jira/browse/FLINK-13136) | Fix documentation error about stop job with restful api |  Major | Runtime / REST | vinoyang | vinoyang |
| [FLINK-13931](https://issues.apache.org/jira/browse/FLINK-13931) | Support Hive version 2.0.x |  Major | Connectors / Hive | Xuefu Zhang | Xuefu Zhang |
| [FLINK-11859](https://issues.apache.org/jira/browse/FLINK-11859) | Improve SpanningRecordSerializer performance by serializing record length to serialization buffer directly |  Major | Runtime / Network | Yingjie Cao | Yingjie Cao |
| [FLINK-9941](https://issues.apache.org/jira/browse/FLINK-9941) | Flush in ScalaCsvOutputFormat before close method |  Major | API / Scala | Ryan Tao | Jiayi Liao |
| [FLINK-13845](https://issues.apache.org/jira/browse/FLINK-13845) | Drop all the content of removed "Checkpointed" interface |  Major | Documentation | Yun Tang | Yun Tang |
| [FLINK-13864](https://issues.apache.org/jira/browse/FLINK-13864) | StreamingFileSink: Allow inherited classes to extend StreamingFileSink correctly |  Minor | Connectors / FileSystem | Kailash Hassan Dayanand | Ying Xu |
| [FLINK-14031](https://issues.apache.org/jira/browse/FLINK-14031) | flink-examples-table should add the blink planner dependency |  Minor | Examples | Jimmy Wong | Jimmy Wong |
| [FLINK-13143](https://issues.apache.org/jira/browse/FLINK-13143) | Remove CheckpointExceptionHandler relevant classes |  Major | Runtime / Checkpointing | vinoyang | vinoyang |
| [FLINK-13992](https://issues.apache.org/jira/browse/FLINK-13992) | Refactor Optional parameter in InputGateWithMetrics#updateMetrics |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-13656](https://issues.apache.org/jira/browse/FLINK-13656) | Upgrade Calcite dependency to 1.21 |  Major | Table SQL / Legacy Planner, Table SQL / Planner | Jark Wu | Danny Chen |
| [FLINK-13065](https://issues.apache.org/jira/browse/FLINK-13065) | Document example snippet correction using KeySelector |  Minor | API / DataStream, Documentation | Mans Singh | Mans Singh |
| [FLINK-14044](https://issues.apache.org/jira/browse/FLINK-14044) | Reducing synchronization in AsyncWaitOperator |  Major | Runtime / Task | Arvid Heise | Arvid Heise |
| [FLINK-10437](https://issues.apache.org/jira/browse/FLINK-10437) | WebOptions#ADDRESS used as deprecated key, despite not being deprecated |  Trivial | Runtime / REST | Zili Chen | Ji Liu |
| [FLINK-14335](https://issues.apache.org/jira/browse/FLINK-14335) | ExampleIntegrationTest in testing docs is incorrect |  Major | Documentation, Tests | Chesnay Schepler | Yangze Guo |
| [FLINK-14353](https://issues.apache.org/jira/browse/FLINK-14353) | Enable fork-reuse for table-planner |  Major | Table SQL / Planner, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14118](https://issues.apache.org/jira/browse/FLINK-14118) | Reduce the unnecessary flushing when there is no data available for flush |  Critical | Runtime / Network | Yingjie Cao | Yingjie Cao |
| [FLINK-14334](https://issues.apache.org/jira/browse/FLINK-14334) | ElasticSearch docs refer to non-existent ExceptionUtils.containsThrowable |  Major | Connectors / ElasticSearch, Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14341](https://issues.apache.org/jira/browse/FLINK-14341) | Flink-python builds with failure: no such option: --prefix |  Major | API / Python | liupengcheng | liupengcheng |
| [FLINK-14273](https://issues.apache.org/jira/browse/FLINK-14273) | Improve exception message when signature validation of UDAF is failed |  Critical | Table SQL / Planner | hailong wang | hailong wang |
| [FLINK-14349](https://issues.apache.org/jira/browse/FLINK-14349) | Create a Connector Descriptor for HBase so that user can connect HBase by TableEnvironment#connect |  Major | Connectors / HBase | Zheng Hu | Zheng Hu |
| [FLINK-13097](https://issues.apache.org/jira/browse/FLINK-13097) | Buffer depletion in SimpleCollectingOutputView throws non-obvious EOFException |  Trivial | Runtime / Task | Cyrille Chépélov |  |
| [FLINK-13008](https://issues.apache.org/jira/browse/FLINK-13008) | fix the findbugs warning in AggregationsFunction |  Minor | Table SQL / Runtime | wangpeibin | wangpeibin |
| [FLINK-14421](https://issues.apache.org/jira/browse/FLINK-14421) | Add 'L' when define a long value |  Minor | Table SQL / API | hailong wang | hailong wang |
| [FLINK-14296](https://issues.apache.org/jira/browse/FLINK-14296) | Improve handling of parameters nullabillity in parser module |  Major | Table SQL / API | Dawid Wysakowicz | Jiayi Liao |
| [FLINK-14008](https://issues.apache.org/jira/browse/FLINK-14008) | Auto-generate binary licensing |  Blocker | Build System | Till Rohrmann | Chesnay Schepler |
| [FLINK-14237](https://issues.apache.org/jira/browse/FLINK-14237) | No need to rename shipped Flink jar |  Major | Deployment / YARN | Zili Chen | Zili Chen |
| [FLINK-12848](https://issues.apache.org/jira/browse/FLINK-12848) | Method equals() in RowTypeInfo should consider fieldsNames |  Major | Table SQL / Planner | Aloys Zhang | Aloys Zhang |
| [FLINK-14401](https://issues.apache.org/jira/browse/FLINK-14401) | create FunctionDefinitionUtil to instantiate regular java class-based udf and add HiveFunctionDefinitionFactory to instantiate both flink and hive udf |  Major | Connectors / Hive, Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-14123](https://issues.apache.org/jira/browse/FLINK-14123) | Lower the default value of taskmanager.memory.fraction |  Major | Runtime / Configuration | liupengcheng | liupengcheng |
| [FLINK-14206](https://issues.apache.org/jira/browse/FLINK-14206) | Let fullRestart metric count fine grained restarts as well |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14199](https://issues.apache.org/jira/browse/FLINK-14199) | Only use dedicated/named classes for mailbox letters. |  Major | Runtime / Task | Arvid Heise | Arvid Heise |
| [FLINK-13873](https://issues.apache.org/jira/browse/FLINK-13873) | Expose RocksDB column\_family as variable |  Minor | Runtime / Metrics, Runtime / State Backends | ouyangwulin | ouyangwulin |
| [FLINK-14408](https://issues.apache.org/jira/browse/FLINK-14408) | In OldPlanner, UDF open method can not be invoke when SQL is optimized |  Major | Table SQL / Legacy Planner | hailong wang | hailong wang |
| [FLINK-12492](https://issues.apache.org/jira/browse/FLINK-12492) | Minor optimize the cep operator by avoiding unnecessary copy |  Major | Library / CEP | Aitozi | Aitozi |
| [FLINK-12092](https://issues.apache.org/jira/browse/FLINK-12092) | Doc of when \`onTimer(...)\` is called is inaccurate |  Minor | API / DataStream, Documentation | Ling Wang |  |
| [FLINK-12147](https://issues.apache.org/jira/browse/FLINK-12147) | InfluxDB throws errors if metric value is NaN/infinity |  Major | Runtime / Metrics | ouyangwulin | Piotr Przybylski |
| [FLINK-14549](https://issues.apache.org/jira/browse/FLINK-14549) | Improve exception message when schema is not matched between query and sink |  Minor | Table SQL / Planner | Leonard Xu | Leonard Xu |
| [FLINK-14563](https://issues.apache.org/jira/browse/FLINK-14563) | reuse HiveShim instance in Hive functions code path rather than creating new ones repeatedly |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-13034](https://issues.apache.org/jira/browse/FLINK-13034) | Improve the performance when checking whether mapstate is empty for RocksDBStateBackend |  Major | Runtime / State Backends | Yun Tang | Yun Tang |
| [FLINK-14608](https://issues.apache.org/jira/browse/FLINK-14608) | avoid using Java Streams in JsonRowDeserializationSchema |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Kurt Young | Jiayi Liao |
| [FLINK-14639](https://issues.apache.org/jira/browse/FLINK-14639) | Metrics User Scope docs refer to wrong class |  Minor | Documentation, Runtime / Metrics | hehuiyuan | Chesnay Schepler |
| [FLINK-14304](https://issues.apache.org/jira/browse/FLINK-14304) | Avoid task starvation with mailbox |  Major | Runtime / Task | Arvid Heise | Arvid Heise |
| [FLINK-14646](https://issues.apache.org/jira/browse/FLINK-14646) | Check non-null for key in KeyGroupStreamPartitioner |  Minor | Runtime / State Backends | Jiayi Liao | Jiayi Liao |
| [FLINK-14657](https://issues.apache.org/jira/browse/FLINK-14657) | Generalize and move YarnConfigUtils from flink-yarn to flink-core |  Major | Runtime / Configuration | Kostas Kloudas | Kostas Kloudas |
| [FLINK-14395](https://issues.apache.org/jira/browse/FLINK-14395) | Refactor ES 7 connectors to make them keep consistency with es 6 connectors |  Major | Connectors / ElasticSearch | vinoyang |  |
| [FLINK-14554](https://issues.apache.org/jira/browse/FLINK-14554) | Correct the comment of ExistingSavepoint#readKeyedState to generate java doc |  Major | API / State Processor, Documentation | vinoyang |  |
| [FLINK-14714](https://issues.apache.org/jira/browse/FLINK-14714) | BytesHashMap should not warn invoking stack when it want to spill |  Major | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-14693](https://issues.apache.org/jira/browse/FLINK-14693) | python tox checks fails on travis |  Major | API / Python | Kurt Young | Huang Xingbo |
| [FLINK-14704](https://issues.apache.org/jira/browse/FLINK-14704) | Remove useless SynchronousSavepointLatch |  Minor | Runtime / Checkpointing, Runtime / Task | Yun Tang | Yun Tang |
| [FLINK-14638](https://issues.apache.org/jira/browse/FLINK-14638) | move functions related docs to a new single, unified dir /dev/table/functions |  Major | Documentation | Bowen Li | Bowen Li |
| [FLINK-14627](https://issues.apache.org/jira/browse/FLINK-14627) | Refactor ExecutionGraph creation in tests as TestingExecutionGraphBuilder |  Major | Tests | Zili Chen | Zili Chen |
| [FLINK-14491](https://issues.apache.org/jira/browse/FLINK-14491) | Introduce ConfigOptions with Data Types |  Major | Runtime / Configuration | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-13729](https://issues.apache.org/jira/browse/FLINK-13729) | Update website generation dependencies |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-14728](https://issues.apache.org/jira/browse/FLINK-14728) | add reminder for users of potential thread safety issues of hive built-in function |  Major | Connectors / Hive, Documentation | Bowen Li | Bowen Li |
| [FLINK-14727](https://issues.apache.org/jira/browse/FLINK-14727) | update doc of supported Hive versions |  Major | Connectors / Hive, Documentation | Bowen Li | Bowen Li |
| [FLINK-14090](https://issues.apache.org/jira/browse/FLINK-14090) | Rework FunctionCatalog |  Major | Table SQL / API, Table SQL / Client, Table SQL / Planner | Bowen Li | Bowen Li |
| [FLINK-14699](https://issues.apache.org/jira/browse/FLINK-14699) | Move ClosureCleaner to flink-core |  Major | API / Type Serialization System | Zili Chen | Zili Chen |
| [FLINK-14801](https://issues.apache.org/jira/browse/FLINK-14801) | Improve the local variable name in SqlCreateTable#unparser() |  Trivial | Table SQL / API | xiaodao | xiaodao |
| [FLINK-14842](https://issues.apache.org/jira/browse/FLINK-14842) | add logging for loaded modules and functions |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-11935](https://issues.apache.org/jira/browse/FLINK-11935) | Remove DateTimeUtils pull-in and fix datetime casting problem |  Major | Table SQL / API | Rong Rong | Zhenghua Gao |
| [FLINK-14871](https://issues.apache.org/jira/browse/FLINK-14871) | Better formatter of toString method for StateTransition |  Major | Library / CEP | chaiyongqiang | chaiyongqiang |
| [FLINK-14643](https://issues.apache.org/jira/browse/FLINK-14643) | Deprecate metric \`fullRestarts\` |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14618](https://issues.apache.org/jira/browse/FLINK-14618) | Give more detailed debug information on akka framesize exception |  Minor | Documentation, Runtime / Coordination | Jacob Sevart | Jacob Sevart |
| [FLINK-14433](https://issues.apache.org/jira/browse/FLINK-14433) | Move generated Jaas conf file from /tmp directory to Job specific directory |  Major | API / DataStream | Congxian Qiu | Congxian Qiu |
| [FLINK-14811](https://issues.apache.org/jira/browse/FLINK-14811) | Replace Java Streams with for-loops in vertex input checking |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14104](https://issues.apache.org/jira/browse/FLINK-14104) | Bump Jackson to 2.10.1 |  Major | BuildSystem / Shaded | Nico Kruber | Nico Kruber |
| [FLINK-14481](https://issues.apache.org/jira/browse/FLINK-14481) | Modify the Flink valid socket port check to 0 to 65535. |  Minor | Runtime / Network | ming li | AT-Fieldless |
| [FLINK-14915](https://issues.apache.org/jira/browse/FLINK-14915) | SchedulingStrategyFactory#createInstance might not need to know JobGraph |  Major | Runtime / Coordination | Zili Chen | Zhu Zhu |
| [FLINK-14876](https://issues.apache.org/jira/browse/FLINK-14876) | Putting xercesImpl related classes into alwaysParentFirstLoaderPatterns |  Major | Runtime / Configuration | liupengcheng | liupengcheng |
| [FLINK-14873](https://issues.apache.org/jira/browse/FLINK-14873) | Make PackagedProgram#savepointSettings final |  Major | Client / Job Submission | Zili Chen | Zili Chen |
| [FLINK-14838](https://issues.apache.org/jira/browse/FLINK-14838) | Cleanup the description about container number config option in Scala and python shell doc |  Major | Documentation | vinoyang | vinoyang |
| [FLINK-14892](https://issues.apache.org/jira/browse/FLINK-14892) | Add documentation for checkpoint directory layout |  Major | Documentation, Runtime / Checkpointing | Congxian Qiu | Congxian Qiu |
| [FLINK-14948](https://issues.apache.org/jira/browse/FLINK-14948) | Implement shutDownCluster for MiniClusterClient |  Major | Client / Job Submission | Zili Chen | Zili Chen |
| [FLINK-14733](https://issues.apache.org/jira/browse/FLINK-14733) | Introduce ResourceProfile builder to enable flexible building |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14901](https://issues.apache.org/jira/browse/FLINK-14901) | Throw Error in MemoryUtils if there is problem with using system classes over reflection |  Major | Runtime / Task | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-14969](https://issues.apache.org/jira/browse/FLINK-14969) | Refactor CliFrontendRunWithYarnTest reflect to new execution codepath |  Minor | Tests | Zili Chen | Zili Chen |
| [FLINK-14709](https://issues.apache.org/jira/browse/FLINK-14709) | Allow outputting elements in close method of chained drivers. |  Major | Runtime / Task | David Morávek | David Morávek |
| [FLINK-14957](https://issues.apache.org/jira/browse/FLINK-14957) | Remove deprecated option -yst |  Major | Command Line Client, Deployment / YARN | Zili Chen | Jiayi Liao |
| [FLINK-14672](https://issues.apache.org/jira/browse/FLINK-14672) | Make Executor stateful in sql client |  Major | Table SQL / Client | Kurt Young | Zheng Hu |
| [FLINK-14962](https://issues.apache.org/jira/browse/FLINK-14962) | FindBugs warnings: Inefficient use of keySet iterator instead of entrySet iterator |  Minor | Connectors / Common, Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Dezhi Cai | Dezhi Cai |
| [FLINK-14935](https://issues.apache.org/jira/browse/FLINK-14935) | Improve mailbox exception handling |  Major | . | Arvid Heise | Piotr Nowojski |
| [FLINK-14943](https://issues.apache.org/jira/browse/FLINK-14943) | Expose callback and related fields for subclasses to override |  Major | Connectors / Kafka | Steven Zhen Wu |  |
| [FLINK-15016](https://issues.apache.org/jira/browse/FLINK-15016) | Remove unused dependency |  Minor | Build System | César Soto Valero | César Soto Valero |
| [FLINK-15041](https://issues.apache.org/jira/browse/FLINK-15041) | Remove default close() implementation from JobClient |  Major | Client / Job Submission | Kostas Kloudas | Kostas Kloudas |
| [FLINK-15039](https://issues.apache.org/jira/browse/FLINK-15039) | Remove default close() implementation from ClusterClient |  Major | Client / Job Submission | Kostas Kloudas | Kostas Kloudas |
| [FLINK-14997](https://issues.apache.org/jira/browse/FLINK-14997) | Avoid to call unnecessary delete within RocksDBState's mergeNamespaces implementation |  Minor | Runtime / State Backends | Yun Tang | Yun Tang |
| [FLINK-15044](https://issues.apache.org/jira/browse/FLINK-15044) | Clean up TpcdsResultComparator |  Major | Tests | Stephan Ewen | Stephan Ewen |
| [FLINK-14890](https://issues.apache.org/jira/browse/FLINK-14890) | TestHarness for KeyedBroadcastProcessFunction |  Minor | Tests | Jun Qin | Alexander Fedulov |
| [FLINK-14984](https://issues.apache.org/jira/browse/FLINK-14984) | Remove old WebUI |  Major | Runtime / Web Frontend | Chesnay Schepler | lamber-ken |
| [FLINK-13943](https://issues.apache.org/jira/browse/FLINK-13943) | Provide api to convert flink table to java List (blink planner) |  Major | Table SQL / Planner | Jeff Zhang | Caizhi Weng |
| [FLINK-14198](https://issues.apache.org/jira/browse/FLINK-14198) | Add type options to all flink python API doc |  Minor | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-15054](https://issues.apache.org/jira/browse/FLINK-15054) | Add FAQ section to IntelliJ setup |  Major | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15079](https://issues.apache.org/jira/browse/FLINK-15079) | BashJavaUtilsTest fails when running in a clean directory |  Blocker | Tests | Dawid Wysakowicz | Chesnay Schepler |
| [FLINK-15080](https://issues.apache.org/jira/browse/FLINK-15080) | Deploy OSS filesystem to maven central |  Major | Build System, Connectors / FileSystem, Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15113](https://issues.apache.org/jira/browse/FLINK-15113) | fs.azure.account.key not hidden from global configuration |  Major | Runtime / Web Frontend | Nico Kruber | Nico Kruber |
| [FLINK-15114](https://issues.apache.org/jira/browse/FLINK-15114) | Add execute result info for alter/create/drop database in sql client. |  Minor | Table SQL / Client | Terry Wang | Terry Wang |
| [FLINK-14346](https://issues.apache.org/jira/browse/FLINK-14346) | Performance issue with StringSerializer |  Major | API / Type Serialization System, Benchmarks | Roman Grebennikov | Roman Grebennikov |
| [FLINK-15068](https://issues.apache.org/jira/browse/FLINK-15068) | Disable RocksDB's local LOG by default |  Major | Runtime / State Backends | Nico Kruber | Nico Kruber |
| [FLINK-14970](https://issues.apache.org/jira/browse/FLINK-14970) | Doomed test for equality to NaN |  Trivial | Table SQL / Legacy Planner, Table SQL / Planner | Dezhi Cai | Dezhi Cai |
| [FLINK-14993](https://issues.apache.org/jira/browse/FLINK-14993) | Pass all reporter-specific settings via the FrontMetricGroup |  Major | Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13993](https://issues.apache.org/jira/browse/FLINK-13993) | Using FlinkUserCodeClassLoaders to load the user class in the perjob mode |  Major | Runtime / Coordination | Guowei Ma | Guowei Ma |
| [FLINK-15109](https://issues.apache.org/jira/browse/FLINK-15109) | InternalTimerServiceImpl references restored state after use, taking up resources unnecessarily |  Trivial | Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-14133](https://issues.apache.org/jira/browse/FLINK-14133) | Improve batch sql and hive integrate performance milestone-1 |  Major | Connectors / Hive, Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-15134](https://issues.apache.org/jira/browse/FLINK-15134) | Delete temporary files created in YarnClusterDescriptor |  Major | Client / Job Submission | Zili Chen | Zili Chen |
| [FLINK-14378](https://issues.apache.org/jira/browse/FLINK-14378) | Cleanup rocksDB lib folder if fail to load library |  Major | Runtime / State Backends | Yun Tang | Yun Tang |
| [FLINK-13947](https://issues.apache.org/jira/browse/FLINK-13947) | Check Hive shim serialization in Hive UDF wrapper classes and test coverage |  Major | Connectors / Hive | Xuefu Zhang | Xuefu Zhang |
| [FLINK-15161](https://issues.apache.org/jira/browse/FLINK-15161) | Introduce TypeTransformation interface and basic transformations |  Major | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-15233](https://issues.apache.org/jira/browse/FLINK-15233) | Improve Kafka connector properties make append update-mode as default |  Critical | Connectors / Kafka | Jark Wu | Jark Wu |
| [FLINK-15228](https://issues.apache.org/jira/browse/FLINK-15228) | Drop vendor specific deployment documentation |  Major | Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-15201](https://issues.apache.org/jira/browse/FLINK-15201) | Remove verifications in context env for detach execution |  Major | Client / Job Submission | Zili Chen | Zili Chen |
| [FLINK-15291](https://issues.apache.org/jira/browse/FLINK-15291) | Rename WatermarkSepc#getWatermarkExpressionString to getWatermarkExpr |  Major | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-14170](https://issues.apache.org/jira/browse/FLINK-14170) | Support hadoop \< 2.7 with StreamingFileSink.BulkFormatBuilder |  Major | Connectors / FileSystem | Bhagavan | Bhagavan |
| [FLINK-15015](https://issues.apache.org/jira/browse/FLINK-15015) | add documentation for using HiveVectorizedOrcSplitReader in hive connector |  Major | Connectors / Hive, Documentation | Bowen Li | Jingsong Lee |
| [FLINK-15311](https://issues.apache.org/jira/browse/FLINK-15311) | Lz4BlockCompressionFactory should use native compressor instead of java unsafe |  Blocker | Runtime / Network | Jingsong Lee | Yingjie Cao |
| [FLINK-15243](https://issues.apache.org/jira/browse/FLINK-15243) | Add documentation about how to set line feed as delimiter for csv format |  Major | Documentation, Table SQL / API | Jark Wu | Jingsong Lee |
| [FLINK-15374](https://issues.apache.org/jira/browse/FLINK-15374) | Update descriptions for jvm overhead config options |  Blocker | Runtime / Configuration | Xintong Song | Xintong Song |
| [FLINK-15373](https://issues.apache.org/jira/browse/FLINK-15373) | Update descriptions for framework / task off-heap memory config options |  Blocker | Runtime / Configuration | Xintong Song | Xintong Song |
| [FLINK-15372](https://issues.apache.org/jira/browse/FLINK-15372) | Use shorter config keys for FLIP-49 total memory config options |  Blocker | Runtime / Configuration | Xintong Song | Xintong Song |
| [FLINK-14249](https://issues.apache.org/jira/browse/FLINK-14249) | Complete partition support for batch sql |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-15389](https://issues.apache.org/jira/browse/FLINK-15389) | JDBCUpsertOutputFormat  no need to create schedule flush when  flushMaxSize = 1 |  Minor | Connectors / JDBC | xiaodao | xiaodao |
| [FLINK-15446](https://issues.apache.org/jira/browse/FLINK-15446) | Improve "Connect to External Systems" documentation page |  Major | Documentation, Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-15371](https://issues.apache.org/jira/browse/FLINK-15371) | Change FLIP-49 memory configurations to use the new memory type config options |  Blocker | Runtime / Configuration | Xintong Song | Xintong Song |
| [FLINK-15430](https://issues.apache.org/jira/browse/FLINK-15430) | Fix Java 64K method compiling limitation for blink planner. |  Major | Table SQL / Planner | Benchao Li | Benchao Li |
| [FLINK-15369](https://issues.apache.org/jira/browse/FLINK-15369) | MiniCluster use fixed network / managed memory sizes by default |  Blocker | Runtime / Configuration | Xintong Song | Xintong Song |
| [FLINK-15367](https://issues.apache.org/jira/browse/FLINK-15367) | Handle backwards compatibility of "taskmanager.heap.size" differently for standalone / active setups |  Blocker | Runtime / Configuration | Xintong Song | Xintong Song |
| [FLINK-11135](https://issues.apache.org/jira/browse/FLINK-11135) | Reorder Hadoop config loading in HadoopUtils |  Minor | Deployment / YARN, Runtime / Configuration | Paul Lin | Paul Lin |
| [FLINK-15499](https://issues.apache.org/jira/browse/FLINK-15499) | No debug log describes the host of a TM before any task is deployed to it  in YARN mode |  Major | Deployment / YARN | Zhu Zhu | Xintong Song |
| [FLINK-14825](https://issues.apache.org/jira/browse/FLINK-14825) | Rework state processor api documentation |  Major | API / State Processor, Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-9644](https://issues.apache.org/jira/browse/FLINK-9644) | Restore a job from savepoint in a local stream environment |  Major | Runtime / State Backends, Runtime / Task | Manuel Haddadi |  |
| [FLINK-15319](https://issues.apache.org/jira/browse/FLINK-15319) | Add configurable download timeout/retry to AbstractDownloadCache |  Major | Test Infrastructure | Yun Tang | Zheng Hu |
| [FLINK-15520](https://issues.apache.org/jira/browse/FLINK-15520) | Prometheus E2E test should use DownloadCache |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15495](https://issues.apache.org/jira/browse/FLINK-15495) | Set default planner for SQL Client to Blink planner |  Major | Table SQL / Client | Jark Wu | Jark Wu |
| [FLINK-15174](https://issues.apache.org/jira/browse/FLINK-15174) | FLINK security using PKI mutual auth needs certificate pinning or Private CA |  Critical | Runtime / Configuration, Runtime / REST | Bhagavan | Bhagavan |
| [FLINK-15292](https://issues.apache.org/jira/browse/FLINK-15292) | Rename Executor interface to PipelineExecutor |  Major | Client / Job Submission | Kostas Kloudas | Kostas Kloudas |
| [FLINK-15559](https://issues.apache.org/jira/browse/FLINK-15559) | Missing {{site.baseurl}} in some docs |  Major | Documentation | Benchao Li | Benchao Li |
| [FLINK-15554](https://issues.apache.org/jira/browse/FLINK-15554) | Bump jetty-util-ajax to 9.3.24 |  Major | Build System, Connectors / FileSystem | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15517](https://issues.apache.org/jira/browse/FLINK-15517) | Use back 'network' in 'shuffle' memory config option names |  Blocker | Runtime / Configuration, Runtime / Task | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-15521](https://issues.apache.org/jira/browse/FLINK-15521) | TestUtils#copyDirectory should follow symbolic links |  Minor | Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14853](https://issues.apache.org/jira/browse/FLINK-14853) | Use higher granularity units in generated docs for Duration & MemorySize if possible |  Major | Documentation | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-15605](https://issues.apache.org/jira/browse/FLINK-15605) | Remove deprecated in 1.9 StateTtlConfig.TimeCharacteristic |  Major | Runtime / State Backends | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-15606](https://issues.apache.org/jira/browse/FLINK-15606) | Deprecate enable default background cleanup of state with TTL |  Major | Runtime / State Backends | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-15479](https://issues.apache.org/jira/browse/FLINK-15479) | Override  explainSource method in JDBCTableSource |  Major | Connectors / JDBC | hailong wang | hailong wang |
| [FLINK-15657](https://issues.apache.org/jira/browse/FLINK-15657) | Fix the python table api doc link in Python API tutorial |  Major | API / Python, Documentation | Huang Xingbo | Huang Xingbo |
| [FLINK-15375](https://issues.apache.org/jira/browse/FLINK-15375) | Improve MemorySize to print / parse with better readability. |  Critical | Runtime / Configuration | Xintong Song | Xintong Song |
| [FLINK-15726](https://issues.apache.org/jira/browse/FLINK-15726) | Fixing error message in StreamExecTableSourceScan |  Major | Table SQL / Planner | Benoît Paris | Benoît Paris |
| [FLINK-15684](https://issues.apache.org/jira/browse/FLINK-15684) | Add "taskmanager.memory.flink.size" to the common options |  Blocker | Documentation, Runtime / Configuration | Stephan Ewen | Dawid Wysakowicz |
| [FLINK-15519](https://issues.apache.org/jira/browse/FLINK-15519) | Preserve logs from BashJavaUtils and make them part of TM logs |  Blocker | Runtime / Configuration | Andrey Zagrebin | Dawid Wysakowicz |
| [FLINK-15763](https://issues.apache.org/jira/browse/FLINK-15763) | Check or set necessary resource configuration options to defaults for local execution ignoring FLIP-49 |  Blocker | Runtime / Task | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-15701](https://issues.apache.org/jira/browse/FLINK-15701) | Allows transfer.sh to retry when fails to uploads logs |  Major | Travis | Yun Gao | Yun Gao |
| [FLINK-15768](https://issues.apache.org/jira/browse/FLINK-15768) | Consolidate executor related class into same module in flink-clients |  Minor | Client / Job Submission | Zhenqiu Huang |  |
| [FLINK-15806](https://issues.apache.org/jira/browse/FLINK-15806) | Update recommended way to shut down detached Yarn session cluster |  Major | Deployment / YARN | Till Rohrmann | Till Rohrmann |
| [FLINK-15916](https://issues.apache.org/jira/browse/FLINK-15916) | Remove outdated sections for Network Buffers and Async Checkpoints from the Large State Tuning Guide |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-15920](https://issues.apache.org/jira/browse/FLINK-15920) | Show thread name in logs on CI |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-15181](https://issues.apache.org/jira/browse/FLINK-15181) | Fix minor typos and mistakes in table documentation |  Trivial | Documentation | Mans Singh | Mans Singh |
| [FLINK-15942](https://issues.apache.org/jira/browse/FLINK-15942) | Improve logging of infinite resource profile |  Major | Runtime / Configuration, Runtime / Task | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-14785](https://issues.apache.org/jira/browse/FLINK-14785) | Enable execution configuration from Configuration object |  Major | Runtime / Configuration | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-13980](https://issues.apache.org/jira/browse/FLINK-13980) | FLIP-49 Unified Memory Configuration for TaskExecutors |  Major | Runtime / Configuration, Runtime / Coordination | Xintong Song | Xintong Song |
| [FLINK-12477](https://issues.apache.org/jira/browse/FLINK-12477) | Change threading-model in StreamTask to a mailbox-based approach |  Major | Runtime / Task | Stefan Richter |  |
| [FLINK-16540](https://issues.apache.org/jira/browse/FLINK-16540) | Fully specify bugfix version of Docker containers in Flink Playground docker-compose.yaml files |  Major | Examples | Fabian Hueske | Fabian Hueske |
| [FLINK-14054](https://issues.apache.org/jira/browse/FLINK-14054) | Enable checkpointing via job configuration |  Major | Runtime / Checkpointing, Runtime / Configuration | Jun Qin |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-13229](https://issues.apache.org/jira/browse/FLINK-13229) | ExpressionReducer with udf bug in blink |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-13275](https://issues.apache.org/jira/browse/FLINK-13275) | Race condition in SourceStreamTaskTest.finishingIgnoresExceptions() |  Critical | Tests | Kostas Kloudas | Kostas Kloudas |
| [FLINK-12171](https://issues.apache.org/jira/browse/FLINK-12171) | The network buffer memory size should not be checked against the heap size on the TM side |  Major | Runtime / Network | Yun Gao | Yun Gao |
| [FLINK-13498](https://issues.apache.org/jira/browse/FLINK-13498) | Reduce Kafka producer startup time by aborting transactions in parallel |  Major | Connectors / Kafka | Nico Kruber | Nico Kruber |
| [FLINK-13637](https://issues.apache.org/jira/browse/FLINK-13637) | Anchors not working in document(building.md, common.md, queryable\_state.md) |  Major | Documentation | Hequn Cheng | Hequn Cheng |
| [FLINK-13562](https://issues.apache.org/jira/browse/FLINK-13562) | throws exception when FlinkRelMdColumnInterval meets two stage stream group aggregate |  Critical | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-13563](https://issues.apache.org/jira/browse/FLINK-13563) | TumblingGroupWindow should implement toString method |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-13526](https://issues.apache.org/jira/browse/FLINK-13526) | Switching to a non existing catalog or database crashes sql-client |  Critical | Table SQL / Client | Rui Li | Rui Li |
| [FLINK-13489](https://issues.apache.org/jira/browse/FLINK-13489) | Heavy deployment end-to-end test fails on Travis with TM heartbeat timeout |  Critical | Test Infrastructure | Tzu-Li (Gordon) Tai | Yingjie Cao |
| [FLINK-13534](https://issues.apache.org/jira/browse/FLINK-13534) | Unable to query Hive table with decimal column |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-13704](https://issues.apache.org/jira/browse/FLINK-13704) | TPC-H end-to-end test (Blink planner) fails on Travis |  Critical | Table SQL / Runtime | Till Rohrmann | Jingsong Lee |
| [FLINK-13663](https://issues.apache.org/jira/browse/FLINK-13663) | SQL Client end-to-end test for modern Kafka failed on Travis |  Critical | Connectors / Kafka, Table SQL / Client, Tests | Till Rohrmann | Alex |
| [FLINK-13585](https://issues.apache.org/jira/browse/FLINK-13585) | Fix sporadical deallock in TaskAsyncCallTest#testSetsUserCodeClassLoader() |  Critical | Runtime / Task, Tests | Gary Yao | Biao Liu |
| [FLINK-13501](https://issues.apache.org/jira/browse/FLINK-13501) | Fixes a few issues in documentation for Hive integration |  Critical | Connectors / Hive, Table SQL / API | Xuefu Zhang | Terry Wang |
| [FLINK-13705](https://issues.apache.org/jira/browse/FLINK-13705) | Broken links in Hive documentation |  Critical | Connectors / Hive | Till Rohrmann | Seth Wiesman |
| [FLINK-13530](https://issues.apache.org/jira/browse/FLINK-13530) | AbstractServerTest failed on Travis |  Major | Runtime / Queryable State, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13127](https://issues.apache.org/jira/browse/FLINK-13127) | "--yarnship" doesn't support resource classloading |  Major | Deployment / YARN | David Morávek | David Morávek |
| [FLINK-12987](https://issues.apache.org/jira/browse/FLINK-12987) | DescriptiveStatisticsHistogram#getCount does not return the number of elements seen |  Major | Runtime / Metrics | Nico Kruber | Nico Kruber |
| [FLINK-13688](https://issues.apache.org/jira/browse/FLINK-13688) | HiveCatalogUseBlinkITCase.testBlinkUdf constantly failed with 1.9.0-rc2 |  Major | Connectors / Hive, Tests | Kurt Young | Jingsong Lee |
| [FLINK-13737](https://issues.apache.org/jira/browse/FLINK-13737) | flink-dist should add provided dependency on flink-examples-table |  Major | Examples | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-13738](https://issues.apache.org/jira/browse/FLINK-13738) | NegativeArraySizeException in LongHybridHashTable |  Major | Table SQL / Runtime | Robert Metzger | Jingsong Lee |
| [FLINK-13739](https://issues.apache.org/jira/browse/FLINK-13739) | BinaryRowTest.testWriteString() fails in some environments |  Major | Table SQL / Runtime | Robert Metzger | Jingsong Lee |
| [FLINK-13759](https://issues.apache.org/jira/browse/FLINK-13759) | All builds for master branch are failed during compile stage |  Blocker | Build System | Jark Wu | Jark Wu |
| [FLINK-13760](https://issues.apache.org/jira/browse/FLINK-13760) | Fix hardcode Scala version dependency in hive connector |  Blocker | Build System, Connectors / Hive | Jark Wu | Jark Wu |
| [FLINK-11630](https://issues.apache.org/jira/browse/FLINK-11630) | TaskExecutor does not wait for Task termination when terminating itself |  Major | Runtime / Coordination | Till Rohrmann | boshu Zheng |
| [FLINK-13742](https://issues.apache.org/jira/browse/FLINK-13742) | Fix code generation when aggregation contains both distinct aggregate with and without filter |  Major | Table SQL / Planner | Jark Wu | Shuo Cheng |
| [FLINK-13599](https://issues.apache.org/jira/browse/FLINK-13599) | Kinesis end-to-end test failed on Travis |  Critical | Connectors / Kinesis, Tests | Till Rohrmann | Andrey Zagrebin |
| [FLINK-13588](https://issues.apache.org/jira/browse/FLINK-13588) | StreamTask.handleAsyncException throws away the exception cause |  Major | Runtime / Task | John Lonergan | John Lonergan |
| [FLINK-13711](https://issues.apache.org/jira/browse/FLINK-13711) | Hive array values not properly displayed in SQL CLI |  Major | Table SQL / Client | Rui Li | Rui Li |
| [FLINK-13741](https://issues.apache.org/jira/browse/FLINK-13741) | "SHOW FUNCTIONS" should include Flink built-in functions' names |  Critical | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-13564](https://issues.apache.org/jira/browse/FLINK-13564) | blink planner should also throw exception if constant with YEAR TO MONTH resolution was used for group windows |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-13806](https://issues.apache.org/jira/browse/FLINK-13806) | Metric Fetcher floods the JM log with errors when TM is lost |  Critical | Runtime / Metrics | Stephan Ewen | Chesnay Schepler |
| [FLINK-13761](https://issues.apache.org/jira/browse/FLINK-13761) | \`SplitStream\` should be deprecated because \`SplitJavaStream\` is deprecated |  Major | API / Scala | zhihao zhang | zhihao zhang |
| [FLINK-13772](https://issues.apache.org/jira/browse/FLINK-13772) | GroupWindowTableAggregateITCase tests fail on Travis |  Critical | Table SQL / Planner | Till Rohrmann |  |
| [FLINK-13825](https://issues.apache.org/jira/browse/FLINK-13825) | The original plugins dir is not restored after e2e test run |  Minor | . | Alex | Alex |
| [FLINK-13831](https://issues.apache.org/jira/browse/FLINK-13831) | Free Slots / All Slots display error |  Critical | Runtime / Web Frontend | Yu Wang | Yu Wang |
| [FLINK-13728](https://issues.apache.org/jira/browse/FLINK-13728) | Fix wrong closing tag order in sidenav |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-13853](https://issues.apache.org/jira/browse/FLINK-13853) | Running HA (file, async) end-to-end test failed on Travis |  Critical | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-13823](https://issues.apache.org/jira/browse/FLINK-13823) | Incorrect debug log in CompileUtils |  Minor | Table SQL / Planner | wangsan | wangsan |
| [FLINK-13531](https://issues.apache.org/jira/browse/FLINK-13531) | Do not print log and call 'release' if no requests should be evicted from the shared slot |  Minor | Runtime / Coordination | Yun Gao | Yun Gao |
| [FLINK-13807](https://issues.apache.org/jira/browse/FLINK-13807) | Flink-avro unit tests fails if the character encoding in the environment is not default to UTF-8 |  Minor | . | Ethan Li | Zili Chen |
| [FLINK-13789](https://issues.apache.org/jira/browse/FLINK-13789) | Transactional Id Generation fails due to user code impacting formatting string |  Major | . | Hao Dang | Hao Dang |
| [FLINK-13875](https://issues.apache.org/jira/browse/FLINK-13875) | Add missing redirects to the flink documentation |  Major | Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-13826](https://issues.apache.org/jira/browse/FLINK-13826) | Support INSERT OVERWRITE for Hive connector |  Major | Connectors / Hive, Table SQL / Planner | Rui Li | Rui Li |
| [FLINK-13805](https://issues.apache.org/jira/browse/FLINK-13805) | Bad Error Message when TaskManager is lost |  Blocker | Runtime / Coordination | Stephan Ewen | Till Rohrmann |
| [FLINK-13769](https://issues.apache.org/jira/browse/FLINK-13769) | BatchFineGrainedRecoveryITCase.testProgram failed on Travis |  Critical | Runtime / Coordination | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-13514](https://issues.apache.org/jira/browse/FLINK-13514) | StreamTaskTest.testAsyncCheckpointingConcurrentCloseAfterAcknowledge unstable |  Critical | Runtime / Task, Tests | Chesnay Schepler | Aljoscha Krettek |
| [FLINK-13907](https://issues.apache.org/jira/browse/FLINK-13907) | Master documentation cannot be built |  Major | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13828](https://issues.apache.org/jira/browse/FLINK-13828) | Deprecate ConfigConstants.LOCAL\_START\_WEBSERVER |  Major | Runtime / Configuration | Zili Chen | Zili Chen |
| [FLINK-13814](https://issues.apache.org/jira/browse/FLINK-13814) | HiveTableSink should strip quotes from partition values |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-13935](https://issues.apache.org/jira/browse/FLINK-13935) | YarnPrioritySchedulingITCase fails on hadoop 2.4.1 |  Critical | Deployment / YARN, Tests | Chesnay Schepler | Till Rohrmann |
| [FLINK-13906](https://issues.apache.org/jira/browse/FLINK-13906) | ExecutionConfigTests.test\_equals\_and\_hash failed on Travis |  Critical | API / Python | Till Rohrmann | Wei Zhong (old) |
| [FLINK-13568](https://issues.apache.org/jira/browse/FLINK-13568) | DDL create table doesn't allow STRING data type |  Critical | Table SQL / API | Xuefu Zhang | Danny Chen |
| [FLINK-12164](https://issues.apache.org/jira/browse/FLINK-12164) | JobMasterTest.testJobFailureWhenTaskExecutorHeartbeatTimeout is unstable |  Critical | Runtime / Coordination | Aljoscha Krettek | Biao Liu |
| [FLINK-13897](https://issues.apache.org/jira/browse/FLINK-13897) | OSS FS NOTICE file is placed in wrong directory |  Blocker | Build System, FileSystems | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13887](https://issues.apache.org/jira/browse/FLINK-13887) | Ensure defaultInputDependencyConstraint to be non-null when setting it in ExecutionConfig |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-13059](https://issues.apache.org/jira/browse/FLINK-13059) | Cassandra Connector leaks Semaphore on Exception; hangs on close |  Major | Connectors / Cassandra | Mads Chr. Olesen | Mads Chr. Olesen |
| [FLINK-13936](https://issues.apache.org/jira/browse/FLINK-13936) | NOTICE-binary is outdated |  Blocker | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13966](https://issues.apache.org/jira/browse/FLINK-13966) | Jar sorting in collect\_license\_files.sh is locale dependent |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13952](https://issues.apache.org/jira/browse/FLINK-13952) | PartitionableTableSink can not work with OverwritableTableSink |  Major | Table SQL / Planner | Jingsong Lee | Rui Li |
| [FLINK-13591](https://issues.apache.org/jira/browse/FLINK-13591) | 'Completed Job List' in Flink web doesn't display right when job name is very long |  Minor | Runtime / Web Frontend | Kurt Young | Yadong Xie |
| [FLINK-13892](https://issues.apache.org/jira/browse/FLINK-13892) | HistoryServerTest failed on Travis |  Major | Runtime / Coordination, Runtime / REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12501](https://issues.apache.org/jira/browse/FLINK-12501) | AvroTypeSerializer does not work with types generated by avrohugger |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-14009](https://issues.apache.org/jira/browse/FLINK-14009) | Cron jobs broken due to verifying incorrect NOTICE-binary file |  Blocker | Build System | Till Rohrmann | Till Rohrmann |
| [FLINK-14043](https://issues.apache.org/jira/browse/FLINK-14043) | SavepointMigrationTestBase is super slow |  Major | Runtime / State Backends, Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-13653](https://issues.apache.org/jira/browse/FLINK-13653) | ResultStore should avoid using RowTypeInfo when creating a result |  Major | Table SQL / Client | Rui Li | Rui Li |
| [FLINK-14029](https://issues.apache.org/jira/browse/FLINK-14029) | Update Flink's Mesos scheduling behavior to reject all expired offers |  Minor | . | Piyush Narang | Piyush Narang |
| [FLINK-14107](https://issues.apache.org/jira/browse/FLINK-14107) | Kinesis consumer record emitter deadlock under event time alignment |  Major | Connectors / Kinesis | Thomas Weise | Thomas Weise |
| [FLINK-13896](https://issues.apache.org/jira/browse/FLINK-13896) | Scala 2.11 maven compile should target Java 1.8 |  Major | Build System | Terry Wang | Terry Wang |
| [FLINK-14140](https://issues.apache.org/jira/browse/FLINK-14140) | The Flink Logo Displayed in Flink Python Shell is Broken |  Trivial | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-14150](https://issues.apache.org/jira/browse/FLINK-14150) | Unnecessary \_\_pycache\_\_ directories appears in pyflink.zip |  Trivial | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-14094](https://issues.apache.org/jira/browse/FLINK-14094) | Fix OperatorIOMetricGroup repeat register problem |  Major | Runtime / Metrics | xymaqingxiang | xymaqingxiang |
| [FLINK-14119](https://issues.apache.org/jira/browse/FLINK-14119) | Clean idle state for RetractableTopNFunction |  Major | Table SQL / Planner | Jark Wu | Alec |
| [FLINK-14145](https://issues.apache.org/jira/browse/FLINK-14145) | getLatestCheckpoint(true) returns wrong checkpoint |  Major | Runtime / Checkpointing | Ufuk Celebi | Gyula Fora |
| [FLINK-13746](https://issues.apache.org/jira/browse/FLINK-13746) | Elasticsearch (v2.3.5) sink end-to-end test fails on Travis |  Critical | Connectors / ElasticSearch, Tests | Till Rohrmann | Zijie Lu |
| [FLINK-14076](https://issues.apache.org/jira/browse/FLINK-14076) | 'ClassNotFoundException: KafkaException' on Flink v1.9 w/ checkpointing |  Major | Connectors / Kafka, Runtime / Checkpointing | Jeffrey Martin | Jeffrey Martin |
| [FLINK-14010](https://issues.apache.org/jira/browse/FLINK-14010) | Dispatcher & JobManagers don't give up leadership when AM is shut down |  Critical | Deployment / YARN, Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-14139](https://issues.apache.org/jira/browse/FLINK-14139) | Fix potential memory leak of rest server when using session/standalone cluster |  Major | Runtime / REST | Yingjie Cao | Yingjie Cao |
| [FLINK-14186](https://issues.apache.org/jira/browse/FLINK-14186) | Nightly e2e-misc-jdk11 fails complaining unrecognized VM option |  Blocker | Tests | Yu Li | Yun Gao |
| [FLINK-14195](https://issues.apache.org/jira/browse/FLINK-14195) | Nightly connectors-jdk11 fails because of missing jaxb classes |  Blocker | Build System, Connectors / FileSystem, Tests | Yu Li | Yingjie Cao |
| [FLINK-14120](https://issues.apache.org/jira/browse/FLINK-14120) | SystemProcessingTimeServiceTest.testImmediateShutdown failed on Travis |  Critical | API / DataStream | Till Rohrmann | Anatolii Siuniaev |
| [FLINK-13386](https://issues.apache.org/jira/browse/FLINK-13386) | Fix some frictions in the new default Web UI |  Critical | Runtime / Web Frontend | Dawid Wysakowicz | Yadong Xie |
| [FLINK-14049](https://issues.apache.org/jira/browse/FLINK-14049) | Update error message for failed partition updates to include task name |  Critical | Runtime / Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-14179](https://issues.apache.org/jira/browse/FLINK-14179) | Fix the description of 'SHOW FUNCTIONS' in SQL Client |  Major | Table SQL / Client | Canbin Zheng | Canbin Zheng |
| [FLINK-14288](https://issues.apache.org/jira/browse/FLINK-14288) | Add Py4j  NOTICE for source release |  Blocker | API / Python | sunjincheng | Dian Fu |
| [FLINK-14276](https://issues.apache.org/jira/browse/FLINK-14276) | Scala quickstart project does not compile on Java9+ |  Critical | Tests | Till Rohrmann | Chesnay Schepler |
| [FLINK-13827](https://issues.apache.org/jira/browse/FLINK-13827) | Shell variable should be escaped in start-scala-shell.sh |  Major | Scala Shell | Zili Chen | Zili Chen |
| [FLINK-13524](https://issues.apache.org/jira/browse/FLINK-13524) | Typo in Builder method name from Elasticsearch example |  Trivial | Connectors / ElasticSearch, Documentation | Alberto Romero | Alberto Romero |
| [FLINK-14315](https://issues.apache.org/jira/browse/FLINK-14315) | NPE with JobMaster.disconnectTaskManager |  Critical | Runtime / Task | Steven Zhen Wu | Till Rohrmann |
| [FLINK-14300](https://issues.apache.org/jira/browse/FLINK-14300) | StreamTask#invoke leaks threads if OperatorChain fails to be constructed |  Minor | Runtime / Task | Marcos Klein |  |
| [FLINK-14306](https://issues.apache.org/jira/browse/FLINK-14306) | flink-python build fails with No module named pkg\_resources |  Critical | API / Python, Build System | Piotr Nowojski | Dian Fu |
| [FLINK-14309](https://issues.apache.org/jira/browse/FLINK-14309) | Kafka09ProducerITCase\>KafkaProducerTestBase.testOneToOneAtLeastOnceRegularSink fails on Travis |  Critical | Connectors / Kafka | Till Rohrmann | Jiayi Liao |
| [FLINK-14347](https://issues.apache.org/jira/browse/FLINK-14347) | YARNSessionFIFOITCase.checkForProhibitedLogContents found a log with prohibited string |  Critical | Deployment / YARN, Tests | Caizhi Weng | Zili Chen |
| [FLINK-13999](https://issues.apache.org/jira/browse/FLINK-13999) | Correct the documentation of MATCH\_RECOGNIZE |  Major | Documentation | Dian Fu | Dian Fu |
| [FLINK-14185](https://issues.apache.org/jira/browse/FLINK-14185) | AbstractServerTest failed on Travis |  Major | Tests | Yingjie Cao | Yingjie Cao |
| [FLINK-14355](https://issues.apache.org/jira/browse/FLINK-14355) | Example code in state processor API docs doesn't compile |  Major | API / State Processor | Mitch Wasson | Jiayi Liao |
| [FLINK-14337](https://issues.apache.org/jira/browse/FLINK-14337) | HistoryServer does not handle NPE on corruped archives properly |  Critical | Runtime / Coordination | Till Rohrmann | Chesnay Schepler |
| [FLINK-12979](https://issues.apache.org/jira/browse/FLINK-12979) | Sending data to kafka with CsvRowSerializationSchema always adding a "\\n", "\\r","\\r\\n" at the end of the message |  Major | API / Type Serialization System | chaiyongqiang | Hugo Da Cruz Louro |
| [FLINK-14409](https://issues.apache.org/jira/browse/FLINK-14409) | MapType doesn't accept any subclass of java.util.Map |  Major | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-14413](https://issues.apache.org/jira/browse/FLINK-14413) | Shade-plugin ApacheNoticeResourceTransformer uses platform-dependent encoding |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5490](https://issues.apache.org/jira/browse/FLINK-5490) | ContextEnvironment.getExecutionPlan() clears Sinks |  Trivial | API / DataStream | Robert Schmidtke |  |
| [FLINK-12399](https://issues.apache.org/jira/browse/FLINK-12399) | FilterableTableSource does not use filters on job run |  Major | Table SQL / API | Josh Bradt | Rong Rong |
| [FLINK-13799](https://issues.apache.org/jira/browse/FLINK-13799) | Web Job Submit Page displays stream of error message when web submit is disables in the config |  Critical | Runtime / Web Frontend | Stephan Ewen | Chesnay Schepler |
| [FLINK-14445](https://issues.apache.org/jira/browse/FLINK-14445) | Python module build failed when making sdist |  Major | . | Yun Tang | Wei Zhong |
| [FLINK-13601](https://issues.apache.org/jira/browse/FLINK-13601) | RegionFailoverITCase is unstable |  Critical | Runtime / Checkpointing, Runtime / Coordination | Aljoscha Krettek | Yun Tang |
| [FLINK-7629](https://issues.apache.org/jira/browse/FLINK-7629) | Scala stream aggregations should support nested field expressions |  Minor | API / Scala | Gabor Gevay | Gabor Gevay |
| [FLINK-14459](https://issues.apache.org/jira/browse/FLINK-14459) | Python module build hangs |  Major | API / Python | Hequn Cheng | Hequn Cheng |
| [FLINK-8822](https://issues.apache.org/jira/browse/FLINK-8822) | RotateLogFile may not work well when sed version is below 4.2 |  Major | Command Line Client | Xin Liu | Aljoscha Krettek |
| [FLINK-14441](https://issues.apache.org/jira/browse/FLINK-14441) | Fix ValueLiteralExpression#getValueAs when valueClass is Period.class |  Major | Table SQL / API | hailong wang | hailong wang |
| [FLINK-14434](https://issues.apache.org/jira/browse/FLINK-14434) | Dispatcher#createJobManagerRunner should not start JobManagerRunner |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-14447](https://issues.apache.org/jira/browse/FLINK-14447) | Network metrics doc table render confusion |  Major | Documentation, Runtime / Metrics | vinoyang | vinoyang |
| [FLINK-14235](https://issues.apache.org/jira/browse/FLINK-14235) | Kafka010ProducerITCase\>KafkaProducerTestBase.testOneToOneAtLeastOnceCustomOperator fails on travis |  Blocker | Connectors / Kafka | Piotr Nowojski | Piotr Nowojski |
| [FLINK-14245](https://issues.apache.org/jira/browse/FLINK-14245) | Kafka010ProducerITCase\>KafkaProducerTestBase.testOneToOneAtLeastOnceRegularSink fails on Travis |  Critical | Connectors / Kafka | Till Rohrmann |  |
| [FLINK-13539](https://issues.apache.org/jira/browse/FLINK-13539) | DDL do not support CSV tableFactory because CSV require format.fields |  Critical | Table SQL / Planner | Jingsong Lee | Jark Wu |
| [FLINK-14336](https://issues.apache.org/jira/browse/FLINK-14336) | Exceptions in AsyncCheckpointRunnable#run are never logged |  Major | API / DataStream | Chesnay Schepler | Congxian Qiu |
| [FLINK-13519](https://issues.apache.org/jira/browse/FLINK-13519) | Elasticsearch Connector sample code for Scala on version 6.x will not work |  Major | Connectors / ElasticSearch, Documentation | Alberto Romero | Alberto Romero |
| [FLINK-12622](https://issues.apache.org/jira/browse/FLINK-12622) | Scala process function example doesn't compile |  Minor | API / DataStream, Documentation | chaiyongqiang | chaiyongqiang |
| [FLINK-14053](https://issues.apache.org/jira/browse/FLINK-14053) | blink planner dense\_rank corner case bug |  Major | Table SQL / Planner | jackylau | jackylau |
| [FLINK-14524](https://issues.apache.org/jira/browse/FLINK-14524) | PostgreSQL JDBC sink generates invalid SQL in upsert mode |  Major | Connectors / JDBC | Fawad Halim | Fawad Halim |
| [FLINK-11843](https://issues.apache.org/jira/browse/FLINK-11843) | Dispatcher fails to recover jobs if leader change happens during JobManagerRunner termination |  Critical | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-11665](https://issues.apache.org/jira/browse/FLINK-11665) | Flink fails to remove JobGraph from ZK even though it reports it did |  Critical | Runtime / Coordination | Bashar Abdul Jawad | Till Rohrmann |
| [FLINK-14415](https://issues.apache.org/jira/browse/FLINK-14415) | ValueLiteralExpression#equals should take array value into account |  Major | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-14397](https://issues.apache.org/jira/browse/FLINK-14397) | Failed to run Hive UDTF with array arguments |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-14370](https://issues.apache.org/jira/browse/FLINK-14370) | KafkaProducerAtLeastOnceITCase\>KafkaProducerTestBase.testOneToOneAtLeastOnceRegularSink fails on Travis |  Critical | Connectors / Kafka | Till Rohrmann | Jiangjie Qin |
| [FLINK-12223](https://issues.apache.org/jira/browse/FLINK-12223) | HeapMemorySegment.getArray should return null after being freed |  Major | Runtime / Task | Liya Fan | Liya Fan |
| [FLINK-12289](https://issues.apache.org/jira/browse/FLINK-12289) | Fix java doc inconsistencies and style issues in Memory manager |  Major | Runtime / Task | Liya Fan | Liya Fan |
| [FLINK-14318](https://issues.apache.org/jira/browse/FLINK-14318) | JDK11 build stalls during shading |  Critical | Build System | Gary Yao | Chesnay Schepler |
| [FLINK-10435](https://issues.apache.org/jira/browse/FLINK-10435) | Client sporadically hangs after Ctrl + C |  Major | Command Line Client, Deployment / YARN | Gary Yao | Yang Wang |
| [FLINK-14398](https://issues.apache.org/jira/browse/FLINK-14398) | Further split input unboxing code into separate methods |  Major | Table SQL / Legacy Planner, Table SQL / Planner | Hao Dang | Hao Dang |
| [FLINK-13869](https://issues.apache.org/jira/browse/FLINK-13869) | Hive functions can not work in blink planner stream mode |  Major | Connectors / Hive, Table SQL / Planner | Terry Wang | Jingsong Lee |
| [FLINK-14547](https://issues.apache.org/jira/browse/FLINK-14547) | UDF cannot be in the join condition in blink planner |  Major | Table SQL / Planner | Huang Xingbo | Huang Xingbo |
| [FLINK-14556](https://issues.apache.org/jira/browse/FLINK-14556) | Correct the package of cloud pickle |  Major | API / Python | sunjincheng | Dian Fu |
| [FLINK-14302](https://issues.apache.org/jira/browse/FLINK-14302) | FlinkKafkaInternalProducer should not send \`ADD\_PARTITIONS\_TO\_TXN\` request if \`newPartitionsInTransaction\` is empty when enable EoS |  Major | Connectors / Kafka | Wei-Che Wei | Wei-Che Wei |
| [FLINK-14074](https://issues.apache.org/jira/browse/FLINK-14074) | MesosResourceManager can't create new taskmanagers in Session Cluster Mode. |  Blocker | Deployment / Mesos | Alexander Kasyanenko | Till Rohrmann |
| [FLINK-14561](https://issues.apache.org/jira/browse/FLINK-14561) | Don't write FLINK\_PLUGINS\_DIR ENV variable to Flink configuration |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-14558](https://issues.apache.org/jira/browse/FLINK-14558) | Fix the ClassNotFoundException issue for run python job in standalone mode |  Major | API / Python | sunjincheng | Dian Fu |
| [FLINK-14544](https://issues.apache.org/jira/browse/FLINK-14544) | Resuming Externalized Checkpoint after terminal failure (file, async) end-to-end test fails on travis |  Blocker | Runtime / Checkpointing, Tests | Yu Li | Arvid Heise |
| [FLINK-14562](https://issues.apache.org/jira/browse/FLINK-14562) | RMQSource leaves idle consumer after closing |  Major | Connectors/ RabbitMQ | Nicolas Deslandes | Nicolas Deslandes |
| [FLINK-14546](https://issues.apache.org/jira/browse/FLINK-14546) | Support map type in flink-json |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Benchao Li | Benchao Li |
| [FLINK-14603](https://issues.apache.org/jira/browse/FLINK-14603) | NetworkBufferPoolTest.testBlockingRequestFromMultiLocalBufferPool timeout in travis |  Critical | Runtime / Network, Tests | Kurt Young | Yingjie Cao |
| [FLINK-13469](https://issues.apache.org/jira/browse/FLINK-13469) | Resource used by StateMapSnapshot can not be released if snapshot fails |  Major | Runtime / State Backends | PengFei Li | PengFei Li |
| [FLINK-12342](https://issues.apache.org/jira/browse/FLINK-12342) | Yarn Resource Manager Acquires Too Many Containers |  Major | Deployment / YARN | Zhenqiu Huang | Till Rohrmann |
| [FLINK-14589](https://issues.apache.org/jira/browse/FLINK-14589) | Redundant slot requests with the same AllocationID leads to inconsistent slot table |  Major | Runtime / Coordination | Hwanju Kim | Hwanju Kim |
| [FLINK-13702](https://issues.apache.org/jira/browse/FLINK-13702) | BaseMapSerializerTest.testDuplicate fails on Travis |  Critical | Table SQL / Planner | Till Rohrmann | Dawid Wysakowicz |
| [FLINK-13740](https://issues.apache.org/jira/browse/FLINK-13740) | TableAggregateITCase.testNonkeyedFlatAggregate failed on Travis |  Critical | Table SQL / Planner | Till Rohrmann | Dawid Wysakowicz |
| [FLINK-12216](https://issues.apache.org/jira/browse/FLINK-12216) | Respect the number of bytes from input parameters in HybridMemorySegment |  Critical | Runtime / Network, Runtime / Task | Liya Fan | Liya Fan |
| [FLINK-13969](https://issues.apache.org/jira/browse/FLINK-13969) | Resuming Externalized Checkpoint (rocks, incremental, scale down) end-to-end test fails on Travis |  Critical | Runtime / Checkpointing | Till Rohrmann | Congxian Qiu |
| [FLINK-14630](https://issues.apache.org/jira/browse/FLINK-14630) | Yarn tests no longer create jobmanager log files |  Critical | Deployment / YARN, Tests | Till Rohrmann | Kostas Kloudas |
| [FLINK-14673](https://issues.apache.org/jira/browse/FLINK-14673) | Shouldn't expect HMS client to throw NoSuchObjectException for non-existing function |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-14601](https://issues.apache.org/jira/browse/FLINK-14601) | CLI documentation for list is missing '-a' |  Minor | . | Hunter Jackson | xiaodao |
| [FLINK-14380](https://issues.apache.org/jira/browse/FLINK-14380) | Type Extractor POJO setter check does not allow for Immutable Case Class |  Major | API / Scala | Elliot Pourmand | Marco Zühlke |
| [FLINK-14731](https://issues.apache.org/jira/browse/FLINK-14731) | LogicalWatermarkAssigner should use specified trait set when doing copy |  Trivial | Table SQL / Planner | Liya Fan | Liya Fan |
| [FLINK-14239](https://issues.apache.org/jira/browse/FLINK-14239) | Emitting the max watermark in StreamSource#run may cause it to arrive the downstream early |  Major | API / DataStream | Haibo Sun | Haibo Sun |
| [FLINK-14642](https://issues.apache.org/jira/browse/FLINK-14642) | Flink TupleSerializer and CaseClassSerializer shoud support copy NULL values |  Major | API / Type Serialization System | Victor Wong |  |
| [FLINK-14784](https://issues.apache.org/jira/browse/FLINK-14784) | CsvTableSink miss delimiter when row start with null member |  Major | Table SQL / API | Leonard Xu | Leonard Xu |
| [FLINK-14808](https://issues.apache.org/jira/browse/FLINK-14808) | ClientUtils set thread ClassLoader that is different from the user cl of PackagedProgram |  Blocker | Client / Job Submission | Jingsong Lee | Kostas Kloudas |
| [FLINK-14809](https://issues.apache.org/jira/browse/FLINK-14809) | DataStreamAllroundTestProgram does not run because return types cannot be determined |  Blocker | API / DataStream, Tests | Gary Yao | Kostas Kloudas |
| [FLINK-14794](https://issues.apache.org/jira/browse/FLINK-14794) | KeyedStream#transform not working with factories |  Major | API / DataStream | Arvid Heise | Arvid Heise |
| [FLINK-14782](https://issues.apache.org/jira/browse/FLINK-14782) | CoreModule#getFunctionDefinition should return empty optional when function does not exist |  Major | Table SQL / Planner | Dawid Wysakowicz | Bowen Li |
| [FLINK-14635](https://issues.apache.org/jira/browse/FLINK-14635) | Don't use relocated imports in Kinesis End-2-End Tests |  Major | Connectors / Kinesis | Stephan Ewen | Stephan Ewen |
| [FLINK-14830](https://issues.apache.org/jira/browse/FLINK-14830) | Correct the link for chinese version stream\_checkpointing page |  Major | Documentation | Congxian Qiu | Congxian Qiu |
| [FLINK-13940](https://issues.apache.org/jira/browse/FLINK-13940) | S3RecoverableWriter causes job to get stuck in recovery |  Major | Connectors / FileSystem | Jimmy Weibel Rasmussen | Kostas Kloudas |
| [FLINK-14858](https://issues.apache.org/jira/browse/FLINK-14858) | Wrong "if" statement in SqlToOperationConverter |  Trivial | Table SQL / Planner | zhaozhangwan | zhaozhangwan |
| [FLINK-13184](https://issues.apache.org/jira/browse/FLINK-13184) | Starting a TaskExecutor blocks the YarnResourceManager's main thread |  Critical | Deployment / YARN | Xintong Song | Yang Wang |
| [FLINK-14861](https://issues.apache.org/jira/browse/FLINK-14861) | parallelism.default in flink-conf.yaml do not work which is a bug imported by[FLINK-14745] |  Blocker | Client / Job Submission | Leonard Xu | Leonard Xu |
| [FLINK-14382](https://issues.apache.org/jira/browse/FLINK-14382) | Incorrect handling of FLINK\_PLUGINS\_DIR on Yarn |  Blocker | Deployment / YARN | Yang Wang | Yang Wang |
| [FLINK-14641](https://issues.apache.org/jira/browse/FLINK-14641) | Fix description of metric \`fullRestarts\` |  Critical | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14746](https://issues.apache.org/jira/browse/FLINK-14746) | History server does not handle uncaught exceptions in archive fetcher. |  Major | Runtime / Web Frontend | David Morávek | David Morávek |
| [FLINK-14747](https://issues.apache.org/jira/browse/FLINK-14747) | Performance regression with latest changes to Mailbox |  Major | Runtime / Task | Arvid Heise | Arvid Heise |
| [FLINK-14866](https://issues.apache.org/jira/browse/FLINK-14866) | A few documentation links are broken |  Major | Documentation | Dian Fu | Bowen Li |
| [FLINK-13708](https://issues.apache.org/jira/browse/FLINK-13708) | Transformations should be cleared because a table environment could execute multiple job |  Critical | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-14928](https://issues.apache.org/jira/browse/FLINK-14928) | Documentation links check nightly run failed on travis |  Blocker | Documentation | Yu Li | Congxian Qiu |
| [FLINK-14595](https://issues.apache.org/jira/browse/FLINK-14595) | Move flink-orc to flink-formats from flink-connectors |  Major | Connectors / ORC | Jingsong Lee | Jingsong Lee |
| [FLINK-13749](https://issues.apache.org/jira/browse/FLINK-13749) | Make Flink client respect classloading policy |  Minor | Command Line Client, Runtime / REST | Paul Lin | Paul Lin |
| [FLINK-14865](https://issues.apache.org/jira/browse/FLINK-14865) | Unstable tests PyFlinkBlinkStreamUserDefinedFunctionTests#test\_udf\_in\_join\_condition\_2 |  Major | API / Python | Dian Fu | Wei Zhong |
| [FLINK-14846](https://issues.apache.org/jira/browse/FLINK-14846) | Correct the default writerbuffer size documentation of RocksDB |  Major | Documentation, Runtime / State Backends | Yun Tang | Yun Tang |
| [FLINK-13995](https://issues.apache.org/jira/browse/FLINK-13995) | Fix shading of the licence information of netty |  Major | BuildSystem / Shaded | Arvid Heise | Chesnay Schepler |
| [FLINK-14817](https://issues.apache.org/jira/browse/FLINK-14817) | "Streaming Aggregation" document contains misleading code examples |  Major | Documentation | Victor Wong | Victor Wong |
| [FLINK-14930](https://issues.apache.org/jira/browse/FLINK-14930) | OSS Filesystem Uses Wrong Shading Prefix |  Major | FileSystems | Konstantin Knauf | Konstantin Knauf |
| [FLINK-11835](https://issues.apache.org/jira/browse/FLINK-11835) | ZooKeeperLeaderElectionITCase.testJobExecutionOnClusterWithLeaderChange failed |  Critical | Runtime / Coordination | Gary Yao | chunpinghe |
| [FLINK-14940](https://issues.apache.org/jira/browse/FLINK-14940) | Travis build passes despite Test failures |  Blocker | Test Infrastructure, Travis | Gary Yao | Chesnay Schepler |
| [FLINK-14939](https://issues.apache.org/jira/browse/FLINK-14939) | StreamingKafkaITCase fails due to distDir property not being set |  Blocker | Connectors / Kafka, Test Infrastructure, Travis | Gary Yao | Chesnay Schepler |
| [FLINK-10377](https://issues.apache.org/jira/browse/FLINK-10377) | Remove precondition in TwoPhaseCommitSinkFunction.notifyCheckpointComplete |  Major | Connectors / Common | Stefan Richter | Stefan Richter |
| [FLINK-14976](https://issues.apache.org/jira/browse/FLINK-14976) | Cassandra Connector leaks Semaphore on Throwable; hangs on close |  Major | Connectors / Cassandra | Mads Chr. Olesen | Mads Chr. Olesen |
| [FLINK-14694](https://issues.apache.org/jira/browse/FLINK-14694) | Most tests from package o.a.f.table.planner.functions.aggfunctions are not executed during mvn test |  Blocker | Table SQL / Planner, Tests | Kurt Young | godfrey he |
| [FLINK-10190](https://issues.apache.org/jira/browse/FLINK-10190) | Unable to use custom endpoint in Kinesis producer |  Major | Connectors / Kinesis | Sergei Poganshev | Scott Kidder |
| [FLINK-14891](https://issues.apache.org/jira/browse/FLINK-14891) | PythonScalarFunctionOperator should be chained with upstream operators by default |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-14662](https://issues.apache.org/jira/browse/FLINK-14662) | Distinguish unknown CatalogTableStatistics and zero |  Major | Connectors / Hive, Table SQL / API | Kurt Young | Terry Wang |
| [FLINK-14033](https://issues.apache.org/jira/browse/FLINK-14033) | Distributed caches are not registered in Yarn Per Job Cluster Mode |  Minor | Deployment / YARN | Zhenqiu Huang | Zhenqiu Huang |
| [FLINK-15042](https://issues.apache.org/jira/browse/FLINK-15042) | Fix python compatibility by excluding the Env.executeAsync() (FLINK-14854) |  Major | API / Python | Kostas Kloudas | Kostas Kloudas |
| [FLINK-13502](https://issues.apache.org/jira/browse/FLINK-13502) | CatalogTableStatisticsConverter & TreeNode should be in correct package |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-15007](https://issues.apache.org/jira/browse/FLINK-15007) | Flink on YARN does not request required TaskExecutors in some cases |  Blocker | Runtime / Coordination, Runtime / Task | Aljoscha Krettek |  |
| [FLINK-14654](https://issues.apache.org/jira/browse/FLINK-14654) | Multiple logging statements use incorrect placeholders |  Minor | . | Yun Tang | Yun Tang |
| [FLINK-15025](https://issues.apache.org/jira/browse/FLINK-15025) | Resource directory not bundled in jar |  Major | API / Python, Build System | Dian Fu | Dian Fu |
| [FLINK-15047](https://issues.apache.org/jira/browse/FLINK-15047) | YarnDistributedCacheITCase is unstable |  Blocker | Tests | Zili Chen | Xintong Song |
| [FLINK-14910](https://issues.apache.org/jira/browse/FLINK-14910) | DisableAutoGeneratedUIDs fails on keyBy |  Major | API / DataStream | William Cheng | Dawid Wysakowicz |
| [FLINK-14960](https://issues.apache.org/jira/browse/FLINK-14960) | Dependency shading of table modules test fails on Travis |  Blocker | Table SQL / Planner, Tests | Caizhi Weng | Jark Wu |
| [FLINK-15036](https://issues.apache.org/jira/browse/FLINK-15036) | Container startup error will be handled out side of the YarnResourceManager's main thread |  Blocker | Deployment / YARN | Till Rohrmann | Yang Wang |
| [FLINK-14663](https://issues.apache.org/jira/browse/FLINK-14663) | Distinguish unknown column stats and zero |  Major | Connectors / Hive, Table SQL / API | Kurt Young | Terry Wang |
| [FLINK-15051](https://issues.apache.org/jira/browse/FLINK-15051) | Typo in RocksDBStateBackend getNumberOfTransferingThread |  Minor | Runtime / State Backends | Stephan Ewen | Stephan Ewen |
| [FLINK-14781](https://issues.apache.org/jira/browse/FLINK-14781) | [ZH] clarify that a RocksDB dependency in pom.xml may not be needed |  Major | chinese-translation, Documentation | Nico Kruber | Liu Yang |
| [FLINK-15062](https://issues.apache.org/jira/browse/FLINK-15062) | Orc reader should use java.sql.Timestamp to read for respecting time zone |  Major | Connectors / ORC | Jingsong Lee | Jingsong Lee |
| [FLINK-15059](https://issues.apache.org/jira/browse/FLINK-15059) | DataTypeExtractorTest fails on travis |  Blocker | Table SQL / API | Dawid Wysakowicz | Timo Walther |
| [FLINK-14965](https://issues.apache.org/jira/browse/FLINK-14965) | CatalogTableStatistics UNKNOWN should be consistent with TableStats UNKNOWN |  Major | . | Terry Wang | godfrey he |
| [FLINK-15063](https://issues.apache.org/jira/browse/FLINK-15063) | Input group and output group of the task metric are reversed |  Major | Runtime / Metrics, Runtime / Network | lining | lining |
| [FLINK-15091](https://issues.apache.org/jira/browse/FLINK-15091) | JoinITCase.testFullJoinWithNonEquiJoinPred failed in travis |  Major | Table SQL / Planner | Kurt Young | Jingsong Lee |
| [FLINK-14407](https://issues.apache.org/jira/browse/FLINK-14407) | YarnFileStageTestS3ITCase.testRecursiveUploadForYarnS3n failed on Travis |  Critical | Connectors / FileSystem, Deployment / YARN | Till Rohrmann | Chesnay Schepler |
| [FLINK-15057](https://issues.apache.org/jira/browse/FLINK-15057) | Set taskmanager.memory.total-process.size in jepsen tests |  Critical | Tests | Gary Yao | Gary Yao |
| [FLINK-14949](https://issues.apache.org/jira/browse/FLINK-14949) | Task cancellation can be stuck against out-of-thread error |  Major | Runtime / Task | Hwanju Kim | Hwanju Kim |
| [FLINK-13945](https://issues.apache.org/jira/browse/FLINK-13945) | Instructions for building flink-shaded against vendor repository don't work |  Major | BuildSystem / Shaded | Elise Ramé | Chesnay Schepler |
| [FLINK-13862](https://issues.apache.org/jira/browse/FLINK-13862) | Update Execution Plan docs |  Minor | Documentation | Stephan Ewen | Chesnay Schepler |
| [FLINK-15107](https://issues.apache.org/jira/browse/FLINK-15107) | SQL-CLI can not execute insert into statement with lowercase "INSERT INTO" keyword |  Major | Table SQL / Client | Danny Chen | Terry Wang |
| [FLINK-11120](https://issues.apache.org/jira/browse/FLINK-11120) | TIMESTAMPADD function handles TIME incorrectly |  Major | Table SQL / Planner | Forward Xu | Forward Xu |
| [FLINK-14872](https://issues.apache.org/jira/browse/FLINK-14872) | (Partial fix) Potential deadlock for task reading from blocking ResultPartition. |  Blocker | Runtime / Network | Yingjie Cao | Yingjie Cao |
| [FLINK-8949](https://issues.apache.org/jira/browse/FLINK-8949) | Rest API failure with long URL |  Major | Runtime / REST, Runtime / Web Frontend | Truong Duc Kien | Maximilian Michels |
| [FLINK-15096](https://issues.apache.org/jira/browse/FLINK-15096) | Do not use GlobalJobParameters to pass system configuration |  Major | API / Python | Dawid Wysakowicz | Wei Zhong |
| [FLINK-13285](https://issues.apache.org/jira/browse/FLINK-13285) | Check connectors runnable in blink runner |  Critical | Connectors / Common | Jingsong Lee | Jingsong Lee |
| [FLINK-13438](https://issues.apache.org/jira/browse/FLINK-13438) | Support date type in Hive |  Critical | Connectors / Hive | Caizhi Weng | Rui Li |
| [FLINK-15157](https://issues.apache.org/jira/browse/FLINK-15157) | Make ScalaShell ensureYarnConfig() and fetchConnectionInfo() public |  Major | Scala Shell | Aljoscha Krettek |  |
| [FLINK-14953](https://issues.apache.org/jira/browse/FLINK-14953) | Parquet table source should use schema type to build FilterPredicate |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Zhenqiu Huang | Zhenqiu Huang |
| [FLINK-15166](https://issues.apache.org/jira/browse/FLINK-15166) | Shuffle data compression wrongly decrease the buffer reference count. |  Blocker | Runtime / Network | Yingjie Cao | Yingjie Cao |
| [FLINK-15093](https://issues.apache.org/jira/browse/FLINK-15093) | StreamExecutionEnvironment does not clear transformations when executing |  Blocker | API / DataStream | Jeff Zhang | Danny Chen |
| [FLINK-15052](https://issues.apache.org/jira/browse/FLINK-15052) | Test transformation.clear() in sqlClient |  Blocker | Table SQL / Client | Kurt Young | Danny Chen |
| [FLINK-15076](https://issues.apache.org/jira/browse/FLINK-15076) | Source thread should be interrupted during the Task cancellation |  Blocker | Runtime / Task | Piotr Nowojski | Piotr Nowojski |
| [FLINK-14951](https://issues.apache.org/jira/browse/FLINK-14951) | State TTL backend end-to-end test fail when taskManager has multiple slot |  Major | Runtime / State Backends, Tests | Yangze Guo | Yangze Guo |
| [FLINK-15008](https://issues.apache.org/jira/browse/FLINK-15008) | Tests in flink-yarn-tests fail with ClassNotFoundException (JDK11) |  Blocker | Deployment / YARN, Tests | Gary Yao | Chesnay Schepler |
| [FLINK-15199](https://issues.apache.org/jira/browse/FLINK-15199) | Benchmarks are not compiling |  Blocker | Benchmarks | Piotr Nowojski | Piotr Nowojski |
| [FLINK-15061](https://issues.apache.org/jira/browse/FLINK-15061) | create/alter table/databases properties should be case sensitive stored in catalog |  Major | Table SQL / API | Terry Wang | Terry Wang |
| [FLINK-15073](https://issues.apache.org/jira/browse/FLINK-15073) | sql client fails to run same query multiple times |  Blocker | Table SQL / Client | Kurt Young | Danny Chen |
| [FLINK-15185](https://issues.apache.org/jira/browse/FLINK-15185) | Hive sink can not run in standalone mode |  Major | Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-15139](https://issues.apache.org/jira/browse/FLINK-15139) | misc end to end test failed  cause loss jars in converting to jobgraph |  Blocker | Table SQL / Client | wangxiyuan | Leonard Xu |
| [FLINK-15124](https://issues.apache.org/jira/browse/FLINK-15124) | types with precision can't be executed in sql client with blink planner |  Major | Table SQL / Client, Table SQL / Planner | Kurt Young | Jark Wu |
| [FLINK-15163](https://issues.apache.org/jira/browse/FLINK-15163) | japicmp should use 1.9 as the old version |  Blocker | Build System | Gary Yao | Gary Yao |
| [FLINK-15082](https://issues.apache.org/jira/browse/FLINK-15082) | Mesos App Master does not respect taskmanager.memory.total-process.size |  Blocker | Runtime / Coordination | Gary Yao | Andrey Zagrebin |
| [FLINK-15196](https://issues.apache.org/jira/browse/FLINK-15196) | The mesos.resourcemanager.tasks.cpus configuration does not work as expectation |  Blocker | Deployment / Mesos | Yangze Guo | Yangze Guo |
| [FLINK-14952](https://issues.apache.org/jira/browse/FLINK-14952) | Yarn containers can exceed physical memory limits when using BoundedBlockingSubpartition. |  Blocker | Deployment / YARN, Runtime / Network | Piotr Nowojski | Zhijiang |
| [FLINK-14941](https://issues.apache.org/jira/browse/FLINK-14941) | The AbstractTableInputFormat#nextRecord in hbase connector will handle the same rowkey twice once encountered any exception |  Major | Connectors / HBase | Zheng Hu | Zheng Hu |
| [FLINK-15167](https://issues.apache.org/jira/browse/FLINK-15167) | SQL CLI library option doesn't work for Hive connector |  Major | Connectors / Hive, Table SQL / Client | Rui Li | Rui Li |
| [FLINK-15140](https://issues.apache.org/jira/browse/FLINK-15140) | Shuffle data compression does not work with BroadcastRecordWriter. |  Blocker | Runtime / Network | Yingjie Cao | Yingjie Cao |
| [FLINK-14574](https://issues.apache.org/jira/browse/FLINK-14574) |  flink-s3-fs-hadoop doesn't work with plugins mechanism |  Blocker | FileSystems | Piotr Nowojski | Arvid Heise |
| [FLINK-15013](https://issues.apache.org/jira/browse/FLINK-15013) | Flink (on YARN) sometimes needs too many slots |  Blocker | Runtime / Coordination | Aljoscha Krettek | Till Rohrmann |
| [FLINK-15001](https://issues.apache.org/jira/browse/FLINK-15001) | The digest of sub-plan reuse should contain retraction traits for stream physical nodes |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-15234](https://issues.apache.org/jira/browse/FLINK-15234) | Hive table created from flink catalog table shouldn't have null properties in parameters |  Blocker | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-15240](https://issues.apache.org/jira/browse/FLINK-15240) | is\_generic key is missing for Flink table stored in HiveCatalog |  Blocker | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-15246](https://issues.apache.org/jira/browse/FLINK-15246) | Query result schema: [EXPR$0: TIMESTAMP(6) NOT NULL]   not equal to TableSink schema:    [EXPR$0: TIMESTAMP(3)] |  Major | Table SQL / Planner | xiaojin.wy |  |
| [FLINK-15254](https://issues.apache.org/jira/browse/FLINK-15254) | modules in SQL CLI yaml should preserve order |  Blocker | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-13589](https://issues.apache.org/jira/browse/FLINK-13589) | DelimitedInputFormat index error on multi-byte delimiters with whole file input splits |  Blocker | Connectors / FileSystem, Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Adric Eckstein | Arvid Heise |
| [FLINK-15267](https://issues.apache.org/jira/browse/FLINK-15267) | Fix NoSuchElementException if rowtime field is remapped in TableSource |  Blocker | Table SQL / Planner, Tests | Yu Li | Jark Wu |
| [FLINK-15245](https://issues.apache.org/jira/browse/FLINK-15245) | Flink running in one cluster cannot write data to Hive tables in another cluster |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-15286](https://issues.apache.org/jira/browse/FLINK-15286) | Managed Memory Option for RocksDB not picked up from config |  Blocker | Runtime / State Backends | Stephan Ewen | Stephan Ewen |
| [FLINK-14834](https://issues.apache.org/jira/browse/FLINK-14834) | Kerberized YARN on Docker test fails on Travis |  Blocker | Deployment / YARN, Runtime / Coordination, Tests | Gary Yao | Aljoscha Krettek |
| [FLINK-15265](https://issues.apache.org/jira/browse/FLINK-15265) | Remove "-executor" suffix from executor names |  Major | API / Core | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-15072](https://issues.apache.org/jira/browse/FLINK-15072) | executeAsync in ContextEnvironment from CliFrontend cause unexpected exception |  Major | Client / Job Submission | Zili Chen | Zili Chen |
| [FLINK-14929](https://issues.apache.org/jira/browse/FLINK-14929) | ContinuousFileProcessingCheckpointITCase sporadically fails due to FileNotFoundException |  Critical | Connectors / Common, Tests | Gary Yao | Gary Yao |
| [FLINK-15250](https://issues.apache.org/jira/browse/FLINK-15250) | Update "Connect to External Systems" page to list the required formats in connectors definition section |  Major | Documentation | Leonard Xu | Leonard Xu |
| [FLINK-14899](https://issues.apache.org/jira/browse/FLINK-14899) | can not be translated to StreamExecDeduplicate when PROCTIME() is defined in query |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-15169](https://issues.apache.org/jira/browse/FLINK-15169) | Errors happen in the scheduling of DefaultScheduler are not shown in WebUI |  Blocker | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-15092](https://issues.apache.org/jira/browse/FLINK-15092) | Using sql-client excute sql(select sum(cast(null as int)) from t123;) has a TableException |  Blocker | Table SQL / Client | xiaojin.wy | Dawid Wysakowicz |
| [FLINK-15105](https://issues.apache.org/jira/browse/FLINK-15105) | Resuming Externalized Checkpoint after terminal failure (rocks, incremental) end-to-end test stalls on travis |  Critical | Runtime / Checkpointing | Yu Li | Congxian Qiu |
| [FLINK-15258](https://issues.apache.org/jira/browse/FLINK-15258) | HiveModuleFactory should be able to distinguish hive-version as property |  Blocker | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-15049](https://issues.apache.org/jira/browse/FLINK-15049) | Compile error when hash join with timestamp type key |  Major | Table SQL / Planner | Jingsong Lee | Zhenghua Gao |
| [FLINK-15232](https://issues.apache.org/jira/browse/FLINK-15232) | Message of NoMatchingTableFactoryException should tell users what's wrong |  Blocker | Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-12283](https://issues.apache.org/jira/browse/FLINK-12283) | Table API does not allow non-static inner class as UDF |  Major | Table SQL / API | Jeff Zhang | Timo Walther |
| [FLINK-13197](https://issues.apache.org/jira/browse/FLINK-13197) | Fix Hive view row type mismatch when expanding in planner |  Major | Connectors / Hive, Table SQL / Planner | Bowen Li | Rui Li |
| [FLINK-15244](https://issues.apache.org/jira/browse/FLINK-15244) | FileUtils#deleteDirectoryQuietly will delete files in the symbolic link which point to a directory |  Blocker | FileSystems | Wei Zhong | Wei Zhong (old) |
| [FLINK-15241](https://issues.apache.org/jira/browse/FLINK-15241) | Revert the unexpected change of the configuration for Mesos CPU cores |  Blocker | Deployment / Mesos | Yangze Guo | Yangze Guo |
| [FLINK-13567](https://issues.apache.org/jira/browse/FLINK-13567) | Avro Confluent Schema Registry nightly end-to-end test failed on Travis |  Blocker | Connectors / Kafka, Tests | Till Rohrmann | Chesnay Schepler |
| [FLINK-15317](https://issues.apache.org/jira/browse/FLINK-15317) | State TTL Heap backend end-to-end test fails on Travis |  Blocker | Runtime / Network, Tests | Gary Yao | Arvid Heise |
| [FLINK-14683](https://issues.apache.org/jira/browse/FLINK-14683) | RemoteStreamEnvironment's construction function has a wrong method |  Minor | Table SQL / API | forideal | Kostas Kloudas |
| [FLINK-15168](https://issues.apache.org/jira/browse/FLINK-15168) | Exception is thrown when using kafka source connector with flink planner |  Blocker | Table SQL / Legacy Planner | Huang Xingbo | Dawid Wysakowicz |
| [FLINK-15050](https://issues.apache.org/jira/browse/FLINK-15050) | DataFormatConverters should support any TIMESTAMP WITHOUT TIME ZONE types |  Major | Table SQL / Planner | Jingsong Lee | Zhenghua Gao |
| [FLINK-15269](https://issues.apache.org/jira/browse/FLINK-15269) | Fix hive dialect limitation to overwrite and partition syntax |  Critical | Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-15266](https://issues.apache.org/jira/browse/FLINK-15266) | NPE in blink planner code gen |  Blocker | Table SQL / Runtime | Benchao Li | Benchao Li |
| [FLINK-15332](https://issues.apache.org/jira/browse/FLINK-15332) | Jepsen tests are broken due to copying un-relocated flink-s3-fs-hadoop\* into lib |  Blocker | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-15194](https://issues.apache.org/jira/browse/FLINK-15194) | Directories in distributed caches are not extracted in Yarn Per Job Cluster Mode |  Blocker | Deployment / YARN | Wei Zhong | Yang Wang |
| [FLINK-15268](https://issues.apache.org/jira/browse/FLINK-15268) | Shaded Hadoop S3A end-to-end test fails on travis |  Blocker | Connectors / FileSystem, Tests | Yu Li | Arvid Heise |
| [FLINK-15065](https://issues.apache.org/jira/browse/FLINK-15065) | RocksDB configurable options doc description error |  Major | Documentation | YufeiLiu | Yun Tang |
| [FLINK-15308](https://issues.apache.org/jira/browse/FLINK-15308) | Job failed when enable pipelined-shuffle.compression and numberOfTaskSlots \> 1 |  Blocker | Runtime / Network | Feng Jiajie | Yingjie Cao |
| [FLINK-15301](https://issues.apache.org/jira/browse/FLINK-15301) | Flink Kinesis AsyncRecordEmitter needs to handle unchecked exception gracefully |  Major | Connectors / Kinesis | Ying Xu | Thomas Weise |
| [FLINK-15287](https://issues.apache.org/jira/browse/FLINK-15287) | ack flink-hadoop-compatibility and flink-orc into flink-hive |  Major | Connectors / Hive | Rui Li | Jingsong Lee |
| [FLINK-15320](https://issues.apache.org/jira/browse/FLINK-15320) | JobManager crashes in the standalone model when cancelling job which subtask' status is scheduled |  Blocker | Runtime / Coordination | lining | Zhu Zhu |
| [FLINK-15360](https://issues.apache.org/jira/browse/FLINK-15360) | Yarn e2e test is broken with building docker image |  Blocker | . | Yang Wang | Yangze Guo |
| [FLINK-15272](https://issues.apache.org/jira/browse/FLINK-15272) | Better error message when insert partition with values |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-15361](https://issues.apache.org/jira/browse/FLINK-15361) | ParquetTableSource should pass predicate in projectFields |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jingsong Lee | Jingsong Lee |
| [FLINK-15348](https://issues.apache.org/jira/browse/FLINK-15348) | Fix orc optimization for version less than 2.3 by introducing orc shim |  Major | Connectors / Hive | Bowen Li | Jingsong Lee |
| [FLINK-15175](https://issues.apache.org/jira/browse/FLINK-15175) | syntax  not supported in SQLClient for TPCDS queries |  Major | Table SQL / Client | liupengcheng | liupengcheng |
| [FLINK-13662](https://issues.apache.org/jira/browse/FLINK-13662) | FlinkKinesisProducerTest.testBackpressure failed on Travis |  Critical | Connectors / Kinesis, Tests | Till Rohrmann | Chesnay Schepler |
| [FLINK-15248](https://issues.apache.org/jira/browse/FLINK-15248) | FileUtils#compressDirectory behaves buggy when processing relative directory path |  Blocker | FileSystems | Wei Zhong | Wei Zhong (old) |
| [FLINK-15313](https://issues.apache.org/jira/browse/FLINK-15313) | Can not insert decimal with precision into sink using TypeInformation |  Blocker | Table SQL / Planner | Jingsong Lee | Jark Wu |
| [FLINK-15382](https://issues.apache.org/jira/browse/FLINK-15382) | Flink failed generating python config docs |  Major | API / Python, Runtime / Configuration | Xintong Song | Dian Fu |
| [FLINK-15391](https://issues.apache.org/jira/browse/FLINK-15391) | DATE and TIMESTAMP partition columns don't work |  Blocker | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-15239](https://issues.apache.org/jira/browse/FLINK-15239) | CompileUtils::COMPILED\_CACHE leaks class loaders |  Blocker | Table SQL / Runtime | Rui Li | Rui Li |
| [FLINK-14849](https://issues.apache.org/jira/browse/FLINK-14849) | Fix documentation about Hive dependencies |  Critical | Connectors / Hive, Documentation | Jingsong Lee | Rui Li |
| [FLINK-15426](https://issues.apache.org/jira/browse/FLINK-15426) | TPC-DS end-to-end test (Blink planner) fails on travis |  Blocker | Table SQL / Planner | Yu Li | Jark Wu |
| [FLINK-15435](https://issues.apache.org/jira/browse/FLINK-15435) | ExecutionConfigTests.test\_equals\_and\_hash in pyFlink fails when cpu core numbers is 6 |  Major | API / Python | Benchao Li |  |
| [FLINK-15418](https://issues.apache.org/jira/browse/FLINK-15418) | StreamExecMatchRule not set FlinkRelDistribution |  Major | Table SQL / Planner | Benchao Li | Benchao Li |
| [FLINK-15439](https://issues.apache.org/jira/browse/FLINK-15439) | Fix incorrect description about unsupported DDL in "Queries" page |  Minor | Documentation | Jeff Zhang | Jark Wu |
| [FLINK-15231](https://issues.apache.org/jira/browse/FLINK-15231) | Wrong HeapVector in AbstractHeapVector.createHeapColumn |  Major | Table SQL / Runtime | Zhenghua Gao | Zhenghua Gao |
| [FLINK-15421](https://issues.apache.org/jira/browse/FLINK-15421) | GroupAggsHandler throws java.time.LocalDateTime cannot be cast to java.sql.Timestamp |  Critical | Table SQL / Planner | Benchao Li | Zhenghua Gao |
| [FLINK-15428](https://issues.apache.org/jira/browse/FLINK-15428) | Avro Confluent Schema Registry nightly end-to-end test fails on travis |  Blocker | Connectors / Kafka | Yu Li | Yangze Guo |
| [FLINK-15409](https://issues.apache.org/jira/browse/FLINK-15409) | Fix code generation in windowed join function |  Major | Table SQL / Planner | hailong wang | hailong wang |
| [FLINK-15290](https://issues.apache.org/jira/browse/FLINK-15290) | Need a way to turn off vectorized orc reader for SQL CLI |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-15259](https://issues.apache.org/jira/browse/FLINK-15259) | HiveInspector.toInspectors() should convert Flink constant to Hive constant |  Blocker | Connectors / Hive | Bowen Li | Rui Li |
| [FLINK-15411](https://issues.apache.org/jira/browse/FLINK-15411) | Planner can't prune partition on DATE/TIMESTAMP columns |  Critical | Connectors / Hive, Table SQL / Planner | Bowen Li | Jingsong Lee |
| [FLINK-15443](https://issues.apache.org/jira/browse/FLINK-15443) | Use JDBC connector write FLOAT value occur ClassCastException |  Major | Connectors / JDBC | Xianxun Ye | Jingsong Lee |
| [FLINK-15420](https://issues.apache.org/jira/browse/FLINK-15420) | Cast string to timestamp will loose precision |  Blocker | Table SQL / Planner | Jingsong Lee | Zhenghua Gao |
| [FLINK-15383](https://issues.apache.org/jira/browse/FLINK-15383) | Using sink Schema field name instead of query Schema field name in UpsertStreamTableSink |  Critical | Table SQL / Legacy Planner, Table SQL / Planner | Leonard Xu | Leonard Xu |
| [FLINK-15334](https://issues.apache.org/jira/browse/FLINK-15334) | Fix physcial schema mapping in TableFormatFactoryBase to support define orderless computed column |  Major | Table SQL / API | Leonard Xu | Leonard Xu |
| [FLINK-15381](https://issues.apache.org/jira/browse/FLINK-15381) | INSERT INTO VALUES statement fails if a cast project is applied |  Blocker | Table SQL / Planner | Jark Wu | godfrey he |
| [FLINK-15377](https://issues.apache.org/jira/browse/FLINK-15377) | Mesos WordCount test fails on travis |  Critical | Deployment / Mesos | Yu Li | Yangze Guo |
| [FLINK-14613](https://issues.apache.org/jira/browse/FLINK-14613) | Add validation check when applying UDF to  tempral table key in  Temporal Table Join condition |  Major | Table SQL / Planner | hailong wang | hailong wang |
| [FLINK-15437](https://issues.apache.org/jira/browse/FLINK-15437) | Start session with property of "-Dtaskmanager.memory.process.size" not work |  Critical | Command Line Client, Deployment / YARN | xiaojin.wy | Xintong Song |
| [FLINK-15429](https://issues.apache.org/jira/browse/FLINK-15429) | HiveObjectConversion implementations need to handle null values |  Blocker | Connectors / Hive | Terry Wang | Rui Li |
| [FLINK-15403](https://issues.apache.org/jira/browse/FLINK-15403) | 'State Migration end-to-end test from 1.6' is unstable on travis. |  Blocker | Tests | Xintong Song | Piotr Nowojski |
| [FLINK-15380](https://issues.apache.org/jira/browse/FLINK-15380) | Unable to set number of TM and number of Slot for MiniCluster in Scala shell |  Major | Scala Shell | Jeff Zhang | Jeff Zhang |
| [FLINK-15341](https://issues.apache.org/jira/browse/FLINK-15341) | Reset context classload in PackagedProgramUtils#createJobGraph |  Major | Client / Job Submission | Zili Chen | Zili Chen |
| [FLINK-15427](https://issues.apache.org/jira/browse/FLINK-15427) | State TTL RocksDb backend end-to-end test stalls on travis |  Blocker | Runtime / State Backends | Yu Li | Congxian Qiu |
| [FLINK-15297](https://issues.apache.org/jira/browse/FLINK-15297) | Do not throw exception if YARN Application switched to FINISHED immediately after deployed in YarnClusterDescriptor#startAppMaster |  Major | Deployment / YARN | Zili Chen | Zili Chen |
| [FLINK-15171](https://issues.apache.org/jira/browse/FLINK-15171) | Performance regression in serialisation benchmarks |  Blocker | API / Type Serialization System, Benchmarks | Piotr Nowojski | Piotr Nowojski |
| [FLINK-15468](https://issues.apache.org/jira/browse/FLINK-15468) | INSERT OVERWRITE not supported from SQL CLI |  Blocker | Table SQL / Client | Rui Li | Rui Li |
| [FLINK-15481](https://issues.apache.org/jira/browse/FLINK-15481) | The type hint of \`TableEnvironment#from\_elements\` in \`table\_environment.py\` is incomplete |  Trivial | API / Python | Wei Zhong | Wei Zhong (old) |
| [FLINK-15478](https://issues.apache.org/jira/browse/FLINK-15478) | FROM\_BASE64 code gen type wrong |  Major | Table SQL / Planner | Benchao Li | Benchao Li |
| [FLINK-15053](https://issues.apache.org/jira/browse/FLINK-15053) | Configurations with values contains space may cause TM failures on Yarn |  Blocker | Deployment / YARN, Runtime / Coordination | Xintong Song | Yang Wang |
| [FLINK-14200](https://issues.apache.org/jira/browse/FLINK-14200) | Temporal Table Function Joins do not work on Tables (only TableSources) on the query side |  Major | Table SQL / Planner | Benoît Paris | Jark Wu |
| [FLINK-15398](https://issues.apache.org/jira/browse/FLINK-15398) | Fix incorrect code example in "Catalogs" page |  Blocker | Documentation | Terry Wang | Terry Wang |
| [FLINK-15465](https://issues.apache.org/jira/browse/FLINK-15465) | Avoid failing when required memory calculation not accurate in BinaryHashTable |  Major | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-11964](https://issues.apache.org/jira/browse/FLINK-11964) | Avoid hash collision of partition and bucket in HybridHashTable in Blink SQL |  Major | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-15482](https://issues.apache.org/jira/browse/FLINK-15482) | Failed to call Hive functions returning decimal type |  Blocker | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-15442](https://issues.apache.org/jira/browse/FLINK-15442) | Harden the Avro Confluent Schema Registry nightly end-to-end test |  Critical | Tests | Yangze Guo | Yangze Guo |
| [FLINK-15406](https://issues.apache.org/jira/browse/FLINK-15406) | RocksDB savepoints with heap timers cannot be restored by non-process functions |  Major | API / State Processor | Darcy Lin | Seth Wiesman |
| [FLINK-15370](https://issues.apache.org/jira/browse/FLINK-15370) | Configured write buffer manager actually not take effect in RocksDB's DBOptions |  Blocker | Runtime / State Backends | Yun Tang | Yu Li |
| [FLINK-15300](https://issues.apache.org/jira/browse/FLINK-15300) | Shuffle memory fraction sanity check does not account for its min/max limit |  Critical | Runtime / Configuration | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-15483](https://issues.apache.org/jira/browse/FLINK-15483) | Starting jobmanager pod should respect environment config option |  Major | Deployment / Kubernetes | Yang Wang | Yang Wang |
| [FLINK-15338](https://issues.apache.org/jira/browse/FLINK-15338) | TM Metaspace memory leak when submitting PyFlink UDF jobs multiple times |  Major | API / Python | sunjincheng | Wei Zhong (old) |
| [FLINK-15466](https://issues.apache.org/jira/browse/FLINK-15466) | \`FlinkAggregateExpandDistinctAggregatesRule\` generates wrong plan for cases that have distinct aggs with filter. |  Major | Table SQL / Planner | Shuo Cheng | Shuo Cheng |
| [FLINK-15518](https://issues.apache.org/jira/browse/FLINK-15518) | Don't hide web frontend side pane automatically |  Critical | Runtime / Web Frontend | Aljoscha Krettek | Yadong Xie |
| [FLINK-15542](https://issues.apache.org/jira/browse/FLINK-15542) | lz4-java licensing is incorrect |  Blocker | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15543](https://issues.apache.org/jira/browse/FLINK-15543) | Apache Camel not bundled but listed in flink-dist NOTICE |  Blocker | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12785](https://issues.apache.org/jira/browse/FLINK-12785) | RocksDB savepoint recovery can use a lot of unmanaged memory |  Major | Runtime / State Backends | Mike Kaplinskiy | Congxian Qiu |
| [FLINK-15490](https://issues.apache.org/jira/browse/FLINK-15490) | KafkaITCase.testOneSourceMultiplePartitions fails on Travis |  Critical | Connectors / Kafka, Tests | Till Rohrmann | Jiangjie Qin |
| [FLINK-15504](https://issues.apache.org/jira/browse/FLINK-15504) | Flink suppresses stdout/stderr during JobGraph generation from JAR |  Major | Client / Job Submission | Maximilian Michels | Maximilian Michels |
| [FLINK-15523](https://issues.apache.org/jira/browse/FLINK-15523) | ConfigConstants generally excluded from japicmp |  Blocker | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15485](https://issues.apache.org/jira/browse/FLINK-15485) | Reopen tests when blocking issue has been resolved |  Minor | Tests | Leonard Xu | Leonard Xu |
| [FLINK-15522](https://issues.apache.org/jira/browse/FLINK-15522) | Misleading root cause exception when cancelling the job |  Critical | Client / Job Submission, Runtime / Coordination | Till Rohrmann | Zhu Zhu |
| [FLINK-15488](https://issues.apache.org/jira/browse/FLINK-15488) | Cannot start a taskmanger if using logback |  Blocker | API / Core, Deployment / Scripts | Dawid Wysakowicz | Yangze Guo |
| [FLINK-15541](https://issues.apache.org/jira/browse/FLINK-15541) | FlinkKinesisConsumerTest.testSourceSynchronization is unstable on travis. |  Blocker | Connectors / Kinesis | Xintong Song |  |
| [FLINK-15565](https://issues.apache.org/jira/browse/FLINK-15565) | Incompatible types of expression and result type thrown in codegen |  Critical | Table SQL / Planner | xiaojin.wy | Jingsong Lee |
| [FLINK-15354](https://issues.apache.org/jira/browse/FLINK-15354) | Start and stop minikube only in kubernetes related e2e tests |  Major | . | Yang Wang | Yang Wang |
| [FLINK-15533](https://issues.apache.org/jira/browse/FLINK-15533) | Writing DataStream as text file fails due to output path already exists |  Blocker | Client / Job Submission | Rui Li | Kostas Kloudas |
| [FLINK-15576](https://issues.apache.org/jira/browse/FLINK-15576) | remove isTemporary property from CatalogFunction API |  Blocker | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-14091](https://issues.apache.org/jira/browse/FLINK-14091) | Job can not trigger checkpoint forever after zookeeper change leader |  Critical | Runtime / Checkpointing | Peng Wang | Zili Chen |
| [FLINK-15434](https://issues.apache.org/jira/browse/FLINK-15434) | testResourceManagerConnectionAfterRegainingLeadership test fail when run  azure |  Critical | Tests | hailong wang | hailong wang |
| [FLINK-15535](https://issues.apache.org/jira/browse/FLINK-15535) | Add usage of ProcessFunctionTestHarnesses for testing documentation |  Major | Documentation | vinoyang | vinoyang |
| [FLINK-15327](https://issues.apache.org/jira/browse/FLINK-15327) | 'Walkthrough DataStream Scala nightly' sometimes fails with InterruptedException |  Major | Examples, Runtime / Task, Tests | Robert Metzger | Arvid Heise |
| [FLINK-15152](https://issues.apache.org/jira/browse/FLINK-15152) | Job running without periodic checkpoint for stop failed at the beginning |  Critical | Runtime / Checkpointing | Feng Jiajie | Congxian Qiu |
| [FLINK-14843](https://issues.apache.org/jira/browse/FLINK-14843) | Streaming bucketing end-to-end test can fail with Output hash mismatch |  Major | Connectors / FileSystem, Tests | Gary Yao | PengFei Li |
| [FLINK-15489](https://issues.apache.org/jira/browse/FLINK-15489) | WebUI log refresh not working |  Blocker | Runtime / Web Frontend | Dawid Wysakowicz | Yadong Xie |
| [FLINK-13595](https://issues.apache.org/jira/browse/FLINK-13595) | KafkaITCase.testBigRecordJob fails on Travis |  Critical | Connectors / Kafka, Tests | Till Rohrmann | Jiangjie Qin |
| [FLINK-15583](https://issues.apache.org/jira/browse/FLINK-15583) | Scala walkthrough archetype does not compile on Java 11 |  Critical | Quickstarts, Test Infrastructure | Arvid Heise | Arvid Heise |
| [FLINK-15506](https://issues.apache.org/jira/browse/FLINK-15506) | State TTL Compaction Filter option off by default |  Blocker | Runtime / State Backends | Stephan Ewen | Andrey Zagrebin |
| [FLINK-15564](https://issues.apache.org/jira/browse/FLINK-15564) | YarnClusterDescriptorTest failed to validate the original intended behavior |  Major | Deployment / YARN | Xintong Song | Xintong Song |
| [FLINK-15598](https://issues.apache.org/jira/browse/FLINK-15598) | Memory accuracy loss in YarnClusterDescriptor may lead to deployment failure. |  Blocker | Deployment / YARN | Xintong Song | Xintong Song |
| [FLINK-15615](https://issues.apache.org/jira/browse/FLINK-15615) | Docs: wrong guarantees stated for the file sink |  Major | Documentation | Roman Khachatryan | Roman Khachatryan |
| [FLINK-14163](https://issues.apache.org/jira/browse/FLINK-14163) | Execution#producedPartitions is possibly not assigned when used |  Major | Runtime / Coordination | Zhu Zhu | Yuan Mei |
| [FLINK-15638](https://issues.apache.org/jira/browse/FLINK-15638) | releasing/create\_release\_branch.sh does not set version in flink-python/pyflink/version.py |  Blocker | Release System | Gary Yao | Hequn Cheng |
| [FLINK-15537](https://issues.apache.org/jira/browse/FLINK-15537) | Type of keys should be \`BinaryRow\` when manipulating map state with \`BaseRow\` as key type. |  Major | Table SQL / Planner | Shuo Cheng | Shuo Cheng |
| [FLINK-15577](https://issues.apache.org/jira/browse/FLINK-15577) | WindowAggregate RelNodes missing Window specs in digest |  Critical | Table SQL / Legacy Planner | Benoit Hanotte | Benoit Hanotte |
| [FLINK-15575](https://issues.apache.org/jira/browse/FLINK-15575) | Azure Filesystem Shades Wrong Package "httpcomponents" |  Major | FileSystems | Konstantin Knauf | Konstantin Knauf |
| [FLINK-15599](https://issues.apache.org/jira/browse/FLINK-15599) | SQL client requires both legacy and blink planner to be on the classpath |  Major | Table SQL / Client | Dawid Wysakowicz | Jingsong Lee |
| [FLINK-15497](https://issues.apache.org/jira/browse/FLINK-15497) | Streaming TopN operator doesn't reduce outputs when rank number is not required |  Major | Table SQL / Runtime | Kurt Young | Jing Zhang |
| [FLINK-15631](https://issues.apache.org/jira/browse/FLINK-15631) | Cannot use generic types as the result of an AggregateFunction in Blink planner |  Major | Table SQL / Planner | Dawid Wysakowicz | Jingsong Lee |
| [FLINK-15549](https://issues.apache.org/jira/browse/FLINK-15549) | Integer overflow in SpillingResettableMutableObjectIterator |  Major | API / DataSet | caojian0613 | caojian0613 |
| [FLINK-15355](https://issues.apache.org/jira/browse/FLINK-15355) | Nightly streaming file sink fails with unshaded hadoop |  Blocker | FileSystems | Arvid Heise | Arvid Heise |
| [FLINK-15686](https://issues.apache.org/jira/browse/FLINK-15686) | SELECT 'ABC'; does not work in sql-client |  Blocker | Table SQL / Client | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-15632](https://issues.apache.org/jira/browse/FLINK-15632) | Zookeeper HA service could not work for active kubernetes integration |  Critical | Deployment / Kubernetes | Yang Wang | Yang Wang |
| [FLINK-13758](https://issues.apache.org/jira/browse/FLINK-13758) | Failed to submit JobGraph when registered hdfs file in DistributedCache |  Critical | Command Line Client | luoguohao | Yang Wang |
| [FLINK-15150](https://issues.apache.org/jira/browse/FLINK-15150) | ZooKeeperLeaderElectionITCase.testJobExecutionOnClusterWithLeaderChange failed on Travis |  Critical | Tests | Congxian Qiu | Chesnay Schepler |
| [FLINK-15552](https://issues.apache.org/jira/browse/FLINK-15552) | parameters --library and --jar doesn't work for DDL in sqlClient |  Critical | Table SQL / Client, Table SQL / Runtime | Terry Wang | Leonard Xu |
| [FLINK-14742](https://issues.apache.org/jira/browse/FLINK-14742) | Unstable tests TaskExecutorTest#testSubmitTaskBeforeAcceptSlot |  Critical | Runtime / Coordination | Zili Chen | Till Rohrmann |
| [FLINK-15691](https://issues.apache.org/jira/browse/FLINK-15691) | TaskExecutorPartitionLifecycleTest#runInTaskExecutorThreadAndWait does not run in main thread |  Critical | Runtime / Coordination, Tests | Till Rohrmann | Chesnay Schepler |
| [FLINK-15602](https://issues.apache.org/jira/browse/FLINK-15602) | Blink planner does not respect the precision when casting timestamp to varchar |  Blocker | Table SQL / Planner | Dawid Wysakowicz | Zhenghua Gao |
| [FLINK-15592](https://issues.apache.org/jira/browse/FLINK-15592) | Streaming sql throw hive exception when it doesn't use any hive table |  Critical | Table SQL / Planner | Jeff Zhang | Rui Li |
| [FLINK-14701](https://issues.apache.org/jira/browse/FLINK-14701) | Slot leaks if SharedSlotOversubscribedException happens |  Critical | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-15247](https://issues.apache.org/jira/browse/FLINK-15247) | Closing (Testing)MiniCluster may cause ConcurrentModificationException |  Blocker | Tests | Gary Yao | Andrey Zagrebin |
| [FLINK-15748](https://issues.apache.org/jira/browse/FLINK-15748) | Set explict managed memory for RocksDBStateBenchmark |  Major | Benchmarks | Yun Tang | Yun Tang |
| [FLINK-10819](https://issues.apache.org/jira/browse/FLINK-10819) | JobManagerHAProcessFailureRecoveryITCase.testDispatcherProcessFailure is unstable |  Critical | Runtime / Coordination, Tests | sunjincheng | Guowei Ma |
| [FLINK-15651](https://issues.apache.org/jira/browse/FLINK-15651) | JarHandlerTest.testRunJar fails on travis |  Critical | Runtime / REST | Zhu Zhu | Chesnay Schepler |
| [FLINK-15623](https://issues.apache.org/jira/browse/FLINK-15623) | Buildling flink-python with maven profile docs-and-source fails |  Major | Build System | Gary Yao | Chesnay Schepler |
| [FLINK-15837](https://issues.apache.org/jira/browse/FLINK-15837) | flink-kubernetes module does not have correct NOTICE file |  Blocker | Deployment / Kubernetes | Till Rohrmann | Till Rohrmann |
| [FLINK-15840](https://issues.apache.org/jira/browse/FLINK-15840) | ClassCastException is thrown when use tEnv.from for temp/catalog table under Blink planner |  Blocker | Table SQL / API | sunjincheng | Jingsong Lee |
| [FLINK-15010](https://issues.apache.org/jira/browse/FLINK-15010) | Temp directories flink-netty-shuffle-\* are not cleaned up |  Major | Runtime / Network | Nico Kruber | Yun Gao |
| [FLINK-15494](https://issues.apache.org/jira/browse/FLINK-15494) | time field index wrong in LogicalWindowAggregateRuleBase |  Major | Table SQL / Planner | Benchao Li | Benchao Li |
| [FLINK-15658](https://issues.apache.org/jira/browse/FLINK-15658) | The same sql run in a streaming environment producing a Exception, but a batch env can run normally. |  Major | Table SQL / Client | xiaojin.wy | Jark Wu |
| [FLINK-15706](https://issues.apache.org/jira/browse/FLINK-15706) | LastValueAggFunctionWithOrderTest compilation error due to incompatible types |  Critical | Table SQL / Planner, Tests | Yu Li | Jingsong Lee |
| [FLINK-15335](https://issues.apache.org/jira/browse/FLINK-15335) | add-dependencies-for-IDEA not working anymore and dangerous in general |  Major | Documentation, Quickstarts | Nico Kruber | Chesnay Schepler |
| [FLINK-15858](https://issues.apache.org/jira/browse/FLINK-15858) | Unable to use HiveCatalog and kafka together |  Blocker | Table SQL / Ecosystem | Jeff Zhang | Rui Li |
| [FLINK-15863](https://issues.apache.org/jira/browse/FLINK-15863) | Fix docs stating that savepoints are relocatable |  Blocker | Documentation | Nico Kruber | Bastien DINE |
| [FLINK-15905](https://issues.apache.org/jira/browse/FLINK-15905) | Fix Race Condition when releasing shared memory resource |  Blocker | Runtime / Task | Stephan Ewen | Stephan Ewen |
| [FLINK-15914](https://issues.apache.org/jira/browse/FLINK-15914) | Miss the barrier alignment metric for the case of two inputs |  Blocker | Runtime / Checkpointing, Runtime / Metrics | Zhijiang | Zhijiang |
| [FLINK-15868](https://issues.apache.org/jira/browse/FLINK-15868) | Kinesis consumer fails due to jackson-dataformat-cbor conflict in 1.10 RC1 |  Blocker | Connectors / Kinesis | Thomas Weise | Till Rohrmann |
| [FLINK-15937](https://issues.apache.org/jira/browse/FLINK-15937) | Correct the Development Status for PyFlink |  Blocker | API / Python | sunjincheng | sunjincheng |
| [FLINK-15919](https://issues.apache.org/jira/browse/FLINK-15919) | MemoryManager shouldn't allow releasing more memory than reserved |  Critical | Runtime / Task | Yu Li | Yu Li |
| [FLINK-15935](https://issues.apache.org/jira/browse/FLINK-15935) | Unable to use watermark when depends both on flink planner and blink planner |  Blocker | Table SQL / Planner | Jeff Zhang | Jark Wu |
| [FLINK-15917](https://issues.apache.org/jira/browse/FLINK-15917) | Root Exception not shown in Web UI |  Critical | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-15918](https://issues.apache.org/jira/browse/FLINK-15918) | Uptime Metric not reset on Job Restart |  Major | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-10317](https://issues.apache.org/jira/browse/FLINK-10317) | Configure Metaspace size by default |  Major | Deployment / Scripts | Stephan Ewen |  |
| [FLINK-15085](https://issues.apache.org/jira/browse/FLINK-15085) | HistoryServer dashboard config json out of sync |  Blocker | Runtime / Web Frontend | chaganti spurthi | Chesnay Schepler |
| [FLINK-18443](https://issues.apache.org/jira/browse/FLINK-18443) | The operator name select: (ip, ts, count, environment.access AS access, environment.brand AS brand, sid, params.adid AS adid, eventid) exceeded the 80 characters length limit and was truncated |  Major | API / DataStream | mzz |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-14605](https://issues.apache.org/jira/browse/FLINK-14605) | Use Hive-1.1.0 as the profile to test against 1.1.x |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-14715](https://issues.apache.org/jira/browse/FLINK-14715) | HiveModuleTest fails with Hive-3.1.1 |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-14783](https://issues.apache.org/jira/browse/FLINK-14783) | Implement a benchmark for \`ContinuousFileReaderOperator\` |  Major | Benchmarks, Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-15106](https://issues.apache.org/jira/browse/FLINK-15106) | Hive 3.x tests leave metastore\_db folder under build directory |  Minor | Connectors / Hive, Tests | Rui Li | Rui Li |
| [FLINK-14797](https://issues.apache.org/jira/browse/FLINK-14797) | Remove power mockito from RemoteStreamExecutionEnvironmentTest |  Major | . | Zili Chen | Zili Chen |
| [FLINK-15322](https://issues.apache.org/jira/browse/FLINK-15322) | Parquet test fails with Hive versions prior to 1.2.0 |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-15342](https://issues.apache.org/jira/browse/FLINK-15342) | Verify querying Hive view |  Minor | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-15214](https://issues.apache.org/jira/browse/FLINK-15214) | Adding multiple submission e2e test for Flink's Mesos integration |  Critical | Tests | Yangze Guo | Yangze Guo |
| [FLINK-15464](https://issues.apache.org/jira/browse/FLINK-15464) | HiveTableSourceTest::testPartitionFilterDateTimestamp fails with Hive 1.x |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-15921](https://issues.apache.org/jira/browse/FLINK-15921) | Travis-ci error: PYTHON exited with EXIT CODE: 143 |  Minor | API / Python, Build System | sunjincheng | sunjincheng |
| [FLINK-15929](https://issues.apache.org/jira/browse/FLINK-15929) | test\_set\_requirements\_with\_cached\_directory failed on travis |  Major | API / Python | Dian Fu | Dian Fu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-12995](https://issues.apache.org/jira/browse/FLINK-12995) | Add Hive-1.2.1 build to Travis |  Major | Connectors / Hive, Travis | Rui Li | Rui Li |
| [FLINK-12935](https://issues.apache.org/jira/browse/FLINK-12935) | package flink-connector-hive into flink distribution |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-13227](https://issues.apache.org/jira/browse/FLINK-13227) | Translate "Asynchronous I/O for External Data Access" page into Chinese |  Major | chinese-translation, Documentation | WangHengWei | WangHengWei |
| [FLINK-12179](https://issues.apache.org/jira/browse/FLINK-12179) | Remove legacy Instance |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-13158](https://issues.apache.org/jira/browse/FLINK-13158) | Remove WebMonitor interface from webmonitor package |  Major | Runtime / REST | vinoyang | vinoyang |
| [FLINK-13451](https://issues.apache.org/jira/browse/FLINK-13451) | Rework CommonTestUtils.createClassNotInClassPath() to not use Unsafe.defineClass() |  Critical | Tests | Stephan Ewen | Stephan Ewen |
| [FLINK-12747](https://issues.apache.org/jira/browse/FLINK-12747) | Getting Started - Table API Example Walkthrough |  Major | Documentation | Konstantin Knauf | Seth Wiesman |
| [FLINK-13456](https://issues.apache.org/jira/browse/FLINK-13456) | Bump lombok to 1.16.22 |  Major | API / Type Serialization System, Build System, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13453](https://issues.apache.org/jira/browse/FLINK-13453) | Bump shade plugin to 3.2.1 |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13455](https://issues.apache.org/jira/browse/FLINK-13455) | Move jdk.tools exclusions out of dependency management |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13464](https://issues.apache.org/jira/browse/FLINK-13464) | Bump powermock to 2.0.2 |  Major | Build System, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13511](https://issues.apache.org/jira/browse/FLINK-13511) | Kafka 0.10/0.11 tests failing due to missing jaxb-api dependency |  Major | Connectors / Kafka, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13454](https://issues.apache.org/jira/browse/FLINK-13454) | Bump japicmp jaxb dependencies |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13518](https://issues.apache.org/jira/browse/FLINK-13518) | Disable Hive tests |  Major | Connectors / Hive, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12749](https://issues.apache.org/jira/browse/FLINK-12749) | Getting Started - Docker Playgrounds - Flink Cluster Playground |  Major | Documentation | Konstantin Knauf | Konstantin Knauf |
| [FLINK-12479](https://issues.apache.org/jira/browse/FLINK-12479) | Make InputProcessors and StreamIterationHead non-blocking |  Major | Runtime / Task | Stefan Richter | Piotr Nowojski |
| [FLINK-13505](https://issues.apache.org/jira/browse/FLINK-13505) | Translate "Java Lambda Expressions" page into Chinese |  Major | chinese-translation, Documentation | WangHengWei | WangHengWei |
| [FLINK-13473](https://issues.apache.org/jira/browse/FLINK-13473) | Add GroupWindowed FlatAggregate support to stream Table API(blink planner), i.e, align with flink planner |  Major | Table SQL / Planner | sunjincheng | sunjincheng |
| [FLINK-13490](https://issues.apache.org/jira/browse/FLINK-13490) | Fix if one column value is null when reading JDBC, the following values are all null |  Critical | Connectors / JDBC | Caizhi Weng | Caizhi Weng |
| [FLINK-12984](https://issues.apache.org/jira/browse/FLINK-12984) | Only call Histogram#getStatistics() once per set of retrieved statistics |  Major | Runtime / Metrics | Nico Kruber | Nico Kruber |
| [FLINK-13706](https://issues.apache.org/jira/browse/FLINK-13706) | add documentation of how to use Hive functions in Flink |  Major | Connectors / Hive, Documentation | Bowen Li | Bowen Li |
| [FLINK-13460](https://issues.apache.org/jira/browse/FLINK-13460) | Rework SerializedThrowableTest to not use Unsafe.defineClass() |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11879](https://issues.apache.org/jira/browse/FLINK-11879) | Add JobGraph validators for the uses of InputSelectable, BoundedOneInput and BoundedMultiInput |  Major | Runtime / Task | Haibo Sun | Haibo Sun |
| [FLINK-12745](https://issues.apache.org/jira/browse/FLINK-12745) | Sparse and dense vector class, and dense matrix class with basic operations. |  Major | Library / Machine Learning | Xu Yang | Xu Yang |
| [FLINK-13718](https://issues.apache.org/jira/browse/FLINK-13718) | Disable HBase tests |  Major | Connectors / HBase, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13644](https://issues.apache.org/jira/browse/FLINK-13644) | Translate "State Backends" page into Chinese |  Major | chinese-translation, Documentation | fanrui | fanrui |
| [FLINK-13512](https://issues.apache.org/jira/browse/FLINK-13512) | Kinesis connector missing jaxb-api dependency |  Major | Connectors / Kinesis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12981](https://issues.apache.org/jira/browse/FLINK-12981) | Ignore NaN values in histogram's percentile implementation |  Major | Runtime / Metrics | Nico Kruber | Nico Kruber |
| [FLINK-12982](https://issues.apache.org/jira/browse/FLINK-12982) | Make DescriptiveStatisticsHistogramStatistics a true point-in-time snapshot |  Major | Runtime / Metrics | Nico Kruber | Nico Kruber |
| [FLINK-12983](https://issues.apache.org/jira/browse/FLINK-12983) | Replace descriptive histogram's storage back-end |  Major | Runtime / Metrics | Nico Kruber | Nico Kruber |
| [FLINK-13716](https://issues.apache.org/jira/browse/FLINK-13716) | Remove Program-related chinese documentation |  Major | Documentation | Kostas Kloudas | Zili Chen |
| [FLINK-13715](https://issues.apache.org/jira/browse/FLINK-13715) | Remove Program-related english documentation. |  Major | Documentation | Kostas Kloudas | Kostas Kloudas |
| [FLINK-13714](https://issues.apache.org/jira/browse/FLINK-13714) | Remove Program-related code. |  Major | . | Kostas Kloudas | Kostas Kloudas |
| [FLINK-13354](https://issues.apache.org/jira/browse/FLINK-13354) | Add documentation for how to use blink planner |  Critical | Documentation, Table SQL / Planner | Jark Wu | godfrey he |
| [FLINK-13105](https://issues.apache.org/jira/browse/FLINK-13105) | Add documentation for blink planner's built-in functions |  Critical | Documentation, Table SQL / Planner | Zhenghua Gao | Zhenghua Gao |
| [FLINK-13762](https://issues.apache.org/jira/browse/FLINK-13762) | Add the exception throwable in the interface methods of ValveOutputHandler |  Minor | Runtime / Task | Zhijiang | Zhijiang |
| [FLINK-13359](https://issues.apache.org/jira/browse/FLINK-13359) | Add documentation for DDL introduction |  Critical | Documentation, Table SQL / API | Jark Wu | Danny Chen |
| [FLINK-13362](https://issues.apache.org/jira/browse/FLINK-13362) | Add documentation for Kafka & ES & FileSystem DDL |  Major | Documentation | Jark Wu | Danny Chen |
| [FLINK-13724](https://issues.apache.org/jira/browse/FLINK-13724) | Remove unnecessary whitespace from the docs' sidenav |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-13723](https://issues.apache.org/jira/browse/FLINK-13723) | Use liquid-c for faster doc generation |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-13405](https://issues.apache.org/jira/browse/FLINK-13405) | Translate "Basic API Concepts" page into Chinese |  Major | chinese-translation, Documentation | WangHengWei | WangHengWei |
| [FLINK-13614](https://issues.apache.org/jira/browse/FLINK-13614) | Add MigrationVersion.v1\_9 |  Blocker | Tests | Till Rohrmann | vinoyang |
| [FLINK-13817](https://issues.apache.org/jira/browse/FLINK-13817) | Expose whether web submissions are enabled |  Major | Runtime / REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13774](https://issues.apache.org/jira/browse/FLINK-13774) | Expression DSL use should resolve Expressions in blink |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-13882](https://issues.apache.org/jira/browse/FLINK-13882) | Remove ProcessReaper |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-13248](https://issues.apache.org/jira/browse/FLINK-13248) | Enhance mailbox executor with yield-to-downstream functionality |  Major | Runtime / Task | Stefan Richter | Arvid Heise |
| [FLINK-13051](https://issues.apache.org/jira/browse/FLINK-13051) | Drop the non-selectable two-input StreamTask and Processor |  Major | Runtime / Task | Haibo Sun | Haibo Sun |
| [FLINK-13467](https://issues.apache.org/jira/browse/FLINK-13467) | Bump ASM to 7.1 |  Major | Build System, BuildSystem / Shaded | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13533](https://issues.apache.org/jira/browse/FLINK-13533) | CassandraConnectorITCase fails on Java 11 |  Major | Connectors / Cassandra, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13355](https://issues.apache.org/jira/browse/FLINK-13355) | Add documentation for Temporal Table Join in blink planner |  Critical | Documentation, Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-13356](https://issues.apache.org/jira/browse/FLINK-13356) | Add documentation for TopN and Deduplication in blink planner |  Critical | Documentation, Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-13363](https://issues.apache.org/jira/browse/FLINK-13363) | Add documentation for streaming aggregate performance tunning. |  Major | Documentation, Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-13941](https://issues.apache.org/jira/browse/FLINK-13941) | Prevent data-loss by not cleaning up small part files from S3. |  Blocker | Connectors / FileSystem | Kostas Kloudas | Kostas Kloudas |
| [FLINK-13775](https://issues.apache.org/jira/browse/FLINK-13775) | Refactor ExpressionConverter(RexNodeConverter) in blink |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-13893](https://issues.apache.org/jira/browse/FLINK-13893) | S3 tests are failing due to missing jaxb dependency |  Major | FileSystems | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13528](https://issues.apache.org/jira/browse/FLINK-13528) | Kafka E2E tests fail on Java 11 |  Major | Connectors / Kafka, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13457](https://issues.apache.org/jira/browse/FLINK-13457) | Setup travis cron builds for Java 11 |  Major | Build System, Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13989](https://issues.apache.org/jira/browse/FLINK-13989) | Remove legacy ClassloadingProps |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-13942](https://issues.apache.org/jira/browse/FLINK-13942) | Add Overview page for Getting Started section |  Major | Documentation | Fabian Hueske | Fabian Hueske |
| [FLINK-13988](https://issues.apache.org/jira/browse/FLINK-13988) | Remove legacy JobManagerMode |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-13990](https://issues.apache.org/jira/browse/FLINK-13990) | Remove JobModificationException |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-13946](https://issues.apache.org/jira/browse/FLINK-13946) | Remove deactivated JobSession-related code. |  Major | Client / Job Submission | Kostas Kloudas | Kostas Kloudas |
| [FLINK-13677](https://issues.apache.org/jira/browse/FLINK-13677) | Translate "Monitoring Back Pressure" page into Chinese |  Major | chinese-translation, Documentation | fanrui | fanrui |
| [FLINK-13444](https://issues.apache.org/jira/browse/FLINK-13444) | Translate English content of FLINK-13396 into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Ke Li |
| [FLINK-13959](https://issues.apache.org/jira/browse/FLINK-13959) | Consolidate DetachedEnvironment and ContextEnvironment |  Major | Client / Job Submission | Kostas Kloudas | Kostas Kloudas |
| [FLINK-12481](https://issues.apache.org/jira/browse/FLINK-12481) | Make processing time timer trigger run via the mailbox |  Major | Runtime / Task | Stefan Richter | Alex |
| [FLINK-12482](https://issues.apache.org/jira/browse/FLINK-12482) | Make checkpoint trigger/notifyComplete run via the mailbox queue |  Major | Runtime / Task | Stefan Richter | Alex |
| [FLINK-12958](https://issues.apache.org/jira/browse/FLINK-12958) | Integrate AsyncWaitOperator with mailbox |  Major | Runtime / Task | Stefan Richter |  |
| [FLINK-13449](https://issues.apache.org/jira/browse/FLINK-13449) | Add ARM architecture to MemoryArchitecture |  Major | . | Stephan Ewen | wangxiyuan |
| [FLINK-13953](https://issues.apache.org/jira/browse/FLINK-13953) | Facilitate enabling new Scheduler in MiniCluster Tests |  Major | Runtime / Coordination, Tests | Gary Yao | Zhu Zhu |
| [FLINK-13766](https://issues.apache.org/jira/browse/FLINK-13766) | Refactor the implementation of StreamInputProcessor based on StreamTaskInput#emitNext |  Minor | Runtime / Task | Zhijiang | Zhijiang |
| [FLINK-14157](https://issues.apache.org/jira/browse/FLINK-14157) | Temporarily remove S3 StreamingFileSink end-to-end test |  Major | Connectors / FileSystem, Tests | Kostas Kloudas | Kostas Kloudas |
| [FLINK-14113](https://issues.apache.org/jira/browse/FLINK-14113) | Remove class JobWithJars |  Major | Client / Job Submission | Zili Chen | Zili Chen |
| [FLINK-14129](https://issues.apache.org/jira/browse/FLINK-14129) | HiveTableSource should implement ProjectableTableSource |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-13767](https://issues.apache.org/jira/browse/FLINK-13767) | Refactor StreamInputProcessor#processInput based on InputStatus |  Minor | Runtime / Network, Runtime / Task | Zhijiang | Zhijiang |
| [FLINK-14128](https://issues.apache.org/jira/browse/FLINK-14128) | Remove the description of restart strategy customization |  Major | Documentation, Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-12709](https://issues.apache.org/jira/browse/FLINK-12709) | Implement RestartBackoffTimeStrategyFactoryLoader |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14114](https://issues.apache.org/jira/browse/FLINK-14114) | Shift down ClusterClient#timeout to RestClusterClient |  Major | Client / Job Submission | Zili Chen | Zhu Zhu |
| [FLINK-12433](https://issues.apache.org/jira/browse/FLINK-12433) | Implement DefaultScheduler stub |  Major | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-14244](https://issues.apache.org/jira/browse/FLINK-14244) | Use correct RestartBackoffTimeStrategy in new DefaultScheduler |  Major | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-10995](https://issues.apache.org/jira/browse/FLINK-10995) | Copy intermediate serialization results only once for broadcast mode |  Minor | Runtime / Task | Zhijiang | Zhijiang |
| [FLINK-13277](https://issues.apache.org/jira/browse/FLINK-13277) | add documentation of Hive source/sink |  Critical | Connectors / Hive, Documentation | Bowen Li | Rui Li |
| [FLINK-14050](https://issues.apache.org/jira/browse/FLINK-14050) | Refactor YarnClusterDescriptor inheritance |  Major | Client / Job Submission, Command Line Client | Zili Chen | Zili Chen |
| [FLINK-14178](https://issues.apache.org/jira/browse/FLINK-14178) | maven-shade-plugin 3.2.1 doesn't work on ARM for Flink |  Minor | Build System | wangxiyuan | Dian Fu |
| [FLINK-13516](https://issues.apache.org/jira/browse/FLINK-13516) | YARNSessionFIFOSecuredITCase fails on Java 11 |  Major | Deployment / YARN, Tests | Chesnay Schepler | Haibo Sun |
| [FLINK-13515](https://issues.apache.org/jira/browse/FLINK-13515) | ClassLoaderITCase fails on Java 11 |  Major | Command Line Client, Tests | Chesnay Schepler | Haibo Sun |
| [FLINK-14247](https://issues.apache.org/jira/browse/FLINK-14247) | Use NoResourceAvailableException to wrap TimeoutException on slot allocation (Scheduler NG) |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-13037](https://issues.apache.org/jira/browse/FLINK-13037) | Translate "Concepts -\> Glossary" page into Chinese |  Major | chinese-translation, Documentation | Konstantin Knauf | Jeff Yang |
| [FLINK-13382](https://issues.apache.org/jira/browse/FLINK-13382) | Port DecimalITCase to unit tests |  Minor | Table SQL / Planner | Jark Wu | Leonard Xu |
| [FLINK-13657](https://issues.apache.org/jira/browse/FLINK-13657) | Remove FlinkJoinToMultiJoinRule pull-in from Calcite |  Major | Table SQL / Planner | Jark Wu | Danny Chen |
| [FLINK-14310](https://issues.apache.org/jira/browse/FLINK-14310) | Get ExecutionVertexID from ExecutionVertex rather than creating new instances |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14271](https://issues.apache.org/jira/browse/FLINK-14271) | Remove legacy RestartPipelinedRegionStrategy |  Minor | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-13360](https://issues.apache.org/jira/browse/FLINK-13360) | Add documentation for HBase connector for Table API & SQL |  Major | Connectors / HBase, Documentation | Jark Wu | Jingsong Lee |
| [FLINK-13361](https://issues.apache.org/jira/browse/FLINK-13361) | Add documentation for JDBC connector for Table API & SQL |  Major | Connectors / JDBC, Documentation | Jark Wu | Jingsong Lee |
| [FLINK-14289](https://issues.apache.org/jira/browse/FLINK-14289) | Remove Optional fields from RecordWriter relevant classes |  Minor | Runtime / Task | Zhijiang | Zhijiang |
| [FLINK-14004](https://issues.apache.org/jira/browse/FLINK-14004) | Define SourceReaderOperator to verify the integration with StreamOneInputProcessor |  Minor | Runtime / Task | Zhijiang | Zhijiang |
| [FLINK-14212](https://issues.apache.org/jira/browse/FLINK-14212) | Support Python UDFs without arguments |  Major | API / Python | Dian Fu | Wei Zhong (old) |
| [FLINK-14291](https://issues.apache.org/jira/browse/FLINK-14291) | Add unit tests for DefaultScheduler to test concurrent failover behavior |  Major | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-14331](https://issues.apache.org/jira/browse/FLINK-14331) | Reset vertices right after they transition to terminated states |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14246](https://issues.apache.org/jira/browse/FLINK-14246) | Annotate all MiniCluster tests in flink-runtime with AlsoRunWithSchedulerNG |  Major | Runtime / Coordination, Tests | Zhu Zhu | Zhu Zhu |
| [FLINK-14216](https://issues.apache.org/jira/browse/FLINK-14216) | introduce temp system functions to FunctionCatalog |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-14217](https://issues.apache.org/jira/browse/FLINK-14217) | introduce temp functions to FunctionCatalog |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-14045](https://issues.apache.org/jira/browse/FLINK-14045) | Rewrite DefaultExecutionSlotAllocator to use SlotProviderStrategy |  Major | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-14365](https://issues.apache.org/jira/browse/FLINK-14365) | Annotate MiniCluster tests in core modules with AlsoRunWithSchedulerNG |  Major | Runtime / Coordination, Tests | Zhu Zhu | Zhu Zhu |
| [FLINK-14290](https://issues.apache.org/jira/browse/FLINK-14290) | Decouple plan translation from job execution/ClusterClient |  Major | Client / Job Submission | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-14391](https://issues.apache.org/jira/browse/FLINK-14391) | Remove FlinkPlan Interface |  Major | API / DataSet, API / DataStream | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-14263](https://issues.apache.org/jira/browse/FLINK-14263) | Extract static method from ClusterClient to ClientUtils |  Major | Client / Job Submission | Zili Chen | Zili Chen |
| [FLINK-13818](https://issues.apache.org/jira/browse/FLINK-13818) | Check whether web submission are enabled |  Major | Runtime / Web Frontend | Chesnay Schepler | Yadong Xie |
| [FLINK-14394](https://issues.apache.org/jira/browse/FLINK-14394) | Remove unnecessary interface method BufferProvider#requestBufferBlocking |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-13485](https://issues.apache.org/jira/browse/FLINK-13485) | Translate "Table API Example Walkthrough" page into Chinese |  Major | chinese-translation, Documentation | Jark Wu | AT-Fieldless |
| [FLINK-14416](https://issues.apache.org/jira/browse/FLINK-14416) | Add Module interface and ModuleManager |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-14156](https://issues.apache.org/jira/browse/FLINK-14156) | Execute/run processing timer triggers taking into account operator level mailbox loops |  Major | Runtime / Task | Alex | Alex |
| [FLINK-14232](https://issues.apache.org/jira/browse/FLINK-14232) | Support global failure handling for DefaultScheduler (SchedulerNG) |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14265](https://issues.apache.org/jira/browse/FLINK-14265) | Don't use ContinuousFileReaderOperator to support multiple paths |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-14321](https://issues.apache.org/jira/browse/FLINK-14321) | Support to parse watermark statement in SQL DDL |  Major | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-14381](https://issues.apache.org/jira/browse/FLINK-14381) | Partition field names should be got from CatalogTable instead of source/sink |  Major | Table SQL / API, Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-14363](https://issues.apache.org/jira/browse/FLINK-14363) | Prevent vertex from being affected by outdated deployment (SchedulerNG) |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14449](https://issues.apache.org/jira/browse/FLINK-14449) | SavepointMigrationTestBase deadline should be setup in the test |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14518](https://issues.apache.org/jira/browse/FLINK-14518) | Generalize TE-\>RM payload |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14475](https://issues.apache.org/jira/browse/FLINK-14475) | Adjust TaskExecutor interface to support partition promotions |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14417](https://issues.apache.org/jira/browse/FLINK-14417) | Develop CoreModule to provide Flink built-in functions |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-14153](https://issues.apache.org/jira/browse/FLINK-14153) | Add to BLAS a method that performs DenseMatrix and SparseVector multiplication. |  Major | Library / Machine Learning | Xu Yang |  |
| [FLINK-14040](https://issues.apache.org/jira/browse/FLINK-14040) | Enable NG scheduler testing in per-commit tests |  Major | Build System, Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-11635](https://issues.apache.org/jira/browse/FLINK-11635) | Translate "Checkpointing" page into Chinese |  Major | chinese-translation, Documentation | Congxian Qiu | PengYang |
| [FLINK-14396](https://issues.apache.org/jira/browse/FLINK-14396) | Implement rudimentary non-blocking network output |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-14230](https://issues.apache.org/jira/browse/FLINK-14230) |  Change the endInput call of the downstream operator to after the upstream operator closes |  Major | Runtime / Task | Haibo Sun | Haibo Sun |
| [FLINK-13904](https://issues.apache.org/jira/browse/FLINK-13904) | Avoid competition between different rounds of checkpoint triggering |  Major | Runtime / Checkpointing | Biao Liu | Biao Liu |
| [FLINK-14134](https://issues.apache.org/jira/browse/FLINK-14134) | Introduce LimitableTableSource to optimize limit |  Major | Table SQL / API, Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-14493](https://issues.apache.org/jira/browse/FLINK-14493) | Introduce data types to ConfigOptions |  Major | Runtime / Configuration | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-14218](https://issues.apache.org/jira/browse/FLINK-14218) | support precise function reference |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-11405](https://issues.apache.org/jira/browse/FLINK-11405) | Add maxExceptions query parameter |  Major | Runtime / REST | lining | lining |
| [FLINK-14403](https://issues.apache.org/jira/browse/FLINK-14403) | Remove legacy NotifyCheckpointComplete and TriggerCheckpoint |  Major | Runtime / Task | Yun Tang | Yun Tang |
| [FLINK-14535](https://issues.apache.org/jira/browse/FLINK-14535) | Cast exception is thrown when count distinct on decimal fields |  Minor | Table SQL / Planner | Zhenghua Gao | Zhenghua Gao |
| [FLINK-14253](https://issues.apache.org/jira/browse/FLINK-14253) | Add hash distribution and sort grouping only when dynamic partition insert |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-14532](https://issues.apache.org/jira/browse/FLINK-14532) | Separate PartitionTracker into generic and JM-specific versions |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14534](https://issues.apache.org/jira/browse/FLINK-14534) | FunctionCatalog.getUserDefinedFunctions() should include temp functions |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-14389](https://issues.apache.org/jira/browse/FLINK-14389) | Restore task state in new DefaultScheduler |  Major | Runtime / Coordination | Gary Yao | Zhu Zhu |
| [FLINK-12526](https://issues.apache.org/jira/browse/FLINK-12526) | Remove STATE\_UPDATER in ExecutionGraph |  Minor | Runtime / Coordination | vinoyang | vinoyang |
| [FLINK-14219](https://issues.apache.org/jira/browse/FLINK-14219) | support ambiguous function reference |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-14522](https://issues.apache.org/jira/browse/FLINK-14522) | Adjust GC Cleaner for unsafe memory and Java 11 |  Major | Runtime / Task | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-14059](https://issues.apache.org/jira/browse/FLINK-14059) | Introduce option allVerticesInSameSlotSharingGroupByDefault in ExecutionConfig |  Major | Runtime / Coordination, Table SQL / Runtime | Xintong Song | Zhu Zhu |
| [FLINK-14476](https://issues.apache.org/jira/browse/FLINK-14476) | Extend PartitionTracker to support partition promotions |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14439](https://issues.apache.org/jira/browse/FLINK-14439) | RestartPipelinedRegionStrategy leverage tracked partition availability for better failover experience in DefaultScheduler |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14440](https://issues.apache.org/jira/browse/FLINK-14440) | Enable BatchFineGrainedRecoveryITCase to pass with scheduler NG |  Major | Tests | Zhu Zhu | Zhu Zhu |
| [FLINK-14377](https://issues.apache.org/jira/browse/FLINK-14377) | Translate ProgramOptions relevant for job execution to ConfigOptions. |  Major | Client / Job Submission | Kostas Kloudas | Kostas Kloudas |
| [FLINK-14502](https://issues.apache.org/jira/browse/FLINK-14502) | Make ClusterDescriptor/ClusterSpecification creation configuration-based. |  Major | Client / Job Submission | Kostas Kloudas | Kostas Kloudas |
| [FLINK-14501](https://issues.apache.org/jira/browse/FLINK-14501) | Move ClusterDescriptor/ClusterSpecification creation from the CustomCommandLine to a ClusterClientFactory |  Major | Client / Job Submission, Command Line Client | Kostas Kloudas | Kostas Kloudas |
| [FLINK-14496](https://issues.apache.org/jira/browse/FLINK-14496) | Exclude detach flag from ClusterClient |  Major | Client / Job Submission | Zili Chen | Zili Chen |
| [FLINK-14322](https://issues.apache.org/jira/browse/FLINK-14322) | Add watermark information in TableSchema |  Major | Table SQL / API, Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-12939](https://issues.apache.org/jira/browse/FLINK-12939) | Translate "Apache Kafka Connector" page into Chinese |  Minor | chinese-translation, Documentation | Jark Wu | Jeff Yang |
| [FLINK-14488](https://issues.apache.org/jira/browse/FLINK-14488) | Update python table API with temporary tables & views methods |  Major | API / Python, Table SQL / API | Dawid Wysakowicz | Dian Fu |
| [FLINK-14221](https://issues.apache.org/jira/browse/FLINK-14221) | support drop temp system functions and temp catalog functions |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-14536](https://issues.apache.org/jira/browse/FLINK-14536) | Make clear the way to aggregate specified cpuCores resources |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14498](https://issues.apache.org/jira/browse/FLINK-14498) | Introduce NetworkBufferPool#isAvailable() for non-blocking output |  Minor | Runtime / Network | Zhijiang | Yingjie Cao |
| [FLINK-14080](https://issues.apache.org/jira/browse/FLINK-14080) | Introduce SqlTimestamp as internal representation for high precision of timestamp |  Major | Table SQL / Planner | Jingsong Lee | Zhenghua Gao |
| [FLINK-14372](https://issues.apache.org/jira/browse/FLINK-14372) | Enable KeyedStateCheckpointingITCase to pass with scheduler NG |  Major | Runtime / Coordination, Tests | Zhu Zhu | Gary Yao |
| [FLINK-14583](https://issues.apache.org/jira/browse/FLINK-14583) | Remove progressLock from ExecutionGraph |  Major | Runtime / Coordination | vinoyang | vinoyang |
| [FLINK-12527](https://issues.apache.org/jira/browse/FLINK-12527) | Remove GLOBAL\_VERSION\_UPDATER in ExecutionGraph |  Minor | Runtime / Coordination | vinoyang | vinoyang |
| [FLINK-14578](https://issues.apache.org/jira/browse/FLINK-14578) | load/unloadModule() should throw RuntimeException rather than checked exception |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-14371](https://issues.apache.org/jira/browse/FLINK-14371) | Enable ClassLoaderITCase to pass with scheduler NG |  Major | Runtime / Coordination, Tests | Zhu Zhu | Zhu Zhu |
| [FLINK-14419](https://issues.apache.org/jira/browse/FLINK-14419) | Add ModuleFactory, ModuleDescriptor, ModuleValidator for factory discovery service |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-14418](https://issues.apache.org/jira/browse/FLINK-14418) | Create HiveModule to provide Hive built-in functions |  Major | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-14375](https://issues.apache.org/jira/browse/FLINK-14375) | Avoid to notify ineffective state updates to scheduler |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14600](https://issues.apache.org/jira/browse/FLINK-14600) | Change Type of Field verticesFinished from AtomicInteger to int |  Major | Runtime / Coordination | vinoyang | vinoyang |
| [FLINK-14580](https://issues.apache.org/jira/browse/FLINK-14580) | add HiveModuleFactory, HiveModuleDescriptor, and HiveModuleValidator |  Major | Connectors / Hive, Table SQL / Client | Bowen Li | Bowen Li |
| [FLINK-14586](https://issues.apache.org/jira/browse/FLINK-14586) | JobMaster issues promote calls if job is successful |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14373](https://issues.apache.org/jira/browse/FLINK-14373) | Enable ZooKeeperHighAvailabilityITCase to pass with scheduler NG |  Major | Runtime / Coordination, Tests | Zhu Zhu | Zhu Zhu |
| [FLINK-12122](https://issues.apache.org/jira/browse/FLINK-12122) | Spread out tasks evenly across all available registered TaskManagers |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-14593](https://issues.apache.org/jira/browse/FLINK-14593) | Port ClusterClient to asynchronous interface version |  Major | Client / Job Submission | Zili Chen | Zili Chen |
| [FLINK-14324](https://issues.apache.org/jira/browse/FLINK-14324) | Convert SqlCreateTable with SqlWatermark to CatalogTable |  Major | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-14326](https://issues.apache.org/jira/browse/FLINK-14326) | Support to apply watermark assigner according to the WatermarkSpec in TableSourceTable |  Major | Table SQL / Runtime | Jark Wu | Jark Wu |
| [FLINK-14530](https://issues.apache.org/jira/browse/FLINK-14530) | Capture partition meta info on TaskExecutor |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14636](https://issues.apache.org/jira/browse/FLINK-14636) | Handle schedule mode LAZY\_FROM\_SOURCES\_WITH\_BATCH\_SLOT\_REQUEST correctly in DefaultScheduler |  Blocker | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-14611](https://issues.apache.org/jira/browse/FLINK-14611) | Move allVerticesInSameSlotSharingGroupByDefault from ExecutionConfig to StreamGraph |  Blocker | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14579](https://issues.apache.org/jira/browse/FLINK-14579) | enable SQL CLI to configure modules via yaml config |  Major | Table SQL / Client | Bowen Li | Bowen Li |
| [FLINK-14665](https://issues.apache.org/jira/browse/FLINK-14665) | Support computed column in blink-planner |  Major | Table SQL / API | Danny Chen | Danny Chen |
| [FLINK-14164](https://issues.apache.org/jira/browse/FLINK-14164) | Add a metric to show failover count regarding fine grained recovery |  Major | Runtime / Coordination, Runtime / Metrics | Zhu Zhu | Zhu Zhu |
| [FLINK-14374](https://issues.apache.org/jira/browse/FLINK-14374) | Enable RegionFailoverITCase to pass with scheduler NG |  Major | Runtime / Coordination, Tests | Zhu Zhu | Gary Yao |
| [FLINK-14660](https://issues.apache.org/jira/browse/FLINK-14660) | add 'SHOW MODULES' sql command |  Major | Table SQL / Client | Bowen Li | Bowen Li |
| [FLINK-14420](https://issues.apache.org/jira/browse/FLINK-14420) | Add documentation for pluggable module |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-14656](https://issues.apache.org/jira/browse/FLINK-14656) | blink planner should also fetch catalog statistics for permanent CatalogTableImpl |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-14486](https://issues.apache.org/jira/browse/FLINK-14486) | Update documentation regarding Temporary Objects |  Major | Documentation, Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-14689](https://issues.apache.org/jira/browse/FLINK-14689) | Add catalog related DDLs support in SQL Parser |  Major | Table SQL / API | Terry Wang | Terry Wang |
| [FLINK-14640](https://issues.apache.org/jira/browse/FLINK-14640) | Change Type of Field currentExecutions from ConcurrentHashMap to HashMap |  Major | . | vinoyang | vinoyang |
| [FLINK-14602](https://issues.apache.org/jira/browse/FLINK-14602) | Change Type of Field tasks from ConcurrentHashMap to HashMap |  Major | Runtime / Coordination | vinoyang | vinoyang |
| [FLINK-14612](https://issues.apache.org/jira/browse/FLINK-14612) | Change Type of Field intermediateResults from ConcurrentHashMap to HashMap |  Major | Runtime / Coordination | vinoyang | vinoyang |
| [FLINK-14301](https://issues.apache.org/jira/browse/FLINK-14301) | add documentation for functions categories and new function resolution orders |  Major | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-14724](https://issues.apache.org/jira/browse/FLINK-14724) | Join condition could be simplified in logical phase |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-14344](https://issues.apache.org/jira/browse/FLINK-14344) | A preparation for snapshotting master hook state asynchronously |  Major | Runtime / Checkpointing | Biao Liu | Biao Liu |
| [FLINK-14706](https://issues.apache.org/jira/browse/FLINK-14706) | Remove legacy KvStateMessage |  Major | Runtime / Queryable State | Yun Tang | Yun Tang |
| [FLINK-14723](https://issues.apache.org/jira/browse/FLINK-14723) | Improve some code of computed column in planner |  Major | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-14494](https://issues.apache.org/jira/browse/FLINK-14494) | Update documentation generator |  Major | Documentation, Runtime / Configuration | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-14745](https://issues.apache.org/jira/browse/FLINK-14745) | Put job jars from PackagedProgram to Configuration |  Major | Client / Job Submission | Kostas Kloudas | Kostas Kloudas |
| [FLINK-14477](https://issues.apache.org/jira/browse/FLINK-14477) | Extend partition tracking and safety net on TaskExecutor |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14758](https://issues.apache.org/jira/browse/FLINK-14758) | Add Executor-related interfaces and utilities |  Major | Client / Job Submission | Kostas Kloudas | Kostas Kloudas |
| [FLINK-14472](https://issues.apache.org/jira/browse/FLINK-14472) | Implement back-pressure monitor with non-blocking outputs |  Minor | Runtime / Network | Zhijiang | Yingjie Cao |
| [FLINK-14682](https://issues.apache.org/jira/browse/FLINK-14682) | Enable AbstractTaskManagerProcessFailureRecoveryTest to pass with new DefaultScheduler |  Major | Runtime / Coordination, Tests | Gary Yao | Zhu Zhu |
| [FLINK-14131](https://issues.apache.org/jira/browse/FLINK-14131) | Support configurable failover strategy for scheduler NG |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14708](https://issues.apache.org/jira/browse/FLINK-14708) | Introduce full restarts failover strategy for NG scheduler |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14680](https://issues.apache.org/jira/browse/FLINK-14680) | Enable KafkaConsumerTestBase#runFailOnNoBrokerTest to pass with new DefaultScheduler |  Major | Runtime / Coordination, Tests | Gary Yao | Gary Yao |
| [FLINK-13725](https://issues.apache.org/jira/browse/FLINK-13725) | Use sassc for faster doc generation |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-13726](https://issues.apache.org/jira/browse/FLINK-13726) | Build docs with jekyll 4.0.0.pre.beta1 |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-13791](https://issues.apache.org/jira/browse/FLINK-13791) | Speed up sidenav by using group\_by |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-14687](https://issues.apache.org/jira/browse/FLINK-14687) | Add database related ddl support to SQL Parser |  Major | Table SQL / API, Table SQL / Client | Terry Wang | Terry Wang |
| [FLINK-14710](https://issues.apache.org/jira/browse/FLINK-14710) | Decide column nullability according to Hive constraints |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-14679](https://issues.apache.org/jira/browse/FLINK-14679) | Add total number of partitions to ResultPartitionDeploymentDescriptor |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14780](https://issues.apache.org/jira/browse/FLINK-14780) | Avoid leaking instance of DefaultScheduler before object is constructed |  Critical | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-11464](https://issues.apache.org/jira/browse/FLINK-11464) | Implement DownloadCache |  Major | Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11465](https://issues.apache.org/jira/browse/FLINK-11465) | Implement LocalStandaloneFlinkResource |  Major | Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11466](https://issues.apache.org/jira/browse/FLINK-11466) | Implement LocalStandaloneKafkaResource |  Major | Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11468](https://issues.apache.org/jira/browse/FLINK-11468) | Setup jUnit categories |  Major | Build System, Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11467](https://issues.apache.org/jira/browse/FLINK-11467) | Port Kafka Streaming end-to-end test |  Major | Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14553](https://issues.apache.org/jira/browse/FLINK-14553) | Respect non-blocking output in StreamTask#processInput |  Minor | Runtime / Task | Zhijiang | Zhijiang |
| [FLINK-13850](https://issues.apache.org/jira/browse/FLINK-13850) | Refactor part file configuration into a single method |  Major | Connectors / FileSystem | Gyula Fora | João Boto |
| [FLINK-14789](https://issues.apache.org/jira/browse/FLINK-14789) | extends max/min type in ColumnStats from Number to Comparable |  Major | Table SQL / API | godfrey he | godfrey he |
| [FLINK-14786](https://issues.apache.org/jira/browse/FLINK-14786) | Add configure method to ExecutionConfig |  Major | Runtime / Configuration | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-14806](https://issues.apache.org/jira/browse/FLINK-14806) | Introduce setTimestamp/getTimestamp interface to TypeGetterSetters/VectorizedColumnBatch and writeTimestamp interface to BinaryWriter |  Major | Table SQL / Planner | Zhenghua Gao | Zhenghua Gao |
| [FLINK-14466](https://issues.apache.org/jira/browse/FLINK-14466) | Let YarnJobClusterEntrypoint use user code class loader |  Major | Runtime / Coordination | Guowei Ma | Guowei Ma |
| [FLINK-14711](https://issues.apache.org/jira/browse/FLINK-14711) | Add Alter Function and Show Functions in SQL Parser |  Major | Table SQL / API | Zhenqiu Huang | Zhenqiu Huang |
| [FLINK-14716](https://issues.apache.org/jira/browse/FLINK-14716) | Cooperate computed column with push down rules |  Major | Table SQL / Planner | Jark Wu | Danny Chen |
| [FLINK-14664](https://issues.apache.org/jira/browse/FLINK-14664) | Support to reference user defined functions of external catalog in computed columns |  Major | Table SQL / API | Danny Chen |  |
| [FLINK-13727](https://issues.apache.org/jira/browse/FLINK-13727) | Build docs with jekyll 4.0.0 (final) |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-14821](https://issues.apache.org/jira/browse/FLINK-14821) | Enable 'Queryable state (rocksdb) with TM restart' E2E test to pass with new DefaultScheduler |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-14826](https://issues.apache.org/jira/browse/FLINK-14826) | Enable 'Streaming bucketing end-to-end test' to pass with new DefaultScheduler |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-14822](https://issues.apache.org/jira/browse/FLINK-14822) | Enable 'Streaming File Sink end-to-end test' to pass with new DefaultScheduler |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-14362](https://issues.apache.org/jira/browse/FLINK-14362) | Change DefaultSchedulingResultPartition to return correct partition state |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14734](https://issues.apache.org/jira/browse/FLINK-14734) | Add a ResourceSpec in SlotSharingGroup to describe its overall resources |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14841](https://issues.apache.org/jira/browse/FLINK-14841) | Add create and drop function DDL in parser |  Major | Table SQL / API | Zhenqiu Huang | Zhenqiu Huang |
| [FLINK-14062](https://issues.apache.org/jira/browse/FLINK-14062) | Set managed memory fractions according to slot sharing groups |  Major | Runtime / Task | Xintong Song | Zhu Zhu |
| [FLINK-14851](https://issues.apache.org/jira/browse/FLINK-14851) | Make the (Stream)ContextEnvironment use the Executors |  Major | Client / Job Submission | Kostas Kloudas | Kostas Kloudas |
| [FLINK-14850](https://issues.apache.org/jira/browse/FLINK-14850) | Refactor Executor interface and introduce a minimal JobClient interface |  Major | Client / Job Submission | Kostas Kloudas | Kostas Kloudas |
| [FLINK-14735](https://issues.apache.org/jira/browse/FLINK-14735) | Improve batch schedule check input consumable performance |  Major | Runtime / Task | Jingsong Lee | Zhu Zhu |
| [FLINK-14688](https://issues.apache.org/jira/browse/FLINK-14688) | Add table related DDLs support in SQL Parser |  Major | Table SQL / API | Terry Wang | Terry Wang |
| [FLINK-14674](https://issues.apache.org/jira/browse/FLINK-14674) | some tpc-ds query hang in scheduled stage for long time |  Major | Table SQL / Runtime | Leonard Xu | Leonard Xu |
| [FLINK-14675](https://issues.apache.org/jira/browse/FLINK-14675) | output directory settings of tpc-ds dataGenerator have length limitation |  Major | Tests | Leonard Xu | Leonard Xu |
| [FLINK-14788](https://issues.apache.org/jira/browse/FLINK-14788) | Add configure method to CheckpointConfig |  Major | Runtime / Configuration | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-14787](https://issues.apache.org/jira/browse/FLINK-14787) | Add configure method to StreamExecutionEnvironment |  Major | Runtime / Configuration | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-14722](https://issues.apache.org/jira/browse/FLINK-14722) | Optimize mapred.HadoopInputSplit to not serialize conf when split is not configurable |  Major | Connectors / Hadoop Compatibility | Jingsong Lee | Jingsong Lee |
| [FLINK-14878](https://issues.apache.org/jira/browse/FLINK-14878) | Support \`use  catalog\` through sqlUpdate() method in TableEnvironment |  Major | Table SQL / API | Terry Wang | Terry Wang |
| [FLINK-14314](https://issues.apache.org/jira/browse/FLINK-14314) | Allocate shared slot resources respecting the resources of all vertices in the group |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14767](https://issues.apache.org/jira/browse/FLINK-14767) | Mark TaskManagerOptions#EXIT\_ON\_FATAL\_AKKA\_ERROR with @Deprecated annotation |  Major | Runtime / Configuration | vinoyang | vinoyang |
| [FLINK-14874](https://issues.apache.org/jira/browse/FLINK-14874) | add local aggregate to solve data skew for ROLLUP/CUBE case |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-14885](https://issues.apache.org/jira/browse/FLINK-14885) | YarnClusterDescriptor should not know about detached option |  Major | Client / Job Submission, Deployment / YARN | Zili Chen | Zili Chen |
| [FLINK-14903](https://issues.apache.org/jira/browse/FLINK-14903) | Relax structured types constraints |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-14904](https://issues.apache.org/jira/browse/FLINK-14904) | Rename ANY type to RAW type |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-14913](https://issues.apache.org/jira/browse/FLINK-14913) | refactor CatalogFunction interface and impls to remove properties map |  Major | Table SQL / API | Bowen Li | Zhenqiu Huang |
| [FLINK-10932](https://issues.apache.org/jira/browse/FLINK-10932) | Initial flink-kubernetes module with empty implementation |  Major | Deployment / Kubernetes | JIN SUN | Yang Wang |
| [FLINK-14909](https://issues.apache.org/jira/browse/FLINK-14909) | Let tasks in a batch get scheduled in topological order and subtaskIndex ascending pattern |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14859](https://issues.apache.org/jira/browse/FLINK-14859) | Avoid leaking unassigned Slot in DefaultScheduler when Deployment is outdated |  Major | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-14503](https://issues.apache.org/jira/browse/FLINK-14503) | Send PartitionReport to ResourceManager via heartbeats |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14762](https://issues.apache.org/jira/browse/FLINK-14762) | Implement JobClient APIs |  Major | Client / Job Submission | Zili Chen | Zili Chen |
| [FLINK-14905](https://issues.apache.org/jira/browse/FLINK-14905) | Unify packaging process |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14974](https://issues.apache.org/jira/browse/FLINK-14974) | Managed memory fractions should be rounded properly to not summed up to be more than 1.0 |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-12905](https://issues.apache.org/jira/browse/FLINK-12905) | Convert CatalogView to org.apache.calcite.schema.Table so that planner can use unified catalog APIs |  Major | Table SQL / Legacy Planner, Table SQL / Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-14135](https://issues.apache.org/jira/browse/FLINK-14135) | Introduce vectorized orc InputFormat for blink runtime |  Major | Connectors / ORC | Jingsong Lee | Jingsong Lee |
| [FLINK-14599](https://issues.apache.org/jira/browse/FLINK-14599) | Support precision of TimestampType in blink planner |  Major | Table SQL / Planner | Zhenghua Gao | Zhenghua Gao |
| [FLINK-14467](https://issues.apache.org/jira/browse/FLINK-14467) | Let MesosJobClusterEntrypoint use user code class loader |  Major | Runtime / Coordination | Guowei Ma | Guowei Ma |
| [FLINK-14967](https://issues.apache.org/jira/browse/FLINK-14967) | Add a utility for creating data types via reflection |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-14914](https://issues.apache.org/jira/browse/FLINK-14914) | refactor CatalogFunction interface and impls to add language field |  Major | Table SQL / API | Bowen Li | Zhenqiu Huang |
| [FLINK-14721](https://issues.apache.org/jira/browse/FLINK-14721) | HiveTableSource should implement LimitableTableSource interface |  Major | Connectors / Hive | Terry Wang | Terry Wang |
| [FLINK-14651](https://issues.apache.org/jira/browse/FLINK-14651) | Set default value of config option jobmanager.scheduler to "ng" |  Critical | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-14254](https://issues.apache.org/jira/browse/FLINK-14254) | Introduce FileSystemOutputFormat for batch |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-14800](https://issues.apache.org/jira/browse/FLINK-14800) | Introduce parallelism inference for HiveSource |  Major | Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-14516](https://issues.apache.org/jira/browse/FLINK-14516) | Remove non credit based network code |  Critical | Runtime / Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-14947](https://issues.apache.org/jira/browse/FLINK-14947) | Implement LocalExecutor as new Executor interface |  Major | Client / Job Submission | Zili Chen | Kostas Kloudas |
| [FLINK-15033](https://issues.apache.org/jira/browse/FLINK-15033) | Remove unused RemoteEnvirnment.executeRemotely() (FLINK-11048) |  Major | Client / Job Submission | Kostas Kloudas | Kostas Kloudas |
| [FLINK-14972](https://issues.apache.org/jira/browse/FLINK-14972) | Implement RemoteExecutor as a new Executor |  Major | Client / Job Submission | Kostas Kloudas | Kostas Kloudas |
| [FLINK-14854](https://issues.apache.org/jira/browse/FLINK-14854) | Add executeAsync() method to execution environments |  Major | API / DataSet, API / DataStream | Aljoscha Krettek | Zili Chen |
| [FLINK-14691](https://issues.apache.org/jira/browse/FLINK-14691) | Support database related DDLs (don't need return values) through sqlUpdate() method in TableEnvironment |  Major | Table SQL / API | Terry Wang | Terry Wang |
| [FLINK-14813](https://issues.apache.org/jira/browse/FLINK-14813) | Expose the new mechanism implemented in FLINK-14472 as a "is back-pressured" metric |  Major | Runtime / Metrics, Runtime / Network, Runtime / REST | lining | lining |
| [FLINK-15034](https://issues.apache.org/jira/browse/FLINK-15034) | Bump FRocksDB version for memory control |  Major | Runtime / State Backends | Yun Tang | Yun Tang |
| [FLINK-13450](https://issues.apache.org/jira/browse/FLINK-13450) | Adjust tests to tolerate arithmetic differences between x86 and ARM |  Major | Tests | Stephan Ewen | wangxiyuan |
| [FLINK-10935](https://issues.apache.org/jira/browse/FLINK-10935) | Implement KubeClient with Faric8 Kubernetes clients |  Major | Deployment / Kubernetes | JIN SUN | Yang Wang |
| [FLINK-15060](https://issues.apache.org/jira/browse/FLINK-15060) | Add aarch64 support for tpcds e2e test |  Minor | Tests | wangxiyuan | wangxiyuan |
| [FLINK-10968](https://issues.apache.org/jira/browse/FLINK-10968) | Implement TaskManager Entrypoint |  Major | Deployment / Kubernetes | JIN SUN | Yang Wang |
| [FLINK-14795](https://issues.apache.org/jira/browse/FLINK-14795) | Rework TaskExecutorPartitionLifecycleTest |  Major | Runtime / Coordination, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14063](https://issues.apache.org/jira/browse/FLINK-14063) | Operators use fractions to decide how many managed memory to allocate |  Major | Runtime / Task | Xintong Song | Jingsong Lee |
| [FLINK-15026](https://issues.apache.org/jira/browse/FLINK-15026) | Support database DDLs in SQL CLI |  Major | Table SQL / Client | Danny Chen | Terry Wang |
| [FLINK-14692](https://issues.apache.org/jira/browse/FLINK-14692) | Support alter/rename table through \`sqlUpdate\` in TableEnvironment |  Major | Table SQL / API | Terry Wang | Terry Wang |
| [FLINK-14552](https://issues.apache.org/jira/browse/FLINK-14552) | Enable partition statistics in blink planner |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-15045](https://issues.apache.org/jira/browse/FLINK-15045) | SchedulerBase should only log the RestartStrategy in legacy scheduling mode |  Major | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-14857](https://issues.apache.org/jira/browse/FLINK-14857) | Deprecate checkpoint lock from the Operators API |  Major | Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-14847](https://issues.apache.org/jira/browse/FLINK-14847) | Support retrieving Hive PK constraints |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-14983](https://issues.apache.org/jira/browse/FLINK-14983) | Add interfaces for input type inference |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-14624](https://issues.apache.org/jira/browse/FLINK-14624) | Support computed column as rowtime attribute |  Major | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-14512](https://issues.apache.org/jira/browse/FLINK-14512) | Introduce listPartitionsByFilter to Catalog |  Major | Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-14912](https://issues.apache.org/jira/browse/FLINK-14912) | register, drop, and alter catalog functions from DDL via catalog |  Major | Table SQL / API | Bowen Li | Zhenqiu Huang |
| [FLINK-14959](https://issues.apache.org/jira/browse/FLINK-14959) | Support precision of LocalZonedTimestampType in blink planner |  Major | Table SQL / Planner | Zhenghua Gao | Zhenghua Gao |
| [FLINK-15027](https://issues.apache.org/jira/browse/FLINK-15027) | Support alter table DDLs in SQL CLI |  Major | Table SQL / Client | Danny Chen | Terry Wang |
| [FLINK-13195](https://issues.apache.org/jira/browse/FLINK-13195) | Add create table support for SqlClient |  Major | Table SQL / Client | Danny Chen | Zheng Hu |
| [FLINK-15035](https://issues.apache.org/jira/browse/FLINK-15035) | Introduce unknown memory setting to table in blink planner |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-14645](https://issues.apache.org/jira/browse/FLINK-14645) | Data types defined in DDL will lose precision and nullability when converting to properties |  Critical | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-15118](https://issues.apache.org/jira/browse/FLINK-15118) | Make flink-scala-shell use Executors |  Major | Client / Job Submission, Scala Shell | Kostas Kloudas | Kostas Kloudas |
| [FLINK-15119](https://issues.apache.org/jira/browse/FLINK-15119) | Remove PlanExecutor and its subclasses |  Major | Client / Job Submission | Kostas Kloudas | Kostas Kloudas |
| [FLINK-15120](https://issues.apache.org/jira/browse/FLINK-15120) | Make FlinkYarnCli#isActive() & #getApplicationId() respect config APPLICATION\_ID |  Major | Client / Job Submission, Deployment / YARN | Kostas Kloudas | Kostas Kloudas |
| [FLINK-14484](https://issues.apache.org/jira/browse/FLINK-14484) | Modify RocksDB backend to bound total memory via Cache with WriteBufferManager |  Major | Runtime / State Backends | Yun Tang | Yun Tang |
| [FLINK-15084](https://issues.apache.org/jira/browse/FLINK-15084) | Let MemoryManager allocate and track shared memory resources |  Major | Runtime / Task | Stephan Ewen | Stephan Ewen |
| [FLINK-14911](https://issues.apache.org/jira/browse/FLINK-14911) | create and drop temp catalog functions from DDL to FunctionCatalog |  Major | Table SQL / API | Bowen Li | Zhenqiu Huang |
| [FLINK-14840](https://issues.apache.org/jira/browse/FLINK-14840) | Use new Executor interface in SQL cli |  Major | Table SQL / Client | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-14845](https://issues.apache.org/jira/browse/FLINK-14845) | Introduce data compression to blocking shuffle. |  Major | Runtime / Network | Yingjie Cao | Yingjie Cao |
| [FLINK-15095](https://issues.apache.org/jira/browse/FLINK-15095) | bridge table schema's primary key to metadata handler in blink planner |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-15020](https://issues.apache.org/jira/browse/FLINK-15020) | Support timestamp type in hive |  Major | Connectors / Hive | Jingsong Lee | Rui Li |
| [FLINK-15116](https://issues.apache.org/jira/browse/FLINK-15116) | Make JobClient stateless, remove AutoCloseable |  Major | API / DataSet, API / DataStream | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-14906](https://issues.apache.org/jira/browse/FLINK-14906) | create and drop temp system functions from DDL to FunctionCatalog |  Critical | Table SQL / API | Zhenqiu Huang | Zhenqiu Huang |
| [FLINK-14824](https://issues.apache.org/jira/browse/FLINK-14824) | Improve schema derivation for CSV and JSON formats |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-13283](https://issues.apache.org/jira/browse/FLINK-13283) | JDBC source/sink should respect the conversion class of DataType |  Major | Connectors / JDBC | LakeShen | Caizhi Weng |
| [FLINK-15121](https://issues.apache.org/jira/browse/FLINK-15121) | Add public constructors for execution environments that takes Configuration |  Major | API / DataSet, API / DataStream | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-14513](https://issues.apache.org/jira/browse/FLINK-14513) | Implement listPartitionsByFilter to HiveCatalog |  Major | Connectors / Hive | Jingsong Lee | Rui Li |
| [FLINK-14649](https://issues.apache.org/jira/browse/FLINK-14649) | Flatten all the connector properties keys to make it easy to configure in DDL |  Major | Table SQL / API | Jark Wu | Leonard Xu |
| [FLINK-15067](https://issues.apache.org/jira/browse/FLINK-15067) | Pass execution configuration from TableEnvironment to StreamExecutionEnvironment |  Blocker | Table SQL / Legacy Planner, Table SQL / Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-14992](https://issues.apache.org/jira/browse/FLINK-14992) | Add job submission listener to execution environments |  Major | API / DataSet, API / DataStream | Aljoscha Krettek | Jeff Zhang |
| [FLINK-15129](https://issues.apache.org/jira/browse/FLINK-15129) | Return JobClient instead of JobClient Future from executeAsync() |  Major | API / DataSet, API / DataStream | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-15153](https://issues.apache.org/jira/browse/FLINK-15153) | Service selector needs to contain jobmanager component label |  Critical | Deployment / Kubernetes | Yang Wang | Yang Wang |
| [FLINK-15195](https://issues.apache.org/jira/browse/FLINK-15195) | Remove unused KubernetesConfigOptionsInternal.ENTRY\_POINT\_CLASS\_ARGS |  Major | Deployment / Kubernetes | Kostas Kloudas | Kostas Kloudas |
| [FLINK-15197](https://issues.apache.org/jira/browse/FLINK-15197) | Add resource related config options to dynamical properties for Kubernetes |  Blocker | . | Yang Wang | Xintong Song |
| [FLINK-15179](https://issues.apache.org/jira/browse/FLINK-15179) | Kubernetes should not have a CustomCommandLine. |  Major | Deployment / Kubernetes | Kostas Kloudas | Kostas Kloudas |
| [FLINK-15260](https://issues.apache.org/jira/browse/FLINK-15260) | Uniformize Kubernetes executor name with the rest |  Major | Deployment / Kubernetes | Kostas Kloudas | Kostas Kloudas |
| [FLINK-15251](https://issues.apache.org/jira/browse/FLINK-15251) | Fabric8FlinkKubeClient doesn't work if ingress has hostname but no IP |  Major | Deployment / Kubernetes | Aljoscha Krettek | Yang Wang |
| [FLINK-15191](https://issues.apache.org/jira/browse/FLINK-15191) | Fix can't create table source for Kafka if watermark or computed column is defined |  Blocker | Connectors / Kafka | Jark Wu | Leonard Xu |
| [FLINK-15205](https://issues.apache.org/jira/browse/FLINK-15205) | add doc and exmaple of INSERT OVERWRITE and insert into partitioned table for Hive connector |  Major | Connectors / Hive, Documentation | Bowen Li | Jingsong Lee |
| [FLINK-14926](https://issues.apache.org/jira/browse/FLINK-14926) | Make sure no resource leak of RocksObject |  Major | Runtime / State Backends | Yu Li | Yu Li |
| [FLINK-15312](https://issues.apache.org/jira/browse/FLINK-15312) | Remove PlanExposingEnvironment |  Major | API / DataSet, Tests | Zili Chen | Zili Chen |
| [FLINK-15149](https://issues.apache.org/jira/browse/FLINK-15149) | Merge InputTypeStrategy and InputTypeValidator |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-14796](https://issues.apache.org/jira/browse/FLINK-14796) | Add document about limitations of different Hive versions |  Major | Connectors / Hive, Documentation | Rui Li | Bowen Li |
| [FLINK-15193](https://issues.apache.org/jira/browse/FLINK-15193) | Move DDL to first tab in table connector page |  Major | Documentation, Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-15344](https://issues.apache.org/jira/browse/FLINK-15344) | Update limitations in hive udf document |  Critical | Connectors / Hive, Documentation | Jingsong Lee | Jingsong Lee |
| [FLINK-15204](https://issues.apache.org/jira/browse/FLINK-15204) | add documentation for Flink-Hive timestamp conversions in table and udf |  Major | Connectors / Hive, Documentation | Bowen Li | Rui Li |
| [FLINK-15288](https://issues.apache.org/jira/browse/FLINK-15288) | Starting jobmanager pod should respect containerized.heap-cutoff |  Blocker | Deployment / Kubernetes | Yang Wang | Yang Wang |
| [FLINK-15189](https://issues.apache.org/jira/browse/FLINK-15189) | Add documentation for hive view |  Blocker | Connectors / Hive, Documentation | Bowen Li | Rui Li |
| [FLINK-15125](https://issues.apache.org/jira/browse/FLINK-15125) | PROCTIME() computed column defined in CREATE TABLE doesn't work |  Major | Table SQL / Planner | Jark Wu | Danny Chen |
| [FLINK-15425](https://issues.apache.org/jira/browse/FLINK-15425) |  Improve docs that only old CSV format is supported in filesystem connector |  Major | Documentation | Leonard Xu | Leonard Xu |
| [FLINK-15192](https://issues.apache.org/jira/browse/FLINK-15192) | Split 'SQL' page into multiple sub pages for better structure |  Major | Documentation | Bowen Li | Jark Wu |
| [FLINK-14610](https://issues.apache.org/jira/browse/FLINK-14610) | Add documentation for how to define time attribute in DDL |  Major | Documentation | Jark Wu | Jark Wu |
| [FLINK-14980](https://issues.apache.org/jira/browse/FLINK-14980) | add documentation and example for function DDL |  Blocker | Documentation, Table SQL / API | Bowen Li | Zhenqiu Huang |
| [FLINK-15279](https://issues.apache.org/jira/browse/FLINK-15279) | Document new \`executeAsync()\` method and the newly introduced \`JobClient\` |  Major | Client / Job Submission, Documentation | Kostas Kloudas | Zili Chen |
| [FLINK-10939](https://issues.apache.org/jira/browse/FLINK-10939) | Add documents for natively running Flink session cluster on k8s |  Blocker | Deployment / Kubernetes | JIN SUN | Yang Wang |
| [FLINK-13465](https://issues.apache.org/jira/browse/FLINK-13465) | Bump javassist to 3.24.0-GA |  Blocker | Build System, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11956](https://issues.apache.org/jira/browse/FLINK-11956) | Remove shading from S3 filesystems build |  Critical | Connectors / FileSystem | Stefan Richter | Arvid Heise |
| [FLINK-15276](https://issues.apache.org/jira/browse/FLINK-15276) | Update CLI documentation to reflect the addition of the ExecutorCLI |  Blocker | Command Line Client, Documentation | Kostas Kloudas | Aljoscha Krettek |
| [FLINK-15690](https://issues.apache.org/jira/browse/FLINK-15690) | In environments, call configure() in constructors with passed Configuration |  Major | Runtime / Configuration | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-15689](https://issues.apache.org/jira/browse/FLINK-15689) | Pass execution configuration from BatchTableEnvironment to ExecutionEnvironment |  Major | Table SQL / Legacy Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-15368](https://issues.apache.org/jira/browse/FLINK-15368) | Add end-to-end test for controlling RocksDB memory usage |  Critical | Runtime / State Backends | Yu Li | Yun Tang |
| [FLINK-15275](https://issues.apache.org/jira/browse/FLINK-15275) | Update CLI documentation to include only current valid options |  Critical | Command Line Client, Documentation | Kostas Kloudas | Aljoscha Krettek |
| [FLINK-15754](https://issues.apache.org/jira/browse/FLINK-15754) | Remove Config Options table.exec.resource.\*memory from Documentation |  Critical | Documentation | Gary Yao | Gary Yao |
| [FLINK-15274](https://issues.apache.org/jira/browse/FLINK-15274) | Update Filesystem documentation to reflect changes in shading |  Blocker | Documentation, FileSystems | Kostas Kloudas | Arvid Heise |
| [FLINK-15797](https://issues.apache.org/jira/browse/FLINK-15797) | Reduce logging noise of Fabric8FlinkKubeClient |  Major | Deployment / Kubernetes | Till Rohrmann | Till Rohrmann |
| [FLINK-15789](https://issues.apache.org/jira/browse/FLINK-15789) | ActionWatcher.await should throw InterruptedException |  Major | Deployment / Kubernetes | Till Rohrmann | Yang Wang |
| [FLINK-14495](https://issues.apache.org/jira/browse/FLINK-14495) | Add documentation for memory control of RocksDB state backend with writebuffer manager |  Blocker | Runtime / State Backends | Yun Tang | Yun Tang |
| [FLINK-15864](https://issues.apache.org/jira/browse/FLINK-15864) | Upgrade jackson-databind dependency to 2.10.1 for security reasons |  Critical | Deployment / Kubernetes | Till Rohrmann | Till Rohrmann |
| [FLINK-15807](https://issues.apache.org/jira/browse/FLINK-15807) | Document Java 11 support |  Major | Documentation, Project Website | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15614](https://issues.apache.org/jira/browse/FLINK-15614) | Consolidate documentation on how to integrate Hadoop |  Blocker | Documentation, Project Website | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15698](https://issues.apache.org/jira/browse/FLINK-15698) | Restructure Configuration Docs to separate "Getting Started", "Common Operations" and "Tuning/Debugging" |  Blocker | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-15696](https://issues.apache.org/jira/browse/FLINK-15696) | Update description of "RocksDB Configurable Options" for new options |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-15697](https://issues.apache.org/jira/browse/FLINK-15697) | Remove Options that are not configured in "flink-conf.yaml" from Configuration Docs |  Major | Documentation | Stephan Ewen | Dawid Wysakowicz |
| [FLINK-13471](https://issues.apache.org/jira/browse/FLINK-13471) | Add FlatAggregate support to stream Table API(blink planner) |  Major | Table SQL / API | sunjincheng | sunjincheng |
| [FLINK-14594](https://issues.apache.org/jira/browse/FLINK-14594) | Fix matching logics of ResourceSpec/ResourceProfile/Resource considering double values |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-15159](https://issues.apache.org/jira/browse/FLINK-15159) | Update the mapping of JSON schema string type to Flink SQL STRING type |  Major | Documentation | hehuiyuan | hehuiyuan |
| [FLINK-13797](https://issues.apache.org/jira/browse/FLINK-13797) | Add missing format arguments to logging messages |  Major | Deployment / Mesos | Fokko Driesprong | Fokko Driesprong |
| [FLINK-13430](https://issues.apache.org/jira/browse/FLINK-13430) | Configure sending travis build notifications to builds@flink.apache.org |  Major | Build System | Jark Wu | Jark Wu |
| [FLINK-13937](https://issues.apache.org/jira/browse/FLINK-13937) | Fix wrong hive dependency version in documentation |  Major | Documentation | Jeff Yang | Jeff Yang |
| [FLINK-13994](https://issues.apache.org/jira/browse/FLINK-13994) | Translate "Getting Started" overview to Chinese |  Major | chinese-translation, Documentation | Fabian Hueske | gaofeilong |
| [FLINK-13796](https://issues.apache.org/jira/browse/FLINK-13796) | Remove unused variable |  Major | Deployment / YARN | Fokko Driesprong | Fokko Driesprong |
| [FLINK-14117](https://issues.apache.org/jira/browse/FLINK-14117) | Translate changes on index page to Chinese |  Major | chinese-translation, Documentation | Fabian Hueske | Ricco Chen |
| [FLINK-14227](https://issues.apache.org/jira/browse/FLINK-14227) | Add Razorpay to Chinese Powered By page |  Minor | chinese-translation, Project Website | Fabian Hueske | 春虫 |
| [FLINK-14526](https://issues.apache.org/jira/browse/FLINK-14526) | Support Hive version 1.1.0 and 1.1.1 |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-14588](https://issues.apache.org/jira/browse/FLINK-14588) | Support Hive version 1.0.0 and 1.0.1 |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-14468](https://issues.apache.org/jira/browse/FLINK-14468) | Update Kubernetes docs |  Trivial | Documentation | Maximilian Bode | Maximilian Bode |
| [FLINK-15203](https://issues.apache.org/jira/browse/FLINK-15203) | rephrase Hive's data types doc |  Major | Documentation | Bowen Li | Bowen Li |
| [FLINK-15190](https://issues.apache.org/jira/browse/FLINK-15190) | add documentation for DDL in FLIP-69 |  Blocker | Documentation | Bowen Li | Terry Wang |
| [FLINK-15257](https://issues.apache.org/jira/browse/FLINK-15257) | convert HiveCatalogITCase.testCsvTableViaAPI() to use blink planner |  Blocker | Connectors / Hive, Tests | Bowen Li | Terry Wang |
| [FLINK-15128](https://issues.apache.org/jira/browse/FLINK-15128) | Document support for Hive timestamp type |  Blocker | Connectors / Hive, Documentation | Rui Li | Rui Li |
| [FLINK-15263](https://issues.apache.org/jira/browse/FLINK-15263) | add dedicated page for HiveCatalog |  Critical | Connectors / Hive, Documentation | Bowen Li | Bowen Li |
| [FLINK-15453](https://issues.apache.org/jira/browse/FLINK-15453) | Remove unneeded HiveShim methods |  Minor | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-15385](https://issues.apache.org/jira/browse/FLINK-15385) | Translate "SQL" section of Table API into Chinese |  Minor | chinese-translation | Steve OU | Steve OU |
| [FLINK-15502](https://issues.apache.org/jira/browse/FLINK-15502) | Correct minor mistake of the Chinese translation in 'Queries' page of Table API SQL |  Minor | chinese-translation | Steve OU | Steve OU |
| [FLINK-15515](https://issues.apache.org/jira/browse/FLINK-15515) | Document that Hive connector should be used with blink planner |  Blocker | Connectors / Hive, Documentation | Rui Li | Rui Li |
| [FLINK-15567](https://issues.apache.org/jira/browse/FLINK-15567) | Add documentation for INSERT statements for Flink SQL |  Major | Documentation | Jark Wu | Jark Wu |
| [FLINK-15589](https://issues.apache.org/jira/browse/FLINK-15589) | remove beta tag from catalog and hive doc |  Major | Documentation | Bowen Li | Bowen Li |
| [FLINK-15590](https://issues.apache.org/jira/browse/FLINK-15590) | add section for current catalog and current database |  Major | Documentation | Bowen Li | Bowen Li |
| [FLINK-13613](https://issues.apache.org/jira/browse/FLINK-13613) | Update state migration tests for Flink 1.9 |  Blocker | Tests | Till Rohrmann | Aljoscha Krettek |
| [FLINK-15692](https://issues.apache.org/jira/browse/FLINK-15692) | Enable limiting RocksDB memory consumption by default |  Blocker | Runtime / State Backends | Till Rohrmann | Yun Tang |
| [FLINK-15751](https://issues.apache.org/jira/browse/FLINK-15751) | RocksDB Memory Management end-to-end test fails |  Critical | Tests | Gary Yao | Piotr Nowojski |
| [FLINK-15743](https://issues.apache.org/jira/browse/FLINK-15743) | Add Flink 1.10 release notes to documentation |  Major | Documentation | Gary Yao | Gary Yao |


