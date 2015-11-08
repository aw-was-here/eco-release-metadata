
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

## Release 0.9 - Unreleased (as of 2015-11-08)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2195](https://issues.apache.org/jira/browse/FLINK-2195) | Set Configuration for Configurable Hadoop InputFormats |  Major | Core | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2073](https://issues.apache.org/jira/browse/FLINK-2073) | Add contribution guide for FlinkML |  Major | Documentation, Machine Learning Library | Theodore Vasiloudis | Till Rohrmann |
| [FLINK-2072](https://issues.apache.org/jira/browse/FLINK-2072) | Add a quickstart guide for FlinkML |  Major | Documentation, Machine Learning Library | Theodore Vasiloudis | Theodore Vasiloudis |
| [FLINK-1980](https://issues.apache.org/jira/browse/FLINK-1980) | Allowing users to decorate input streams |  Minor | Core | Sebastian Kruse | Sebastian Kruse |
| [FLINK-1589](https://issues.apache.org/jira/browse/FLINK-1589) | Add option to pass Configuration to LocalExecutor |  Major | Java API, Scala API | Robert Metzger | Robert Metzger |
| [FLINK-1478](https://issues.apache.org/jira/browse/FLINK-1478) | Add strictly local input split assignment |  Major | JobManager | Stephan Ewen | Fabian Hueske |
| [FLINK-1389](https://issues.apache.org/jira/browse/FLINK-1389) | Allow setting custom file extensions for files created by the FileOutputFormat |  Minor | . | Robert Metzger | Robert Metzger |
| [FLINK-1319](https://issues.apache.org/jira/browse/FLINK-1319) | Add static code analysis for UDFs |  Minor | Java API, Scala API | Stephan Ewen | Timo Walther |
| [FLINK-1295](https://issues.apache.org/jira/browse/FLINK-1295) | Add option to Flink client to start a YARN session per job |  Major | YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-1219](https://issues.apache.org/jira/browse/FLINK-1219) | Add support for Apache Tez as execution engine |  Major | Flink on Tez, New Components | Kostas Tzoumas | Kostas Tzoumas |
| [FLINK-1179](https://issues.apache.org/jira/browse/FLINK-1179) | Add button to JobManager web interface to request stack trace of a TaskManager |  Minor | JobManager | Robert Metzger | Chiwan Park |
| [FLINK-967](https://issues.apache.org/jira/browse/FLINK-967) | Make intermediate results a first-class citizen in the JobGraph |  Major | JobManager, TaskManager | Stephan Ewen | Stephan Ewen |
| [FLINK-947](https://issues.apache.org/jira/browse/FLINK-947) | Add support for "Named Datasets" |  Minor | Java API | Aljoscha Krettek | Aljoscha Krettek |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2216](https://issues.apache.org/jira/browse/FLINK-2216) | Examples directory contains `flink-java-examples-0.9.0-javadoc.jar` |  Major | Build System | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2196](https://issues.apache.org/jira/browse/FLINK-2196) | Missplaced Class in flink-java SortPartitionOperator |  Blocker | Java API | Fabian Hueske | Fabian Hueske |
| [FLINK-2174](https://issues.apache.org/jira/browse/FLINK-2174) | Allow comments in 'slaves' file |  Trivial | Start-Stop Scripts | Matthias J. Sax | Matthias J. Sax |
| [FLINK-2165](https://issues.apache.org/jira/browse/FLINK-2165) | Rename Table conversion methods in TableEnvironment |  Minor | Table API | Fabian Hueske | Fabian Hueske |
| [FLINK-2160](https://issues.apache.org/jira/browse/FLINK-2160) | Change Streaming Source Interface to run(Context)/cancel() |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2102](https://issues.apache.org/jira/browse/FLINK-2102) | Add predict operation for LabeledVector |  Minor | Machine Learning Library | Theodore Vasiloudis | Theodore Vasiloudis |
| [FLINK-2083](https://issues.apache.org/jira/browse/FLINK-2083) | Ensure high quality docs for FlinkML in 0.9 |  Major | Machine Learning Library | Theodore Vasiloudis | Theodore Vasiloudis |
| [FLINK-2080](https://issues.apache.org/jira/browse/FLINK-2080) | Execute Flink with sbt |  Minor | Documentation | Christian Wuertz | Christian Wuertz |
| [FLINK-2079](https://issues.apache.org/jira/browse/FLINK-2079) | Add watcher to YARN TM containers to detect stopped actor system |  Major | TaskManager, YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-2078](https://issues.apache.org/jira/browse/FLINK-2078) | Document type registration at the ExecutionEnvironment |  Major | Documentation | Till Rohrmann | Robert Metzger |
| [FLINK-2057](https://issues.apache.org/jira/browse/FLINK-2057) | Remove IOReadableWritable interface from input splits |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-2053](https://issues.apache.org/jira/browse/FLINK-2053) | Preregister ML types for Kryo serialization |  Major | Machine Learning Library | Till Rohrmann | Till Rohrmann |
| [FLINK-2050](https://issues.apache.org/jira/browse/FLINK-2050) | Add pipelining mechanism for chainable transformers and estimators |  Major | Machine Learning Library | Till Rohrmann | Till Rohrmann |
| [FLINK-2047](https://issues.apache.org/jira/browse/FLINK-2047) | Rename CoCoA to SVM |  Trivial | Machine Learning Library | Theodore Vasiloudis | Theodore Vasiloudis |
| [FLINK-2043](https://issues.apache.org/jira/browse/FLINK-2043) | Change the KMeansDataGenerator to allow passing a custom path |  Trivial | Examples | Robert Metzger | pietro pinoli |
| [FLINK-2035](https://issues.apache.org/jira/browse/FLINK-2035) | Update 0.9 roadmap with ML issues |  Major | Machine Learning Library | Theodore Vasiloudis | Till Rohrmann |
| [FLINK-2034](https://issues.apache.org/jira/browse/FLINK-2034) | Add vision and roadmap for ML library to docs |  Major | Machine Learning Library | Theodore Vasiloudis | Theodore Vasiloudis |
| [FLINK-2019](https://issues.apache.org/jira/browse/FLINK-2019) | Grouping by Joda DateTime field fails with Kryo exception |  Major | Type Serialization System | Robert Metzger | Robert Metzger |
| [FLINK-2000](https://issues.apache.org/jira/browse/FLINK-2000) | Add SQL-style aggregations for Table API |  Minor | Table API | Aljoscha Krettek | Cheng Hao |
| [FLINK-1997](https://issues.apache.org/jira/browse/FLINK-1997) | Neither "\<\>" nor "!=" supported for non-equals predicates in .filter() |  Major | Table API | Fabian Hueske | Aljoscha Krettek |
| [FLINK-1992](https://issues.apache.org/jira/browse/FLINK-1992) | Add convergence criterion to SGD optimizer |  Minor | Machine Learning Library | Till Rohrmann | Theodore Vasiloudis |
| [FLINK-1977](https://issues.apache.org/jira/browse/FLINK-1977) | Rework Stream Operators to always be push based |  Major | . | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-1975](https://issues.apache.org/jira/browse/FLINK-1975) | Graph getUndirected improvement |  Minor | Gelly | Andra Lungu | Andra Lungu |
| [FLINK-1974](https://issues.apache.org/jira/browse/FLINK-1974) | JobExecutionResult NetRuntime - document result type |  Trivial | Documentation | Johannes | Johannes |
| [FLINK-1973](https://issues.apache.org/jira/browse/FLINK-1973) | JobManager log does not contain state change messages on INFO level |  Major | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-1971](https://issues.apache.org/jira/browse/FLINK-1971) | Add user function type to StreamOperator |  Minor | . | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-1958](https://issues.apache.org/jira/browse/FLINK-1958) | Improve error handling of receiver task failures |  Major | Distributed Runtime | Ufuk Celebi |  |
| [FLINK-1955](https://issues.apache.org/jira/browse/FLINK-1955) | Improve error handling of sender task failures |  Major | Distributed Runtime | Ufuk Celebi |  |
| [FLINK-1954](https://issues.apache.org/jira/browse/FLINK-1954) | Task Failures and Error Handling |  Blocker | Distributed Runtime | Ufuk Celebi |  |
| [FLINK-1942](https://issues.apache.org/jira/browse/FLINK-1942) | Add configuration options to Gelly-GSA |  Major | Gelly | Vasia Kalavri | Andra Lungu |
| [FLINK-1925](https://issues.apache.org/jira/browse/FLINK-1925) | Split SubmitTask method up into two phases: Receive TDD and instantiation of TDD |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-1924](https://issues.apache.org/jira/browse/FLINK-1924) | [Py] Refactor a few minor things |  Trivial | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-1906](https://issues.apache.org/jira/browse/FLINK-1906) | Add tip to work around plain Tuple return type of project operator |  Minor | Documentation | Fabian Hueske | Chiwan Park |
| [FLINK-1887](https://issues.apache.org/jira/browse/FLINK-1887) | Fix the message in runtime exception |  Minor | Local Runtime | Sibao Hong | Sibao Hong |
| [FLINK-1825](https://issues.apache.org/jira/browse/FLINK-1825) | Fix the constructor comments with correct parameter in DefaultMemoryManager |  Minor | Local Runtime | Sibao Hong | Sibao Hong |
| [FLINK-1806](https://issues.apache.org/jira/browse/FLINK-1806) | Improve S3 file system error message when no access/secret key provided |  Minor | Local Runtime | Ufuk Celebi |  |
| [FLINK-1790](https://issues.apache.org/jira/browse/FLINK-1790) | Remove the redundant import code |  Minor | TaskManager | Sibao Hong | Sibao Hong |
| [FLINK-1788](https://issues.apache.org/jira/browse/FLINK-1788) | Extend Table API to allow logical plan optimisations |  Major | . | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-1783](https://issues.apache.org/jira/browse/FLINK-1783) | Quickstart shading should not created shaded jar and dependency reduced pom |  Major | Quickstarts | Stephan Ewen | Stephan Ewen |
| [FLINK-1780](https://issues.apache.org/jira/browse/FLINK-1780) | Rename FlatCombineFunction to GroupCombineFunction |  Minor | Java API, Scala API | Fabian Hueske | Suneel Marthi |
| [FLINK-1771](https://issues.apache.org/jira/browse/FLINK-1771) | Add support for submitting single jobs to a detached YARN session |  Major | YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-1760](https://issues.apache.org/jira/browse/FLINK-1760) | Add support for building Flink with Scala 2.11 |  Major | Build System | Stephan Ewen | Alexander Alexandrov |
| [FLINK-1752](https://issues.apache.org/jira/browse/FLINK-1752) | Add test to Kafka streaming connector |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-1720](https://issues.apache.org/jira/browse/FLINK-1720) | Integrate ScalaDoc in Scala sources into overall JavaDoc |  Major | Build System | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-1714](https://issues.apache.org/jira/browse/FLINK-1714) | Fix the bug of logger class loader |  Minor | JobManager | Sibao Hong | Sibao Hong |
| [FLINK-1711](https://issues.apache.org/jira/browse/FLINK-1711) | Replace all usages off commons.Validate with guava.check |  Minor | . | Stephan Ewen | Lokesh Rajaram |
| [FLINK-1698](https://issues.apache.org/jira/browse/FLINK-1698) | Add polynomial base feature mapper to ML library |  Major | Machine Learning Library | Till Rohrmann | Till Rohrmann |
| [FLINK-1697](https://issues.apache.org/jira/browse/FLINK-1697) | Add alternating least squares algorithm for matrix factorization to ML library |  Major | Machine Learning Library | Till Rohrmann | Till Rohrmann |
| [FLINK-1696](https://issues.apache.org/jira/browse/FLINK-1696) | Add multiple linear regression to ML library |  Major | Machine Learning Library | Till Rohrmann | Till Rohrmann |
| [FLINK-1695](https://issues.apache.org/jira/browse/FLINK-1695) | Create machine learning library |  Major | Machine Learning Library | Till Rohrmann | Till Rohrmann |
| [FLINK-1694](https://issues.apache.org/jira/browse/FLINK-1694) | Change the split between create/run of a vertex-centric iteration |  Major | Gelly | Vasia Kalavri | Vasia Kalavri |
| [FLINK-1672](https://issues.apache.org/jira/browse/FLINK-1672) | Refactor task registration/unregistration |  Major | Distributed Runtime | Ufuk Celebi | Stephan Ewen |
| [FLINK-1646](https://issues.apache.org/jira/browse/FLINK-1646) | Add name of required configuration value into the "Insufficient number of network buffers" exception |  Minor | TaskManager | Robert Metzger | Ufuk Celebi |
| [FLINK-1643](https://issues.apache.org/jira/browse/FLINK-1643) | Detect tumbling policies where trigger and eviction match |  Major | Streaming | Gyula Fora | Gyula Fora |
| [FLINK-1630](https://issues.apache.org/jira/browse/FLINK-1630) | Add option to YARN client to re-allocate failed containers |  Major | YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-1629](https://issues.apache.org/jira/browse/FLINK-1629) | Add option to start Flink on YARN in a detached mode |  Major | YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-1623](https://issues.apache.org/jira/browse/FLINK-1623) | Rename Expression API and Operation Representation |  Major | . | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-1621](https://issues.apache.org/jira/browse/FLINK-1621) | Create a generalized combine function |  Major | Distributed Runtime | Maximilian Michels | Maximilian Michels |
| [FLINK-1620](https://issues.apache.org/jira/browse/FLINK-1620) | Add pre-aggregator for count windows |  Major | Streaming | Gyula Fora | Gyula Fora |
| [FLINK-1619](https://issues.apache.org/jira/browse/FLINK-1619) | Add pre-aggregator for time windows |  Major | Streaming | Gyula Fora | Gyula Fora |
| [FLINK-1605](https://issues.apache.org/jira/browse/FLINK-1605) | Create a shaded Hadoop fat jar to resolve library version conflicts |  Major | Build System | Robert Metzger | Robert Metzger |
| [FLINK-1593](https://issues.apache.org/jira/browse/FLINK-1593) | Improve exception handling in the Streaming runtime |  Major | Streaming | Gyula Fora | Gyula Fora |
| [FLINK-1591](https://issues.apache.org/jira/browse/FLINK-1591) | Remove window merge before flatten as an optimization |  Major | Streaming | Gyula Fora | Gyula Fora |
| [FLINK-1590](https://issues.apache.org/jira/browse/FLINK-1590) | Log environment information also in YARN mode |  Minor | YARN Client | Robert Metzger | Stephan Ewen |
| [FLINK-1576](https://issues.apache.org/jira/browse/FLINK-1576) | Change the Gelly examples to be consistent with the other Flink examples |  Major | Gelly | Andra Lungu | Vasia Kalavri |
| [FLINK-1567](https://issues.apache.org/jira/browse/FLINK-1567) | Add option to switch between Avro and Kryo serialization for GenericTypes |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-1565](https://issues.apache.org/jira/browse/FLINK-1565) | Document object reuse behavior |  Major | Documentation | Fabian Hueske | Robert Metzger |
| [FLINK-1561](https://issues.apache.org/jira/browse/FLINK-1561) | Improve build server robustness by not reusing JVMs in integration tests |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-1558](https://issues.apache.org/jira/browse/FLINK-1558) | Spurious failure in PipelinedPartitionQueueTest |  Major | Distributed Runtime | Stephan Ewen |  |
| [FLINK-1557](https://issues.apache.org/jira/browse/FLINK-1557) | Move WebFrontend out of JobManager Actor |  Major | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-1555](https://issues.apache.org/jira/browse/FLINK-1555) | Add utility to log the serializers of composite types |  Minor | . | Robert Metzger | Robert Metzger |
| [FLINK-1548](https://issues.apache.org/jira/browse/FLINK-1548) | [DISCUSS] Make Scala implicit parameters explicit in the runtime |  Minor | Distributed Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1530](https://issues.apache.org/jira/browse/FLINK-1530) | Cache ExecutionConfig in AbstractInvokable |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1529](https://issues.apache.org/jira/browse/FLINK-1529) | Improve JobManager startup robustness |  Major | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-1525](https://issues.apache.org/jira/browse/FLINK-1525) | Provide utils to pass -D parameters to UDFs |  Major | flink-contrib | Robert Metzger | Robert Metzger |
| [FLINK-1519](https://issues.apache.org/jira/browse/FLINK-1519) | Web frontend task state mismatch when cancelling |  Minor | Webfrontend | Ufuk Celebi | Mingliang Qi |
| [FLINK-1510](https://issues.apache.org/jira/browse/FLINK-1510) | Make AvroInputFormat splittable |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-1504](https://issues.apache.org/jira/browse/FLINK-1504) | Add support for accessing secured HDFS clusters in standalone mode |  Major | JobManager, TaskManager | Robert Metzger | Maximilian Michels |
| [FLINK-1495](https://issues.apache.org/jira/browse/FLINK-1495) | Make Akka timeout configurable in YARN client. |  Minor | YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-1469](https://issues.apache.org/jira/browse/FLINK-1469) | Initialize network environment at task manager startup |  Minor | Distributed Runtime | Ufuk Celebi |  |
| [FLINK-1464](https://issues.apache.org/jira/browse/FLINK-1464) | Added ResultTypeQueryable interface to TypeSerializerInputFormat. |  Minor | Distributed Runtime, Optimizer | Alexander Alexandrov | Alexander Alexandrov |
| [FLINK-1460](https://issues.apache.org/jira/browse/FLINK-1460) | Typo fixes |  Minor | . | Shuo Xiang |  |
| [FLINK-1459](https://issues.apache.org/jira/browse/FLINK-1459) | Collect DataSet to client |  Major | . | John Sandiford | Stephan Ewen |
| [FLINK-1436](https://issues.apache.org/jira/browse/FLINK-1436) | Command-line interface verbose option & error reporting |  Trivial | Start-Stop Scripts | Maximilian Michels | Maximilian Michels |
| [FLINK-1433](https://issues.apache.org/jira/browse/FLINK-1433) | Add HADOOP\_CLASSPATH to start scripts |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-1417](https://issues.apache.org/jira/browse/FLINK-1417) | Automatically register nested types at Kryo |  Major | Java API, Scala API | Stephan Ewen | Robert Metzger |
| [FLINK-1406](https://issues.apache.org/jira/browse/FLINK-1406) | Windows compatibility |  Minor | . | Maximilian Michels |  |
| [FLINK-1399](https://issues.apache.org/jira/browse/FLINK-1399) | Add support for registering Serializers with Kryo |  Major | . | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-1369](https://issues.apache.org/jira/browse/FLINK-1369) | The Pojo Serializers/Comparators fail when using Subclasses or Interfaces |  Minor | . | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-1359](https://issues.apache.org/jira/browse/FLINK-1359) | Make IntermediateResultPartitionManager aware of consumed partitions |  Major | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-1356](https://issues.apache.org/jira/browse/FLINK-1356) | Add a warning during startup if config files cannot be found |  Minor | JobManager | Mathias Peters |  |
| [FLINK-1348](https://issues.apache.org/jira/browse/FLINK-1348) | Move Stream Connector Jars from "lib" to Client JARs |  Major | Streaming | Márton Balassi | Márton Balassi |
| [FLINK-1330](https://issues.apache.org/jira/browse/FLINK-1330) | Restructure directory layout |  Minor | Build System, Documentation | Maximilian Michels | Stephan Ewen |
| [FLINK-1318](https://issues.apache.org/jira/browse/FLINK-1318) | Make quoted String parsing optional and configurable for CSVInputFormats |  Minor | Java API, Scala API | Fabian Hueske | Fabian Hueske |
| [FLINK-1266](https://issues.apache.org/jira/browse/FLINK-1266) | Generalize Flink's DistributedFileSystemClass to a Hadoop FileSystem wrapper |  Minor | . | Robert Metzger | Robert Metzger |
| [FLINK-1245](https://issues.apache.org/jira/browse/FLINK-1245) | Introduce TypeHints for Java API operators |  Major | Java API | Timo Walther | Timo Walther |
| [FLINK-1236](https://issues.apache.org/jira/browse/FLINK-1236) | Add support for localization of Hadoop Input Splits |  Minor | . | Robert Metzger | Fabian Hueske |
| [FLINK-1229](https://issues.apache.org/jira/browse/FLINK-1229) | Synchronize WebClient arguments with command line arguments |  Minor | Webfrontend | Timo Walther | Mingliang Qi |
| [FLINK-1197](https://issues.apache.org/jira/browse/FLINK-1197) | Special page on website that describes issues that occur together with types |  Minor | . | Timo Walther | Stephan Ewen |
| [FLINK-1165](https://issues.apache.org/jira/browse/FLINK-1165) | No createCollectionsEnvironment in Java API |  Major | . | Till Rohrmann |  |
| [FLINK-1158](https://issues.apache.org/jira/browse/FLINK-1158) | Logging property files missing in project created by archetypes |  Major | Build System | Till Rohrmann | Robert Metzger |
| [FLINK-1147](https://issues.apache.org/jira/browse/FLINK-1147) | TypeInference on POJOs |  Major | Java API | Stephan Ewen | Timo Walther |
| [FLINK-1126](https://issues.apache.org/jira/browse/FLINK-1126) | Add suggestion for using large TupleX types |  Minor | Documentation | Ufuk Celebi | Robert Metzger |
| [FLINK-1112](https://issues.apache.org/jira/browse/FLINK-1112) | Add GroupSorting with KeySelectors |  Major | Java API, Scala API | Fabian Hueske | Mingliang Qi |
| [FLINK-1061](https://issues.apache.org/jira/browse/FLINK-1061) | Describe how to run the examples from the command line |  Minor | Documentation | Robert Metzger | Robert Metzger |
| [FLINK-1027](https://issues.apache.org/jira/browse/FLINK-1027) | CLI "run" command does not support flags |  Trivial | JobManager | Alexander Alexandrov | Alexander Alexandrov |
| [FLINK-883](https://issues.apache.org/jira/browse/FLINK-883) | Use MiniYARNCluster to test the Flink YARN client |  Major | YARN Client | Robert Metzger | Sebastian Kunert |
| [FLINK-837](https://issues.apache.org/jira/browse/FLINK-837) | Allow FunctionAnnotations on Methods |  Major | . | GitHub Import |  |
| [FLINK-819](https://issues.apache.org/jira/browse/FLINK-819) | OutOfMemoryError from TaskManager is causing hard to understand exceptions and blocking JobManager |  Major | Distributed Runtime | GitHub Import |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2874](https://issues.apache.org/jira/browse/FLINK-2874) | Certain Avro generated getters/setters not recognized |  Minor | Core | Ulf Karlsson |  |
| [FLINK-2751](https://issues.apache.org/jira/browse/FLINK-2751) | Quickstart is in documentation but only linked through the Flink homepage |  Major | Documentation | Maximilian Michels |  |
| [FLINK-2742](https://issues.apache.org/jira/browse/FLINK-2742) | Broken link in setup quickstart |  Major | Documentation | dengjie | Maximilian Michels |
| [FLINK-2691](https://issues.apache.org/jira/browse/FLINK-2691) | Broken links to Python script on QuickStart doc |  Minor | Documentation | Felix Cheung |  |
| [FLINK-2689](https://issues.apache.org/jira/browse/FLINK-2689) | Reusing null object for joins with SolutionSet |  Major | Local Runtime | Fabian Hueske | Fabian Hueske |
| [FLINK-2659](https://issues.apache.org/jira/browse/FLINK-2659) | Object reuse in UnionWithTempOperator |  Major | Distributed Runtime | Greg Hogan | Greg Hogan |
| [FLINK-2617](https://issues.apache.org/jira/browse/FLINK-2617) | ConcurrentModificationException when using HCatRecordReader to access a hive table |  Critical | Hadoop Compatibility | Arnaud Linz | Fabian Hueske |
| [FLINK-2341](https://issues.apache.org/jira/browse/FLINK-2341) | Deadlock in SpilledSubpartitionViewAsyncIO |  Critical | Distributed Runtime | Stephan Ewen | Ufuk Celebi |
| [FLINK-2224](https://issues.apache.org/jira/browse/FLINK-2224) | JobManager log does not contain root cause and stack trace of exceptions |  Major | Core | Till Rohrmann |  |
| [FLINK-2219](https://issues.apache.org/jira/browse/FLINK-2219) | JobManagerInfoServlet IllegalArgumentException when pressing state button |  Major | JobManager, Webfrontend | Ufuk Celebi |  |
| [FLINK-2207](https://issues.apache.org/jira/browse/FLINK-2207) | Online documentation of Table API is out of date |  Minor | . | Till Rohrmann | Fabian Hueske |
| [FLINK-2206](https://issues.apache.org/jira/browse/FLINK-2206) | JobManager webinterface shows 5 finished jobs at most |  Blocker | Webfrontend | Fabian Hueske | Fabian Hueske |
| [FLINK-2199](https://issues.apache.org/jira/browse/FLINK-2199) | Build with skipped tests fails on Windows |  Major | Scala Shell | Fabian Hueske | Fabian Hueske |
| [FLINK-2191](https://issues.apache.org/jira/browse/FLINK-2191) | Inconsistent use of Closure Cleaner in Streaming API |  Blocker | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2183](https://issues.apache.org/jira/browse/FLINK-2183) | TaskManagerFailsWithSlotSharingITCase fails. |  Major | . | Sachin Goel | Maximilian Michels |
| [FLINK-2177](https://issues.apache.org/jira/browse/FLINK-2177) | NullPointer in task resource release |  Blocker | Distributed Runtime | Stephan Ewen | Ufuk Celebi |
| [FLINK-2164](https://issues.apache.org/jira/browse/FLINK-2164) | Document batch and streaming startup modes |  Major | Documentation | Robert Metzger | Robert Metzger |
| [FLINK-2135](https://issues.apache.org/jira/browse/FLINK-2135) | Java plan translation fails with ClassCastException (probably in first()) |  Major | Java API | Robert Metzger | Robert Metzger |
| [FLINK-2134](https://issues.apache.org/jira/browse/FLINK-2134) | Deadlock in SuccessAfterNetworkBuffersFailureITCase |  Major | . | Ufuk Celebi |  |
| [FLINK-2133](https://issues.apache.org/jira/browse/FLINK-2133) | Possible deadlock in ExecutionGraph |  Major | . | Aljoscha Krettek | Stephan Ewen |
| [FLINK-2132](https://issues.apache.org/jira/browse/FLINK-2132) | Java version parsing is not working for OpenJDK |  Critical | Start-Stop Scripts | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2130](https://issues.apache.org/jira/browse/FLINK-2130) | RabbitMQ source does not fail when failing to retrieve elements |  Major | Streaming, Streaming Connectors | Stephan Ewen | Márton Balassi |
| [FLINK-2127](https://issues.apache.org/jira/browse/FLINK-2127) | The GSA Documentation has trailing \</p\> s |  Minor | Documentation, Gelly | Andra Lungu | Maximilian Michels |
| [FLINK-2126](https://issues.apache.org/jira/browse/FLINK-2126) | Scala shell tests sporadically fail on travis |  Major | Scala Shell | Robert Metzger | Nikolaas Steenbergen |
| [FLINK-2123](https://issues.apache.org/jira/browse/FLINK-2123) | Fix CLI client logging |  Major | Core | Ufuk Celebi | Robert Metzger |
| [FLINK-2121](https://issues.apache.org/jira/browse/FLINK-2121) | FileInputFormat.addFilesInDir miscalculates total size |  Minor | Core | Gabor Gevay | Gabor Gevay |
| [FLINK-2113](https://issues.apache.org/jira/browse/FLINK-2113) | env.execute() is no longer needed after a call to print() |  Major | Gelly | Andra Lungu | Andra Lungu |
| [FLINK-2112](https://issues.apache.org/jira/browse/FLINK-2112) | Wrong package statement in KafkaITCase and KafkaLocalSystemTime |  Major | Streaming Connectors | Matthias J. Sax | Márton Balassi |
| [FLINK-2109](https://issues.apache.org/jira/browse/FLINK-2109) | CancelTaskException leads to FAILED task state |  Major | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2104](https://issues.apache.org/jira/browse/FLINK-2104) | Fallback implicit values for PredictOperation and TransformOperation don't work if Nothing is inferred as the output type |  Major | Machine Learning Library | Till Rohrmann | Till Rohrmann |
| [FLINK-2098](https://issues.apache.org/jira/browse/FLINK-2098) | Checkpoint barrier initiation at source is not aligned with snapshotting |  Blocker | Streaming | Stephan Ewen | Aljoscha Krettek |
| [FLINK-2096](https://issues.apache.org/jira/browse/FLINK-2096) | Remove implicit conversions in Streaming Scala API |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2088](https://issues.apache.org/jira/browse/FLINK-2088) | change return type of name function in DataStream scala class |  Major | Streaming | Faye Beligianni | Márton Balassi |
| [FLINK-2076](https://issues.apache.org/jira/browse/FLINK-2076) | Bug in re-openable hash join |  Major | Local Runtime | Stephan Ewen | Chiwan Park |
| [FLINK-2071](https://issues.apache.org/jira/browse/FLINK-2071) | Projection function can fail non serializable |  Major | Java API | Stephan Ewen | Stephan Ewen |
| [FLINK-2070](https://issues.apache.org/jira/browse/FLINK-2070) | Confusing methods print() that print on client vs on TaskManager |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-2069](https://issues.apache.org/jira/browse/FLINK-2069) | writeAsCSV function in DataStream Scala API creates no file |  Blocker | Streaming | Faye Beligianni | Márton Balassi |
| [FLINK-2065](https://issues.apache.org/jira/browse/FLINK-2065) | Cancelled jobs finish with final state FAILED |  Major | Distributed Runtime | Robert Metzger |  |
| [FLINK-2063](https://issues.apache.org/jira/browse/FLINK-2063) | Streaming checkpoints consider only input and output vertices |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2062](https://issues.apache.org/jira/browse/FLINK-2062) | Fix names of memory segment config parameter |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-2059](https://issues.apache.org/jira/browse/FLINK-2059) | Rename modules flink-compiler to flink-optimizer in pom.xml |  Major | Python API | Tamara |  |
| [FLINK-2058](https://issues.apache.org/jira/browse/FLINK-2058) | Hadoop Input Splits do not use proper UserCodeClassloader |  Major | Hadoop Compatibility | Stephan Ewen | Stephan Ewen |
| [FLINK-2054](https://issues.apache.org/jira/browse/FLINK-2054) | StreamOperator rework removed copy calls when passing output to a chained operator |  Blocker | Streaming | Gyula Fora | Aljoscha Krettek |
| [FLINK-2041](https://issues.apache.org/jira/browse/FLINK-2041) | Optimizer plans with memory for pipeline breakers, even though they are not used any more |  Major | Optimizer | Stephan Ewen | Stephan Ewen |
| [FLINK-2040](https://issues.apache.org/jira/browse/FLINK-2040) | TaskTest.testCancelDuringInvoke:434-\>validateListenerMessage:712 expected:\<CANCELING\> but was:\<CANCELED\> |  Major | TaskManager | Robert Metzger | Stephan Ewen |
| [FLINK-2026](https://issues.apache.org/jira/browse/FLINK-2026) | Error message in count() only jobs |  Minor | Core | Sebastian Schelter | Maximilian Michels |
| [FLINK-2022](https://issues.apache.org/jira/browse/FLINK-2022) | log4j.properties are not in quickstart projects |  Major | Quickstarts | Robert Metzger | Robert Metzger |
| [FLINK-2007](https://issues.apache.org/jira/browse/FLINK-2007) | Initial data point in Delta function needs to be serializable |  Major | Streaming | Márton Balassi | Márton Balassi |
| [FLINK-2006](https://issues.apache.org/jira/browse/FLINK-2006) | TaskManagerTest.testRunJobWithForwardChannel:432 expected:\<FINISHED\> but was:\<FAILED\> |  Major | TaskManager | Robert Metzger | Stephan Ewen |
| [FLINK-2004](https://issues.apache.org/jira/browse/FLINK-2004) | Memory leak in presence of failed checkpoints in KafkaSource |  Critical | Streaming | Stephan Ewen | Robert Metzger |
| [FLINK-2002](https://issues.apache.org/jira/browse/FLINK-2002) | Iterative test fails when ran with other tests in the same environment |  Major | Streaming | Péter Szabó | Márton Balassi |
| [FLINK-2001](https://issues.apache.org/jira/browse/FLINK-2001) | DistanceMetric cannot be serialized |  Critical | Machine Learning Library | Chiwan Park | Chiwan Park |
| [FLINK-1990](https://issues.apache.org/jira/browse/FLINK-1990) | Uppercase "AS" keyword not allowed in select expression |  Minor | Table API | Fabian Hueske | Cheng Hao |
| [FLINK-1985](https://issues.apache.org/jira/browse/FLINK-1985) | Streaming does not correctly forward ExecutionConfig to runtime |  Blocker | Streaming | Aljoscha Krettek | Matthias J. Sax |
| [FLINK-1978](https://issues.apache.org/jira/browse/FLINK-1978) | POJO serialization NPE |  Major | Core | Flavio Pompermaier | Fabian Hueske |
| [FLINK-1968](https://issues.apache.org/jira/browse/FLINK-1968) | Make Distributed Cache more robust |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1956](https://issues.apache.org/jira/browse/FLINK-1956) | Runtime context not initialized in RichWindowMapFunction |  Major | Streaming | Daniel Bali | Márton Balassi |
| [FLINK-1952](https://issues.apache.org/jira/browse/FLINK-1952) | Cannot run ConnectedComponents example: Could not allocate a slot on instance |  Blocker | Scheduler | Robert Metzger | Stephan Ewen |
| [FLINK-1951](https://issues.apache.org/jira/browse/FLINK-1951) | NullPointerException in DeltaIteration when no ForwardedFileds |  Critical | Iterations | Vasia Kalavri | Fabian Hueske |
| [FLINK-1922](https://issues.apache.org/jira/browse/FLINK-1922) | Failed task deployment causes NPE on input split assignment |  Major | JobManager | Robert Metzger | Till Rohrmann |
| [FLINK-1920](https://issues.apache.org/jira/browse/FLINK-1920) | Passing -D akka.ask.timeout=5 min to yarn client does not work |  Major | YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-1918](https://issues.apache.org/jira/browse/FLINK-1918) | NullPointerException at org.apache.flink.client.program.Client's constructor while using ExecutionEnvironment.createRemoteEnvironment |  Major | YARN Client | Zoltán Zvara | Stephan Ewen |
| [FLINK-1911](https://issues.apache.org/jira/browse/FLINK-1911) | DataStream and DataSet projection is out of sync |  Major | Java API, Streaming | Gyula Fora | Péter Szabó |
| [FLINK-1892](https://issues.apache.org/jira/browse/FLINK-1892) | Local job execution does not exit. |  Major | Flink on Tez | Kostas Tzoumas | Robert Metzger |
| [FLINK-1891](https://issues.apache.org/jira/browse/FLINK-1891) | Add isEmpty check when the input dir |  Major | Local Runtime | Sibao Hong | Sibao Hong |
| [FLINK-1878](https://issues.apache.org/jira/browse/FLINK-1878) | Add mode to Environments to deactivate sysout printing |  Major | Tests | Stephan Ewen | Stephan Ewen |
| [FLINK-1868](https://issues.apache.org/jira/browse/FLINK-1868) | EnvironmentInformationTest.testJavaMemory fails on Travis |  Minor | Tests | Robert Metzger | Stephan Ewen |
| [FLINK-1866](https://issues.apache.org/jira/browse/FLINK-1866) | In StreamConfig IN\_STREAM\_EDGES and OUT\_STREAM\_EDGES have same config key |  Major | Streaming | Aljoscha Krettek | Gyula Fora |
| [FLINK-1862](https://issues.apache.org/jira/browse/FLINK-1862) | Collect() does not support non-serializable user types |  Major | Java API, Scala API | Stephan Ewen | Stephan Ewen |
| [FLINK-1855](https://issues.apache.org/jira/browse/FLINK-1855) | SocketTextStreamWordCount example cannot be run from the webclient |  Major | Examples, Streaming, Webfrontend | Gyula Fora | Chiwan Park |
| [FLINK-1850](https://issues.apache.org/jira/browse/FLINK-1850) | Snapshot docs overview page refers to wrong version |  Minor | Documentation | Ufuk Celebi |  |
| [FLINK-1848](https://issues.apache.org/jira/browse/FLINK-1848) | Paths containing a Windows drive letter cannot be used in FileOutputFormats |  Critical | . | Fabian Hueske | Fabian Hueske |
| [FLINK-1847](https://issues.apache.org/jira/browse/FLINK-1847) | Change Scala collect() method to return a Seq |  Major | Scala API | Stephan Ewen | Till Rohrmann |
| [FLINK-1845](https://issues.apache.org/jira/browse/FLINK-1845) | NonReusingSortMergeCoGroupIterator uses ReusingKeyGroupedIterator |  Major | Local Runtime | Stephan Ewen | Alexander Alexandrov |
| [FLINK-1843](https://issues.apache.org/jira/browse/FLINK-1843) | Job History gets cleared too fast |  Major | JobManager | Maximilian Michels | Maximilian Michels |
| [FLINK-1841](https://issues.apache.org/jira/browse/FLINK-1841) | WindowJoinITCase fails |  Major | Streaming | Fabian Hueske | Márton Balassi |
| [FLINK-1840](https://issues.apache.org/jira/browse/FLINK-1840) | Job execution fails on Windows (native and Cygwin) |  Critical | JobManager | Fabian Hueske | Fabian Hueske |
| [FLINK-1839](https://issues.apache.org/jira/browse/FLINK-1839) | Failures in TwitterStreamITCase |  Critical | Streaming | Stephan Ewen | Márton Balassi |
| [FLINK-1835](https://issues.apache.org/jira/browse/FLINK-1835) | Spurious failure of YARN tests |  Major | YARN Client | Stephan Ewen | Robert Metzger |
| [FLINK-1832](https://issues.apache.org/jira/browse/FLINK-1832) | start-local.bat/start-local.sh does not work if there is a white space in the file path (windows) |  Minor | Local Runtime | Nikolaas Steenbergen | Fabian Hueske |
| [FLINK-1831](https://issues.apache.org/jira/browse/FLINK-1831) | runtime.taskmanager.RegistrationTests fails spuriously |  Major | Distributed Runtime | Márton Balassi | Stephan Ewen |
| [FLINK-1828](https://issues.apache.org/jira/browse/FLINK-1828) | Impossible to output data to an HBase table |  Major | Hadoop Compatibility | Flavio Pompermaier |  |
| [FLINK-1820](https://issues.apache.org/jira/browse/FLINK-1820) | Bug in DoubleParser and FloatParser - empty String is not casted to 0 |  Critical | Core | Felix Neutatz | Felix Neutatz |
| [FLINK-1817](https://issues.apache.org/jira/browse/FLINK-1817) | ClassLoaderObjectInputStream fails with ClassNotFoundException for primitive classes |  Major | Core | Fabian Hueske | Fabian Hueske |
| [FLINK-1811](https://issues.apache.org/jira/browse/FLINK-1811) | Allow users to pass custom buffer sizes and timeouts to PersistentKafkaSource |  Minor | Streaming | Robert Metzger | Robert Metzger |
| [FLINK-1796](https://issues.apache.org/jira/browse/FLINK-1796) | Local mode TaskManager should have a process reaper |  Major | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-1795](https://issues.apache.org/jira/browse/FLINK-1795) | Solution set allows duplicates upon construction. |  Major | Iterations | Stephan Ewen | Stephan Ewen |
| [FLINK-1793](https://issues.apache.org/jira/browse/FLINK-1793) | Streaming File Source cannot be canceled |  Critical | Streaming | Maximilian Michels | Márton Balassi |
| [FLINK-1781](https://issues.apache.org/jira/browse/FLINK-1781) | Quickstarts broken due to Scala Version Variables |  Blocker | Quickstarts | Stephan Ewen | Stephan Ewen |
| [FLINK-1777](https://issues.apache.org/jira/browse/FLINK-1777) | Update Java 8 Lambdas with Eclipse documentation |  Minor | Documentation | Timo Walther | Timo Walther |
| [FLINK-1776](https://issues.apache.org/jira/browse/FLINK-1776) | APIs provide invalid Semantic Properties for Operators with SelectorFunction keys |  Critical | Java API, Scala API | Fabian Hueske | Fabian Hueske |
| [FLINK-1768](https://issues.apache.org/jira/browse/FLINK-1768) | Fix the bug of BlobServerConnection's LOG. |  Major | . | Sibao Hong | Sibao Hong |
| [FLINK-1765](https://issues.apache.org/jira/browse/FLINK-1765) | Reducer grouping is skippted when parallelism is one |  Major | Streaming | Stephan Ewen | Gyula Fora |
| [FLINK-1761](https://issues.apache.org/jira/browse/FLINK-1761) | IndexOutOfBoundsException when receiving empty buffer at remote channel |  Major | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-1757](https://issues.apache.org/jira/browse/FLINK-1757) | java.lang.ClassCastException is thrown while summing Short values on window |  Major | Streaming | Péter Szabó | Péter Szabó |
| [FLINK-1755](https://issues.apache.org/jira/browse/FLINK-1755) | NullPointerException in LocalInputChannel.getNextLookAhead() |  Major | Distributed Runtime | Robert Metzger | Ufuk Celebi |
| [FLINK-1751](https://issues.apache.org/jira/browse/FLINK-1751) | Update CLI documentation page |  Major | Documentation | Maximilian Michels | Maximilian Michels |
| [FLINK-1724](https://issues.apache.org/jira/browse/FLINK-1724) | TestingCluster uses local communication with multiple task managers |  Minor | . | Ufuk Celebi |  |
| [FLINK-1721](https://issues.apache.org/jira/browse/FLINK-1721) | Flakey Yarn Tests |  Major | YARN Client | Stephan Ewen | Stephan Ewen |
| [FLINK-1710](https://issues.apache.org/jira/browse/FLINK-1710) | Expression API Tests take very long |  Major | Table API | Stephan Ewen | Aljoscha Krettek |
| [FLINK-1705](https://issues.apache.org/jira/browse/FLINK-1705) | InstanceConnectionInfo returns wrong hostname when no DNS entry exists |  Major | TaskManager | Stephan Ewen | Stephan Ewen |
| [FLINK-1691](https://issues.apache.org/jira/browse/FLINK-1691) | Inprove CountCollectITCase |  Major | Tests | Stephan Ewen | Stephan Ewen |
| [FLINK-1690](https://issues.apache.org/jira/browse/FLINK-1690) | ProcessFailureBatchRecoveryITCase.testTaskManagerProcessFailure spuriously fails on Travis |  Minor | . | Till Rohrmann |  |
| [FLINK-1685](https://issues.apache.org/jira/browse/FLINK-1685) | Document how to read gzip/compressed files with Flink |  Major | Documentation | Robert Metzger | Sebastian Kruse |
| [FLINK-1683](https://issues.apache.org/jira/browse/FLINK-1683) | Scheduling preferences for non-unary tasks are not correctly computed |  Major | JobManager | Fabian Hueske | Fabian Hueske |
| [FLINK-1677](https://issues.apache.org/jira/browse/FLINK-1677) | Properly Suppress Sysout Printing for the Degrees with exception test suite |  Minor | Gelly | Andra Lungu | Andra Lungu |
| [FLINK-1671](https://issues.apache.org/jira/browse/FLINK-1671) | Add execution modes for programs |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-1664](https://issues.apache.org/jira/browse/FLINK-1664) | Forbid sorting on POJOs |  Major | JobManager | Fabian Hueske | Fabian Hueske |
| [FLINK-1660](https://issues.apache.org/jira/browse/FLINK-1660) | MultiTriggerPolicyTest timeout during test |  Minor | Streaming | Ufuk Celebi | Ufuk Celebi |
| [FLINK-1656](https://issues.apache.org/jira/browse/FLINK-1656) | Filtered Semantic Properties for Operators with Iterators |  Critical | Documentation | Fabian Hueske | Fabian Hueske |
| [FLINK-1654](https://issues.apache.org/jira/browse/FLINK-1654) | Wrong scala example of POJO type in documentation |  Trivial | Documentation | Chiwan Park | Chiwan Park |
| [FLINK-1652](https://issues.apache.org/jira/browse/FLINK-1652) | Wrong superstep number in VertexCentricIteration in Collection mode |  Major | Gelly, Iterations, Spargel | Vasia Kalavri | Vasia Kalavri |
| [FLINK-1650](https://issues.apache.org/jira/browse/FLINK-1650) | Suppress Akka's Netty Shutdown Errors through the log config |  Major | other | Stephan Ewen | Stephan Ewen |
| [FLINK-1649](https://issues.apache.org/jira/browse/FLINK-1649) | Give a good error message when a user program emits a null record |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1640](https://issues.apache.org/jira/browse/FLINK-1640) | FileOutputFormat writes to wrong path if path ends with '/' |  Major | Java API, Scala API | Fabian Hueske | Fabian Hueske |
| [FLINK-1637](https://issues.apache.org/jira/browse/FLINK-1637) | Flink uberjar does not work with Java 6 |  Critical | Build System | Robert Metzger | Robert Metzger |
| [FLINK-1635](https://issues.apache.org/jira/browse/FLINK-1635) | Remove Apache Thrift dependency from Flink |  Major | Java API | Robert Metzger | Maximilian Michels |
| [FLINK-1634](https://issues.apache.org/jira/browse/FLINK-1634) | Fix "Could not build up connection to JobManager" issue on some systems |  Critical | . | Dulaj Viduranga | Stephan Ewen |
| [FLINK-1631](https://issues.apache.org/jira/browse/FLINK-1631) | Port collisions in ProcessReaping tests |  Major | Distributed Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1628](https://issues.apache.org/jira/browse/FLINK-1628) | Strange behavior of "where" function during a join |  Critical | Optimizer | Daniel Bali | Fabian Hueske |
| [FLINK-1626](https://issues.apache.org/jira/browse/FLINK-1626) | Spurious failure in MatchTask cancelling test |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1616](https://issues.apache.org/jira/browse/FLINK-1616) | Action "list -r" gives IOException when there are running jobs |  Minor | . | Vasia Kalavri | Stephan Ewen |
| [FLINK-1608](https://issues.apache.org/jira/browse/FLINK-1608) | TaskManagers may pick wrong network interface when starting before JobManager |  Major | TaskManager | Stephan Ewen | Stephan Ewen |
| [FLINK-1600](https://issues.apache.org/jira/browse/FLINK-1600) | Failure when submitting a job leaves user code libraries in the BLOB manager |  Minor | Distributed Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1598](https://issues.apache.org/jira/browse/FLINK-1598) | Give better error messages when serializers run out of space. |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1596](https://issues.apache.org/jira/browse/FLINK-1596) | FileIOChannel introduces space in temp file name |  Minor | Local Runtime | Johannes | Johannes |
| [FLINK-1587](https://issues.apache.org/jira/browse/FLINK-1587) | coGroup throws NoSuchElementException on iterator.next() |  Major | Gelly | Carsten Brandt | Andra Lungu |
| [FLINK-1585](https://issues.apache.org/jira/browse/FLINK-1585) | Fix computation of TaskManager memory for Mini Cluster (tests) |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-1584](https://issues.apache.org/jira/browse/FLINK-1584) | Spurious failure of TaskManagerFailsITCase |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-1582](https://issues.apache.org/jira/browse/FLINK-1582) | SocketStream gets stuck when socket closes |  Major | Streaming | Márton Balassi | Mingliang Qi |
| [FLINK-1580](https://issues.apache.org/jira/browse/FLINK-1580) | Cleanup TaskManager initialization logic |  Major | . | Till Rohrmann | Stephan Ewen |
| [FLINK-1578](https://issues.apache.org/jira/browse/FLINK-1578) | Overhaul BLOB manager |  Major | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-1574](https://issues.apache.org/jira/browse/FLINK-1574) | Flink fails due to non-initialized RuntimeContext in CombiningUnilateralSortMerger |  Critical | Local Runtime | Fabian Hueske |  |
| [FLINK-1569](https://issues.apache.org/jira/browse/FLINK-1569) | Object reuse mode is not working with KeySelector functions. |  Major | Java API | Robert Metzger | Aljoscha Krettek |
| [FLINK-1563](https://issues.apache.org/jira/browse/FLINK-1563) | NullPointer during state update call |  Major | JobManager | Stephan Ewen | Till Rohrmann |
| [FLINK-1559](https://issues.apache.org/jira/browse/FLINK-1559) | Normalize all Akka URLs to use IP addresses, not hostnames |  Major | Distributed Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1556](https://issues.apache.org/jira/browse/FLINK-1556) | JobClient does not wait until a job failed completely if submission exception |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-1547](https://issues.apache.org/jira/browse/FLINK-1547) | Disable automated ApplicationMaster restart |  Major | YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-1546](https://issues.apache.org/jira/browse/FLINK-1546) | Failed job causes JobManager to shutdown due to uncatched WebFrontend exception |  Major | JobManager | Robert Metzger |  |
| [FLINK-1545](https://issues.apache.org/jira/browse/FLINK-1545) | Spurious failure of AsynchronousFileIOChannelsTest.testExceptionForwardsToClose |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-1542](https://issues.apache.org/jira/browse/FLINK-1542) | Test case at BlobUtilsTest should not assume user could not create new item in root directory |  Major | . | Henry Saputra | Henry Saputra |
| [FLINK-1540](https://issues.apache.org/jira/browse/FLINK-1540) | JobManagerFailsITCase Startup timed out on travis |  Critical | JobManager | Robert Metzger |  |
| [FLINK-1535](https://issues.apache.org/jira/browse/FLINK-1535) | Use usercode class loader to serialize/deserialize accumulators |  Blocker | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-1532](https://issues.apache.org/jira/browse/FLINK-1532) | AggregatorsITCase fails spuriously |  Major | . | Till Rohrmann | Stephan Ewen |
| [FLINK-1531](https://issues.apache.org/jira/browse/FLINK-1531) | Custom Kryo Serializer fails in itertation scenario |  Minor | Iterations | Johannes |  |
| [FLINK-1499](https://issues.apache.org/jira/browse/FLINK-1499) | Make TaskManager to disconnect from JobManager in case of a restart |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-1498](https://issues.apache.org/jira/browse/FLINK-1498) | Spurious failures on Travis for I/O heavy tasks |  Minor | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-1492](https://issues.apache.org/jira/browse/FLINK-1492) | Exceptions on shutdown concerning BLOB store cleanup |  Major | JobManager, TaskManager | Stephan Ewen | Ufuk Celebi |
| [FLINK-1490](https://issues.apache.org/jira/browse/FLINK-1490) | Incorrect local output sort for tuple position keys with nested tuples |  Major | Java API | Fabian Hueske | Fabian Hueske |
| [FLINK-1489](https://issues.apache.org/jira/browse/FLINK-1489) | Failing JobManager due to blocking calls in Execution.scheduleOrUpdateConsumers |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-1488](https://issues.apache.org/jira/browse/FLINK-1488) | JobManager web interface logfile access broken |  Major | YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-1487](https://issues.apache.org/jira/browse/FLINK-1487) | Failing SchedulerIsolatedTasksTest.testScheduleQueueing test case |  Major | JobManager | Till Rohrmann | Till Rohrmann |
| [FLINK-1485](https://issues.apache.org/jira/browse/FLINK-1485) | Typo in Documentation - Join with Join-Function |  Trivial | Documentation | Johannes | Johannes |
| [FLINK-1484](https://issues.apache.org/jira/browse/FLINK-1484) | JobManager restart does not notify the TaskManager |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-1483](https://issues.apache.org/jira/browse/FLINK-1483) | Temporary channel files are not properly deleted when Flink is terminated |  Major | TaskManager | Till Rohrmann | Stephan Ewen |
| [FLINK-1479](https://issues.apache.org/jira/browse/FLINK-1479) | The spawned threads in the sorter have no context class loader |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1475](https://issues.apache.org/jira/browse/FLINK-1475) | Minimize log output of yarn test cases |  Minor | . | Till Rohrmann | Robert Metzger |
| [FLINK-1471](https://issues.apache.org/jira/browse/FLINK-1471) | Allow KeySelectors to implement ResultTypeQueryable |  Major | Java API | Robert Metzger | Timo Walther |
| [FLINK-1465](https://issues.apache.org/jira/browse/FLINK-1465) | GlobalBufferPool reports negative memory allocation |  Major | Local Runtime, TaskManager | Robert Metzger | Stephan Ewen |
| [FLINK-1455](https://issues.apache.org/jira/browse/FLINK-1455) | ExternalSortLargeRecordsITCase.testSortWithShortMediumAndLargeRecords: Potential Memory leak |  Minor | Local Runtime | Robert Metzger | Stephan Ewen |
| [FLINK-1454](https://issues.apache.org/jira/browse/FLINK-1454) | CliFrontend blocks for 100 seconds when submitting to a non-existent JobManager |  Major | JobManager | Robert Metzger | Stephan Ewen |
| [FLINK-1453](https://issues.apache.org/jira/browse/FLINK-1453) | Integration tests for YARN failing on OS X |  Major | YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-1446](https://issues.apache.org/jira/browse/FLINK-1446) | Make KryoSerializer.createInstance() return new instances instead of null |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-1442](https://issues.apache.org/jira/browse/FLINK-1442) | Archived Execution Graph consumes too much memory |  Major | JobManager | Stephan Ewen | Maximilian Michels |
| [FLINK-1440](https://issues.apache.org/jira/browse/FLINK-1440) | Missing plan visualizer image for http://flink.apache.org/docs/0.8/programming\_guide.html page |  Major | Project Website | Henry Saputra | Stephan Ewen |
| [FLINK-1438](https://issues.apache.org/jira/browse/FLINK-1438) | ClassCastException for Custom InputSplit in local mode and invalid type code in distributed mode |  Minor | JobManager | Fabian Hueske | Stephan Ewen |
| [FLINK-1437](https://issues.apache.org/jira/browse/FLINK-1437) | Bug in PojoSerializer's copy() method |  Major | Java API | Timo Walther | Timo Walther |
| [FLINK-1432](https://issues.apache.org/jira/browse/FLINK-1432) | CombineTaskTest.testCancelCombineTaskSorting sometimes fails |  Major | . | Robert Metzger | Stephan Ewen |
| [FLINK-1424](https://issues.apache.org/jira/browse/FLINK-1424) | bin/flink run does not recognize -c parameter anymore |  Major | TaskManager | Carsten Brandt | Maximilian Michels |
| [FLINK-1419](https://issues.apache.org/jira/browse/FLINK-1419) | DistributedCache doesn't preserver files for subsequent operations |  Major | . | Chesnay Schepler | Chesnay Schepler |
| [FLINK-1416](https://issues.apache.org/jira/browse/FLINK-1416) | Dependency versions in quickstart archetypes are wrong |  Major | Quickstarts | Stephan Ewen | Stephan Ewen |
| [FLINK-1411](https://issues.apache.org/jira/browse/FLINK-1411) | PlanVisualizer is not working |  Minor | . | Till Rohrmann | Stephan Ewen |
| [FLINK-1405](https://issues.apache.org/jira/browse/FLINK-1405) | Startup fails under Windows |  Major | Distributed Runtime | Thomas Jejkal | Fabian Hueske |
| [FLINK-1397](https://issues.apache.org/jira/browse/FLINK-1397) | JobManager web interface log file access doesn't work on YARN |  Major | YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-1396](https://issues.apache.org/jira/browse/FLINK-1396) | Add hadoop input formats directly to the user API. |  Minor | . | Robert Metzger | Aljoscha Krettek |
| [FLINK-1386](https://issues.apache.org/jira/browse/FLINK-1386) | Java Quickstart Fails to import properly in Eclipse |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-1385](https://issues.apache.org/jira/browse/FLINK-1385) | Add option to YARN client to disable resource availability checks |  Major | YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-1384](https://issues.apache.org/jira/browse/FLINK-1384) | Web Infoserver has unused JS libraries |  Minor | Webfrontend | Stephan Ewen | Stephan Ewen |
| [FLINK-1382](https://issues.apache.org/jira/browse/FLINK-1382) | Void is not added to TypeInfoParser |  Minor | Java API | Felix Neutatz | Timo Walther |
| [FLINK-1378](https://issues.apache.org/jira/browse/FLINK-1378) | could not find implicit value for evidence parameter of type TypeInformation |  Major | Scala API | John Sandiford | Aljoscha Krettek |
| [FLINK-1372](https://issues.apache.org/jira/browse/FLINK-1372) | TaskManager and JobManager do not log startup settings any more |  Major | JobManager, TaskManager | Stephan Ewen | Till Rohrmann |
| [FLINK-1371](https://issues.apache.org/jira/browse/FLINK-1371) | KryoSerializer swallows/wraps IOExceptions |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1366](https://issues.apache.org/jira/browse/FLINK-1366) | TextValueInputFormat ASCII FastPath is never used |  Minor | . | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-1365](https://issues.apache.org/jira/browse/FLINK-1365) | ValueTypeInfo is not Creating Correct TypeComparator |  Minor | . | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-1361](https://issues.apache.org/jira/browse/FLINK-1361) | log file name of JobManager changed |  Minor | JobManager | Maximilian Michels |  |
| [FLINK-1357](https://issues.apache.org/jira/browse/FLINK-1357) | Unsupported Union between static and dynamic path in Iterations |  Major | Distributed Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1354](https://issues.apache.org/jira/browse/FLINK-1354) | Disproportionally long TransitiveClosureITCase |  Minor | Examples | Stephan Ewen | Kostas Tzoumas |
| [FLINK-1353](https://issues.apache.org/jira/browse/FLINK-1353) | Execution always uses DefaultAkkaAskTimeout, rather than the configured value |  Major | JobManager | Stephan Ewen | Till Rohrmann |
| [FLINK-1352](https://issues.apache.org/jira/browse/FLINK-1352) | Buggy registration from TaskManager to JobManager |  Major | JobManager, TaskManager | Stephan Ewen | Till Rohrmann |
| [FLINK-1349](https://issues.apache.org/jira/browse/FLINK-1349) | Cleanups of recently added Akka code |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-1346](https://issues.apache.org/jira/browse/FLINK-1346) | Add akka parameters to the configuration |  Major | Documentation | Stephan Ewen | Till Rohrmann |
| [FLINK-1343](https://issues.apache.org/jira/browse/FLINK-1343) | Branching Join Program Deadlocks |  Major | Distributed Runtime | Fabian Hueske |  |
| [FLINK-1342](https://issues.apache.org/jira/browse/FLINK-1342) | Quickstart's assembly can possibly filter out user's code |  Critical | . | Márton Balassi | Robert Metzger |
| [FLINK-1332](https://issues.apache.org/jira/browse/FLINK-1332) | Possible deadlock with two broadcast sets |  Major | Distributed Runtime | Sebastian Schelter |  |
| [FLINK-1326](https://issues.apache.org/jira/browse/FLINK-1326) | The output serializers may consume excessive memory |  Major | Distributed Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1300](https://issues.apache.org/jira/browse/FLINK-1300) | Duplicate class DataInputViewStream |  Minor | Java API | Stephan Ewen | Stephan Ewen |
| [FLINK-1296](https://issues.apache.org/jira/browse/FLINK-1296) | Add support for very large record for sorting |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1260](https://issues.apache.org/jira/browse/FLINK-1260) | Add custom partitioning to documentation |  Minor | Documentation, Java API, Scala API | Fabian Hueske | Robert Metzger |
| [FLINK-1259](https://issues.apache.org/jira/browse/FLINK-1259) | FilterFunction can modify data |  Major | Java API, Optimizer, Scala API | Fabian Hueske | Stephan Ewen |
| [FLINK-1255](https://issues.apache.org/jira/browse/FLINK-1255) | Problems with generic types in Scala API |  Major | Scala API | Sebastian Schelter | Aljoscha Krettek |
| [FLINK-1246](https://issues.apache.org/jira/browse/FLINK-1246) | Flaky test RecoveryITCase |  Minor | Distributed Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1206](https://issues.apache.org/jira/browse/FLINK-1206) | Add option to the web client to specify default parallelism for a program |  Minor | Webfrontend | Stephan Ewen | Mingliang Qi |
| [FLINK-1193](https://issues.apache.org/jira/browse/FLINK-1193) | InvalidTypesException for Array[Array[Tuple2[Int, Double]]] |  Major | . | Till Rohrmann | Timo Walther |
| [FLINK-1169](https://issues.apache.org/jira/browse/FLINK-1169) | Join Hint Specification in .join() Function is not Documented |  Major | Java API, Scala API | Aljoscha Krettek | Stephan Ewen |
| [FLINK-1162](https://issues.apache.org/jira/browse/FLINK-1162) | Cannot serialize Scala classes with Avro serializer |  Major | Local Runtime, Scala API | Till Rohrmann |  |
| [FLINK-1141](https://issues.apache.org/jira/browse/FLINK-1141) | Selfjoin fails after DataSet exceeds certain size |  Minor | Distributed Runtime, Local Runtime | Robert Waury |  |
| [FLINK-1090](https://issues.apache.org/jira/browse/FLINK-1090) | Join deadlocks when used inside Delta iteration |  Major | Distributed Runtime, Iterations, Scala API | Stefan Bunk |  |
| [FLINK-1088](https://issues.apache.org/jira/browse/FLINK-1088) | Iteration head deadlock |  Major | Iterations | Márton Balassi |  |
| [FLINK-1018](https://issues.apache.org/jira/browse/FLINK-1018) | Logistic Regression deadlocks |  Major | . | Markus Holzemer |  |
| [FLINK-1013](https://issues.apache.org/jira/browse/FLINK-1013) | ArithmeticException: / by zero in MutableHashTable |  Major | . | Till Rohrmann | Stephan Ewen |
| [FLINK-997](https://issues.apache.org/jira/browse/FLINK-997) | NullPointerException in BinaryUnionReplacer for unions in iterations |  Major | Local Runtime | Till Rohrmann | Stephan Ewen |
| [FLINK-988](https://issues.apache.org/jira/browse/FLINK-988) | ExtendedManagementProtocol.getAvailableSlots() returns non-serializable type |  Minor | JobManager | Robert Metzger |  |
| [FLINK-952](https://issues.apache.org/jira/browse/FLINK-952) | TypeExtractor requires the argument types of the UDF to be identical to the parameter types |  Major | Local Runtime | Till Rohrmann |  |
| [FLINK-333](https://issues.apache.org/jira/browse/FLINK-333) | Respect CrossWithSmall and CrossWithLarge hints |  Critical | Java API, Optimizer, Scala API | Fabian Hueske | Stephan Ewen |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2087](https://issues.apache.org/jira/browse/FLINK-2087) | Add streaming mode to YARN as well |  Major | YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-2056](https://issues.apache.org/jira/browse/FLINK-2056) | Add guide to create a chainable predictor in docs |  Minor | Machine Learning Library | Theodore Vasiloudis | Theodore Vasiloudis |
| [FLINK-1879](https://issues.apache.org/jira/browse/FLINK-1879) | Simplify JobClient |  Major | Distributed Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1802](https://issues.apache.org/jira/browse/FLINK-1802) | BlobManager directories should be checked before TaskManager startup |  Major | TaskManager | Stephan Ewen | Stephan Ewen |
| [FLINK-1792](https://issues.apache.org/jira/browse/FLINK-1792) | Improve TM Monitoring: CPU utilization, hide graphs by default and show summary only |  Major | Webfrontend | Robert Metzger | Sachin Bhat |
| [FLINK-1669](https://issues.apache.org/jira/browse/FLINK-1669) | Streaming tests for recovery with distributed process failure |  Major | Streaming | Márton Balassi | Márton Balassi |
| [FLINK-1501](https://issues.apache.org/jira/browse/FLINK-1501) | Integrate metrics library and report basic metrics to JobManager web interface |  Major | JobManager, TaskManager | Robert Metzger | Robert Metzger |
| [FLINK-1395](https://issues.apache.org/jira/browse/FLINK-1395) | Add Jodatime support to Kryo |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-1392](https://issues.apache.org/jira/browse/FLINK-1392) | Serializing Protobuf - issue 1 |  Minor | . | Felix Neutatz | Robert Metzger |
| [FLINK-1391](https://issues.apache.org/jira/browse/FLINK-1391) | Kryo fails to properly serialize avro collection types |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-1303](https://issues.apache.org/jira/browse/FLINK-1303) | HadoopInputFormat does not work with Scala API |  Major | Scala API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-1105](https://issues.apache.org/jira/browse/FLINK-1105) | Add support for locally sorted output |  Minor | Java API | Fabian Hueske | Fabian Hueske |
| [FLINK-441](https://issues.apache.org/jira/browse/FLINK-441) | Renaming in pact-compiler |  Minor | . | GitHub Import | Stephan Ewen |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1976](https://issues.apache.org/jira/browse/FLINK-1976) | Add ForwardedFields\* hints for the  optimizer |  Major | Gelly | Andra Lungu | Andra Lungu |
| [FLINK-1271](https://issues.apache.org/jira/browse/FLINK-1271) | Extend HadoopOutputFormat and HadoopInputFormat to handle Void.class |  Minor | Hadoop Compatibility | Felix Neutatz | Felix Neutatz |
| [FLINK-2092](https://issues.apache.org/jira/browse/FLINK-2092) | Document (new) behavior of print() and execute() |  Blocker | Documentation | Robert Metzger | Robert Metzger |
| [FLINK-2052](https://issues.apache.org/jira/browse/FLINK-2052) | Clear up Serializable warnings in streaming operators |  Minor | Streaming | Gyula Fora | Aljoscha Krettek |
| [FLINK-1993](https://issues.apache.org/jira/browse/FLINK-1993) | Replace MultipleLinearRegression's custom SGD with optimization framework's SGD |  Minor | Machine Learning Library | Till Rohrmann | Till Rohrmann |
| [FLINK-1941](https://issues.apache.org/jira/browse/FLINK-1941) | Add documentation for Gelly-GSA |  Major | Gelly | Vasia Kalavri | Vasia Kalavri |
| [FLINK-1923](https://issues.apache.org/jira/browse/FLINK-1923) | Replace asynchronous logging in JobManager with regular slf4j logging |  Major | JobManager | Robert Metzger | Till Rohrmann |
| [FLINK-1874](https://issues.apache.org/jira/browse/FLINK-1874) | Break up streaming connectors into submodules |  Major | Build System, Streaming | Robert Metzger | Márton Balassi |
| [FLINK-1800](https://issues.apache.org/jira/browse/FLINK-1800) | Add a "Beta" badge in the documentation to components in flink-staging |  Minor | Documentation | Robert Metzger | Robert Metzger |
| [FLINK-1693](https://issues.apache.org/jira/browse/FLINK-1693) | Deprecate the Spargel API |  Major | Spargel | Vasia Kalavri | Henry Saputra |
| [FLINK-1679](https://issues.apache.org/jira/browse/FLINK-1679) | Document how "degree of parallelism" /  "parallelism" / "slots" are connected to each other |  Major | Documentation | Robert Metzger | Maximilian Michels |
| [FLINK-1659](https://issues.apache.org/jira/browse/FLINK-1659) | Rename classes and packages that contains Pact |  Minor | . | Henry Saputra | Stephan Ewen |
| [FLINK-1592](https://issues.apache.org/jira/browse/FLINK-1592) | Refactor StreamGraph to store vertex IDs as Integers instead of Strings |  Minor | Streaming | Gyula Fora | Gyula Fora |
| [FLINK-1462](https://issues.apache.org/jira/browse/FLINK-1462) | Add documentation guide for the graph API |  Major | Documentation | Vasia Kalavri | Vasia Kalavri |
| [FLINK-1414](https://issues.apache.org/jira/browse/FLINK-1414) | Remove quickstart-\*.sh from git source and put them to the website's svn |  Minor | Project Website | Robert Metzger | Robert Metzger |


