
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

## Release 0.9.1 - 2015-09-01

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2394](https://issues.apache.org/jira/browse/FLINK-2394) | HadoopOutFormat OutputCommitter is default to FileOutputCommiter |  Major | Hadoop Compatibility | Stefano Bortoli | Fabian Hueske |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2572](https://issues.apache.org/jira/browse/FLINK-2572) | Resolve base path of symlinked executable |  Minor | Start-Stop Scripts | Ufuk Celebi | Maximilian Michels |
| [FLINK-2560](https://issues.apache.org/jira/browse/FLINK-2560) | Flink-Avro Plugin cannot be handled by Eclipse |  Trivial | . | Matthias J. Sax | Matthias J. Sax |
| [FLINK-2386](https://issues.apache.org/jira/browse/FLINK-2386) | Implement Kafka connector using the new Kafka Consumer API |  Major | Kafka Connector | Robert Metzger | Robert Metzger |
| [FLINK-2381](https://issues.apache.org/jira/browse/FLINK-2381) | Possible class not found Exception on failed partition producer |  Major | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2248](https://issues.apache.org/jira/browse/FLINK-2248) | Allow disabling of sdtout logging output |  Minor | . | Theodore Vasiloudis | Sachin Goel |
| [FLINK-2238](https://issues.apache.org/jira/browse/FLINK-2238) | Scala ExecutionEnvironment.fromCollection does not work with Sets |  Minor | Scala API | Fabian Hueske | Sachin Goel |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-2584](https://issues.apache.org/jira/browse/FLINK-2584) | ASM dependency is not shaded away |  Major | Core | Ufuk Celebi | Stephan Ewen |
| [FLINK-2555](https://issues.apache.org/jira/browse/FLINK-2555) | Hadoop Input/Output Formats are unable to access secured HDFS clusters |  Critical | . | Robert Metzger | Robert Metzger |
| [FLINK-2540](https://issues.apache.org/jira/browse/FLINK-2540) | LocalBufferPool.requestBuffer gets into infinite loop |  Blocker | Core | Gabor Gevay | Ufuk Celebi |
| [FLINK-2527](https://issues.apache.org/jira/browse/FLINK-2527) | If a VertexUpdateFunction calls setNewVertexValue more than once, the MessagingFunction will only see the first value set |  Major | Gelly | Gabor Gevay | Gabor Gevay |
| [FLINK-2460](https://issues.apache.org/jira/browse/FLINK-2460) | ReduceOnNeighborsWithExceptionITCase failure |  Major | . | Sachin Goel | Ufuk Celebi |
| [FLINK-2447](https://issues.apache.org/jira/browse/FLINK-2447) | TypeExtractor returns wrong type info when a Tuple has two fields of the same POJO type |  Major | Java API | Gabor Gevay | Timo Walther |
| [FLINK-2442](https://issues.apache.org/jira/browse/FLINK-2442) | PojoType fields not supported by field position keys |  Critical | Java API | Fabian Hueske | Fabian Hueske |
| [FLINK-2437](https://issues.apache.org/jira/browse/FLINK-2437) | TypeExtractor.analyzePojo has some problems around the default constructor detection |  Minor | Type Serialization System | Gabor Gevay | Gabor Gevay |
| [FLINK-2424](https://issues.apache.org/jira/browse/FLINK-2424) | InstantiationUtil.serializeObject(Object) does not close output stream |  Major | Core | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2422](https://issues.apache.org/jira/browse/FLINK-2422) | Web client is showing a blank page if "Meta refresh" is disabled in browser |  Minor | Web Client | Robert Metzger |  |
| [FLINK-2412](https://issues.apache.org/jira/browse/FLINK-2412) | Race leading to IndexOutOfBoundsException when querying for buffer while releasing SpillablePartition |  Critical | Distributed Runtime | Andra Lungu | Ufuk Celebi |
| [FLINK-2384](https://issues.apache.org/jira/browse/FLINK-2384) | Deadlock during partition spilling |  Critical | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-2362](https://issues.apache.org/jira/browse/FLINK-2362) | distinct is missing in DataSet API documentation |  Major | Documentation, Java API, Scala API | Fabian Hueske | pietro pinoli |
| [FLINK-2361](https://issues.apache.org/jira/browse/FLINK-2361) | CompactingHashTable loses entries |  Critical | Gelly | Andra Lungu | Stephan Ewen |
| [FLINK-2356](https://issues.apache.org/jira/browse/FLINK-2356) | Resource leak in checkpoint coordinator |  Major | JobManager, Streaming | Ufuk Celebi |  |
| [FLINK-2353](https://issues.apache.org/jira/browse/FLINK-2353) | Hadoop mapred IOFormat wrappers do not respect JobConfigurable interface |  Major | Hadoop Compatibility | Fabian Hueske | Fabian Hueske |
| [FLINK-2347](https://issues.apache.org/jira/browse/FLINK-2347) | Rendering problem with Documentation website |  Major | Documentation | Henry Saputra | Maximilian Michels |
| [FLINK-2325](https://issues.apache.org/jira/browse/FLINK-2325) | PersistentKafkaSource throws ArrayIndexOutOfBoundsException if reading from a topic that is created after starting the Source |  Major | Kafka Connector | Rico Bergmann | Robert Metzger |
| [FLINK-2298](https://issues.apache.org/jira/browse/FLINK-2298) | Allow setting custom YARN application names through the CLI |  Major | YARN Client | Robert Metzger | Robert Metzger |
| [FLINK-2293](https://issues.apache.org/jira/browse/FLINK-2293) | Division by Zero Exception |  Critical | Local Runtime | Andra Lungu | Stephan Ewen |
| [FLINK-2286](https://issues.apache.org/jira/browse/FLINK-2286) | Window ParallelMerge sometimes swallows elements of the last window |  Major | Streaming | Márton Balassi | Gábor Hermann |
| [FLINK-2285](https://issues.apache.org/jira/browse/FLINK-2285) | Active policy emits elements of the last window twice |  Major | Streaming | Márton Balassi | Márton Balassi |
| [FLINK-2280](https://issues.apache.org/jira/browse/FLINK-2280) | GenericTypeComparator.compare() does not respect ascending flag |  Critical | Core | Fabian Hueske | Fabian Hueske |
| [FLINK-2262](https://issues.apache.org/jira/browse/FLINK-2262) | ParameterTool API misnamed function |  Major | Java API | Greg Hogan | Maximilian Michels |
| [FLINK-2257](https://issues.apache.org/jira/browse/FLINK-2257) | Open and close of RichWindowFunctions is not called |  Minor | Streaming | Márton Balassi | Márton Balassi |
| [FLINK-2229](https://issues.apache.org/jira/browse/FLINK-2229) | Data sets involving non-primitive arrays cannot be unioned |  Major | Java API, Scala API | Sebastian Kruse | Sebastian Kruse |
| [FLINK-2205](https://issues.apache.org/jira/browse/FLINK-2205) | Confusing entries in JM Webfrontend Job Configuration section |  Minor | Webfrontend | Fabian Hueske |  |
| [FLINK-2189](https://issues.apache.org/jira/browse/FLINK-2189) | NullPointerException in MutableHashTable |  Major | Core | Till Rohrmann | Stephan Ewen |
| [FLINK-2089](https://issues.apache.org/jira/browse/FLINK-2089) | "Buffer recycled" IllegalStateException during cancelling |  Major | Distributed Runtime | Ufuk Celebi | Ufuk Celebi |
| [FLINK-1916](https://issues.apache.org/jira/browse/FLINK-1916) | EOFException when running delta-iteration job |  Major | Local Runtime | Stefan Bunk | Stephan Ewen |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


