
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

## Release 0.7.0-incubating - 2014-10-26

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1038](https://issues.apache.org/jira/browse/FLINK-1038) | Adding a collection output format |  Minor | . | Sebastian Kruse |  |
| [FLINK-908](https://issues.apache.org/jira/browse/FLINK-908) | Add support for POJO objects |  Major | Java API | GitHub Import | Robert Metzger |
| [FLINK-612](https://issues.apache.org/jira/browse/FLINK-612) | Add Java 8 Lambda support to new Java API |  Major | Java API | GitHub Import |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1148](https://issues.apache.org/jira/browse/FLINK-1148) | Create a writeAsCsv(path, writemode) variant |  Minor | Java API, Scala API | Stephan Ewen | Stephan Ewen |
| [FLINK-1123](https://issues.apache.org/jira/browse/FLINK-1123) | Add First-N operator to Scala API |  Blocker | Scala API | Fabian Hueske | Aljoscha Krettek |
| [FLINK-1111](https://issues.apache.org/jira/browse/FLINK-1111) | Move Basic and Array Type Information into "flink-core" Project |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-1110](https://issues.apache.org/jira/browse/FLINK-1110) | Add a serial collection-based execution mode |  Minor | . | Stephan Ewen | Stephan Ewen |
| [FLINK-1094](https://issues.apache.org/jira/browse/FLINK-1094) | Simplify input split assignments |  Minor | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-1079](https://issues.apache.org/jira/browse/FLINK-1079) | Inconsistent parameter naming in MapPartitionFunction |  Trivial | Local Runtime | Fabian Hueske | Stephan Ewen |
| [FLINK-1078](https://issues.apache.org/jira/browse/FLINK-1078) | FileOutputFormat and PrintingOutputFormat index partitions differently |  Trivial | Local Runtime | Fabian Hueske | Stephan Ewen |
| [FLINK-1062](https://issues.apache.org/jira/browse/FLINK-1062) | Type Extraction for Lambdas |  Major | Java API | Stephan Ewen | Timo Walther |
| [FLINK-1056](https://issues.apache.org/jira/browse/FLINK-1056) | Build jar in generated archetypes using the maven-assembly-plugin |  Minor | Build System | Robert Metzger | Aljoscha Krettek |
| [FLINK-1053](https://issues.apache.org/jira/browse/FLINK-1053) | Add a "mapPartition" operator. |  Major | Java API, Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1050](https://issues.apache.org/jira/browse/FLINK-1050) | Local setup for Windows documentation lacks hint for Java setup |  Major | Project Website | Fabian Hueske | Fabian Hueske |
| [FLINK-1029](https://issues.apache.org/jira/browse/FLINK-1029) | Attach slot information to scheduling/assignment information in Scheduler |  Major | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-1025](https://issues.apache.org/jira/browse/FLINK-1025) | Improve BLOB Service |  Major | JobManager | Stephan Ewen | Daniel Warneke |
| [FLINK-1020](https://issues.apache.org/jira/browse/FLINK-1020) | Add minBy() and maxBy() selection functions |  Minor | Java API | Stephan Ewen | Tobias |
| [FLINK-1006](https://issues.apache.org/jira/browse/FLINK-1006) | Add support for MapR file system |  Minor | Distributed Runtime | Daniel Warneke | Daniel Warneke |
| [FLINK-968](https://issues.apache.org/jira/browse/FLINK-968) | Add a yarn session parameter for the number of task slots per task manager |  Critical | YARN Client | Stephan Ewen | Robert Metzger |
| [FLINK-956](https://issues.apache.org/jira/browse/FLINK-956) | Add a parameter to the YARN command line script that allows to define the amount of MemoryManager memory |  Major | YARN Client | Stephan Ewen | Robert Metzger |
| [FLINK-953](https://issues.apache.org/jira/browse/FLINK-953) | Don't show fake tail information in webfrontend |  Minor | Webfrontend | Ufuk Celebi | Stephan Ewen |
| [FLINK-662](https://issues.apache.org/jira/browse/FLINK-662) | JoinFunction with Collector |  Major | . | GitHub Import |  |
| [FLINK-634](https://issues.apache.org/jira/browse/FLINK-634) | Display the number of connected TaskManagers in the YARN console |  Major | YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-514](https://issues.apache.org/jira/browse/FLINK-514) | Fix invalid Javadoc references |  Minor | . | GitHub Import | Daniel Warneke |
| [FLINK-399](https://issues.apache.org/jira/browse/FLINK-399) | convergence criterion in scala API |  Major | . | GitHub Import |  |
| [FLINK-288](https://issues.apache.org/jira/browse/FLINK-288) | Put a performance section on front page of the project's website |  Major | Project Website | Robert Metzger |  |
| [FLINK-165](https://issues.apache.org/jira/browse/FLINK-165) | Rework Nephele Task Hierarchy |  Major | Local Runtime | GitHub Import | Stephan Ewen |
| [FLINK-79](https://issues.apache.org/jira/browse/FLINK-79) | Startup time of jobs |  Minor | Local Runtime | GitHub Import | Stephan Ewen |
| [FLINK-65](https://issues.apache.org/jira/browse/FLINK-65) | Support custom and efficient (in-memory) pre-aggregations (without Combiner) |  Major | . | GitHub Import | Stephan Ewen |
| [FLINK-12](https://issues.apache.org/jira/browse/FLINK-12) | [GitHub] Rework Configuration Objects |  Major | . | GitHub Import | Stephan Ewen |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1171](https://issues.apache.org/jira/browse/FLINK-1171) | Move scala tests to flink-tests project |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-1170](https://issues.apache.org/jira/browse/FLINK-1170) | Localization of InputSplits is not working properly |  Major | Distributed Runtime | Robert Metzger | Robert Metzger |
| [FLINK-1167](https://issues.apache.org/jira/browse/FLINK-1167) | CompilerException caused by NullPointerException |  Minor | . | Maximilian Alber | Stephan Ewen |
| [FLINK-1164](https://issues.apache.org/jira/browse/FLINK-1164) | Uninformative error message when having an identity iteration with the Scala API |  Major | . | Till Rohrmann | Stephan Ewen |
| [FLINK-1152](https://issues.apache.org/jira/browse/FLINK-1152) | Failed task cancellation leads to NullPointerException |  Major | TaskManager | Robert Metzger | Stephan Ewen |
| [FLINK-1150](https://issues.apache.org/jira/browse/FLINK-1150) | FilterNode set estimated data size to unknown |  Major | Optimizer | Fabian Hueske | Fabian Hueske |
| [FLINK-1149](https://issues.apache.org/jira/browse/FLINK-1149) | Operators cannot adapt DOP for NonParallelInputs |  Minor | Java API | Fabian Hueske | Fabian Hueske |
| [FLINK-1143](https://issues.apache.org/jira/browse/FLINK-1143) | Forced to use Solution Set |  Minor | JobManager | Maximilian Alber | Stephan Ewen |
| [FLINK-1134](https://issues.apache.org/jira/browse/FLINK-1134) | On the client side, the JVM does not terminate using RemoteCollectorOutputFormat |  Trivial | Java API | Fabian Tschirschnitz | Fabian Tschirschnitz |
| [FLINK-1133](https://issues.apache.org/jira/browse/FLINK-1133) | Type extractor cannot determine type of function |  Major | Java API | Stephan Ewen | Timo Walther |
| [FLINK-1119](https://issues.apache.org/jira/browse/FLINK-1119) | StreamComponentTest fails with NoResourceAvailableException |  Critical | Streaming | Fabian Hueske | Stephan Ewen |
| [FLINK-1117](https://issues.apache.org/jira/browse/FLINK-1117) | Clean up Avro Project |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-1115](https://issues.apache.org/jira/browse/FLINK-1115) | Spurious Test Failures due to failing file output streams |  Minor | Distributed Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1114](https://issues.apache.org/jira/browse/FLINK-1114) | ScalaStyle prevents projects from being built individually |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-1096](https://issues.apache.org/jira/browse/FLINK-1096) | Unexpected Histogram accumulator behavior |  Trivial | . | Sebastian Kruse | Sebastian Kruse |
| [FLINK-1075](https://issues.apache.org/jira/browse/FLINK-1075) | Race condition in AsynchronousPartialSorterITCase |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-1074](https://issues.apache.org/jira/browse/FLINK-1074) | Project Join fails when input tuple is null |  Major | Java API | Stephan Ewen | Fabian Hueske |
| [FLINK-1073](https://issues.apache.org/jira/browse/FLINK-1073) | SortGroup() does not sort Combiner input |  Critical | Java API | Fabian Hueske | Fabian Hueske |
| [FLINK-1071](https://issues.apache.org/jira/browse/FLINK-1071) | Unknown local strategy 'MAP\_PARTITION' in JSON generator. |  Major | Optimizer | Stephan Ewen | Stephan Ewen |
| [FLINK-1070](https://issues.apache.org/jira/browse/FLINK-1070) | Change return type of "getBroadcastVariable()" from Collection to List |  Minor | Java API | Stephan Ewen | Stephan Ewen |
| [FLINK-1069](https://issues.apache.org/jira/browse/FLINK-1069) | "flink-hadoop-compatibility" fails to build with Hadoop 2.5.0 dependencies |  Major | . | Robert Metzger | Stephan Ewen |
| [FLINK-1067](https://issues.apache.org/jira/browse/FLINK-1067) | "Stratosphere" occurance in docs FAQ |  Trivial | Documentation | Fabian Hueske | Fabian Hueske |
| [FLINK-1065](https://issues.apache.org/jira/browse/FLINK-1065) | "flink-streaming-core" build fails with Hadoop 2.4.0 dependencies |  Major | Streaming | Robert Metzger | Márton Balassi |
| [FLINK-1063](https://issues.apache.org/jira/browse/FLINK-1063) | Race condition in NettyConnectionManager |  Major | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-1014](https://issues.apache.org/jira/browse/FLINK-1014) | Pipeline Breakers and Caches are not displayed in the WebFrontend |  Major | Webfrontend | Stephan Ewen |  |
| [FLINK-989](https://issues.apache.org/jira/browse/FLINK-989) | Improve not enough slots SchedulingException message |  Critical | JobManager | Ufuk Celebi | Stephan Ewen |
| [FLINK-625](https://issues.apache.org/jira/browse/FLINK-625) | Add a fail(Exception) method to the job graph, to report problems detected in RPC calls |  Major | Local Runtime | GitHub Import | Stephan Ewen |
| [FLINK-230](https://issues.apache.org/jira/browse/FLINK-230) | Job Cancellation does not work properly: "Cannot find execution graph to job ID" |  Major | . | GitHub Import | Stephan Ewen |
| [FLINK-15](https://issues.apache.org/jira/browse/FLINK-15) | [GitHub] Rework Nephele Execution Graph State Machine |  Major | . | GitHub Import | Stephan Ewen |
| [FLINK-13](https://issues.apache.org/jira/browse/FLINK-13) | [GitHub] Bug in Nephele Scheduler |  Major | . | GitHub Import | Stephan Ewen |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1032](https://issues.apache.org/jira/browse/FLINK-1032) | Extend POJO Field Selectors to Support Accessing Nested Objects |  Major | Java API | Aljoscha Krettek | Robert Metzger |
| [FLINK-1030](https://issues.apache.org/jira/browse/FLINK-1030) | Cleanly separate the Instance Management and Resource Assignment |  Major | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-991](https://issues.apache.org/jira/browse/FLINK-991) | Add documentation for POJO expression keys |  Major | Documentation, Java API | Fabian Hueske | Robert Metzger |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1118](https://issues.apache.org/jira/browse/FLINK-1118) | Exclude Java Crash Log Files from License Header Check |  Minor | Build System | Fabian Hueske | Stephan Ewen |
| [FLINK-1136](https://issues.apache.org/jira/browse/FLINK-1136) | Put new Flink Logo in Web Frontends |  Trivial | Webfrontend | Fabian Hueske | Fabian Hueske |
| [FLINK-1106](https://issues.apache.org/jira/browse/FLINK-1106) | Deprecate old Record API |  Critical | Java API | Robert Metzger | Robert Metzger |
| [FLINK-1084](https://issues.apache.org/jira/browse/FLINK-1084) | The article "How to add a new Operator" contains several dead links |  Minor | Documentation | Jonas Traub | Stephan Ewen |
| [FLINK-1068](https://issues.apache.org/jira/browse/FLINK-1068) | Replace "cdh4" profile with generic "hadoop 2.0.0-alpha" support |  Minor | . | Robert Metzger | Robert Metzger |
| [FLINK-1017](https://issues.apache.org/jira/browse/FLINK-1017) | Add setParallelism() to Java API documentation |  Minor | Documentation | Fabian Hueske | Hung Chang |


