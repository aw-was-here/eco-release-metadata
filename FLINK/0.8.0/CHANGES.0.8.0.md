
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

## Release 0.8.0 - 2015-01-18

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1307](https://issues.apache.org/jira/browse/FLINK-1307) | Allow input from nested directory structure |  Minor | . | Vasia Kalavri | Vasia Kalavri |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1325](https://issues.apache.org/jira/browse/FLINK-1325) | Add a closure cleaner for Java |  Major | Java API | Stephan Ewen | Aljoscha Krettek |
| [FLINK-1304](https://issues.apache.org/jira/browse/FLINK-1304) | Add tests for the I/O Format wrappers |  Major | Hadoop Compatibility | Robert Metzger | Robert Metzger |
| [FLINK-1292](https://issues.apache.org/jira/browse/FLINK-1292) | Allow for longer normalized keys |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1291](https://issues.apache.org/jira/browse/FLINK-1291) | Remove GC options from JobManager and TaskManager scripts |  Major | other | Stephan Ewen |  |
| [FLINK-1287](https://issues.apache.org/jira/browse/FLINK-1287) | Improve File Input Split assignment |  Major | Local Runtime | Robert Metzger | Fabian Hueske |
| [FLINK-1273](https://issues.apache.org/jira/browse/FLINK-1273) | Add the "Void" type to the basic types. |  Major | Java API, Scala API | Stephan Ewen | Stephan Ewen |
| [FLINK-1270](https://issues.apache.org/jira/browse/FLINK-1270) | FileSystem.get() doesn't support relative paths |  Minor | . | Chesnay Schepler | Chesnay Schepler |
| [FLINK-1266](https://issues.apache.org/jira/browse/FLINK-1266) | Generalize Flink's DistributedFileSystemClass to a Hadoop FileSystem wrapper |  Minor | . | Robert Metzger | Robert Metzger |
| [FLINK-1252](https://issues.apache.org/jira/browse/FLINK-1252) | Add a serializer for Date |  Major | Java API | Robert Metzger | Robert Metzger |
| [FLINK-1238](https://issues.apache.org/jira/browse/FLINK-1238) | Add a way to deactivate the "mutable object safe mode" |  Minor | Local Runtime | Stephan Ewen | Aljoscha Krettek |
| [FLINK-1234](https://issues.apache.org/jira/browse/FLINK-1234) | Make Hadoop2 profile default |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-1230](https://issues.apache.org/jira/browse/FLINK-1230) | Add embedded collection execution to documentation |  Major | Documentation | Stephan Ewen | Robert Metzger |
| [FLINK-1226](https://issues.apache.org/jira/browse/FLINK-1226) | No way to give Configuration to DataSource |  Minor | Java API | Fabian Hueske | Robert Metzger |
| [FLINK-1222](https://issues.apache.org/jira/browse/FLINK-1222) | Let tasks finish as soon as their data is sent |  Minor | Distributed Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1221](https://issues.apache.org/jira/browse/FLINK-1221) | Use program source line of invocation  as the default function name |  Minor | Java API, Scala API | Stephan Ewen | Robert Metzger |
| [FLINK-1220](https://issues.apache.org/jira/browse/FLINK-1220) | Make INFO logging more verbose |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-1213](https://issues.apache.org/jira/browse/FLINK-1213) | Add .gitattributes to normalize EOL character. |  Major | . | Kousuke Saruta | Fabian Hueske |
| [FLINK-1208](https://issues.apache.org/jira/browse/FLINK-1208) | Skip comment lines in CSV input format. Allow user to specify comment character. |  Minor | Java API, Scala API | Aljoscha Krettek | Felix Neutatz |
| [FLINK-1198](https://issues.apache.org/jira/browse/FLINK-1198) | Store broadcast variables once per TaskManager |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1189](https://issues.apache.org/jira/browse/FLINK-1189) | Temporal cross operator for streaming |  Major | Streaming | Márton Balassi | Márton Balassi |
| [FLINK-1173](https://issues.apache.org/jira/browse/FLINK-1173) | Add socket text stream as a data source for the streaming API |  Minor | Streaming | Gyula Fora | Chiwan Park |
| [FLINK-1130](https://issues.apache.org/jira/browse/FLINK-1130) | It is confusing what version a quickstart.sh is for. |  Major | . | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-1005](https://issues.apache.org/jira/browse/FLINK-1005) | Add different mutable-object modes to runtime |  Major | Local Runtime | Stephan Ewen | Aljoscha Krettek |
| [FLINK-933](https://issues.apache.org/jira/browse/FLINK-933) | Add an input format to read primitive types directly (not through tuples) |  Minor | . | Stephan Ewen | Mingliang Qi |
| [FLINK-890](https://issues.apache.org/jira/browse/FLINK-890) | [Examples Website] Replace "getInputData()" methods |  Minor | Project Website | GitHub Import | Stephan Ewen |
| [FLINK-820](https://issues.apache.org/jira/browse/FLINK-820) | Support for unconnected data flows |  Major | . | GitHub Import | Stephan Ewen |
| [FLINK-753](https://issues.apache.org/jira/browse/FLINK-753) | Make hbase module independent of CDH |  Major | . | GitHub Import | Flavio Pompermaier |
| [FLINK-658](https://issues.apache.org/jira/browse/FLINK-658) | Add Group Sorting to CoGroup |  Major | . | GitHub Import | Stephan Ewen |
| [FLINK-202](https://issues.apache.org/jira/browse/FLINK-202) | Workset Iterations: "No Match Found" Behaviour of Solution Set Join |  Major | . | GitHub Import |  |
| [FLINK-39](https://issues.apache.org/jira/browse/FLINK-39) | [GitHub] Port HBase access to ozone |  Major | . | GitHub Import |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1578](https://issues.apache.org/jira/browse/FLINK-1578) | Overhaul BLOB manager |  Major | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-1483](https://issues.apache.org/jira/browse/FLINK-1483) | Temporary channel files are not properly deleted when Flink is terminated |  Major | TaskManager | Till Rohrmann | Stephan Ewen |
| [FLINK-1440](https://issues.apache.org/jira/browse/FLINK-1440) | Missing plan visualizer image for http://flink.apache.org/docs/0.8/programming\_guide.html page |  Major | Project Website | Henry Saputra | Stephan Ewen |
| [FLINK-1411](https://issues.apache.org/jira/browse/FLINK-1411) | PlanVisualizer is not working |  Minor | . | Till Rohrmann | Stephan Ewen |
| [FLINK-1397](https://issues.apache.org/jira/browse/FLINK-1397) | JobManager web interface log file access doesn't work on YARN |  Major | YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-1386](https://issues.apache.org/jira/browse/FLINK-1386) | Java Quickstart Fails to import properly in Eclipse |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-1384](https://issues.apache.org/jira/browse/FLINK-1384) | Web Infoserver has unused JS libraries |  Minor | Webfrontend | Stephan Ewen | Stephan Ewen |
| [FLINK-1378](https://issues.apache.org/jira/browse/FLINK-1378) | could not find implicit value for evidence parameter of type TypeInformation |  Major | Scala API | John Sandiford | Aljoscha Krettek |
| [FLINK-1371](https://issues.apache.org/jira/browse/FLINK-1371) | KryoSerializer swallows/wraps IOExceptions |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1336](https://issues.apache.org/jira/browse/FLINK-1336) | Bug in StringValue binary copy method |  Critical | other | Stephan Ewen | Stephan Ewen |
| [FLINK-1333](https://issues.apache.org/jira/browse/FLINK-1333) | Getter/Setter recognition for POJO fields with generics is not working |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-1327](https://issues.apache.org/jira/browse/FLINK-1327) | MemorySegment ByteBuffer wrapping may fail with IndexOutOfBoundsException |  Blocker | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1324](https://issues.apache.org/jira/browse/FLINK-1324) | Iterations may fail when a cached data set based on a sort is not fully consumed |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1322](https://issues.apache.org/jira/browse/FLINK-1322) | Scala API does not respect WriteMode set by configuration |  Minor | . | Till Rohrmann | Aljoscha Krettek |
| [FLINK-1316](https://issues.apache.org/jira/browse/FLINK-1316) | Webclient fails to display plans where nodes are references from multiple iteration closures |  Minor | Webfrontend | Stephan Ewen | Stephan Ewen |
| [FLINK-1315](https://issues.apache.org/jira/browse/FLINK-1315) | Spurious failure in compiler due to corrupt branch tracking logic |  Major | Optimizer | Stephan Ewen | Stephan Ewen |
| [FLINK-1311](https://issues.apache.org/jira/browse/FLINK-1311) | Auxiliary nodes in iterations are not correctly identified as "dynamic" or "static" |  Major | Optimizer | Stephan Ewen | Stephan Ewen |
| [FLINK-1310](https://issues.apache.org/jira/browse/FLINK-1310) | Scala Closure Cleaner logs very aggressive |  Minor | Scala API | Stephan Ewen | Aljoscha Krettek |
| [FLINK-1305](https://issues.apache.org/jira/browse/FLINK-1305) | Flink's hadoop compatibility layer cannot handle NullWritables |  Critical | Hadoop Compatibility | Sebastian Schelter | Robert Metzger |
| [FLINK-1290](https://issues.apache.org/jira/browse/FLINK-1290) | Optimizer prunes all candidates when unable to reuse sort properties |  Major | Optimizer | Stephan Ewen | Stephan Ewen |
| [FLINK-1286](https://issues.apache.org/jira/browse/FLINK-1286) | Failures and bad error message in CollectionInputFormat |  Major | Java API, Scala API | Stephan Ewen | Stephan Ewen |
| [FLINK-1276](https://issues.apache.org/jira/browse/FLINK-1276) | Misspelled class name SlotAvalablbilityListener.java |  Trivial | Local Runtime | Suneel Marthi | Suneel Marthi |
| [FLINK-1264](https://issues.apache.org/jira/browse/FLINK-1264) | Custom partitioners are not properly forwarded to the runtime |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1263](https://issues.apache.org/jira/browse/FLINK-1263) | Manual Partition operations are considered to keep data types constant |  Major | Java API, Optimizer, Scala API | Stephan Ewen | Stephan Ewen |
| [FLINK-1254](https://issues.apache.org/jira/browse/FLINK-1254) | Optimizer bug during pipeline breaker placement |  Major | Optimizer | Stephan Ewen | Stephan Ewen |
| [FLINK-1253](https://issues.apache.org/jira/browse/FLINK-1253) | Tests occasionally die with GarbageCollectionOverhead exceeded |  Minor | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-1251](https://issues.apache.org/jira/browse/FLINK-1251) | CollectionInputFormat is not able to handle Enums |  Major | Java API | Robert Metzger | Robert Metzger |
| [FLINK-1250](https://issues.apache.org/jira/browse/FLINK-1250) | Wrong config key for taskmanager heartbeat timeout |  Major | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-1249](https://issues.apache.org/jira/browse/FLINK-1249) | Add custom partitioner for CoGroup |  Major | Java API, Optimizer, Scala API | Stephan Ewen | Stephan Ewen |
| [FLINK-1243](https://issues.apache.org/jira/browse/FLINK-1243) | Remove JVM MaxPermSize parameter when we use Java 8 |  Major | Distributed Runtime | Kousuke Saruta |  |
| [FLINK-1242](https://issues.apache.org/jira/browse/FLINK-1242) | Streaming examples project causes build error in Eclipse |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-1235](https://issues.apache.org/jira/browse/FLINK-1235) | Compiler rejectes non-nested iterations in constant path of an Iteration. |  Major | Optimizer | Stephan Ewen | Stephan Ewen |
| [FLINK-1233](https://issues.apache.org/jira/browse/FLINK-1233) | Flaky Test AggregateITCase |  Major | Distributed Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1224](https://issues.apache.org/jira/browse/FLINK-1224) | Fix .getExecutionEnvironment of the StreamingExecutionEnvironment to return proper context |  Major | Streaming | Gyula Fora | Gyula Fora |
| [FLINK-1215](https://issues.apache.org/jira/browse/FLINK-1215) | FileSystem.initOutPathLocalFS can lead to race condition |  Minor | Local Runtime | Aljoscha Krettek | Stephan Ewen |
| [FLINK-1214](https://issues.apache.org/jira/browse/FLINK-1214) | Prevent partitioning pushdown unless partitions fields match exactly |  Major | Optimizer | Stephan Ewen | Stephan Ewen |
| [FLINK-1212](https://issues.apache.org/jira/browse/FLINK-1212) | Interpreter directive in shell scripts should be "/usr/bin/env bash" instead of "/bin/bash" |  Major | . | Kousuke Saruta | Fabian Hueske |
| [FLINK-1211](https://issues.apache.org/jira/browse/FLINK-1211) | EOL character of Windows Batch files should be CRLF |  Minor | . | Kousuke Saruta | Stephan Ewen |
| [FLINK-1210](https://issues.apache.org/jira/browse/FLINK-1210) | Improve Error Message in Delta Iteratione when Next Workset does not Depend on Workset. |  Major | Optimizer | Stephan Ewen | Stephan Ewen |
| [FLINK-1209](https://issues.apache.org/jira/browse/FLINK-1209) | Forgetting to close an iteration leads to a confusing error message |  Major | Java API | Stephan Ewen | Stephan Ewen |
| [FLINK-1207](https://issues.apache.org/jira/browse/FLINK-1207) | Switch ContextEnvironment to Environment factory |  Major | Java API | Stephan Ewen | Stephan Ewen |
| [FLINK-1205](https://issues.apache.org/jira/browse/FLINK-1205) | LibraryCacheManager should track execution IDs of library registrations |  Major | Distributed Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1203](https://issues.apache.org/jira/browse/FLINK-1203) | ClassCast exceptions in parallel tests (Surefire Bug?) |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-1202](https://issues.apache.org/jira/browse/FLINK-1202) | Failed file outputs should remove partially complete files |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1199](https://issues.apache.org/jira/browse/FLINK-1199) | Correct  references to dependencies in docs |  Trivial | Documentation | Márton Balassi | Stephan Ewen |
| [FLINK-1194](https://issues.apache.org/jira/browse/FLINK-1194) | Wrong manifest entries and compiler configuration in Java Quickstarts |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-1186](https://issues.apache.org/jira/browse/FLINK-1186) | Join key selection for nested Tuples is broken |  Minor | Java API | Robert Waury | Mingliang Qi |
| [FLINK-1182](https://issues.apache.org/jira/browse/FLINK-1182) | Bad Error Message when trying to use expression keys on non-POJO types |  Major | Java API, Scala API | Stephan Ewen | Stephan Ewen |
| [FLINK-1181](https://issues.apache.org/jira/browse/FLINK-1181) | CLI actions list -r/-s don't work |  Minor | . | Vasia Kalavri | Stephan Ewen |
| [FLINK-1172](https://issues.apache.org/jira/browse/FLINK-1172) | Links to APIs inside Iterations guide broken |  Major | Documentation | Robert Metzger | Chesnay Schepler |
| [FLINK-1163](https://issues.apache.org/jira/browse/FLINK-1163) | Scala DataSet cannot be used within iterations because it is not serializable |  Major | Scala API | Till Rohrmann | Aljoscha Krettek |
| [FLINK-1139](https://issues.apache.org/jira/browse/FLINK-1139) | HadoopOutputFormat fails for DOP \> 1 |  Major | Hadoop Compatibility | Fabian Hueske | Fabian Hueske |
| [FLINK-1113](https://issues.apache.org/jira/browse/FLINK-1113) | Clean up JQuery Dependencies |  Minor | Webfrontend | Stephan Ewen |  |
| [FLINK-1095](https://issues.apache.org/jira/browse/FLINK-1095) | ./flink info -d command is not working for the examples |  Minor | . | Robert Metzger |  |
| [FLINK-1008](https://issues.apache.org/jira/browse/FLINK-1008) | createProgramPlan() throws exception |  Major | Java API | Bastian Köcher |  |
| [FLINK-610](https://issues.apache.org/jira/browse/FLINK-610) | Replace Avro serialization by Kryo |  Critical | Java API | GitHub Import | Robert Metzger |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1232](https://issues.apache.org/jira/browse/FLINK-1232) | Allow I/O spill file writers to work with futures/callbacks |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-1244](https://issues.apache.org/jira/browse/FLINK-1244) | setCombinable() clunky to use |  Trivial | Java API | Chesnay Schepler | Chesnay Schepler |


