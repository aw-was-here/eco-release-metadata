
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

## Release 1.12.0 - Unreleased (as of 2020-11-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-12855](https://issues.apache.org/jira/browse/FLINK-12855) | Stagger TumblingProcessingTimeWindow processing to distribute workload |  Major | API / DataStream | Teng Hu | Teng Hu |
| [FLINK-18616](https://issues.apache.org/jira/browse/FLINK-18616) | Add SHOW CURRENT DDLs |  Major | Table SQL / API | Jingsong Lee | Shengkai Fang |
| [FLINK-18281](https://issues.apache.org/jira/browse/FLINK-18281) | Add WindowStagger into all Tumbling and Sliding Windows |  Major | API / DataStream | Teng Hu | Teng Hu |
| [FLINK-18625](https://issues.apache.org/jira/browse/FLINK-18625) | Maintain redundant taskmanagers to speed up failover |  Major | Runtime / Coordination | Liu | Liu |
| [FLINK-13838](https://issues.apache.org/jira/browse/FLINK-13838) | Support shipping archives for Yarn deployment |  Major | Command Line Client | Yang Wang | Yang Wang |
| [FLINK-16260](https://issues.apache.org/jira/browse/FLINK-16260) | Add docker images based on Java 11 |  Major | flink-docker | Ismaël Mejía | Robert Metzger |
| [FLINK-18756](https://issues.apache.org/jira/browse/FLINK-18756) | Support IF NOT EXISTS for CREATE TABLE statement |  Critical | Table SQL / API | Jark Wu | Leonard Xu |
| [FLINK-19131](https://issues.apache.org/jira/browse/FLINK-19131) | Add py38 support in PyFlink |  Major | API / Python | sunjincheng | sunjincheng |
| [FLINK-19091](https://issues.apache.org/jira/browse/FLINK-19091) | Introduce expression DSL for Python Table API |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-19092](https://issues.apache.org/jira/browse/FLINK-19092) | Parse comment on computed column failed |  Major | Table SQL / API | Leonard Xu | Nicholas Jiang |
| [FLINK-17554](https://issues.apache.org/jira/browse/FLINK-17554) | Add release hooks for user code class loader |  Major | Runtime / Coordination | Till Rohrmann | Robert Metzger |
| [FLINK-17688](https://issues.apache.org/jira/browse/FLINK-17688) | Support consuming Kinesis' enhanced fanout for flink-connector-kinesis |  Major | Connectors / Kinesis | roland | Danny Cranmer |
| [FLINK-19128](https://issues.apache.org/jira/browse/FLINK-19128) | Make "parallellism" and "restart-strategy" not set in sql-client-defaults.yaml by default |  Major | Table SQL / Client | Jark Wu | Nicholas Jiang |
| [FLINK-16789](https://issues.apache.org/jira/browse/FLINK-16789) | Expose JMX port via REST API |  Major | Runtime / Coordination, Runtime / REST | Rong Rong | Rong Rong |
| [FLINK-18736](https://issues.apache.org/jira/browse/FLINK-18736) | Source chaining with N-Ary Stream Operator in Flink |  Critical | Runtime / Task | Piotr Nowojski |  |
| [FLINK-19495](https://issues.apache.org/jira/browse/FLINK-19495) | Add documentation for avro-confluent format |  Major | Documentation, Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Konstantin Knauf | Konstantin Knauf |
| [FLINK-19856](https://issues.apache.org/jira/browse/FLINK-19856) | Add EndOfChannelRecovery rescaling epoch |  Major | Runtime / Network | Roman Khachatryan | Roman Khachatryan |
| [FLINK-19934](https://issues.apache.org/jira/browse/FLINK-19934) | [FLIP-27 source] add new API: SplitEnumeratorContext.runInCoordinatorThread(Runnable) |  Major | API / DataStream | Steven Zhen Wu | Steven Zhen Wu |
| [FLINK-19345](https://issues.apache.org/jira/browse/FLINK-19345) | In Table File Sink, introduce streaming sink compaction |  Major | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-17520](https://issues.apache.org/jira/browse/FLINK-17520) | Extend CompositeTypeSerializerSnapshot to allow composite serializers to signal migration based on outer configuration |  Critical | API / Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-17675](https://issues.apache.org/jira/browse/FLINK-17675) | Resolve CVE-2019-11358 from jquery |  Major | Documentation | Koala Lam | Robert Metzger |
| [FLINK-17504](https://issues.apache.org/jira/browse/FLINK-17504) | Update translation of Getting Started / Overview |  Major | chinese-translation | David Anderson | Yichao Yang |
| [FLINK-17058](https://issues.apache.org/jira/browse/FLINK-17058) | Adding TimeoutTrigger support nested triggers |  Minor | API / DataStream | Roey Shem Tov | Roey Shem Tov |
| [FLINK-17565](https://issues.apache.org/jira/browse/FLINK-17565) | Bump fabric8 version from 4.5.2 to 4.9.2 |  Critical | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-17819](https://issues.apache.org/jira/browse/FLINK-17819) | Yarn error unhelpful when forgetting HADOOP\_CLASSPATH |  Critical | Deployment / YARN | Arvid Heise | Kostas Kloudas |
| [FLINK-16144](https://issues.apache.org/jira/browse/FLINK-16144) | Add client.timeout setting and use that for CLI operations |  Major | Command Line Client | Aljoscha Krettek | wangtong |
| [FLINK-16508](https://issues.apache.org/jira/browse/FLINK-16508) | Name the ports exposed by the main Container in Pod |  Minor | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-17033](https://issues.apache.org/jira/browse/FLINK-17033) | Upgrade OpenJDK docker image for Kubernetes |  Major | Deployment / Kubernetes | Canbin Zheng |  |
| [FLINK-18038](https://issues.apache.org/jira/browse/FLINK-18038) | StateBackendLoader logs application-defined state before it is fully configured |  Trivial | Runtime / State Backends | Steve Bairos | Steve Bairos |
| [FLINK-18067](https://issues.apache.org/jira/browse/FLINK-18067) | Invalid default value for yarnMinAllocationMB in YarnClusterDescriptor |  Minor | Deployment / YARN | Jiayi Liao | Jiayi Liao |
| [FLINK-18127](https://issues.apache.org/jira/browse/FLINK-18127) | Streamline manual execution of Java E2E tests |  Major | Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-17980](https://issues.apache.org/jira/browse/FLINK-17980) | Simplify Flink Getting Started Material |  Critical | Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-17623](https://issues.apache.org/jira/browse/FLINK-17623) | Elasticsearch sink should support user resource cleanup |  Major | Connectors / ElasticSearch | Yun Wang | Yun Wang |
| [FLINK-18332](https://issues.apache.org/jira/browse/FLINK-18332) | Add error message to precondition in KeyGroupPartitionedPriorityQueue |  Minor | Runtime / Queryable State | tartarus | tartarus |
| [FLINK-17383](https://issues.apache.org/jira/browse/FLINK-17383) | flink legacy planner should not use CollectionEnvironment any more |  Major | Table SQL / Legacy Planner | godfrey he | Dawid Wysakowicz |
| [FLINK-18310](https://issues.apache.org/jira/browse/FLINK-18310) | Failure while parsing reporter interval does not reliably revert back to default |  Major | Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18358](https://issues.apache.org/jira/browse/FLINK-18358) |  TableEnvironmentITCase.testSqlUpdateAndToDataSetWithTableSource:245 unstable: result mismatch |  Major | Table SQL / Legacy Planner | Robert Metzger | Dawid Wysakowicz |
| [FLINK-18343](https://issues.apache.org/jira/browse/FLINK-18343) | Enable DEBUG logging for java e2e tests |  Major | Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18370](https://issues.apache.org/jira/browse/FLINK-18370) | Test Flink on Azure-hosted VMs nightly |  Major | Build System / Azure Pipelines | Robert Metzger | Robert Metzger |
| [FLINK-18205](https://issues.apache.org/jira/browse/FLINK-18205) | Mitigate the use of reflection in HadoopModule and Utils |  Major | Deployment / YARN | Yangze Guo | Yangze Guo |
| [FLINK-17998](https://issues.apache.org/jira/browse/FLINK-17998) | Support limiting job history size |  Minor | Runtime / Configuration | Daniel Laszlo Magyar | Daniel Laszlo Magyar |
| [FLINK-18406](https://issues.apache.org/jira/browse/FLINK-18406) | Annotate DualKeyLinkedMap with @Nullable annotation |  Minor | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-17678](https://issues.apache.org/jira/browse/FLINK-17678) | Create flink-sql-connector-hbase module to shade HBase |  Major | Connectors / HBase | ShenDa | ShenDa |
| [FLINK-18359](https://issues.apache.org/jira/browse/FLINK-18359) | Log failures in handler instead of ElasticsearchSinkBase |  Major | Connectors / ElasticSearch | rinkako | rinkako |
| [FLINK-18194](https://issues.apache.org/jira/browse/FLINK-18194) | Update Table API Walkthrough |  Major | Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-12489](https://issues.apache.org/jira/browse/FLINK-12489) | Flink on Mesos - Parameterize network resources. |  Minor | Deployment / Mesos | Oleksandr Nitavskyi | Oleksandr Nitavskyi |
| [FLINK-18125](https://issues.apache.org/jira/browse/FLINK-18125) | Skip CI execution on documentation pull requests |  Major | Build System / Azure Pipelines | Robert Metzger | Robert Metzger |
| [FLINK-18472](https://issues.apache.org/jira/browse/FLINK-18472) | Local Installation Getting Started Guide |  Major | Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-15416](https://issues.apache.org/jira/browse/FLINK-15416) | Add Retry Mechanism for PartitionRequestClientFactory.ConnectingChannel |  Major | Runtime / Network | Zhenqiu Huang | Zhenqiu Huang |
| [FLINK-18462](https://issues.apache.org/jira/browse/FLINK-18462) | Improve the exception message when INSERT INTO mismatch types for empty char |  Major | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-18457](https://issues.apache.org/jira/browse/FLINK-18457) | Fix invalid links in "Detecting Patterns" page of "Streaming Concepts" |  Major | Documentation | Roc Marshal | Roc Marshal |
| [FLINK-18422](https://issues.apache.org/jira/browse/FLINK-18422) | Update Prefer tag in documentation 'Fault Tolerance training lesson' |  Minor | Documentation, Documentation / Training | Roc Marshal | Roc Marshal |
| [FLINK-18488](https://issues.apache.org/jira/browse/FLINK-18488) | Python API CsvTableSource missing optional constructor params |  Minor | API / Python | Chris Nix | Chris Nix |
| [FLINK-18507](https://issues.apache.org/jira/browse/FLINK-18507) | Move get\_config implementation to TableEnvironment to eliminate the duplication |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-18514](https://issues.apache.org/jira/browse/FLINK-18514) | Building fails with JDK 14 installed |  Major | Build System, Test Infrastructure | Niels Basjes | Niels Basjes |
| [FLINK-18458](https://issues.apache.org/jira/browse/FLINK-18458) | Setting the property java.version makes the build brittle and harder to debug. |  Minor | Build System | Niels Basjes | Niels Basjes |
| [FLINK-18490](https://issues.apache.org/jira/browse/FLINK-18490) | Extract the implementation logic of Beam in AbstractPythonFunctionOperator |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-18484](https://issues.apache.org/jira/browse/FLINK-18484) | RowSerializer arity error does not provide specific information about the mismatch |  Minor | API / Core | Mans Singh | Mans Singh |
| [FLINK-18361](https://issues.apache.org/jira/browse/FLINK-18361) | Support username and password options for new Elasticsearch connector |  Major | Connectors / ElasticSearch | Yangze Guo | Yangze Guo |
| [FLINK-18561](https://issues.apache.org/jira/browse/FLINK-18561) | Build manylinux1 with better compatibility instead of manylinux2014 Python Wheel Packages |  Major | API / Python, Build System / Azure Pipelines | Huang Xingbo | Huang Xingbo |
| [FLINK-18526](https://issues.apache.org/jira/browse/FLINK-18526) | Add the configuration of Python UDF using Managed Memory in the doc of Pyflink |  Major | API / Python, Documentation | Huang Xingbo | Shuiqiang Chen |
| [FLINK-18002](https://issues.apache.org/jira/browse/FLINK-18002) | Support forcing varchar type in Json format |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Benchao Li | Benchao Li |
| [FLINK-18532](https://issues.apache.org/jira/browse/FLINK-18532) | Remove Beta tag from MATCH\_RECOGNIZE docs |  Minor | Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-18491](https://issues.apache.org/jira/browse/FLINK-18491) | Extract the implementation logic of Beam in coders |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-18501](https://issues.apache.org/jira/browse/FLINK-18501) | Mapping of Pluggable Filesystems to scheme is not properly logged |  Minor | FileSystems | Fabian Paul | Fabian Paul |
| [FLINK-18619](https://issues.apache.org/jira/browse/FLINK-18619) | Update training to use WatermarkStrategy |  Major | Documentation / Training | Seth Wiesman | Seth Wiesman |
| [FLINK-18463](https://issues.apache.org/jira/browse/FLINK-18463) |  Make the "input\_types" parameter of the Python udf decorator optional |  Major | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-17285](https://issues.apache.org/jira/browse/FLINK-17285) | Translate "Python Table API" page into Chinese |  Major | API / Python, chinese-translation | Zixuan Rao | Zixuan Rao |
| [FLINK-18492](https://issues.apache.org/jira/browse/FLINK-18492) | Extract the implementation logic of Beam in Operations |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-18618](https://issues.apache.org/jira/browse/FLINK-18618) | Docker e2e tests are failing on CI |  Major | Build System / Azure Pipelines | Chesnay Schepler | Dawid Wysakowicz |
| [FLINK-18635](https://issues.apache.org/jira/browse/FLINK-18635) | Typo in 'concepts/timely stream processing' part of the website |  Trivial | Documentation | shizk233 | shizk233 |
| [FLINK-12336](https://issues.apache.org/jira/browse/FLINK-12336) | Add HTTPS support to InfluxDB reporter |  Major | Runtime / Metrics | Etienne Carriere | Etienne Carriere |
| [FLINK-18607](https://issues.apache.org/jira/browse/FLINK-18607) | Give the maven modules human readable names. |  Major | Build System | Niels Basjes | Niels Basjes |
| [FLINK-18558](https://issues.apache.org/jira/browse/FLINK-18558) | Introduce collect iterator with at least once semantics and exactly once semantics without fault tolerance |  Major | API / DataStream, Table SQL / API | Caizhi Weng | Caizhi Weng |
| [FLINK-18448](https://issues.apache.org/jira/browse/FLINK-18448) | Update Google Cloud PubSub dependencies |  Major | Connectors / Google Cloud PubSub | Niels Basjes | Niels Basjes |
| [FLINK-18638](https://issues.apache.org/jira/browse/FLINK-18638) | FutureUtils support timeout message |  Minor | Runtime / Coordination | tartarus | tartarus |
| [FLINK-18521](https://issues.apache.org/jira/browse/FLINK-18521) | Add release script for creating snapshot branches |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18699](https://issues.apache.org/jira/browse/FLINK-18699) | Allow variables for column names in Scala Table API |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-18730](https://issues.apache.org/jira/browse/FLINK-18730) | Remove Beta tag from SQL Client docs |  Major | Documentation, Table SQL / Client | Jark Wu | Jark Wu |
| [FLINK-18606](https://issues.apache.org/jira/browse/FLINK-18606) | Remove generic parameter from SinkFunction.Context\<T\> |  Major | API / DataStream | Niels Basjes | Niels Basjes |
| [FLINK-17529](https://issues.apache.org/jira/browse/FLINK-17529) | Upgrade com.rabbitmq:amqp-client to latest 5.x |  Major | Connectors/ RabbitMQ | Austin Cawley-Edwards | Austin Cawley-Edwards |
| [FLINK-18493](https://issues.apache.org/jira/browse/FLINK-18493) | Make target home directory used to store yarn files configurable |  Major | Deployment / YARN | Kevin Zhang | Kevin Zhang |
| [FLINK-16048](https://issues.apache.org/jira/browse/FLINK-16048) | Support read/write confluent schema registry avro data  from Kafka |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Leonard Xu | Danny Chen |
| [FLINK-18772](https://issues.apache.org/jira/browse/FLINK-18772) | Hide submit job web ui elements when running in per-job/application mode |  Minor | Runtime / Web Frontend | Till Rohrmann | Till Rohrmann |
| [FLINK-16619](https://issues.apache.org/jira/browse/FLINK-16619) | Misleading SlotManagerImpl logging for slot reports of unknown task manager |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16566](https://issues.apache.org/jira/browse/FLINK-16566) | Change the log level of the launching command and dynamic properties from DEBUG to INFO in Mesos integration |  Minor | Deployment / Mesos | Yangze Guo | Yangze Guo |
| [FLINK-5552](https://issues.apache.org/jira/browse/FLINK-5552) | Introduce JVM-wide JMX server |  Major | Runtime / Metrics, Runtime / Web Frontend | david.wang | Rong Rong |
| [FLINK-17290](https://issues.apache.org/jira/browse/FLINK-17290) | Translate Streaming Analytics training lesson to Chinese |  Major | chinese-translation, Documentation / Training | David Anderson | Herman, Li |
| [FLINK-18793](https://issues.apache.org/jira/browse/FLINK-18793) | Fix Typo for api.common.eventtime.WatermarkStrategy Description |  Trivial | Documentation | Chris Lan |  |
| [FLINK-18658](https://issues.apache.org/jira/browse/FLINK-18658) | MiniClusterResource does not forward RpcServiceSharing setting |  Trivial | Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18816](https://issues.apache.org/jira/browse/FLINK-18816) | Correct API usage in Pyflink Dependency Management page |  Major | API / Python, Documentation | sunjincheng | Zhenhua Yang |
| [FLINK-18804](https://issues.apache.org/jira/browse/FLINK-18804) | ConfigDocsGenerator should not create files if they contain no options |  Trivial | Runtime / Configuration | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18831](https://issues.apache.org/jira/browse/FLINK-18831) | Improve the Python documentation about the operations in Table |  Major | API / Python, Documentation | Dian Fu | Dian Fu |
| [FLINK-18839](https://issues.apache.org/jira/browse/FLINK-18839) | Add documentation about how to use catalog in Python Table API |  Major | API / Python, Documentation | Dian Fu | Dian Fu |
| [FLINK-18838](https://issues.apache.org/jira/browse/FLINK-18838) | Support JdbcCatalog in Python Table API |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-17503](https://issues.apache.org/jira/browse/FLINK-17503) | Make memory configuration logging more user-friendly |  Major | Runtime / Coordination | Till Rohrmann | Matthias |
| [FLINK-18847](https://issues.apache.org/jira/browse/FLINK-18847) | Add documentation about data types in Python Table API |  Major | API / Python, Documentation | Dian Fu | Dian Fu |
| [FLINK-18865](https://issues.apache.org/jira/browse/FLINK-18865) | Missing documentation of FlinkKafkaConsumer.setStartFromEarliest behavior when a partition offset becomes out of range |  Trivial | Connectors / Kafka, Documentation | Vladimirs Kotovs | Vladimirs Kotovs |
| [FLINK-18773](https://issues.apache.org/jira/browse/FLINK-18773) | Enable parallel classloading |  Major | Runtime / Task | Arvid Heise | Arvid Heise |
| [FLINK-18728](https://issues.apache.org/jira/browse/FLINK-18728) | Make initialCredit of RemoteInputChannel final |  Minor | Runtime / Network | Yingjie Cao |  |
| [FLINK-18849](https://issues.apache.org/jira/browse/FLINK-18849) | Improve the code tabs of the Flink documents |  Minor | Documentation | Wei Zhong | Wei Zhong |
| [FLINK-18220](https://issues.apache.org/jira/browse/FLINK-18220) | Improve exception if finalizeOnmaster hits OOM |  Major | Runtime / Coordination | Chesnay Schepler | Matthias |
| [FLINK-16245](https://issues.apache.org/jira/browse/FLINK-16245) | Use a delegating classloader as the user code classloader to prevent class leaks. |  Critical | Runtime / Task | Stephan Ewen | Arvid Heise |
| [FLINK-18963](https://issues.apache.org/jira/browse/FLINK-18963) | Added Copyright information to coding style guide |  Minor | Project Website | Matthias | Matthias |
| [FLINK-18219](https://issues.apache.org/jira/browse/FLINK-18219) | Improve exception if jar submission hits OOM |  Major | Client / Job Submission, Runtime / REST | Chesnay Schepler | Matthias |
| [FLINK-18752](https://issues.apache.org/jira/browse/FLINK-18752) | Yarn ship logic should support files |  Major | Deployment / YARN | Gyula Fora | Gyula Fora |
| [FLINK-18643](https://issues.apache.org/jira/browse/FLINK-18643) | Migrate Jenkins jobs to ci-builds.apache.org |  Major | Release System | Chesnay Schepler | Robert Metzger |
| [FLINK-18200](https://issues.apache.org/jira/browse/FLINK-18200) | Replace the deprecated interfaces with the new interfaces in the tests and examples |  Major | API / Python | Dian Fu | Nicholas Jiang |
| [FLINK-15299](https://issues.apache.org/jira/browse/FLINK-15299) | Move ClientUtils#submitJob & ClientUtils#submitJobAndWaitForResult to test scope |  Minor | Command Line Client, Tests | Zili Chen | Zili Chen |
| [FLINK-18449](https://issues.apache.org/jira/browse/FLINK-18449) | Make topic discovery and partition discovery configurable for FlinkKafkaConsumer in Table API |  Major | Connectors / Kafka, Table SQL / API | Shengkai Fang | Shengkai Fang |
| [FLINK-18962](https://issues.apache.org/jira/browse/FLINK-18962) | Improve error message if checkpoint directory is not writable |  Major | Runtime / Checkpointing | Nico Kruber | Roman Khachatryan |
| [FLINK-18855](https://issues.apache.org/jira/browse/FLINK-18855) | Translate the "Cluster Execution" page of "Application Development's DataSet API" into Chinese |  Major | Documentation | Roc Marshal | Roc Marshal |
| [FLINK-18955](https://issues.apache.org/jira/browse/FLINK-18955) | Add snapshot path to job startup message |  Major | Runtime / Checkpointing | Nico Kruber | Yuan Mei |
| [FLINK-18854](https://issues.apache.org/jira/browse/FLINK-18854) | Translate the 'API Migration Guides' page of 'Application Development' into Chinese |  Major | Documentation | Roc Marshal | Roc Marshal |
| [FLINK-18797](https://issues.apache.org/jira/browse/FLINK-18797) | docs and examples use deprecated forms of keyBy |  Major | Documentation, Examples | David Anderson | wulei0302 |
| [FLINK-18973](https://issues.apache.org/jira/browse/FLINK-18973) | Translate the 'History Server' page of 'Debugging & Monitoring' into Chinese |  Major | Documentation | Roc Marshal | Roc Marshal |
| [FLINK-18987](https://issues.apache.org/jira/browse/FLINK-18987) | Sort global job parameters in WebUI job configuration view |  Minor | Runtime / Web Frontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-19021](https://issues.apache.org/jira/browse/FLINK-19021) | Cleanups of the ResultPartition components |  Major | Runtime / Network | Stephan Ewen | Stephan Ewen |
| [FLINK-18860](https://issues.apache.org/jira/browse/FLINK-18860) | Translate "Execution Plans" page of "Managing Execution" into Chinese |  Major | chinese-translation, Documentation | Xiao Huang | Xiao Huang |
| [FLINK-19055](https://issues.apache.org/jira/browse/FLINK-19055) | MemoryManagerSharedResourcesTest contains three tests running extraordinary long |  Major | Runtime / Task | Matthias | Andrey Zagrebin |
| [FLINK-18977](https://issues.apache.org/jira/browse/FLINK-18977) |  Extract WindowOperator construction into a builder class |  Major | API / DataStream | Seth Wiesman | Seth Wiesman |
| [FLINK-19105](https://issues.apache.org/jira/browse/FLINK-19105) | Table API Sample Code Error |  Major | Documentation | weizheng | zhouyongjin |
| [FLINK-19036](https://issues.apache.org/jira/browse/FLINK-19036) | Translate page 'Application Profiling & Debugging' of 'Debugging & Monitoring' into Chinese |  Major | chinese-translation, Documentation | Roc Marshal | Roc Marshal |
| [FLINK-18598](https://issues.apache.org/jira/browse/FLINK-18598) | Add instructions for asynchronous execute in PyFlink doc |  Major | API / Python, Documentation | Huang Xingbo | Shuiqiang Chen |
| [FLINK-16866](https://issues.apache.org/jira/browse/FLINK-16866) | Make job submission non-blocking |  Critical | Runtime / Coordination | Till Rohrmann | Robert Metzger |
| [FLINK-19097](https://issues.apache.org/jira/browse/FLINK-19097) | Support add\_jars() for Python StreamExecutionEnvironment |  Major | API / Python | Shuiqiang Chen | Shuiqiang Chen |
| [FLINK-19043](https://issues.apache.org/jira/browse/FLINK-19043) | Translate the 'Logging' page of 'Debugging & Monitoring' into Chinese |  Major | chinese-translation, Documentation | Roc Marshal | Roc Marshal |
| [FLINK-18337](https://issues.apache.org/jira/browse/FLINK-18337) | Introduce TableResult#await method to wait for data ready |  Major | Table SQL / API | godfrey he | godfrey he |
| [FLINK-17877](https://issues.apache.org/jira/browse/FLINK-17877) | Add support for Python 3.8 |  Major | API / Python | Robert Metzger | sunjincheng |
| [FLINK-14942](https://issues.apache.org/jira/browse/FLINK-14942) | State Processing API: add an option to make deep copy |  Blocker | API / State Processor | Jun Qin | Jun Qin |
| [FLINK-19147](https://issues.apache.org/jira/browse/FLINK-19147) | Support AutoClose in CliClient |  Minor | Table SQL / Client | darion yaphet | darion yaphet |
| [FLINK-19070](https://issues.apache.org/jira/browse/FLINK-19070) | Hive connector should throw a meaningful exception if user reads/writes ACID tables |  Major | Connectors / Hive | Rui Li | Nicholas Jiang |
| [FLINK-14870](https://issues.apache.org/jira/browse/FLINK-14870) | Remove nullable assumption of task slot sharing group |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-18833](https://issues.apache.org/jira/browse/FLINK-18833) | Improve the Python documentation about sql |  Major | API / Python, Documentation | Huang Xingbo | Huang Xingbo |
| [FLINK-19193](https://issues.apache.org/jira/browse/FLINK-19193) | Recommend stop-with-savepoint in upgrade guidelines |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-18447](https://issues.apache.org/jira/browse/FLINK-18447) | Add 'flink-connector-base' to 'flink-dist' |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-18802](https://issues.apache.org/jira/browse/FLINK-18802) | Create an uber jar when packaging flink-avro for sql client |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Qingsheng Ren | Dawid Wysakowicz |
| [FLINK-18192](https://issues.apache.org/jira/browse/FLINK-18192) | Upgrade to Avro version 1.10.0 from 1.8.2 |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Lucas Heimberg | Dawid Wysakowicz |
| [FLINK-18978](https://issues.apache.org/jira/browse/FLINK-18978) | Support full table scan of key and namespace from statebackend |  Major | Runtime / State Backends | Seth Wiesman | Seth Wiesman |
| [FLINK-18695](https://issues.apache.org/jira/browse/FLINK-18695) | Allow NettyBufferPool to allocate heap buffers |  Major | Runtime / Network | Chesnay Schepler | Yun Gao |
| [FLINK-19158](https://issues.apache.org/jira/browse/FLINK-19158) | Revisit java e2e download timeouts |  Major | Build System | Robert Metzger | Robert Metzger |
| [FLINK-19037](https://issues.apache.org/jira/browse/FLINK-19037) | Introduce proper IO executor in Dispatcher |  Major | Runtime / Coordination | Robert Metzger | Robert Metzger |
| [FLINK-19245](https://issues.apache.org/jira/browse/FLINK-19245) | Set default queue capacity for FLIP-27 source handover queue to 2 |  Major | Connectors / Common | Stephan Ewen | Stephan Ewen |
| [FLINK-19223](https://issues.apache.org/jira/browse/FLINK-19223) | Simplify Availability Future Model in Base Connector |  Critical | Connectors / Common | Stephan Ewen | Stephan Ewen |
| [FLINK-19221](https://issues.apache.org/jira/browse/FLINK-19221) | Exploit LocatableFileStatus from Hadoop |  Major | Connectors / Hadoop Compatibility | Stephan Ewen | Stephan Ewen |
| [FLINK-19225](https://issues.apache.org/jira/browse/FLINK-19225) | Improve code and logging in SourceReaderBase |  Minor | Connectors / Common | Stephan Ewen | Stephan Ewen |
| [FLINK-19000](https://issues.apache.org/jira/browse/FLINK-19000) | Forward JobStatus.INITIALIZING timestamp to ExecutionGraph |  Major | Runtime / Coordination | Robert Metzger | Robert Metzger |
| [FLINK-19241](https://issues.apache.org/jira/browse/FLINK-19241) | Forward ClusterEntrypoint.ioExecutor to ResourceManager |  Major | Runtime / Coordination | Robert Metzger | Robert Metzger |
| [FLINK-18974](https://issues.apache.org/jira/browse/FLINK-18974) | Translate the 'User-Defined Functions' page of "Application Development's DataStream API" into Chinese |  Major | chinese-translation, Documentation | Roc Marshal | CloseRiver |
| [FLINK-17879](https://issues.apache.org/jira/browse/FLINK-17879) | Update Python row serializer |  Major | API / Python | Timo Walther | Wei Zhong |
| [FLINK-19251](https://issues.apache.org/jira/browse/FLINK-19251) | Avoid confusing queue handling in "SplitReader.handleSplitsChanges()" |  Major | Connectors / Common | Stephan Ewen | Stephan Ewen |
| [FLINK-19301](https://issues.apache.org/jira/browse/FLINK-19301) | Improve the package structure of Python DataStream API |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-19337](https://issues.apache.org/jira/browse/FLINK-19337) | Make a little bit improvement for PyFlink package structure and class name. |  Major | API / Python | sunjincheng |  |
| [FLINK-16147](https://issues.apache.org/jira/browse/FLINK-16147) | Add watermarkExprOutputType in WatermarkSpec#toString method |  Minor | Connectors / Common | hailong wang | hailong wang |
| [FLINK-12250](https://issues.apache.org/jira/browse/FLINK-12250) | Rewrite assembleNewPartPath to let it return a new PartPath |  Major | Connectors / FileSystem | Fokko Driesprong | Fokko Driesprong |
| [FLINK-18737](https://issues.apache.org/jira/browse/FLINK-18737) | translate jdbc connector |  Major | chinese-translation, Documentation | weizheng | weizheng |
| [FLINK-19297](https://issues.apache.org/jira/browse/FLINK-19297) | Make ResultPartitionWriter record-oriented |  Major | Runtime / Network | Yingjie Cao | Yingjie Cao |
| [FLINK-19163](https://issues.apache.org/jira/browse/FLINK-19163) | Add building py38 wheel package of PyFlink in Azure CI |  Major | API / Python, Build System / Azure Pipelines | Huang Xingbo | Huang Xingbo |
| [FLINK-19124](https://issues.apache.org/jira/browse/FLINK-19124) | Some JobClient methods are not ergonomic, require ClassLoader argument |  Major | API / DataStream | Aljoscha Krettek | Nicholas Jiang |
| [FLINK-19098](https://issues.apache.org/jira/browse/FLINK-19098) | Make RowData CSV and JSON converters public |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Brian Zhou | Brian Zhou |
| [FLINK-19137](https://issues.apache.org/jira/browse/FLINK-19137) | Bump Apache Parquet to 1.11.1 |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | ABC |  |
| [FLINK-19429](https://issues.apache.org/jira/browse/FLINK-19429) | Translate page 'Data Types' into Chinese |  Minor | API / Python, chinese-translation, Documentation | hailong wang | hailong wang |
| [FLINK-19430](https://issues.apache.org/jira/browse/FLINK-19430) | Translate page 'datastream\_tutorial' into Chinese |  Minor | API / Python, chinese-translation, Documentation | hailong wang | hailong wang |
| [FLINK-19457](https://issues.apache.org/jira/browse/FLINK-19457) | Port NumberSequenceSource to FLIP-27 source interface |  Major | API / Core | Stephan Ewen | Stephan Ewen |
| [FLINK-19497](https://issues.apache.org/jira/browse/FLINK-19497) | Implement mutator methods for FlinkCounterWrapper |  Minor | Runtime / Metrics | Richard Moorhead | Richard Moorhead |
| [FLINK-18410](https://issues.apache.org/jira/browse/FLINK-18410) | Flink SQL filesystem connector class name correct |  Minor | Table SQL / Runtime | dalongliu | dalongliu |
| [FLINK-19243](https://issues.apache.org/jira/browse/FLINK-19243) | Bump Snakeyaml to 1.27 |  Major | Build System, BuildSystem / Shaded | Chesnay Schepler | Chesnay Schepler |
| [FLINK-19386](https://issues.apache.org/jira/browse/FLINK-19386) | Using blink planner util class in  HiveCatalogUseBlinkITCase |  Major | Table SQL / Legacy Planner | hailong wang | hailong wang |
| [FLINK-19561](https://issues.apache.org/jira/browse/FLINK-19561) | Corrected spelling errors in "Monitoring REST API" page of "Debugging & Monitoring" |  Major | Documentation | weizheng | weizheng |
| [FLINK-19409](https://issues.apache.org/jira/browse/FLINK-19409) | The comment for getValue has wrong code in class ListView |  Minor | Documentation, Table SQL / API | Liu | Liu |
| [FLINK-19555](https://issues.apache.org/jira/browse/FLINK-19555) | Remove runAsyncWithoutFencing from MesosResourceManager |  Minor | Deployment / Mesos, Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-19247](https://issues.apache.org/jira/browse/FLINK-19247) | Update Chinese documentation after removal of Kafka 0.10 and 0.11 |  Major | chinese-translation, Connectors / Kafka, Documentation | Aljoscha Krettek | Xiao Huang |
| [FLINK-18068](https://issues.apache.org/jira/browse/FLINK-18068) | Job scheduling stops but not exits after throwing non-fatal exception |  Major | Deployment / YARN | Jiayi Liao | Jiayi Liao |
| [FLINK-11427](https://issues.apache.org/jira/browse/FLINK-11427) | Protobuf parquet writer implementation |  Trivial | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Guang Hu | Yun Gao |
| [FLINK-19145](https://issues.apache.org/jira/browse/FLINK-19145) | Add PyFlink-walkthrough to Flink playground. |  Major | API / Python, Documentation / Training / Exercises | Shuiqiang Chen | Shuiqiang Chen |
| [FLINK-19478](https://issues.apache.org/jira/browse/FLINK-19478) | Translate page 'intro\_to\_table\_api' into Chinese |  Minor | API / Python, chinese-translation, Documentation | hailong wang | hailong wang |
| [FLINK-19477](https://issues.apache.org/jira/browse/FLINK-19477) | Translate page 'python\_table\_api\_connectors' into Chinese |  Minor | API / Python, chinese-translation | hailong wang | hailong wang |
| [FLINK-16753](https://issues.apache.org/jira/browse/FLINK-16753) | Exception from AsyncCheckpointRunnable should be wrapped in CheckpointException |  Major | Runtime / Checkpointing | Jiayi Liao | Jiayi Liao |
| [FLINK-19522](https://issues.apache.org/jira/browse/FLINK-19522) | Add ability to set auto commit on jdbc driver from Table/SQL API |  Major | Connectors / JDBC, Table SQL / Ecosystem | Dylan Forciea | Dylan Forciea |
| [FLINK-18662](https://issues.apache.org/jira/browse/FLINK-18662) | Provide more detailed metrics why unaligned checkpoint is taking long time |  Critical | Runtime / Metrics, Runtime / Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-19416](https://issues.apache.org/jira/browse/FLINK-19416) | Support Python datetime object in from\_collection of Python DataStream |  Major | API / Python | Huang Xingbo | Nicholas Jiang |
| [FLINK-19584](https://issues.apache.org/jira/browse/FLINK-19584) | HBaseSinkFunction no needs to create thread to flush when bufferFlushMaxMutations = 1 |  Minor | Connectors / HBase | hailong wang | hailong wang |
| [FLINK-19523](https://issues.apache.org/jira/browse/FLINK-19523) | Hide sensitive command-line configurations |  Major | Runtime / Configuration | Qinghui Xu | Qinghui Xu |
| [FLINK-16620](https://issues.apache.org/jira/browse/FLINK-16620) | Add attempt information in logging |  Minor | Runtime / Task | Jiayi Liao | Jiayi Liao |
| [FLINK-19480](https://issues.apache.org/jira/browse/FLINK-19480) | Support RichFunction in Python DataStream API |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-19420](https://issues.apache.org/jira/browse/FLINK-19420) | Translate "Program Packaging" page of "Managing Execution" into Chinese |  Major | chinese-translation, Documentation | Xiao Huang | Xiao Huang |
| [FLINK-18373](https://issues.apache.org/jira/browse/FLINK-18373) | Drop performance unit tests in RocksDB state backend module |  Major | Runtime / State Backends, Tests | Yun Tang | Yun Tang |
| [FLINK-19450](https://issues.apache.org/jira/browse/FLINK-19450) | Optimize the Python CI Test |  Major | API / Python, Build System / Azure Pipelines | Huang Xingbo | Huang Xingbo |
| [FLINK-17075](https://issues.apache.org/jira/browse/FLINK-17075) | Add task status reconciliation between TM and JM |  Critical | Runtime / Coordination | Till Rohrmann | Chesnay Schepler |
| [FLINK-19672](https://issues.apache.org/jira/browse/FLINK-19672) | Merge kafka-connector-base into flink-connector-kafka |  Major | Connectors / Kafka | Timo Walther | Timo Walther |
| [FLINK-19664](https://issues.apache.org/jira/browse/FLINK-19664) | Upload logs before end to end tests time out |  Major | Build System / Azure Pipelines | Robert Metzger | Robert Metzger |
| [FLINK-17167](https://issues.apache.org/jira/browse/FLINK-17167) | Add Docker History Server support |  Major | flink-docker | Andrey Zagrebin | Sebastian J. |
| [FLINK-18415](https://issues.apache.org/jira/browse/FLINK-18415) | Support TableResult#collect in the Python Table API to align with the Java Table API |  Major | API / Python | Dian Fu | Shuiqiang Chen |
| [FLINK-19733](https://issues.apache.org/jira/browse/FLINK-19733) | Make fast\_operation and slow\_operation produce functions consistent |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-19596](https://issues.apache.org/jira/browse/FLINK-19596) | Do not recover CompletedCheckpointStore on each failover |  Critical | Runtime / Checkpointing | Jiayi Liao |  |
| [FLINK-17528](https://issues.apache.org/jira/browse/FLINK-17528) | Remove RowData#get() and ArrayData#get() and use FieldGetter and ElementGetter instead |  Major | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-19660](https://issues.apache.org/jira/browse/FLINK-19660) | Translate page 'table\_environment.zh.md' into Chinese |  Minor | API / Python, chinese-translation, Documentation | hailong wang | hailong wang |
| [FLINK-19706](https://issues.apache.org/jira/browse/FLINK-19706) | Add WARN logs when hive table partition has existed before commit in \`MetastoreCommitPolicy\` |  Minor | Connectors / FileSystem, Connectors / Hive, Table SQL / Runtime | Lsw\_aka\_laplace | Lsw\_aka\_laplace |
| [FLINK-19721](https://issues.apache.org/jira/browse/FLINK-19721) | Speed up the frequency of checks in RpcGatewayRetriever |  Major | Runtime / Coordination, Test Infrastructure | Dan Hill | Dan Hill |
| [FLINK-19677](https://issues.apache.org/jira/browse/FLINK-19677) | TaskManager takes abnormally long time to register with JobManager on Kubernetes |  Major | Runtime / Task | Weike Dong | Weike Dong |
| [FLINK-19492](https://issues.apache.org/jira/browse/FLINK-19492) | Consolidate Source Events between Source API and Split Reader API |  Major | API / Core, Connectors / Common | Stephan Ewen | Stephan Ewen |
| [FLINK-19278](https://issues.apache.org/jira/browse/FLINK-19278) | Bump Scala Macros Version to 2.1.1 |  Major | Build System | Stephan Ewen | Robert Metzger |
| [FLINK-19769](https://issues.apache.org/jira/browse/FLINK-19769) | Reuse StreamRecord in SourceOutputWithWatermarks#collect |  Major | API / DataStream | Caizhi Weng | Caizhi Weng |
| [FLINK-16595](https://issues.apache.org/jira/browse/FLINK-16595) | Support extra hadoop filesystem URLs for which to request delegation tokens |  Major | Deployment / YARN | fa zheng | Husky Zeng |
| [FLINK-19553](https://issues.apache.org/jira/browse/FLINK-19553) | The format of checkpoint Completion Time and Failure Time should be changed from HH:mm:ss to yyyy-MM-dd HH:mm:ss |  Minor | Runtime / Web Frontend | Fangliang Liu | Fangliang Liu |
| [FLINK-19765](https://issues.apache.org/jira/browse/FLINK-19765) | flink SqlUseCatalog.getCatalogName is not unified with SqlCreateCatalog and SqlDropCatalog |  Major | Table SQL / Planner | jackylau | jackylau |
| [FLINK-19412](https://issues.apache.org/jira/browse/FLINK-19412) | Re-layer Python Operation Make it Possible to Provide only Python implementation |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-18676](https://issues.apache.org/jira/browse/FLINK-18676) | Update version of aws to support use of default constructor of "WebIdentityTokenCredentialsProvider" |  Minor | FileSystems | Ravi Bhushan Ratnakar | Robert Metzger |
| [FLINK-19252](https://issues.apache.org/jira/browse/FLINK-19252) | Jaas file created under io.tmp.dirs - folder not created if not exists |  Major | Runtime / Coordination | Koala Lam | Yangze Guo |
| [FLINK-19508](https://issues.apache.org/jira/browse/FLINK-19508) | Add collect() operation on DataStream |  Major | API / DataStream | Aljoscha Krettek | Seth Wiesman |
| [FLINK-19493](https://issues.apache.org/jira/browse/FLINK-19493) | In CliFrontend, make flow of Configuration more obvious |  Major | Command Line Client | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-19521](https://issues.apache.org/jira/browse/FLINK-19521) | Support dynamic properties on DefaultCLI |  Critical | Command Line Client | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-19494](https://issues.apache.org/jira/browse/FLINK-19494) | Add StreamExecutionEnvironment.fromSequence() |  Major | API / DataStream | Stephan Ewen | Nicholas Jiang |
| [FLINK-19641](https://issues.apache.org/jira/browse/FLINK-19641) | Optimize parallelism calculating of HiveTableSource by checking file number |  Major | Connectors / Hive | Caizhi Weng | Caizhi Weng |
| [FLINK-8357](https://issues.apache.org/jira/browse/FLINK-8357) | enable rolling in default log settings |  Major | Build System, Deployment / Scripts | Mingmin Xu | Jörn Kottmann |
| [FLINK-18811](https://issues.apache.org/jira/browse/FLINK-18811) | if a disk is damaged, taskmanager should choose another disk for temp dir , rather than throw an IOException, which causes flink job restart over and over again |  Major | Runtime / Network | Kai Chen | Kai Chen |
| [FLINK-19702](https://issues.apache.org/jira/browse/FLINK-19702) | Avoid using HiveConf::hiveSiteURL |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-19749](https://issues.apache.org/jira/browse/FLINK-19749) | Improve documentation in Table API page |  Major | Documentation, Table SQL / API | appleyuchi | Roc Marshal |
| [FLINK-19762](https://issues.apache.org/jira/browse/FLINK-19762) | Selecting Job-ID and TaskManager-ID in web UI covers more than the ID |  Minor | Runtime / Web Frontend | Matthias | CloseRiver |
| [FLINK-19892](https://issues.apache.org/jira/browse/FLINK-19892) | Replace \_\_metaclass\_\_ field with metaclass keyword |  Major | API / Python | Huang Xingbo | Nicholas Jiang |
| [FLINK-19904](https://issues.apache.org/jira/browse/FLINK-19904) | Update documentation to address difference between -Xmx and the metric for maximum heap |  Minor | Documentation, Runtime / Metrics | Matthias | Matthias |
| [FLINK-19861](https://issues.apache.org/jira/browse/FLINK-19861) | Improve the document of now() function |  Minor | Documentation, Table SQL / API | hailong wang | hailong wang |
| [FLINK-16522](https://issues.apache.org/jira/browse/FLINK-16522) | Use type hints to declare the signature of the methods |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-19924](https://issues.apache.org/jira/browse/FLINK-19924) | Disallow unaligned checkpoints for iterative jobs |  Major | Runtime / Configuration | Roman Khachatryan | Roman Khachatryan |
| [FLINK-18716](https://issues.apache.org/jira/browse/FLINK-18716) | Remove the deprecated "execute" and "insert\_into" calls in PyFlink Table API docs |  Minor | API / Python, Documentation | Wei Zhong | Wei Zhong |
| [FLINK-19809](https://issues.apache.org/jira/browse/FLINK-19809) | Add ServiceConnectionManager |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-19898](https://issues.apache.org/jira/browse/FLINK-19898) | [Kinesis][EFO] Ignore ReadTimeoutException from SubcribeToShard retry policy |  Major | Connectors / Kinesis | Danny Cranmer | Danny Cranmer |
| [FLINK-19899](https://issues.apache.org/jira/browse/FLINK-19899) | [Kinesis][EFO] Optimise error handling to use a separate exception delivery mechanism |  Major | Connectors / Kinesis | Danny Cranmer | Danny Cranmer |
| [FLINK-19952](https://issues.apache.org/jira/browse/FLINK-19952) | flink SecurityOptions.class use depracted method so many times |  Trivial | API / Core | jackylau | jackylau |
| [FLINK-19810](https://issues.apache.org/jira/browse/FLINK-19810) | Automatically run a basic NOTICE file check on CI |  Major | Build System | Robert Metzger | Robert Metzger |
| [FLINK-19953](https://issues.apache.org/jira/browse/FLINK-19953) | Translation in docs/ops/memory/mem\_setup.zh.md |  Minor | chinese-translation | Matthias | Xiao Huang |
| [FLINK-19661](https://issues.apache.org/jira/browse/FLINK-19661) | Implement changes required to resolve FLIP-104 |  Major | Runtime / Metrics, Runtime / Web Frontend | Matthias | Matthias |
| [FLINK-14431](https://issues.apache.org/jira/browse/FLINK-14431) | Update TaskManager's memory information to match its memory composition |  Major | Runtime / REST, Runtime / Task, Runtime / Web Frontend | lining | Matthias |
| [FLINK-19821](https://issues.apache.org/jira/browse/FLINK-19821) | Add ProcessFunction and timer access for Python DataStream API. |  Major | API / Python | Shuiqiang Chen | Shuiqiang Chen |
| [FLINK-15981](https://issues.apache.org/jira/browse/FLINK-15981) | Control the direct memory in FileChannelBoundedData.FileBufferReader |  Critical | Runtime / Network | Jingsong Lee | Zhijiang |
| [FLINK-19582](https://issues.apache.org/jira/browse/FLINK-19582) | FLIP-148: Introduce sort-merge based blocking shuffle to Flink |  Major | Runtime / Network | Yingjie Cao | Yingjie Cao |
| [FLINK-20003](https://issues.apache.org/jira/browse/FLINK-20003) | Improve slot report logging messages |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-19431](https://issues.apache.org/jira/browse/FLINK-19431) | Translate "Monitoring REST API" page of "Debugging & Monitoring" into Chinese |  Major | chinese-translation, Documentation | weizheng | weizheng |
| [FLINK-19939](https://issues.apache.org/jira/browse/FLINK-19939) | Remove redundant union from multiple input node |  Major | Table SQL / Planner | Caizhi Weng | Caizhi Weng |
| [FLINK-14356](https://issues.apache.org/jira/browse/FLINK-14356) | Introduce "raw" format to (de)serialize message to a single field |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / API | jinfeng | jinfeng |
| [FLINK-19644](https://issues.apache.org/jira/browse/FLINK-19644) | Support read specific partition of Hive table in temporal join |  Major | Connectors / Hive, Table SQL / Ecosystem | Leonard Xu | Leonard Xu |
| [FLINK-19811](https://issues.apache.org/jira/browse/FLINK-19811) | FlinkRexUtil#simplify should simplify search in conjunctions |  Major | Table SQL / Planner | Caizhi Weng | godfrey he |
| [FLINK-18858](https://issues.apache.org/jira/browse/FLINK-18858) | Kinesis Flink SQL Connector |  Major | Connectors / Kinesis, Table SQL / Ecosystem | Waldemar Hummer | Alexander Alexandrov |
| [FLINK-20037](https://issues.apache.org/jira/browse/FLINK-20037) | Fix the Javadoc of TableEnvironment#fromValues(AbstractDataType, Object...) |  Trivial | Table SQL / API | yandufeng | yandufeng |
| [FLINK-20016](https://issues.apache.org/jira/browse/FLINK-20016) | Support TimestampAssigner and WatermarkGenerator for Python DataStream API. |  Major | API / Python | Shuiqiang Chen | Shuiqiang Chen |
| [FLINK-20024](https://issues.apache.org/jira/browse/FLINK-20024) | Link to flink-docker repository in the docker documentation |  Major | Documentation, flink-docker | Chesnay Schepler | Chesnay Schepler |
| [FLINK-19265](https://issues.apache.org/jira/browse/FLINK-19265) | Simplify handling of 'NoMoreSplitsEvent' |  Major | Connectors / Common | Stephan Ewen | Stephan Ewen |
| [FLINK-20049](https://issues.apache.org/jira/browse/FLINK-20049) | Simplify handling of "request split". |  Major | API / Core | Stephan Ewen | Stephan Ewen |
| [FLINK-18938](https://issues.apache.org/jira/browse/FLINK-18938) | Throw better exception message for quering sink-only connector |  Major | Table SQL / API | Jark Wu | Fangliang Liu |
| [FLINK-19972](https://issues.apache.org/jira/browse/FLINK-19972) | Provide more details when type serializers are not compatible |  Major | Runtime / State Backends | Nico Kruber | Nico Kruber |
| [FLINK-19394](https://issues.apache.org/jira/browse/FLINK-19394) | Translate the 'Monitoring Checkpointing' page of 'Debugging & Monitoring' into Chinese |  Major | chinese-translation, Documentation | Roc Marshal | Roc Marshal |
| [FLINK-18755](https://issues.apache.org/jira/browse/FLINK-18755) | RabbitMQ QoS Chinese Documentation |  Major | chinese-translation, Connectors/ RabbitMQ | Austin Cawley-Edwards | 吴彦祖 |
| [FLINK-20023](https://issues.apache.org/jira/browse/FLINK-20023) | Remove note about matching hadoop version from standalone setup docs |  Major | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-20071](https://issues.apache.org/jira/browse/FLINK-20071) | Add a dedicated stage to build the PyFlink wheel packges in azure-pipelines.yml |  Major | Build System | Dian Fu | Dian Fu |
| [FLINK-19912](https://issues.apache.org/jira/browse/FLINK-19912) | JSON format fails to serialize map value with null keys |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | hailong wang | hailong wang |
| [FLINK-20058](https://issues.apache.org/jira/browse/FLINK-20058) | Improve kafka per-partition-watermark tests |  Major | Connectors / Kafka, Table SQL / API | Shengkai Fang | Shengkai Fang |
| [FLINK-19673](https://issues.apache.org/jira/browse/FLINK-19673) | Translate "Standalone Cluster" of "Clusters & Depolyment" page into Chinese |  Major | chinese-translation, Documentation | Xiao Huang | Xiao Huang |
| [FLINK-20075](https://issues.apache.org/jira/browse/FLINK-20075) | When the JobMaster is initialized, the JobID of the JobGraph is retrieved again in the createlotpool method |  Trivial | Runtime / Coordination | ZhangAiping | ZhangAiping |
| [FLINK-20093](https://issues.apache.org/jira/browse/FLINK-20093) | Create a download page for all optional sql client components |  Major | Documentation, Table SQL / Ecosystem | Dawid Wysakowicz | Dawid Wysakowicz |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-17730](https://issues.apache.org/jira/browse/FLINK-17730) | HadoopS3RecoverableWriterITCase.testRecoverAfterMultiplePersistsStateWithMultiPart times out |  Major | Build System / Azure Pipelines, FileSystems, Tests | Robert Metzger | Robert Metzger |
| [FLINK-17645](https://issues.apache.org/jira/browse/FLINK-17645) | REAPER\_THREAD.start() in SafetyNetCloseableRegistry failed, causing the repeated failover. |  Major | Runtime / Task | Zakelly Lan | Lijie Wang |
| [FLINK-17850](https://issues.apache.org/jira/browse/FLINK-17850) | PostgresCatalogITCase . testGroupByInsert() fails on CI |  Blocker | Table SQL / Ecosystem | Stephan Ewen | Jark Wu |
| [FLINK-17870](https://issues.apache.org/jira/browse/FLINK-17870) | dependent jars are missing to be shipped to cluster in scala shell |  Major | Scala Shell | Jeff Zhang | Jeff Zhang |
| [FLINK-17744](https://issues.apache.org/jira/browse/FLINK-17744) | StreamContextEnvironment#execute cannot be call JobListener#onJobExecuted |  Major | Client / Job Submission | Echo Lee | Echo Lee |
| [FLINK-17992](https://issues.apache.org/jira/browse/FLINK-17992) | Exception from RemoteInputChannel#onBuffer should not fail the whole NetworkClientHandler |  Blocker | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-17994](https://issues.apache.org/jira/browse/FLINK-17994) | Fix the race condition between CheckpointBarrierUnaligner#processBarrier and #notifyBarrierReceived |  Blocker | Runtime / Checkpointing | Zhijiang | Zhijiang |
| [FLINK-18051](https://issues.apache.org/jira/browse/FLINK-18051) | Fail Maven setup on AZP if download fails |  Major | Build System / Azure Pipelines | Robert Metzger | Robert Metzger |
| [FLINK-18037](https://issues.apache.org/jira/browse/FLINK-18037) | The doc of StreamTaskNetworkInput.java may has a redundant 'status' |  Trivial | Documentation | CloseRiver | CloseRiver |
| [FLINK-18087](https://issues.apache.org/jira/browse/FLINK-18087) | Uploading user artifact for Yarn job cluster could not work |  Blocker | Deployment / YARN | Yang Wang | Yang Wang |
| [FLINK-17935](https://issues.apache.org/jira/browse/FLINK-17935) | Logs could not show up when deploying Flink on Yarn via "--executor" |  Blocker | Deployment / YARN | Yang Wang | Kostas Kloudas |
| [FLINK-17416](https://issues.apache.org/jira/browse/FLINK-17416) | Flink-kubernetes doesn't work on java 8 8u252 |  Major | Deployment / Kubernetes | wangxiyuan |  |
| [FLINK-17816](https://issues.apache.org/jira/browse/FLINK-17816) | Change Latency Marker to work with "scheduleAtFixedDelay" instead of "scheduleAtFixedRate" |  Major | Runtime / Task | Stephan Ewen | Jiayi Liao |
| [FLINK-18048](https://issues.apache.org/jira/browse/FLINK-18048) | "--host" option could not take effect for standalone application cluster |  Critical | Deployment / Scripts | Yang Wang | Yang Wang |
| [FLINK-18151](https://issues.apache.org/jira/browse/FLINK-18151) | Resolve CWE22 problems in pyflink\_gateway\_server.py |  Critical | API / Python | Hequn Cheng | Shuiqiang Chen |
| [FLINK-18050](https://issues.apache.org/jira/browse/FLINK-18050) | Fix the bug of recycling buffer twice once exception in ChannelStateWriteRequestDispatcher#dispatch |  Blocker | Runtime / Checkpointing | Zhijiang | Roman Khachatryan |
| [FLINK-18136](https://issues.apache.org/jira/browse/FLINK-18136) | Don't start channel state writing for savepoints (RPC) |  Major | Runtime / Checkpointing, Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-18063](https://issues.apache.org/jira/browse/FLINK-18063) | Fix the race condition for aborting checkpoint in CheckpointBarrierUnaligner |  Blocker | Runtime / Checkpointing | Zhijiang | Zhijiang |
| [FLINK-16694](https://issues.apache.org/jira/browse/FLINK-16694) | Resuming Externalized Checkpoint end-to-end test failed on travis |  Critical | Runtime / Metrics, Tests | Piotr Nowojski | Chesnay Schepler |
| [FLINK-18057](https://issues.apache.org/jira/browse/FLINK-18057) | SingleInputGateTest.testConcurrentReadStateAndProcessAndClose: expected:\<3\> but was:\<2\> |  Major | Runtime / Network, Tests | Robert Metzger | Yingjie Cao |
| [FLINK-16198](https://issues.apache.org/jira/browse/FLINK-16198) | FileUtilsTest fails on Mac OS |  Major | FileSystems, Tests | Andrey Zagrebin | Zhe Yu |
| [FLINK-17869](https://issues.apache.org/jira/browse/FLINK-17869) | Fix the race condition of aborting unaligned checkpoint |  Blocker | Runtime / Checkpointing | Zhijiang | Roman Khachatryan |
| [FLINK-16572](https://issues.apache.org/jira/browse/FLINK-16572) | CheckPubSubEmulatorTest is flaky on Azure |  Critical | Connectors / Google Cloud PubSub, Tests | Aljoscha Krettek | Robert Metzger |
| [FLINK-17788](https://issues.apache.org/jira/browse/FLINK-17788) | scala shell in yarn mode is broken |  Major | Scala Shell | Jeff Zhang | Kostas Kloudas |
| [FLINK-18246](https://issues.apache.org/jira/browse/FLINK-18246) | PyFlink e2e fails with java version mismatch on JDK11 nightly build |  Major | API / Python, Build System, Tests | Robert Metzger | Wei Zhong |
| [FLINK-17891](https://issues.apache.org/jira/browse/FLINK-17891) |  FlinkYarnSessionCli sets wrong execution.target type |  Major | Command Line Client, Deployment / YARN | Shangwen Tang | Kostas Kloudas |
| [FLINK-17322](https://issues.apache.org/jira/browse/FLINK-17322) | Enable latency tracker would corrupt the broadcast state |  Major | Runtime / Network | Yun Tang | Arvid Heise |
| [FLINK-17824](https://issues.apache.org/jira/browse/FLINK-17824) | "Resuming Savepoint" e2e stalls indefinitely |  Critical | Runtime / Checkpointing, Tests | Robert Metzger | Roman Khachatryan |
| [FLINK-18291](https://issues.apache.org/jira/browse/FLINK-18291) | Streaming File Sink s3 end-to-end test stalls |  Major | FileSystems, Tests | Robert Metzger | Robert Metzger |
| [FLINK-14511](https://issues.apache.org/jira/browse/FLINK-14511) | Checking YARN queues should add "root" prefix |  Major | Deployment / YARN | Zhanchun Zhang | Zhanchun Zhang |
| [FLINK-18236](https://issues.apache.org/jira/browse/FLINK-18236) | flink elasticsearch IT test ElasticsearchSinkTestBase.runElasticsearchSink\* verify it not right |  Major | Connectors / ElasticSearch | jackylau | jackylau |
| [FLINK-18300](https://issues.apache.org/jira/browse/FLINK-18300) | SQL Client doesn't support ALTER VIEW |  Critical | Table SQL / Client | Rui Li | Rui Li |
| [FLINK-10213](https://issues.apache.org/jira/browse/FLINK-10213) | Task managers cache a negative DNS lookup of the blob server indefinitely |  Major | Runtime / Coordination | Joey Echeverria | Joey Echeverria |
| [FLINK-18242](https://issues.apache.org/jira/browse/FLINK-18242) | Custom OptionsFactory settings seem to have no effect on RocksDB |  Major | Runtime / State Backends | Nico Kruber | Yu Li |
| [FLINK-18352](https://issues.apache.org/jira/browse/FLINK-18352) | org.apache.flink.core.execution.DefaultExecutorServiceLoader not thread safe |  Major | Client / Job Submission | Marcos Klein | Kostas Kloudas |
| [FLINK-17769](https://issues.apache.org/jira/browse/FLINK-17769) | Wrong order of log events on a task failure |  Critical | Runtime / Task | Robert Metzger | Yuan Mei |
| [FLINK-18372](https://issues.apache.org/jira/browse/FLINK-18372) | NullPointerException can happen in SlotPoolImpl#maybeRemapOrphanedAllocation |  Critical | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-18360](https://issues.apache.org/jira/browse/FLINK-18360) | Flink History Server doesn't show correctly table of Completed jobs when there are no archived jobs are in the archive directory |  Minor | Runtime / REST | Jindrich Vimr | Jindrich Vimr |
| [FLINK-18407](https://issues.apache.org/jira/browse/FLINK-18407) | NPE in SlotPoolImpl.maybeRemapOrphanedAllocation if no pending request is registered |  Critical | Runtime / Coordination | Till Rohrmann | Zhu Zhu |
| [FLINK-18420](https://issues.apache.org/jira/browse/FLINK-18420) | SQLClientHBaseITCase.testHBase failed with "ArgumentError: wrong number of arguments (0 for 1)" |  Major | Connectors / HBase, Tests | Dian Fu | Leonard Xu |
| [FLINK-17639](https://issues.apache.org/jira/browse/FLINK-17639) | Document which FileSystems are supported by the StreamingFileSink |  Major | Documentation | Kostas Kloudas | Guowei Ma |
| [FLINK-18426](https://issues.apache.org/jira/browse/FLINK-18426) | Incompatible deprecated key type for registration cluster options |  Critical | Runtime / Configuration, Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-18168](https://issues.apache.org/jira/browse/FLINK-18168) | Error results when use UDAF with Object Array return type |  Major | Table SQL / Runtime | Zou | Zou |
| [FLINK-17800](https://issues.apache.org/jira/browse/FLINK-17800) | RocksDB optimizeForPointLookup results in missing time windows |  Critical | Runtime / State Backends | Yordan Pavlov | Yun Tang |
| [FLINK-16976](https://issues.apache.org/jira/browse/FLINK-16976) | Update chinese documentation for ListCheckpointed deprecation |  Major | chinese-translation, Documentation | Aljoscha Krettek | zhangzhanhua |
| [FLINK-18297](https://issues.apache.org/jira/browse/FLINK-18297) | SQL client: setting execution.type to invalid value shuts down the session |  Major | Table SQL / Client | David Anderson |  |
| [FLINK-18144](https://issues.apache.org/jira/browse/FLINK-18144) | State TTL configuration can't be set in SQL CLI |  Major | Table SQL / API, Table SQL / Client | Jark Wu |  |
| [FLINK-18336](https://issues.apache.org/jira/browse/FLINK-18336) | CheckpointFailureManager forgets failed checkpoints after a successful one |  Major | Runtime / Checkpointing | Roman Khachatryan | Roman Khachatryan |
| [FLINK-18455](https://issues.apache.org/jira/browse/FLINK-18455) | Building with JDK 9+ leads to problems on JDK 8 |  Major | Build System | Niels Basjes | Niels Basjes |
| [FLINK-18461](https://issues.apache.org/jira/browse/FLINK-18461) | Changelog source can't be insert into upsert sink |  Blocker | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-18470](https://issues.apache.org/jira/browse/FLINK-18470) | Tests RocksKeyGroupsRocksSingleStateIteratorTest#testMergeIteratorByte & RocksKeyGroupsRocksSingleStateIteratorTest#testMergeIteratorShort fail locally |  Major | Runtime / State Backends, Tests | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-18485](https://issues.apache.org/jira/browse/FLINK-18485) | Kerberized YARN per-job on Docker test failed during unzip jce\_policy-8.zip |  Major | Deployment / YARN | Dian Fu | Dawid Wysakowicz |
| [FLINK-18519](https://issues.apache.org/jira/browse/FLINK-18519) | Propagate exception to client when execution fails for REST submission |  Major | Runtime / REST | Kostas Kloudas | Kostas Kloudas |
| [FLINK-15414](https://issues.apache.org/jira/browse/FLINK-15414) | KafkaITCase#prepare failed in travis |  Major | Connectors / Kafka, Tests | Dian Fu |  |
| [FLINK-18097](https://issues.apache.org/jira/browse/FLINK-18097) | History server doesn't clean all job json files |  Minor | Runtime / REST | Milan Nikl |  |
| [FLINK-18520](https://issues.apache.org/jira/browse/FLINK-18520) | New Table Function type inference fails |  Major | Table SQL / API | Benchao Li | Timo Walther |
| [FLINK-18369](https://issues.apache.org/jira/browse/FLINK-18369) | TableEnvironmentITCase.testStatementSetWithSameSinkTableNames failed on azure |  Critical | Table SQL / Legacy Planner | Piotr Nowojski | Dawid Wysakowicz |
| [FLINK-18419](https://issues.apache.org/jira/browse/FLINK-18419) | Can not create a catalog from user jar |  Critical | Table SQL / Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-18434](https://issues.apache.org/jira/browse/FLINK-18434) | Can not select fields with JdbcCatalog |  Blocker | Table SQL / Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-18571](https://issues.apache.org/jira/browse/FLINK-18571) | when i use sql-client write to hive but throw a exception "This is a bug. Please consider filing an issue" |  Major | Table SQL / Client | JasonLee |  |
| [FLINK-18477](https://issues.apache.org/jira/browse/FLINK-18477) | ChangelogSocketExample does not work |  Major | Examples, Table SQL / Ecosystem | Dawid Wysakowicz | Timo Walther |
| [FLINK-16827](https://issues.apache.org/jira/browse/FLINK-16827) | StreamExecTemporalSort should require a distribution trait in StreamExecTemporalSortRule |  Major | Table SQL / Planner, Table SQL / Runtime | wuchangjun | Benchao Li |
| [FLINK-18539](https://issues.apache.org/jira/browse/FLINK-18539) | StreamExecutionEnvironment#addSource(SourceFunction, TypeInformation) doesn't use the user defined type information |  Critical | API / DataStream | Jark Wu | Jark Wu |
| [FLINK-18440](https://issues.apache.org/jira/browse/FLINK-18440) | ROW\_NUMBER function: ROW/RANGE not allowed with RANK, DENSE\_RANK or ROW\_NUMBER functions |  Major | Table SQL / Runtime | LakeShen | Danny Chen |
| [FLINK-18585](https://issues.apache.org/jira/browse/FLINK-18585) | Dynamic index can not work in new DynamicTableSink |  Major | Connectors / ElasticSearch | Leonard Xu | Leonard Xu |
| [FLINK-16181](https://issues.apache.org/jira/browse/FLINK-16181) | IfCallGen will throw NPE for primitive types in blink |  Major | Table SQL / Planner | Benchao Li | Benchao Li |
| [FLINK-18591](https://issues.apache.org/jira/browse/FLINK-18591) | Fix the format issue for metrics web page |  Major | Documentation, Runtime / Metrics | Zhijiang | Zhijiang |
| [FLINK-18583](https://issues.apache.org/jira/browse/FLINK-18583) | The \_id field is incorrectly set to index in Elasticsearch6 DynamicTableSink |  Critical | Connectors / ElasticSearch | Yangze Guo | Yangze Guo |
| [FLINK-18573](https://issues.apache.org/jira/browse/FLINK-18573) | InfluxDB reporter cannot be loaded as plugin |  Blocker | Runtime / Metrics | zhangyunyun | Yun Tang |
| [FLINK-17636](https://issues.apache.org/jira/browse/FLINK-17636) | SingleInputGateTest.testConcurrentReadStateAndProcessAndClose: Trying to read from released RecoveredInputChannel |  Critical | Runtime / Network, Tests | Robert Metzger | Zhijiang |
| [FLINK-18594](https://issues.apache.org/jira/browse/FLINK-18594) | The link is broken in kafka doc |  Major | Documentation | Dian Fu | Leonard Xu |
| [FLINK-18163](https://issues.apache.org/jira/browse/FLINK-18163) | Should be volatile: network.api.writer.RecordWriter.flusherException |  Minor | Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-18569](https://issues.apache.org/jira/browse/FLINK-18569) | Add Table.limit() which is the equivalent of SQL LIMIT |  Major | Table SQL / API, Table SQL / Planner, Table SQL / Runtime | Aljoscha Krettek | Timo Walther |
| [FLINK-18639](https://issues.apache.org/jira/browse/FLINK-18639) | Error messages from BashJavaUtils are eaten |  Major | Deployment / Scripts | Xintong Song | Xintong Song |
| [FLINK-18612](https://issues.apache.org/jira/browse/FLINK-18612) | WordCount example failure when setting relative output path |  Critical | fs | Zhijiang | Yun Gao |
| [FLINK-18600](https://issues.apache.org/jira/browse/FLINK-18600) | Kerberized YARN per-job on Docker test failed to download JDK 8u251 |  Blocker | Deployment / YARN, Tests | Dian Fu | Dawid Wysakowicz |
| [FLINK-18468](https://issues.apache.org/jira/browse/FLINK-18468) | TaskExecutorITCase.testJobReExecutionAfterTaskExecutorTermination fails with DuplicateJobSubmissionException |  Critical | Runtime / Coordination, Tests | Robert Metzger | Till Rohrmann |
| [FLINK-17789](https://issues.apache.org/jira/browse/FLINK-17789) | DelegatingConfiguration should remove prefix instead of add prefix in toMap |  Major | API / Core | Jingsong Lee | Fangliang Liu |
| [FLINK-18650](https://issues.apache.org/jira/browse/FLINK-18650) | The description of dispatcher in Flink Architecture document is not accurate |  Minor | Documentation | Peng | Peng |
| [FLINK-18672](https://issues.apache.org/jira/browse/FLINK-18672) | Fix Scala code examples for UDF type inference annotations |  Major | Documentation, Table SQL / API | Fabian Hueske | Timo Walther |
| [FLINK-18533](https://issues.apache.org/jira/browse/FLINK-18533) | Race condition between task acknowledgement and first heartbeat |  Critical | Runtime / Coordination | Dian Fu | Chesnay Schepler |
| [FLINK-18421](https://issues.apache.org/jira/browse/FLINK-18421) | Elasticsearch (v6.3.1) sink end-to-end test instable |  Major | Connectors / ElasticSearch, Tests | Dian Fu | Roman Khachatryan |
| [FLINK-18487](https://issues.apache.org/jira/browse/FLINK-18487) | New table source factory omits unrecognized properties silently |  Major | Table SQL / API | Benchao Li | Jingsong Lee |
| [FLINK-18632](https://issues.apache.org/jira/browse/FLINK-18632) | RowData's row kind do not assigned from input row data when sink code generate and physical type info is pojo type |  Major | Table SQL / Planner | luoziyu | luoziyu |
| [FLINK-18629](https://issues.apache.org/jira/browse/FLINK-18629) | ConnectedStreams#keyBy can not derive key TypeInformation for lambda KeySelectors |  Critical | API / DataStream | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-18697](https://issues.apache.org/jira/browse/FLINK-18697) | Adding flink-table-api-java-bridge\_2.11 to a Flink job kills the IDE logging |  Major | Table SQL / API | Robert Metzger | Jark Wu |
| [FLINK-18552](https://issues.apache.org/jira/browse/FLINK-18552) | Update migration tests in master to cover migration from release-1.11 |  Major | Tests | Zhijiang | Yun Gao |
| [FLINK-18708](https://issues.apache.org/jira/browse/FLINK-18708) | The links of the connector sql jar of Kafka 0.10 and 0.11 are extinct |  Major | Connectors / Kafka, Documentation | Huang Xingbo | Huang Xingbo |
| [FLINK-11547](https://issues.apache.org/jira/browse/FLINK-11547) | JsonMappingException in DynamoDBStreamsSchema |  Major | Connectors / Kinesis | Devin Thomson | Devin Thomson |
| [FLINK-18655](https://issues.apache.org/jira/browse/FLINK-18655) | Set failOnUnableToExtractRepoInfo to false for git-commit-id-plugin in module flink-runtime |  Major | Build System | Hequn Cheng | Hequn Cheng |
| [FLINK-18341](https://issues.apache.org/jira/browse/FLINK-18341) | Building Flink Walkthrough Table Java 0.1 COMPILATION ERROR |  Critical | Table SQL / API, Tests | Piotr Nowojski | Seth Wiesman |
| [FLINK-18710](https://issues.apache.org/jira/browse/FLINK-18710) | ResourceProfileInfo is not serializable |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-16795](https://issues.apache.org/jira/browse/FLINK-16795) | End to end tests timeout on Azure |  Blocker | Build System / Azure Pipelines, Tests | Robert Metzger | Robert Metzger |
| [FLINK-18581](https://issues.apache.org/jira/browse/FLINK-18581) | Cannot find GC cleaner with java version previous jdk8u72(-b01) |  Critical | Runtime / Coordination | Xintong Song | Andrey Zagrebin |
| [FLINK-18668](https://issues.apache.org/jira/browse/FLINK-18668) | BytesHashMap#growAndRehash should release newly allocated segments before throwing the exception |  Major | Table SQL / Runtime | Caizhi Weng | Caizhi Weng |
| [FLINK-18746](https://issues.apache.org/jira/browse/FLINK-18746) | WindowStaggerTest.testWindowStagger failed |  Major | API / DataStream | Dian Fu | Aljoscha Krettek |
| [FLINK-18656](https://issues.apache.org/jira/browse/FLINK-18656) | Start Delay metric is always zero for unaligned checkpoints |  Critical | Runtime / Metrics, Runtime / Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-10195](https://issues.apache.org/jira/browse/FLINK-10195) | RabbitMQ Source With Checkpointing Doesn't Backpressure Correctly |  Major | Connectors/ RabbitMQ | Luka Jurukovski | Austin Cawley-Edwards |
| [FLINK-18595](https://issues.apache.org/jira/browse/FLINK-18595) | Deadlock during job shutdown |  Critical | Runtime / Network | Dian Fu | Zhijiang |
| [FLINK-15728](https://issues.apache.org/jira/browse/FLINK-15728) | JDBCUpsertOutputFormat does not set bind parameter keyFields in updateStatement |  Critical | Connectors / JDBC, Table SQL / Ecosystem | Bhagavan | Jark Wu |
| [FLINK-18771](https://issues.apache.org/jira/browse/FLINK-18771) | "Kerberized YARN per-job on Docker test" failed with "Client cannot authenticate via:[TOKEN, KERBEROS]" |  Major | Deployment / YARN, Tests | Dian Fu | Kostas Kloudas |
| [FLINK-12175](https://issues.apache.org/jira/browse/FLINK-12175) | TypeExtractor.getMapReturnTypes produces different TypeInformation than createTypeInformation for classes with parameterized ancestors |  Major | API / Type Serialization System | Daniel Adams |  |
| [FLINK-18776](https://issues.apache.org/jira/browse/FLINK-18776) | "compile\_cron\_scala212" failed to compile |  Blocker | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Tests | Dian Fu | Dian Fu |
| [FLINK-18700](https://issues.apache.org/jira/browse/FLINK-18700) | Debezium-json format throws Exception when PG table's IDENTITY config is not FULL |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Leonard Xu | Jark Wu |
| [FLINK-18705](https://issues.apache.org/jira/browse/FLINK-18705) | Debezium-JSON throws NPE when tombstone message is received |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Jark Wu | Jark Wu |
| [FLINK-18663](https://issues.apache.org/jira/browse/FLINK-18663) | RestServerEndpoint may prevent server shutdown |  Critical | Runtime / REST | tartarus | tartarus |
| [FLINK-18748](https://issues.apache.org/jira/browse/FLINK-18748) | Savepoint would be queued unexpected if pendingCheckpoints less than maxConcurrentCheckpoints |  Major | Runtime / Checkpointing | Congxian Qiu | tao wang |
| [FLINK-17569](https://issues.apache.org/jira/browse/FLINK-17569) | to support ViewFileSystem when wait lease revoke of hadoop filesystem |  Major | Connectors / FileSystem | konwu |  |
| [FLINK-17253](https://issues.apache.org/jira/browse/FLINK-17253) | Support writing to viewfs for hadoop versions \< 2.7 when using BulkFormatBuilder in StreamingFileSink |  Major | Connectors / FileSystem | chaganti spurthi |  |
| [FLINK-18769](https://issues.apache.org/jira/browse/FLINK-18769) | MiniBatch doesn't work with FLIP-95 source |  Blocker | Table SQL / Runtime | Nico Kruber | Jark Wu |
| [FLINK-18749](https://issues.apache.org/jira/browse/FLINK-18749) | Correct dependencies in Kubernetes pom |  Major | Deployment / Kubernetes | Yang Wang | Yang Wang |
| [FLINK-18677](https://issues.apache.org/jira/browse/FLINK-18677) | ZooKeeperLeaderRetrievalService does not invalidate leader in case of SUSPENDED connection |  Major | Runtime / Coordination | Till Rohrmann | Matthias |
| [FLINK-18805](https://issues.apache.org/jira/browse/FLINK-18805) | ConfigDocsGenerator does not handle multiple upper characters properly |  Trivial | Runtime / Configuration | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18834](https://issues.apache.org/jira/browse/FLINK-18834) |  Could not locate the included file 'generated/rocks\_db\_native\_metric\_configuration.html' |  Major | Documentation | Huang Xingbo | Huang Xingbo |
| [FLINK-18796](https://issues.apache.org/jira/browse/FLINK-18796) | FlinkKinesisProducer.backpressureLatch should be volatile |  Minor | Connectors / Kinesis | Roman Khachatryan | Roman Khachatryan |
| [FLINK-16510](https://issues.apache.org/jira/browse/FLINK-16510) | Task manager safeguard shutdown may not be reliable |  Major | Runtime / Task | Maximilian Michels | Maximilian Michels |
| [FLINK-18688](https://issues.apache.org/jira/browse/FLINK-18688) | ProjectionCodeGenerator#generateProjectionExpression should remove for loop optimization |  Critical | Table SQL / Runtime | Caizhi Weng | Caizhi Weng |
| [FLINK-18859](https://issues.apache.org/jira/browse/FLINK-18859) | ExecutionGraphNotEnoughResourceTest.testRestartWithSlotSharingAndNotEnoughResources failed with "Condition was not met in given timeout." |  Critical | Runtime / Coordination, Tests | Dian Fu | Zhu Zhu |
| [FLINK-18848](https://issues.apache.org/jira/browse/FLINK-18848) | table.to\_pandas should handle retraction rows properly |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-18862](https://issues.apache.org/jira/browse/FLINK-18862) | Fix LISTAGG throws BinaryRawValueData cannot be cast to StringData exception in runtime |  Major | Table SQL / Runtime | YUJIANBO | Jark Wu |
| [FLINK-18893](https://issues.apache.org/jira/browse/FLINK-18893) | Python tests fails with "AppendStreamTableSink requires that Table has only insert changes." |  Major | API / Python, Tests | Robert Metzger | Dian Fu |
| [FLINK-18876](https://issues.apache.org/jira/browse/FLINK-18876) | BlobServer moves file with an open FileInputStream |  Trivial | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18821](https://issues.apache.org/jira/browse/FLINK-18821) | Netty client retry mechanism may cause PartitionRequestClientFactory#createPartitionRequestClient to wait infinitely |  Major | Runtime / Network | Caizhi Weng | Roman Khachatryan |
| [FLINK-18902](https://issues.apache.org/jira/browse/FLINK-18902) | Cannot serve results of asynchronous REST operations in per-job mode |  Blocker | Runtime / REST | Till Rohrmann | Till Rohrmann |
| [FLINK-18646](https://issues.apache.org/jira/browse/FLINK-18646) | Managed memory released check can block RPC thread |  Critical | Runtime / Task | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-18856](https://issues.apache.org/jira/browse/FLINK-18856) | CheckpointCoordinator ignores checkpointing.min-pause |  Major | Runtime / Checkpointing | Roman Khachatryan | Roman Khachatryan |
| [FLINK-18659](https://issues.apache.org/jira/browse/FLINK-18659) | FileNotFoundException when writing Hive orc tables |  Critical | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jingsong Lee | Rui Li |
| [FLINK-18935](https://issues.apache.org/jira/browse/FLINK-18935) | CompletedOperationCache accepts new operations after closeAsync has been called |  Major | Runtime / REST | Till Rohrmann | Till Rohrmann |
| [FLINK-18956](https://issues.apache.org/jira/browse/FLINK-18956) | StreamTask.invoke should catch Throwable instead of Exception |  Major | Runtime / Task | Dian Fu | Dian Fu |
| [FLINK-18081](https://issues.apache.org/jira/browse/FLINK-18081) | Fix broken links in "Kerberos Authentication Setup and Configuration" doc |  Major | Documentation, Runtime / Configuration | Yangze Guo | Yangze Guo |
| [FLINK-18972](https://issues.apache.org/jira/browse/FLINK-18972) | Unfulfillable slot requests of Blink planner batch jobs never timeout |  Blocker | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-18965](https://issues.apache.org/jira/browse/FLINK-18965) | ExecutionContextTest.testCatalogs failed with "ClassNotFoundException: org.apache.hadoop.fs.BlockStoragePolicySpi" |  Blocker | Connectors / Hive | Dian Fu | Rui Li |
| [FLINK-18212](https://issues.apache.org/jira/browse/FLINK-18212) | Init lookup join failed when use udf on lookup table |  Major | Table SQL / Planner | YufeiLiu | Jark Wu |
| [FLINK-18994](https://issues.apache.org/jira/browse/FLINK-18994) | There is one typo in "Set up TaskManager Memory" |  Minor | chinese-translation | Peng | Xintong Song |
| [FLINK-18995](https://issues.apache.org/jira/browse/FLINK-18995) | Some Hive functions fail because they need to access SessionState |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-18941](https://issues.apache.org/jira/browse/FLINK-18941) | There are some typos in "Set up JobManager Memory" |  Minor | chinese-translation | Peng | Kecheng Xiao |
| [FLINK-18993](https://issues.apache.org/jira/browse/FLINK-18993) | Invoke sanityCheckTotalFlinkMemory method incorrectly in JobManagerFlinkMemoryUtils.java |  Critical | Runtime / Configuration | Peng | Peng |
| [FLINK-19040](https://issues.apache.org/jira/browse/FLINK-19040) | SourceOperator is not closing SourceReader |  Critical | Runtime / Task | Piotr Nowojski | Piotr Nowojski |
| [FLINK-18750](https://issues.apache.org/jira/browse/FLINK-18750) | SqlValidatorException thrown when select from a view which contains a UDTF call |  Major | Table SQL / API | Wei Zhong | Danny Chen |
| [FLINK-19058](https://issues.apache.org/jira/browse/FLINK-19058) | Dataset transformations document page error |  Major | API / DataSet, Documentation | Fin-chan | Fin-chan |
| [FLINK-18899](https://issues.apache.org/jira/browse/FLINK-18899) | The property yarn.application-attempts default value is not none |  Major | Deployment / YARN, Documentation | Peng | Yang Wang |
| [FLINK-19009](https://issues.apache.org/jira/browse/FLINK-19009) | wrong way to calculate the "downtime" metric |  Trivial | Runtime / Coordination, Runtime / Metrics | Zhinan Cheng | kevin liu |
| [FLINK-18900](https://issues.apache.org/jira/browse/FLINK-18900) | HiveCatalog should error out when listing partitions with an invalid spec |  Major | Connectors / Hive | Rui Li | Nicholas Jiang |
| [FLINK-17273](https://issues.apache.org/jira/browse/FLINK-17273) | Fix not calling ResourceManager#closeTaskManagerConnection in KubernetesResourceManager in case of registered TaskExecutor failure |  Major | Deployment / Kubernetes, Runtime / Coordination | Canbin Zheng | Xintong Song |
| [FLINK-19050](https://issues.apache.org/jira/browse/FLINK-19050) | Doc of MAX\_DECIMAL\_PRECISION should be DECIMAL |  Trivial | Documentation | CloseRiver | CloseRiver |
| [FLINK-18992](https://issues.apache.org/jira/browse/FLINK-18992) | Table API renameColumns method annotation error |  Major | Table SQL / API | tzxxh | Fin-chan |
| [FLINK-18222](https://issues.apache.org/jira/browse/FLINK-18222) | "Avro Confluent Schema Registry nightly end-to-end test" unstable with "Kafka cluster did not start after 120 seconds" |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Tests | Robert Metzger | Robert Metzger |
| [FLINK-19049](https://issues.apache.org/jira/browse/FLINK-19049) | Fix validation of table functions in projections |  Major | Table SQL / Runtime | Robert Metzger | Timo Walther |
| [FLINK-16768](https://issues.apache.org/jira/browse/FLINK-16768) | HadoopS3RecoverableWriterITCase.testRecoverWithStateWithMultiPart hangs |  Critical | FileSystems, Tests | Zhijiang | Robert Metzger |
| [FLINK-18852](https://issues.apache.org/jira/browse/FLINK-18852) | StreamScan should keep the same parallelism as the input |  Major | Table SQL / Planner | liupengcheng | liupengcheng |
| [FLINK-19093](https://issues.apache.org/jira/browse/FLINK-19093) | "Elasticsearch (v6.3.1) sink end-to-end test" failed with "SubtaskCheckpointCoordinatorImpl was closed without closing asyncCheckpointRunnable 1" |  Critical | Runtime / Checkpointing | Dian Fu | Roman Khachatryan |
| [FLINK-19012](https://issues.apache.org/jira/browse/FLINK-19012) | E2E test fails with "Cannot register Closeable, this subtaskCheckpointCoordinator is already closed. Closing argument." |  Critical | Runtime / Checkpointing, Runtime / Task, Tests | Robert Metzger | Roman Khachatryan |
| [FLINK-14087](https://issues.apache.org/jira/browse/FLINK-14087) | throws java.lang.ArrayIndexOutOfBoundsException  when emiting the data using RebalancePartitioner. |  Major | API / DataStream, Runtime / Network | luojiangyu | Yun Gao |
| [FLINK-18959](https://issues.apache.org/jira/browse/FLINK-18959) | Fail to archiveExecutionGraph because job is not finished when dispatcher close |  Critical | Runtime / Coordination | Liu | Liu |
| [FLINK-19133](https://issues.apache.org/jira/browse/FLINK-19133) | User provided kafka partitioners are not initialized correctly |  Blocker | Connectors / Kafka | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-19061](https://issues.apache.org/jira/browse/FLINK-19061) | HiveCatalog fails to get partition column stats if partition value contains special characters |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-19086](https://issues.apache.org/jira/browse/FLINK-19086) | Performance regression 2020-08-27 in globalWindow benchmark |  Major | Benchmarks, Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-19148](https://issues.apache.org/jira/browse/FLINK-19148) | Table crashed in Flink Table API & SQL  Docs |  Major | Documentation | Leonard Xu | Xiao Huang |
| [FLINK-18832](https://issues.apache.org/jira/browse/FLINK-18832) | BoundedBlockingSubpartition does not work with StreamTask |  Major | Runtime / Network, Runtime / Task | Till Rohrmann | Zhijiang |
| [FLINK-17637](https://issues.apache.org/jira/browse/FLINK-17637) | HadoopS3RecoverableWriterITCase fails with Expected exception: java.io.FileNotFoundException |  Major | FileSystems, Tests | Robert Metzger | Guowei Ma |
| [FLINK-18641](https://issues.apache.org/jira/browse/FLINK-18641) | "Failure to finalize checkpoint" error in MasterTriggerRestoreHook |  Blocker | Runtime / Checkpointing | Brian Zhou | Jiangjie Qin |
| [FLINK-19112](https://issues.apache.org/jira/browse/FLINK-19112) | No access to metric group in ScalarFunction when optimizing |  Major | Table SQL / Runtime | Nico Kruber | Timo Walther |
| [FLINK-19094](https://issues.apache.org/jira/browse/FLINK-19094) | Revise the description of watermark strategy in Flink Table document |  Major | Documentation | Leonard Xu | Leonard Xu |
| [FLINK-19166](https://issues.apache.org/jira/browse/FLINK-19166) | StreamingFileWriter should register Listener before the initialization of buckets |  Blocker | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-19183](https://issues.apache.org/jira/browse/FLINK-19183) | flink-connector-hive module compile failed with "cannot find symbol: variable TableEnvUtil" |  Blocker | Connectors / Hive | Dian Fu | Jingsong Lee |
| [FLINK-19151](https://issues.apache.org/jira/browse/FLINK-19151) | Flink does not normalize container resource with correct configurations when Yarn FairScheduler is used |  Major | Deployment / YARN | Xintong Song | jinhai |
| [FLINK-19170](https://issues.apache.org/jira/browse/FLINK-19170) | Parameter naming error |  Major | Table SQL / Ecosystem | sulei | sulei |
| [FLINK-19135](https://issues.apache.org/jira/browse/FLINK-19135) | (Stream)ExecutionEnvironment.execute() should not throw ExecutionException |  Major | API / DataSet, API / DataStream | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-15778](https://issues.apache.org/jira/browse/FLINK-15778) | SQL Client end-to-end test for Kafka 0.10 nightly run hung on travis |  Critical | Connectors / Kafka | Yu Li | Aljoscha Krettek |
| [FLINK-17260](https://issues.apache.org/jira/browse/FLINK-17260) | StreamingKafkaITCase failure on Azure |  Critical | Connectors / Kafka, Tests | Roman Khachatryan | Aljoscha Krettek |
| [FLINK-9217](https://issues.apache.org/jira/browse/FLINK-9217) | Kafka010ITCase hanging after timeout in testTimestamps() |  Critical | Connectors / Kafka, Tests | Nico Kruber | Aljoscha Krettek |
| [FLINK-18128](https://issues.apache.org/jira/browse/FLINK-18128) | CoordinatedSourceITCase.testMultipleSources gets stuck |  Critical | Runtime / Checkpointing, Runtime / Task, Tests | Robert Metzger | Stephan Ewen |
| [FLINK-19218](https://issues.apache.org/jira/browse/FLINK-19218) | Remove inconsistent host logic for LocalFileSystem |  Major | API / Core | Stephan Ewen | Stephan Ewen |
| [FLINK-19250](https://issues.apache.org/jira/browse/FLINK-19250) | SplitFetcherManager does not propagate errors correctly |  Blocker | Connectors / Common | Stephan Ewen | Stephan Ewen |
| [FLINK-19109](https://issues.apache.org/jira/browse/FLINK-19109) | Split Reader eats chained periodic watermarks |  Blocker | Runtime / Task | David Anderson | Roman Khachatryan |
| [FLINK-15467](https://issues.apache.org/jira/browse/FLINK-15467) | Should wait for the end of the source thread during the Task cancellation |  Major | Runtime / Task | ming li | Roman Khachatryan |
| [FLINK-17825](https://issues.apache.org/jira/browse/FLINK-17825) | HA end-to-end gets killed due to timeout |  Critical | Runtime / Coordination, Tests | Robert Metzger | Robert Metzger |
| [FLINK-19005](https://issues.apache.org/jira/browse/FLINK-19005) | Document JDBC drivers as source of Metaspace leaks |  Major | Client / Job Submission, Runtime / Configuration, Runtime / Coordination | Guillermo Sánchez | Chesnay Schepler |
| [FLINK-9992](https://issues.apache.org/jira/browse/FLINK-9992) | FsStorageLocationReferenceTest#testEncodeAndDecode failed in CI |  Critical | FileSystems, Tests | vinoyang | Dian Fu |
| [FLINK-19246](https://issues.apache.org/jira/browse/FLINK-19246) | TableSourceITCase.testStreamScanParallelism fails on private Azure accounts |  Critical | Table SQL / Legacy Planner | Robert Metzger | Jark Wu |
| [FLINK-19262](https://issues.apache.org/jira/browse/FLINK-19262) | Can not setParallelism for FLIP-27 source |  Critical | API / DataStream | Jingsong Lee | Fangliang Liu |
| [FLINK-18333](https://issues.apache.org/jira/browse/FLINK-18333) | UnsignedTypeConversionITCase failed caused by MariaDB4j "Asked to waitFor Program" |  Critical | Connectors / JDBC, Table SQL / Ecosystem | Jark Wu | Leonard Xu |
| [FLINK-19121](https://issues.apache.org/jira/browse/FLINK-19121) | Avoid accessing HDFS frequently in HiveBulkWriterFactory |  Blocker | Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-19064](https://issues.apache.org/jira/browse/FLINK-19064) | HBaseRowDataInputFormat is leaking resources |  Critical | Connectors / HBase | Robert Metzger | Nicholas Jiang |
| [FLINK-19299](https://issues.apache.org/jira/browse/FLINK-19299) | NettyShuffleEnvironmentBuilder#setBufferSize does not take effect |  Minor | Tests | Yingjie Cao | Yingjie Cao |
| [FLINK-19280](https://issues.apache.org/jira/browse/FLINK-19280) | The option "sink.buffer-flush.max-rows" for JDBC can't be disabled by set to zero |  Major | Connectors / JDBC, Table SQL / Ecosystem | Jark Wu | dalongliu |
| [FLINK-19244](https://issues.apache.org/jira/browse/FLINK-19244) | CSV format can't deserialize null ROW field |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Ying Z | Ying Z |
| [FLINK-19321](https://issues.apache.org/jira/browse/FLINK-19321) | CollectSinkFunction does not define serialVersionUID |  Major | Table SQL / Runtime | Fabian Hueske | CloseRiver |
| [FLINK-17910](https://issues.apache.org/jira/browse/FLINK-17910) | Kerberized YARN on Docker e2e test: "Final Application State: FAILED" |  Major | Deployment / YARN, Tests | Robert Metzger | Robert Metzger |
| [FLINK-19281](https://issues.apache.org/jira/browse/FLINK-19281) | LIKE cannot recognize full table path |  Major | Table SQL / API, Table SQL / Planner | Benchao Li | CloseRiver |
| [FLINK-19289](https://issues.apache.org/jira/browse/FLINK-19289) | Remove pods terminated during JM failover |  Major | Deployment / Kubernetes | Yi Tang | Xintong Song |
| [FLINK-19140](https://issues.apache.org/jira/browse/FLINK-19140) | Join with Table Function (UDTF) SQL example is incorrect |  Major | Documentation, Table SQL / API | Benchao Li | Benchao Li |
| [FLINK-11779](https://issues.apache.org/jira/browse/FLINK-11779) | CLI ignores -m parameter if high-availability is ZOOKEEPER |  Major | Command Line Client | Gary Yao | Guowei Ma |
| [FLINK-19361](https://issues.apache.org/jira/browse/FLINK-19361) | Make HiveCatalog thread safe |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-19134](https://issues.apache.org/jira/browse/FLINK-19134) | Add BasicArrayTypeInfo and coder for PrimitiveArrayTypeInfo for Python DataStream API. |  Major | API / Python | Shuiqiang Chen | Shuiqiang Chen |
| [FLINK-19377](https://issues.apache.org/jira/browse/FLINK-19377) | EventTimeWindowCheckpointingITCase setup can hide problems when changing parameters |  Major | API / DataStream, Tests | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-19411](https://issues.apache.org/jira/browse/FLINK-19411) | MultipleInputStreamTask fails with RuntimeException when its input contains union |  Critical | API / DataStream | Caizhi Weng | Piotr Nowojski |
| [FLINK-17315](https://issues.apache.org/jira/browse/FLINK-17315) | UnalignedCheckpointITCase.shouldPerformUnalignedCheckpointMassivelyParallel failed in timeout |  Critical | Runtime / Checkpointing, Tests | Zhijiang | Arvid Heise |
| [FLINK-19417](https://issues.apache.org/jira/browse/FLINK-19417) | Fix the bug of the method from\_data\_stream in table\_environement |  Major | API / Python | Huang Xingbo | Nicholas Jiang |
| [FLINK-18842](https://issues.apache.org/jira/browse/FLINK-18842) | e2e test failed to download "localhost:9999/flink.tgz" in "Wordcount on Docker test" |  Major | flink-docker, Test Infrastructure | Dian Fu | Matthias |
| [FLINK-19433](https://issues.apache.org/jira/browse/FLINK-19433) | An Error example of FROM\_UNIXTIME function in document |  Major | Documentation, Table SQL / API | Kyle Zhang | Kyle Zhang |
| [FLINK-19215](https://issues.apache.org/jira/browse/FLINK-19215) | "Resuming Savepoint (rocks, scale down, rocks timers) end-to-end test" failed with "Dispatcher REST endpoint has not started within a timeout of 20 sec" |  Major | Runtime / State Backends | Dian Fu | Robert Metzger |
| [FLINK-17818](https://issues.apache.org/jira/browse/FLINK-17818) | CSV Reader with Pojo Type and no field names fails |  Minor | API / DataSet | Danish Amjad | Danish Amjad |
| [FLINK-19445](https://issues.apache.org/jira/browse/FLINK-19445) | Several tests for HBase connector 1.4 failed with "NoSuchMethodError: com.google.common.base.Preconditions.checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V" |  Blocker | Connectors / HBase | Dian Fu | Gyula Fora |
| [FLINK-19437](https://issues.apache.org/jira/browse/FLINK-19437) | FileSourceTextLinesITCase.testContinuousTextFileSource failed with "SimpleStreamFormat is not splittable, but found split end (0) different from file length (198)" |  Major | Connectors / FileSystem, Tests | Dian Fu | Stephan Ewen |
| [FLINK-19388](https://issues.apache.org/jira/browse/FLINK-19388) | Streaming bucketing end-to-end test failed with "Number of running task managers has not reached 4 within a timeout of 40 sec" |  Blocker | Connectors / FileSystem, Runtime / Coordination | Dian Fu | Andrey Zagrebin |
| [FLINK-19258](https://issues.apache.org/jira/browse/FLINK-19258) | Fix the wrong example of "csv.line-delimiter" in CSV documentation |  Major | Documentation, Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Jark Wu | dalongliu |
| [FLINK-18818](https://issues.apache.org/jira/browse/FLINK-18818) | HadoopRenameCommitterHDFSTest.testCommitOneFile[Override: false] failed with "java.io.IOException: The stream is closed" |  Major | Connectors / FileSystem, Tests | Dian Fu | Yun Gao |
| [FLINK-19447](https://issues.apache.org/jira/browse/FLINK-19447) | HBaseConnectorITCase.HBaseTestingClusterAutoStarter failed with "Master not initialized after 200000ms" |  Blocker | Connectors / HBase, Tests | Dian Fu | Miklos Gergely |
| [FLINK-19264](https://issues.apache.org/jira/browse/FLINK-19264) | Jobs with identical graph shapes cannot be run concurrently |  Blocker | . | Aljoscha Krettek | Yangze Guo |
| [FLINK-18815](https://issues.apache.org/jira/browse/FLINK-18815) | AbstractCloseableRegistryTest.testClose unstable |  Critical | FileSystems, Tests | Robert Metzger | Kezhu Wang |
| [FLINK-19331](https://issues.apache.org/jira/browse/FLINK-19331) | State processor api has native resouce leak when working with RocksDB |  Major | API / State Processor | Seth Wiesman | Seth Wiesman |
| [FLINK-19295](https://issues.apache.org/jira/browse/FLINK-19295) | YARNSessionFIFOITCase.checkForProhibitedLogContents found a log with prohibited string |  Major | Deployment / YARN, Runtime / Coordination, Tests | Dian Fu | Robert Metzger |
| [FLINK-19123](https://issues.apache.org/jira/browse/FLINK-19123) | TestStreamEnvironment does not use shared MiniCluster for executeAsync() |  Major | API / DataStream, Tests | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-19410](https://issues.apache.org/jira/browse/FLINK-19410) | RestAPIStabilityTest does not assert on enum changes |  Minor | Runtime / REST, Runtime / Web Frontend | Matthias | Chesnay Schepler |
| [FLINK-19027](https://issues.apache.org/jira/browse/FLINK-19027) | UnalignedCheckpointITCase.shouldPerformUnalignedCheckpointOnParallelRemoteChannel failed because of test timeout |  Major | Runtime / Checkpointing | Dian Fu | Arvid Heise |
| [FLINK-19344](https://issues.apache.org/jira/browse/FLINK-19344) | DispatcherResourceCleanupTest#testJobSubmissionUnderSameJobId is unstable on Azure Pipeline |  Critical | Runtime / Coordination, Tests | Yingjie Cao | Robert Metzger |
| [FLINK-19516](https://issues.apache.org/jira/browse/FLINK-19516) | PerJobMiniClusterFactoryTest.testJobClient() |  Critical | Runtime / Coordination | Stephan Ewen | Till Rohrmann |
| [FLINK-19496](https://issues.apache.org/jira/browse/FLINK-19496) | DataGen source DECIMAL always returns null |  Major | Table SQL / Runtime | Seth Wiesman | Seth Wiesman |
| [FLINK-17341](https://issues.apache.org/jira/browse/FLINK-17341) | freeSlot in TaskExecutor.closeJobManagerConnection cause ConcurrentModificationException |  Major | Runtime / Coordination | huweihua | Matthias |
| [FLINK-19406](https://issues.apache.org/jira/browse/FLINK-19406) | Casting row time to timestamp loses nullability info |  Major | Table SQL / Planner | Rui Li | Rui Li |
| [FLINK-19291](https://issues.apache.org/jira/browse/FLINK-19291) | Fix exception for AvroSchemaConverter#convertToSchema when RowType contains multiple row fields |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | xiaozilong | xiaozilong |
| [FLINK-19539](https://issues.apache.org/jira/browse/FLINK-19539) | JMXReporterFactoryTest fails on Azure |  Blocker | Runtime / Metrics | Roman Khachatryan | Chesnay Schepler |
| [FLINK-19470](https://issues.apache.org/jira/browse/FLINK-19470) | Parquet and ORC reader reachEnd returns false after it has reached end |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Rui Li | Rui Li |
| [FLINK-19590](https://issues.apache.org/jira/browse/FLINK-19590) | flink-streaming-java module failed to compile |  Blocker | API / DataStream | Dian Fu | Dian Fu |
| [FLINK-19336](https://issues.apache.org/jira/browse/FLINK-19336) | EncodingUtils#encodeObjectToString should propagate inner exception |  Major | Table SQL / Planner | Benchao Li | CloseRiver |
| [FLINK-19427](https://issues.apache.org/jira/browse/FLINK-19427) | SplitFetcherTest.testNotifiesWhenGoingIdleConcurrent is instable |  Major | Connectors / Common | Dian Fu | Stephan Ewen |
| [FLINK-19489](https://issues.apache.org/jira/browse/FLINK-19489) | SplitFetcherTest.testNotifiesWhenGoingIdleConcurrent gets stuck |  Major | Connectors / Common | Dian Fu | Stephan Ewen |
| [FLINK-19484](https://issues.apache.org/jira/browse/FLINK-19484) | Kubernetes pyflink application test failed with "error executing jsonpath "{range .items[\*]}{.metadata.name}{\\"\\\\n\\"}{end}": Error executing template: not in rang" |  Critical | API / Python, Tests | Dian Fu | Shuiqiang Chen |
| [FLINK-19570](https://issues.apache.org/jira/browse/FLINK-19570) | Execution graph related tests are possibly broken due to registering duplicated ExecutionAttemptID |  Critical | Runtime / Coordination, Tests | Zhu Zhu | Zhu Zhu |
| [FLINK-17458](https://issues.apache.org/jira/browse/FLINK-17458) | TaskExecutorSubmissionTest#testFailingScheduleOrUpdateConsumers |  Major | Runtime / Coordination, Tests | Congxian Qiu | Till Rohrmann |
| [FLINK-18999](https://issues.apache.org/jira/browse/FLINK-18999) | Temporary generic table doesn't work with HiveCatalog |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-17073](https://issues.apache.org/jira/browse/FLINK-17073) | Slow checkpoint cleanup causing OOMs |  Major | Runtime / Checkpointing | Till Rohrmann | Etienne Chauchot |
| [FLINK-19631](https://issues.apache.org/jira/browse/FLINK-19631) | Comments of DecodingFormatFactory is not clear |  Major | Table SQL / API | Jingsong Lee | CloseRiver |
| [FLINK-19616](https://issues.apache.org/jira/browse/FLINK-19616) | Flink : Formats : Parquet compilation failure |  Major | Build System, Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Piotr Nowojski | Yun Gao |
| [FLINK-19618](https://issues.apache.org/jira/browse/FLINK-19618) | Broken link in docs |  Major | Documentation | hailong wang | hailong wang |
| [FLINK-19518](https://issues.apache.org/jira/browse/FLINK-19518) | Duration of running job is shown as 0 in web UI |  Critical | Runtime / Web Frontend | Robert Metzger | Robert Metzger |
| [FLINK-19658](https://issues.apache.org/jira/browse/FLINK-19658) | Local recovery and sticky scheduling end-to-end test hangs with "Expected to find info here." |  Blocker | Runtime / Coordination | Robert Metzger | Robert Metzger |
| [FLINK-19459](https://issues.apache.org/jira/browse/FLINK-19459) | flink-dist won't build locally with newer (3.3+) maven versions |  Blocker | Build System | Robert Metzger | Robert Metzger |
| [FLINK-19324](https://issues.apache.org/jira/browse/FLINK-19324) | Map requested/allocated containers with priority on YARN |  Major | Deployment / YARN | Xintong Song | Xintong Song |
| [FLINK-18915](https://issues.apache.org/jira/browse/FLINK-18915) | FIXED\_PATH(dummy Hadoop Path) with WriterImpl may cause ORC writer OOM |  Critical | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | wei | Yun Gao |
| [FLINK-19669](https://issues.apache.org/jira/browse/FLINK-19669) | PipelinedRegionSchedulingStrategy#init ResultPartitionType blocking check should use isBlocking method |  Major | Runtime / Coordination | Xuannan Su | Xuannan Su |
| [FLINK-19619](https://issues.apache.org/jira/browse/FLINK-19619) | Test failed in Azure For EmulatedPubSubSourceTest |  Blocker | Connectors / Google Cloud PubSub | hailong wang | Robert Metzger |
| [FLINK-18836](https://issues.apache.org/jira/browse/FLINK-18836) | Python UDTF doesn't work well when the return type isn't generator |  Major | API / Python | Dian Fu | Huang Xingbo |
| [FLINK-19649](https://issues.apache.org/jira/browse/FLINK-19649) | In Flink's module flink-sql-parser/sqlCreateTable/unparse, the  tables without columns are not supported. |  Minor | Table SQL / API | gsralex | gsralex |
| [FLINK-19716](https://issues.apache.org/jira/browse/FLINK-19716) | [Kinesis][EFO] Unable to use Assume Role with EFO record publisher |  Major | Connectors / Kinesis | Danny Cranmer | Danny Cranmer |
| [FLINK-19458](https://issues.apache.org/jira/browse/FLINK-19458) | ZooKeeperLeaderElectionITCase.testJobExecutionOnClusterWithLeaderChange: ZooKeeper unexpectedly modified |  Critical | Runtime / Coordination | Robert Metzger | Robert Metzger |
| [FLINK-19514](https://issues.apache.org/jira/browse/FLINK-19514) | ZooKeeperLeaderElectionITCase.testJobExecutionOnClusterWithLeaderChange times out |  Critical | Runtime / Coordination | Stephan Ewen | Robert Metzger |
| [FLINK-19695](https://issues.apache.org/jira/browse/FLINK-19695) | Writing Table with RowTime Column of type TIMESTAMP(3) to Kafka fails with ClassCastException |  Critical | Table SQL / Planner | Konstantin Knauf | Jark Wu |
| [FLINK-19022](https://issues.apache.org/jira/browse/FLINK-19022) | AkkaRpcActor failed to start but no exception information |  Critical | Runtime / Coordination | tartarus | tartarus |
| [FLINK-19483](https://issues.apache.org/jira/browse/FLINK-19483) | PyFlink Table end-to-end test failed with "FileExistsError: [Errno 17] File exists: '/home/vsts/work/1/s/flink-python/dev/.conda/pkgs'" |  Critical | API / Python, Tests | Dian Fu | Huang Xingbo |
| [FLINK-19689](https://issues.apache.org/jira/browse/FLINK-19689) | TaskExecutorProcessSpecContainerResourcePriorityAdapterTest fails |  Critical | Deployment / YARN | Robert Metzger | Xintong Song |
| [FLINK-19469](https://issues.apache.org/jira/browse/FLINK-19469) | HBase connector 2.2 failed to download dependencies "org.glassfish:javax.el:jar:3.0.1-b06-SNAPSHOT" |  Major | Connectors / HBase | Dian Fu | Miklos Gergely |
| [FLINK-19655](https://issues.apache.org/jira/browse/FLINK-19655) | NPE when using blink planner and TemporalTableFunction after setting IdleStateRetentionTime |  Major | Table SQL / Planner | seunjjs | seunjjs |
| [FLINK-19401](https://issues.apache.org/jira/browse/FLINK-19401) | Job stuck in restart loop due to excessive checkpoint recoveries which block the JobMaster |  Critical | Runtime / Checkpointing | Steven Zhen Wu | Roman Khachatryan |
| [FLINK-19688](https://issues.apache.org/jira/browse/FLINK-19688) | Flink batch job fails because of InterruptedExceptions from network stack |  Blocker | Runtime / Network, Runtime / Task | Robert Metzger | Roman Khachatryan |
| [FLINK-19657](https://issues.apache.org/jira/browse/FLINK-19657) | YARNSessionCapacitySchedulerITCase.checkForProhibitedLogContents: netty failed with java.io.IOException: Broken pipe |  Critical | Deployment / YARN | Robert Metzger | Robert Metzger |
| [FLINK-19629](https://issues.apache.org/jira/browse/FLINK-19629) |  Fix NullPointException when deserializing map field with null value for Avro format |  Critical | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | shizhengchao | shizhengchao |
| [FLINK-19675](https://issues.apache.org/jira/browse/FLINK-19675) | The plan of is incorrect when Calc contains WHERE clause, composite fields access and Python UDF at the same time |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-19557](https://issues.apache.org/jira/browse/FLINK-19557) | Issue retrieving leader after zookeeper session reconnect |  Critical | Runtime / Coordination | Max Mizikar | Till Rohrmann |
| [FLINK-19338](https://issues.apache.org/jira/browse/FLINK-19338) | New source interface cannot unregister unregistered source |  Major | Connectors / Common | Arvid Heise | Arvid Heise |
| [FLINK-19750](https://issues.apache.org/jira/browse/FLINK-19750) | Deserializer is not opened in Kafka consumer when restoring from state |  Critical | Connectors / Kafka | Qingsheng Ren | Qingsheng Ren |
| [FLINK-19676](https://issues.apache.org/jira/browse/FLINK-19676) | java package name error in docs |  Major | Documentation | leitsiang | leitsiang |
| [FLINK-19154](https://issues.apache.org/jira/browse/FLINK-19154) | Application mode deletes HA data in case of suspended ZooKeeper connection |  Blocker | Client / Job Submission | Husky Zeng | Kostas Kloudas |
| [FLINK-19755](https://issues.apache.org/jira/browse/FLINK-19755) | Fix CEP documentation error of the example in 'After Match Strategy' section |  Major | Documentation, Library / CEP | jackylau | jackylau |
| [FLINK-19777](https://issues.apache.org/jira/browse/FLINK-19777) | Fix NullPointException for WindowOperator.close() |  Major | Table SQL / Runtime | frank wang | Jark Wu |
| [FLINK-19718](https://issues.apache.org/jira/browse/FLINK-19718) | HiveTableSourceITCase.testStreamPartitionRead is not stable on Azure |  Blocker | Connectors / Hive | Jark Wu | Jingsong Lee |
| [FLINK-19552](https://issues.apache.org/jira/browse/FLINK-19552) | JobManager dies with IllegalStateException SharedSlot (physical request SlotRequestId{%}) has been released |  Blocker | Runtime / Coordination | Robert Metzger | Andrey Zagrebin |
| [FLINK-19684](https://issues.apache.org/jira/browse/FLINK-19684) | The Jdbc-connector's  'lookup.max-retries' option implementation is different from the meaning |  Minor | Connectors / JDBC | CaoZhen | CaoZhen |
| [FLINK-19793](https://issues.apache.org/jira/browse/FLINK-19793) | KafkaTableITCase.testKafkaSourceSinkWithMetadata fails on AZP |  Blocker | Connectors / Kafka, Table SQL / Ecosystem | Till Rohrmann | Timo Walther |
| [FLINK-19201](https://issues.apache.org/jira/browse/FLINK-19201) | PyFlink e2e tests is instable and failed with "Connection broken: OSError" |  Major | API / Python | Dian Fu | Huang Xingbo |
| [FLINK-19839](https://issues.apache.org/jira/browse/FLINK-19839) | e2e test failures are not causing the build to fail |  Blocker | Build System / Azure Pipelines | Robert Metzger | Robert Metzger |
| [FLINK-19854](https://issues.apache.org/jira/browse/FLINK-19854) | TableScanTest.testTemporalJoinOnUpsertSource fails |  Blocker | Table SQL / Planner | Robert Metzger | Leonard Xu |
| [FLINK-19770](https://issues.apache.org/jira/browse/FLINK-19770) | PythonProgramOptionsTest requires package phase before execution |  Minor | API / Python, Tests | Juha Mynttinen | Shuiqiang Chen |
| [FLINK-19587](https://issues.apache.org/jira/browse/FLINK-19587) | Error result when casting binary type as varchar |  Major | Table SQL / Planner | hailong wang | hailong wang |
| [FLINK-18820](https://issues.apache.org/jira/browse/FLINK-18820) | SourceOperator should send MAX\_WATERMARK to downstream operator when closed |  Major | API / DataStream | Xuannan Su | Xuannan Su |
| [FLINK-19779](https://issues.apache.org/jira/browse/FLINK-19779) | Remove the "record\_" field name prefix for Confluent Avro format deserialization |  Blocker | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Danny Chen | Danny Chen |
| [FLINK-19786](https://issues.apache.org/jira/browse/FLINK-19786) | Flink doesn't set proper nullability for Logical types for Confluent Avro Serialization |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Maciej Bryński | Danny Chen |
| [FLINK-18122](https://issues.apache.org/jira/browse/FLINK-18122) | Kubernetes test fails with "error: timed out waiting for the condition on jobs/flink-job-cluster" |  Major | Deployment / Kubernetes, Tests | Robert Metzger | Robert Metzger |
| [FLINK-19894](https://issues.apache.org/jira/browse/FLINK-19894) | Use iloc for positional slicing instead of direct slicing in from\_pandas |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-19855](https://issues.apache.org/jira/browse/FLINK-19855) | Incompatible semantics of channelIndex in UnionInputGate.resumeConsumption and its clients |  Minor | Runtime / Network | Roman Khachatryan | Roman Khachatryan |
| [FLINK-19900](https://issues.apache.org/jira/browse/FLINK-19900) | Wrong property name for surefire log4j configuration |  Trivial | Build System | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-19915](https://issues.apache.org/jira/browse/FLINK-19915) | wrong comments of cep test |  Trivial | Library / CEP | jackylau | jackylau |
| [FLINK-19843](https://issues.apache.org/jira/browse/FLINK-19843) | ParquetFsStreamingSinkITCase.testPart failed with "Trying to access closed classloader" |  Blocker | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Dian Fu | Jingsong Lee |
| [FLINK-19703](https://issues.apache.org/jira/browse/FLINK-19703) | A result partition is not untracked after its producer task failed in TaskManager |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-19865](https://issues.apache.org/jira/browse/FLINK-19865) | YARN tests failed with "java.lang.NumberFormatException: For input string: "${env:MAX\_LOG\_FILE\_NUMBER}" |  Blocker | Deployment / YARN | Dian Fu | Robert Metzger |
| [FLINK-19701](https://issues.apache.org/jira/browse/FLINK-19701) | Unaligned Checkpoint might misuse the number of buffers to persist from the previous barrier |  Major | Runtime / Checkpointing | Yun Gao |  |
| [FLINK-19740](https://issues.apache.org/jira/browse/FLINK-19740) | Error in to\_pandas for table containing event time: class java.time.LocalDateTime cannot be cast to class java.sql.Timestamp |  Major | API / Python, Table SQL / API | Alex Hall | Huang Xingbo |
| [FLINK-19907](https://issues.apache.org/jira/browse/FLINK-19907) | Channel state (upstream) can be restored after emission of new elements (watermarks) |  Major | Runtime / Network | Roman Khachatryan | Roman Khachatryan |
| [FLINK-19901](https://issues.apache.org/jira/browse/FLINK-19901) | Unable to exclude metrics variables for the last metrics reporter. |  Major | Runtime / Metrics | Truong Duc Kien | Chesnay Schepler |
| [FLINK-19138](https://issues.apache.org/jira/browse/FLINK-19138) | Python UDF supports directly specifying input\_types as DataTypes.ROW |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-18325](https://issues.apache.org/jira/browse/FLINK-18325) | NPE may throw when use SqlDataTypeSpec#getNullable |  Critical | Table SQL / Runtime | Jiatao Tao | Jiatao Tao |
| [FLINK-19891](https://issues.apache.org/jira/browse/FLINK-19891) | ScalarOperatorGens should generate a not-null type for IS NULL and IS NOT NULL |  Major | Table SQL / Planner | Rui Li | Rui Li |
| [FLINK-19948](https://issues.apache.org/jira/browse/FLINK-19948) | Calling NOW() function throws compile exception |  Major | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-19927](https://issues.apache.org/jira/browse/FLINK-19927) | ExecutionStateUpdateListener is only updated when legacy scheduling is enabled |  Blocker | Runtime / Coordination | Robert Metzger | Andrey Zagrebin |
| [FLINK-19867](https://issues.apache.org/jira/browse/FLINK-19867) | Validation fails for UDF that accepts var-args |  Major | Table SQL / API | Rui Li | Rui Li |
| [FLINK-19849](https://issues.apache.org/jira/browse/FLINK-19849) | Check NOTICE files for 1.12 release |  Blocker | Build System | Robert Metzger | Robert Metzger |
| [FLINK-19790](https://issues.apache.org/jira/browse/FLINK-19790) | Writing MAP\<STRING, STRING\> to Kafka with JSON format produces incorrect data. |  Critical | Table SQL / Ecosystem | Fabian Hueske | Benchao Li |
| [FLINK-19959](https://issues.apache.org/jira/browse/FLINK-19959) | Multiple input creation algorithm will deduce an incorrect input order if the inputs are related under PIPELINED shuffle mode |  Major | Table SQL / Planner | Caizhi Weng | Caizhi Weng |
| [FLINK-18117](https://issues.apache.org/jira/browse/FLINK-18117) | "Kerberized YARN per-job on Docker test" fails with "Could not start hadoop cluster." |  Critical | Deployment / YARN | Robert Metzger | Robert Metzger |
| [FLINK-19805](https://issues.apache.org/jira/browse/FLINK-19805) | LeaderChangeClusterComponentsTest.testReelectionOfJobMaster is instable |  Blocker | Runtime / Coordination | Dian Fu | Robert Metzger |
| [FLINK-19986](https://issues.apache.org/jira/browse/FLINK-19986) | The automatic license check failed |  Blocker | Build System | Dian Fu | Robert Metzger |
| [FLINK-19987](https://issues.apache.org/jira/browse/FLINK-19987) | HBaseDynamicTableFactoryTest.testTableSourceFactory failed with "NoSuchMethodError: com.google.common.base.Preconditions.checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V" |  Major | Connectors / HBase | Dian Fu | Robert Metzger |
| [FLINK-19645](https://issues.apache.org/jira/browse/FLINK-19645) | ShuffleCompressionITCase.testDataCompressionForBlockingShuffle is instable |  Blocker | Runtime / Network | Dian Fu | Yingjie Cao |
| [FLINK-20010](https://issues.apache.org/jira/browse/FLINK-20010) | SinkITCase.writerAndCommitterAndGlobalCommitterExecuteInStreamingMode fails on Azure Pipeline |  Major | Tests | Yingjie Cao |  |
| [FLINK-19868](https://issues.apache.org/jira/browse/FLINK-19868) | Csv Serialization schema contains line delimiter |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jingsong Lee | Nicholas Jiang |
| [FLINK-19665](https://issues.apache.org/jira/browse/FLINK-19665) | AlternatingCheckpointBarrierHandlerTest.testMetricsAlternation unstable |  Major | Runtime / Checkpointing | Robert Metzger |  |
| [FLINK-19909](https://issues.apache.org/jira/browse/FLINK-19909) | Flink application in attach mode could not terminate when the only job is canceled |  Blocker | Deployment / Kubernetes, Deployment / YARN, Runtime / Coordination | Yang Wang | Kostas Kloudas |
| [FLINK-19742](https://issues.apache.org/jira/browse/FLINK-19742) | Invalid command in flink-end-to-end-tests README |  Minor | Tests | Dan Hill | Robert Metzger |
| [FLINK-16429](https://issues.apache.org/jira/browse/FLINK-16429) | failed to restore flink job from checkpoints due to unhandled exceptions |  Major | Runtime / Coordination | Yu Yang |  |
| [FLINK-20027](https://issues.apache.org/jira/browse/FLINK-20027) | testSlotRequestTimeoutWhenNoSlotOffering unstable |  Blocker | Runtime / Coordination | Robert Metzger |  |
| [FLINK-19384](https://issues.apache.org/jira/browse/FLINK-19384) | Source API exception signatures are inconsistent |  Blocker | API / Core | Stephan Ewen | Stephan Ewen |
| [FLINK-18004](https://issues.apache.org/jira/browse/FLINK-18004) | Update checkpoint UI related pictures in documentation |  Major | Documentation | Yun Tang | Yun Tang |
| [FLINK-19741](https://issues.apache.org/jira/browse/FLINK-19741) | InternalTimeServiceManager fails to restore due to corrupt reads if there are other users of raw keyed state streams |  Blocker | Runtime / State Backends | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-19748](https://issues.apache.org/jira/browse/FLINK-19748) | KeyGroupRangeOffsets#KeyGroupOffsetsIterator should skip key groups that don't have a defined offset |  Blocker | Runtime / Checkpointing, Runtime / State Backends | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-20008](https://issues.apache.org/jira/browse/FLINK-20008) | Java Deadlock in ZooKeeperLeaderElectionTest.testZooKeeperReelectionWithReplacement() |  Critical | Runtime / Coordination | Stephan Ewen | Till Rohrmann |
| [FLINK-19990](https://issues.apache.org/jira/browse/FLINK-19990) | MultipleInputNodeCreationProcessor#isChainableSource should consider DataStreamScanProvider |  Major | . | Caizhi Weng | Caizhi Weng |
| [FLINK-20039](https://issues.apache.org/jira/browse/FLINK-20039) | Streaming File Sink end-to-end test is unstable on Azure |  Critical | Connectors / FileSystem | Jark Wu |  |
| [FLINK-19237](https://issues.apache.org/jira/browse/FLINK-19237) | LeaderChangeClusterComponentsTest.testReelectionOfJobMaster failed with "NoResourceAvailableException: Could not allocate the required slot within slot request timeout" |  Critical | Runtime / Coordination | Dian Fu | Robert Metzger |
| [FLINK-19974](https://issues.apache.org/jira/browse/FLINK-19974) | SQLClientKafkaITCase.testKafka times out while creating topic caused by "PyFlink end-to-end test" |  Critical | API / Python | Robert Metzger | Dian Fu |
| [FLINK-20047](https://issues.apache.org/jira/browse/FLINK-20047) | DefaultLeaderRetrievalService should only notify the LeaderRetrievalListener when leader truly changed |  Critical | Runtime / Coordination | Yang Wang | Yang Wang |
| [FLINK-20006](https://issues.apache.org/jira/browse/FLINK-20006) | FileSinkITCase.testFileSink: The record 0 should occur 4 times,  but only occurs 8time expected:\<4\> but was:\<8\> |  Blocker | Connectors / FileSystem | Robert Metzger | Yun Gao |
| [FLINK-19491](https://issues.apache.org/jira/browse/FLINK-19491) | AvroSerializerSnapshot cannot handle large schema |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Arvid Heise | Nicholas Jiang |
| [FLINK-20051](https://issues.apache.org/jira/browse/FLINK-20051) | SourceReaderTestBase.testAddSplitToExistingFetcher failed with NullPointerException |  Critical | Connectors / Common | Dian Fu | Stephan Ewen |
| [FLINK-20050](https://issues.apache.org/jira/browse/FLINK-20050) | SourceCoordinatorProviderTest.testCheckpointAndReset failed with NullPointerException |  Critical | Connectors / Common | Dian Fu |  |
| [FLINK-18070](https://issues.apache.org/jira/browse/FLINK-18070) | Time attribute been materialized after sub graph optimize |  Major | Table SQL / Planner | YufeiLiu | YufeiLiu |
| [FLINK-20045](https://issues.apache.org/jira/browse/FLINK-20045) | ZooKeeperLeaderElectionTest.testZooKeeperLeaderElectionRetrieval failed with "TimeoutException: Contender was not elected as the leader within 200000ms" |  Critical | Runtime / Coordination | Dian Fu | Till Rohrmann |
| [FLINK-20064](https://issues.apache.org/jira/browse/FLINK-20064) | Broken links in the documentation |  Major | Documentation | Seth Wiesman | Dian Fu |
| [FLINK-19436](https://issues.apache.org/jira/browse/FLINK-19436) | TPC-DS end-to-end test (Blink planner) failed during shutdown |  Critical | Table SQL / Planner, Tests | Dian Fu | Leonard Xu |
| [FLINK-20063](https://issues.apache.org/jira/browse/FLINK-20063) | File Source requests an additional split on every restore. |  Critical | Connectors / FileSystem | Stephan Ewen | Stephan Ewen |
| [FLINK-19699](https://issues.apache.org/jira/browse/FLINK-19699) | PrometheusReporterEndToEndITCase crashes with exit code 143 |  Critical | Runtime / Metrics | Dian Fu | Robert Metzger |
| [FLINK-20069](https://issues.apache.org/jira/browse/FLINK-20069) | docs\_404\_check doesn't work properly |  Major | Build System | Dian Fu | Dian Fu |
| [FLINK-19448](https://issues.apache.org/jira/browse/FLINK-19448) | CoordinatedSourceITCase.testEnumeratorReaderCommunication hangs |  Blocker | Connectors / Common, Tests | Dian Fu | Kezhu Wang |
| [FLINK-19994](https://issues.apache.org/jira/browse/FLINK-19994) | All vertices in an DataSet iteration job will be eagerly scheduled |  Blocker | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-18869](https://issues.apache.org/jira/browse/FLINK-18869) | Batch SQL end-to-end test unstable due to terminated process |  Critical | Table SQL / Runtime, Tests | Robert Metzger |  |
| [FLINK-19842](https://issues.apache.org/jira/browse/FLINK-19842) | PyFlinkStreamUserDefinedTableFunctionTests.test\_table\_function\_with\_sql\_query is unstable |  Critical | API / Python | Robert Metzger | Huang Xingbo |
| [FLINK-20066](https://issues.apache.org/jira/browse/FLINK-20066) | BatchPandasUDAFITTests.test\_group\_aggregate\_with\_aux\_group unstable |  Critical | API / Python | Dian Fu |  |
| [FLINK-13733](https://issues.apache.org/jira/browse/FLINK-13733) | FlinkKafkaInternalProducerITCase.testHappyPath fails on Travis |  Critical | Connectors / Kafka, Tests | Till Rohrmann | Jiangjie Qin |
| [FLINK-19964](https://issues.apache.org/jira/browse/FLINK-19964) | Gelly ITCase stuck on Azure in HITSITCase.testPrintWithRMatGraph |  Blocker | Library / Graph Processing (Gelly), Runtime / Network, Tests | Chesnay Schepler | Arvid Heise |
| [FLINK-20068](https://issues.apache.org/jira/browse/FLINK-20068) | KafkaSubscriberTest.testTopicPatternSubscriber failed with unexpected results |  Blocker | Connectors / Kafka | Dian Fu | Jiangjie Qin |
| [FLINK-20035](https://issues.apache.org/jira/browse/FLINK-20035) | BlockingShuffleITCase unstable with "Could not start rest endpoint on any port in port range 8081" |  Major | Runtime / Network | Robert Metzger | Yingjie Cao |
| [FLINK-20018](https://issues.apache.org/jira/browse/FLINK-20018) | pipeline.cached-files option cannot escape ':' in path |  Major | Runtime / Configuration | Xuannan Su | Dawid Wysakowicz |
| [FLINK-20076](https://issues.apache.org/jira/browse/FLINK-20076) | DispatcherTest.testOnRemovedJobGraphDoesNotCleanUpHAFiles does not test the desired functionality |  Minor | Runtime / Coordination | Matthias | Matthias |
| [FLINK-20079](https://issues.apache.org/jira/browse/FLINK-20079) | Modified UnalignedCheckpointITCase...MassivelyParallel fails |  Major | Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-20084](https://issues.apache.org/jira/browse/FLINK-20084) | Fix NPE when generating watermark for record whose rowtime field is null after watermark push down |  Major | Table SQL / Planner | Shengkai Fang | Shengkai Fang |
| [FLINK-19340](https://issues.apache.org/jira/browse/FLINK-19340) | AggregateITCase.testListAggWithDistinct failed with "expected:\<List(1,A, 2,B, 3,C#A, 4,EF)\> but was:\<List(1,A, 2,B, 3,C#A, 4,EF#EF)\>" |  Blocker | Table SQL / Planner | Dian Fu | Timo Walther |
| [FLINK-20046](https://issues.apache.org/jira/browse/FLINK-20046) | StreamTableAggregateTests.test\_map\_view\_iterate is instable |  Critical | API / Python | Dian Fu | Wei Zhong |
| [FLINK-20077](https://issues.apache.org/jira/browse/FLINK-20077) | Cannot register a view with MATCH\_RECOGNIZE clause |  Major | Table SQL / Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-20097](https://issues.apache.org/jira/browse/FLINK-20097) | Race conditions in InputChannel.ChannelStatePersister |  Critical | Runtime / Checkpointing, Runtime / Network | Roman Khachatryan | Roman Khachatryan |
| [FLINK-20033](https://issues.apache.org/jira/browse/FLINK-20033) | Job fails when stopping JobMaster |  Critical | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-20065](https://issues.apache.org/jira/browse/FLINK-20065) | UnalignedCheckpointCompatibilityITCase.test failed with AskTimeoutException |  Blocker | Runtime / Coordination | Dian Fu | Till Rohrmann |
| [FLINK-20074](https://issues.apache.org/jira/browse/FLINK-20074) | Fix can't generate plan when joining on changelog source without updates |  Major | Table SQL / Planner | Jingsong Lee | Jark Wu |
| [FLINK-19914](https://issues.apache.org/jira/browse/FLINK-19914) | TemporalJoinITCase.testEventTimeTemporalJoinChangelogUsingBeforeTime is instable |  Critical | Table SQL / Planner | Dian Fu | Leonard Xu |
| [FLINK-20096](https://issues.apache.org/jira/browse/FLINK-20096) | Clean up PyFlink documentation |  Major | Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-20013](https://issues.apache.org/jira/browse/FLINK-20013) | BoundedBlockingSubpartition may leak network buffer if task is failed or canceled |  Major | Runtime / Network | Yingjie Cao | Nicholas Jiang |
| [FLINK-20088](https://issues.apache.org/jira/browse/FLINK-20088) | [Kinesis][Polling] Issue using Polling consumer at timestamp with empty shard |  Major | Connectors / Kinesis | Danny Cranmer | Danny Cranmer |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-18534](https://issues.apache.org/jira/browse/FLINK-18534) | KafkaTableITCase.testKafkaDebeziumChangelogSource failed with "Topic 'changelog\_topic' already exists" |  Major | Connectors / Kafka, Table SQL / API, Tests | Dian Fu | Jark Wu |
| [FLINK-19042](https://issues.apache.org/jira/browse/FLINK-19042) | HiveTableSourceITCase fails if object reuse is enabled |  Major | Connectors / Hive, Tests | Rui Li | Rui Li |
| [FLINK-18725](https://issues.apache.org/jira/browse/FLINK-18725) | "Run Kubernetes test" failed with "30025: provided port is already allocated" |  Critical | Deployment / Kubernetes, Tests | Dian Fu | Yang Wang |
| [FLINK-19368](https://issues.apache.org/jira/browse/FLINK-19368) | TableEnvHiveConnectorITCase fails with Hive-3.x |  Blocker | Connectors / Hive, Tests | Rui Li | Rui Li |
| [FLINK-19882](https://issues.apache.org/jira/browse/FLINK-19882) | Local recovery and sticky scheduling end-to-end test fails to report error properly |  Blocker | Connectors / HBase | Jingsong Lee | Robert Metzger |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-17810](https://issues.apache.org/jira/browse/FLINK-17810) | Add document for K8s application mode |  Major | . | Yang Wang | Yang Wang |
| [FLINK-17375](https://issues.apache.org/jira/browse/FLINK-17375) | Clean up CI system related scripts |  Major | Build System, Build System / Azure Pipelines | Robert Metzger | Robert Metzger |
| [FLINK-18001](https://issues.apache.org/jira/browse/FLINK-18001) | Add a new test base for evaluating expressions |  Major | Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-17774](https://issues.apache.org/jira/browse/FLINK-17774) | supports all kinds of changes for select result |  Major | Table SQL / Legacy Planner, Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-18005](https://issues.apache.org/jira/browse/FLINK-18005) | Implement type inference for CAST |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-17102](https://issues.apache.org/jira/browse/FLINK-17102) | Add -Dkubernetes.container.image=\<ImageName\> for the start-flink-session section |  Minor | Deployment / Kubernetes | Canbin Zheng |  |
| [FLINK-18084](https://issues.apache.org/jira/browse/FLINK-18084) | Create documentation for the Application Mode |  Major | Client / Job Submission, Documentation | Kostas Kloudas | Kostas Kloudas |
| [FLINK-13784](https://issues.apache.org/jira/browse/FLINK-13784) | Implement type inference for math functions |  Major | Table SQL / API | Jingsong Lee | Timo Walther |
| [FLINK-18034](https://issues.apache.org/jira/browse/FLINK-18034) | Introduce PreferredLocationsRetriever |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-17017](https://issues.apache.org/jira/browse/FLINK-17017) | Implements bulk allocation for physical slots |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-18089](https://issues.apache.org/jira/browse/FLINK-18089) | Add the network zero-copy test into the azure E2E pipeline |  Major | Build System / Azure Pipelines, Runtime / Network | Yun Gao | Yun Gao |
| [FLINK-13783](https://issues.apache.org/jira/browse/FLINK-13783) | Implement type inference for string functions |  Major | Table SQL / API | Jingsong Lee | Timo Walther |
| [FLINK-17018](https://issues.apache.org/jira/browse/FLINK-17018) | Allocates slots in bulks on pipelined region scheduling |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-17019](https://issues.apache.org/jira/browse/FLINK-17019) | Implement FIFO Physical Slot Assignment in SlotPoolImpl |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-17258](https://issues.apache.org/jira/browse/FLINK-17258) | Enable unaligned checkpoints in tests by default |  Major | Tests | Arvid Heise | Arvid Heise |
| [FLINK-17297](https://issues.apache.org/jira/browse/FLINK-17297) | Log the lineage information between ExecutionAttemptID and SlotRequestID |  Minor | Runtime / Coordination | Yangze Guo | Yangze Guo |
| [FLINK-17298](https://issues.apache.org/jira/browse/FLINK-17298) | Log the lineage information between SlotRequestID and AllocationID |  Minor | Runtime / Coordination | Yangze Guo | Yangze Guo |
| [FLINK-17579](https://issues.apache.org/jira/browse/FLINK-17579) | Set the resource id of taskexecutor according to environment variable if exist in standalone mode |  Major | Runtime / Coordination | Yangze Guo | Yangze Guo |
| [FLINK-17300](https://issues.apache.org/jira/browse/FLINK-17300) | Log the lineage information between ExecutionAttemptID and AllocationID |  Minor | Runtime / Coordination | Yangze Guo | Yangze Guo |
| [FLINK-18417](https://issues.apache.org/jira/browse/FLINK-18417) | Support List as a conversion class for ARRAY |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-12428](https://issues.apache.org/jira/browse/FLINK-12428) | Translate the "Event Time" page into Chinese |  Major | chinese-translation, Documentation | YangFei | Yubin Li |
| [FLINK-18394](https://issues.apache.org/jira/browse/FLINK-18394) | Translate "Parquet Format" page into Chinese |  Major | chinese-translation, Documentation, Table SQL / Ecosystem | Jark Wu | Luxios |
| [FLINK-18395](https://issues.apache.org/jira/browse/FLINK-18395) | Translate "ORC Format" page into Chinese |  Major | chinese-translation, Documentation, Table SQL / Ecosystem | Jark Wu | pengweibo |
| [FLINK-18388](https://issues.apache.org/jira/browse/FLINK-18388) | Translate "CSV Format" page into Chinese |  Major | chinese-translation, Documentation, Table SQL / Ecosystem | Jark Wu | pengweibo |
| [FLINK-18391](https://issues.apache.org/jira/browse/FLINK-18391) | Translate "Avro Format" page into Chinese |  Major | chinese-translation, Documentation, Table SQL / Ecosystem | Jark Wu | ChaojianZhang |
| [FLINK-17761](https://issues.apache.org/jira/browse/FLINK-17761) | FutureCompletingBlockingQueue should have a capacity limit. |  Major | Connectors / Common | Jiangjie Qin | Fangliang Liu |
| [FLINK-18387](https://issues.apache.org/jira/browse/FLINK-18387) | Translate "BlackHole SQL Connector" page into Chinese |  Major | chinese-translation, Documentation, Table SQL / Ecosystem | Jark Wu | ChaojianZhang |
| [FLINK-18524](https://issues.apache.org/jira/browse/FLINK-18524) | Scala varargs cause exception for new inference |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-17000](https://issues.apache.org/jira/browse/FLINK-17000) | Type information in sources should cover all data structures |  Major | Table SQL / API, Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-18324](https://issues.apache.org/jira/browse/FLINK-18324) | Translate updated data type and function page into Chinese |  Major | chinese-translation, Documentation, Table SQL / API | Timo Walther | Yubin Li |
| [FLINK-18528](https://issues.apache.org/jira/browse/FLINK-18528) | Update UNNEST to new type system |  Major | Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-12996](https://issues.apache.org/jira/browse/FLINK-12996) | Add predefined type validators, strategies, and transformations |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-18586](https://issues.apache.org/jira/browse/FLINK-18586) | Simplify the creation of explicit structured types |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-16087](https://issues.apache.org/jira/browse/FLINK-16087) | Translate "Detecting Patterns" page of "Streaming Concepts" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Roc Marshal |
| [FLINK-15794](https://issues.apache.org/jira/browse/FLINK-15794) | Rethink default value of kubernetes.container.image |  Major | Deployment / Kubernetes | Till Rohrmann | Niels Basjes |
| [FLINK-18264](https://issues.apache.org/jira/browse/FLINK-18264) | Translate the "External Resource Framework" page into Chinese |  Major | chinese-translation, Documentation | Yangze Guo | Yangze Guo |
| [FLINK-18628](https://issues.apache.org/jira/browse/FLINK-18628) | Invalid error message for overloaded methods with same parameter name |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-18537](https://issues.apache.org/jira/browse/FLINK-18537) | Remove RowDataTypeInfo |  Major | Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-17425](https://issues.apache.org/jira/browse/FLINK-17425) | Support SupportsFilterPushDown in planner |  Major | Table SQL / Planner | Jark Wu | jackylau |
| [FLINK-18296](https://issues.apache.org/jira/browse/FLINK-18296) | Add support for datetype TIMESTAMP\_WITH\_LOCAL\_ZONE for Json format |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Shengkai Fang | Shengkai Fang |
| [FLINK-18621](https://issues.apache.org/jira/browse/FLINK-18621) | Simplify the methods of Executor interface in sql client |  Major | Table SQL / Client | godfrey he | godfrey he |
| [FLINK-16085](https://issues.apache.org/jira/browse/FLINK-16085) | Translate "Joins in Continuous Queries" page of "Streaming Concepts" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Authuir |
| [FLINK-18703](https://issues.apache.org/jira/browse/FLINK-18703) | Use new data structure converters when legacy types are not present |  Major | Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-15366](https://issues.apache.org/jira/browse/FLINK-15366) | Improve FlinkCalcMergeRule to merge calc nodes better |  Major | Table SQL / Planner | Leonard Xu | Leonard Xu |
| [FLINK-17426](https://issues.apache.org/jira/browse/FLINK-17426) | Support SupportsLimitPushDown in planner |  Major | Table SQL / Planner | Jark Wu | jackylau |
| [FLINK-18690](https://issues.apache.org/jira/browse/FLINK-18690) | Implement LocalInputPreferredSlotSharingStrategy |  Major | Runtime / Coordination | Andrey Zagrebin | Zhu Zhu |
| [FLINK-15803](https://issues.apache.org/jira/browse/FLINK-15803) | Expose the new type inference for aggregate functions |  Major | Table SQL / API, Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-15792](https://issues.apache.org/jira/browse/FLINK-15792) | Make Flink logs accessible via kubectl logs per default |  Major | Deployment / Kubernetes | Till Rohrmann | Yang Wang |
| [FLINK-18844](https://issues.apache.org/jira/browse/FLINK-18844) | Support maxwell-json format to read Maxwell changelogs |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | jinxin | jinxin |
| [FLINK-18483](https://issues.apache.org/jira/browse/FLINK-18483) | [Kinesis][EFO] Test coverage improvements for FlinkKinesisConsumer |  Major | Connectors / Kinesis | Danny Cranmer | Danny Cranmer |
| [FLINK-18809](https://issues.apache.org/jira/browse/FLINK-18809) | Update internal aggregate functions to new type system |  Major | Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-18355](https://issues.apache.org/jira/browse/FLINK-18355) | Simplify tests of SlotPoolImpl |  Major | Runtime / Coordination, Tests | Zhu Zhu | Zhilong Hong |
| [FLINK-18901](https://issues.apache.org/jira/browse/FLINK-18901) | Use new type inference for SQL DDL of aggregate functions |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-18936](https://issues.apache.org/jira/browse/FLINK-18936) | Update documentation about user-defined aggregate functions |  Major | Documentation | Timo Walther | Timo Walther |
| [FLINK-18910](https://issues.apache.org/jira/browse/FLINK-18910) | Create the new document structure for Python documentation according to FLIP-133 |  Major | Documentation | Wei Zhong | Wei Zhong |
| [FLINK-18930](https://issues.apache.org/jira/browse/FLINK-18930) | Translate "Hive Dialect" page of "Hive Integration" into Chinese |  Major | Connectors / Hive, Documentation | Rui Li | CloseRiver |
| [FLINK-17427](https://issues.apache.org/jira/browse/FLINK-17427) | Support SupportsPartitionPushDown in planner |  Major | Table SQL / Planner | Jark Wu | Shengkai Fang |
| [FLINK-18912](https://issues.apache.org/jira/browse/FLINK-18912) | Add a Table API tutorial link(linked to try-flink/python\_table\_api.md) under  the "Python API" -\> "GettingStart" -\> "Tutorial" section |  Major | Documentation | Wei Zhong | Hequn Cheng |
| [FLINK-15793](https://issues.apache.org/jira/browse/FLINK-15793) | Move kubernetes-entry.sh out of FLINK\_HOME/bin |  Minor | Deployment / Kubernetes | Till Rohrmann | Yang Wang |
| [FLINK-18512](https://issues.apache.org/jira/browse/FLINK-18512) | [Kinesis][EFO] Introduce RecordPublisher Interface |  Major | Connectors / Kinesis | Danny Cranmer | Danny Cranmer |
| [FLINK-18553](https://issues.apache.org/jira/browse/FLINK-18553) | Update Table API set operations to the new type system |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-18948](https://issues.apache.org/jira/browse/FLINK-18948) | Add end to end test for Python DataStream API |  Major | API / Python | Hequn Cheng | Shuiqiang Chen |
| [FLINK-17330](https://issues.apache.org/jira/browse/FLINK-17330) | Avoid scheduling deadlocks caused by cyclic input dependencies between regions |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-16699](https://issues.apache.org/jira/browse/FLINK-16699) | Support accessing secured services via K8s secrets |  Major | Deployment / Kubernetes | Canbin Zheng | zl |
| [FLINK-19031](https://issues.apache.org/jira/browse/FLINK-19031) | Remove deprecated setStateBackend(AbstactStateBackend) |  Major | API / DataStream | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-18917](https://issues.apache.org/jira/browse/FLINK-18917) | Add a "Built-in Functions" link (linked to dev/table/functions/systemFunctions.md) under the "Python API" -\> "User Guide" -\> "Table API" section |  Major | Documentation | Wei Zhong | Wei Zhong |
| [FLINK-18555](https://issues.apache.org/jira/browse/FLINK-18555) | Make TableConfig options can be configured by string-based Configuration |  Major | Table SQL / API | Jark Wu | Shengkai Fang |
| [FLINK-19023](https://issues.apache.org/jira/browse/FLINK-19023) | Remove pruning of Record Serializer Buffer |  Major | Runtime / Network | Stephan Ewen | Stephan Ewen |
| [FLINK-19024](https://issues.apache.org/jira/browse/FLINK-19024) | Remove unused "releaseMemory" from ResultSubpartition |  Minor | Runtime / Network | Stephan Ewen | Stephan Ewen |
| [FLINK-19045](https://issues.apache.org/jira/browse/FLINK-19045) | Remove obsolete option 'taskmanager.network.partition.force-release-on-consumption' |  Major | Runtime / Network | Stephan Ewen | Stephan Ewen |
| [FLINK-19046](https://issues.apache.org/jira/browse/FLINK-19046) | Introduce separate classes for PipelinedResultPartition and BoundedBlockingResultPartition |  Major | Runtime / Network | Stephan Ewen | Stephan Ewen |
| [FLINK-19047](https://issues.apache.org/jira/browse/FLINK-19047) | Move unaligned checkpoint methods from ResultPartition to separate interface. |  Major | Runtime / Network | Stephan Ewen | Stephan Ewen |
| [FLINK-19087](https://issues.apache.org/jira/browse/FLINK-19087) | ResultPartitionWriter should not expose subpartition but only subpartition-readers |  Major | Runtime / Network | Stephan Ewen | Stephan Ewen |
| [FLINK-18694](https://issues.apache.org/jira/browse/FLINK-18694) | Add unaligned checkpoint config to web ui |  Trivial | Runtime / REST, Runtime / Web Frontend | Kboh | Kboh |
| [FLINK-15853](https://issues.apache.org/jira/browse/FLINK-15853) | Use the new type inference for hive udf |  Major | Connectors / Hive | Jingsong Lee | Rui Li |
| [FLINK-14435](https://issues.apache.org/jira/browse/FLINK-14435) | Add TaskManageResourceInfo which match the memory compositions of taskmanager |  Major | Runtime / REST | lining | Matthias |
| [FLINK-18824](https://issues.apache.org/jira/browse/FLINK-18824) | Support serialization for canal-json format |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Jark Wu | CaoZhen |
| [FLINK-19032](https://issues.apache.org/jira/browse/FLINK-19032) | Remove deprecated RuntimeContext#getAllAcumullators |  Major | API / Core | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-13857](https://issues.apache.org/jira/browse/FLINK-13857) | Remove remaining UdfAnalyzer configurations |  Major | Runtime / Configuration | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-18683](https://issues.apache.org/jira/browse/FLINK-18683) | Support @DataTypeHint for TableFunction output types |  Minor | Table SQL / API | Fabian Hueske | Timo Walther |
| [FLINK-18801](https://issues.apache.org/jira/browse/FLINK-18801) | Add a "10 minutes to Table API" document under  the "Python API" -\> "User Guide" -\> "Table API" section |  Major | API / Python, Documentation | Wei Zhong | Wei Zhong |
| [FLINK-19114](https://issues.apache.org/jira/browse/FLINK-19114) | Introduce Expression class in the Python Table API |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-19110](https://issues.apache.org/jira/browse/FLINK-19110) | Flatten current PyFlink documentation structure |  Major | API / Python, Documentation | Wei Zhong | Wei Zhong |
| [FLINK-19084](https://issues.apache.org/jira/browse/FLINK-19084) | Remove deprecated methods in ExecutionConfig |  Major | API / Core | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-18904](https://issues.apache.org/jira/browse/FLINK-18904) | Support multiple source operators chaining in StreamConfig |  Major | Runtime / Task | Piotr Nowojski | Piotr Nowojski |
| [FLINK-18905](https://issues.apache.org/jira/browse/FLINK-18905) | Add runtime support for multiple input operator chained with sources |  Major | Runtime / Task | Piotr Nowojski | Piotr Nowojski |
| [FLINK-18513](https://issues.apache.org/jira/browse/FLINK-18513) | [Kinesis][EFO] Add AWS SDK v2.x dependency and KinesisProxyV2 |  Major | Connectors / Kinesis | Danny Cranmer | Danny Cranmer |
| [FLINK-19118](https://issues.apache.org/jira/browse/FLINK-19118) | Support Expression in the operations of the Python Table API |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-18536](https://issues.apache.org/jira/browse/FLINK-18536) | [Kinesis][EFO] Configuration deserialisation and validation |  Major | Connectors / Kinesis | Danny Cranmer | roland |
| [FLINK-15974](https://issues.apache.org/jira/browse/FLINK-15974) | Support to use the Python UDF directly in the Python Table API |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-19035](https://issues.apache.org/jira/browse/FLINK-19035) | Remove deprecated DataStream#fold() method and all related classes |  Major | API / DataStream | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-18913](https://issues.apache.org/jira/browse/FLINK-18913) | Add a "TableEnvironment" document under  the "Python API" -\> "User Guide" -\> "Table API" section |  Major | API / Python, Documentation | Wei Zhong | Wei Zhong |
| [FLINK-19119](https://issues.apache.org/jira/browse/FLINK-19119) | Update the documentation to use Expression instead of strings in the Python Table API |  Major | API / Python, Documentation | Dian Fu | Dian Fu |
| [FLINK-17779](https://issues.apache.org/jira/browse/FLINK-17779) | Orc file format support filter push down |  Major | Connectors / ORC | Jingsong Lee | sujun |
| [FLINK-16905](https://issues.apache.org/jira/browse/FLINK-16905) | Add fromValues in Python API |  Major | API / Python, Table SQL / API | Dawid Wysakowicz | Dian Fu |
| [FLINK-18823](https://issues.apache.org/jira/browse/FLINK-18823) | Support serialization for debezium-json format |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Jark Wu | Nicholas Jiang |
| [FLINK-18951](https://issues.apache.org/jira/browse/FLINK-18951) | Add documentation for dependency management in Python DataStream API. |  Major | API / Python | Shuiqiang Chen | Shuiqiang Chen |
| [FLINK-17016](https://issues.apache.org/jira/browse/FLINK-17016) | Integrate pipelined region scheduling |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-18680](https://issues.apache.org/jira/browse/FLINK-18680) | Improve RecordsWithSplitIds API |  Major | Connectors / Common | Jiangjie Qin | Stephan Ewen |
| [FLINK-19162](https://issues.apache.org/jira/browse/FLINK-19162) | Allow Split Reader based sources to reuse record batches |  Major | Connectors / Common | Stephan Ewen | Stephan Ewen |
| [FLINK-19205](https://issues.apache.org/jira/browse/FLINK-19205) | SourceReaderContext should give access to Configuration and Hostbame |  Major | API / Core | Stephan Ewen | Stephan Ewen |
| [FLINK-19083](https://issues.apache.org/jira/browse/FLINK-19083) | Remove deprecated DataStream#split |  Major | API / DataStream | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-17393](https://issues.apache.org/jira/browse/FLINK-17393) | Improve the \`FutureCompletingBlockingQueue\` to wakeup blocking put() more elegantly. |  Major | Connectors / Common | Jiangjie Qin | Jiangjie Qin |
| [FLINK-19173](https://issues.apache.org/jira/browse/FLINK-19173) | Add Pandas Batch Group Aggregation Function Operator |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-19187](https://issues.apache.org/jira/browse/FLINK-19187) | Add a new basic Table API example |  Major | Examples, Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-18918](https://issues.apache.org/jira/browse/FLINK-18918) | Add a "Connectors" document under  the "Python API" -\> "User Guide" -\> "Table API" section |  Major | API / Python, Documentation | Wei Zhong | Hequn Cheng |
| [FLINK-19184](https://issues.apache.org/jira/browse/FLINK-19184) | Add Batch Physical Pandas Group Aggregate Rule and RelNode |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-19277](https://issues.apache.org/jira/browse/FLINK-19277) | Introduce BatchArrowPythonGroupWindowAggregateFunctionOperator |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-18870](https://issues.apache.org/jira/browse/FLINK-18870) | [Kinesis][EFO] Update Kinesis Consumer website to reflect EFO |  Major | Connectors / Kinesis | Danny Cranmer | Danny Cranmer |
| [FLINK-18515](https://issues.apache.org/jira/browse/FLINK-18515) | [Kinesis][EFO] FanOutRecordPublisher and EFO support |  Major | Connectors / Kinesis | Danny Cranmer | Danny Cranmer |
| [FLINK-18661](https://issues.apache.org/jira/browse/FLINK-18661) | [Kinesis][EFO] Stream consumer Registration/Deregistration |  Major | Connectors / Kinesis | Danny Cranmer | Danny Cranmer |
| [FLINK-19161](https://issues.apache.org/jira/browse/FLINK-19161) | Port File Sources to FLIP-27 API |  Major | Connectors / FileSystem | Stephan Ewen | Stephan Ewen |
| [FLINK-18950](https://issues.apache.org/jira/browse/FLINK-18950) | Add documentation for Operations in Python DataStream API. |  Major | API / Python, Documentation | Shuiqiang Chen | Shuiqiang Chen |
| [FLINK-19186](https://issues.apache.org/jira/browse/FLINK-19186) | Add Python building blocks to make sure the basic functionality of Pandas Batch Group Aggregation could work |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-19272](https://issues.apache.org/jira/browse/FLINK-19272) | Add interfaces for FLIP-107 |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-19270](https://issues.apache.org/jira/browse/FLINK-19270) | Extract an inteface from AbstractKeyedStateBackend |  Major | Runtime / State Backends | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-19229](https://issues.apache.org/jira/browse/FLINK-19229) |  Introduce the PythonStreamGroupAggregateOperator for Python UDAF |  Major | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-19311](https://issues.apache.org/jira/browse/FLINK-19311) | Add ResourceRequirement(s) |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-19273](https://issues.apache.org/jira/browse/FLINK-19273) | Update parser module for FLIP-107 |  Major | Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-19333](https://issues.apache.org/jira/browse/FLINK-19333) | Introduce BatchArrowPythonOverWindowAggregateFunctionOperator |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-19165](https://issues.apache.org/jira/browse/FLINK-19165) | Clean up the UnilateralSortMerger |  Major | API / Core | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-19286](https://issues.apache.org/jira/browse/FLINK-19286) | Improve pipelined region scheduling performance |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-19189](https://issues.apache.org/jira/browse/FLINK-19189) | Enable pipelined scheduling by default |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-19364](https://issues.apache.org/jira/browse/FLINK-19364) | Add Batch Physical Pandas Group Window Aggregate Rule and RelNode |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-19026](https://issues.apache.org/jira/browse/FLINK-19026) | Improve threading model of Unaligner |  Major | Runtime / Network | Arvid Heise | Arvid Heise |
| [FLINK-19320](https://issues.apache.org/jira/browse/FLINK-19320) | Remove RecordWriter#clearBuffers |  Major | Runtime / Task | Yingjie Cao |  |
| [FLINK-19323](https://issues.apache.org/jira/browse/FLINK-19323) | Small optimization of network layer record serialization |  Minor | Runtime / Network | Yingjie Cao |  |
| [FLINK-19312](https://issues.apache.org/jira/browse/FLINK-19312) | Introduce BufferWritingResultPartition which wraps the logic of writing buffers to ResultSubpartition |  Major | Runtime / Network | Yingjie Cao |  |
| [FLINK-19302](https://issues.apache.org/jira/browse/FLINK-19302) | Flushing of BoundedBlockingResultPartition should finish current BufferBuilder |  Minor | Runtime / Network | Yingjie Cao |  |
| [FLINK-19304](https://issues.apache.org/jira/browse/FLINK-19304) | Add feature toggle for declarative resource management |  Major | Runtime / Configuration, Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-19288](https://issues.apache.org/jira/browse/FLINK-19288) | Make InternalTimeServiceManager an interface |  Major | API / Core | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-18906](https://issues.apache.org/jira/browse/FLINK-18906) | Support checkpointing with multiple input operator chained with sources |  Major | Runtime / Checkpointing, Runtime / Task | Piotr Nowojski | Piotr Nowojski |
| [FLINK-19372](https://issues.apache.org/jira/browse/FLINK-19372) | Support Pandas Batch Over Window Aggregation |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-18907](https://issues.apache.org/jira/browse/FLINK-18907) | Add watermarks and metrics tests for MultipleSourceOperatorStreamTask |  Major | Runtime / Task | Piotr Nowojski | Piotr Nowojski |
| [FLINK-19421](https://issues.apache.org/jira/browse/FLINK-19421) | Support Python UDAF in streaming mode |  Major | API / Python | Dian Fu | Wei Zhong |
| [FLINK-19403](https://issues.apache.org/jira/browse/FLINK-19403) | Support Pandas Stream Group Window Aggregation |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-17480](https://issues.apache.org/jira/browse/FLINK-17480) | Support running PyFlink on Kubernetes |  Major | API / Python, Deployment / Kubernetes | Canbin Zheng | Shuiqiang Chen |
| [FLINK-19317](https://issues.apache.org/jira/browse/FLINK-19317) | Make EventTime the default StreamTimeCharacteristic |  Major | API / DataStream | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-19319](https://issues.apache.org/jira/browse/FLINK-19319) | Deprecate StreamExecutionEnvironment.setStreamTimeCharacteristic() and TimeCharacteristic |  Major | API / DataStream | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-19434](https://issues.apache.org/jira/browse/FLINK-19434) | Add StreamJobGraphGenerator support for source chaining |  Major | API / DataStream | Caizhi Weng | Caizhi Weng |
| [FLINK-19318](https://issues.apache.org/jira/browse/FLINK-19318) | Deprecate timeWindow() operations in DataStream API |  Major | API / DataStream | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-19472](https://issues.apache.org/jira/browse/FLINK-19472) | Implement one input sorting DataInput |  Major | Runtime / Task | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-18660](https://issues.apache.org/jira/browse/FLINK-18660) | Bump netty to 4.1.49 |  Major | Build System, BuildSystem / Shaded | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16972](https://issues.apache.org/jira/browse/FLINK-16972) | Fix non-blocking output availability logic. |  Major | Runtime / Network | Arvid Heise | Arvid Heise |
| [FLINK-18721](https://issues.apache.org/jira/browse/FLINK-18721) | Migrate YarnResourceManager to the new YarnResourceManagerDriver |  Major | Deployment / YARN, Runtime / Coordination | Xintong Song | Yangze Guo |
| [FLINK-18990](https://issues.apache.org/jira/browse/FLINK-18990) | Optimize reading of channel state on recovery |  Major | Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-19453](https://issues.apache.org/jira/browse/FLINK-19453) | Deprecate old source and sink interfaces |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-19341](https://issues.apache.org/jira/browse/FLINK-19341) | Update API module for FLIP-107 |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-19231](https://issues.apache.org/jira/browse/FLINK-19231) | Support ListState and ListView for Python UDAF |  Major | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-19404](https://issues.apache.org/jira/browse/FLINK-19404) | Support Pandas Stream Over Window Aggregation |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-18921](https://issues.apache.org/jira/browse/FLINK-18921) | Add a "SQL" link (linked to dev/table/sql/index.md) under the "Python API" -\> "User Guide" -\> "Table API" section |  Major | API / Python, Documentation | Wei Zhong | Huang Xingbo |
| [FLINK-19637](https://issues.apache.org/jira/browse/FLINK-19637) | Remove AllocationIdsExposingResourceManagerGateway |  Major | Runtime / Coordination, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-19531](https://issues.apache.org/jira/browse/FLINK-19531) | Implement writer operator for new Sink API |  Major | API / DataStream | Guowei Ma | Guowei Ma |
| [FLINK-19306](https://issues.apache.org/jira/browse/FLINK-19306) | Implement DeclarativeSlotManager |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-19181](https://issues.apache.org/jira/browse/FLINK-19181) | Make python processes respect the calculated managed memory fraction |  Major | API / Python | Xintong Song | Dian Fu |
| [FLINK-18937](https://issues.apache.org/jira/browse/FLINK-18937) | Add a "Environment Setup" section to the "Installation" document |  Major | API / Python, Documentation | Wei Zhong | Huang Xingbo |
| [FLINK-19617](https://issues.apache.org/jira/browse/FLINK-19617) | Add Metaspace metric |  Major | . | Matthias | Matthias |
| [FLINK-19643](https://issues.apache.org/jira/browse/FLINK-19643) | Add Pandas UDAF Doc |  Major | API / Python, Documentation | Huang Xingbo | Huang Xingbo |
| [FLINK-19707](https://issues.apache.org/jira/browse/FLINK-19707) | Refactor table streaming file sink |  Major | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-19679](https://issues.apache.org/jira/browse/FLINK-19679) | Deduplicate code between CheckpointBarrierUnaligner and CheckpointBarrierAligner |  Major | Runtime / Checkpointing | Piotr Nowojski | Piotr Nowojski |
| [FLINK-19605](https://issues.apache.org/jira/browse/FLINK-19605) | Implement cumulative windowing for window aggregate operator |  Major | Table SQL / Runtime | Jark Wu | Jark Wu |
| [FLINK-19232](https://issues.apache.org/jira/browse/FLINK-19232) | Support MapState and MapView for Python UDAF |  Major | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-19747](https://issues.apache.org/jira/browse/FLINK-19747) | Move Predicate classes to OrcFilters |  Major | Connectors / ORC | Jingsong Lee | Jingsong Lee |
| [FLINK-19734](https://issues.apache.org/jira/browse/FLINK-19734) | Replace 'collection' connector by 'values' connector for temporal join plan tests |  Major | Table SQL / Planner, Table SQL / Runtime | Leonard Xu | Jark Wu |
| [FLINK-19274](https://issues.apache.org/jira/browse/FLINK-19274) | Support FLIP-107 interfaces in planner |  Major | Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-19275](https://issues.apache.org/jira/browse/FLINK-19275) | Allow to read and write metadata in Kafka table source/sink |  Major | Connectors / Kafka, Table SQL / Ecosystem | Timo Walther | Timo Walther |
| [FLINK-19720](https://issues.apache.org/jira/browse/FLINK-19720) | Introduce new Providers and parallelism API |  Major | Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-19726](https://issues.apache.org/jira/browse/FLINK-19726) | Implement new providers for blink planner |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-19787](https://issues.apache.org/jira/browse/FLINK-19787) | Migrate Filesystem connector to new table source sink interface |  Major | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-19547](https://issues.apache.org/jira/browse/FLINK-19547) | Partial Record Cleanup after the Consumer Task Fails and Restart |  Major | Runtime / Network | Yuan Mei | Yuan Mei |
| [FLINK-19479](https://issues.apache.org/jira/browse/FLINK-19479) | Allow explicitly configuring time behaviour on KeyedStream.intervalJoin() |  Major | API / DataStream | Aljoscha Krettek | Nicholas Jiang |
| [FLINK-19694](https://issues.apache.org/jira/browse/FLINK-19694) | Support [UPDATE\_AFTER, DELETE] ChangelogMode for ScanTableSource |  Major | Table SQL / API, Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-18044](https://issues.apache.org/jira/browse/FLINK-18044) | Add the subtask index information to the SourceReaderContext. |  Major | Connectors / Common | Jiangjie Qin | Fangliang Liu |
| [FLINK-19233](https://issues.apache.org/jira/browse/FLINK-19233) | Support DISTINCT KeyWord for Python UDAF |  Major | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-19789](https://issues.apache.org/jira/browse/FLINK-19789) | Migrate Hive connector to new table source sink interface |  Major | . | Jingsong Lee | Jingsong Lee |
| [FLINK-19764](https://issues.apache.org/jira/browse/FLINK-19764) | Add More Metrics to TaskManager in Web UI |  Major | Runtime / Web Frontend | Yadong Xie | Yadong Xie |
| [FLINK-19213](https://issues.apache.org/jira/browse/FLINK-19213) | Update the Chinese documentation |  Trivial | chinese-translation, Documentation | Dawid Wysakowicz | jiawen xiao |
| [FLINK-19077](https://issues.apache.org/jira/browse/FLINK-19077) | Import process time temporal join operator |  Major | Table SQL / Runtime | Leonard Xu | Leonard Xu |
| [FLINK-19599](https://issues.apache.org/jira/browse/FLINK-19599) | Introduce BulkFormatFactory to integrate new FileSource to table |  Major | Table SQL / API, Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-19766](https://issues.apache.org/jira/browse/FLINK-19766) | Introduce File streaming compaction operators |  Major | Connectors / FileSystem, Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-19680](https://issues.apache.org/jira/browse/FLINK-19680) | Add EventAnnouncement priority message |  Major | Runtime / Checkpointing | Piotr Nowojski | Piotr Nowojski |
| [FLINK-19836](https://issues.apache.org/jira/browse/FLINK-19836) | Add SimpleVersionedSerializerTypeSerializerProxy |  Major | API / DataStream | Guowei Ma | Aljoscha Krettek |
| [FLINK-18851](https://issues.apache.org/jira/browse/FLINK-18851) | Add checkpoint type to checkpoint history entries in Web UI |  Minor | Runtime / REST, Runtime / Web Frontend | Arvid Heise | goutham |
| [FLINK-19357](https://issues.apache.org/jira/browse/FLINK-19357) | Introduce createBucketWriter to BucketsBuilder |  Major | Runtime / Task | Jingsong Lee | Jingsong Lee |
| [FLINK-19356](https://issues.apache.org/jira/browse/FLINK-19356) | Introduce FileLifeCycleListener to Buckets |  Major | Runtime / Task | Jingsong Lee | Jingsong Lee |
| [FLINK-19078](https://issues.apache.org/jira/browse/FLINK-19078) | Import rowtime join temporal operator |  Major | Table SQL / Runtime | Leonard Xu | Leonard Xu |
| [FLINK-19414](https://issues.apache.org/jira/browse/FLINK-19414) | Introduce ParquetColumnarRowInputFormat |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jingsong Lee | Jingsong Lee |
| [FLINK-19235](https://issues.apache.org/jira/browse/FLINK-19235) | Support mixed use with built-in aggs for Python UDAF |  Major | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-19367](https://issues.apache.org/jira/browse/FLINK-19367) | Migrate Filesystem source to FLIP-27 source interface |  Major | Connectors / FileSystem | Jingsong Lee | Jingsong Lee |
| [FLINK-19824](https://issues.apache.org/jira/browse/FLINK-19824) | Refactor and merge SupportsComputedColumnPushDown and SupportsWatermarkPushDown interfaces |  Major | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-19875](https://issues.apache.org/jira/browse/FLINK-19875) | Integrate file compaction to filesystem connector |  Major | Connectors / FileSystem | Jingsong Lee | Jingsong Lee |
| [FLINK-19727](https://issues.apache.org/jira/browse/FLINK-19727) | Implement ParallelismProvider for sink in blink planner |  Major | Table SQL / Planner | Jingsong Lee | Lsw\_aka\_laplace |
| [FLINK-19294](https://issues.apache.org/jira/browse/FLINK-19294) | Support key and value formats in Kafka connector |  Major | Connectors / Kafka, Table SQL / Ecosystem | Timo Walther | Timo Walther |
| [FLINK-19831](https://issues.apache.org/jira/browse/FLINK-19831) | Support grace period for not enough resources being available at cluster startup |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-19873](https://issues.apache.org/jira/browse/FLINK-19873) | Skip DDL change events for Canal data |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Jark Wu | Fangliang Liu |
| [FLINK-19862](https://issues.apache.org/jira/browse/FLINK-19862) | DeclarativeSlotManager#suspend can fail with NPE |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-19960](https://issues.apache.org/jira/browse/FLINK-19960) | Introduce PartitionFieldExtractor to extract partition field from split |  Major | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-19890](https://issues.apache.org/jira/browse/FLINK-19890) | Introduce LimitableBulkFormat to wrap BulkFormat when limit pushed down |  Major | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-19844](https://issues.apache.org/jira/browse/FLINK-19844) | Add documentation for Python UDAF |  Major | API / Python, Documentation | Dian Fu | Wei Zhong |
| [FLINK-19662](https://issues.apache.org/jira/browse/FLINK-19662) | Create or extend REST endpoint to expose memory configuration |  Major | Runtime / Web Frontend | Matthias | Matthias |
| [FLINK-19936](https://issues.apache.org/jira/browse/FLINK-19936) | Make SinkITCase stable |  Major | API / DataStream | Guowei Ma | Guowei Ma |
| [FLINK-19941](https://issues.apache.org/jira/browse/FLINK-19941) | Support sink parallelism configuration to Kafka connector |  Major | Connectors / Kafka | CloseRiver | CloseRiver |
| [FLINK-19365](https://issues.apache.org/jira/browse/FLINK-19365) | Migrate Hive source to FLIP-27 source interface for batch |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-19542](https://issues.apache.org/jira/browse/FLINK-19542) | Implement LeaderElectionService and LeaderRetrievalService based on Kubernetes API |  Major | Deployment / Kubernetes, Runtime / Coordination | Yang Wang | Yang Wang |
| [FLINK-18916](https://issues.apache.org/jira/browse/FLINK-18916) | Add a "Operations" link(linked to dev/table/tableApi.md) under the "Python API" -\> "User Guide" -\> "Table API" section |  Major | API / Python, Documentation | Wei Zhong | Dian Fu |
| [FLINK-18922](https://issues.apache.org/jira/browse/FLINK-18922) | Add a "Catalogs" link (linked to dev/table/catalogs.md) under the "Python API" -\> "User Guide" -\> "Table API" section |  Major | API / Python, Documentation | Wei Zhong | Dian Fu |
| [FLINK-19858](https://issues.apache.org/jira/browse/FLINK-19858) | Add the new table factory for upsert-kafka connector |  Major | Connectors / Kafka, Table SQL / Ecosystem | Jark Wu | Shengkai Fang |
| [FLINK-19079](https://issues.apache.org/jira/browse/FLINK-19079) | Support row time deduplicate operator |  Major | Table SQL / Runtime | Leonard Xu | Leonard Xu |
| [FLINK-19800](https://issues.apache.org/jira/browse/FLINK-19800) | Make FileSourceSplit / FileSourceSplitState interaction extensible. |  Major | Connectors / FileSystem | Stephan Ewen | Stephan Ewen |
| [FLINK-19802](https://issues.apache.org/jira/browse/FLINK-19802) | Let BulkFormat createReader and restoreReader methods accept Splits directly |  Major | Connectors / FileSystem | Stephan Ewen | Stephan Ewen |
| [FLINK-19803](https://issues.apache.org/jira/browse/FLINK-19803) | Make File Source Checkpoint Serializer extensible |  Major | Connectors / FileSystem | Stephan Ewen | Stephan Ewen |
| [FLINK-19804](https://issues.apache.org/jira/browse/FLINK-19804) | Make FileSource class generic with respect to split types |  Major | Connectors / FileSystem | Stephan Ewen | Stephan Ewen |
| [FLINK-19597](https://issues.apache.org/jira/browse/FLINK-19597) | Introduce SortBuffer and PartitionSortedBuffer for sort-merge based blocking shuffle |  Major | Runtime / Network | Yingjie Cao | Yingjie Cao |
| [FLINK-19600](https://issues.apache.org/jira/browse/FLINK-19600) | Introduce PartitionedFile and the corresponding writer/reader for sort-merge based blocking shuffle |  Major | Runtime / Network | Yingjie Cao | Yingjie Cao |
| [FLINK-19601](https://issues.apache.org/jira/browse/FLINK-19601) | Introduce sort-merge based blocking result partition SortMergeResultPartition and the corresponding subpartition reader |  Major | Runtime / Network | Yingjie Cao | Yingjie Cao |
| [FLINK-19602](https://issues.apache.org/jira/browse/FLINK-19602) | Introduce new config options to enable sort-merge based blocking shuffle |  Major | Runtime / Network | Yingjie Cao | Yingjie Cao |
| [FLINK-19603](https://issues.apache.org/jira/browse/FLINK-19603) | Introduce shuffle data compression to sort-merge based blocking shuffle |  Major | Runtime / Network | Yingjie Cao | Yingjie Cao |
| [FLINK-20007](https://issues.apache.org/jira/browse/FLINK-20007) | SinkTransformationTranslator fail to handle the PartitionTransformation |  Major | API / DataStream, Connectors / Common | Guowei Ma | Guowei Ma |
| [FLINK-19284](https://issues.apache.org/jira/browse/FLINK-19284) | Add documentation about how to use Python UDF in the Java Table API |  Major | API / Python, Documentation | Dian Fu | Wei Zhong |
| [FLINK-18926](https://issues.apache.org/jira/browse/FLINK-18926) | Add a "Environment Variables" document under  the "Python API" -\> "User Guide" -\> "Table API" section |  Major | API / Python, Documentation | Wei Zhong | Wei Zhong |
| [FLINK-19533](https://issues.apache.org/jira/browse/FLINK-19533) | Add state assignment to channel state during rescaling |  Major | Runtime / Checkpointing | Arvid Heise | Arvid Heise |
| [FLINK-19902](https://issues.apache.org/jira/browse/FLINK-19902) | Adjust JobMasterTest to be compatible |  Major | Runtime / Coordination, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-20001](https://issues.apache.org/jira/browse/FLINK-20001) | Don't use setAllVerticesInSameSlotSharingGroupByDefault in StreamGraphGenerator |  Major | API / DataStream | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-19581](https://issues.apache.org/jira/browse/FLINK-19581) | Introduce OrcColumnarRowInputFormat |  Major | Connectors / ORC | Jingsong Lee | Jingsong Lee |
| [FLINK-19992](https://issues.apache.org/jira/browse/FLINK-19992) | Integrate new orc to Hive source |  Major | Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-19886](https://issues.apache.org/jira/browse/FLINK-19886) | Integrate file compaction to Hive connector |  Major | Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-19276](https://issues.apache.org/jira/browse/FLINK-19276) | Allow to read metadata for Debezium format |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Timo Walther | Timo Walther |
| [FLINK-19823](https://issues.apache.org/jira/browse/FLINK-19823) | Integrate Filesystem and Hive connector with changelog format (e.g. debezium-json) |  Major | Connectors / FileSystem, Connectors / Hive, Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Jark Wu | Jingsong Lee |
| [FLINK-19543](https://issues.apache.org/jira/browse/FLINK-19543) | Implement RunningJobsRegistry, JobGraphStore based on Kubernetes API |  Major | Deployment / Kubernetes, Runtime / Coordination | Yang Wang | Yang Wang |
| [FLINK-19544](https://issues.apache.org/jira/browse/FLINK-19544) | Implement CheckpointRecoveryFactory based on Kubernetes API |  Major | Deployment / Kubernetes, Runtime / Checkpointing | Yang Wang | Yang Wang |
| [FLINK-20019](https://issues.apache.org/jira/browse/FLINK-20019) | Support all conversion classes in Row.equals/hashCode |  Major | API / Core, Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-20041](https://issues.apache.org/jira/browse/FLINK-20041) | Support Watermark push down for kafka connector |  Major | Connectors / Kafka, Table SQL / API | Shengkai Fang | Shengkai Fang |
| [FLINK-18774](https://issues.apache.org/jira/browse/FLINK-18774) | Support debezium-avro format |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jark Wu | CaoZhen |
| [FLINK-19888](https://issues.apache.org/jira/browse/FLINK-19888) | Migrate Hive source to FLIP-27 source interface for streaming |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-19693](https://issues.apache.org/jira/browse/FLINK-19693) | Scheduler Change for Approximate Local Recovery to Restart Downstream of a Failed Task |  Major | Runtime / Coordination | Yuan Mei | Yuan Mei |
| [FLINK-19342](https://issues.apache.org/jira/browse/FLINK-19342) | stop overriding convertFrom() in FlinkPlannerImpl after upgrade calcite to 1.23 |  Major | Table SQL / Planner | Leonard Xu |  |
| [FLINK-20053](https://issues.apache.org/jira/browse/FLINK-20053) | Add document for file compaction |  Major | Documentation, Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-19872](https://issues.apache.org/jira/browse/FLINK-19872) | Fix CSV format is unable to parse millisecond for TIME type |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Fangliang Liu | Fangliang Liu |
| [FLINK-20029](https://issues.apache.org/jira/browse/FLINK-20029) | Fix computed column can't be defined on the metadata column |  Major | Connectors / Kafka, Table SQL / API | Shengkai Fang | Timo Walther |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-15221](https://issues.apache.org/jira/browse/FLINK-15221) | Support exactly once sink delivery semantic for Kafka in Table API |  Major | Table SQL / API | chaiyongqiang | Shengkai Fang |
| [FLINK-17814](https://issues.apache.org/jira/browse/FLINK-17814) | Translate native kubernetes document to Chinese |  Major | chinese-translation, Documentation | Yang Wang | CaoZhen |
| [FLINK-17581](https://issues.apache.org/jira/browse/FLINK-17581) | Update translation of S3 documentation |  Major | chinese-translation, Documentation | Robert Metzger | Cedric Chen |
| [FLINK-18486](https://issues.apache.org/jira/browse/FLINK-18486) | Add documentation for the '%' modulus function |  Major | Documentation, Table SQL / API | Jark Wu | Shengkai Fang |
| [FLINK-18502](https://issues.apache.org/jira/browse/FLINK-18502) | Add the page 'legacySourceSinks.zh.md'  into the directory 'docs/dev/table' |  Major | Documentation | Roc Marshal | Roc Marshal |
| [FLINK-18505](https://issues.apache.org/jira/browse/FLINK-18505) |  Correct the content of 'sourceSinks.zh.md' |  Major | Documentation | Roc Marshal | Roc Marshal |
| [FLINK-17886](https://issues.apache.org/jira/browse/FLINK-17886) | Update Chinese documentation for new WatermarkGenerator/WatermarkStrategies |  Major | chinese-translation, Documentation | Aljoscha Krettek | Yichao Yang |
| [FLINK-13872](https://issues.apache.org/jira/browse/FLINK-13872) | Translate Operations Playground to Chinese |  Major | chinese-translation, Documentation | Fabian Hueske | Lord i Will |
| [FLINK-18579](https://issues.apache.org/jira/browse/FLINK-18579) | Remove deprecated classes in flink-connector-jdbc |  Major | Connectors / JDBC | Jark Wu | Jark Wu |
| [FLINK-18798](https://issues.apache.org/jira/browse/FLINK-18798) | Translate "Debugging Windows & Event Time" page of "Debugging & Monitoring" into Chinese |  Minor | Documentation | Roc Marshal | Roc Marshal |
| [FLINK-17811](https://issues.apache.org/jira/browse/FLINK-17811) | Update docker hub Flink page |  Major | flink-docker | Andrey Zagrebin | Robert Metzger |
| [FLINK-18258](https://issues.apache.org/jira/browse/FLINK-18258) | Implement SHOW PARTITIONS for Hive dialect |  Major | Connectors / Hive, Table SQL / Client, Table SQL / Planner | Rui Li | Nicholas Jiang |
| [FLINK-17621](https://issues.apache.org/jira/browse/FLINK-17621) | Use default akka.ask.timeout in TPC-DS e2e test |  Major | Runtime / Coordination, Tests | Gary Yao | Robert Metzger |
| [FLINK-18814](https://issues.apache.org/jira/browse/FLINK-18814) | Translate the 'Side Outputs' page of 'DataStream API' into Chinese |  Major | Documentation | Roc Marshal | Roc Marshal |
| [FLINK-18813](https://issues.apache.org/jira/browse/FLINK-18813) | Translate the 'Local Installation' page of 'Try Flink' into Chinese |  Major | Documentation | Roc Marshal | Roc Marshal |
| [FLINK-19090](https://issues.apache.org/jira/browse/FLINK-19090) | Translate "Local Cluster" of "Clusters & Depolyment" page into Chinese |  Major | chinese-translation, Documentation | Xiao Huang | Xiao Huang |
| [FLINK-18622](https://issues.apache.org/jira/browse/FLINK-18622) | Add limit method in the Python Table API |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-19307](https://issues.apache.org/jira/browse/FLINK-19307) | Add ResourceTracker |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-19308](https://issues.apache.org/jira/browse/FLINK-19308) | Add SlotTracker |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-19498](https://issues.apache.org/jira/browse/FLINK-19498) | Port LocatableInputSplitAssigner to new File Source API |  Major | Connectors / FileSystem | Stephan Ewen | Stephan Ewen |
| [FLINK-19292](https://issues.apache.org/jira/browse/FLINK-19292) | HiveCatalog should support specifying Hadoop conf dir with configuration |  Major | Connectors / Hive | Rui Li | Nicholas Jiang |
| [FLINK-19309](https://issues.apache.org/jira/browse/FLINK-19309) | Add TaskExecutorAllocator |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-19315](https://issues.apache.org/jira/browse/FLINK-19315) | Move slot-bookkeeping into separate component |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-19767](https://issues.apache.org/jira/browse/FLINK-19767) | Add AbstractSlotPoolFactory |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-19781](https://issues.apache.org/jira/browse/FLINK-19781) | Upgrade commons\_codec to 1.13 or newer |  Critical | Table SQL / Planner | Till Rohrmann | Robert Metzger |
| [FLINK-19783](https://issues.apache.org/jira/browse/FLINK-19783) | Upgrade mesos to 1.7 or newer |  Critical | Deployment / Mesos | Till Rohrmann | Robert Metzger |
| [FLINK-19785](https://issues.apache.org/jira/browse/FLINK-19785) | Upgrade commons-io to 2.7 or newer |  Critical | Runtime / Coordination | Till Rohrmann | Robert Metzger |
| [FLINK-19782](https://issues.apache.org/jira/browse/FLINK-19782) | Upgrade antlr to 4.7.1 or newer |  Critical | API / Python | Till Rohrmann | Robert Metzger |


