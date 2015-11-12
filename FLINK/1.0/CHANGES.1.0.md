
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

## Release 1.0 - Unreleased (as of 2015-11-12)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2951](https://issues.apache.org/jira/browse/FLINK-2951) | Add Union operator to Table API. |  Minor | Documentation, Table API | Chengxiang Li | Chengxiang Li |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2994](https://issues.apache.org/jira/browse/FLINK-2994) | Client sysout logging does not report exceptions |  Major | Command-line client | Stephan Ewen | Stephan Ewen |
| [FLINK-2981](https://issues.apache.org/jira/browse/FLINK-2981) | Update README for building docs |  Minor | Documentation | Martin Junghanns | Martin Junghanns |
| [FLINK-2966](https://issues.apache.org/jira/browse/FLINK-2966) | Improve the way job duration is reported on web frontend. |  Minor | Webfrontend | Sachin Goel | Sachin Goel |
| [FLINK-2932](https://issues.apache.org/jira/browse/FLINK-2932) | Flink quickstart docs should ask users to download from https, not http |  Minor | Documentation | Frederick F. Kautz IV |  |
| [FLINK-2902](https://issues.apache.org/jira/browse/FLINK-2902) | Web interface sort tasks newest first |  Minor | Webfrontend | Greg Hogan | Sachin Goel |
| [FLINK-2898](https://issues.apache.org/jira/browse/FLINK-2898) | Invert Travis CI build order |  Trivial | Build System | Greg Hogan | Robert Metzger |
| [FLINK-2895](https://issues.apache.org/jira/browse/FLINK-2895) | Duplicate immutable object creation |  Minor | Distributed Runtime | Greg Hogan | Greg Hogan |
| [FLINK-2893](https://issues.apache.org/jira/browse/FLINK-2893) | Rename recovery configuration keys |  Major | . | Ufuk Celebi | Ufuk Celebi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2992](https://issues.apache.org/jira/browse/FLINK-2992) | New Windowing code is using SerializationUtils with wrong classloader |  Critical | Streaming | Robert Metzger | Robert Metzger |
| [FLINK-2990](https://issues.apache.org/jira/browse/FLINK-2990) | Scala 2.11 build fails to start on YARN |  Major | Build System, YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-2987](https://issues.apache.org/jira/browse/FLINK-2987) | Flink 0.10 fails to start on YARN 2.6.0 |  Major | Build System, YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-2979](https://issues.apache.org/jira/browse/FLINK-2979) | RollingSink does not work with Hadoop 2.7.1 |  Major | Streaming Connectors | Till Rohrmann | Aljoscha Krettek |
| [FLINK-2958](https://issues.apache.org/jira/browse/FLINK-2958) | StreamingJobGraphGenerator sets hard coded number execution retry |  Major | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2938](https://issues.apache.org/jira/browse/FLINK-2938) | Streaming docs not in sync with latest state changes |  Minor | Documentation | Maximilian Michels | Stephan Ewen |
| [FLINK-2934](https://issues.apache.org/jira/browse/FLINK-2934) | Remove placehoder pages in Web dashboard |  Major | . | Sachin Goel | Sachin Goel |
| [FLINK-2930](https://issues.apache.org/jira/browse/FLINK-2930) | ExecutionConfig execution retry delay not respected |  Major | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2827](https://issues.apache.org/jira/browse/FLINK-2827) | Potential resource leak in TwitterSource#loadAuthenticationProperties() |  Minor | . | Ted Yu | Saumitra Shahapure |
| [FLINK-2826](https://issues.apache.org/jira/browse/FLINK-2826) | transformed is modified in BroadcastVariableMaterialization#decrementReferenceInternal without proper locking |  Major | . | Ted Yu | Ted Yu |
| [FLINK-2800](https://issues.apache.org/jira/browse/FLINK-2800) | kryo serialization problem |  Major | Type Serialization System | Stefano Bortoli | Till Rohrmann |


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
| [FLINK-1982](https://issues.apache.org/jira/browse/FLINK-1982) | Remove dependencies on Record for Flink runtime and core |  Major | Core | Henry Saputra | Fabian Hueske |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


