
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

## Release 0.10.0 - 2015-11-13

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2456](https://issues.apache.org/jira/browse/FLINK-2456) | The flink-hbase module dependencies hadoop-2 specifies a repository ID |  Major | Build System | Huang Wei |  |
| [FLINK-2394](https://issues.apache.org/jira/browse/FLINK-2394) | HadoopOutFormat OutputCommitter is default to FileOutputCommiter |  Major | Hadoop Compatibility | Stefano Bortoli | Fabian Hueske |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2844](https://issues.apache.org/jira/browse/FLINK-2844) | Remove old web interface and default to the new one |  Major | JobManager | Maximilian Michels | Maximilian Michels |
| [FLINK-2740](https://issues.apache.org/jira/browse/FLINK-2740) | Create data consumer for Apache NiFi |  Major | Streaming Connectors | Kostas Tzoumas | Joseph Witt |
| [FLINK-2723](https://issues.apache.org/jira/browse/FLINK-2723) | CopyableValue method to copy into new instance |  Minor | Core | Greg Hogan | Greg Hogan |
| [FLINK-2583](https://issues.apache.org/jira/browse/FLINK-2583) | Add Stream Sink For Rolling HDFS Files |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2393](https://issues.apache.org/jira/browse/FLINK-2393) | Add a "stateless at-least-once" mode for streaming |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2357](https://issues.apache.org/jira/browse/FLINK-2357) | New JobManager Runtime Web Frontend |  Major | Webfrontend | Stephan Ewen | Stephan Ewen |
| [FLINK-2195](https://issues.apache.org/jira/browse/FLINK-2195) | Set Configuration for Configurable Hadoop InputFormats |  Major | Core | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2150](https://issues.apache.org/jira/browse/FLINK-2150) | Add a library method that assigns unique Long values to vertices |  Minor | Gelly | Vasia Kalavri | Andra Lungu |
| [FLINK-2141](https://issues.apache.org/jira/browse/FLINK-2141) | Allow GSA's Gather to perform this operation in more than one direction |  Major | Gelly | Andra Lungu | Shivani Ghatge |
| [FLINK-2140](https://issues.apache.org/jira/browse/FLINK-2140) | Access the number of vertices from within the GSA functions |  Major | Gelly | Andra Lungu | Andra Lungu |
| [FLINK-2107](https://issues.apache.org/jira/browse/FLINK-2107) | Add OuterJoin strategy with HashTable on inner side |  Minor | Local Runtime | Fabian Hueske | Chiwan Park |
| [FLINK-1522](https://issues.apache.org/jira/browse/FLINK-1522) | Add tests for the library methods and examples |  Major | Gelly | Vasia Kalavri | Vasia Kalavri |
| [FLINK-1319](https://issues.apache.org/jira/browse/FLINK-1319) | Add static code analysis for UDFs |  Minor | Java API, Scala API | Stephan Ewen | Timo Walther |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2957](https://issues.apache.org/jira/browse/FLINK-2957) | Make cancel button look less like a label |  Minor | Webfrontend | Maximilian Michels | Sachin Goel |
| [FLINK-2943](https://issues.apache.org/jira/browse/FLINK-2943) | Confusing Bytes/Records "read" and "write" labels in WebUI job view |  Major | Webfrontend | Fabian Hueske |  |
| [FLINK-2939](https://issues.apache.org/jira/browse/FLINK-2939) | Add button to cancel jobs in new web frontend |  Major | Webfrontend | Maximilian Michels | Sachin Goel |
| [FLINK-2932](https://issues.apache.org/jira/browse/FLINK-2932) | Flink quickstart docs should ask users to download from https, not http |  Minor | Documentation | Frederick F. Kautz IV |  |
| [FLINK-2918](https://issues.apache.org/jira/browse/FLINK-2918) | Add a method to be able to read SequenceFileInputFormat |  Minor | Core | Suneel Marthi | Suneel Marthi |
| [FLINK-2902](https://issues.apache.org/jira/browse/FLINK-2902) | Web interface sort tasks newest first |  Minor | Webfrontend | Greg Hogan | Sachin Goel |
| [FLINK-2895](https://issues.apache.org/jira/browse/FLINK-2895) | Duplicate immutable object creation |  Minor | Distributed Runtime | Greg Hogan | Greg Hogan |
| [FLINK-2893](https://issues.apache.org/jira/browse/FLINK-2893) | Rename recovery configuration keys |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2876](https://issues.apache.org/jira/browse/FLINK-2876) | Minutiae |  Trivial | Documentation | Greg Hogan | Greg Hogan |
| [FLINK-2857](https://issues.apache.org/jira/browse/FLINK-2857) | Gelly API improvements |  Major | Gelly | Vasia Kalavri | Vasia Kalavri |
| [FLINK-2856](https://issues.apache.org/jira/browse/FLINK-2856) | Introduce flink.version property into quickstart archetype |  Major | Quickstarts | Robert Metzger | Robert Metzger |
| [FLINK-2855](https://issues.apache.org/jira/browse/FLINK-2855) | Add a documentation section for Gelly library methods |  Major | Documentation, Gelly | Vasia Kalavri | Vasia Kalavri |
| [FLINK-2846](https://issues.apache.org/jira/browse/FLINK-2846) | Emit checkpoint barriers earlier, before drawing the state snapshot |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2834](https://issues.apache.org/jira/browse/FLINK-2834) | Global round-robin for temporary directories |  Minor | Distributed Runtime | Greg Hogan | Greg Hogan |
| [FLINK-2808](https://issues.apache.org/jira/browse/FLINK-2808) | Rework / Extend the StatehandleProvider |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2798](https://issues.apache.org/jira/browse/FLINK-2798) | Prepare new web dashboard for executing it on YARN |  Major | Webfrontend, YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-2781](https://issues.apache.org/jira/browse/FLINK-2781) | Consolidate NetUtils |  Major | Core, Distributed Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-2776](https://issues.apache.org/jira/browse/FLINK-2776) | Print job id to standard out on CLI job submission |  Major | . | Maximilian Michels | Maximilian Michels |
| [FLINK-2774](https://issues.apache.org/jira/browse/FLINK-2774) | Import Java API classes automatically in Flink's Scala shell |  Minor | Scala Shell | Till Rohrmann | Chiwan Park |
| [FLINK-2767](https://issues.apache.org/jira/browse/FLINK-2767) | Add support Scala 2.11 to Scala shell |  Major | Scala Shell | Chiwan Park | Chiwan Park |
| [FLINK-2761](https://issues.apache.org/jira/browse/FLINK-2761) | Prevent instantiation of new ExecutionEnvironments in the Scala Shell |  Major | Scala Shell | Stephan Ewen | Sachin Goel |
| [FLINK-2744](https://issues.apache.org/jira/browse/FLINK-2744) | Reduce number of concurrent test forks to 1 for the Kafka connector project |  Major | Streaming Connectors | Stephan Ewen | Stephan Ewen |
| [FLINK-2743](https://issues.apache.org/jira/browse/FLINK-2743) | Add new RNG based on XORShift algorithm |  Minor | Core | Chengxiang Li | Chengxiang Li |
| [FLINK-2704](https://issues.apache.org/jira/browse/FLINK-2704) | Clean up naming of State/Checkpoint Interfaces |  Minor | Streaming | Stephan Ewen | Aljoscha Krettek |
| [FLINK-2702](https://issues.apache.org/jira/browse/FLINK-2702) | Add an implementation of distributed copying utility using Flink |  Major | Examples | Stephan Ewen |  |
| [FLINK-2701](https://issues.apache.org/jira/browse/FLINK-2701) | Getter for wrapped Java StreamExecutionEnvironment in the Scala Api |  Minor | Streaming | Stephan Ewen |  |
| [FLINK-2698](https://issues.apache.org/jira/browse/FLINK-2698) | Add trailing newline to flink-conf.yaml |  Minor | . | Greg Hogan | Greg Hogan |
| [FLINK-2668](https://issues.apache.org/jira/browse/FLINK-2668) | ProjectOperator method to close projection |  Minor | Java API | Greg Hogan | Chesnay Schepler |
| [FLINK-2666](https://issues.apache.org/jira/browse/FLINK-2666) | Allow custom Timestamp extractors for Flink sources |  Minor | Streaming | Gyula Fora | Aljoscha Krettek |
| [FLINK-2655](https://issues.apache.org/jira/browse/FLINK-2655) | Minimize intermediate merging of spilled buffers |  Major | Distributed Runtime | Greg Hogan |  |
| [FLINK-2654](https://issues.apache.org/jira/browse/FLINK-2654) | Add JavaDoc to ParameterTool class |  Minor | . | Behrouz Derakhshan |  |
| [FLINK-2653](https://issues.apache.org/jira/browse/FLINK-2653) | Enable object reuse in MergeIterator |  Major | Distributed Runtime | Greg Hogan | Greg Hogan |
| [FLINK-2638](https://issues.apache.org/jira/browse/FLINK-2638) | Add @SafeVarargs to the environment.fromElements(...) method |  Major | Core, Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2637](https://issues.apache.org/jira/browse/FLINK-2637) | Add abstract equals, hashCode and toString methods to TypeInformation |  Major | Core | Fabian Hueske | Till Rohrmann |
| [FLINK-2636](https://issues.apache.org/jira/browse/FLINK-2636) | Clean up StreamRecord and Watermark types |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2635](https://issues.apache.org/jira/browse/FLINK-2635) | Simplify StreamInputProcessor and StreamTwoInputProcessor |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2627](https://issues.apache.org/jira/browse/FLINK-2627) | Make Scala Data Set utils easier to access |  Trivial | Scala API | Sachin Goel | Sachin Goel |
| [FLINK-2582](https://issues.apache.org/jira/browse/FLINK-2582) | Document how to build Flink with other Scala versions |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-2580](https://issues.apache.org/jira/browse/FLINK-2580) | HadoopDataOutputStream does not expose enough methods of org.apache.hadoop.fs.FSDataOutputStream |  Minor | Hadoop Compatibility | Arnaud Linz | Stephan Ewen |
| [FLINK-2572](https://issues.apache.org/jira/browse/FLINK-2572) | Resolve base path of symlinked executable |  Minor | Start-Stop Scripts | Ufuk Celebi | Maximilian Michels |
| [FLINK-2569](https://issues.apache.org/jira/browse/FLINK-2569) | CsvReader support for ValueTypes |  Minor | Java API | Greg Hogan | Chiwan Park |
| [FLINK-2565](https://issues.apache.org/jira/browse/FLINK-2565) | Support primitive arrays as keys |  Major | Java API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-2563](https://issues.apache.org/jira/browse/FLINK-2563) | Gelly's Graph Algorithm Interface is limited |  Major | Gelly | Andra Lungu | Vasia Kalavri |
| [FLINK-2560](https://issues.apache.org/jira/browse/FLINK-2560) | Flink-Avro Plugin cannot be handled by Eclipse |  Trivial | . | Matthias J. Sax | Matthias J. Sax |
| [FLINK-2558](https://issues.apache.org/jira/browse/FLINK-2558) | Add Streaming Connector for Elasticsearch |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2536](https://issues.apache.org/jira/browse/FLINK-2536) | Add a retry for SocketClientSink |  Major | Streaming | Huang Wei |  |
| [FLINK-2534](https://issues.apache.org/jira/browse/FLINK-2534) | Improve execution code in CompactingHashTable.java |  Major | Local Runtime | Huang Wei |  |
| [FLINK-2529](https://issues.apache.org/jira/browse/FLINK-2529) | fix on some unused code for flink-runtime |  Minor | Local Runtime | Huang Wei |  |
| [FLINK-2500](https://issues.apache.org/jira/browse/FLINK-2500) | Some reviews to improve code quality |  Minor | Streaming | Huang Wei |  |
| [FLINK-2492](https://issues.apache.org/jira/browse/FLINK-2492) | Rename remaining runtime classes from "match" to "join" |  Minor | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-2457](https://issues.apache.org/jira/browse/FLINK-2457) | Integrate Tuple0 |  Minor | . | Matthias J. Sax | Matthias J. Sax |
| [FLINK-2452](https://issues.apache.org/jira/browse/FLINK-2452) | Add a playcount threshold to the MusicProfiles example |  Minor | Gelly | Vasia Kalavri | Vasia Kalavri |
| [FLINK-2451](https://issues.apache.org/jira/browse/FLINK-2451) | Cleanup Gelly examples |  Minor | Gelly | Vasia Kalavri | Vasia Kalavri |
| [FLINK-2433](https://issues.apache.org/jira/browse/FLINK-2433) | Jekyll on windows for building local documentation |  Major | Documentation | Sachin Goel | Sachin Goel |
| [FLINK-2431](https://issues.apache.org/jira/browse/FLINK-2431) | [py] refactor PlanBinder/OperationInfo |  Minor | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-2425](https://issues.apache.org/jira/browse/FLINK-2425) | Give access to TaskManager config and hostname in the Runtime Environment |  Major | TaskManager | Stephan Ewen | Sachin Goel |
| [FLINK-2398](https://issues.apache.org/jira/browse/FLINK-2398) | Decouple StreamGraph Building from the API |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2386](https://issues.apache.org/jira/browse/FLINK-2386) | Implement Kafka connector using the new Kafka Consumer API |  Major | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-2381](https://issues.apache.org/jira/browse/FLINK-2381) | Possible class not found Exception on failed partition producer |  Major | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2359](https://issues.apache.org/jira/browse/FLINK-2359) | Add factory methods to the Java TupleX types |  Minor | Java API | Gabor Gevay | Gabor Gevay |
| [FLINK-2343](https://issues.apache.org/jira/browse/FLINK-2343) | Change default garbage collector in streaming environments |  Major | Start-Stop Scripts | Stephan Ewen | Stephan Ewen |
| [FLINK-2339](https://issues.apache.org/jira/browse/FLINK-2339) | Prevent asynchronous checkpoint calls from overtaking each other |  Major | TaskManager | Stephan Ewen | Stephan Ewen |
| [FLINK-2326](https://issues.apache.org/jira/browse/FLINK-2326) | Mutitenancy on Yarn |  Major | YARN Client | LINTE | Robert Metzger |
| [FLINK-2308](https://issues.apache.org/jira/browse/FLINK-2308) | Improve error messages on broken user-defined serialization |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-2307](https://issues.apache.org/jira/browse/FLINK-2307) | Drop Java 6 support |  Major | Build System | Robert Metzger | Stephan Ewen |
| [FLINK-2306](https://issues.apache.org/jira/browse/FLINK-2306) | Add support for named streams in Storm compatibility layer |  Major | flink-contrib | Matthias J. Sax | Matthias J. Sax |
| [FLINK-2302](https://issues.apache.org/jira/browse/FLINK-2302) | Allow multiple instances to run on single host |  Major | Start-Stop Scripts | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2297](https://issues.apache.org/jira/browse/FLINK-2297) | Add threshold setting for SVM binary predictions |  Minor | Machine Learning Library | Theodore Vasiloudis | Theodore Vasiloudis |
| [FLINK-2287](https://issues.apache.org/jira/browse/FLINK-2287) | Implement JobManager high availability |  Major | JobManager, TaskManager | Ufuk Celebi |  |
| [FLINK-2283](https://issues.apache.org/jira/browse/FLINK-2283) | Make grouped reduce/fold/aggregations stateful using Partitioned state |  Minor | Streaming | Gyula Fora | Márton Balassi |
| [FLINK-2277](https://issues.apache.org/jira/browse/FLINK-2277) | In Scala API delta Iterations can not be set to unmanaged |  Major | Scala API | Aljoscha Krettek | PJ Van Aeken |
| [FLINK-2272](https://issues.apache.org/jira/browse/FLINK-2272) | Move vision and roadmap for FlinkML from docs to the wiki |  Trivial | Machine Learning Library | Theodore Vasiloudis | Theodore Vasiloudis |
| [FLINK-2248](https://issues.apache.org/jira/browse/FLINK-2248) | Allow disabling of sdtout logging output |  Minor | . | Theodore Vasiloudis | Sachin Goel |
| [FLINK-2242](https://issues.apache.org/jira/browse/FLINK-2242) | Deprecate RemoteCollector |  Minor | Java API | Ufuk Celebi | Maximilian Michels |
| [FLINK-2238](https://issues.apache.org/jira/browse/FLINK-2238) | Scala ExecutionEnvironment.fromCollection does not work with Sets |  Minor | Scala API | Fabian Hueske | Sachin Goel |
| [FLINK-2234](https://issues.apache.org/jira/browse/FLINK-2234) | CoStreamWindow is Dependent on Input Ordering |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2231](https://issues.apache.org/jira/browse/FLINK-2231) | Create a Serializer for Scala Enumerations |  Major | Scala API | Stephan Ewen | Alexander Alexandrov |
| [FLINK-2226](https://issues.apache.org/jira/browse/FLINK-2226) | Fail YARN application on failed single-job YARN cluster |  Major | . | Maximilian Michels | Maximilian Michels |
| [FLINK-2216](https://issues.apache.org/jira/browse/FLINK-2216) | Examples directory contains `flink-java-examples-0.9.0-javadoc.jar` |  Major | Build System | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2182](https://issues.apache.org/jira/browse/FLINK-2182) | Add stateful Streaming Sequence Source |  Minor | eaming, Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2161](https://issues.apache.org/jira/browse/FLINK-2161) | Flink Scala Shell does not support external jars (e.g. Gelly, FlinkML) |  Major | . | Till Rohrmann | Nikolaas Steenbergen |
| [FLINK-2155](https://issues.apache.org/jira/browse/FLINK-2155) | Add an additional checkstyle validation for illegal imports |  Major | Build System | Lokesh Rajaram | Lokesh Rajaram |
| [FLINK-2152](https://issues.apache.org/jira/browse/FLINK-2152) | Provide zipWithIndex utility in flink-contrib |  Trivial | Java API | Robert Metzger | Andra Lungu |
| [FLINK-2149](https://issues.apache.org/jira/browse/FLINK-2149) | Simplify Gelly Jaccard similarity example |  Trivial | Gelly | Vasia Kalavri | Andra Lungu |
| [FLINK-2122](https://issues.apache.org/jira/browse/FLINK-2122) | Make all internal streaming operators Checkpointable |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2066](https://issues.apache.org/jira/browse/FLINK-2066) | Make delay between execution retries configurable |  Blocker | Core | Stephan Ewen | Nuno Miguel Marques dos Santos |
| [FLINK-2018](https://issues.apache.org/jira/browse/FLINK-2018) | Add ParameterUtil.fromGenericOptionsParser() for compatibility to Hadoop's argument parser |  Minor | . | Robert Metzger |  |
| [FLINK-1963](https://issues.apache.org/jira/browse/FLINK-1963) | Improve distinct() transformation |  Minor | Java API, Scala API | Fabian Hueske | pietro pinoli |
| [FLINK-1927](https://issues.apache.org/jira/browse/FLINK-1927) | [Py] Rework operator distribution |  Minor | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-1779](https://issues.apache.org/jira/browse/FLINK-1779) | Rename the function name from "getCurrentyActiveConnections" to "getCurrentActiveConnections" in  org.apache.flink.runtime.blob |  Minor | . | Sibao Hong | Sibao Hong |
| [FLINK-1774](https://issues.apache.org/jira/browse/FLINK-1774) | Remove the redundant code in try{} block |  Minor | . | Sibao Hong | Sibao Hong |
| [FLINK-1674](https://issues.apache.org/jira/browse/FLINK-1674) | Add test with nested avro type |  Major | Java API | Robert Metzger |  |
| [FLINK-1658](https://issues.apache.org/jira/browse/FLINK-1658) | Rename AbstractEvent to AbstractTaskEvent and AbstractJobEvent |  Trivial | Distributed Runtime, Local Runtime | Gyula Fora | Matthias J. Sax |
| [FLINK-1611](https://issues.apache.org/jira/browse/FLINK-1611) | [REFACTOR] Rename classes and packages in test that contains Nephele |  Minor | other | Henry Saputra | Henry Saputra |
| [FLINK-1420](https://issues.apache.org/jira/browse/FLINK-1420) | Small cleanup on code after 0.8 release |  Minor | . | Henry Saputra | Henry Saputra |
| [FLINK-1320](https://issues.apache.org/jira/browse/FLINK-1320) | Add an off-heap variant of the managed memory |  Minor | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-1177](https://issues.apache.org/jira/browse/FLINK-1177) | Mark HDFS setup as optional in cluster setup instructions |  Trivial | Documentation | Fabian Hueske | Stephan Ewen |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2992](https://issues.apache.org/jira/browse/FLINK-2992) | New Windowing code is using SerializationUtils with wrong classloader |  Critical | Streaming | Robert Metzger | Robert Metzger |
| [FLINK-2990](https://issues.apache.org/jira/browse/FLINK-2990) | Scala 2.11 build fails to start on YARN |  Major | Build System, YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-2982](https://issues.apache.org/jira/browse/FLINK-2982) | CLI info option throws ClassCastException for streaming jobs |  Major | Command-line client | Sachin Goel | Sachin Goel |
| [FLINK-2968](https://issues.apache.org/jira/browse/FLINK-2968) | Windowed fold operation fails because the initial value was not serialized |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-2964](https://issues.apache.org/jira/browse/FLINK-2964) | MutableHashTable fails when spilling partitions without overflow segments |  Critical | . | Till Rohrmann | Till Rohrmann |
| [FLINK-2958](https://issues.apache.org/jira/browse/FLINK-2958) | StreamingJobGraphGenerator sets hard coded number execution retry |  Major | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2953](https://issues.apache.org/jira/browse/FLINK-2953) | Chained sortPartition() calls produce incorrect results in Scala DataSet API |  Blocker | DataSet API, Scala API | Fabian Hueske | Fabian Hueske |
| [FLINK-2934](https://issues.apache.org/jira/browse/FLINK-2934) | Remove placehoder pages in Web dashboard |  Major | . | Sachin Goel | Sachin Goel |
| [FLINK-2930](https://issues.apache.org/jira/browse/FLINK-2930) | ExecutionConfig execution retry delay not respected |  Major | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2888](https://issues.apache.org/jira/browse/FLINK-2888) | Default state not copied for AbstractHeapKvState |  Blocker | Streaming | Gyula Fora | Stephan Ewen |
| [FLINK-2887](https://issues.apache.org/jira/browse/FLINK-2887) | sendMessageToAllNeighbors ignores the EdgeDirection |  Major | Gelly | Vasia Kalavri | Vasia Kalavri |
| [FLINK-2885](https://issues.apache.org/jira/browse/FLINK-2885) | Path to Python resources is not constructed correctly |  Blocker | Python API | Maximilian Michels | Maximilian Michels |
| [FLINK-2880](https://issues.apache.org/jira/browse/FLINK-2880) | Allow DeserializationSchema to throw IOException in deserialization method |  Critical | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2878](https://issues.apache.org/jira/browse/FLINK-2878) | JobManager warns: Unexpected leader address pattern |  Minor | JobManager | Maximilian Michels | Till Rohrmann |
| [FLINK-2874](https://issues.apache.org/jira/browse/FLINK-2874) | Certain Avro generated getters/setters not recognized |  Minor | Core | Ulf Karlsson |  |
| [FLINK-2873](https://issues.apache.org/jira/browse/FLINK-2873) | WebRuntimeMonitor does not start when multiple log files are present |  Critical | JobManager | Till Rohrmann | Maximilian Michels |
| [FLINK-2872](https://issues.apache.org/jira/browse/FLINK-2872) | Update the documentation for Scala part to add readFileOfPrimitives |  Minor | Documentation | Henry Saputra | Henry Saputra |
| [FLINK-2866](https://issues.apache.org/jira/browse/FLINK-2866) | Potential resource leak due to unclosed ObjectInputStream in FileSerializableStateHandle |  Major | . | Ted Yu | Ted Yu |
| [FLINK-2865](https://issues.apache.org/jira/browse/FLINK-2865) | OutOfMemory error (Direct buffer memory) |  Major | Distributed Runtime | Greg Hogan | Maximilian Michels |
| [FLINK-2863](https://issues.apache.org/jira/browse/FLINK-2863) | Kafka producer does not fail in case of write failure |  Major | Kafka Connector | Stephan Ewen | Stephan Ewen |
| [FLINK-2852](https://issues.apache.org/jira/browse/FLINK-2852) | Fix flaky ScalaShellITSuite |  Critical | Scala Shell | Till Rohrmann | Till Rohrmann |
| [FLINK-2849](https://issues.apache.org/jira/browse/FLINK-2849) | AggregatingAlignedProcessingTimeWindowOperatorTest failure |  Major | . | Sachin Goel | Stephan Ewen |
| [FLINK-2843](https://issues.apache.org/jira/browse/FLINK-2843) | Add documentation for DataSet outer joins |  Major | Documentation | Fabian Hueske | Fabian Hueske |
| [FLINK-2842](https://issues.apache.org/jira/browse/FLINK-2842) | S3FileSystem is broken |  Critical | . | Fabian Hueske | Fabian Hueske |
| [FLINK-2841](https://issues.apache.org/jira/browse/FLINK-2841) | Broken roadmap link in FlinkML contribution guide |  Major | Documentation, Machine Learning Library | Chiwan Park | Saumitra Shahapure |
| [FLINK-2831](https://issues.apache.org/jira/browse/FLINK-2831) | Failing Test: WrapperSetupHelperTest |  Critical | Storm Compatibility | Vasia Kalavri | Matthias J. Sax |
| [FLINK-2820](https://issues.apache.org/jira/browse/FLINK-2820) | Configuration not passed to JobGraphGenerator |  Minor | Command-line client | Greg Hogan | Greg Hogan |
| [FLINK-2817](https://issues.apache.org/jira/browse/FLINK-2817) | FileMonitoring function throws NPE when location is empty |  Minor | Streaming | Márton Balassi | Zoltán Zvara |
| [FLINK-2813](https://issues.apache.org/jira/browse/FLINK-2813) | Document off-heap configuration |  Major | Documentation | Maximilian Michels | Maximilian Michels |
| [FLINK-2812](https://issues.apache.org/jira/browse/FLINK-2812) | KeySelectorUtil.getSelectorForKeys and TypeExtractor.getKeySelectorTypes are incompatible |  Minor | Streaming, Type Serialization System | Márton Balassi | Márton Balassi |
| [FLINK-2809](https://issues.apache.org/jira/browse/FLINK-2809) | DataSet[Unit] doesn't work |  Minor | Scala API | Gabor Gevay | Gabor Gevay |
| [FLINK-2806](https://issues.apache.org/jira/browse/FLINK-2806) | No TypeInfo for Scala's Nothing type |  Minor | Scala API | Gabor Gevay | Gabor Gevay |
| [FLINK-2802](https://issues.apache.org/jira/browse/FLINK-2802) | Watermark triggered operators cannot progress with cyclic flows |  Blocker | Streaming | Gyula Fora | Gyula Fora |
| [FLINK-2800](https://issues.apache.org/jira/browse/FLINK-2800) | kryo serialization problem |  Major | Type Serialization System | Stefano Bortoli | Till Rohrmann |
| [FLINK-2796](https://issues.apache.org/jira/browse/FLINK-2796) | CLI -q flag to supress the output does not work |  Minor | Command-line client | Maximilian Michels | Maximilian Michels |
| [FLINK-2794](https://issues.apache.org/jira/browse/FLINK-2794) | Document exactly-once support for sources and sinks |  Major | Documentation, Streaming | Maximilian Michels | Kostas Tzoumas |
| [FLINK-2787](https://issues.apache.org/jira/browse/FLINK-2787) | Prevent explicit use of RemoteEnvironment when running a job through the command line |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-2777](https://issues.apache.org/jira/browse/FLINK-2777) | The description of programming\_guide.html has some issues |  Minor | Documentation | chenliang613 | chenliang613 |
| [FLINK-2773](https://issues.apache.org/jira/browse/FLINK-2773) | OutOfMemoryError on YARN Session |  Blocker | YARN Client | Fabian Hueske | Maximilian Michels |
| [FLINK-2769](https://issues.apache.org/jira/browse/FLINK-2769) | Web dashboard port not configurable on client side |  Critical | Webfrontend | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2768](https://issues.apache.org/jira/browse/FLINK-2768) | Wrong Java version requirements in "Quickstart: Scala API" page |  Major | . | Chiwan Park | rerngvit yanggratoke |
| [FLINK-2766](https://issues.apache.org/jira/browse/FLINK-2766) | Bad ipv6 urls |  Blocker | . | Arsenii Krasikov | Stephan Ewen |
| [FLINK-2763](https://issues.apache.org/jira/browse/FLINK-2763) | Bug in Hybrid Hash Join: Request to spill a partition with less than two buffers. |  Major | Distributed Runtime | Greg Hogan | Stephan Ewen |
| [FLINK-2762](https://issues.apache.org/jira/browse/FLINK-2762) | Job Runtime: -1 ms |  Minor | other | Greg Hogan | Maximilian Michels |
| [FLINK-2756](https://issues.apache.org/jira/browse/FLINK-2756) | start/stop scripts fail in directories with spaces |  Critical | Start-Stop Scripts | Fabian Hueske | Fabian Hueske |
| [FLINK-2754](https://issues.apache.org/jira/browse/FLINK-2754) | FixedLengthRecordSorter can not write to output cross MemorySegments. |  Major | Distributed Runtime | Chengxiang Li | Chengxiang Li |
| [FLINK-2751](https://issues.apache.org/jira/browse/FLINK-2751) | Quickstart is in documentation but only linked through the Flink homepage |  Major | Documentation | Maximilian Michels |  |
| [FLINK-2750](https://issues.apache.org/jira/browse/FLINK-2750) | FileStateHandleTest fails when building for Hadoop 2.6.0 |  Major | Tests | Fabian Hueske | Stephan Ewen |
| [FLINK-2748](https://issues.apache.org/jira/browse/FLINK-2748) | Accumulator fetch failure leads to duplicate job result response |  Major | JobManager | Ufuk Celebi | Maximilian Michels |
| [FLINK-2738](https://issues.apache.org/jira/browse/FLINK-2738) | StackOverflow in case of unbounded restarts |  Major | JobManager | Ufuk Celebi |  |
| [FLINK-2734](https://issues.apache.org/jira/browse/FLINK-2734) | ArrayKeySelector returns wrong positions (or fails) |  Critical | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2724](https://issues.apache.org/jira/browse/FLINK-2724) | Object reuse not respected in GroupReduceCombineDriver and ReduceCombineDriver |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-2722](https://issues.apache.org/jira/browse/FLINK-2722) | Use InetAddress.getLocalHost() first when detecting TaskManager IP address |  Major | Distributed Runtime, TaskManager | Robert Metzger | Robert Metzger |
| [FLINK-2717](https://issues.apache.org/jira/browse/FLINK-2717) | CombineTaskTest sometimes fails |  Major | Tests | Márton Balassi | Stephan Ewen |
| [FLINK-2711](https://issues.apache.org/jira/browse/FLINK-2711) | TaskManagerTest failure |  Major | . | Sachin Goel | Stephan Ewen |
| [FLINK-2710](https://issues.apache.org/jira/browse/FLINK-2710) | SocketTextStreamFunctionTest failure |  Major | . | Sachin Goel | Stephan Ewen |
| [FLINK-2697](https://issues.apache.org/jira/browse/FLINK-2697) | Deadlock in StreamDiscretizer |  Major | Streaming | Till Rohrmann | Aljoscha Krettek |
| [FLINK-2691](https://issues.apache.org/jira/browse/FLINK-2691) | Broken links to Python script on QuickStart doc |  Minor | Documentation | Felix Cheung |  |
| [FLINK-2689](https://issues.apache.org/jira/browse/FLINK-2689) | Reusing null object for joins with SolutionSet |  Major | Local Runtime | Fabian Hueske | Fabian Hueske |
| [FLINK-2670](https://issues.apache.org/jira/browse/FLINK-2670) | Unstable CombineTaskTest |  Critical | Tests | Matthias J. Sax | Stephan Ewen |
| [FLINK-2665](https://issues.apache.org/jira/browse/FLINK-2665) | ExecutionConfig is not serializable |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-2659](https://issues.apache.org/jira/browse/FLINK-2659) | Object reuse in UnionWithTempOperator |  Major | Distributed Runtime | Greg Hogan | Greg Hogan |
| [FLINK-2656](https://issues.apache.org/jira/browse/FLINK-2656) | FlinkKafkaConsumer is failing with OutOfRangeException |  Critical | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-2651](https://issues.apache.org/jira/browse/FLINK-2651) | Failing NettyServerLowAndHighWatermarkTest |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2650](https://issues.apache.org/jira/browse/FLINK-2650) | Fix broken link in the Table API doc |  Major | Documentation | Henry Saputra | Aljoscha Krettek |
| [FLINK-2649](https://issues.apache.org/jira/browse/FLINK-2649) | Potential resource leak in JarHelper#unjar() |  Major | . | Ted Yu |  |
| [FLINK-2648](https://issues.apache.org/jira/browse/FLINK-2648) | CombineTaskTest.testCancelCombineTaskSorting |  Major | Tests | Sachin Goel | Stephan Ewen |
| [FLINK-2647](https://issues.apache.org/jira/browse/FLINK-2647) | Stream operators need to differentiate between close() and dispose() |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2645](https://issues.apache.org/jira/browse/FLINK-2645) | Accumulator exceptions are not properly forwarded |  Major | JobManager | Maximilian Michels | Maximilian Michels |
| [FLINK-2642](https://issues.apache.org/jira/browse/FLINK-2642) | Scala Table API crashes when executing word count example |  Major | Table API | Jonas Traub | Timo Walther |
| [FLINK-2639](https://issues.apache.org/jira/browse/FLINK-2639) | Building Flink for specific HDP versions fails |  Major | Build System | Robert Metzger | Robert Metzger |
| [FLINK-2632](https://issues.apache.org/jira/browse/FLINK-2632) | Web Client does not respect the class loader of submitted jobs |  Critical | Web Client | Maximilian Michels | Matthias J. Sax |
| [FLINK-2631](https://issues.apache.org/jira/browse/FLINK-2631) | StreamFold operator does not respect returns type and stores non serializable values |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-2628](https://issues.apache.org/jira/browse/FLINK-2628) | Failing Test: StreamFaultToleranceTestBase.runCheckpointedProgram |  Major | Tests | Martin Liesenberg | Stephan Ewen |
| [FLINK-2625](https://issues.apache.org/jira/browse/FLINK-2625) | Configuration not passed to JobGraphGenerator |  Minor | Distributed Runtime, Local Runtime | Greg Hogan |  |
| [FLINK-2619](https://issues.apache.org/jira/browse/FLINK-2619) | Some Scala Tests not being executed by Maven |  Critical | Tests | Chiwan Park | Chiwan Park |
| [FLINK-2617](https://issues.apache.org/jira/browse/FLINK-2617) | ConcurrentModificationException when using HCatRecordReader to access a hive table |  Critical | Hadoop Compatibility | Arnaud Linz | Fabian Hueske |
| [FLINK-2614](https://issues.apache.org/jira/browse/FLINK-2614) | Scala Shell's default local execution mode is broken |  Major | Scala Shell | Maximilian Michels | Maximilian Michels |
| [FLINK-2611](https://issues.apache.org/jira/browse/FLINK-2611) | YARN reports failed final state for successful jobs |  Major | YARN Client | Robert Metzger | Maximilian Michels |
| [FLINK-2607](https://issues.apache.org/jira/browse/FLINK-2607) | Shade plugin copies signature files from original jar into fat jar |  Major | Quickstarts | Maximilian Michels | Maximilian Michels |
| [FLINK-2605](https://issues.apache.org/jira/browse/FLINK-2605) | Unclosed RandomAccessFile may leak resource in StaticFileServerHandler |  Major | . | Ted Yu |  |
| [FLINK-2602](https://issues.apache.org/jira/browse/FLINK-2602) | Gelly algorithms obtain new execution environments. |  Major | Gelly | Stephan Ewen | Martin Junghanns |
| [FLINK-2601](https://issues.apache.org/jira/browse/FLINK-2601) | IOManagerAsync may produce NPE during shutdown |  Minor | Tests | Robert Metzger | Stephan Ewen |
| [FLINK-2596](https://issues.apache.org/jira/browse/FLINK-2596) | Failing Test: RandomSamplerTest |  Critical | Tests | Matthias J. Sax | Chengxiang Li |
| [FLINK-2587](https://issues.apache.org/jira/browse/FLINK-2587) | FlinkKafkaConsumer may fail with a NPE |  Major | Kafka Connector | Robert Metzger | Stephan Ewen |
| [FLINK-2584](https://issues.apache.org/jira/browse/FLINK-2584) | ASM dependency is not shaded away |  Major | Core | Ufuk Celebi | Stephan Ewen |
| [FLINK-2578](https://issues.apache.org/jira/browse/FLINK-2578) | Failing-Test: TaskAsyncCallTest |  Critical | Distributed Runtime, Local Runtime | Matthias J. Sax | Stephan Ewen |
| [FLINK-2577](https://issues.apache.org/jira/browse/FLINK-2577) | Watermarks Stall When a Source Finishes Prematurely |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2567](https://issues.apache.org/jira/browse/FLINK-2567) | CsvParser: Quotes cannot be escaped inside quoted fields |  Minor | Core | Maximilian Michels | Tamara |
| [FLINK-2564](https://issues.apache.org/jira/browse/FLINK-2564) | Failing Test: RandomSamplerTest |  Critical | . | Matthias J. Sax | Chengxiang Li |
| [FLINK-2557](https://issues.apache.org/jira/browse/FLINK-2557) | Manual type information via "returns" fails in DataSet API |  Major | Java API | Matthias J. Sax | Chesnay Schepler |
| [FLINK-2556](https://issues.apache.org/jira/browse/FLINK-2556) | Fix/Refactor pre-flight Key validation |  Major | Java API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-2555](https://issues.apache.org/jira/browse/FLINK-2555) | Hadoop Input/Output Formats are unable to access secured HDFS clusters |  Critical | . | Robert Metzger | Robert Metzger |
| [FLINK-2553](https://issues.apache.org/jira/browse/FLINK-2553) | Example Jars not build correctly |  Minor | flink-contrib | Matthias J. Sax | Matthias J. Sax |
| [FLINK-2545](https://issues.apache.org/jira/browse/FLINK-2545) | NegativeArraySizeException while creating hash table bloom filters |  Major | Distributed Runtime | Greg Hogan | Chengxiang Li |
| [FLINK-2543](https://issues.apache.org/jira/browse/FLINK-2543) | State handling does not support deserializing classes through the UserCodeClassloader |  Blocker | Streaming | Robert Metzger | Robert Metzger |
| [FLINK-2540](https://issues.apache.org/jira/browse/FLINK-2540) | LocalBufferPool.requestBuffer gets into infinite loop |  Blocker | Core | Gabor Gevay | Ufuk Celebi |
| [FLINK-2538](https://issues.apache.org/jira/browse/FLINK-2538) | Potential resource leak in ClassLoaderUtil#getUserCodeClassLoaderInfo() |  Minor | . | Ted Yu |  |
| [FLINK-2532](https://issues.apache.org/jira/browse/FLINK-2532) | The function name and the variable name are same, it is confusing |  Minor | . | zhangrucong |  |
| [FLINK-2528](https://issues.apache.org/jira/browse/FLINK-2528) | DriverTestBase tests fail spuriously |  Major | . | Sachin Goel | Stephan Ewen |
| [FLINK-2527](https://issues.apache.org/jira/browse/FLINK-2527) | If a VertexUpdateFunction calls setNewVertexValue more than once, the MessagingFunction will only see the first value set |  Major | Gelly | Gabor Gevay | Gabor Gevay |
| [FLINK-2519](https://issues.apache.org/jira/browse/FLINK-2519) | BarrierBuffers get stuck infinitely when some inputs end early |  Blocker | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2517](https://issues.apache.org/jira/browse/FLINK-2517) | Wrong KafkaSink arguments in streaming guide |  Trivial | Documentation | Nezih Yigitbasi | Nezih Yigitbasi |
| [FLINK-2515](https://issues.apache.org/jira/browse/FLINK-2515) | CheckpointCoordinator triggers checkpoints even if not all sources are running any more |  Blocker | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-2514](https://issues.apache.org/jira/browse/FLINK-2514) | Local and Remote environment behave differently when re-triggering execution. |  Critical | Streaming | Stephan Ewen | Aljoscha Krettek |
| [FLINK-2512](https://issues.apache.org/jira/browse/FLINK-2512) | Add client.close() before throw RuntimeException |  Minor | flink-contrib | fangfengbin | fangfengbin |
| [FLINK-2511](https://issues.apache.org/jira/browse/FLINK-2511) | Potential resource leak due to unclosed InputStream in FlinkZooKeeperQuorumPeer.java |  Major | . | Ted Yu | Ufuk Celebi |
| [FLINK-2508](https://issues.apache.org/jira/browse/FLINK-2508) | Confusing sharing of StreamExecutionEnvironment |  Major | Streaming | Stephan Ewen |  |
| [FLINK-2507](https://issues.apache.org/jira/browse/FLINK-2507) | Rename the function tansformAndEmit in org.apache.flink.stormcompatibility.wrappers.AbstractStormCollector |  Minor | flink-contrib | fangfengbin | fangfengbin |
| [FLINK-2502](https://issues.apache.org/jira/browse/FLINK-2502) | FiniteStormSpout documenation does not render correclty |  Trivial | Documentation | Matthias J. Sax | Matthias J. Sax |
| [FLINK-2499](https://issues.apache.org/jira/browse/FLINK-2499) | start-cluster.sh can start multiple TaskManager on the same node |  Major | Start-Stop Scripts | Chen He | Márton Balassi |
| [FLINK-2498](https://issues.apache.org/jira/browse/FLINK-2498) | GroupReduceITCase failure |  Major | . | Sachin Goel | Stephan Ewen |
| [FLINK-2490](https://issues.apache.org/jira/browse/FLINK-2490) | Remove unwanted boolean check in function SocketTextStreamFunction.streamFromSocket |  Minor | Streaming | Huang Wei | Huang Wei |
| [FLINK-2484](https://issues.apache.org/jira/browse/FLINK-2484) | BarrierBuffer does not properly clean up temp files |  Blocker | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2483](https://issues.apache.org/jira/browse/FLINK-2483) | Add default branch of switch(scheduleMode) in scheduleForExecution function |  Minor | JobManager | fangfengbin |  |
| [FLINK-2482](https://issues.apache.org/jira/browse/FLINK-2482) | Document sreaming processing guarantees |  Major | Streaming, Tests | Márton Balassi | Stephan Ewen |
| [FLINK-2474](https://issues.apache.org/jira/browse/FLINK-2474) | Occasional failures in PartitionedStateCheckpointingITCase |  Critical | Streaming | Stephan Ewen | Márton Balassi |
| [FLINK-2473](https://issues.apache.org/jira/browse/FLINK-2473) | Add a timeout to ActorSystem shutdown in the Client |  Major | Distributed Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-2468](https://issues.apache.org/jira/browse/FLINK-2468) | StreamCheckpointingITCase failure |  Major | Streaming, Tests | Sachin Goel | Márton Balassi |
| [FLINK-2467](https://issues.apache.org/jira/browse/FLINK-2467) | Example WordCountStorm.jar is not packaged correctly |  Minor | flink-contrib | Matthias J. Sax | Matthias J. Sax |
| [FLINK-2466](https://issues.apache.org/jira/browse/FLINK-2466) | Travis build failure |  Major | . | Sachin Goel | Stephan Ewen |
| [FLINK-2465](https://issues.apache.org/jira/browse/FLINK-2465) | SocketClientSink closeConnection function has memory leak |  Minor | Streaming | fangfengbin |  |
| [FLINK-2462](https://issues.apache.org/jira/browse/FLINK-2462) | Wrong exception reporting in streaming jobs |  Blocker | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2461](https://issues.apache.org/jira/browse/FLINK-2461) | RemoteExecutorHostnameResolutionTest and ClientHostnameResolutionTest |  Major | Tests | Stephan Ewen | Stephan Ewen |
| [FLINK-2460](https://issues.apache.org/jira/browse/FLINK-2460) | ReduceOnNeighborsWithExceptionITCase failure |  Major | . | Sachin Goel | Ufuk Celebi |
| [FLINK-2459](https://issues.apache.org/jira/browse/FLINK-2459) | Failure on recently added Client side logging test |  Major | . | Sachin Goel | Sachin Goel |
| [FLINK-2458](https://issues.apache.org/jira/browse/FLINK-2458) | Distributed Cache doesn't work with iterations. |  Major | . | Sachin Goel | Sachin Goel |
| [FLINK-2449](https://issues.apache.org/jira/browse/FLINK-2449) | DistCache doesn't work with JavaProgram Collection tests |  Minor | Tests | Chesnay Schepler | Sachin Goel |
| [FLINK-2448](https://issues.apache.org/jira/browse/FLINK-2448) | registerCacheFile fails with MultipleProgramsTestbase |  Minor | Tests | Chesnay Schepler | Sachin Goel |
| [FLINK-2447](https://issues.apache.org/jira/browse/FLINK-2447) | TypeExtractor returns wrong type info when a Tuple has two fields of the same POJO type |  Major | Java API | Gabor Gevay | Timo Walther |
| [FLINK-2446](https://issues.apache.org/jira/browse/FLINK-2446) | SocketTextStreamFunction has memory leak when reconnect server |  Minor | Streaming | fangfengbin |  |
| [FLINK-2442](https://issues.apache.org/jira/browse/FLINK-2442) | PojoType fields not supported by field position keys |  Critical | Java API | Fabian Hueske | Fabian Hueske |
| [FLINK-2438](https://issues.apache.org/jira/browse/FLINK-2438) | Improve performance of channel events |  Major | Distributed Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-2437](https://issues.apache.org/jira/browse/FLINK-2437) | TypeExtractor.analyzePojo has some problems around the default constructor detection |  Minor | Type Serialization System | Gabor Gevay | Gabor Gevay |
| [FLINK-2434](https://issues.apache.org/jira/browse/FLINK-2434) | org.apache.hadoop:hadoop-yarn-common:jar with value 'jersey-test-framework-grizzly2+' does not match a valid id pattern |  Trivial | Build System | caofangkun |  |
| [FLINK-2424](https://issues.apache.org/jira/browse/FLINK-2424) | InstantiationUtil.serializeObject(Object) does not close output stream |  Major | Core | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2422](https://issues.apache.org/jira/browse/FLINK-2422) | Web client is showing a blank page if "Meta refresh" is disabled in browser |  Minor | Web Client | Robert Metzger |  |
| [FLINK-2421](https://issues.apache.org/jira/browse/FLINK-2421) | StreamRecordSerializer incorrectly duplicates and misses tests |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2420](https://issues.apache.org/jira/browse/FLINK-2420) | OutputFlush thread in stream writers does not propagate exceptions |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2419](https://issues.apache.org/jira/browse/FLINK-2419) | DataStream sinks lose key information |  Blocker | Streaming | Gyula Fora | Gyula Fora |
| [FLINK-2418](https://issues.apache.org/jira/browse/FLINK-2418) | Add an end-to-end  streaming fault tolerance test for the Checkpointed interface |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2412](https://issues.apache.org/jira/browse/FLINK-2412) | Race leading to IndexOutOfBoundsException when querying for buffer while releasing SpillablePartition |  Critical | Distributed Runtime | Andra Lungu | Ufuk Celebi |
| [FLINK-2410](https://issues.apache.org/jira/browse/FLINK-2410) | PojoTypeInfo is not completely serializable |  Major | Java API | Timo Walther | Timo Walther |
| [FLINK-2404](https://issues.apache.org/jira/browse/FLINK-2404) | LongCounters should have an "addValue()" method for primitive longs |  Major | Core | Stephan Ewen | Sachin Goel |
| [FLINK-2391](https://issues.apache.org/jira/browse/FLINK-2391) | Storm-compatibility:method FlinkTopologyBuilder.createTopology() throws java.lang.NullPointerException |  Major | flink-contrib | Huang Wei |  |
| [FLINK-2385](https://issues.apache.org/jira/browse/FLINK-2385) | Scala DataSet.distinct should have parenthesis |  Major | Scala API | Stephan Ewen | Stephan Ewen |
| [FLINK-2384](https://issues.apache.org/jira/browse/FLINK-2384) | Deadlock during partition spilling |  Critical | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2377](https://issues.apache.org/jira/browse/FLINK-2377) | AbstractTestBase.deleteAllTempFiles sometimes fails on Windows |  Minor | Tests | Gabor Gevay | Gabor Gevay |
| [FLINK-2376](https://issues.apache.org/jira/browse/FLINK-2376) | testFindConnectableAddress sometimes fails on Windows because of the time limit |  Minor | . | Gabor Gevay | Gabor Gevay |
| [FLINK-2373](https://issues.apache.org/jira/browse/FLINK-2373) | Add configuration parameter to createRemoteEnvironment method |  Minor | other | Andreas Kunft |  |
| [FLINK-2362](https://issues.apache.org/jira/browse/FLINK-2362) | distinct is missing in DataSet API documentation |  Major | Documentation, Java API, Scala API | Fabian Hueske | pietro pinoli |
| [FLINK-2361](https://issues.apache.org/jira/browse/FLINK-2361) | CompactingHashTable loses entries |  Critical | Gelly | Andra Lungu | Stephan Ewen |
| [FLINK-2356](https://issues.apache.org/jira/browse/FLINK-2356) | Resource leak in checkpoint coordinator |  Major | JobManager, Streaming | Ufuk Celebi |  |
| [FLINK-2353](https://issues.apache.org/jira/browse/FLINK-2353) | Hadoop mapred IOFormat wrappers do not respect JobConfigurable interface |  Major | Hadoop Compatibility | Fabian Hueske | Fabian Hueske |
| [FLINK-2349](https://issues.apache.org/jira/browse/FLINK-2349) | Instable (failing) Test |  Major | Tests | Matthias J. Sax | Stephan Ewen |
| [FLINK-2347](https://issues.apache.org/jira/browse/FLINK-2347) | Rendering problem with Documentation website |  Major | Documentation | Henry Saputra | Maximilian Michels |
| [FLINK-2341](https://issues.apache.org/jira/browse/FLINK-2341) | Deadlock in SpilledSubpartitionViewAsyncIO |  Critical | Distributed Runtime | Stephan Ewen | Ufuk Celebi |
| [FLINK-2337](https://issues.apache.org/jira/browse/FLINK-2337) | Multiple SLF4J bindings using Storm compatibility layer |  Minor | flink-contrib | Matthias J. Sax | Matthias J. Sax |
| [FLINK-2331](https://issues.apache.org/jira/browse/FLINK-2331) | Whitelist some exceptions to be valid in YARN logs |  Major | YARN Client | Stephan Ewen | Stephan Ewen |
| [FLINK-2325](https://issues.apache.org/jira/browse/FLINK-2325) | PersistentKafkaSource throws ArrayIndexOutOfBoundsException if reading from a topic that is created after starting the Source |  Major | Kafka Connector | Rico Bergmann | Robert Metzger |
| [FLINK-2322](https://issues.apache.org/jira/browse/FLINK-2322) | Unclosed stream may leak resource |  Major | . | Ted Yu |  |
| [FLINK-2321](https://issues.apache.org/jira/browse/FLINK-2321) | The seed for the SVM classifier is currently static |  Major | Machine Learning Library | Theodore Vasiloudis | Theodore Vasiloudis |
| [FLINK-2317](https://issues.apache.org/jira/browse/FLINK-2317) | Stream Jobs with Windows Leave Lingering State |  Blocker | Streaming | Aljoscha Krettek |  |
| [FLINK-2301](https://issues.apache.org/jira/browse/FLINK-2301) | In BarrierBuffer newer Barriers trigger old Checkpoints |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2299](https://issues.apache.org/jira/browse/FLINK-2299) | The slot on which the task maanger was scheduled was killed |  Critical | . | Andra Lungu | Andra Lungu |
| [FLINK-2298](https://issues.apache.org/jira/browse/FLINK-2298) | Allow setting custom YARN application names through the CLI |  Major | YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-2296](https://issues.apache.org/jira/browse/FLINK-2296) | Checkpoint committing broken |  Blocker | Streaming | Robert Metzger | Robert Metzger |
| [FLINK-2295](https://issues.apache.org/jira/browse/FLINK-2295) | TwoInput Task do not react to/forward checkpoint barriers |  Blocker | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2293](https://issues.apache.org/jira/browse/FLINK-2293) | Division by Zero Exception |  Critical | Local Runtime | Andra Lungu | Stephan Ewen |
| [FLINK-2290](https://issues.apache.org/jira/browse/FLINK-2290) | CoRecordReader Does Not Read Events From Both Inputs When No Elements Arrive |  Blocker | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2286](https://issues.apache.org/jira/browse/FLINK-2286) | Window ParallelMerge sometimes swallows elements of the last window |  Major | Streaming | Márton Balassi | Gábor Hermann |
| [FLINK-2276](https://issues.apache.org/jira/browse/FLINK-2276) | Travis build error |  Critical | . | Sachin Goel | Stephan Ewen |
| [FLINK-2271](https://issues.apache.org/jira/browse/FLINK-2271) | PageRank gives wrong results with weighted graph input |  Major | Gelly | Vasia Kalavri | Vasia Kalavri |
| [FLINK-2255](https://issues.apache.org/jira/browse/FLINK-2255) | In the TopSpeedWindowing examples, every window contains only 1 element, because event time is in millisec, but eviction is in sec |  Minor | Examples, Streaming | Gabor Gevay | Gabor Gevay |
| [FLINK-2235](https://issues.apache.org/jira/browse/FLINK-2235) | Local Flink cluster allocates too much memory |  Minor | Local Runtime, TaskManager | Maximilian Michels | Maximilian Michels |
| [FLINK-2229](https://issues.apache.org/jira/browse/FLINK-2229) | Data sets involving non-primitive arrays cannot be unioned |  Major | Java API, Scala API | Sebastian Kruse | Sebastian Kruse |
| [FLINK-2224](https://issues.apache.org/jira/browse/FLINK-2224) | JobManager log does not contain root cause and stack trace of exceptions |  Major | Core | Till Rohrmann |  |
| [FLINK-2219](https://issues.apache.org/jira/browse/FLINK-2219) | JobManagerInfoServlet IllegalArgumentException when pressing state button |  Major | JobManager, Webfrontend | Ufuk Celebi |  |
| [FLINK-2208](https://issues.apache.org/jira/browse/FLINK-2208) | Build error for Java IBM |  Minor | Build System | Felix Neutatz | Stephan Ewen |
| [FLINK-2206](https://issues.apache.org/jira/browse/FLINK-2206) | JobManager webinterface shows 5 finished jobs at most |  Blocker | Webfrontend | Fabian Hueske | Fabian Hueske |
| [FLINK-2205](https://issues.apache.org/jira/browse/FLINK-2205) | Confusing entries in JM Webfrontend Job Configuration section |  Minor | Webfrontend | Fabian Hueske |  |
| [FLINK-2198](https://issues.apache.org/jira/browse/FLINK-2198) | BlobManager tests fail on Windows |  Major | Build System, Tests | Fabian Hueske | Gabor Gevay |
| [FLINK-2189](https://issues.apache.org/jira/browse/FLINK-2189) | NullPointerException in MutableHashTable |  Major | Core | Till Rohrmann | Stephan Ewen |
| [FLINK-2181](https://issues.apache.org/jira/browse/FLINK-2181) | SessionWindowing example has a memleak |  Major | Examples, Streaming | Gabor Gevay | Aljoscha Krettek |
| [FLINK-2178](https://issues.apache.org/jira/browse/FLINK-2178) | groupReduceOnNeighbors throws NoSuchElementException |  Major | Gelly | Andra Lungu | Andra Lungu |
| [FLINK-2173](https://issues.apache.org/jira/browse/FLINK-2173) | Python uses different tmp file than Flink |  Critical | Python API | Matthias J. Sax | Chesnay Schepler |
| [FLINK-2163](https://issues.apache.org/jira/browse/FLINK-2163) | VertexCentricConfigurationITCase sometimes fails on Travis |  Major | Gelly | Aljoscha Krettek |  |
| [FLINK-2158](https://issues.apache.org/jira/browse/FLINK-2158) | NullPointerException in DateSerializer. |  Major | Local Runtime | Robert Metzger | Robert Metzger |
| [FLINK-2156](https://issues.apache.org/jira/browse/FLINK-2156) | Scala modules cannot create logging file |  Major | Build System | Till Rohrmann |  |
| [FLINK-2127](https://issues.apache.org/jira/browse/FLINK-2127) | The GSA Documentation has trailing \</p\> s |  Minor | Documentation, Gelly | Andra Lungu | Maximilian Michels |
| [FLINK-2124](https://issues.apache.org/jira/browse/FLINK-2124) | FromElementsFunction is not really Serializable |  Major | Streaming | Aljoscha Krettek | Johannes Reifferscheid |
| [FLINK-2095](https://issues.apache.org/jira/browse/FLINK-2095) | Screenshots missing in webclient documentation |  Trivial | Documentation, website | Fabian Hueske | Matthias J. Sax |
| [FLINK-2089](https://issues.apache.org/jira/browse/FLINK-2089) | "Buffer recycled" IllegalStateException during cancelling |  Major | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2008](https://issues.apache.org/jira/browse/FLINK-2008) | PersistentKafkaSource is sometimes emitting tuples multiple times |  Major | Kafka Connector, Streaming | Robert Metzger | Robert Metzger |
| [FLINK-2003](https://issues.apache.org/jira/browse/FLINK-2003) | Building on some encrypted filesystems leads to "File name too long" error |  Minor | Build System | Theodore Vasiloudis | Theodore Vasiloudis |
| [FLINK-1916](https://issues.apache.org/jira/browse/FLINK-1916) | EOFException when running delta-iteration job |  Major | Local Runtime | Stefan Bunk | Stephan Ewen |
| [FLINK-1785](https://issues.apache.org/jira/browse/FLINK-1785) | Master tests in flink-tachyon fail with java.lang.NoSuchFieldError: IBM\_JAVA |  Major | Tests | Henry Saputra |  |
| [FLINK-1770](https://issues.apache.org/jira/browse/FLINK-1770) | Rename the variable 'contentAdressable' to 'contentAddressable' |  Minor | . | Sibao Hong | Sibao Hong |
| [FLINK-1739](https://issues.apache.org/jira/browse/FLINK-1739) | Fix the bug of JobManager and TaskManager Port Check. |  Major | JobManager, Local Runtime, TaskManager | Sibao Hong | Sibao Hong |
| [FLINK-1675](https://issues.apache.org/jira/browse/FLINK-1675) | Rework Accumulators |  Major | JobManager, TaskManager | Stephan Ewen |  |
| [FLINK-1610](https://issues.apache.org/jira/browse/FLINK-1610) | Java docs do not build |  Major | Build System, Documentation | Maximilian Michels | Maximilian Michels |
| [FLINK-1599](https://issues.apache.org/jira/browse/FLINK-1599) | TypeComperator with no keys and comparators matches some elements |  Minor | Distributed Runtime | Maximilian Michels | Maximilian Michels |
| [FLINK-1129](https://issues.apache.org/jira/browse/FLINK-1129) | The Plan Visualizer Cuts of the Lower Part of Certain Operators |  Major | . | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-1085](https://issues.apache.org/jira/browse/FLINK-1085) | Unnecessary failing of GroupReduceCombineDriver |  Major | Local Runtime | Fabian Hueske |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2595](https://issues.apache.org/jira/browse/FLINK-2595) | Unclosed JarFile may leak resource in ClassLoaderUtilsTest |  Minor | . | Ted Yu |  |
| [FLINK-2481](https://issues.apache.org/jira/browse/FLINK-2481) | Test at least once processing guarantee for streaming |  Major | Streaming, Tests | Márton Balassi |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2891](https://issues.apache.org/jira/browse/FLINK-2891) | Key for Keyed State is not set upon Window Evaluation |  Blocker | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2877](https://issues.apache.org/jira/browse/FLINK-2877) | Move Streaming API out of Staging |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2864](https://issues.apache.org/jira/browse/FLINK-2864) | Make State of General-Purpose Window Operators Fault-Tolerant |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2830](https://issues.apache.org/jira/browse/FLINK-2830) | Add Fold Window Operation for new Windowing API |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2819](https://issues.apache.org/jira/browse/FLINK-2819) | Add Windowed Join/CoGroup Operator Based on Tagged Union |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2811](https://issues.apache.org/jira/browse/FLINK-2811) | Add page with configuration overview |  Major | Webfrontend | Robert Metzger | Sachin Goel |
| [FLINK-2807](https://issues.apache.org/jira/browse/FLINK-2807) | Add javadocs/comments to new windowing mechanics |  Critical | Streaming | Gyula Fora | Aljoscha Krettek |
| [FLINK-2790](https://issues.apache.org/jira/browse/FLINK-2790) | Add high availability support for Yarn |  Major | JobManager, TaskManager | Till Rohrmann |  |
| [FLINK-2783](https://issues.apache.org/jira/browse/FLINK-2783) | Remove "degreeOfParallelism" API calls |  Major | Core, Streaming | Stephan Ewen | Chesnay Schepler |
| [FLINK-2780](https://issues.apache.org/jira/browse/FLINK-2780) | Remove Old Windowing Logic and API |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2779](https://issues.apache.org/jira/browse/FLINK-2779) | Update documentation to reflect new Stream/Window API |  Major | Streaming | Aljoscha Krettek | Kostas Tzoumas |
| [FLINK-2753](https://issues.apache.org/jira/browse/FLINK-2753) | Add new window API to streaming API |  Major | Streaming | Stephan Ewen | Aljoscha Krettek |
| [FLINK-2688](https://issues.apache.org/jira/browse/FLINK-2688) | Add documentation about monitoring api |  Major | Webfrontend | Stephan Ewen | Stephan Ewen |
| [FLINK-2687](https://issues.apache.org/jira/browse/FLINK-2687) | Moniroting api / web dashboard: Create request handlers list subtask details and accumulators |  Major | Webfrontend | Stephan Ewen | Stephan Ewen |
| [FLINK-2677](https://issues.apache.org/jira/browse/FLINK-2677) | Add a general-purpose keyed-window operator |  Major | Streaming | Stephan Ewen | Aljoscha Krettek |
| [FLINK-2576](https://issues.apache.org/jira/browse/FLINK-2576) | Add outer joins to API and Optimizer |  Minor | Java API, Optimizer, Scala API | Ricky Pogalz |  |
| [FLINK-2554](https://issues.apache.org/jira/browse/FLINK-2554) | Add exception reporting handler |  Major | Webfrontend | Stephan Ewen | Stephan Ewen |
| [FLINK-2550](https://issues.apache.org/jira/browse/FLINK-2550) | Rework DataStream API |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-2547](https://issues.apache.org/jira/browse/FLINK-2547) | Provide Cluster Status Info |  Minor | Webfrontend | Stephan Ewen | Stephan Ewen |
| [FLINK-2463](https://issues.apache.org/jira/browse/FLINK-2463) | Chow execution config in dashboard |  Minor | Webfrontend | Stephan Ewen |  |
| [FLINK-2454](https://issues.apache.org/jira/browse/FLINK-2454) | Update Travis file to run build using Java7 |  Major | Build System | Henry Saputra | Stephan Ewen |
| [FLINK-2453](https://issues.apache.org/jira/browse/FLINK-2453) | Update POM to use Java7 as the source and target version |  Major | Build System | Henry Saputra | Stephan Ewen |
| [FLINK-2427](https://issues.apache.org/jira/browse/FLINK-2427) | Allow the BarrierBuffer to maintain multiple queues of blocked inputs |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2426](https://issues.apache.org/jira/browse/FLINK-2426) | Create a read-only variant of the Configuration |  Major | Core | Stephan Ewen |  |
| [FLINK-2415](https://issues.apache.org/jira/browse/FLINK-2415) | Link nodes in plan to vertices |  Major | Webfrontend | Piotr Godek | Stephan Ewen |
| [FLINK-2414](https://issues.apache.org/jira/browse/FLINK-2414) | Extend job data in job list |  Major | Webfrontend | Piotr Godek | Stephan Ewen |
| [FLINK-2407](https://issues.apache.org/jira/browse/FLINK-2407) | Add an API switch to select between "exactly once" and "at least once" fault tolerance |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2406](https://issues.apache.org/jira/browse/FLINK-2406) | Abstract BarrierBuffer to an exchangeable BarrierHandler |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-2397](https://issues.apache.org/jira/browse/FLINK-2397) | Unify two backend servers to one server |  Major | Webfrontend | Stephan Ewen | Stephan Ewen |
| [FLINK-2389](https://issues.apache.org/jira/browse/FLINK-2389) | Add dashboard frontend architecture amd build infrastructue |  Major | Webfrontend | Stephan Ewen | Stephan Ewen |
| [FLINK-2358](https://issues.apache.org/jira/browse/FLINK-2358) | Add Netty-HTTP based server and server handlers |  Major | Webfrontend | Stephan Ewen | Stephan Ewen |
| [FLINK-2354](https://issues.apache.org/jira/browse/FLINK-2354) | Recover running jobs on JobManager failure |  Major | JobManager | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2332](https://issues.apache.org/jira/browse/FLINK-2332) | Assign session IDs to JobManager and TaskManager messages |  Major | JobManager, TaskManager | Till Rohrmann | Till Rohrmann |
| [FLINK-2291](https://issues.apache.org/jira/browse/FLINK-2291) | Use ZooKeeper to elect JobManager leader and send information to TaskManagers |  Major | JobManager, TaskManager | Till Rohrmann | Till Rohrmann |
| [FLINK-2275](https://issues.apache.org/jira/browse/FLINK-2275) | Migrate test from package 'org.apache.flink.test.javaApiOperators' |  Minor | Tests | Matthias J. Sax | Matthias J. Sax |
| [FLINK-2264](https://issues.apache.org/jira/browse/FLINK-2264) | Migrate integration tests for Gelly |  Minor | Gelly, Tests | Vasia Kalavri | Samia Khalid |
| [FLINK-2105](https://issues.apache.org/jira/browse/FLINK-2105) | Implement Sort-Merge Outer Join algorithm |  Minor | Local Runtime | Fabian Hueske | Ricky Pogalz |
| [FLINK-2005](https://issues.apache.org/jira/browse/FLINK-2005) | Remove dependencies on Record APIs for flink-jdbc module |  Major | . | Henry Saputra | Chesnay Schepler |
| [FLINK-1982](https://issues.apache.org/jira/browse/FLINK-1982) | Remove dependencies on Record for Flink runtime and core |  Major | Core | Henry Saputra | Fabian Hueske |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2120](https://issues.apache.org/jira/browse/FLINK-2120) | Rename AbstractJobVertex to JobVertex |  Trivial | Distributed Runtime | Ufuk Celebi | Matthias J. Sax |
| [FLINK-2703](https://issues.apache.org/jira/browse/FLINK-2703) | Remove log4j classes from fat jar / document how to use Flink with logback |  Major | Build System | Robert Metzger | Robert Metzger |
| [FLINK-2574](https://issues.apache.org/jira/browse/FLINK-2574) | Remove Spargel from master in next release |  Major | Spargel | Henry Saputra |  |
| [FLINK-2570](https://issues.apache.org/jira/browse/FLINK-2570) | Add a Triangle Count Library Method |  Minor | Gelly | Andra Lungu | Andra Lungu |
| [FLINK-2561](https://issues.apache.org/jira/browse/FLINK-2561) | Sync Gelly Java and Scala APIs |  Major | Gelly | Vasia Kalavri | Vasia Kalavri |
| [FLINK-2479](https://issues.apache.org/jira/browse/FLINK-2479) | Refactoring of org.apache.flink.runtime.operators.testutils.TestData class |  Minor | Local Runtime | Ricky Pogalz | Chesnay Schepler |
| [FLINK-2372](https://issues.apache.org/jira/browse/FLINK-2372) | Update KafkaSink to use new Producer API |  Major | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-2033](https://issues.apache.org/jira/browse/FLINK-2033) | Add overloaded methods with explicit TypeInformation parameters to Gelly |  Major | Gelly | PJ Van Aeken | PJ Van Aeken |
| [FLINK-1882](https://issues.apache.org/jira/browse/FLINK-1882) | Remove RemoteCollectorOutputFormat |  Major | Java API | Stephan Ewen | Chesnay Schepler |
| [FLINK-1680](https://issues.apache.org/jira/browse/FLINK-1680) | Upgrade Flink dependencies for Tachyon to 0.6.0 |  Minor | Tests | Henry Saputra | Robert Metzger |
| [FLINK-1314](https://issues.apache.org/jira/browse/FLINK-1314) | Update website about #flink chat room in freenode IRC |  Minor | Project Website | Henry Saputra | Henry Saputra |
| [FLINK-705](https://issues.apache.org/jira/browse/FLINK-705) | Check if TPC-H resources can be added |  Minor | . | GitHub Import | Stephan Ewen |


