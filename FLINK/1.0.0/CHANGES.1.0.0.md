
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

## Release 1.0.0 - Unreleased (as of 2015-11-23)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2955](https://issues.apache.org/jira/browse/FLINK-2955) | Add operations introduction in Table API page. |  Minor | Documentation | Chengxiang Li | Chengxiang Li |
| [FLINK-2951](https://issues.apache.org/jira/browse/FLINK-2951) | Add Union operator to Table API. |  Minor | Documentation, Table API | Chengxiang Li | Chengxiang Li |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3040](https://issues.apache.org/jira/browse/FLINK-3040) | Add docs describing how to configure State Backends |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-3028](https://issues.apache.org/jira/browse/FLINK-3028) | Cannot cancel restarting job via web frontend |  Major | Webfrontend | Ufuk Celebi |  |
| [FLINK-3017](https://issues.apache.org/jira/browse/FLINK-3017) | Broken 'Slots' link on Streaming Programming Guide |  Minor | Documentation | Suneel Marthi | Suneel Marthi |
| [FLINK-2994](https://issues.apache.org/jira/browse/FLINK-2994) | Client sysout logging does not report exceptions |  Major | Command-line client | Stephan Ewen | Stephan Ewen |
| [FLINK-2981](https://issues.apache.org/jira/browse/FLINK-2981) | Update README for building docs |  Minor | Documentation | Martin Junghanns | Martin Junghanns |
| [FLINK-2974](https://issues.apache.org/jira/browse/FLINK-2974) | Add periodic offset commit to Kafka Consumer if checkpointing is disabled |  Major | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-2966](https://issues.apache.org/jira/browse/FLINK-2966) | Improve the way job duration is reported on web frontend. |  Minor | Webfrontend | Sachin Goel | Sachin Goel |
| [FLINK-2932](https://issues.apache.org/jira/browse/FLINK-2932) | Flink quickstart docs should ask users to download from https, not http |  Minor | Documentation | Frederick F. Kautz IV |  |
| [FLINK-2902](https://issues.apache.org/jira/browse/FLINK-2902) | Web interface sort tasks newest first |  Minor | Webfrontend | Greg Hogan | Sachin Goel |
| [FLINK-2898](https://issues.apache.org/jira/browse/FLINK-2898) | Invert Travis CI build order |  Trivial | Build System | Greg Hogan | Robert Metzger |
| [FLINK-2895](https://issues.apache.org/jira/browse/FLINK-2895) | Duplicate immutable object creation |  Minor | Distributed Runtime | Greg Hogan | Greg Hogan |
| [FLINK-2893](https://issues.apache.org/jira/browse/FLINK-2893) | Rename recovery configuration keys |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2017](https://issues.apache.org/jira/browse/FLINK-2017) | Add predefined required parameters to ParameterTool |  Major | . | Robert Metzger | Martin Liesenberg |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3052](https://issues.apache.org/jira/browse/FLINK-3052) | Optimizer does not push properties out of bulk iterations |  Major | Optimizer | Till Rohrmann | Till Rohrmann |
| [FLINK-3048](https://issues.apache.org/jira/browse/FLINK-3048) | DataSinkTaskTest.testCancelDataSinkTask |  Critical | Tests | Matthias J. Sax | Stephan Ewen |
| [FLINK-3043](https://issues.apache.org/jira/browse/FLINK-3043) | Kafka Connector description in Streaming API guide is wrong/outdated |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-3032](https://issues.apache.org/jira/browse/FLINK-3032) | Flink does not start on Hadoop 2.7.1 (HDP), due to class conflict |  Critical | Build System | Robert Metzger | Robert Metzger |
| [FLINK-3025](https://issues.apache.org/jira/browse/FLINK-3025) | Flink Kafka consumer may get stuck due to Kafka/Zookeeper client bug |  Critical | Streaming Connectors | Gyula Fora | Stephan Ewen |
| [FLINK-3024](https://issues.apache.org/jira/browse/FLINK-3024) | TimestampExtractor Does not Work When returning Long.MIN\_VALUE |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3022](https://issues.apache.org/jira/browse/FLINK-3022) | Broken link 'Working With State' in Fault Tolerance Section of Stream Programming Guide |  Major | Documentation | Suneel Marthi | Suneel Marthi |
| [FLINK-3020](https://issues.apache.org/jira/browse/FLINK-3020) | Local streaming execution: set number of task manager slots to the maximum parallelism |  Minor | Local Runtime | Maximilian Michels | Maximilian Michels |
| [FLINK-3019](https://issues.apache.org/jira/browse/FLINK-3019) | CLI does not list running/restarting jobs |  Minor | Command-line client | Ufuk Celebi |  |
| [FLINK-3013](https://issues.apache.org/jira/browse/FLINK-3013) | Incorrect package declaration in GellyScalaAPICompletenessTest.scala |  Major | Gelly, Scala API | Suneel Marthi | Suneel Marthi |
| [FLINK-3011](https://issues.apache.org/jira/browse/FLINK-3011) | Cannot cancel failing/restarting streaming job from the command line |  Critical | Command-line client | Gyula Fora | Ufuk Celebi |
| [FLINK-3005](https://issues.apache.org/jira/browse/FLINK-3005) | Commons-collections object deserialization remote command execution vulnerability |  Major | . | Ted Yu | Ted Yu |
| [FLINK-2992](https://issues.apache.org/jira/browse/FLINK-2992) | New Windowing code is using SerializationUtils with wrong classloader |  Critical | Streaming | Robert Metzger | Robert Metzger |
| [FLINK-2990](https://issues.apache.org/jira/browse/FLINK-2990) | Scala 2.11 build fails to start on YARN |  Major | Build System, YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-2989](https://issues.apache.org/jira/browse/FLINK-2989) | Job Cancel button doesn't work on Yarn |  Major | Webfrontend | Sachin Goel | Maximilian Michels |
| [FLINK-2987](https://issues.apache.org/jira/browse/FLINK-2987) | Flink 0.10 fails to start on YARN 2.6.0 |  Major | Build System, YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-2979](https://issues.apache.org/jira/browse/FLINK-2979) | RollingSink does not work with Hadoop 2.7.1 |  Major | Streaming Connectors | Till Rohrmann | Aljoscha Krettek |
| [FLINK-2977](https://issues.apache.org/jira/browse/FLINK-2977) | Cannot access HBase in a Kerberos secured Yarn cluster |  Major | YARN Client | Niels Basjes | Niels Basjes |
| [FLINK-2967](https://issues.apache.org/jira/browse/FLINK-2967) | TM address detection might not always detect the right interface on slow networks / overloaded JMs |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-2958](https://issues.apache.org/jira/browse/FLINK-2958) | StreamingJobGraphGenerator sets hard coded number execution retry |  Major | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2942](https://issues.apache.org/jira/browse/FLINK-2942) | Dangling operators in web UI's program visualization (non-deterministic) |  Critical | Webfrontend | Fabian Hueske | Piotr Godek |
| [FLINK-2938](https://issues.apache.org/jira/browse/FLINK-2938) | Streaming docs not in sync with latest state changes |  Minor | Documentation | Maximilian Michels | Stephan Ewen |
| [FLINK-2937](https://issues.apache.org/jira/browse/FLINK-2937) | Typo in Quickstart-\>Scala API-\>Alternative Build Tools: SBT |  Trivial | Documentation | Theodore Vasiloudis | Chesnay Schepler |
| [FLINK-2934](https://issues.apache.org/jira/browse/FLINK-2934) | Remove placehoder pages in Web dashboard |  Major | . | Sachin Goel | Sachin Goel |
| [FLINK-2930](https://issues.apache.org/jira/browse/FLINK-2930) | ExecutionConfig execution retry delay not respected |  Major | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2914](https://issues.apache.org/jira/browse/FLINK-2914) | Missing break in ZooKeeperSubmittedJobGraphStore#SubmittedJobGraphsPathCacheListener#childEvent() |  Minor | . | Ted Yu | Chesnay Schepler |
| [FLINK-2913](https://issues.apache.org/jira/browse/FLINK-2913) | Close of ObjectOutputStream should be enclosed in finally block in FsStateBackend |  Minor | . | Ted Yu | Ted Yu |
| [FLINK-2879](https://issues.apache.org/jira/browse/FLINK-2879) | Links in documentation are broken |  Minor | website | Nikolaas Steenbergen | Andra Lungu |
| [FLINK-2827](https://issues.apache.org/jira/browse/FLINK-2827) | Potential resource leak in TwitterSource#loadAuthenticationProperties() |  Minor | . | Ted Yu | Saumitra Shahapure |
| [FLINK-2826](https://issues.apache.org/jira/browse/FLINK-2826) | transformed is modified in BroadcastVariableMaterialization#decrementReferenceInternal without proper locking |  Major | . | Ted Yu | Ted Yu |
| [FLINK-2800](https://issues.apache.org/jira/browse/FLINK-2800) | kryo serialization problem |  Major | Type Serialization System | Stefano Bortoli | Till Rohrmann |
| [FLINK-2797](https://issues.apache.org/jira/browse/FLINK-2797) | CLI: Missing option to submit jobs in detached mode |  Major | Command-line client | Maximilian Michels | Sachin Goel |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2919](https://issues.apache.org/jira/browse/FLINK-2919) | Apply JMH on FieldAccessMinibenchmark class. |  Minor | Tests | GaoLun | GaoLun |
| [FLINK-2890](https://issues.apache.org/jira/browse/FLINK-2890) | Apply JMH on StringSerializationSpeedBenchmark class. |  Minor | Tests | GaoLun | GaoLun |
| [FLINK-2889](https://issues.apache.org/jira/browse/FLINK-2889) | Apply JMH on LongSerializationSpeedBenchmark class |  Minor | Tests | GaoLun | GaoLun |
| [FLINK-2853](https://issues.apache.org/jira/browse/FLINK-2853) | Apply JMH on MutableHashTablePerformanceBenchmark class. |  Minor | Tests | GaoLun | GaoLun |
| [FLINK-2850](https://issues.apache.org/jira/browse/FLINK-2850) | Limit the types of jobs which can run in detached mode |  Major | . | Sachin Goel | Sachin Goel |
| [FLINK-1982](https://issues.apache.org/jira/browse/FLINK-1982) | Remove dependencies on Record for Flink runtime and core |  Major | Core | Henry Saputra | Fabian Hueske |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2429](https://issues.apache.org/jira/browse/FLINK-2429) | Remove the "enableCheckpointing()" without interval variant |  Minor | Streaming | Stephan Ewen | Stephan Ewen |


